set moduleName reduce_add_sub
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {reduce_add_sub}
set C_modelType { void 0 }
set C_modelArgList {
	{ r_v int 32 regular {array 32 { 2 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "r_v", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 11
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ r_v_address0 sc_out sc_lv 5 signal 0 } 
	{ r_v_ce0 sc_out sc_logic 1 signal 0 } 
	{ r_v_we0 sc_out sc_logic 1 signal 0 } 
	{ r_v_d0 sc_out sc_lv 32 signal 0 } 
	{ r_v_q0 sc_in sc_lv 32 signal 0 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "r_v_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "r_v", "role": "address0" }} , 
 	{ "name": "r_v_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "r_v", "role": "ce0" }} , 
 	{ "name": "r_v_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "r_v", "role": "we0" }} , 
 	{ "name": "r_v_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "r_v", "role": "d0" }} , 
 	{ "name": "r_v_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "r_v", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "reduce_add_sub",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "r_v", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "m", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.m_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.t_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	reduce_add_sub {
		r_v {Type IO LastRead 2 FirstWrite 3}
		m {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "130", "Max" : "130"}
	, {"Name" : "Interval", "Min" : "130", "Max" : "130"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	r_v { ap_memory {  { r_v_address0 mem_address 1 5 }  { r_v_ce0 mem_ce 1 1 }  { r_v_we0 mem_we 1 1 }  { r_v_d0 mem_din 1 32 }  { r_v_q0 mem_dout 0 32 } } }
}
