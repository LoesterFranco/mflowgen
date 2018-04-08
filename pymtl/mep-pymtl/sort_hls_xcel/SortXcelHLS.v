/* verilator lint_off WIDTH */

//===============================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2015.2
// Copyright (C) 2015 Xilinx Inc. All rights reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="SortXcelHLS,hls_ip_2015_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020clg484-1,HLS_INPUT_CLOCK=5.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=4.100000,HLS_SYN_LAT=-1,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=421,HLS_SYN_LUT=692}" *)

module SortXcelHLS (
        ap_clk,
        ap_rst,
        xcelreq_V_bits_V,
        xcelreq_V_bits_V_ap_vld,
        xcelreq_V_bits_V_ap_ack,
        xcelresp_V_bits_V,
        xcelresp_V_bits_V_ap_vld,
        xcelresp_V_bits_V_ap_ack,
        memreq_V_bits_V,
        memreq_V_bits_V_ap_vld,
        memreq_V_bits_V_ap_ack,
        memresp_V_bits_V,
        memresp_V_bits_V_ap_vld,
        memresp_V_bits_V_ap_ack
);

parameter    ap_const_logic_1 = 1'b1;
parameter    ap_const_logic_0 = 1'b0;
parameter    ap_ST_st1_fsm_0 = 9'b1;
parameter    ap_ST_st2_fsm_1 = 9'b10;
parameter    ap_ST_st3_fsm_2 = 9'b100;
parameter    ap_ST_st4_fsm_3 = 9'b1000;
parameter    ap_ST_st5_fsm_4 = 9'b10000;
parameter    ap_ST_pp0_stg0_fsm_5 = 9'b100000;
parameter    ap_ST_pp0_stg1_fsm_6 = 9'b1000000;
parameter    ap_ST_st9_fsm_7 = 9'b10000000;
parameter    ap_ST_st10_fsm_8 = 9'b100000000;
parameter    ap_const_lv32_1 = 32'b1;
parameter    ap_const_lv1_1 = 1'b1;
parameter    ap_const_lv1_0 = 1'b0;
parameter    ap_const_lv32_2 = 32'b10;
parameter    ap_const_lv32_3 = 32'b11;
parameter    ap_const_lv32_4 = 32'b100;
parameter    ap_const_lv32_5 = 32'b101;
parameter    ap_const_lv32_6 = 32'b110;
parameter    ap_const_lv31_0 = 31'b0000000000000000000000000000000;
parameter    ap_const_lv32_8 = 32'b1000;
parameter    ap_const_lv32_7 = 32'b111;
parameter    ap_const_lv32_30 = 32'b110000;
parameter    ap_const_lv32_B = 32'b1011;
parameter    ap_const_lv32_2A = 32'b101010;
parameter    ap_const_lv32_2B = 32'b101011;
parameter    ap_const_lv32_2C = 32'b101100;
parameter    ap_const_lv2_1 = 2'b1;
parameter    ap_const_lv2_0 = 2'b00;
parameter    ap_const_lv32_31 = 32'b110001;
parameter    ap_const_lv32_38 = 32'b111000;
parameter    ap_const_lv33_100000000 = 33'b100000000000000000000000000000000;
parameter    ap_const_lv32_FFFFFFFC = 32'b11111111111111111111111111111100;
parameter    ap_const_lv31_1 = 31'b1;
parameter    ap_const_lv11_0 = 11'b00000000000;
parameter    ap_const_lv34_0 = 34'b0000000000000000000000000000000000;
parameter    ap_const_lv11_100 = 11'b100000000;
parameter    ap_true = 1'b1;

input   ap_clk;
input   ap_rst;
input  [56:0] xcelreq_V_bits_V;
input   xcelreq_V_bits_V_ap_vld;
output   xcelreq_V_bits_V_ap_ack;
output  [51:0] xcelresp_V_bits_V;
output   xcelresp_V_bits_V_ap_vld;
input   xcelresp_V_bits_V_ap_ack;
output  [76:0] memreq_V_bits_V;
output   memreq_V_bits_V_ap_vld;
input   memreq_V_bits_V_ap_ack;
input  [44:0] memresp_V_bits_V;
input   memresp_V_bits_V_ap_vld;
output   memresp_V_bits_V_ap_ack;

