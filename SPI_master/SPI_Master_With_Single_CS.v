module SPI_Master_With_Multi_CS
  #(parameter SPI_MODE = 0,
    parameter CLKS_PER_HALF_BIT = 2,
    parameter MAX_BYTES_PER_CS = 2,
    parameter CS_INACTIVE_CLKS = 1,
    parameter NUM_SLAVES = 4
  )
  (
   input        i_Rst_L,     // Reset
   input        i_Clk,       // Clock
   
   // TX signals
   input [$clog2(MAX_BYTES_PER_CS+1)-1:0] i_TX_Count,  // số byte truyền cho mỗi lần CS active
   input [7:0]  i_TX_Byte,       // byte truyền
   input        i_TX_DV,         // tín hiệu bắt đầu byte mới
   input [$clog2(NUM_SLAVES)-1:0] i_Slave_Select,  // chọn slave
   
   output       o_TX_Ready,      // sẵn sàng truyền byte mới

   // RX signals
   output reg [$clog2(MAX_BYTES_PER_CS+1)-1:0] o_RX_Count,
   output       o_RX_DV,
   output [7:0] o_RX_Byte,

   // SPI interface
   output      o_SPI_Clk,
   input       i_SPI_MISO,
   output      o_SPI_MOSI,
   output reg [NUM_SLAVES-1:0] o_SPI_CS   // chip select nhiều slave, active low
  );

  localparam IDLE        = 2'b00;
  localparam TRANSFER    = 2'b01;
  localparam CS_INACTIVE = 2'b10;

  reg [1:0] r_SM_CS;
  reg [$clog2(CS_INACTIVE_CLKS)-1:0] r_CS_Inactive_Count;
  reg [$clog2(MAX_BYTES_PER_CS+1)-1:0] r_TX_Count;
  wire w_Master_Ready;

  // Instantiate Master, không dùng cs ở đây, vì module này xử lý CS đa slave
  SPI_Master
    #(.SPI_MODE(SPI_MODE),
      .CLKS_PER_HALF_BIT(CLKS_PER_HALF_BIT),
      .NUM_SLAVES(1)  // chỉ một slave ảo bên trong để dễ quản lý MOSI/MISO/CLK
      )
    SPI_Master_Inst
    (
      .i_Rst_L(i_Rst_L),
      .i_Clk(i_Clk),
      .i_TX_Byte(i_TX_Byte),
      .i_TX_DV(i_TX_DV),
      .i_Slave_Select(i_Slave_Select),
      .o_TX_Ready(w_Master_Ready),
      .o_RX_DV(o_RX_DV),
      .o_RX_Byte(o_RX_Byte),
      .o_SPI_Clk(o_SPI_Clk),
      .i_SPI_MISO(i_SPI_MISO),
      .o_SPI_MOSI(o_SPI_MOSI),
      .o_SPI_CS() // không dùng cs bên trong module này
    );

  always @(posedge i_Clk or negedge i_Rst_L) begin
    if (~i_Rst_L) begin
      r_SM_CS <= IDLE;
      r_TX_Count <= 0;
      r_CS_Inactive_Count <= CS_INACTIVE_CLKS;
      o_SPI_CS <= {NUM_SLAVES{1'b1}}; // mặc định không chọn slave nào (CS=1)
    end else begin
      case (r_SM_CS)
        IDLE: begin
          if (o_SPI_CS == {NUM_SLAVES{1'b1}} && i_TX_DV) begin
            // Bắt đầu truyền: chọn slave kéo CS low
            r_TX_Count <= i_TX_Count - 1'b1;
            o_SPI_CS <= ~(1 << i_Slave_Select);  // chọn slave active low
            r_SM_CS <= TRANSFER;
          end
        end

        TRANSFER: begin
          if (w_Master_Ready) begin
            if (r_TX_Count > 0) begin
              if (i_TX_DV) begin
                r_TX_Count <= r_TX_Count - 1'b1;
              end
            end else begin
              o_SPI_CS <= {NUM_SLAVES{1'b1}}; // thả CS tất cả slave (high)
              r_CS_Inactive_Count <= CS_INACTIVE_CLKS;
              r_SM_CS <= CS_INACTIVE;
            end
          end
        end

        CS_INACTIVE: begin
          if (r_CS_Inactive_Count > 0) begin
            r_CS_Inactive_Count <= r_CS_Inactive_Count - 1'b1;
          end else begin
            r_SM_CS <= IDLE;
          end
        end

        default: begin
          r_SM_CS <= IDLE;
          o_SPI_CS <= {NUM_SLAVES{1'b1}};
        end
      endcase
    end
  end

  // RX Count tracking
  always @(posedge i_Clk) begin
    if (o_SPI_CS == {NUM_SLAVES{1'b1}}) begin
      o_RX_Count <= 0;
    end else if (o_RX_DV) begin
      o_RX_Count <= o_RX_Count + 1'b1;
    end
  end

  assign o_TX_Ready = ((r_SM_CS == IDLE) || (r_SM_CS == TRANSFER && w_Master_Ready && r_TX_Count > 0)) & ~i_TX_DV;

endmodule
