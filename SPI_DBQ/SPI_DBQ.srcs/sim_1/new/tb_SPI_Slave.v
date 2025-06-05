module SPI_Slave_TB ();

  parameter SPI_MODE = 1; // CPOL=0, CPHA=1
  parameter SPI_CLK_DELAY = 20;  // 2.5 MHz (dùng nếu cần)
  parameter MAIN_CLK_DELAY = 2;  // 25 MHz main clock

  wire w_CPOL = (SPI_MODE == 2) | (SPI_MODE == 3);
  wire w_CPHA = (SPI_MODE == 1) | (SPI_MODE == 3);

  reg r_Rst_L = 1'b0;
  reg [7:0] dataPayload [0:255];
  reg [7:0] dataLength;
  integer i;

  reg r_Clk = 1'b0;

  // SPI signals between Master and Slave
  wire w_SPI_Clk;
  wire w_SPI_MISO;
  wire w_SPI_MOSI;

  // Master signals
  reg [7:0] r_Master_TX_Byte = 0;
  reg r_Master_TX_DV = 1'b0;
  reg r_Master_CS_n = 1'b1;
  wire w_Master_TX_Ready;
  wire r_Master_RX_DV;
  wire [7:0] r_Master_RX_Byte;

  // Slave signals
  wire w_Slave_RX_DV;
  wire [7:0] w_Slave_RX_Byte;

  // Delay loopback registers for Slave TX input (to create 1 clk delay)
  reg [7:0] r_Slave_TX_Byte_Delay;
  reg r_Slave_TX_DV_Delay;

  // Main clock generation: 25 MHz
  always #(MAIN_CLK_DELAY) r_Clk = ~r_Clk;

  // Delay Slave TX inputs by 1 main clock cycle
  always @(posedge r_Clk) begin
    r_Slave_TX_Byte_Delay <= w_Slave_RX_Byte;
    r_Slave_TX_DV_Delay <= w_Slave_RX_DV;
  end

  // Instantiate SPI Slave
  SPI_Slave #(.SPI_MODE(SPI_MODE)) SPI_Slave_UUT (
    .i_Rst_L(r_Rst_L),
    .i_Clk(r_Clk),
    .o_RX_DV(w_Slave_RX_DV),
    .o_RX_Byte(w_Slave_RX_Byte),
    .i_TX_DV(r_Slave_TX_DV_Delay),
    .i_TX_Byte(r_Slave_TX_Byte_Delay),
    .i_SPI_Clk(w_SPI_Clk),
    .o_SPI_MISO(w_SPI_MISO),
    .i_SPI_MOSI(w_SPI_MOSI),
    .i_SPI_CS_n(r_Master_CS_n)
  );

  // Instantiate SPI Master
  SPI_Master #(.SPI_MODE(SPI_MODE), .CLKS_PER_HALF_BIT(4), .NUM_SLAVES(1)) SPI_Master_UUT (
    .i_Rst_L(r_Rst_L),
    .i_Clk(r_Clk),
    .i_TX_Byte(r_Master_TX_Byte),
    .i_TX_DV(r_Master_TX_DV),
    .o_TX_Ready(w_Master_TX_Ready),
    .o_RX_DV(r_Master_RX_DV),
    .o_RX_Byte(r_Master_RX_Byte),
    .o_SPI_Clk(w_SPI_Clk),
    .i_SPI_MISO(w_SPI_MISO),
    .o_SPI_MOSI(w_SPI_MOSI)
  );

  // Task: Send single byte from Master (CS controlled externally)
  task SendSingleByte(input [7:0] data);
    begin
      @(posedge r_Clk);
      r_Master_CS_n <= 1'b0;
      r_Master_TX_Byte <= data;
      r_Master_TX_DV <= 1'b1;
      @(posedge r_Clk);
      r_Master_TX_DV <= 1'b0;
      @(posedge w_Master_TX_Ready);
      @(posedge r_Clk);
      r_Master_CS_n <= 1'b1;
    end
    endtask

  // Task: Send multiple bytes from Master (CS controlled externally)
  task SendMultiByte(input integer length);
    integer idx;
  begin
      @(posedge r_Clk);
      r_Master_CS_n    <= 1'b0;
    for (idx = 0; idx < length; idx = idx + 1) begin
      @(posedge r_Clk);
      r_Master_TX_Byte <= dataPayload[idx];
      r_Master_TX_DV <= 1'b1;
      @(posedge r_Clk);
      r_Master_TX_DV <= 1'b0;
      wait(w_Master_TX_Ready == 1'b1);
    end
      @(posedge r_Clk);
      r_Master_CS_n <= 1'b1;
  end
  endtask

  // Display received bytes for debugging
  always @(posedge r_Clk) begin
    if (w_Slave_RX_DV)
      $display("Slave received byte: %02X at time %t", w_Slave_RX_Byte, $time);
    if (r_Master_RX_DV)
      $display("Master received byte: %02X at time %t", r_Master_RX_Byte, $time);
  end

  initial begin
    // Reset sequence
    r_Rst_L = 1'b0;
    repeat (20) @(posedge r_Clk);
    r_Rst_L = 1'b1;
    @(posedge r_Clk);

    // Single byte transmission test
    r_Master_CS_n = 1'b0;  // Activate CS
    SendSingleByte(8'hC1);
    r_Master_CS_n = 1'b1;  // Deactivate CS
    repeat (50) @(posedge r_Clk);

    // Initialize data array for multi-byte test
    dataPayload[0] = 8'h00;
    dataPayload[1] = 8'h01;
    dataPayload[2] = 8'h80;
    dataPayload[3] = 8'hFF;
    dataPayload[4] = 8'h55;
    dataPayload[5] = 8'hAA;
    dataLength = 6;

    // Multi-byte transmission with CS held low for entire block
//    r_Master_CS_n = 1'b0;
    SendMultiByte(dataLength);
//    r_Master_CS_n = 1'b1;

    // Wait some cycles to finish transactions
    repeat (100) @(posedge r_Clk);

    $finish;
  end

endmodule