reg xcelreq_V_bits_V_ap_ack;
reg[51:0] xcelresp_V_bits_V;
reg xcelresp_V_bits_V_ap_vld;
reg[76:0] memreq_V_bits_V;
reg memreq_V_bits_V_ap_vld;
reg memresp_V_bits_V_ap_ack;
reg   [31:0] p_Repl2_4_reg_159;
reg   [31:0] val_assign_3_reg_169;
reg   [56:0] p_Val2_1_reg_444;
(* fsm_encoding = "none" *) reg   [8:0] ap_CS_fsm = 9'b1;
reg    ap_sig_cseq_ST_st2_fsm_1;
reg    ap_sig_bdd_40;
wire   [0:0] tmp_3_fu_180_p3;
reg    ap_sig_ioackin_xcelresp_V_bits_V_ap_ack;
wire   [31:0] XcelWrapper_3_m_xregs_V16_1_i_fu_228_p3;
wire   [31:0] XcelWrapper_3_m_xregs_V2_1_i_fu_244_p3;
wire  signed [31:0] tmp4_fu_277_p2;
reg  signed [31:0] tmp4_reg_463;
wire  signed [31:0] p_Repl2_5_fu_289_p2;
reg  signed [31:0] p_Repl2_5_reg_469;
reg    ap_sig_cseq_ST_st3_fsm_2;
reg    ap_sig_bdd_69;
wire   [30:0] i_fu_304_p2;
reg   [30:0] i_reg_477;
reg    ap_sig_cseq_ST_st4_fsm_3;
reg    ap_sig_bdd_78;
wire   [0:0] tmp_fu_298_p2;
reg    ap_sig_ioackin_memreq_V_bits_V_ap_ack;
wire   [31:0] prev_fu_344_p1;
reg    ap_sig_cseq_ST_st5_fsm_4;
reg    ap_sig_bdd_97;
wire   [0:0] exitcond_i_fu_348_p2;
reg   [0:0] exitcond_i_reg_487;
reg    ap_sig_cseq_ST_pp0_stg0_fsm_5;
reg    ap_sig_bdd_109;
reg    ap_reg_ppiten_pp0_it0 = 1'b0;
reg    ap_sig_bdd_118;
reg    ap_reg_ppiten_pp0_it1 = 1'b0;
wire  signed [31:0] p_Repl2_8_fu_377_p2;
reg  signed [31:0] p_Repl2_8_reg_491;
wire   [31:0] j_fu_382_p2;
reg   [31:0] j_reg_496;
wire   [31:0] prev_1_fu_424_p3;
reg   [31:0] prev_1_reg_501;
reg    ap_sig_cseq_ST_pp0_stg1_fsm_6;
reg    ap_sig_bdd_140;
reg   [31:0] p_Repl2_2_reg_124;
reg   [31:0] n_reg_136;
reg   [30:0] i_0_i_reg_148;
reg    ap_sig_cseq_ST_st10_fsm_8;
reg    ap_sig_bdd_168;
reg   [31:0] val_assign_3_phi_fu_173_p4;
wire   [51:0] p_Result_s_fu_266_p4;
wire   [51:0] p_Result_5_fu_333_p4;
reg    ap_reg_ioackin_xcelresp_V_bits_V_ap_ack = 1'b0;
wire   [76:0] p_Result_1_fu_310_p4;
wire   [76:0] p_Result_2_fu_366_p4;
wire   [76:0] p_Result_3_fu_406_p5;
wire   [76:0] p_Result_4_fu_432_p5;
reg    ap_sig_cseq_ST_st9_fsm_7;
reg    ap_sig_bdd_212;
reg    ap_reg_ioackin_memreq_V_bits_V_ap_ack = 1'b0;
wire   [1:0] p_Result_t_i_fu_198_p4;
wire   [0:0] sel_tmp_i_fu_208_p2;
wire   [31:0] p_Result_2_i_fu_188_p4;
wire   [0:0] sel_tmp6_i_fu_214_p2;
wire   [31:0] sel_tmp9_i_fu_220_p3;
wire   [31:0] sel_tmp21_i_fu_236_p3;
wire   [7:0] p_Repl2_1_fu_252_p4;
wire   [10:0] p_Repl2_s_fu_262_p1;
wire   [31:0] tmp_5_fu_283_p2;
wire   [31:0] i_0_i_cast_fu_294_p1;
wire   [8:0] tmp_2_fu_324_p4;
wire   [10:0] p_Repl2_3_fu_321_p1;
wire   [31:0] tmp_9_fu_354_p2;
wire   [31:0] p_Repl2_6_fu_360_p2;
wire   [31:0] curr_fu_388_p1;
wire   [0:0] tmp_6_fu_392_p2;
wire   [31:0] p_Repl2_7_fu_398_p3;
wire   [0:0] tmp_s_fu_418_p2;
reg   [8:0] ap_NS_fsm;




/// the current state (ap_CS_fsm) of the state machine. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_CS_fsm
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_st1_fsm_0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

/// ap_reg_ioackin_memreq_V_bits_V_ap_ack assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_reg_ioackin_memreq_V_bits_V_ap_ack
    if (ap_rst == 1'b1) begin
        ap_reg_ioackin_memreq_V_bits_V_ap_ack <= ap_const_logic_0;
    end else begin
        if ((((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_5) & (ap_const_lv1_0 == exitcond_i_fu_348_p2) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~(((ap_const_logic_0 == ap_sig_ioackin_memreq_V_bits_V_ap_ack) & (ap_const_lv1_0 == exitcond_i_fu_348_p2) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0)) | (ap_sig_bdd_118 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (ap_const_lv1_0 == exitcond_i_reg_487) & (ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg1_fsm_6) & ~((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (ap_sig_bdd_118 | ((ap_const_logic_0 == ap_sig_ioackin_memreq_V_bits_V_ap_ack) & (ap_const_lv1_0 == exitcond_i_reg_487))))) | ((ap_const_logic_1 == ap_sig_cseq_ST_st4_fsm_3) & ~(ap_const_lv1_0 == tmp_fu_298_p2) & ~((~(ap_const_lv1_0 == tmp_fu_298_p2) & (ap_const_logic_0 == ap_sig_ioackin_memreq_V_bits_V_ap_ack)) | ((ap_const_logic_0 == ap_sig_ioackin_xcelresp_V_bits_V_ap_ack) & (ap_const_lv1_0 == tmp_fu_298_p2)))) | ((ap_const_logic_1 == ap_sig_cseq_ST_st9_fsm_7) & ~(ap_const_logic_0 == ap_sig_ioackin_memreq_V_bits_V_ap_ack)))) begin
            ap_reg_ioackin_memreq_V_bits_V_ap_ack <= ap_const_logic_0;
        end else if ((((ap_const_logic_1 == ap_sig_cseq_ST_st4_fsm_3) & ~(ap_const_lv1_0 == tmp_fu_298_p2) & (ap_const_logic_1 == memreq_V_bits_V_ap_ack)) | ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_5) & (ap_const_lv1_0 == exitcond_i_fu_348_p2) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~(ap_sig_bdd_118 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) & (ap_const_logic_1 == memreq_V_bits_V_ap_ack)) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (ap_const_lv1_0 == exitcond_i_reg_487) & (ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg1_fsm_6) & ~((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_118) & (ap_const_logic_1 == memreq_V_bits_V_ap_ack)) | ((ap_const_logic_1 == ap_sig_cseq_ST_st9_fsm_7) & (ap_const_logic_1 == memreq_V_bits_V_ap_ack)))) begin
            ap_reg_ioackin_memreq_V_bits_V_ap_ack <= ap_const_logic_1;
        end
    end
end

/// ap_reg_ioackin_xcelresp_V_bits_V_ap_ack assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_reg_ioackin_xcelresp_V_bits_V_ap_ack
    if (ap_rst == 1'b1) begin
        ap_reg_ioackin_xcelresp_V_bits_V_ap_ack <= ap_const_logic_0;
    end else begin
        if ((((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) & ~(tmp_3_fu_180_p3 == ap_const_lv1_0) & ~((xcelreq_V_bits_V_ap_vld == ap_const_logic_0) | (~(tmp_3_fu_180_p3 == ap_const_lv1_0) & (ap_const_logic_0 == ap_sig_ioackin_xcelresp_V_bits_V_ap_ack)))) | ((ap_const_logic_1 == ap_sig_cseq_ST_st4_fsm_3) & (ap_const_lv1_0 == tmp_fu_298_p2) & ~((~(ap_const_lv1_0 == tmp_fu_298_p2) & (ap_const_logic_0 == ap_sig_ioackin_memreq_V_bits_V_ap_ack)) | ((ap_const_logic_0 == ap_sig_ioackin_xcelresp_V_bits_V_ap_ack) & (ap_const_lv1_0 == tmp_fu_298_p2)))))) begin
            ap_reg_ioackin_xcelresp_V_bits_V_ap_ack <= ap_const_logic_0;
        end else if ((((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) & ~(tmp_3_fu_180_p3 == ap_const_lv1_0) & ~(xcelreq_V_bits_V_ap_vld == ap_const_logic_0) & (ap_const_logic_1 == xcelresp_V_bits_V_ap_ack)) | ((ap_const_logic_1 == ap_sig_cseq_ST_st4_fsm_3) & (ap_const_lv1_0 == tmp_fu_298_p2) & (ap_const_logic_1 == xcelresp_V_bits_V_ap_ack)))) begin
            ap_reg_ioackin_xcelresp_V_bits_V_ap_ack <= ap_const_logic_1;
        end
    end
end

/// ap_reg_ppiten_pp0_it0 assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_reg_ppiten_pp0_it0
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it0 <= ap_const_logic_0;
    end else begin
        if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_5) & ~(((ap_const_logic_0 == ap_sig_ioackin_memreq_V_bits_V_ap_ack) & (ap_const_lv1_0 == exitcond_i_fu_348_p2) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0)) | (ap_sig_bdd_118 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))) & ~(ap_const_lv1_0 == exitcond_i_fu_348_p2))) begin
            ap_reg_ppiten_pp0_it0 <= ap_const_logic_0;
        end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st5_fsm_4) & ~(memresp_V_bits_V_ap_vld == ap_const_logic_0))) begin
            ap_reg_ppiten_pp0_it0 <= ap_const_logic_1;
        end
    end
end

/// ap_reg_ppiten_pp0_it1 assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_reg_ppiten_pp0_it1
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it1 <= ap_const_logic_0;
    end else begin
        if (((ap_const_lv1_0 == exitcond_i_reg_487) & (ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg1_fsm_6) & ~((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (ap_sig_bdd_118 | ((ap_const_logic_0 == ap_sig_ioackin_memreq_V_bits_V_ap_ack) & (ap_const_lv1_0 == exitcond_i_reg_487)))))) begin
            ap_reg_ppiten_pp0_it1 <= ap_const_logic_1;
        end else if ((((ap_const_logic_1 == ap_sig_cseq_ST_st5_fsm_4) & ~(memresp_V_bits_V_ap_vld == ap_const_logic_0)) | ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg1_fsm_6) & ~((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (ap_sig_bdd_118 | ((ap_const_logic_0 == ap_sig_ioackin_memreq_V_bits_V_ap_ack) & (ap_const_lv1_0 == exitcond_i_reg_487)))) & ~(ap_const_lv1_0 == exitcond_i_reg_487)))) begin
            ap_reg_ppiten_pp0_it1 <= ap_const_logic_0;
        end
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if ((~(memresp_V_bits_V_ap_vld == ap_const_logic_0) & (ap_const_logic_1 == ap_sig_cseq_ST_st10_fsm_8))) begin
        i_0_i_reg_148 <= i_reg_477;
    end else if ((ap_const_logic_1 == ap_sig_cseq_ST_st3_fsm_2)) begin
        i_0_i_reg_148 <= ap_const_lv31_0;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_5) & (ap_const_lv1_0 == exitcond_i_reg_487) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~(((ap_const_logic_0 == ap_sig_ioackin_memreq_V_bits_V_ap_ack) & (ap_const_lv1_0 == exitcond_i_fu_348_p2) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0)) | (ap_sig_bdd_118 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        p_Repl2_4_reg_159 <= prev_1_reg_501;
    end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st5_fsm_4) & ~(memresp_V_bits_V_ap_vld == ap_const_logic_0))) begin
        p_Repl2_4_reg_159 <= prev_fu_344_p1;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_5) & (ap_const_lv1_0 == exitcond_i_reg_487) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~(((ap_const_logic_0 == ap_sig_ioackin_memreq_V_bits_V_ap_ack) & (ap_const_lv1_0 == exitcond_i_fu_348_p2) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0)) | (ap_sig_bdd_118 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        val_assign_3_reg_169 <= j_reg_496;
    end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st5_fsm_4) & ~(memresp_V_bits_V_ap_vld == ap_const_logic_0))) begin
        val_assign_3_reg_169 <= ap_const_lv32_1;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_5) & ~(((ap_const_logic_0 == ap_sig_ioackin_memreq_V_bits_V_ap_ack) & (ap_const_lv1_0 == exitcond_i_fu_348_p2) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0)) | (ap_sig_bdd_118 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        exitcond_i_reg_487 <= exitcond_i_fu_348_p2;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st4_fsm_3) & ~((~(ap_const_lv1_0 == tmp_fu_298_p2) & (ap_const_logic_0 == ap_sig_ioackin_memreq_V_bits_V_ap_ack)) | ((ap_const_logic_0 == ap_sig_ioackin_xcelresp_V_bits_V_ap_ack) & (ap_const_lv1_0 == tmp_fu_298_p2))))) begin
        i_reg_477 <= i_fu_304_p2;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_5) & (ap_const_lv1_0 == exitcond_i_fu_348_p2) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~(((ap_const_logic_0 == ap_sig_ioackin_memreq_V_bits_V_ap_ack) & (ap_const_lv1_0 == exitcond_i_fu_348_p2) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0)) | (ap_sig_bdd_118 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        j_reg_496 <= j_fu_382_p2;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) & ~(tmp_3_fu_180_p3 == ap_const_lv1_0) & ~((xcelreq_V_bits_V_ap_vld == ap_const_logic_0) | (~(tmp_3_fu_180_p3 == ap_const_lv1_0) & (ap_const_logic_0 == ap_sig_ioackin_xcelresp_V_bits_V_ap_ack))))) begin
        n_reg_136 <= XcelWrapper_3_m_xregs_V2_1_i_fu_244_p3;
        p_Repl2_2_reg_124 <= XcelWrapper_3_m_xregs_V16_1_i_fu_228_p3;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st3_fsm_2)) begin
        p_Repl2_5_reg_469 <= p_Repl2_5_fu_289_p2;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_5) & (ap_const_lv1_0 == exitcond_i_fu_348_p2) & ~(((ap_const_logic_0 == ap_sig_ioackin_memreq_V_bits_V_ap_ack) & (ap_const_lv1_0 == exitcond_i_fu_348_p2) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0)) | (ap_sig_bdd_118 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        p_Repl2_8_reg_491 <= p_Repl2_8_fu_377_p2;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) & ~((xcelreq_V_bits_V_ap_vld == ap_const_logic_0) | (~(tmp_3_fu_180_p3 == ap_const_lv1_0) & (ap_const_logic_0 == ap_sig_ioackin_xcelresp_V_bits_V_ap_ack))))) begin
        p_Val2_1_reg_444 <= xcelreq_V_bits_V;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (ap_const_lv1_0 == exitcond_i_reg_487) & (ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg1_fsm_6) & ~((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (ap_sig_bdd_118 | ((ap_const_logic_0 == ap_sig_ioackin_memreq_V_bits_V_ap_ack) & (ap_const_lv1_0 == exitcond_i_reg_487)))))) begin
        prev_1_reg_501 <= prev_1_fu_424_p3;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) & (tmp_3_fu_180_p3 == ap_const_lv1_0) & ~((xcelreq_V_bits_V_ap_vld == ap_const_logic_0) | (~(tmp_3_fu_180_p3 == ap_const_lv1_0) & (ap_const_logic_0 == ap_sig_ioackin_xcelresp_V_bits_V_ap_ack))))) begin
        tmp4_reg_463 <= tmp4_fu_277_p2;
    end
end

/// ap_sig_cseq_ST_pp0_stg0_fsm_5 assign process. ///
always @ (ap_sig_bdd_109)
begin
    if (ap_sig_bdd_109) begin
        ap_sig_cseq_ST_pp0_stg0_fsm_5 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_pp0_stg0_fsm_5 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_pp0_stg1_fsm_6 assign process. ///
always @ (ap_sig_bdd_140)
begin
    if (ap_sig_bdd_140) begin
        ap_sig_cseq_ST_pp0_stg1_fsm_6 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_pp0_stg1_fsm_6 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st10_fsm_8 assign process. ///
always @ (ap_sig_bdd_168)
begin
    if (ap_sig_bdd_168) begin
        ap_sig_cseq_ST_st10_fsm_8 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st10_fsm_8 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st2_fsm_1 assign process. ///
always @ (ap_sig_bdd_40)
begin
    if (ap_sig_bdd_40) begin
        ap_sig_cseq_ST_st2_fsm_1 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st2_fsm_1 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st3_fsm_2 assign process. ///
always @ (ap_sig_bdd_69)
begin
    if (ap_sig_bdd_69) begin
        ap_sig_cseq_ST_st3_fsm_2 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st3_fsm_2 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st4_fsm_3 assign process. ///
always @ (ap_sig_bdd_78)
begin
    if (ap_sig_bdd_78) begin
        ap_sig_cseq_ST_st4_fsm_3 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st4_fsm_3 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st5_fsm_4 assign process. ///
always @ (ap_sig_bdd_97)
begin
    if (ap_sig_bdd_97) begin
        ap_sig_cseq_ST_st5_fsm_4 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st5_fsm_4 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st9_fsm_7 assign process. ///
always @ (ap_sig_bdd_212)
begin
    if (ap_sig_bdd_212) begin
        ap_sig_cseq_ST_st9_fsm_7 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st9_fsm_7 = ap_const_logic_0;
    end
end

/// ap_sig_ioackin_memreq_V_bits_V_ap_ack assign process. ///
always @ (memreq_V_bits_V_ap_ack or ap_reg_ioackin_memreq_V_bits_V_ap_ack)
begin
    if ((ap_const_logic_0 == ap_reg_ioackin_memreq_V_bits_V_ap_ack)) begin
        ap_sig_ioackin_memreq_V_bits_V_ap_ack = memreq_V_bits_V_ap_ack;
    end else begin
        ap_sig_ioackin_memreq_V_bits_V_ap_ack = ap_const_logic_1;
    end
end

/// ap_sig_ioackin_xcelresp_V_bits_V_ap_ack assign process. ///
always @ (xcelresp_V_bits_V_ap_ack or ap_reg_ioackin_xcelresp_V_bits_V_ap_ack)
begin
    if ((ap_const_logic_0 == ap_reg_ioackin_xcelresp_V_bits_V_ap_ack)) begin
        ap_sig_ioackin_xcelresp_V_bits_V_ap_ack = xcelresp_V_bits_V_ap_ack;
    end else begin
        ap_sig_ioackin_xcelresp_V_bits_V_ap_ack = ap_const_logic_1;
    end
end

/// memreq_V_bits_V assign process. ///
always @ (ap_sig_cseq_ST_st4_fsm_3 or tmp_fu_298_p2 or exitcond_i_fu_348_p2 or exitcond_i_reg_487 or ap_sig_cseq_ST_pp0_stg0_fsm_5 or ap_reg_ppiten_pp0_it0 or ap_sig_bdd_118 or ap_reg_ppiten_pp0_it1 or ap_sig_cseq_ST_pp0_stg1_fsm_6 or p_Result_1_fu_310_p4 or p_Result_2_fu_366_p4 or p_Result_3_fu_406_p5 or p_Result_4_fu_432_p5 or ap_sig_cseq_ST_st9_fsm_7)
begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st9_fsm_7)) begin
        memreq_V_bits_V = p_Result_4_fu_432_p5;
    end else if (((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (ap_const_lv1_0 == exitcond_i_reg_487) & (ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg1_fsm_6) & ~((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_118))) begin
        memreq_V_bits_V = p_Result_3_fu_406_p5;
    end else if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_5) & (ap_const_lv1_0 == exitcond_i_fu_348_p2) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~(ap_sig_bdd_118 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))) begin
        memreq_V_bits_V = p_Result_2_fu_366_p4;
    end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st4_fsm_3) & ~(ap_const_lv1_0 == tmp_fu_298_p2))) begin
        memreq_V_bits_V = p_Result_1_fu_310_p4;
    end else begin
        memreq_V_bits_V = 'bx;
    end
end

/// memreq_V_bits_V_ap_vld assign process. ///
always @ (ap_sig_cseq_ST_st4_fsm_3 or tmp_fu_298_p2 or exitcond_i_fu_348_p2 or exitcond_i_reg_487 or ap_sig_cseq_ST_pp0_stg0_fsm_5 or ap_reg_ppiten_pp0_it0 or ap_sig_bdd_118 or ap_reg_ppiten_pp0_it1 or ap_sig_cseq_ST_pp0_stg1_fsm_6 or ap_sig_cseq_ST_st9_fsm_7 or ap_reg_ioackin_memreq_V_bits_V_ap_ack)
begin
    if ((((ap_const_logic_1 == ap_sig_cseq_ST_st4_fsm_3) & ~(ap_const_lv1_0 == tmp_fu_298_p2) & (ap_const_logic_0 == ap_reg_ioackin_memreq_V_bits_V_ap_ack)) | ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_5) & (ap_const_lv1_0 == exitcond_i_fu_348_p2) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~(ap_sig_bdd_118 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) & (ap_const_logic_0 == ap_reg_ioackin_memreq_V_bits_V_ap_ack)) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (ap_const_lv1_0 == exitcond_i_reg_487) & (ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg1_fsm_6) & ~((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_118) & (ap_const_logic_0 == ap_reg_ioackin_memreq_V_bits_V_ap_ack)) | ((ap_const_logic_1 == ap_sig_cseq_ST_st9_fsm_7) & (ap_const_logic_0 == ap_reg_ioackin_memreq_V_bits_V_ap_ack)))) begin
        memreq_V_bits_V_ap_vld = ap_const_logic_1;
    end else begin
        memreq_V_bits_V_ap_vld = ap_const_logic_0;
    end
end

/// memresp_V_bits_V_ap_ack assign process. ///
always @ (memresp_V_bits_V_ap_vld or ap_sig_ioackin_memreq_V_bits_V_ap_ack or ap_sig_cseq_ST_st5_fsm_4 or exitcond_i_fu_348_p2 or exitcond_i_reg_487 or ap_sig_cseq_ST_pp0_stg0_fsm_5 or ap_reg_ppiten_pp0_it0 or ap_sig_bdd_118 or ap_reg_ppiten_pp0_it1 or ap_sig_cseq_ST_pp0_stg1_fsm_6 or ap_sig_cseq_ST_st10_fsm_8)
begin
    if ((((ap_const_logic_1 == ap_sig_cseq_ST_st5_fsm_4) & ~(memresp_V_bits_V_ap_vld == ap_const_logic_0)) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (ap_const_lv1_0 == exitcond_i_reg_487) & (ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg1_fsm_6) & ~((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (ap_sig_bdd_118 | ((ap_const_logic_0 == ap_sig_ioackin_memreq_V_bits_V_ap_ack) & (ap_const_lv1_0 == exitcond_i_reg_487))))) | (~(memresp_V_bits_V_ap_vld == ap_const_logic_0) & (ap_const_logic_1 == ap_sig_cseq_ST_st10_fsm_8)) | ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_5) & (ap_const_lv1_0 == exitcond_i_reg_487) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~(((ap_const_logic_0 == ap_sig_ioackin_memreq_V_bits_V_ap_ack) & (ap_const_lv1_0 == exitcond_i_fu_348_p2) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0)) | (ap_sig_bdd_118 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))))) begin
        memresp_V_bits_V_ap_ack = ap_const_logic_1;
    end else begin
        memresp_V_bits_V_ap_ack = ap_const_logic_0;
    end
end

/// val_assign_3_phi_fu_173_p4 assign process. ///
always @ (val_assign_3_reg_169 or exitcond_i_reg_487 or ap_sig_cseq_ST_pp0_stg0_fsm_5 or ap_reg_ppiten_pp0_it1 or j_reg_496)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_5) & (ap_const_lv1_0 == exitcond_i_reg_487) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))) begin
        val_assign_3_phi_fu_173_p4 = j_reg_496;
    end else begin
        val_assign_3_phi_fu_173_p4 = val_assign_3_reg_169;
    end
end

/// xcelreq_V_bits_V_ap_ack assign process. ///
always @ (xcelreq_V_bits_V_ap_vld or ap_sig_cseq_ST_st2_fsm_1 or tmp_3_fu_180_p3 or ap_sig_ioackin_xcelresp_V_bits_V_ap_ack)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) & ~((xcelreq_V_bits_V_ap_vld == ap_const_logic_0) | (~(tmp_3_fu_180_p3 == ap_const_lv1_0) & (ap_const_logic_0 == ap_sig_ioackin_xcelresp_V_bits_V_ap_ack))))) begin
        xcelreq_V_bits_V_ap_ack = ap_const_logic_1;
    end else begin
        xcelreq_V_bits_V_ap_ack = ap_const_logic_0;
    end
end

/// xcelresp_V_bits_V assign process. ///
always @ (xcelreq_V_bits_V_ap_vld or ap_sig_cseq_ST_st2_fsm_1 or tmp_3_fu_180_p3 or ap_sig_cseq_ST_st4_fsm_3 or tmp_fu_298_p2 or p_Result_s_fu_266_p4 or p_Result_5_fu_333_p4)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st4_fsm_3) & (ap_const_lv1_0 == tmp_fu_298_p2))) begin
        xcelresp_V_bits_V = p_Result_5_fu_333_p4;
    end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) & ~(tmp_3_fu_180_p3 == ap_const_lv1_0) & ~(xcelreq_V_bits_V_ap_vld == ap_const_logic_0))) begin
        xcelresp_V_bits_V = p_Result_s_fu_266_p4;
    end else begin
        xcelresp_V_bits_V = 'bx;
    end
end

/// xcelresp_V_bits_V_ap_vld assign process. ///
always @ (xcelreq_V_bits_V_ap_vld or ap_sig_cseq_ST_st2_fsm_1 or tmp_3_fu_180_p3 or ap_sig_cseq_ST_st4_fsm_3 or tmp_fu_298_p2 or ap_reg_ioackin_xcelresp_V_bits_V_ap_ack)
begin
    if ((((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) & ~(tmp_3_fu_180_p3 == ap_const_lv1_0) & ~(xcelreq_V_bits_V_ap_vld == ap_const_logic_0) & (ap_const_logic_0 == ap_reg_ioackin_xcelresp_V_bits_V_ap_ack)) | ((ap_const_logic_1 == ap_sig_cseq_ST_st4_fsm_3) & (ap_const_lv1_0 == tmp_fu_298_p2) & (ap_const_logic_0 == ap_reg_ioackin_xcelresp_V_bits_V_ap_ack)))) begin
        xcelresp_V_bits_V_ap_vld = ap_const_logic_1;
    end else begin
        xcelresp_V_bits_V_ap_vld = ap_const_logic_0;
    end
