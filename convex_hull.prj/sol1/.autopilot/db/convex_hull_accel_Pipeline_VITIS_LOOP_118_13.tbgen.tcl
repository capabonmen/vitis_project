set moduleName convex_hull_accel_Pipeline_VITIS_LOOP_118_13
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {convex_hull_accel_Pipeline_VITIS_LOOP_118_13}
set C_modelType { void 0 }
set C_modelArgList {
	{ zext_ln118 int 31 regular  }
	{ k_reload int 32 regular  }
	{ hull_x int 32 regular {array 16 { 2 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 1 1 }  }
	{ hull_x_1 int 32 regular {array 16 { 2 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 1 1 }  }
	{ hull_x_2 int 32 regular {array 16 { 2 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 1 1 }  }
	{ hull_x_3 int 32 regular {array 16 { 2 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 1 1 }  }
	{ hull_y int 32 regular {array 16 { 2 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 1 1 }  }
	{ hull_y_1 int 32 regular {array 16 { 2 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 1 1 }  }
	{ hull_y_2 int 32 regular {array 16 { 2 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 1 1 }  }
	{ hull_y_3 int 32 regular {array 16 { 2 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 1 1 }  }
	{ pts_x int 32 regular {array 16 { 1 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 1 1 }  }
	{ pts_x_1 int 32 regular {array 16 { 1 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 1 1 }  }
	{ pts_x_2 int 32 regular {array 16 { 1 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 1 1 }  }
	{ pts_x_3 int 32 regular {array 16 { 1 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 1 1 }  }
	{ pts_y int 32 regular {array 16 { 1 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 1 1 }  }
	{ pts_y_1 int 32 regular {array 16 { 1 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 1 1 }  }
	{ pts_y_2 int 32 regular {array 16 { 1 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 1 1 }  }
	{ pts_y_3 int 32 regular {array 16 { 1 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 1 1 }  }
	{ t int 32 regular  }
	{ k_1_out int 32 regular {pointer 1}  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "zext_ln118", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "k_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "hull_x", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "hull_x_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "hull_x_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "hull_x_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "hull_y", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "hull_y_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "hull_y_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "hull_y_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "pts_x", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "pts_x_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "pts_x_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "pts_x_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "pts_y", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "pts_y_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "pts_y_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "pts_y_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "t", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "k_1_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 83
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ zext_ln118 sc_in sc_lv 31 signal 0 } 
	{ k_reload sc_in sc_lv 32 signal 1 } 
	{ hull_x_address0 sc_out sc_lv 4 signal 2 } 
	{ hull_x_ce0 sc_out sc_logic 1 signal 2 } 
	{ hull_x_we0 sc_out sc_logic 1 signal 2 } 
	{ hull_x_d0 sc_out sc_lv 32 signal 2 } 
	{ hull_x_q0 sc_in sc_lv 32 signal 2 } 
	{ hull_x_1_address0 sc_out sc_lv 4 signal 3 } 
	{ hull_x_1_ce0 sc_out sc_logic 1 signal 3 } 
	{ hull_x_1_we0 sc_out sc_logic 1 signal 3 } 
	{ hull_x_1_d0 sc_out sc_lv 32 signal 3 } 
	{ hull_x_1_q0 sc_in sc_lv 32 signal 3 } 
	{ hull_x_2_address0 sc_out sc_lv 4 signal 4 } 
	{ hull_x_2_ce0 sc_out sc_logic 1 signal 4 } 
	{ hull_x_2_we0 sc_out sc_logic 1 signal 4 } 
	{ hull_x_2_d0 sc_out sc_lv 32 signal 4 } 
	{ hull_x_2_q0 sc_in sc_lv 32 signal 4 } 
	{ hull_x_3_address0 sc_out sc_lv 4 signal 5 } 
	{ hull_x_3_ce0 sc_out sc_logic 1 signal 5 } 
	{ hull_x_3_we0 sc_out sc_logic 1 signal 5 } 
	{ hull_x_3_d0 sc_out sc_lv 32 signal 5 } 
	{ hull_x_3_q0 sc_in sc_lv 32 signal 5 } 
	{ hull_y_address0 sc_out sc_lv 4 signal 6 } 
	{ hull_y_ce0 sc_out sc_logic 1 signal 6 } 
	{ hull_y_we0 sc_out sc_logic 1 signal 6 } 
	{ hull_y_d0 sc_out sc_lv 32 signal 6 } 
	{ hull_y_q0 sc_in sc_lv 32 signal 6 } 
	{ hull_y_1_address0 sc_out sc_lv 4 signal 7 } 
	{ hull_y_1_ce0 sc_out sc_logic 1 signal 7 } 
	{ hull_y_1_we0 sc_out sc_logic 1 signal 7 } 
	{ hull_y_1_d0 sc_out sc_lv 32 signal 7 } 
	{ hull_y_1_q0 sc_in sc_lv 32 signal 7 } 
	{ hull_y_2_address0 sc_out sc_lv 4 signal 8 } 
	{ hull_y_2_ce0 sc_out sc_logic 1 signal 8 } 
	{ hull_y_2_we0 sc_out sc_logic 1 signal 8 } 
	{ hull_y_2_d0 sc_out sc_lv 32 signal 8 } 
	{ hull_y_2_q0 sc_in sc_lv 32 signal 8 } 
	{ hull_y_3_address0 sc_out sc_lv 4 signal 9 } 
	{ hull_y_3_ce0 sc_out sc_logic 1 signal 9 } 
	{ hull_y_3_we0 sc_out sc_logic 1 signal 9 } 
	{ hull_y_3_d0 sc_out sc_lv 32 signal 9 } 
	{ hull_y_3_q0 sc_in sc_lv 32 signal 9 } 
	{ pts_x_address0 sc_out sc_lv 4 signal 10 } 
	{ pts_x_ce0 sc_out sc_logic 1 signal 10 } 
	{ pts_x_q0 sc_in sc_lv 32 signal 10 } 
	{ pts_x_1_address0 sc_out sc_lv 4 signal 11 } 
	{ pts_x_1_ce0 sc_out sc_logic 1 signal 11 } 
	{ pts_x_1_q0 sc_in sc_lv 32 signal 11 } 
	{ pts_x_2_address0 sc_out sc_lv 4 signal 12 } 
	{ pts_x_2_ce0 sc_out sc_logic 1 signal 12 } 
	{ pts_x_2_q0 sc_in sc_lv 32 signal 12 } 
	{ pts_x_3_address0 sc_out sc_lv 4 signal 13 } 
	{ pts_x_3_ce0 sc_out sc_logic 1 signal 13 } 
	{ pts_x_3_q0 sc_in sc_lv 32 signal 13 } 
	{ pts_y_address0 sc_out sc_lv 4 signal 14 } 
	{ pts_y_ce0 sc_out sc_logic 1 signal 14 } 
	{ pts_y_q0 sc_in sc_lv 32 signal 14 } 
	{ pts_y_1_address0 sc_out sc_lv 4 signal 15 } 
	{ pts_y_1_ce0 sc_out sc_logic 1 signal 15 } 
	{ pts_y_1_q0 sc_in sc_lv 32 signal 15 } 
	{ pts_y_2_address0 sc_out sc_lv 4 signal 16 } 
	{ pts_y_2_ce0 sc_out sc_logic 1 signal 16 } 
	{ pts_y_2_q0 sc_in sc_lv 32 signal 16 } 
	{ pts_y_3_address0 sc_out sc_lv 4 signal 17 } 
	{ pts_y_3_ce0 sc_out sc_logic 1 signal 17 } 
	{ pts_y_3_q0 sc_in sc_lv 32 signal 17 } 
	{ t sc_in sc_lv 32 signal 18 } 
	{ k_1_out sc_out sc_lv 32 signal 19 } 
	{ k_1_out_ap_vld sc_out sc_logic 1 outvld 19 } 
	{ grp_cross_r_fu_1481_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_cross_r_fu_1481_p_din2 sc_out sc_lv 32 signal -1 } 
	{ grp_cross_r_fu_1481_p_din3 sc_out sc_lv 32 signal -1 } 
	{ grp_cross_r_fu_1481_p_din4 sc_out sc_lv 32 signal -1 } 
	{ grp_cross_r_fu_1481_p_din5 sc_out sc_lv 32 signal -1 } 
	{ grp_cross_r_fu_1481_p_din6 sc_out sc_lv 32 signal -1 } 
	{ grp_cross_r_fu_1481_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_cross_r_fu_1481_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "zext_ln118", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "zext_ln118", "role": "default" }} , 
 	{ "name": "k_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "k_reload", "role": "default" }} , 
 	{ "name": "hull_x_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "hull_x", "role": "address0" }} , 
 	{ "name": "hull_x_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hull_x", "role": "ce0" }} , 
 	{ "name": "hull_x_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hull_x", "role": "we0" }} , 
 	{ "name": "hull_x_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "hull_x", "role": "d0" }} , 
 	{ "name": "hull_x_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "hull_x", "role": "q0" }} , 
 	{ "name": "hull_x_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "hull_x_1", "role": "address0" }} , 
 	{ "name": "hull_x_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hull_x_1", "role": "ce0" }} , 
 	{ "name": "hull_x_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hull_x_1", "role": "we0" }} , 
 	{ "name": "hull_x_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "hull_x_1", "role": "d0" }} , 
 	{ "name": "hull_x_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "hull_x_1", "role": "q0" }} , 
 	{ "name": "hull_x_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "hull_x_2", "role": "address0" }} , 
 	{ "name": "hull_x_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hull_x_2", "role": "ce0" }} , 
 	{ "name": "hull_x_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hull_x_2", "role": "we0" }} , 
 	{ "name": "hull_x_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "hull_x_2", "role": "d0" }} , 
 	{ "name": "hull_x_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "hull_x_2", "role": "q0" }} , 
 	{ "name": "hull_x_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "hull_x_3", "role": "address0" }} , 
 	{ "name": "hull_x_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hull_x_3", "role": "ce0" }} , 
 	{ "name": "hull_x_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hull_x_3", "role": "we0" }} , 
 	{ "name": "hull_x_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "hull_x_3", "role": "d0" }} , 
 	{ "name": "hull_x_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "hull_x_3", "role": "q0" }} , 
 	{ "name": "hull_y_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "hull_y", "role": "address0" }} , 
 	{ "name": "hull_y_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hull_y", "role": "ce0" }} , 
 	{ "name": "hull_y_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hull_y", "role": "we0" }} , 
 	{ "name": "hull_y_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "hull_y", "role": "d0" }} , 
 	{ "name": "hull_y_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "hull_y", "role": "q0" }} , 
 	{ "name": "hull_y_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "hull_y_1", "role": "address0" }} , 
 	{ "name": "hull_y_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hull_y_1", "role": "ce0" }} , 
 	{ "name": "hull_y_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hull_y_1", "role": "we0" }} , 
 	{ "name": "hull_y_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "hull_y_1", "role": "d0" }} , 
 	{ "name": "hull_y_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "hull_y_1", "role": "q0" }} , 
 	{ "name": "hull_y_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "hull_y_2", "role": "address0" }} , 
 	{ "name": "hull_y_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hull_y_2", "role": "ce0" }} , 
 	{ "name": "hull_y_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hull_y_2", "role": "we0" }} , 
 	{ "name": "hull_y_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "hull_y_2", "role": "d0" }} , 
 	{ "name": "hull_y_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "hull_y_2", "role": "q0" }} , 
 	{ "name": "hull_y_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "hull_y_3", "role": "address0" }} , 
 	{ "name": "hull_y_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hull_y_3", "role": "ce0" }} , 
 	{ "name": "hull_y_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hull_y_3", "role": "we0" }} , 
 	{ "name": "hull_y_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "hull_y_3", "role": "d0" }} , 
 	{ "name": "hull_y_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "hull_y_3", "role": "q0" }} , 
 	{ "name": "pts_x_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "pts_x", "role": "address0" }} , 
 	{ "name": "pts_x_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pts_x", "role": "ce0" }} , 
 	{ "name": "pts_x_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pts_x", "role": "q0" }} , 
 	{ "name": "pts_x_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "pts_x_1", "role": "address0" }} , 
 	{ "name": "pts_x_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pts_x_1", "role": "ce0" }} , 
 	{ "name": "pts_x_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pts_x_1", "role": "q0" }} , 
 	{ "name": "pts_x_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "pts_x_2", "role": "address0" }} , 
 	{ "name": "pts_x_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pts_x_2", "role": "ce0" }} , 
 	{ "name": "pts_x_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pts_x_2", "role": "q0" }} , 
 	{ "name": "pts_x_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "pts_x_3", "role": "address0" }} , 
 	{ "name": "pts_x_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pts_x_3", "role": "ce0" }} , 
 	{ "name": "pts_x_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pts_x_3", "role": "q0" }} , 
 	{ "name": "pts_y_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "pts_y", "role": "address0" }} , 
 	{ "name": "pts_y_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pts_y", "role": "ce0" }} , 
 	{ "name": "pts_y_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pts_y", "role": "q0" }} , 
 	{ "name": "pts_y_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "pts_y_1", "role": "address0" }} , 
 	{ "name": "pts_y_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pts_y_1", "role": "ce0" }} , 
 	{ "name": "pts_y_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pts_y_1", "role": "q0" }} , 
 	{ "name": "pts_y_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "pts_y_2", "role": "address0" }} , 
 	{ "name": "pts_y_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pts_y_2", "role": "ce0" }} , 
 	{ "name": "pts_y_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pts_y_2", "role": "q0" }} , 
 	{ "name": "pts_y_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "pts_y_3", "role": "address0" }} , 
 	{ "name": "pts_y_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pts_y_3", "role": "ce0" }} , 
 	{ "name": "pts_y_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pts_y_3", "role": "q0" }} , 
 	{ "name": "t", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "t", "role": "default" }} , 
 	{ "name": "k_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "k_1_out", "role": "default" }} , 
 	{ "name": "k_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "k_1_out", "role": "ap_vld" }} , 
 	{ "name": "grp_cross_r_fu_1481_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_cross_r_fu_1481_p_din1", "role": "default" }} , 
 	{ "name": "grp_cross_r_fu_1481_p_din2", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_cross_r_fu_1481_p_din2", "role": "default" }} , 
 	{ "name": "grp_cross_r_fu_1481_p_din3", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_cross_r_fu_1481_p_din3", "role": "default" }} , 
 	{ "name": "grp_cross_r_fu_1481_p_din4", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_cross_r_fu_1481_p_din4", "role": "default" }} , 
 	{ "name": "grp_cross_r_fu_1481_p_din5", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_cross_r_fu_1481_p_din5", "role": "default" }} , 
 	{ "name": "grp_cross_r_fu_1481_p_din6", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_cross_r_fu_1481_p_din6", "role": "default" }} , 
 	{ "name": "grp_cross_r_fu_1481_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_cross_r_fu_1481_p_dout0", "role": "default" }} , 
 	{ "name": "grp_cross_r_fu_1481_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_cross_r_fu_1481_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "convex_hull_accel_Pipeline_VITIS_LOOP_118_13",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "28929",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "zext_ln118", "Type" : "None", "Direction" : "I"},
			{"Name" : "k_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "hull_x", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "hull_x_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "hull_x_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "hull_x_3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "hull_y", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "hull_y_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "hull_y_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "hull_y_3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "pts_x", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pts_x_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pts_x_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pts_x_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pts_y", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pts_y_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pts_y_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pts_y_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "t", "Type" : "None", "Direction" : "I"},
			{"Name" : "k_1_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_118_13", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "1413", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state1413"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_2_32_1_1_U47", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_2_32_1_1_U48", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	convex_hull_accel_Pipeline_VITIS_LOOP_118_13 {
		zext_ln118 {Type I LastRead 0 FirstWrite -1}
		k_reload {Type I LastRead 0 FirstWrite -1}
		hull_x {Type IO LastRead 443 FirstWrite 452}
		hull_x_1 {Type IO LastRead 443 FirstWrite 452}
		hull_x_2 {Type IO LastRead 443 FirstWrite 452}
		hull_x_3 {Type IO LastRead 443 FirstWrite 452}
		hull_y {Type IO LastRead 443 FirstWrite 452}
		hull_y_1 {Type IO LastRead 443 FirstWrite 452}
		hull_y_2 {Type IO LastRead 443 FirstWrite 452}
		hull_y_3 {Type IO LastRead 443 FirstWrite 452}
		pts_x {Type I LastRead 451 FirstWrite -1}
		pts_x_1 {Type I LastRead 451 FirstWrite -1}
		pts_x_2 {Type I LastRead 451 FirstWrite -1}
		pts_x_3 {Type I LastRead 451 FirstWrite -1}
		pts_y {Type I LastRead 451 FirstWrite -1}
		pts_y_1 {Type I LastRead 451 FirstWrite -1}
		pts_y_2 {Type I LastRead 451 FirstWrite -1}
		pts_y_3 {Type I LastRead 451 FirstWrite -1}
		t {Type I LastRead 0 FirstWrite -1}
		k_1_out {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "5", "Max" : "28929"}
	, {"Name" : "Interval", "Min" : "5", "Max" : "28929"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	zext_ln118 { ap_none {  { zext_ln118 in_data 0 31 } } }
	k_reload { ap_none {  { k_reload in_data 0 32 } } }
	hull_x { ap_memory {  { hull_x_address0 mem_address 1 4 }  { hull_x_ce0 mem_ce 1 1 }  { hull_x_we0 mem_we 1 1 }  { hull_x_d0 mem_din 1 32 }  { hull_x_q0 mem_dout 0 32 } } }
	hull_x_1 { ap_memory {  { hull_x_1_address0 mem_address 1 4 }  { hull_x_1_ce0 mem_ce 1 1 }  { hull_x_1_we0 mem_we 1 1 }  { hull_x_1_d0 mem_din 1 32 }  { hull_x_1_q0 mem_dout 0 32 } } }
	hull_x_2 { ap_memory {  { hull_x_2_address0 mem_address 1 4 }  { hull_x_2_ce0 mem_ce 1 1 }  { hull_x_2_we0 mem_we 1 1 }  { hull_x_2_d0 mem_din 1 32 }  { hull_x_2_q0 mem_dout 0 32 } } }
	hull_x_3 { ap_memory {  { hull_x_3_address0 mem_address 1 4 }  { hull_x_3_ce0 mem_ce 1 1 }  { hull_x_3_we0 mem_we 1 1 }  { hull_x_3_d0 mem_din 1 32 }  { hull_x_3_q0 mem_dout 0 32 } } }
	hull_y { ap_memory {  { hull_y_address0 mem_address 1 4 }  { hull_y_ce0 mem_ce 1 1 }  { hull_y_we0 mem_we 1 1 }  { hull_y_d0 mem_din 1 32 }  { hull_y_q0 mem_dout 0 32 } } }
	hull_y_1 { ap_memory {  { hull_y_1_address0 mem_address 1 4 }  { hull_y_1_ce0 mem_ce 1 1 }  { hull_y_1_we0 mem_we 1 1 }  { hull_y_1_d0 mem_din 1 32 }  { hull_y_1_q0 mem_dout 0 32 } } }
	hull_y_2 { ap_memory {  { hull_y_2_address0 mem_address 1 4 }  { hull_y_2_ce0 mem_ce 1 1 }  { hull_y_2_we0 mem_we 1 1 }  { hull_y_2_d0 mem_din 1 32 }  { hull_y_2_q0 mem_dout 0 32 } } }
	hull_y_3 { ap_memory {  { hull_y_3_address0 mem_address 1 4 }  { hull_y_3_ce0 mem_ce 1 1 }  { hull_y_3_we0 mem_we 1 1 }  { hull_y_3_d0 mem_din 1 32 }  { hull_y_3_q0 mem_dout 0 32 } } }
	pts_x { ap_memory {  { pts_x_address0 mem_address 1 4 }  { pts_x_ce0 mem_ce 1 1 }  { pts_x_q0 in_data 0 32 } } }
	pts_x_1 { ap_memory {  { pts_x_1_address0 mem_address 1 4 }  { pts_x_1_ce0 mem_ce 1 1 }  { pts_x_1_q0 in_data 0 32 } } }
	pts_x_2 { ap_memory {  { pts_x_2_address0 mem_address 1 4 }  { pts_x_2_ce0 mem_ce 1 1 }  { pts_x_2_q0 in_data 0 32 } } }
	pts_x_3 { ap_memory {  { pts_x_3_address0 mem_address 1 4 }  { pts_x_3_ce0 mem_ce 1 1 }  { pts_x_3_q0 in_data 0 32 } } }
	pts_y { ap_memory {  { pts_y_address0 mem_address 1 4 }  { pts_y_ce0 mem_ce 1 1 }  { pts_y_q0 in_data 0 32 } } }
	pts_y_1 { ap_memory {  { pts_y_1_address0 mem_address 1 4 }  { pts_y_1_ce0 mem_ce 1 1 }  { pts_y_1_q0 in_data 0 32 } } }
	pts_y_2 { ap_memory {  { pts_y_2_address0 mem_address 1 4 }  { pts_y_2_ce0 mem_ce 1 1 }  { pts_y_2_q0 in_data 0 32 } } }
	pts_y_3 { ap_memory {  { pts_y_3_address0 mem_address 1 4 }  { pts_y_3_ce0 mem_ce 1 1 }  { pts_y_3_q0 in_data 0 32 } } }
	t { ap_none {  { t in_data 0 32 } } }
	k_1_out { ap_vld {  { k_1_out out_data 1 32 }  { k_1_out_ap_vld out_vld 1 1 } } }
}
