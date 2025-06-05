module SPI_Master_TB ();

  parameter SPI_MODE = 3; // CPOL = 1, CPHA = 1
  parameter CLKS_PER_HALF_BIT = 4;  
  parameter MAIN_CLK_DELAY = 2;     
  parameter NUM_SLAVES = 4;         

  reg r_Rst_L = 1'b0;
  reg r_Clk = 1'b0;

  reg [7:0] r_Master_TX_Byte = 8'h00;
  reg r_Master_TX_DV = 1'b0;
  reg [$clog2(NUM_SLAVES)-1:0] r_Slave_Select = 0;

  wire w_Master_TX_Ready;
  wire w_Master_RX_DV;
  wire [7:0] w_Master_RX_Byte;

  wire w_SPI_Clk;
  wire w_SPI_MOSI;
  wire w_SPI_MISO;
  wire [NUM_SLAVES-1:0] w_SPI_CS;

  integer i, j, pass_count = 0, fail_count = 0;

  reg [7:0] test_vectors [0:31];
  integer num_vectors;

  initial begin
    $readmemh("test_vectors.mem", test_vectors);

    num_vectors = 0;
    for (i = 0; i < 32; i = i + 1) begin
      if (test_vectors[i] === 8'hx) begin
        i = 32; 
      end else begin
        num_vectors = num_vectors + 1;
      end
    end
  end

  always #(MAIN_CLK_DELAY) r_Clk = ~r_Clk;

  assign w_SPI_MISO = w_SPI_MOSI; // loopback

  SPI_Master #(
    .SPI_MODE(SPI_MODE),
    .CLKS_PER_HALF_BIT(CLKS_PER_HALF_BIT),
    .NUM_SLAVES(NUM_SLAVES)
  ) SPI_Master_UUT (
    .i_Rst_L(r_Rst_L),
    .i_Clk(r_Clk),

    .i_TX_Byte(r_Master_TX_Byte),
    .i_TX_DV(r_Master_TX_DV),
    .i_Slave_Select(r_Slave_Select),
    .o_TX_Ready(w_Master_TX_Ready),

    .o_RX_DV(w_Master_RX_DV),
    .o_RX_Byte(w_Master_RX_Byte),

    .o_SPI_Clk(w_SPI_Clk),
    .o_SPI_MOSI(w_SPI_MOSI),
    .i_SPI_MISO(w_SPI_MISO),
    .o_SPI_CS(w_SPI_CS)
  );

  // Task gửi 1 byte
  task SendSingleByte;
    input [7:0] data;
    input [$clog2(NUM_SLAVES)-1:0] slave;
    begin
      @(posedge r_Clk);
      r_Master_TX_Byte   <= data;
      r_Slave_Select     <= slave;
      r_Master_TX_DV     <= 1'b1;
      @(posedge r_Clk);
      r_Master_TX_DV     <= 1'b0;
      @(posedge w_Master_TX_Ready);
    end
  endtask

  // Task kiểm tra CS active đúng slave khi truyền
  task CheckCSActive;
    input [$clog2(NUM_SLAVES)-1:0] slave;
    integer k;
    begin
      // CS của slave được chọn phải là 0 (active low)
      if (w_SPI_CS[slave] !== 1'b0) begin
        $display("FAIL: CS for slave %0d not active low during transfer!", slave);
        fail_count = fail_count + 1;
      end else begin
        pass_count = pass_count + 1;
      end
      // Các CS khác phải là 1 (inactive)
      for (k = 0; k < NUM_SLAVES; k = k + 1) begin
        if (k != slave && w_SPI_CS[k] !== 1'b1) begin
          $display("FAIL: CS for slave %0d active incorrectly!", k);
          fail_count = fail_count + 1;
        end
      end
    end
  endtask

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;

    // Reset
    r_Rst_L = 1'b0;
    repeat(10) @(posedge r_Clk);
    r_Rst_L = 1'b1;
    repeat(10) @(posedge r_Clk);

    pass_count = 0;
    fail_count = 0;

    // Test đa slave: gửi từng vector tới từng slave
    for (j = 0; j < NUM_SLAVES; j = j + 1) begin
      $display("\n==== Testing Slave %0d ====", j);
      for (i = 0; i < num_vectors; i = i + 1) begin
        SendSingleByte(test_vectors[i], j);

        // Kiểm tra CS đúng slave active
        CheckCSActive(j);

        // Kiểm tra nhận dữ liệu
        if (w_Master_RX_DV && (w_Master_RX_Byte === test_vectors[i])) begin
          $display("PASS: Slave %0d, Sent 0x%02h, Received 0x%02h", j, test_vectors[i], w_Master_RX_Byte);
          pass_count = pass_count + 1;
        end else begin
          $display("FAIL: Slave %0d, Sent 0x%02h, Received 0x%02h", j, test_vectors[i], w_Master_RX_Byte);
          fail_count = fail_count + 1;
        end
      end
    end

    $display("\nTest Completed. Passed = %0d, Failed = %0d", pass_count, fail_count);
    repeat(10) @(posedge r_Clk);
    $finish;
  end

endmodule
