// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.4
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

#ifndef XAES_BASIC_H
#define XAES_BASIC_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xaes_basic_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
#else
typedef struct {
    u16 DeviceId;
    u32 Axilites_BaseAddress;
} XAes_basic_Config;
#endif

typedef struct {
    u32 Axilites_BaseAddress;
    u32 IsReady;
} XAes_basic;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XAes_basic_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XAes_basic_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XAes_basic_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XAes_basic_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XAes_basic_Initialize(XAes_basic *InstancePtr, u16 DeviceId);
XAes_basic_Config* XAes_basic_LookupConfig(u16 DeviceId);
int XAes_basic_CfgInitialize(XAes_basic *InstancePtr, XAes_basic_Config *ConfigPtr);
#else
int XAes_basic_Initialize(XAes_basic *InstancePtr, const char* InstanceName);
int XAes_basic_Release(XAes_basic *InstancePtr);
#endif

void XAes_basic_Start(XAes_basic *InstancePtr);
u32 XAes_basic_IsDone(XAes_basic *InstancePtr);
u32 XAes_basic_IsIdle(XAes_basic *InstancePtr);
u32 XAes_basic_IsReady(XAes_basic *InstancePtr);
void XAes_basic_EnableAutoRestart(XAes_basic *InstancePtr);
void XAes_basic_DisableAutoRestart(XAes_basic *InstancePtr);
u32 XAes_basic_Get_return(XAes_basic *InstancePtr);

u32 XAes_basic_Get_data_in_BaseAddress(XAes_basic *InstancePtr);
u32 XAes_basic_Get_data_in_HighAddress(XAes_basic *InstancePtr);
u32 XAes_basic_Get_data_in_TotalBytes(XAes_basic *InstancePtr);
u32 XAes_basic_Get_data_in_BitWidth(XAes_basic *InstancePtr);
u32 XAes_basic_Get_data_in_Depth(XAes_basic *InstancePtr);
u32 XAes_basic_Write_data_in_Words(XAes_basic *InstancePtr, int offset, int *data, int length);
u32 XAes_basic_Read_data_in_Words(XAes_basic *InstancePtr, int offset, int *data, int length);
u32 XAes_basic_Write_data_in_Bytes(XAes_basic *InstancePtr, int offset, char *data, int length);
u32 XAes_basic_Read_data_in_Bytes(XAes_basic *InstancePtr, int offset, char *data, int length);
u32 XAes_basic_Get_data_out_BaseAddress(XAes_basic *InstancePtr);
u32 XAes_basic_Get_data_out_HighAddress(XAes_basic *InstancePtr);
u32 XAes_basic_Get_data_out_TotalBytes(XAes_basic *InstancePtr);
u32 XAes_basic_Get_data_out_BitWidth(XAes_basic *InstancePtr);
u32 XAes_basic_Get_data_out_Depth(XAes_basic *InstancePtr);
u32 XAes_basic_Write_data_out_Words(XAes_basic *InstancePtr, int offset, int *data, int length);
u32 XAes_basic_Read_data_out_Words(XAes_basic *InstancePtr, int offset, int *data, int length);
u32 XAes_basic_Write_data_out_Bytes(XAes_basic *InstancePtr, int offset, char *data, int length);
u32 XAes_basic_Read_data_out_Bytes(XAes_basic *InstancePtr, int offset, char *data, int length);

void XAes_basic_InterruptGlobalEnable(XAes_basic *InstancePtr);
void XAes_basic_InterruptGlobalDisable(XAes_basic *InstancePtr);
void XAes_basic_InterruptEnable(XAes_basic *InstancePtr, u32 Mask);
void XAes_basic_InterruptDisable(XAes_basic *InstancePtr, u32 Mask);
void XAes_basic_InterruptClear(XAes_basic *InstancePtr, u32 Mask);
u32 XAes_basic_InterruptGetEnabled(XAes_basic *InstancePtr);
u32 XAes_basic_InterruptGetStatus(XAes_basic *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif