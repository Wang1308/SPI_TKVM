`timescale 1ns/1ps

module SPI_Master_With_Multi_CS_TB ();

  parameter SPI_MODE = 3;           // CPOL = 1, CPHA = 1
  parameter CLKS_PER_HALF_BIT = 4;  // 6.25 MHz SPI clock
  parameter MAIN_CLK_DELAY = 2;     // 25 MHz system clock
  parameter MAX_BYTES_PER_CS = 2;   // 2 bytes per transfer
  parameter CS_INACTIVE_CLKS = 10;  // Delay between CS toggles
  parameter NUM_SLAVES = 4;         // Test with 4 SPI slaves

  // Clock and reset
  reg r_Rst_L = 1'b0;
  reg r_Clk   = 1'b0;

  // SPI interface
  wire w_SPI_Clk;
  wire w_SPI_MOSI;
  wire [NUM_SLAVES-1:0] w_SPI_CS;
  wire w_SPI_MISO;

  // Master control
  reg [7:0] r_Master_TX_Byte = 8'd0;
  reg r_Master_TX_DV = 1'b0;
  reg [1:0] r_Master_TX_Count = 2'b10; // 2 bytes
  reg [$clog2(NUM_SLAVES)-1:0] r_Slave_Select = 0;

  wire w_Master_TX_Ready;
  wire w_Master_RX_DV;
  wire [7:0] w_Master_RX_Byte;
  wire [1:0] w_Master_RX_Count;

  // Clock generator: 25 MHz
  always #(MAIN_CLK_DELAY) r_Clk = ~r_Clk;

  // Instantiate the SPI Master with multi CS
  SPI_Master_With_Multi_CS #(
    .SPI_MODE(SPI_MODE),
    .CLKS_PER_HALF_BIT(CLKS_PER_HALF_BIT),
    .MAX_BYTES_PER_CS(MAX_BYTES_PER_CS),
    .CS_INACTIVE_CLKS(CS_INACTIVE_CLKS),
    .NUM_SLAVES(NUM_SLAVES)
  ) UUT (
    .i_Rst_L(r_Rst_L),
    .i_Clk(r_Clk),
    .i_TX_Byte(r_Master_TX_Byte),
    .i_TX_DV(r_Master_TX_DV),
    .i_TX_Count(r_Master_TX_Count),
    .i_Slave_Select(r_Slave_Select),

    .o_TX_Ready(w_Master_TX_Ready),
    .o_RX_DV(w_Master_RX_DV),
    .o_RX_Byte(w_Master_RX_Byte),
    .o_RX_Count(w_Master_RX_Count),

    .o_SPI_Clk(w_SPI_Clk),
    .i_SPI_MISO(w_SPI_MISO),
    .o_SPI_MOSI(w_SPI_MOSI),
    .o_SPI_CS(w_SPI_CS)
  );

  // Dummy slave echo logic (loopback based on active CS)
  wire w_MISO_0, w_MISO_1, w_MISO_2, w_MISO_3;

  assign w_MISO_0 = w_SPI_MOSI; // Echo for slave 0
  assign w_MISO_1 = w_SPI_MOSI ^ 8'h0F; // Invert lower bits
  assign w_MISO_2 = w_SPI_MOSI ^ 8'hF0; // Invert upper bits
  assign w_MISO_3 = ~w_SPI_MOSI;        // Full invert

  // MISO multiplexer based on which CS is low
  assign w_SPI_MISO =
    (~w_SPI_CS[0]) ? w_MISO_0 :
    (~w_SPI_CS[1]) ? w_MISO_1 :
    (~w_SPI_CS[2]) ? w_MISO_2 :
    (~w_SPI_CS[3]) ? w_MISO_3 :
    1'bZ;

  // Test vectors and result counters
  integer i;
  integer pass_count = 0;
  integer fail_count = 0;
  integer num_vectors = 0;
  reg [7:0] test_vectors [0:31];

  // Load test vectors
  initial begin
  $readmemh("test_vectors.mem", test_vectors);

  num_vectors = 0;
  for (i = 0; i < 32; i = i + 1) begin
    if (test_vectors[i] === 8'hx) begin
      i = 32;  // Thoát vòng for bằng cách tăng i vượt max
    end else begin
      num_vectors = num_vectors + 1;
    end
  end
end

  // Task to send data and check response
  task SendAndCheck;
    input [7:0] data;
    input integer slave_id;
    reg [7:0] expected;
    begin
      @(posedge r_Clk);
      wait(w_Master_TX_Ready);

      r_Master_TX_Byte <= data;
      r_Master_TX_DV   <= 1'b1;
      @(posedge r_Clk);
      r_Master_TX_DV   <= 1'b0;

      wait(w_Master_RX_DV);
      @(posedge r_Clk);

      // Expected echo from selected slave
//      case (slave_id)
//        0: expected = data;
//        1: expected = data ^ 8'h0F;
//        2: expected = data ^ 8'hF0;
//        3: expected = ~data;
//        default: expected = 8'hXX;
//      endcase
        expected = data;

      if (w_Master_RX_Byte === expected) begin
        $display("PASS (Slave %0d): Sent 0x%02X, Got 0x%02X, Time: %0t ns",
                  slave_id, data, w_Master_RX_Byte, $time);
        pass_count = pass_count + 1;
      end else begin
        $display("FAIL (Slave %0d): Sent 0x%02X, Got 0x%02X (Exp: 0x%02X), Time: %0t ns",
                  slave_id, data, w_Master_RX_Byte, expected, $time);
        fail_count = fail_count + 1;
      end
    end
  endtask

  // Main test logic
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, SPI_Master_With_Multi_CS_TB);

    r_Rst_L = 0;
    repeat (10) @(posedge r_Clk);
    r_Rst_L = 1;
    @(posedge r_Clk);

    for (i = 0; i < num_vectors; i = i + 1) begin
      r_Slave_Select <= i % NUM_SLAVES;
      SendAndCheck(test_vectors[i], i % NUM_SLAVES);
    end

    $display("\n=== Test Summary ===");
    $display("PASSED: %0d", pass_count);
    $display("FAILED: %0d", fail_count);
    $display("====================");

    repeat (20) @(posedge r_Clk);
    $finish;
  end

endmodule
