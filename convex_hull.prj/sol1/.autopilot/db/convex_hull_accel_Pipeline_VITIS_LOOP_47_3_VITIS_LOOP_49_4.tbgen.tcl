set moduleName convex_hull_accel_Pipeline_VITIS_LOOP_47_3_VITIS_LOOP_49_4
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {convex_hull_accel_Pipeline_VITIS_LOOP_47_3_VITIS_LOOP_49_4}
set C_modelType { void 0 }
set C_modelArgList {
	{ bound int 16 regular  }
	{ empty int 8 regular  }
	{ pts_y_3 int 32 regular {array 16 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ pts_y_2 int 32 regular {array 16 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ pts_y_1 int 32 regular {array 16 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ pts_y int 32 regular {array 16 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ pts_x_3 int 32 regular {array 16 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ pts_x_2 int 32 regular {array 16 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ pts_x_1 int 32 regular {array 16 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ pts_x int 32 regular {array 16 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_img_data int 8 regular {fifo 0 volatile }  }
	{ count_out int 32 regular {pointer 1}  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "bound", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "empty", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "pts_y_3", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pts_y_2", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pts_y_1", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pts_y", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pts_x_3", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pts_x_2", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pts_x_1", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pts_x", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_img_data", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "count_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 45
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ in_img_data_dout sc_in sc_lv 8 signal 10 } 
	{ in_img_data_empty_n sc_in sc_logic 1 signal 10 } 
	{ in_img_data_read sc_out sc_logic 1 signal 10 } 
	{ bound sc_in sc_lv 16 signal 0 } 
	{ empty sc_in sc_lv 8 signal 1 } 
	{ pts_y_3_address0 sc_out sc_lv 4 signal 2 } 
	{ pts_y_3_ce0 sc_out sc_logic 1 signal 2 } 
	{ pts_y_3_we0 sc_out sc_logic 1 signal 2 } 
	{ pts_y_3_d0 sc_out sc_lv 32 signal 2 } 
	{ pts_y_2_address0 sc_out sc_lv 4 signal 3 } 
	{ pts_y_2_ce0 sc_out sc_logic 1 signal 3 } 
	{ pts_y_2_we0 sc_out sc_logic 1 signal 3 } 
	{ pts_y_2_d0 sc_out sc_lv 32 signal 3 } 
	{ pts_y_1_address0 sc_out sc_lv 4 signal 4 } 
	{ pts_y_1_ce0 sc_out sc_logic 1 signal 4 } 
	{ pts_y_1_we0 sc_out sc_logic 1 signal 4 } 
	{ pts_y_1_d0 sc_out sc_lv 32 signal 4 } 
	{ pts_y_address0 sc_out sc_lv 4 signal 5 } 
	{ pts_y_ce0 sc_out sc_logic 1 signal 5 } 
	{ pts_y_we0 sc_out sc_logic 1 signal 5 } 
	{ pts_y_d0 sc_out sc_lv 32 signal 5 } 
	{ pts_x_3_address0 sc_out sc_lv 4 signal 6 } 
	{ pts_x_3_ce0 sc_out sc_logic 1 signal 6 } 
	{ pts_x_3_we0 sc_out sc_logic 1 signal 6 } 
	{ pts_x_3_d0 sc_out sc_lv 32 signal 6 } 
	{ pts_x_2_address0 sc_out sc_lv 4 signal 7 } 
	{ pts_x_2_ce0 sc_out sc_logic 1 signal 7 } 
	{ pts_x_2_we0 sc_out sc_logic 1 signal 7 } 
	{ pts_x_2_d0 sc_out sc_lv 32 signal 7 } 
	{ pts_x_1_address0 sc_out sc_lv 4 signal 8 } 
	{ pts_x_1_ce0 sc_out sc_logic 1 signal 8 } 
	{ pts_x_1_we0 sc_out sc_logic 1 signal 8 } 
	{ pts_x_1_d0 sc_out sc_lv 32 signal 8 } 
	{ pts_x_address0 sc_out sc_lv 4 signal 9 } 
	{ pts_x_ce0 sc_out sc_logic 1 signal 9 } 
	{ pts_x_we0 sc_out sc_logic 1 signal 9 } 
	{ pts_x_d0 sc_out sc_lv 32 signal 9 } 
	{ count_out sc_out sc_lv 32 signal 11 } 
	{ count_out_ap_vld sc_out sc_logic 1 outvld 11 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "in_img_data_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_img_data", "role": "dout" }} , 
 	{ "name": "in_img_data_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_img_data", "role": "empty_n" }} , 
 	{ "name": "in_img_data_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_img_data", "role": "read" }} , 
 	{ "name": "bound", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bound", "role": "default" }} , 
 	{ "name": "empty", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "empty", "role": "default" }} , 
 	{ "name": "pts_y_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "pts_y_3", "role": "address0" }} , 
 	{ "name": "pts_y_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pts_y_3", "role": "ce0" }} , 
 	{ "name": "pts_y_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pts_y_3", "role": "we0" }} , 
 	{ "name": "pts_y_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pts_y_3", "role": "d0" }} , 
 	{ "name": "pts_y_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "pts_y_2", "role": "address0" }} , 
 	{ "name": "pts_y_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pts_y_2", "role": "ce0" }} , 
 	{ "name": "pts_y_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pts_y_2", "role": "we0" }} , 
 	{ "name": "pts_y_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pts_y_2", "role": "d0" }} , 
 	{ "name": "pts_y_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "pts_y_1", "role": "address0" }} , 
 	{ "name": "pts_y_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pts_y_1", "role": "ce0" }} , 
 	{ "name": "pts_y_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pts_y_1", "role": "we0" }} , 
 	{ "name": "pts_y_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pts_y_1", "role": "d0" }} , 
 	{ "name": "pts_y_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "pts_y", "role": "address0" }} , 
 	{ "name": "pts_y_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pts_y", "role": "ce0" }} , 
 	{ "name": "pts_y_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pts_y", "role": "we0" }} , 
 	{ "name": "pts_y_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pts_y", "role": "d0" }} , 
 	{ "name": "pts_x_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "pts_x_3", "role": "address0" }} , 
 	{ "name": "pts_x_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pts_x_3", "role": "ce0" }} , 
 	{ "name": "pts_x_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pts_x_3", "role": "we0" }} , 
 	{ "name": "pts_x_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pts_x_3", "role": "d0" }} , 
 	{ "name": "pts_x_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "pts_x_2", "role": "address0" }} , 
 	{ "name": "pts_x_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pts_x_2", "role": "ce0" }} , 
 	{ "name": "pts_x_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pts_x_2", "role": "we0" }} , 
 	{ "name": "pts_x_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pts_x_2", "role": "d0" }} , 
 	{ "name": "pts_x_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "pts_x_1", "role": "address0" }} , 
 	{ "name": "pts_x_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pts_x_1", "role": "ce0" }} , 
 	{ "name": "pts_x_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pts_x_1", "role": "we0" }} , 
 	{ "name": "pts_x_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pts_x_1", "role": "d0" }} , 
 	{ "name": "pts_x_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "pts_x", "role": "address0" }} , 
 	{ "name": "pts_x_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pts_x", "role": "ce0" }} , 
 	{ "name": "pts_x_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pts_x", "role": "we0" }} , 
 	{ "name": "pts_x_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pts_x", "role": "d0" }} , 
 	{ "name": "count_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "count_out", "role": "default" }} , 
 	{ "name": "count_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "count_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "convex_hull_accel_Pipeline_VITIS_LOOP_47_3_VITIS_LOOP_49_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "16388",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "bound", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "pts_y_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pts_y_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pts_y_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pts_y", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pts_x_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pts_x_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pts_x_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pts_x", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_img_data", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "in_img_data_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "count_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_47_3_VITIS_LOOP_49_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	convex_hull_accel_Pipeline_VITIS_LOOP_47_3_VITIS_LOOP_49_4 {
		bound {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		pts_y_3 {Type O LastRead -1 FirstWrite 2}
		pts_y_2 {Type O LastRead -1 FirstWrite 2}
		pts_y_1 {Type O LastRead -1 FirstWrite 2}
		pts_y {Type O LastRead -1 FirstWrite 2}
		pts_x_3 {Type O LastRead -1 FirstWrite 2}
		pts_x_2 {Type O LastRead -1 FirstWrite 2}
		pts_x_1 {Type O LastRead -1 FirstWrite 2}
		pts_x {Type O LastRead -1 FirstWrite 2}
		in_img_data {Type I LastRead 1 FirstWrite -1}
		count_out {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "5", "Max" : "16388"}
	, {"Name" : "Interval", "Min" : "5", "Max" : "16388"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	bound { ap_none {  { bound in_data 0 16 } } }
	empty { ap_none {  { empty in_data 0 8 } } }
	pts_y_3 { ap_memory {  { pts_y_3_address0 mem_address 1 4 }  { pts_y_3_ce0 mem_ce 1 1 }  { pts_y_3_we0 mem_we 1 1 }  { pts_y_3_d0 mem_din 1 32 } } }
	pts_y_2 { ap_memory {  { pts_y_2_address0 mem_address 1 4 }  { pts_y_2_ce0 mem_ce 1 1 }  { pts_y_2_we0 mem_we 1 1 }  { pts_y_2_d0 mem_din 1 32 } } }
	pts_y_1 { ap_memory {  { pts_y_1_address0 mem_address 1 4 }  { pts_y_1_ce0 mem_ce 1 1 }  { pts_y_1_we0 mem_we 1 1 }  { pts_y_1_d0 mem_din 1 32 } } }
	pts_y { ap_memory {  { pts_y_address0 mem_address 1 4 }  { pts_y_ce0 mem_ce 1 1 }  { pts_y_we0 mem_we 1 1 }  { pts_y_d0 mem_din 1 32 } } }
	pts_x_3 { ap_memory {  { pts_x_3_address0 mem_address 1 4 }  { pts_x_3_ce0 mem_ce 1 1 }  { pts_x_3_we0 mem_we 1 1 }  { pts_x_3_d0 mem_din 1 32 } } }
	pts_x_2 { ap_memory {  { pts_x_2_address0 mem_address 1 4 }  { pts_x_2_ce0 mem_ce 1 1 }  { pts_x_2_we0 mem_we 1 1 }  { pts_x_2_d0 mem_din 1 32 } } }
	pts_x_1 { ap_memory {  { pts_x_1_address0 mem_address 1 4 }  { pts_x_1_ce0 mem_ce 1 1 }  { pts_x_1_we0 mem_we 1 1 }  { pts_x_1_d0 mem_din 1 32 } } }
	pts_x { ap_memory {  { pts_x_address0 mem_address 1 4 }  { pts_x_ce0 mem_ce 1 1 }  { pts_x_we0 mem_we 1 1 }  { pts_x_d0 mem_din 1 32 } } }
	in_img_data { ap_fifo {  { in_img_data_dout fifo_data_in 0 8 }  { in_img_data_empty_n fifo_status 0 1 }  { in_img_data_read fifo_port_we 1 1 } } }
	count_out { ap_vld {  { count_out out_data 1 32 }  { count_out_ap_vld out_vld 1 1 } } }
}
