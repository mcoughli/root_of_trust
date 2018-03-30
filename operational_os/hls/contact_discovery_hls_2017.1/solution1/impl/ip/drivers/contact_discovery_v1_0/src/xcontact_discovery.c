// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.1
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

/***************************** Include Files *********************************/
#include "xcontact_discovery.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XContact_discovery_CfgInitialize(XContact_discovery *InstancePtr, XContact_discovery_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Axilites_BaseAddress = ConfigPtr->Axilites_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XContact_discovery_Start(XContact_discovery *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XContact_discovery_ReadReg(InstancePtr->Axilites_BaseAddress, XCONTACT_DISCOVERY_AXILITES_ADDR_AP_CTRL) & 0x80;
    XContact_discovery_WriteReg(InstancePtr->Axilites_BaseAddress, XCONTACT_DISCOVERY_AXILITES_ADDR_AP_CTRL, Data | 0x01);
}

u32 XContact_discovery_IsDone(XContact_discovery *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XContact_discovery_ReadReg(InstancePtr->Axilites_BaseAddress, XCONTACT_DISCOVERY_AXILITES_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XContact_discovery_IsIdle(XContact_discovery *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XContact_discovery_ReadReg(InstancePtr->Axilites_BaseAddress, XCONTACT_DISCOVERY_AXILITES_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XContact_discovery_IsReady(XContact_discovery *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XContact_discovery_ReadReg(InstancePtr->Axilites_BaseAddress, XCONTACT_DISCOVERY_AXILITES_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XContact_discovery_EnableAutoRestart(XContact_discovery *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XContact_discovery_WriteReg(InstancePtr->Axilites_BaseAddress, XCONTACT_DISCOVERY_AXILITES_ADDR_AP_CTRL, 0x80);
}

void XContact_discovery_DisableAutoRestart(XContact_discovery *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XContact_discovery_WriteReg(InstancePtr->Axilites_BaseAddress, XCONTACT_DISCOVERY_AXILITES_ADDR_AP_CTRL, 0);
}

void XContact_discovery_Set_operation(XContact_discovery *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XContact_discovery_WriteReg(InstancePtr->Axilites_BaseAddress, XCONTACT_DISCOVERY_AXILITES_ADDR_OPERATION_DATA, Data);
}

u32 XContact_discovery_Get_operation(XContact_discovery *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XContact_discovery_ReadReg(InstancePtr->Axilites_BaseAddress, XCONTACT_DISCOVERY_AXILITES_ADDR_OPERATION_DATA);
    return Data;
}

void XContact_discovery_Set_operation_vld(XContact_discovery *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XContact_discovery_WriteReg(InstancePtr->Axilites_BaseAddress, XCONTACT_DISCOVERY_AXILITES_ADDR_OPERATION_CTRL, 1);
}

u32 XContact_discovery_Get_operation_vld(XContact_discovery *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XContact_discovery_ReadReg(InstancePtr->Axilites_BaseAddress, XCONTACT_DISCOVERY_AXILITES_ADDR_OPERATION_CTRL);
    return Data & 0x1;
}

u32 XContact_discovery_Get_matched_finished(XContact_discovery *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XContact_discovery_ReadReg(InstancePtr->Axilites_BaseAddress, XCONTACT_DISCOVERY_AXILITES_ADDR_MATCHED_FINISHED_DATA);
    return Data;
}

u32 XContact_discovery_Get_error_out(XContact_discovery *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XContact_discovery_ReadReg(InstancePtr->Axilites_BaseAddress, XCONTACT_DISCOVERY_AXILITES_ADDR_ERROR_OUT_DATA);
    return Data;
}

u32 XContact_discovery_Get_contacts_size_out(XContact_discovery *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XContact_discovery_ReadReg(InstancePtr->Axilites_BaseAddress, XCONTACT_DISCOVERY_AXILITES_ADDR_CONTACTS_SIZE_OUT_DATA);
    return Data;
}

void XContact_discovery_InterruptGlobalEnable(XContact_discovery *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XContact_discovery_WriteReg(InstancePtr->Axilites_BaseAddress, XCONTACT_DISCOVERY_AXILITES_ADDR_GIE, 1);
}

void XContact_discovery_InterruptGlobalDisable(XContact_discovery *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XContact_discovery_WriteReg(InstancePtr->Axilites_BaseAddress, XCONTACT_DISCOVERY_AXILITES_ADDR_GIE, 0);
}

void XContact_discovery_InterruptEnable(XContact_discovery *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XContact_discovery_ReadReg(InstancePtr->Axilites_BaseAddress, XCONTACT_DISCOVERY_AXILITES_ADDR_IER);
    XContact_discovery_WriteReg(InstancePtr->Axilites_BaseAddress, XCONTACT_DISCOVERY_AXILITES_ADDR_IER, Register | Mask);
}

void XContact_discovery_InterruptDisable(XContact_discovery *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XContact_discovery_ReadReg(InstancePtr->Axilites_BaseAddress, XCONTACT_DISCOVERY_AXILITES_ADDR_IER);
    XContact_discovery_WriteReg(InstancePtr->Axilites_BaseAddress, XCONTACT_DISCOVERY_AXILITES_ADDR_IER, Register & (~Mask));
}

void XContact_discovery_InterruptClear(XContact_discovery *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XContact_discovery_WriteReg(InstancePtr->Axilites_BaseAddress, XCONTACT_DISCOVERY_AXILITES_ADDR_ISR, Mask);
}

u32 XContact_discovery_InterruptGetEnabled(XContact_discovery *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XContact_discovery_ReadReg(InstancePtr->Axilites_BaseAddress, XCONTACT_DISCOVERY_AXILITES_ADDR_IER);
}

u32 XContact_discovery_InterruptGetStatus(XContact_discovery *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XContact_discovery_ReadReg(InstancePtr->Axilites_BaseAddress, XCONTACT_DISCOVERY_AXILITES_ADDR_ISR);
}

