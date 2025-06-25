set moduleName convex_hull_accel_Pipeline_VITIS_LOOP_143_17
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
set C_modelName {convex_hull_accel_Pipeline_VITIS_LOOP_143_17}
set C_modelType { void 0 }
set C_modelArgList {
	{ hs int 32 regular  }
	{ hull_x int 32 regular {array 16 { 1 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 1 1 }  }
	{ hull_x_1 int 32 regular {array 16 { 1 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 1 1 }  }
	{ hull_x_2 int 32 regular {array 16 { 1 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 1 1 }  }
	{ hull_x_3 int 32 regular {array 16 { 1 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 1 1 }  }
	{ hull_y int 32 regular {array 16 { 1 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 1 1 }  }
	{ hull_y_1 int 32 regular {array 16 { 1 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 1 1 }  }
	{ hull_y_2 int 32 regular {array 16 { 1 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 1 1 }  }
	{ hull_y_3 int 32 regular {array 16 { 1 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 1 1 }  }
	{ cols int 32 regular  }
	{ rows int 32 regular  }
	{ out_img_data int 8 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "hs", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "hull_x", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "hull_x_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "hull_x_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "hull_x_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "hull_y", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "hull_y_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "hull_y_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "hull_y_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "cols", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "rows", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "out_img_data", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 36
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ out_img_data_din sc_out sc_lv 8 signal 11 } 
	{ out_img_data_full_n sc_in sc_logic 1 signal 11 } 
	{ out_img_data_write sc_out sc_logic 1 signal 11 } 
	{ hs sc_in sc_lv 32 signal 0 } 
	{ hull_x_address0 sc_out sc_lv 4 signal 1 } 
	{ hull_x_ce0 sc_out sc_logic 1 signal 1 } 
	{ hull_x_q0 sc_in sc_lv 32 signal 1 } 
	{ hull_x_1_address0 sc_out sc_lv 4 signal 2 } 
	{ hull_x_1_ce0 sc_out sc_logic 1 signal 2 } 
	{ hull_x_1_q0 sc_in sc_lv 32 signal 2 } 
	{ hull_x_2_address0 sc_out sc_lv 4 signal 3 } 
	{ hull_x_2_ce0 sc_out sc_logic 1 signal 3 } 
	{ hull_x_2_q0 sc_in sc_lv 32 signal 3 } 
	{ hull_x_3_address0 sc_out sc_lv 4 signal 4 } 
	{ hull_x_3_ce0 sc_out sc_logic 1 signal 4 } 
	{ hull_x_3_q0 sc_in sc_lv 32 signal 4 } 
	{ hull_y_address0 sc_out sc_lv 4 signal 5 } 
	{ hull_y_ce0 sc_out sc_logic 1 signal 5 } 
	{ hull_y_q0 sc_in sc_lv 32 signal 5 } 
	{ hull_y_1_address0 sc_out sc_lv 4 signal 6 } 
	{ hull_y_1_ce0 sc_out sc_logic 1 signal 6 } 
	{ hull_y_1_q0 sc_in sc_lv 32 signal 6 } 
	{ hull_y_2_address0 sc_out sc_lv 4 signal 7 } 
	{ hull_y_2_ce0 sc_out sc_logic 1 signal 7 } 
	{ hull_y_2_q0 sc_in sc_lv 32 signal 7 } 
	{ hull_y_3_address0 sc_out sc_lv 4 signal 8 } 
	{ hull_y_3_ce0 sc_out sc_logic 1 signal 8 } 
	{ hull_y_3_q0 sc_in sc_lv 32 signal 8 } 
	{ cols sc_in sc_lv 32 signal 9 } 
	{ rows sc_in sc_lv 32 signal 10 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "out_img_data_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "out_img_data", "role": "din" }} , 
 	{ "name": "out_img_data_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_img_data", "role": "full_n" }} , 
 	{ "name": "out_img_data_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_img_data", "role": "write" }} , 
 	{ "name": "hs", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "hs", "role": "default" }} , 
 	{ "name": "hull_x_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "hull_x", "role": "address0" }} , 
 	{ "name": "hull_x_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hull_x", "role": "ce0" }} , 
 	{ "name": "hull_x_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "hull_x", "role": "q0" }} , 
 	{ "name": "hull_x_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "hull_x_1", "role": "address0" }} , 
 	{ "name": "hull_x_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hull_x_1", "role": "ce0" }} , 
 	{ "name": "hull_x_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "hull_x_1", "role": "q0" }} , 
 	{ "name": "hull_x_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "hull_x_2", "role": "address0" }} , 
 	{ "name": "hull_x_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hull_x_2", "role": "ce0" }} , 
 	{ "name": "hull_x_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "hull_x_2", "role": "q0" }} , 
 	{ "name": "hull_x_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "hull_x_3", "role": "address0" }} , 
 	{ "name": "hull_x_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hull_x_3", "role": "ce0" }} , 
 	{ "name": "hull_x_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "hull_x_3", "role": "q0" }} , 
 	{ "name": "hull_y_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "hull_y", "role": "address0" }} , 
 	{ "name": "hull_y_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hull_y", "role": "ce0" }} , 
 	{ "name": "hull_y_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "hull_y", "role": "q0" }} , 
 	{ "name": "hull_y_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "hull_y_1", "role": "address0" }} , 
 	{ "name": "hull_y_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hull_y_1", "role": "ce0" }} , 
 	{ "name": "hull_y_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "hull_y_1", "role": "q0" }} , 
 	{ "name": "hull_y_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "hull_y_2", "role": "address0" }} , 
 	{ "name": "hull_y_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hull_y_2", "role": "ce0" }} , 
 	{ "name": "hull_y_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "hull_y_2", "role": "q0" }} , 
 	{ "name": "hull_y_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "hull_y_3", "role": "address0" }} , 
 	{ "name": "hull_y_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hull_y_3", "role": "ce0" }} , 
 	{ "name": "hull_y_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "hull_y_3", "role": "q0" }} , 
 	{ "name": "cols", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cols", "role": "default" }} , 
 	{ "name": "rows", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "rows", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
		"CDFG" : "convex_hull_accel_Pipeline_VITIS_LOOP_143_17",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "68",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "hs", "Type" : "None", "Direction" : "I"},
			{"Name" : "hull_x", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "hull_x_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "hull_x_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "hull_x_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "hull_y", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "hull_y_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "hull_y_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "hull_y_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cols", "Type" : "None", "Direction" : "I"},
			{"Name" : "rows", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_img_data", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "out_img_data_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_143_17", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_2_32_1_1_U71", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_2_32_1_1_U72", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	convex_hull_accel_Pipeline_VITIS_LOOP_143_17 {
		hs {Type I LastRead 0 FirstWrite -1}
		hull_x {Type I LastRead 0 FirstWrite -1}
		hull_x_1 {Type I LastRead 0 FirstWrite -1}
		hull_x_2 {Type I LastRead 0 FirstWrite -1}
		hull_x_3 {Type I LastRead 0 FirstWrite -1}
		hull_y {Type I LastRead 0 FirstWrite -1}
		hull_y_1 {Type I LastRead 0 FirstWrite -1}
		hull_y_2 {Type I LastRead 0 FirstWrite -1}
		hull_y_3 {Type I LastRead 0 FirstWrite -1}
		cols {Type I LastRead 0 FirstWrite -1}
		rows {Type I LastRead 0 FirstWrite -1}
		out_img_data {Type O LastRead -1 FirstWrite 3}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "5", "Max" : "68"}
	, {"Name" : "Interval", "Min" : "5", "Max" : "68"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	hs { ap_none {  { hs in_data 0 32 } } }
	hull_x { ap_memory {  { hull_x_address0 mem_address 1 4 }  { hull_x_ce0 mem_ce 1 1 }  { hull_x_q0 in_data 0 32 } } }
	hull_x_1 { ap_memory {  { hull_x_1_address0 mem_address 1 4 }  { hull_x_1_ce0 mem_ce 1 1 }  { hull_x_1_q0 in_data 0 32 } } }
	hull_x_2 { ap_memory {  { hull_x_2_address0 mem_address 1 4 }  { hull_x_2_ce0 mem_ce 1 1 }  { hull_x_2_q0 in_data 0 32 } } }
	hull_x_3 { ap_memory {  { hull_x_3_address0 mem_address 1 4 }  { hull_x_3_ce0 mem_ce 1 1 }  { hull_x_3_q0 in_data 0 32 } } }
	hull_y { ap_memory {  { hull_y_address0 mem_address 1 4 }  { hull_y_ce0 mem_ce 1 1 }  { hull_y_q0 in_data 0 32 } } }
	hull_y_1 { ap_memory {  { hull_y_1_address0 mem_address 1 4 }  { hull_y_1_ce0 mem_ce 1 1 }  { hull_y_1_q0 in_data 0 32 } } }
	hull_y_2 { ap_memory {  { hull_y_2_address0 mem_address 1 4 }  { hull_y_2_ce0 mem_ce 1 1 }  { hull_y_2_q0 in_data 0 32 } } }
	hull_y_3 { ap_memory {  { hull_y_3_address0 mem_address 1 4 }  { hull_y_3_ce0 mem_ce 1 1 }  { hull_y_3_q0 in_data 0 32 } } }
	cols { ap_none {  { cols in_data 0 32 } } }
	rows { ap_none {  { rows in_data 0 32 } } }
	out_img_data { ap_fifo {  { out_img_data_din fifo_data_in 1 8 }  { out_img_data_full_n fifo_status 0 1 }  { out_img_data_write fifo_port_we 1 1 } } }
}
