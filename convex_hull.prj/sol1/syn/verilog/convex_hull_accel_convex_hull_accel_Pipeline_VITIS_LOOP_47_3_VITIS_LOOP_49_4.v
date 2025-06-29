// ==============================================================
// Generated by Vitis HLS v2023.2
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps 

module convex_hull_accel_convex_hull_accel_Pipeline_VITIS_LOOP_47_3_VITIS_LOOP_49_4 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        in_img_data_dout,
        in_img_data_empty_n,
        in_img_data_read,
        bound,
        empty,
        pts_y_3_address0,
        pts_y_3_ce0,
        pts_y_3_we0,
        pts_y_3_d0,
        pts_y_2_address0,
        pts_y_2_ce0,
        pts_y_2_we0,
        pts_y_2_d0,
        pts_y_1_address0,
        pts_y_1_ce0,
        pts_y_1_we0,
        pts_y_1_d0,
        pts_y_address0,
        pts_y_ce0,
        pts_y_we0,
        pts_y_d0,
        pts_x_3_address0,
        pts_x_3_ce0,
        pts_x_3_we0,
        pts_x_3_d0,
        pts_x_2_address0,
        pts_x_2_ce0,
        pts_x_2_we0,
        pts_x_2_d0,
        pts_x_1_address0,
        pts_x_1_ce0,
        pts_x_1_we0,
        pts_x_1_d0,
        pts_x_address0,
        pts_x_ce0,
        pts_x_we0,
        pts_x_d0,
        count_out,
        count_out_ap_vld
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [7:0] in_img_data_dout;
input   in_img_data_empty_n;
output   in_img_data_read;
input  [15:0] bound;
input  [7:0] empty;
output  [3:0] pts_y_3_address0;
output   pts_y_3_ce0;
output   pts_y_3_we0;
output  [31:0] pts_y_3_d0;
output  [3:0] pts_y_2_address0;
output   pts_y_2_ce0;
output   pts_y_2_we0;
output  [31:0] pts_y_2_d0;
output  [3:0] pts_y_1_address0;
output   pts_y_1_ce0;
output   pts_y_1_we0;
output  [31:0] pts_y_1_d0;
output  [3:0] pts_y_address0;
output   pts_y_ce0;
output   pts_y_we0;
output  [31:0] pts_y_d0;
output  [3:0] pts_x_3_address0;
output   pts_x_3_ce0;
output   pts_x_3_we0;
output  [31:0] pts_x_3_d0;
output  [3:0] pts_x_2_address0;
output   pts_x_2_ce0;
output   pts_x_2_we0;
output  [31:0] pts_x_2_d0;
output  [3:0] pts_x_1_address0;
output   pts_x_1_ce0;
output   pts_x_1_we0;
output  [31:0] pts_x_1_d0;
output  [3:0] pts_x_address0;
output   pts_x_ce0;
output   pts_x_we0;
output  [31:0] pts_x_d0;
output  [31:0] count_out;
output   count_out_ap_vld;

reg ap_idle;
reg in_img_data_read;
reg pts_y_3_ce0;
reg pts_y_3_we0;
reg pts_y_2_ce0;
reg pts_y_2_we0;
reg pts_y_1_ce0;
reg pts_y_1_we0;
reg pts_y_ce0;
reg pts_y_we0;
reg pts_x_3_ce0;
reg pts_x_3_we0;
reg pts_x_2_ce0;
reg pts_x_2_we0;
reg pts_x_1_ce0;
reg pts_x_1_we0;
reg pts_x_ce0;
reg pts_x_we0;
reg count_out_ap_vld;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
reg   [0:0] icmp_ln47_reg_439;
reg    ap_block_state2_pp0_stage0_iter1;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln47_fu_256_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    in_img_data_blk_n;
wire    ap_block_pp0_stage0;
reg    ap_block_pp0_stage0_11001;
reg   [0:0] icmp_ln47_reg_439_pp0_iter1_reg;
wire   [0:0] icmp_ln53_fu_273_p2;
reg   [0:0] icmp_ln53_reg_443;
wire   [63:0] zext_ln49_fu_346_p1;
wire   [0:0] and_ln53_fu_374_p2;
reg   [7:0] c_fu_88;
wire   [7:0] c_1_fu_390_p2;
wire    ap_loop_init;
reg   [7:0] r_fu_92;
wire   [7:0] select_ln47_1_fu_308_p3;
reg   [15:0] indvar_flatten9_fu_96;
wire   [15:0] add_ln47_fu_262_p2;
reg   [15:0] ap_sig_allocacmp_indvar_flatten9_load;
reg   [31:0] count_fu_100;
wire   [31:0] count_3_fu_379_p2;
reg    ap_block_pp0_stage0_01001;
wire   [1:0] trunc_ln49_fu_332_p1;
wire   [31:0] zext_ln49_1_fu_324_p1;
wire   [31:0] zext_ln47_fu_316_p1;
wire   [0:0] icmp_ln49_fu_289_p2;
wire   [7:0] add_ln47_1_fu_302_p2;
wire   [7:0] select_ln47_fu_294_p3;
wire   [3:0] lshr_ln_fu_336_p4;
wire   [25:0] tmp_1_fu_358_p4;
wire   [0:0] icmp_ln53_1_fu_368_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
reg    ap_condition_451;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 c_fu_88 = 8'd0;
#0 r_fu_92 = 8'd0;
#0 indvar_flatten9_fu_96 = 16'd0;
#0 count_fu_100 = 32'd0;
#0 ap_done_reg = 1'b0;
end

