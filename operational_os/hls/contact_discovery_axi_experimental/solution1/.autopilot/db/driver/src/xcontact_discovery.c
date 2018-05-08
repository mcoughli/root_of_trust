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

void XContact_discovery_Set_contact_in_V(XContact_discovery *InstancePtr, XContact_discovery_Contact_in_v Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XContact_discovery_WriteReg(InstancePtr->Axilites_BaseAddress, XCONTACT_DISCOVERY_AXILITES_ADDR_CONTACT_IN_V_DATA + 0, Data.word_0);
    XContact_discovery_WriteReg(InstancePtr->Axilites_BaseAddress, XCONTACT_DISCOVERY_AXILITES_ADDR_CONTACT_IN_V_DATA + 4, Data.word_1);
    XContact_discovery_WriteReg(InstancePtr->Axilites_BaseAddress, XCONTACT_DISCOVERY_AXILITES_ADDR_CONTACT_IN_V_DATA + 8, Data.word_2);
    XContact_discovery_WriteReg(InstancePtr->Axilites_BaseAddress, XCONTACT_DISCOVERY_AXILITES_ADDR_CONTACT_IN_V_DATA + 12, Data.word_3);
    XContact_discovery_WriteReg(InstancePtr->Axilites_BaseAddress, XCONTACT_DISCOVERY_AXILITES_ADDR_CONTACT_IN_V_DATA + 16, Data.word_4);
    XContact_discovery_WriteReg(InstancePtr->Axilites_BaseAddress, XCONTACT_DISCOVERY_AXILITES_ADDR_CONTACT_IN_V_DATA + 20, Data.word_5);
    XContact_discovery_WriteReg(InstancePtr->Axilites_BaseAddress, XCONTACT_DISCOVERY_AXILITES_ADDR_CONTACT_IN_V_DATA + 24, Data.word_6);
    XContact_discovery_WriteReg(InstancePtr->Axilites_BaseAddress, XCONTACT_DISCOVERY_AXILITES_ADDR_CONTACT_IN_V_DATA + 28, Data.word_7);
    XContact_discovery_WriteReg(InstancePtr->Axilites_BaseAddress, XCONTACT_DISCOVERY_AXILITES_ADDR_CONTACT_IN_V_DATA + 32, Data.word_8);
    XContact_discovery_WriteReg(InstancePtr->Axilites_BaseAddress, XCONTACT_DISCOVERY_AXILITES_ADDR_CONTACT_IN_V_DATA + 36, Data.word_9);
    XContact_discovery_WriteReg(InstancePtr->Axilites_BaseAddress, XCONTACT_DISCOVERY_AXILITES_ADDR_CONTACT_IN_V_DATA + 40, Data.word_10);
    XContact_discovery_WriteReg(InstancePtr->Axilites_BaseAddress, XCONTACT_DISCOVERY_AXILITES_ADDR_CONTACT_IN_V_DATA + 44, Data.word_11);
    XContact_discovery_WriteReg(InstancePtr->Axilites_BaseAddress, XCONTACT_DISCOVERY_AXILITES_ADDR_CONTACT_IN_V_DATA + 48, Data.word_12);
    XContact_discovery_WriteReg(InstancePtr->Axilites_BaseAddress, XCONTACT_DISCOVERY_AXILITES_ADDR_CONTACT_IN_V_DATA + 52, Data.word_13);
    XContact_discovery_WriteReg(InstancePtr->Axilites_BaseAddress, XCONTACT_DISCOVERY_AXILITES_ADDR_CONTACT_IN_V_DATA + 56, Data.word_14);
    XContact_discovery_WriteReg(InstancePtr->Axilites_BaseAddress, XCONTACT_DISCOVERY_AXILITES_ADDR_CONTACT_IN_V_DATA + 60, Data.word_15);
}

