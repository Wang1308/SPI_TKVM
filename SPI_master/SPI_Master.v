module SPI_Master
  #(parameter SPI_MODE = 0,
    parameter CLKS_PER_HALF_BIT = 2,
    parameter NUM_SLAVES = 4)  // Số lượng slave
  (
   // Control/Data Signals
   input        i_Rst_L,        // Reset
   input        i_Clk,          // Clock
   input [7:0]  i_TX_Byte,      // Byte to transmit
   input        i_TX_DV,        // Data valid pulse
   input [$clog2(NUM_SLAVES)-1:0] i_Slave_Select, // Chọn slave

   output reg   o_TX_Ready,     // Ready cho byte tiếp theo
   output reg   o_RX_DV,        // Nhận xong byte
   output reg [7:0] o_RX_Byte,  // Byte nhận được

   // SPI Interface
   output reg o_SPI_Clk,
   output reg o_SPI_MOSI,
   input      i_SPI_MISO,
   output reg [NUM_SLAVES-1:0] o_SPI_CS  // Chip select (active low)
   );

  wire w_CPOL = (SPI_MODE == 2) | (SPI_MODE == 3);
  wire w_CPHA = (SPI_MODE == 1) | (SPI_MODE == 3);

  reg [$clog2(CLKS_PER_HALF_BIT*2)-1:0] r_SPI_Clk_Count;
  reg r_SPI_Clk;
  reg [4:0] r_SPI_Clk_Edges;
  reg r_Leading_Edge;
  reg r_Trailing_Edge;

  reg       r_TX_DV;
  reg [7:0] r_TX_Byte;
  reg [2:0] r_TX_Bit_Count;
  reg [2:0] r_RX_Bit_Count;

  // === SPI Clock and Edge Generation ===
  always @(posedge i_Clk or negedge i_Rst_L) begin
    if (~i_Rst_L) begin
      o_TX_Ready      <= 1'b0;
      r_SPI_Clk_Edges <= 0;
      r_Leading_Edge  <= 1'b0;
      r_Trailing_Edge <= 1'b0;
      r_SPI_Clk       <= w_CPOL;
      r_SPI_Clk_Count <= 0;
    end else begin
      r_Leading_Edge  <= 1'b0;
      r_Trailing_Edge <= 1'b0;

      if (i_TX_DV) begin
        o_TX_Ready      <= 1'b0;
        r_SPI_Clk_Edges <= 16;  // 8 bits * 2 edges
      end else if (r_SPI_Clk_Edges > 0) begin
        o_TX_Ready <= 1'b0;
        if (r_SPI_Clk_Count == CLKS_PER_HALF_BIT*2 - 1) begin
          r_SPI_Clk_Count <= 0;
          r_SPI_Clk_Edges <= r_SPI_Clk_Edges - 1;
          r_Trailing_Edge <= 1'b1;
          r_SPI_Clk       <= ~r_SPI_Clk;
        end else if (r_SPI_Clk_Count == CLKS_PER_HALF_BIT - 1) begin
          r_SPI_Clk_Count <= r_SPI_Clk_Count + 1;
          r_SPI_Clk_Edges <= r_SPI_Clk_Edges - 1;
          r_Leading_Edge  <= 1'b1;
          r_SPI_Clk       <= ~r_SPI_Clk;
        end else begin
          r_SPI_Clk_Count <= r_SPI_Clk_Count + 1;
        end
      end else begin
        o_TX_Ready <= 1'b1;
      end
    end
  end

  // === TX Byte Registering ===
  always @(posedge i_Clk or negedge i_Rst_L) begin
    if (~i_Rst_L) begin
      r_TX_Byte <= 8'h00;
      r_TX_DV   <= 1'b0;
    end else begin
      r_TX_DV <= i_TX_DV;
      if (i_TX_DV)
        r_TX_Byte <= i_TX_Byte;
    end
  end

  // === MOSI Shifting ===
  always @(posedge i_Clk or negedge i_Rst_L) begin
    if (~i_Rst_L) begin
      o_SPI_MOSI     <= 1'b0;
      r_TX_Bit_Count <= 3'b111;
    end else begin
      if (o_TX_Ready) begin
        r_TX_Bit_Count <= 3'b111;
      end else if (r_TX_DV & ~w_CPHA) begin
        o_SPI_MOSI     <= r_TX_Byte[3'b111];
        r_TX_Bit_Count <= 3'b110;
      end else if ((r_Leading_Edge & w_CPHA) | (r_Trailing_Edge & ~w_CPHA)) begin
        o_SPI_MOSI     <= r_TX_Byte[r_TX_Bit_Count];
        r_TX_Bit_Count <= r_TX_Bit_Count - 1;
      end
    end
  end

  // === MISO Reading ===
  always @(posedge i_Clk or negedge i_Rst_L) begin
    if (~i_Rst_L) begin
      o_RX_Byte      <= 8'h00;
      o_RX_DV        <= 1'b0;
      r_RX_Bit_Count <= 3'b111;
    end else begin
      o_RX_DV <= 1'b0;
      if (o_TX_Ready)
        r_RX_Bit_Count <= 3'b111;
      else if ((r_Leading_Edge & ~w_CPHA) | (r_Trailing_Edge & w_CPHA)) begin
        o_RX_Byte[r_RX_Bit_Count] <= i_SPI_MISO;
        r_RX_Bit_Count <= r_RX_Bit_Count - 1;
        if (r_RX_Bit_Count == 3'b000)
          o_RX_DV <= 1'b1;
      end
    end
  end

  // === SPI Clock Output ===
  always @(posedge i_Clk or negedge i_Rst_L) begin
    if (~i_Rst_L)
      o_SPI_Clk <= w_CPOL;
    else
      o_SPI_Clk <= r_SPI_Clk;
  end

  // === Chip Select Control (Active Low) ===
  always @(posedge i_Clk or negedge i_Rst_L) begin
    if (~i_Rst_L)
      o_SPI_CS <= {NUM_SLAVES{1'b1}};  // không chọn ai
    else if (i_TX_DV)
      o_SPI_CS <= ~(1 << i_Slave_Select);  // chọn slave tương ứng
    else if (o_TX_Ready)
      o_SPI_CS <= {NUM_SLAVES{1'b1}};  // bỏ chọn
  end

endmodule
