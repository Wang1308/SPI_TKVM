module SPI_Master_With_Multi_CS (i_Clk,
    i_Rst_L,
    i_SPI_MISO,
    i_TX_DV,
    o_RX_DV,
    o_SPI_Clk,
    o_SPI_MOSI,
    o_TX_Ready,
    VPWR,
    VGND,
    i_Slave_Select,
    i_TX_Byte,
    i_TX_Count,
    o_RX_Byte,
    o_RX_Count,
    o_SPI_CS);
 input i_Clk;
 input i_Rst_L;
 input i_SPI_MISO;
 input i_TX_DV;
 output o_RX_DV;
 output o_SPI_Clk;
 output o_SPI_MOSI;
 output o_TX_Ready;
 inout VPWR;
 inout VGND;
 input [1:0] i_Slave_Select;
 input [7:0] i_TX_Byte;
 input [1:0] i_TX_Count;
 output [7:0] o_RX_Byte;
 output [1:0] o_RX_Count;
 output [3:0] o_SPI_CS;

 wire \SPI_Master_Inst.o_TX_Ready ;
 wire \SPI_Master_Inst.r_Leading_Edge ;
 wire \SPI_Master_Inst.r_RX_Bit_Count[0] ;
 wire \SPI_Master_Inst.r_RX_Bit_Count[1] ;
 wire \SPI_Master_Inst.r_RX_Bit_Count[2] ;
 wire \SPI_Master_Inst.r_SPI_Clk ;
 wire \SPI_Master_Inst.r_SPI_Clk_Count[0] ;
 wire \SPI_Master_Inst.r_SPI_Clk_Count[1] ;
 wire \SPI_Master_Inst.r_SPI_Clk_Edges[0] ;
 wire \SPI_Master_Inst.r_SPI_Clk_Edges[1] ;
 wire \SPI_Master_Inst.r_SPI_Clk_Edges[2] ;
 wire \SPI_Master_Inst.r_SPI_Clk_Edges[3] ;
 wire \SPI_Master_Inst.r_SPI_Clk_Edges[4] ;
 wire \SPI_Master_Inst.r_TX_Bit_Count[0] ;
 wire \SPI_Master_Inst.r_TX_Bit_Count[1] ;
 wire \SPI_Master_Inst.r_TX_Bit_Count[2] ;
 wire \SPI_Master_Inst.r_TX_Byte[0] ;
 wire \SPI_Master_Inst.r_TX_Byte[1] ;
 wire \SPI_Master_Inst.r_TX_Byte[2] ;
 wire \SPI_Master_Inst.r_TX_Byte[3] ;
 wire \SPI_Master_Inst.r_TX_Byte[4] ;
 wire \SPI_Master_Inst.r_TX_Byte[5] ;
 wire \SPI_Master_Inst.r_TX_Byte[6] ;
 wire \SPI_Master_Inst.r_TX_Byte[7] ;
 wire \SPI_Master_Inst.r_TX_DV ;
 wire \SPI_Master_Inst.r_Trailing_Edge ;
 wire _000_;
 wire _001_;
 wire _002_;
 wire _003_;
 wire _004_;
 wire _005_;
 wire _006_;
 wire _007_;
 wire _008_;
 wire _009_;
 wire _010_;
 wire _011_;
 wire _012_;
 wire _013_;
 wire _014_;
 wire _015_;
 wire _016_;
 wire _017_;
 wire _018_;
 wire _019_;
 wire _020_;
 wire _021_;
 wire _022_;
 wire _023_;
 wire _024_;
 wire _025_;
 wire _026_;
 wire _027_;
 wire _028_;
 wire _029_;
 wire _030_;
 wire _031_;
 wire _032_;
 wire _033_;
 wire _034_;
 wire _035_;
 wire _036_;
 wire _037_;
 wire _038_;
 wire _039_;
 wire _040_;
 wire _041_;
 wire _042_;
 wire _043_;
 wire _044_;
 wire _045_;
 wire _046_;
 wire _047_;
 wire _048_;
 wire _049_;
 wire _050_;
 wire _051_;
 wire _052_;
 wire _053_;
 wire _054_;
 wire _055_;
 wire _056_;
 wire _057_;
 wire _058_;
 wire _059_;
 wire _060_;
 wire _061_;
 wire _062_;
 wire _063_;
 wire _064_;
 wire _065_;
 wire _066_;
 wire _067_;
 wire _068_;
 wire _069_;
 wire _070_;
 wire _071_;
 wire _072_;
 wire _073_;
 wire _074_;
 wire _075_;
 wire _076_;
 wire _077_;
 wire _078_;
 wire _079_;
 wire _080_;
 wire _081_;
 wire _082_;
 wire _083_;
 wire _084_;
 wire _085_;
 wire _086_;
 wire _087_;
 wire _088_;
 wire _089_;
 wire _090_;
 wire _091_;
 wire _092_;
 wire _093_;
 wire _094_;
 wire _095_;
 wire _096_;
 wire _097_;
 wire _098_;
 wire _099_;
 wire _100_;
 wire _101_;
 wire _102_;
 wire _103_;
 wire _104_;
 wire _105_;
 wire _106_;
 wire _107_;
 wire _108_;
 wire _109_;
 wire _110_;
 wire _111_;
 wire _112_;
 wire _113_;
 wire _114_;
 wire _115_;
 wire _116_;
 wire _117_;
 wire \r_CS_Inactive_Count[-1] ;
 wire \r_CS_Inactive_Count[0] ;
 wire \r_SM_CS[0] ;
 wire \r_SM_CS[1] ;
 wire \r_TX_Count[0] ;
 wire \r_TX_Count[1] ;

 sky130_fd_sc_hd__inv_2 _118_ (.A(\r_SM_CS[1] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_047_));
 sky130_fd_sc_hd__inv_2 _119_ (.A(i_TX_DV),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_048_));
 sky130_fd_sc_hd__inv_2 _120_ (.A(\SPI_Master_Inst.r_Trailing_Edge ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_049_));
 sky130_fd_sc_hd__inv_2 _121_ (.A(\SPI_Master_Inst.r_SPI_Clk_Count[0] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_050_));
 sky130_fd_sc_hd__inv_2 _122_ (.A(\SPI_Master_Inst.r_TX_Byte[7] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_051_));
 sky130_fd_sc_hd__inv_2 _123_ (.A(\SPI_Master_Inst.r_RX_Bit_Count[0] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_052_));
 sky130_fd_sc_hd__inv_2 _124_ (.A(\SPI_Master_Inst.r_RX_Bit_Count[1] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_053_));
 sky130_fd_sc_hd__inv_2 _125_ (.A(\SPI_Master_Inst.r_RX_Bit_Count[2] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_054_));
 sky130_fd_sc_hd__nor2_2 _126_ (.A(\SPI_Master_Inst.r_SPI_Clk_Edges[1] ),
    .B(\SPI_Master_Inst.r_SPI_Clk_Edges[0] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_055_));
 sky130_fd_sc_hd__or3_2 _127_ (.A(\SPI_Master_Inst.r_SPI_Clk_Edges[2] ),
    .B(\SPI_Master_Inst.r_SPI_Clk_Edges[1] ),
    .C(\SPI_Master_Inst.r_SPI_Clk_Edges[0] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_056_));
 sky130_fd_sc_hd__nor3_2 _128_ (.A(\SPI_Master_Inst.r_SPI_Clk_Edges[3] ),
    .B(\SPI_Master_Inst.r_SPI_Clk_Edges[4] ),
    .C(_056_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_057_));
 sky130_fd_sc_hd__and2_2 _129_ (.A(_048_),
    .B(_057_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_001_));
 sky130_fd_sc_hd__nor3_2 _130_ (.A(i_TX_DV),
    .B(_050_),
    .C(_057_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_058_));
 sky130_fd_sc_hd__and2b_2 _131_ (.A_N(\SPI_Master_Inst.r_SPI_Clk_Count[1] ),
    .B(_058_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_002_));
 sky130_fd_sc_hd__and2_2 _132_ (.A(\SPI_Master_Inst.r_SPI_Clk_Count[1] ),
    .B(_058_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_003_));
 sky130_fd_sc_hd__nor2_2 _133_ (.A(\SPI_Master_Inst.r_RX_Bit_Count[0] ),
    .B(\SPI_Master_Inst.r_RX_Bit_Count[1] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_059_));
 sky130_fd_sc_hd__nand2b_2 _134_ (.A_N(\SPI_Master_Inst.o_TX_Ready ),
    .B(\SPI_Master_Inst.r_Leading_Edge ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_060_));
 sky130_fd_sc_hd__and3b_2 _135_ (.A_N(_060_),
    .B(_054_),
    .C(_059_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_000_));
 sky130_fd_sc_hd__or2_2 _136_ (.A(\r_SM_CS[1] ),
    .B(\r_SM_CS[0] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_061_));
 sky130_fd_sc_hd__nor2_2 _137_ (.A(\r_TX_Count[0] ),
    .B(\r_TX_Count[1] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_062_));
 sky130_fd_sc_hd__or3b_2 _138_ (.A(\r_SM_CS[1] ),
    .B(_062_),
    .C_N(\SPI_Master_Inst.o_TX_Ready ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_063_));
 sky130_fd_sc_hd__nand2b_2 _139_ (.A_N(\r_SM_CS[1] ),
    .B(\r_SM_CS[0] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_064_));
 sky130_fd_sc_hd__a21oi_2 _140_ (.A1(_061_),
    .A2(_063_),
    .B1(i_TX_DV),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(o_TX_Ready));
 sky130_fd_sc_hd__and4_2 _141_ (.A(o_SPI_CS[1]),
    .B(o_SPI_CS[0]),
    .C(o_SPI_CS[3]),
    .D(o_SPI_CS[2]),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_065_));
 sky130_fd_sc_hd__o21ai_2 _142_ (.A1(_061_),
    .A2(_065_),
    .B1(i_TX_DV),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_066_));
 sky130_fd_sc_hd__a21oi_2 _143_ (.A1(_061_),
    .A2(_063_),
    .B1(_066_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_067_));
 sky130_fd_sc_hd__mux2_1 _144_ (.A0(\r_TX_Count[0] ),
    .A1(i_TX_Count[0]),
    .S(_064_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_068_));
 sky130_fd_sc_hd__inv_2 _145_ (.A(_068_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_069_));
 sky130_fd_sc_hd__mux2_1 _146_ (.A0(\r_TX_Count[0] ),
    .A1(_069_),
    .S(_067_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_004_));
 sky130_fd_sc_hd__mux2_1 _147_ (.A0(\r_TX_Count[1] ),
    .A1(i_TX_Count[1]),
    .S(_064_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_070_));
 sky130_fd_sc_hd__xnor2_2 _148_ (.A(_068_),
    .B(_070_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_071_));
 sky130_fd_sc_hd__mux2_1 _149_ (.A0(\r_TX_Count[1] ),
    .A1(_071_),
    .S(_067_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_005_));
 sky130_fd_sc_hd__o21bai_2 _150_ (.A1(o_RX_DV),
    .A2(o_RX_Count[0]),
    .B1_N(_065_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_072_));
 sky130_fd_sc_hd__a21oi_2 _151_ (.A1(o_RX_DV),
    .A2(o_RX_Count[0]),
    .B1(_072_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_006_));
 sky130_fd_sc_hd__a21oi_2 _152_ (.A1(o_RX_DV),
    .A2(o_RX_Count[0]),
    .B1(o_RX_Count[1]),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_073_));
 sky130_fd_sc_hd__a311oi_2 _153_ (.A1(o_RX_Count[1]),
    .A2(o_RX_DV),
    .A3(o_RX_Count[0]),
    .B1(_065_),
    .C1(_073_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_007_));
 sky130_fd_sc_hd__o21ai_2 _154_ (.A1(i_TX_DV),
    .A2(\SPI_Master_Inst.r_SPI_Clk_Count[0] ),
    .B1(\SPI_Master_Inst.r_SPI_Clk_Edges[0] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_074_));
 sky130_fd_sc_hd__o21a_2 _155_ (.A1(\SPI_Master_Inst.r_SPI_Clk_Edges[0] ),
    .A2(_058_),
    .B1(_074_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_008_));
 sky130_fd_sc_hd__o21a_2 _156_ (.A1(\SPI_Master_Inst.r_SPI_Clk_Edges[0] ),
    .A2(_050_),
    .B1(\SPI_Master_Inst.r_SPI_Clk_Edges[1] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_075_));
 sky130_fd_sc_hd__o311a_2 _157_ (.A1(\SPI_Master_Inst.r_SPI_Clk_Edges[3] ),
    .A2(\SPI_Master_Inst.r_SPI_Clk_Edges[2] ),
    .A3(\SPI_Master_Inst.r_SPI_Clk_Edges[4] ),
    .B1(\SPI_Master_Inst.r_SPI_Clk_Count[0] ),
    .C1(_055_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_076_));
 sky130_fd_sc_hd__o21a_2 _158_ (.A1(_075_),
    .A2(_076_),
    .B1(_048_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_009_));
 sky130_fd_sc_hd__nor2_2 _159_ (.A(\SPI_Master_Inst.r_SPI_Clk_Edges[2] ),
    .B(_076_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_077_));
 sky130_fd_sc_hd__a311oi_2 _160_ (.A1(\SPI_Master_Inst.r_SPI_Clk_Edges[2] ),
    .A2(\SPI_Master_Inst.r_SPI_Clk_Count[0] ),
    .A3(_055_),
    .B1(_077_),
    .C1(i_TX_DV),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_010_));
 sky130_fd_sc_hd__or3_2 _161_ (.A(\SPI_Master_Inst.r_SPI_Clk_Edges[3] ),
    .B(_050_),
    .C(_056_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_078_));
 sky130_fd_sc_hd__o21ai_2 _162_ (.A1(_050_),
    .A2(_056_),
    .B1(\SPI_Master_Inst.r_SPI_Clk_Edges[3] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_079_));
 sky130_fd_sc_hd__a211oi_2 _163_ (.A1(_078_),
    .A2(_079_),
    .B1(i_TX_DV),
    .C1(_057_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_011_));
 sky130_fd_sc_hd__a21o_2 _164_ (.A1(\SPI_Master_Inst.r_SPI_Clk_Edges[4] ),
    .A2(_078_),
    .B1(i_TX_DV),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_012_));
 sky130_fd_sc_hd__a21o_2 _165_ (.A1(\SPI_Master_Inst.o_TX_Ready ),
    .A2(_062_),
    .B1(_064_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_080_));
 sky130_fd_sc_hd__and2b_2 _166_ (.A_N(\r_SM_CS[0] ),
    .B(\r_SM_CS[1] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_081_));
 sky130_fd_sc_hd__a31o_2 _167_ (.A1(_047_),
    .A2(i_TX_DV),
    .A3(_065_),
    .B1(\r_SM_CS[0] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_082_));
 sky130_fd_sc_hd__and2_2 _168_ (.A(_080_),
    .B(_082_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_083_));
 sky130_fd_sc_hd__or3_2 _169_ (.A(i_Slave_Select[1]),
    .B(i_Slave_Select[0]),
    .C(_061_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_084_));
 sky130_fd_sc_hd__mux2_1 _170_ (.A0(o_SPI_CS[0]),
    .A1(_084_),
    .S(_083_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_013_));
 sky130_fd_sc_hd__or3b_2 _171_ (.A(_061_),
    .B(i_Slave_Select[1]),
    .C_N(i_Slave_Select[0]),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_085_));
 sky130_fd_sc_hd__mux2_1 _172_ (.A0(o_SPI_CS[1]),
    .A1(_085_),
    .S(_083_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_014_));
 sky130_fd_sc_hd__or3b_2 _173_ (.A(i_Slave_Select[0]),
    .B(_061_),
    .C_N(i_Slave_Select[1]),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_086_));
 sky130_fd_sc_hd__mux2_1 _174_ (.A0(o_SPI_CS[2]),
    .A1(_086_),
    .S(_083_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_015_));
 sky130_fd_sc_hd__or4bb_2 _175_ (.A(\r_SM_CS[1] ),
    .B(\r_SM_CS[0] ),
    .C_N(i_Slave_Select[1]),
    .D_N(i_Slave_Select[0]),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_087_));
 sky130_fd_sc_hd__mux2_1 _176_ (.A0(o_SPI_CS[3]),
    .A1(_087_),
    .S(_083_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_016_));
 sky130_fd_sc_hd__or3b_2 _177_ (.A(_048_),
    .B(_061_),
    .C_N(_065_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_088_));
 sky130_fd_sc_hd__nand2_2 _178_ (.A(_080_),
    .B(_088_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_017_));
 sky130_fd_sc_hd__o21a_2 _179_ (.A1(\r_CS_Inactive_Count[0] ),
    .A2(\r_CS_Inactive_Count[-1] ),
    .B1(_081_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_089_));
 sky130_fd_sc_hd__a41o_2 _180_ (.A1(_047_),
    .A2(\r_SM_CS[0] ),
    .A3(\SPI_Master_Inst.o_TX_Ready ),
    .A4(_062_),
    .B1(_089_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_018_));
 sky130_fd_sc_hd__nand2_2 _181_ (.A(\r_CS_Inactive_Count[0] ),
    .B(_081_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_090_));
 sky130_fd_sc_hd__o21a_2 _182_ (.A1(\r_CS_Inactive_Count[0] ),
    .A2(_018_),
    .B1(_090_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_019_));
 sky130_fd_sc_hd__a21boi_2 _183_ (.A1(_018_),
    .A2(_090_),
    .B1_N(\r_CS_Inactive_Count[-1] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_020_));
 sky130_fd_sc_hd__or2_2 _184_ (.A(\SPI_Master_Inst.o_TX_Ready ),
    .B(\SPI_Master_Inst.r_Leading_Edge ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_091_));
 sky130_fd_sc_hd__mux2_1 _185_ (.A0(_060_),
    .A1(_091_),
    .S(_052_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_021_));
 sky130_fd_sc_hd__nand2_2 _186_ (.A(\SPI_Master_Inst.r_RX_Bit_Count[0] ),
    .B(\SPI_Master_Inst.r_RX_Bit_Count[1] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_092_));
 sky130_fd_sc_hd__or3b_2 _187_ (.A(_059_),
    .B(_060_),
    .C_N(_092_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_093_));
 sky130_fd_sc_hd__o21a_2 _188_ (.A1(\SPI_Master_Inst.r_RX_Bit_Count[1] ),
    .A2(_091_),
    .B1(_093_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_022_));
 sky130_fd_sc_hd__xnor2_2 _189_ (.A(\SPI_Master_Inst.r_RX_Bit_Count[2] ),
    .B(_059_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_094_));
 sky130_fd_sc_hd__and2b_2 _190_ (.A_N(_060_),
    .B(_094_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_095_));
 sky130_fd_sc_hd__o21ba_2 _191_ (.A1(\SPI_Master_Inst.r_RX_Bit_Count[2] ),
    .A2(_091_),
    .B1_N(_095_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_023_));
 sky130_fd_sc_hd__mux2_1 _192_ (.A0(o_RX_Byte[0]),
    .A1(i_SPI_MISO),
    .S(_000_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_024_));
 sky130_fd_sc_hd__nor2_2 _193_ (.A(_052_),
    .B(\SPI_Master_Inst.r_RX_Bit_Count[1] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_096_));
 sky130_fd_sc_hd__or4_2 _194_ (.A(_052_),
    .B(\SPI_Master_Inst.r_RX_Bit_Count[1] ),
    .C(\SPI_Master_Inst.r_RX_Bit_Count[2] ),
    .D(_060_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_097_));
 sky130_fd_sc_hd__a32o_2 _195_ (.A1(i_SPI_MISO),
    .A2(_095_),
    .A3(_096_),
    .B1(_097_),
    .B2(o_RX_Byte[1]),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_025_));
 sky130_fd_sc_hd__nor2_2 _196_ (.A(\SPI_Master_Inst.r_RX_Bit_Count[0] ),
    .B(_053_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_098_));
 sky130_fd_sc_hd__or4_2 _197_ (.A(\SPI_Master_Inst.r_RX_Bit_Count[0] ),
    .B(_053_),
    .C(\SPI_Master_Inst.r_RX_Bit_Count[2] ),
    .D(_060_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_099_));
 sky130_fd_sc_hd__a32o_2 _198_ (.A1(i_SPI_MISO),
    .A2(_095_),
    .A3(_098_),
    .B1(_099_),
    .B2(o_RX_Byte[2]),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_026_));
 sky130_fd_sc_hd__or3_2 _199_ (.A(\SPI_Master_Inst.r_RX_Bit_Count[2] ),
    .B(_060_),
    .C(_092_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_100_));
 sky130_fd_sc_hd__mux2_1 _200_ (.A0(i_SPI_MISO),
    .A1(o_RX_Byte[3]),
    .S(_100_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_027_));
 sky130_fd_sc_hd__or2_2 _201_ (.A(_054_),
    .B(_060_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_101_));
 sky130_fd_sc_hd__or3_2 _202_ (.A(\SPI_Master_Inst.r_RX_Bit_Count[0] ),
    .B(\SPI_Master_Inst.r_RX_Bit_Count[1] ),
    .C(_101_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_102_));
 sky130_fd_sc_hd__mux2_1 _203_ (.A0(i_SPI_MISO),
    .A1(o_RX_Byte[4]),
    .S(_102_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_028_));
 sky130_fd_sc_hd__nor2_2 _204_ (.A(_060_),
    .B(_094_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_103_));
 sky130_fd_sc_hd__o31a_2 _205_ (.A1(_052_),
    .A2(\SPI_Master_Inst.r_RX_Bit_Count[1] ),
    .A3(_101_),
    .B1(o_RX_Byte[5]),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_104_));
 sky130_fd_sc_hd__a31o_2 _206_ (.A1(i_SPI_MISO),
    .A2(_096_),
    .A3(_103_),
    .B1(_104_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_029_));
 sky130_fd_sc_hd__o31a_2 _207_ (.A1(\SPI_Master_Inst.r_RX_Bit_Count[0] ),
    .A2(_053_),
    .A3(_101_),
    .B1(o_RX_Byte[6]),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_105_));
 sky130_fd_sc_hd__a31o_2 _208_ (.A1(i_SPI_MISO),
    .A2(_098_),
    .A3(_103_),
    .B1(_105_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_030_));
 sky130_fd_sc_hd__or2_2 _209_ (.A(_092_),
    .B(_101_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_106_));
 sky130_fd_sc_hd__mux2_1 _210_ (.A0(i_SPI_MISO),
    .A1(o_RX_Byte[7]),
    .S(_106_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_031_));
 sky130_fd_sc_hd__mux2_1 _211_ (.A0(\SPI_Master_Inst.r_TX_Byte[0] ),
    .A1(i_TX_Byte[0]),
    .S(i_TX_DV),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_032_));
 sky130_fd_sc_hd__mux2_1 _212_ (.A0(\SPI_Master_Inst.r_TX_Byte[1] ),
    .A1(i_TX_Byte[1]),
    .S(i_TX_DV),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_033_));
 sky130_fd_sc_hd__mux2_1 _213_ (.A0(\SPI_Master_Inst.r_TX_Byte[2] ),
    .A1(i_TX_Byte[2]),
    .S(i_TX_DV),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_034_));
 sky130_fd_sc_hd__mux2_1 _214_ (.A0(\SPI_Master_Inst.r_TX_Byte[3] ),
    .A1(i_TX_Byte[3]),
    .S(i_TX_DV),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_035_));
 sky130_fd_sc_hd__mux2_1 _215_ (.A0(\SPI_Master_Inst.r_TX_Byte[4] ),
    .A1(i_TX_Byte[4]),
    .S(i_TX_DV),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_036_));
 sky130_fd_sc_hd__mux2_1 _216_ (.A0(\SPI_Master_Inst.r_TX_Byte[5] ),
    .A1(i_TX_Byte[5]),
    .S(i_TX_DV),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_037_));
 sky130_fd_sc_hd__mux2_1 _217_ (.A0(\SPI_Master_Inst.r_TX_Byte[6] ),
    .A1(i_TX_Byte[6]),
    .S(i_TX_DV),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_038_));
 sky130_fd_sc_hd__mux2_1 _218_ (.A0(\SPI_Master_Inst.r_TX_Byte[7] ),
    .A1(i_TX_Byte[7]),
    .S(i_TX_DV),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_039_));
 sky130_fd_sc_hd__o21a_2 _219_ (.A1(i_TX_DV),
    .A2(_057_),
    .B1(_050_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_107_));
 sky130_fd_sc_hd__nor2_2 _220_ (.A(_058_),
    .B(_107_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_040_));
 sky130_fd_sc_hd__xor2_2 _221_ (.A(\SPI_Master_Inst.r_SPI_Clk_Count[1] ),
    .B(_058_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_041_));
 sky130_fd_sc_hd__o21bai_2 _222_ (.A1(\SPI_Master_Inst.r_Trailing_Edge ),
    .A2(\SPI_Master_Inst.r_TX_DV ),
    .B1_N(\SPI_Master_Inst.o_TX_Ready ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_108_));
 sky130_fd_sc_hd__mux4_2 _223_ (.A0(\SPI_Master_Inst.r_TX_Byte[0] ),
    .A1(\SPI_Master_Inst.r_TX_Byte[1] ),
    .A2(\SPI_Master_Inst.r_TX_Byte[2] ),
    .A3(\SPI_Master_Inst.r_TX_Byte[3] ),
    .S0(\SPI_Master_Inst.r_TX_Bit_Count[0] ),
    .S1(\SPI_Master_Inst.r_TX_Bit_Count[1] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_109_));
 sky130_fd_sc_hd__mux4_2 _224_ (.A0(\SPI_Master_Inst.r_TX_Byte[4] ),
    .A1(\SPI_Master_Inst.r_TX_Byte[5] ),
    .A2(\SPI_Master_Inst.r_TX_Byte[6] ),
    .A3(\SPI_Master_Inst.r_TX_Byte[7] ),
    .S0(\SPI_Master_Inst.r_TX_Bit_Count[0] ),
    .S1(\SPI_Master_Inst.r_TX_Bit_Count[1] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_110_));
 sky130_fd_sc_hd__mux2_1 _225_ (.A0(_109_),
    .A1(_110_),
    .S(\SPI_Master_Inst.r_TX_Bit_Count[2] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_111_));
 sky130_fd_sc_hd__or2_2 _226_ (.A(\SPI_Master_Inst.r_TX_DV ),
    .B(_111_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_112_));
 sky130_fd_sc_hd__a21oi_2 _227_ (.A1(\SPI_Master_Inst.r_TX_DV ),
    .A2(_051_),
    .B1(_108_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_113_));
 sky130_fd_sc_hd__a22o_2 _228_ (.A1(o_SPI_MOSI),
    .A2(_108_),
    .B1(_112_),
    .B2(_113_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_042_));
 sky130_fd_sc_hd__xor2_2 _229_ (.A(\SPI_Master_Inst.r_SPI_Clk ),
    .B(_058_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_043_));
 sky130_fd_sc_hd__xnor2_2 _230_ (.A(\SPI_Master_Inst.r_Trailing_Edge ),
    .B(\SPI_Master_Inst.r_TX_Bit_Count[0] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_114_));
 sky130_fd_sc_hd__o21bai_2 _231_ (.A1(\SPI_Master_Inst.r_TX_DV ),
    .A2(_114_),
    .B1_N(\SPI_Master_Inst.o_TX_Ready ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_044_));
 sky130_fd_sc_hd__or3_2 _232_ (.A(_049_),
    .B(\SPI_Master_Inst.r_TX_Bit_Count[0] ),
    .C(\SPI_Master_Inst.r_TX_Bit_Count[1] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_115_));
 sky130_fd_sc_hd__o21ai_2 _233_ (.A1(_049_),
    .A2(\SPI_Master_Inst.r_TX_Bit_Count[0] ),
    .B1(\SPI_Master_Inst.r_TX_Bit_Count[1] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_116_));
 sky130_fd_sc_hd__or4bb_2 _234_ (.A(\SPI_Master_Inst.o_TX_Ready ),
    .B(\SPI_Master_Inst.r_TX_DV ),
    .C_N(_115_),
    .D_N(_116_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_045_));
 sky130_fd_sc_hd__a211oi_2 _235_ (.A1(\SPI_Master_Inst.r_TX_Bit_Count[2] ),
    .A2(_115_),
    .B1(\SPI_Master_Inst.o_TX_Ready ),
    .C1(\SPI_Master_Inst.r_TX_DV ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_117_));
 sky130_fd_sc_hd__o21ai_2 _236_ (.A1(\SPI_Master_Inst.r_TX_Bit_Count[2] ),
    .A2(_115_),
    .B1(_117_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_046_));
 sky130_fd_sc_hd__dfrtp_2 _237_ (.CLK(i_Clk),
    .D(_004_),
    .RESET_B(i_Rst_L),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\r_TX_Count[0] ));
 sky130_fd_sc_hd__dfrtp_2 _238_ (.CLK(i_Clk),
    .D(_005_),
    .RESET_B(i_Rst_L),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\r_TX_Count[1] ));
 sky130_fd_sc_hd__dfxtp_2 _239_ (.CLK(i_Clk),
    .D(_006_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(o_RX_Count[0]));
 sky130_fd_sc_hd__dfxtp_2 _240_ (.CLK(i_Clk),
    .D(_007_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(o_RX_Count[1]));
 sky130_fd_sc_hd__dfrtp_2 _241_ (.CLK(i_Clk),
    .D(_008_),
    .RESET_B(i_Rst_L),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\SPI_Master_Inst.r_SPI_Clk_Edges[0] ));
 sky130_fd_sc_hd__dfrtp_2 _242_ (.CLK(i_Clk),
    .D(_009_),
    .RESET_B(i_Rst_L),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\SPI_Master_Inst.r_SPI_Clk_Edges[1] ));
 sky130_fd_sc_hd__dfrtp_2 _243_ (.CLK(i_Clk),
    .D(_010_),
    .RESET_B(i_Rst_L),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\SPI_Master_Inst.r_SPI_Clk_Edges[2] ));
 sky130_fd_sc_hd__dfrtp_2 _244_ (.CLK(i_Clk),
    .D(_011_),
    .RESET_B(i_Rst_L),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\SPI_Master_Inst.r_SPI_Clk_Edges[3] ));
 sky130_fd_sc_hd__dfrtp_2 _245_ (.CLK(i_Clk),
    .D(_012_),
    .RESET_B(i_Rst_L),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\SPI_Master_Inst.r_SPI_Clk_Edges[4] ));
 sky130_fd_sc_hd__dfstp_2 _246_ (.CLK(i_Clk),
    .D(_013_),
    .SET_B(i_Rst_L),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(o_SPI_CS[0]));
 sky130_fd_sc_hd__dfstp_2 _247_ (.CLK(i_Clk),
    .D(_014_),
    .SET_B(i_Rst_L),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(o_SPI_CS[1]));
 sky130_fd_sc_hd__dfstp_2 _248_ (.CLK(i_Clk),
    .D(_015_),
    .SET_B(i_Rst_L),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(o_SPI_CS[2]));
 sky130_fd_sc_hd__dfstp_2 _249_ (.CLK(i_Clk),
    .D(_016_),
    .SET_B(i_Rst_L),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(o_SPI_CS[3]));
 sky130_fd_sc_hd__dfrtp_2 _250_ (.CLK(i_Clk),
    .D(_017_),
    .RESET_B(i_Rst_L),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\r_SM_CS[0] ));
 sky130_fd_sc_hd__dfrtp_2 _251_ (.CLK(i_Clk),
    .D(_018_),
    .RESET_B(i_Rst_L),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\r_SM_CS[1] ));
 sky130_fd_sc_hd__dfstp_2 _252_ (.CLK(i_Clk),
    .D(_019_),
    .SET_B(i_Rst_L),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\r_CS_Inactive_Count[0] ));
 sky130_fd_sc_hd__dfrtp_2 _253_ (.CLK(i_Clk),
    .D(_020_),
    .RESET_B(i_Rst_L),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\r_CS_Inactive_Count[-1] ));
 sky130_fd_sc_hd__dfstp_2 _254_ (.CLK(i_Clk),
    .D(_021_),
    .SET_B(i_Rst_L),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\SPI_Master_Inst.r_RX_Bit_Count[0] ));
 sky130_fd_sc_hd__dfstp_2 _255_ (.CLK(i_Clk),
    .D(_022_),
    .SET_B(i_Rst_L),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\SPI_Master_Inst.r_RX_Bit_Count[1] ));
 sky130_fd_sc_hd__dfstp_2 _256_ (.CLK(i_Clk),
    .D(_023_),
    .SET_B(i_Rst_L),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\SPI_Master_Inst.r_RX_Bit_Count[2] ));
 sky130_fd_sc_hd__dfrtp_2 _257_ (.CLK(i_Clk),
    .D(i_TX_DV),
    .RESET_B(i_Rst_L),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\SPI_Master_Inst.r_TX_DV ));
 sky130_fd_sc_hd__dfrtp_2 _258_ (.CLK(i_Clk),
    .D(_001_),
    .RESET_B(i_Rst_L),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\SPI_Master_Inst.o_TX_Ready ));
 sky130_fd_sc_hd__dfrtp_2 _259_ (.CLK(i_Clk),
    .D(_024_),
    .RESET_B(i_Rst_L),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(o_RX_Byte[0]));
 sky130_fd_sc_hd__dfrtp_2 _260_ (.CLK(i_Clk),
    .D(_025_),
    .RESET_B(i_Rst_L),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(o_RX_Byte[1]));
 sky130_fd_sc_hd__dfrtp_2 _261_ (.CLK(i_Clk),
    .D(_026_),
    .RESET_B(i_Rst_L),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(o_RX_Byte[2]));
 sky130_fd_sc_hd__dfrtp_2 _262_ (.CLK(i_Clk),
    .D(_027_),
    .RESET_B(i_Rst_L),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(o_RX_Byte[3]));
 sky130_fd_sc_hd__dfrtp_2 _263_ (.CLK(i_Clk),
    .D(_028_),
    .RESET_B(i_Rst_L),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(o_RX_Byte[4]));
 sky130_fd_sc_hd__dfrtp_2 _264_ (.CLK(i_Clk),
    .D(_029_),
    .RESET_B(i_Rst_L),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(o_RX_Byte[5]));
 sky130_fd_sc_hd__dfrtp_2 _265_ (.CLK(i_Clk),
    .D(_030_),
    .RESET_B(i_Rst_L),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(o_RX_Byte[6]));
 sky130_fd_sc_hd__dfrtp_2 _266_ (.CLK(i_Clk),
    .D(_031_),
    .RESET_B(i_Rst_L),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(o_RX_Byte[7]));
 sky130_fd_sc_hd__dfrtp_2 _267_ (.CLK(i_Clk),
    .D(_000_),
    .RESET_B(i_Rst_L),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(o_RX_DV));
 sky130_fd_sc_hd__dfrtp_2 _268_ (.CLK(i_Clk),
    .D(_032_),
    .RESET_B(i_Rst_L),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\SPI_Master_Inst.r_TX_Byte[0] ));
 sky130_fd_sc_hd__dfrtp_2 _269_ (.CLK(i_Clk),
    .D(_033_),
    .RESET_B(i_Rst_L),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\SPI_Master_Inst.r_TX_Byte[1] ));
 sky130_fd_sc_hd__dfrtp_2 _270_ (.CLK(i_Clk),
    .D(_034_),
    .RESET_B(i_Rst_L),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\SPI_Master_Inst.r_TX_Byte[2] ));
 sky130_fd_sc_hd__dfrtp_2 _271_ (.CLK(i_Clk),
    .D(_035_),
    .RESET_B(i_Rst_L),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\SPI_Master_Inst.r_TX_Byte[3] ));
 sky130_fd_sc_hd__dfrtp_2 _272_ (.CLK(i_Clk),
    .D(_036_),
    .RESET_B(i_Rst_L),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\SPI_Master_Inst.r_TX_Byte[4] ));
 sky130_fd_sc_hd__dfrtp_2 _273_ (.CLK(i_Clk),
    .D(_037_),
    .RESET_B(i_Rst_L),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\SPI_Master_Inst.r_TX_Byte[5] ));
 sky130_fd_sc_hd__dfrtp_2 _274_ (.CLK(i_Clk),
    .D(_038_),
    .RESET_B(i_Rst_L),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\SPI_Master_Inst.r_TX_Byte[6] ));
 sky130_fd_sc_hd__dfrtp_2 _275_ (.CLK(i_Clk),
    .D(_039_),
    .RESET_B(i_Rst_L),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\SPI_Master_Inst.r_TX_Byte[7] ));
 sky130_fd_sc_hd__dfrtp_2 _276_ (.CLK(i_Clk),
    .D(\SPI_Master_Inst.r_SPI_Clk ),
    .RESET_B(i_Rst_L),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(o_SPI_Clk));
 sky130_fd_sc_hd__dfrtp_2 _277_ (.CLK(i_Clk),
    .D(_040_),
    .RESET_B(i_Rst_L),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\SPI_Master_Inst.r_SPI_Clk_Count[0] ));
 sky130_fd_sc_hd__dfrtp_2 _278_ (.CLK(i_Clk),
    .D(_041_),
    .RESET_B(i_Rst_L),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\SPI_Master_Inst.r_SPI_Clk_Count[1] ));
 sky130_fd_sc_hd__dfrtp_2 _279_ (.CLK(i_Clk),
    .D(_042_),
    .RESET_B(i_Rst_L),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(o_SPI_MOSI));
 sky130_fd_sc_hd__dfrtp_2 _280_ (.CLK(i_Clk),
    .D(_043_),
    .RESET_B(i_Rst_L),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\SPI_Master_Inst.r_SPI_Clk ));
 sky130_fd_sc_hd__dfstp_2 _281_ (.CLK(i_Clk),
    .D(_044_),
    .SET_B(i_Rst_L),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\SPI_Master_Inst.r_TX_Bit_Count[0] ));
 sky130_fd_sc_hd__dfstp_2 _282_ (.CLK(i_Clk),
    .D(_045_),
    .SET_B(i_Rst_L),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\SPI_Master_Inst.r_TX_Bit_Count[1] ));
 sky130_fd_sc_hd__dfstp_2 _283_ (.CLK(i_Clk),
    .D(_046_),
    .SET_B(i_Rst_L),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\SPI_Master_Inst.r_TX_Bit_Count[2] ));
 sky130_fd_sc_hd__dfrtp_2 _284_ (.CLK(i_Clk),
    .D(_002_),
    .RESET_B(i_Rst_L),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\SPI_Master_Inst.r_Leading_Edge ));
 sky130_fd_sc_hd__dfrtp_2 _285_ (.CLK(i_Clk),
    .D(_003_),
    .RESET_B(i_Rst_L),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\SPI_Master_Inst.r_Trailing_Edge ));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Right_0 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Right_1 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Right_2 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Right_3 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Right_4 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Right_5 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_6_Right_6 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_7_Right_7 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_8_Right_8 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_9_Right_9 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_10_Right_10 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_11_Right_11 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_12_Right_12 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_13_Right_13 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_14_Right_14 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_15_Right_15 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_16_Right_16 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_17_Right_17 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_18_Right_18 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_19_Right_19 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_20_Right_20 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_21_Right_21 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_22_Right_22 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_23_Right_23 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_24_Right_24 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Left_25 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Left_26 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Left_27 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Left_28 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Left_29 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Left_30 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_6_Left_31 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_7_Left_32 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_8_Left_33 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_9_Left_34 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_10_Left_35 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_11_Left_36 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_12_Left_37 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_13_Left_38 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_14_Left_39 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_15_Left_40 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_16_Left_41 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_17_Left_42 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_18_Left_43 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_19_Left_44 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_20_Left_45 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_21_Left_46 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_22_Left_47 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_23_Left_48 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_24_Left_49 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_50 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_51 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_52 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_53 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_54 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_55 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_56 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_57 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_58 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_59 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_60 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_61 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_62 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_63 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_64 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_65 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_66 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_67 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_68 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_69 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_70 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_71 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_72 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_73 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_74 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_75 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_76 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_77 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_78 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_79 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_80 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_81 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_82 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_83 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_84 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_85 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_86 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_87 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_88 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_89 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_90 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_91 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_92 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_93 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_94 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_95 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_96 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_97 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_98 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_99 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_19_100 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_19_101 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_102 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_103 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_104 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_21_105 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_21_106 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_107 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_108 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_109 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_23_110 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_23_111 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_24_112 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_24_113 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_24_114 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_24_115 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_24_116 (.VGND(VGND),
    .VPWR(VPWR));
endmodule