XContact_discovery_Contact_in_v XContact_discovery_Get_contact_in_V(XContact_discovery *InstancePtr) {
    XContact_discovery_Contact_in_v Data;

    Data.word_0 = XContact_discovery_ReadReg(InstancePtr->Axilites_BaseAddress, XCONTACT_DISCOVERY_AXILITES_ADDR_CONTACT_IN_V_DATA + 0);
    Data.word_1 = XContact_discovery_ReadReg(InstancePtr->Axilites_BaseAddress, XCONTACT_DISCOVERY_AXILITES_ADDR_CONTACT_IN_V_DATA + 4);
    Data.word_2 = XContact_discovery_ReadReg(InstancePtr->Axilites_BaseAddress, XCONTACT_DISCOVERY_AXILITES_ADDR_CONTACT_IN_V_DATA + 8);
    Data.word_3 = XContact_discovery_ReadReg(InstancePtr->Axilites_BaseAddress, XCONTACT_DISCOVERY_AXILITES_ADDR_CONTACT_IN_V_DATA + 12);
    Data.word_4 = XContact_discovery_ReadReg(InstancePtr->Axilites_BaseAddress, XCONTACT_DISCOVERY_AXILITES_ADDR_CONTACT_IN_V_DATA + 16);
    Data.word_5 = XContact_discovery_ReadReg(InstancePtr->Axilites_BaseAddress, XCONTACT_DISCOVERY_AXILITES_ADDR_CONTACT_IN_V_DATA + 20);
    Data.word_6 = XContact_discovery_ReadReg(InstancePtr->Axilites_BaseAddress, XCONTACT_DISCOVERY_AXILITES_ADDR_CONTACT_IN_V_DATA + 24);
    Data.word_7 = XContact_discovery_ReadReg(InstancePtr->Axilites_BaseAddress, XCONTACT_DISCOVERY_AXILITES_ADDR_CONTACT_IN_V_DATA + 28);
    Data.word_8 = XContact_discovery_ReadReg(InstancePtr->Axilites_BaseAddress, XCONTACT_DISCOVERY_AXILITES_ADDR_CONTACT_IN_V_DATA + 32);
    Data.word_9 = XContact_discovery_ReadReg(InstancePtr->Axilites_BaseAddress, XCONTACT_DISCOVERY_AXILITES_ADDR_CONTACT_IN_V_DATA + 36);
    Data.word_10 = XContact_discovery_ReadReg(InstancePtr->Axilites_BaseAddress, XCONTACT_DISCOVERY_AXILITES_ADDR_CONTACT_IN_V_DATA + 40);
    Data.word_11 = XContact_discovery_ReadReg(InstancePtr->Axilites_BaseAddress, XCONTACT_DISCOVERY_AXILITES_ADDR_CONTACT_IN_V_DATA + 44);
    Data.word_12 = XContact_discovery_ReadReg(InstancePtr->Axilites_BaseAddress, XCONTACT_DISCOVERY_AXILITES_ADDR_CONTACT_IN_V_DATA + 48);
    Data.word_13 = XContact_discovery_ReadReg(InstancePtr->Axilites_BaseAddress, XCONTACT_DISCOVERY_AXILITES_ADDR_CONTACT_IN_V_DATA + 52);
    Data.word_14 = XContact_discovery_ReadReg(InstancePtr->Axilites_BaseAddress, XCONTACT_DISCOVERY_AXILITES_ADDR_CONTACT_IN_V_DATA + 56);
    Data.word_15 = XContact_discovery_ReadReg(InstancePtr->Axilites_BaseAddress, XCONTACT_DISCOVERY_AXILITES_ADDR_CONTACT_IN_V_DATA + 60);
    return Data;
}

void XContact_discovery_Set_offset(XContact_discovery *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XContact_discovery_WriteReg(InstancePtr->Axilites_BaseAddress, XCONTACT_DISCOVERY_AXILITES_ADDR_OFFSET_DATA, (u32)(Data));
    XContact_discovery_WriteReg(InstancePtr->Axilites_BaseAddress, XCONTACT_DISCOVERY_AXILITES_ADDR_OFFSET_DATA + 4, (u32)(Data >> 32));
}

u64 XContact_discovery_Get_offset(XContact_discovery *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XContact_discovery_ReadReg(InstancePtr->Axilites_BaseAddress, XCONTACT_DISCOVERY_AXILITES_ADDR_OFFSET_DATA);
    Data += (u64)XContact_discovery_ReadReg(InstancePtr->Axilites_BaseAddress, XCONTACT_DISCOVERY_AXILITES_ADDR_OFFSET_DATA + 4) << 32;
    return Data;
}

void XContact_discovery_Set_db_size_in(XContact_discovery *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XContact_discovery_WriteReg(InstancePtr->Axilites_BaseAddress, XCONTACT_DISCOVERY_AXILITES_ADDR_DB_SIZE_IN_DATA, Data);
}

u32 XContact_discovery_Get_db_size_in(XContact_discovery *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XContact_discovery_ReadReg(InstancePtr->Axilites_BaseAddress, XCONTACT_DISCOVERY_AXILITES_ADDR_DB_SIZE_IN_DATA);
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