end
/// the next state (ap_NS_fsm) of the state machine. ///
always @ (xcelreq_V_bits_V_ap_vld or memresp_V_bits_V_ap_vld or ap_CS_fsm or tmp_3_fu_180_p3 or ap_sig_ioackin_xcelresp_V_bits_V_ap_ack or tmp_fu_298_p2 or ap_sig_ioackin_memreq_V_bits_V_ap_ack or exitcond_i_fu_348_p2 or exitcond_i_reg_487 or ap_reg_ppiten_pp0_it0 or ap_sig_bdd_118 or ap_reg_ppiten_pp0_it1)
begin
    case (ap_CS_fsm)
        ap_ST_st1_fsm_0 : 
        begin
            ap_NS_fsm = ap_ST_st2_fsm_1;
        end
        ap_ST_st2_fsm_1 : 
        begin
            if ((~(tmp_3_fu_180_p3 == ap_const_lv1_0) & ~((xcelreq_V_bits_V_ap_vld == ap_const_logic_0) | (~(tmp_3_fu_180_p3 == ap_const_lv1_0) & (ap_const_logic_0 == ap_sig_ioackin_xcelresp_V_bits_V_ap_ack))))) begin
                ap_NS_fsm = ap_ST_st2_fsm_1;
            end else if (((tmp_3_fu_180_p3 == ap_const_lv1_0) & ~((xcelreq_V_bits_V_ap_vld == ap_const_logic_0) | (~(tmp_3_fu_180_p3 == ap_const_lv1_0) & (ap_const_logic_0 == ap_sig_ioackin_xcelresp_V_bits_V_ap_ack))))) begin
                ap_NS_fsm = ap_ST_st3_fsm_2;
            end else begin
                ap_NS_fsm = ap_ST_st2_fsm_1;
            end
        end
        ap_ST_st3_fsm_2 : 
        begin
            ap_NS_fsm = ap_ST_st4_fsm_3;
        end
        ap_ST_st4_fsm_3 : 
        begin
            if (((ap_const_lv1_0 == tmp_fu_298_p2) & ~((~(ap_const_lv1_0 == tmp_fu_298_p2) & (ap_const_logic_0 == ap_sig_ioackin_memreq_V_bits_V_ap_ack)) | ((ap_const_logic_0 == ap_sig_ioackin_xcelresp_V_bits_V_ap_ack) & (ap_const_lv1_0 == tmp_fu_298_p2))))) begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end else if ((~(ap_const_lv1_0 == tmp_fu_298_p2) & ~((~(ap_const_lv1_0 == tmp_fu_298_p2) & (ap_const_logic_0 == ap_sig_ioackin_memreq_V_bits_V_ap_ack)) | ((ap_const_logic_0 == ap_sig_ioackin_xcelresp_V_bits_V_ap_ack) & (ap_const_lv1_0 == tmp_fu_298_p2))))) begin
                ap_NS_fsm = ap_ST_st5_fsm_4;
            end else begin
                ap_NS_fsm = ap_ST_st4_fsm_3;
            end
        end
        ap_ST_st5_fsm_4 : 
        begin
            if (~(memresp_V_bits_V_ap_vld == ap_const_logic_0)) begin
                ap_NS_fsm = ap_ST_pp0_stg0_fsm_5;
            end else begin
                ap_NS_fsm = ap_ST_st5_fsm_4;
            end
        end
        ap_ST_pp0_stg0_fsm_5 : 
        begin
            if ((~(((ap_const_logic_0 == ap_sig_ioackin_memreq_V_bits_V_ap_ack) & (ap_const_lv1_0 == exitcond_i_fu_348_p2) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0)) | (ap_sig_bdd_118 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))) & ~((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~(((ap_const_logic_0 == ap_sig_ioackin_memreq_V_bits_V_ap_ack) & (ap_const_lv1_0 == exitcond_i_fu_348_p2) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0)) | (ap_sig_bdd_118 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))) & ~(ap_const_lv1_0 == exitcond_i_fu_348_p2)))) begin
                ap_NS_fsm = ap_ST_pp0_stg1_fsm_6;
            end else if (((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~(((ap_const_logic_0 == ap_sig_ioackin_memreq_V_bits_V_ap_ack) & (ap_const_lv1_0 == exitcond_i_fu_348_p2) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0)) | (ap_sig_bdd_118 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))) & ~(ap_const_lv1_0 == exitcond_i_fu_348_p2))) begin
                ap_NS_fsm = ap_ST_st9_fsm_7;
            end else begin
                ap_NS_fsm = ap_ST_pp0_stg0_fsm_5;
            end
        end
        ap_ST_pp0_stg1_fsm_6 : 
        begin
            if (~((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (ap_sig_bdd_118 | ((ap_const_logic_0 == ap_sig_ioackin_memreq_V_bits_V_ap_ack) & (ap_const_lv1_0 == exitcond_i_reg_487))))) begin
                ap_NS_fsm = ap_ST_pp0_stg0_fsm_5;
            end else begin
                ap_NS_fsm = ap_ST_pp0_stg1_fsm_6;
            end
        end
        ap_ST_st9_fsm_7 : 
        begin
            if (~(ap_const_logic_0 == ap_sig_ioackin_memreq_V_bits_V_ap_ack)) begin
                ap_NS_fsm = ap_ST_st10_fsm_8;
            end else begin
                ap_NS_fsm = ap_ST_st9_fsm_7;
            end
        end
        ap_ST_st10_fsm_8 : 
        begin
            if (~(memresp_V_bits_V_ap_vld == ap_const_logic_0)) begin
                ap_NS_fsm = ap_ST_st4_fsm_3;
            end else begin
                ap_NS_fsm = ap_ST_st10_fsm_8;
            end
        end
        default : 
        begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign XcelWrapper_3_m_xregs_V16_1_i_fu_228_p3 = ((sel_tmp6_i_fu_214_p2[0:0]==1'b1)? p_Repl2_2_reg_124: sel_tmp9_i_fu_220_p3);
assign XcelWrapper_3_m_xregs_V2_1_i_fu_244_p3 = ((sel_tmp6_i_fu_214_p2[0:0]==1'b1)? n_reg_136: sel_tmp21_i_fu_236_p3);

/// ap_sig_bdd_109 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_109 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_5]);
end

/// ap_sig_bdd_118 assign process. ///
always @ (memresp_V_bits_V_ap_vld or exitcond_i_reg_487)
begin
    ap_sig_bdd_118 = ((memresp_V_bits_V_ap_vld == ap_const_logic_0) & (ap_const_lv1_0 == exitcond_i_reg_487));
end

/// ap_sig_bdd_140 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_140 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_6]);
end

/// ap_sig_bdd_168 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_168 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_8]);
end

/// ap_sig_bdd_212 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_212 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_7]);
end

/// ap_sig_bdd_40 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_40 = (ap_CS_fsm[ap_const_lv32_1] == ap_const_lv1_1);
end

/// ap_sig_bdd_69 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_69 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_2]);
end

/// ap_sig_bdd_78 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_78 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_3]);
end

/// ap_sig_bdd_97 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_97 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_4]);
end
assign curr_fu_388_p1 = memresp_V_bits_V[31:0];
assign exitcond_i_fu_348_p2 = (val_assign_3_phi_fu_173_p4 == n_reg_136? 1'b1: 1'b0);
assign i_0_i_cast_fu_294_p1 = i_0_i_reg_148;
assign i_fu_304_p2 = (i_0_i_reg_148 + ap_const_lv31_1);
assign j_fu_382_p2 = (ap_const_lv32_1 + val_assign_3_phi_fu_173_p4);
assign p_Repl2_1_fu_252_p4 = {{xcelreq_V_bits_V[ap_const_lv32_38 : ap_const_lv32_31]}};
assign p_Repl2_3_fu_321_p1 = p_Val2_1_reg_444[10:0];
assign p_Repl2_5_fu_289_p2 = ($signed(tmp4_reg_463) + $signed(tmp_5_fu_283_p2));
assign p_Repl2_6_fu_360_p2 = (tmp_9_fu_354_p2 + p_Repl2_2_reg_124);
assign p_Repl2_7_fu_398_p3 = ((tmp_6_fu_392_p2[0:0]==1'b1)? curr_fu_388_p1: p_Repl2_4_reg_159);
assign p_Repl2_8_fu_377_p2 = ($signed(tmp4_reg_463) + $signed(tmp_9_fu_354_p2));
assign p_Repl2_s_fu_262_p1 = xcelreq_V_bits_V[10:0];
assign p_Result_1_fu_310_p4 = {{{{ap_const_lv11_0}, {p_Repl2_2_reg_124}}}, {ap_const_lv34_0}};
assign p_Result_2_fu_366_p4 = {{{{ap_const_lv11_0}, {p_Repl2_6_fu_360_p2}}}, {ap_const_lv34_0}};
assign p_Result_2_i_fu_188_p4 = {{xcelreq_V_bits_V[ap_const_lv32_2A : ap_const_lv32_B]}};
assign p_Result_3_fu_406_p5 = {{{{{{ap_const_lv11_100}, {p_Repl2_8_reg_491}}}, {ap_const_lv2_0}}}, {p_Repl2_7_fu_398_p3}};
assign p_Result_4_fu_432_p5 = {{{{{{ap_const_lv11_100}, {p_Repl2_5_reg_469}}}, {ap_const_lv2_0}}}, {p_Repl2_4_reg_159}};
assign p_Result_5_fu_333_p4 = {{{tmp_2_fu_324_p4}, {ap_const_lv32_1}}, {p_Repl2_3_fu_321_p1}};
assign p_Result_s_fu_266_p4 = {{{p_Repl2_1_fu_252_p4}, {ap_const_lv33_100000000}}, {p_Repl2_s_fu_262_p1}};
assign p_Result_t_i_fu_198_p4 = {{xcelreq_V_bits_V[ap_const_lv32_2C : ap_const_lv32_2B]}};
assign prev_1_fu_424_p3 = ((tmp_s_fu_418_p2[0:0]==1'b1)? curr_fu_388_p1: p_Repl2_4_reg_159);
assign prev_fu_344_p1 = memresp_V_bits_V[31:0];
assign sel_tmp21_i_fu_236_p3 = ((sel_tmp_i_fu_208_p2[0:0]==1'b1)? n_reg_136: p_Result_2_i_fu_188_p4);
assign sel_tmp6_i_fu_214_p2 = (p_Result_t_i_fu_198_p4 == ap_const_lv2_0? 1'b1: 1'b0);
assign sel_tmp9_i_fu_220_p3 = ((sel_tmp_i_fu_208_p2[0:0]==1'b1)? p_Result_2_i_fu_188_p4: p_Repl2_2_reg_124);
assign sel_tmp_i_fu_208_p2 = (p_Result_t_i_fu_198_p4 == ap_const_lv2_1? 1'b1: 1'b0);
assign tmp4_fu_277_p2 = ($signed(ap_const_lv32_FFFFFFFC) + $signed(p_Repl2_2_reg_124));
assign tmp_2_fu_324_p4 = {{p_Val2_1_reg_444[ap_const_lv32_38 : ap_const_lv32_30]}};
assign tmp_3_fu_180_p3 = xcelreq_V_bits_V[ap_const_lv32_30];
assign tmp_5_fu_283_p2 = n_reg_136 << ap_const_lv32_2;
assign tmp_6_fu_392_p2 = ($signed(curr_fu_388_p1) < $signed(p_Repl2_4_reg_159)? 1'b1: 1'b0);
assign tmp_9_fu_354_p2 = val_assign_3_phi_fu_173_p4 << ap_const_lv32_2;
assign tmp_fu_298_p2 = ($signed(i_0_i_cast_fu_294_p1) < $signed(n_reg_136)? 1'b1: 1'b0);
assign tmp_s_fu_418_p2 = ($signed(p_Repl2_4_reg_159) < $signed(curr_fu_388_p1)? 1'b1: 1'b0);


endmodule //SortXcelHLS


/* lint_on */