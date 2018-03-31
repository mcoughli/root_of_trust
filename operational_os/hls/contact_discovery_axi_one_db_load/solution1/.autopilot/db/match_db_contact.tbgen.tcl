set moduleName match_db_contact
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {match_db_contact}
set C_modelType { void 0 }
set C_modelArgList {
	{ database_index int 14 regular  }
	{ contacts int 8 regular {array 8192 { 1 1 } 1 1 } {global 0}  }
	{ database int 8 regular {array 960000 { 1 1 } 1 1 } {global 0}  }
	{ results int 1 regular {array 15000 { 0 3 } 0 1 } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "database_index", "interface" : "wire", "bitwidth" : 14, "direction" : "READONLY"} , 
 	{ "Name" : "contacts", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "database", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "results", "interface" : "memory", "bitwidth" : 1, "direction" : "WRITEONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 23
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ database_index sc_in sc_lv 14 signal 0 } 
	{ contacts_address0 sc_out sc_lv 13 signal 1 } 
	{ contacts_ce0 sc_out sc_logic 1 signal 1 } 
	{ contacts_q0 sc_in sc_lv 8 signal 1 } 
	{ contacts_address1 sc_out sc_lv 13 signal 1 } 
	{ contacts_ce1 sc_out sc_logic 1 signal 1 } 
	{ contacts_q1 sc_in sc_lv 8 signal 1 } 
	{ database_address0 sc_out sc_lv 20 signal 2 } 
	{ database_ce0 sc_out sc_logic 1 signal 2 } 
	{ database_q0 sc_in sc_lv 8 signal 2 } 
	{ database_address1 sc_out sc_lv 20 signal 2 } 
	{ database_ce1 sc_out sc_logic 1 signal 2 } 
	{ database_q1 sc_in sc_lv 8 signal 2 } 
	{ results_address0 sc_out sc_lv 14 signal 3 } 
	{ results_ce0 sc_out sc_logic 1 signal 3 } 
	{ results_we0 sc_out sc_logic 1 signal 3 } 
	{ results_d0 sc_out sc_lv 1 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "database_index", "direction": "in", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "database_index", "role": "default" }} , 
 	{ "name": "contacts_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "contacts", "role": "address0" }} , 
 	{ "name": "contacts_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "contacts", "role": "ce0" }} , 
 	{ "name": "contacts_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "contacts", "role": "q0" }} , 
 	{ "name": "contacts_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "contacts", "role": "address1" }} , 
 	{ "name": "contacts_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "contacts", "role": "ce1" }} , 
 	{ "name": "contacts_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "contacts", "role": "q1" }} , 
 	{ "name": "database_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "database", "role": "address0" }} , 
 	{ "name": "database_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "database", "role": "ce0" }} , 
 	{ "name": "database_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "database", "role": "q0" }} , 
 	{ "name": "database_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "database", "role": "address1" }} , 
 	{ "name": "database_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "database", "role": "ce1" }} , 
 	{ "name": "database_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "database", "role": "q1" }} , 
 	{ "name": "results_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "results", "role": "address0" }} , 
 	{ "name": "results_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "results", "role": "ce0" }} , 
 	{ "name": "results_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "results", "role": "we0" }} , 
 	{ "name": "results_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "results", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "match_db_contact",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "database_index", "Type" : "None", "Direction" : "I"},
			{"Name" : "contacts", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compare_fu_288", "Port" : "contacts"}]},
			{"Name" : "database", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compare_fu_288", "Port" : "database"}]},
			{"Name" : "results", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_compare_fu_288", "Parent" : "0",
		"CDFG" : "compare",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Aligned", "AlignedPipeline" : "1", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"VariableLatency" : "0",
		"Port" : [
			{"Name" : "db_index", "Type" : "None", "Direction" : "I"},
			{"Name" : "contacts_index", "Type" : "None", "Direction" : "I"},
			{"Name" : "contacts", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "database", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	match_db_contact {
		database_index {Type I LastRead 0 FirstWrite -1}
		contacts {Type I LastRead 32 FirstWrite -1}
		database {Type I LastRead 32 FirstWrite -1}
		results {Type O LastRead -1 FirstWrite 4223}}
	compare {
		db_index {Type I LastRead 0 FirstWrite -1}
		contacts_index {Type I LastRead 0 FirstWrite -1}
		contacts {Type I LastRead 32 FirstWrite -1}
		database {Type I LastRead 32 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "4223", "Max" : "4223"}
	, {"Name" : "Interval", "Min" : "4223", "Max" : "4223"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	database_index { ap_none {  { database_index in_data 0 14 } } }
	contacts { ap_memory {  { contacts_address0 mem_address 1 13 }  { contacts_ce0 mem_ce 1 1 }  { contacts_q0 mem_dout 0 8 }  { contacts_address1 mem_address 1 13 }  { contacts_ce1 mem_ce 1 1 }  { contacts_q1 mem_dout 0 8 } } }
	database { ap_memory {  { database_address0 mem_address 1 20 }  { database_ce0 mem_ce 1 1 }  { database_q0 mem_dout 0 8 }  { database_address1 mem_address 1 20 }  { database_ce1 mem_ce 1 1 }  { database_q1 mem_dout 0 8 } } }
	results { ap_memory {  { results_address0 mem_address 1 14 }  { results_ce0 mem_ce 1 1 }  { results_we0 mem_we 1 1 }  { results_d0 mem_din 1 1 } } }
}
