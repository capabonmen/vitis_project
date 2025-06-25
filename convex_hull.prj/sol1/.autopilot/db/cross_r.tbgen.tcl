set moduleName cross_r
set isTopModule 0
set isCombinational 0
set isDatapathOnly 1
set isPipelined 1
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {cross}
set C_modelType { int 32 }
set C_modelArgList {
	{ a_x_val int 32 regular  }
	{ a_y_val int 32 regular  }
	{ b_x_val int 32 regular  }
	{ b_y_val int 32 regular  }
	{ c_x_val int 32 regular  }
	{ c_y_val int 32 regular  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "a_x_val", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "a_y_val", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b_x_val", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b_y_val", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "c_x_val", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "c_y_val", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 32} ]}
# RTL Port declarations: 
set portNum 10
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ a_x_val sc_in sc_lv 32 signal 0 } 
	{ a_y_val sc_in sc_lv 32 signal 1 } 
	{ b_x_val sc_in sc_lv 32 signal 2 } 
	{ b_y_val sc_in sc_lv 32 signal 3 } 
	{ c_x_val sc_in sc_lv 32 signal 4 } 
	{ c_y_val sc_in sc_lv 32 signal 5 } 
	{ ap_return sc_out sc_lv 32 signal -1 } 
	{ ap_ce sc_in sc_logic 1 ce -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "a_x_val", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_x_val", "role": "default" }} , 
 	{ "name": "a_y_val", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_y_val", "role": "default" }} , 
 	{ "name": "b_x_val", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_x_val", "role": "default" }} , 
 	{ "name": "b_y_val", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_y_val", "role": "default" }} , 
 	{ "name": "c_x_val", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_x_val", "role": "default" }} , 
 	{ "name": "c_y_val", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_y_val", "role": "default" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }} , 
 	{ "name": "ap_ce", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "ce", "bundle":{"name": "ap_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "cross_r",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "3", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "3",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a_x_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_y_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_x_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_y_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_x_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_y_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_0_U17", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_0_U18", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	cross_r {
		a_x_val {Type I LastRead 0 FirstWrite -1}
		a_y_val {Type I LastRead 0 FirstWrite -1}
		b_x_val {Type I LastRead 0 FirstWrite -1}
		b_y_val {Type I LastRead 0 FirstWrite -1}
		c_x_val {Type I LastRead 0 FirstWrite -1}
		c_y_val {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3", "Max" : "3"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	a_x_val { ap_none {  { a_x_val in_data 0 32 } } }
	a_y_val { ap_none {  { a_y_val in_data 0 32 } } }
	b_x_val { ap_none {  { b_x_val in_data 0 32 } } }
	b_y_val { ap_none {  { b_y_val in_data 0 32 } } }
	c_x_val { ap_none {  { c_x_val in_data 0 32 } } }
	c_y_val { ap_none {  { c_y_val in_data 0 32 } } }
}