convex_hull_accel_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),
    .ap_loop_exit_done(ap_done_int),
    .ap_continue_int(ap_continue_int),
    .ap_done_int(ap_done_int)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            c_fu_88 <= 8'd0;
        end else if (((icmp_ln47_reg_439_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
            c_fu_88 <= c_1_fu_390_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            count_fu_100 <= 32'd0;
        end else if ((1'b1 == ap_condition_451)) begin
            count_fu_100 <= count_3_fu_379_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln47_fu_256_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten9_fu_96 <= add_ln47_fu_262_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten9_fu_96 <= 16'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            r_fu_92 <= 8'd0;
        end else if (((icmp_ln47_reg_439_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
            r_fu_92 <= select_ln47_1_fu_308_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        icmp_ln47_reg_439 <= icmp_ln47_fu_256_p2;
        icmp_ln47_reg_439_pp0_iter1_reg <= icmp_ln47_reg_439;
        icmp_ln53_reg_443 <= icmp_ln53_fu_273_p2;
    end
end

always @ (*) begin
    if (((icmp_ln47_fu_256_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten9_load = 16'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten9_load = indvar_flatten9_fu_96;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln47_reg_439_pp0_iter1_reg == 1'd1))) begin
        count_out_ap_vld = 1'b1;
    end else begin
        count_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (icmp_ln47_reg_439 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        in_img_data_blk_n = in_img_data_empty_n;
    end else begin
        in_img_data_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln47_reg_439 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        in_img_data_read = 1'b1;
    end else begin
        in_img_data_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        pts_x_1_ce0 = 1'b1;
    end else begin
        pts_x_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'd1 == and_ln53_fu_374_p2) & (trunc_ln49_fu_332_p1 == 2'd1) & (icmp_ln47_reg_439_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        pts_x_1_we0 = 1'b1;
    end else begin
        pts_x_1_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        pts_x_2_ce0 = 1'b1;
    end else begin
        pts_x_2_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'd1 == and_ln53_fu_374_p2) & (trunc_ln49_fu_332_p1 == 2'd2) & (icmp_ln47_reg_439_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        pts_x_2_we0 = 1'b1;
    end else begin
        pts_x_2_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        pts_x_3_ce0 = 1'b1;
    end else begin
        pts_x_3_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'd1 == and_ln53_fu_374_p2) & (trunc_ln49_fu_332_p1 == 2'd3) & (icmp_ln47_reg_439_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        pts_x_3_we0 = 1'b1;
    end else begin
        pts_x_3_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        pts_x_ce0 = 1'b1;
    end else begin
        pts_x_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'd1 == and_ln53_fu_374_p2) & (trunc_ln49_fu_332_p1 == 2'd0) & (icmp_ln47_reg_439_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        pts_x_we0 = 1'b1;
    end else begin
        pts_x_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        pts_y_1_ce0 = 1'b1;
    end else begin
        pts_y_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'd1 == and_ln53_fu_374_p2) & (trunc_ln49_fu_332_p1 == 2'd1) & (icmp_ln47_reg_439_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        pts_y_1_we0 = 1'b1;
    end else begin
        pts_y_1_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        pts_y_2_ce0 = 1'b1;
    end else begin
        pts_y_2_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'd1 == and_ln53_fu_374_p2) & (trunc_ln49_fu_332_p1 == 2'd2) & (icmp_ln47_reg_439_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        pts_y_2_we0 = 1'b1;
    end else begin
        pts_y_2_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        pts_y_3_ce0 = 1'b1;
    end else begin
        pts_y_3_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'd1 == and_ln53_fu_374_p2) & (trunc_ln49_fu_332_p1 == 2'd3) & (icmp_ln47_reg_439_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        pts_y_3_we0 = 1'b1;
    end else begin
        pts_y_3_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        pts_y_ce0 = 1'b1;
    end else begin
        pts_y_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'd1 == and_ln53_fu_374_p2) & (trunc_ln49_fu_332_p1 == 2'd0) & (icmp_ln47_reg_439_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        pts_y_we0 = 1'b1;
    end else begin
        pts_y_we0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln47_1_fu_302_p2 = (r_fu_92 + 8'd1);

assign add_ln47_fu_262_p2 = (ap_sig_allocacmp_indvar_flatten9_load + 16'd1);

assign and_ln53_fu_374_p2 = (icmp_ln53_reg_443 & icmp_ln53_1_fu_368_p2);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_block_state2_pp0_stage0_iter1));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_block_state2_pp0_stage0_iter1));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_block_state2_pp0_stage0_iter1));
end

always @ (*) begin
    ap_block_state2_pp0_stage0_iter1 = ((icmp_ln47_reg_439 == 1'd0) & (in_img_data_empty_n == 1'b0));
end

always @ (*) begin
    ap_condition_451 = ((1'd1 == and_ln53_fu_374_p2) & (icmp_ln47_reg_439_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign c_1_fu_390_p2 = (select_ln47_fu_294_p3 + 8'd1);

assign count_3_fu_379_p2 = (count_fu_100 + 32'd1);

assign count_out = count_fu_100;

assign icmp_ln47_fu_256_p2 = ((ap_sig_allocacmp_indvar_flatten9_load == bound) ? 1'b1 : 1'b0);

assign icmp_ln49_fu_289_p2 = ((c_fu_88 == empty) ? 1'b1 : 1'b0);

assign icmp_ln53_1_fu_368_p2 = (($signed(tmp_1_fu_358_p4) < $signed(26'd1)) ? 1'b1 : 1'b0);

assign icmp_ln53_fu_273_p2 = ((in_img_data_dout != 8'd0) ? 1'b1 : 1'b0);

assign lshr_ln_fu_336_p4 = {{count_fu_100[5:2]}};

assign pts_x_1_address0 = zext_ln49_fu_346_p1;

assign pts_x_1_d0 = zext_ln49_1_fu_324_p1;

assign pts_x_2_address0 = zext_ln49_fu_346_p1;

assign pts_x_2_d0 = zext_ln49_1_fu_324_p1;

assign pts_x_3_address0 = zext_ln49_fu_346_p1;

assign pts_x_3_d0 = zext_ln49_1_fu_324_p1;

assign pts_x_address0 = zext_ln49_fu_346_p1;

assign pts_x_d0 = zext_ln49_1_fu_324_p1;

assign pts_y_1_address0 = zext_ln49_fu_346_p1;

assign pts_y_1_d0 = zext_ln47_fu_316_p1;

assign pts_y_2_address0 = zext_ln49_fu_346_p1;

assign pts_y_2_d0 = zext_ln47_fu_316_p1;

assign pts_y_3_address0 = zext_ln49_fu_346_p1;

assign pts_y_3_d0 = zext_ln47_fu_316_p1;

assign pts_y_address0 = zext_ln49_fu_346_p1;

assign pts_y_d0 = zext_ln47_fu_316_p1;

assign select_ln47_1_fu_308_p3 = ((icmp_ln49_fu_289_p2[0:0] == 1'b1) ? add_ln47_1_fu_302_p2 : r_fu_92);

assign select_ln47_fu_294_p3 = ((icmp_ln49_fu_289_p2[0:0] == 1'b1) ? 8'd0 : c_fu_88);

assign tmp_1_fu_358_p4 = {{count_fu_100[31:6]}};

assign trunc_ln49_fu_332_p1 = count_fu_100[1:0];

assign zext_ln47_fu_316_p1 = select_ln47_1_fu_308_p3;

assign zext_ln49_1_fu_324_p1 = select_ln47_fu_294_p3;

assign zext_ln49_fu_346_p1 = lshr_ln_fu_336_p4;

endmodule //convex_hull_accel_convex_hull_accel_Pipeline_VITIS_LOOP_47_3_VITIS_LOOP_49_4
