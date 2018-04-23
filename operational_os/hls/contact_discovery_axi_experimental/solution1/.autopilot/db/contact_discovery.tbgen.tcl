set C_TypeInfoList {{ 
"contact_discovery" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"operation": [[], {"scalar": "int"}] }, {"contact_in": [[],"0"] }, {"db_in": [[], {"reference": "1"}] }, {"db_size_in": [[], {"scalar": "unsigned int"}] }, {"error_out": [[],{ "pointer":  {"scalar": "int"}}] }, {"contacts_size_out": [[],{ "pointer":  {"scalar": "int"}}] }, {"results_out": [[], {"reference": "2"}] }],[],""], 
"0": [ "hash", {"typedef": [[[],"3"],""]}], 
"3": [ "ap_uint<512>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 512}}]],""]}}], 
"1": [ "stream<ap_uint<512> >", {"hls_type": {"stream": [[[[],"3"]],"4"]}}], 
"2": [ "stream<unsigned char>", {"hls_type": {"stream": [[[[], {"scalar": "unsigned char"}]],"4"]}}],
"4": ["hls", ""]
}}
set moduleName contact_discovery
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {contact_discovery}
set C_modelType { void 0 }
set C_modelArgList {
	{ operation int 32 regular {axi_slave 0}  }
	{ contact_in_V int 512 regular {axi_slave 0}  }
	{ db_in_V_V int 512 regular {axi_s 0 volatile  { db_in_V_V Data } }  }
	{ db_size_in int 32 regular {axi_slave 0}  }
	{ error_out int 32 regular {axi_slave 1}  }
	{ contacts_size_out int 32 regular {axi_slave 1}  }
	{ results_out_V int 8 regular {axi_s 1 volatile  { results_out_V Data } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "operation", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_vld","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "operation","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":16}, "offset_end" : {"in":23}} , 
 	{ "Name" : "contact_in_V", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_none","bitwidth" : 512, "direction" : "READONLY", "bitSlice":[{"low":0,"up":511,"cElement": [{"cName": "contact_in.V","cData": "uint512","bit_use": { "low": 0,"up": 511},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":24}, "offset_end" : {"in":91}} , 
 	{ "Name" : "db_in_V_V", "interface" : "axis", "bitwidth" : 512, "direction" : "READONLY", "bitSlice":[{"low":0,"up":511,"cElement": [{"cName": "db_in.V.V","cData": "uint512","bit_use": { "low": 0,"up": 511},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "db_size_in", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "db_size_in","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":92}, "offset_end" : {"in":99}} , 
 	{ "Name" : "error_out", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_none","bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "error_out","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "offset" : {"out":100}, "offset_end" : {"out":107}} , 
 	{ "Name" : "contacts_size_out", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_none","bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "contacts_size_out","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "offset" : {"out":108}, "offset_end" : {"out":115}} , 
 	{ "Name" : "results_out_V", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "results_out.V","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 26
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ db_in_V_V_TDATA sc_in sc_lv 512 signal 2 } 
	{ db_in_V_V_TVALID sc_in sc_logic 1 invld 2 } 
	{ db_in_V_V_TREADY sc_out sc_logic 1 inacc 2 } 
	{ results_out_V_TDATA sc_out sc_lv 8 signal 6 } 
	{ results_out_V_TVALID sc_out sc_logic 1 outvld 6 } 
	{ results_out_V_TREADY sc_in sc_logic 1 outacc 6 } 
	{ s_axi_AXILiteS_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_AWADDR sc_in sc_lv 7 signal -1 } 
	{ s_axi_AXILiteS_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_AXILiteS_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_AXILiteS_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_ARADDR sc_in sc_lv 7 signal -1 } 
	{ s_axi_AXILiteS_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_AXILiteS_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_AXILiteS_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_AXILiteS_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "AXILiteS", "role": "AWADDR" },"address":[{"name":"contact_discovery","role":"start","value":"0","valid_bit":"0"},{"name":"contact_discovery","role":"continue","value":"0","valid_bit":"4"},{"name":"contact_discovery","role":"auto_start","value":"0","valid_bit":"7"},{"name":"operation","role":"data","value":"16"}, {"name":"operation","role":"valid","value":"20","valid_bit":"0"},{"name":"contact_in_V","role":"data","value":"24"},{"name":"db_size_in","role":"data","value":"92"}] },
	{ "name": "s_axi_AXILiteS_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "AWVALID" } },
	{ "name": "s_axi_AXILiteS_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "AWREADY" } },
	{ "name": "s_axi_AXILiteS_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WVALID" } },
	{ "name": "s_axi_AXILiteS_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WREADY" } },
	{ "name": "s_axi_AXILiteS_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WDATA" } },
	{ "name": "s_axi_AXILiteS_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WSTRB" } },
	{ "name": "s_axi_AXILiteS_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "AXILiteS", "role": "ARADDR" },"address":[{"name":"contact_discovery","role":"start","value":"0","valid_bit":"0"},{"name":"contact_discovery","role":"done","value":"0","valid_bit":"1"},{"name":"contact_discovery","role":"idle","value":"0","valid_bit":"2"},{"name":"contact_discovery","role":"ready","value":"0","valid_bit":"3"},{"name":"contact_discovery","role":"auto_start","value":"0","valid_bit":"7"},{"name":"error_out","role":"data","value":"100"},{"name":"contacts_size_out","role":"data","value":"108"}] },
	{ "name": "s_axi_AXILiteS_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "ARVALID" } },
	{ "name": "s_axi_AXILiteS_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "ARREADY" } },
	{ "name": "s_axi_AXILiteS_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "RVALID" } },
	{ "name": "s_axi_AXILiteS_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "RREADY" } },
	{ "name": "s_axi_AXILiteS_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AXILiteS", "role": "RDATA" } },
	{ "name": "s_axi_AXILiteS_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "AXILiteS", "role": "RRESP" } },
	{ "name": "s_axi_AXILiteS_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "BVALID" } },
	{ "name": "s_axi_AXILiteS_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "BREADY" } },
	{ "name": "s_axi_AXILiteS_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "AXILiteS", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "db_in_V_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "db_in_V_V", "role": "TDATA" }} , 
 	{ "name": "db_in_V_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "db_in_V_V", "role": "TVALID" }} , 
 	{ "name": "db_in_V_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "db_in_V_V", "role": "TREADY" }} , 
 	{ "name": "results_out_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "results_out_V", "role": "TDATA" }} , 
 	{ "name": "results_out_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "results_out_V", "role": "TVALID" }} , 
 	{ "name": "results_out_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "results_out_V", "role": "TREADY" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
		"CDFG" : "contact_discovery",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_match_db_contact_fu_156"},
			{"State" : "ap_ST_fsm_state7", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_match_db_contact_fu_156"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_match_db_contact_fu_156"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_match_db_contact_fu_156"}],
		"Port" : [
			{"Name" : "operation", "Type" : "Vld", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "operation_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "contact_in_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "db_in_V_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "db_in_V_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "db_size_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "error_out", "Type" : "None", "Direction" : "O"},
			{"Name" : "contacts_size_out", "Type" : "None", "Direction" : "O"},
			{"Name" : "results_out_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "results_out_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "contacts_size", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "contacts_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_match_db_contact_fu_156", "Port" : "contacts_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.contacts_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.contact_discovery_AXILiteS_s_axi_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_match_db_contact_fu_156", "Parent" : "0",
		"CDFG" : "match_db_contact",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "db_item_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "contacts_V", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	contact_discovery {
		operation {Type I LastRead 0 FirstWrite -1}
		contact_in_V {Type I LastRead 0 FirstWrite -1}
		db_in_V_V {Type I LastRead 8 FirstWrite -1}
		db_size_in {Type I LastRead 0 FirstWrite -1}
		error_out {Type O LastRead -1 FirstWrite 0}
		contacts_size_out {Type O LastRead -1 FirstWrite 0}
		results_out_V {Type O LastRead -1 FirstWrite 4}
		contacts_size {Type IO LastRead -1 FirstWrite -1}
		contacts_V {Type IO LastRead -1 FirstWrite -1}}
	match_db_contact {
		db_item_V {Type I LastRead 0 FirstWrite -1}
		contacts_V {Type I LastRead 1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	db_in_V_V { axis {  { db_in_V_V_TDATA in_data 0 512 }  { db_in_V_V_TVALID in_vld 0 1 }  { db_in_V_V_TREADY in_acc 1 1 } } }
	results_out_V { axis {  { results_out_V_TDATA out_data 1 8 }  { results_out_V_TVALID out_vld 1 1 }  { results_out_V_TREADY out_acc 0 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}