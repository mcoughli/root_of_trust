// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.1
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

#ifndef XED25519_SIGN_H
#define XED25519_SIGN_H

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
#include "xed25519_sign_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
#else
typedef struct {
    u16 DeviceId;
    u32 Axilites_BaseAddress;
} XEd25519_sign_Config;
#endif

typedef struct {
    u32 Axilites_BaseAddress;
    u32 IsReady;
} XEd25519_sign;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XEd25519_sign_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XEd25519_sign_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XEd25519_sign_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XEd25519_sign_ReadReg(BaseAddress, RegOffset) \
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
int XEd25519_sign_Initialize(XEd25519_sign *InstancePtr, u16 DeviceId);
XEd25519_sign_Config* XEd25519_sign_LookupConfig(u16 DeviceId);
int XEd25519_sign_CfgInitialize(XEd25519_sign *InstancePtr, XEd25519_sign_Config *ConfigPtr);
#else
int XEd25519_sign_Initialize(XEd25519_sign *InstancePtr, const char* InstanceName);
int XEd25519_sign_Release(XEd25519_sign *InstancePtr);
#endif

void XEd25519_sign_Start(XEd25519_sign *InstancePtr);
u32 XEd25519_sign_IsDone(XEd25519_sign *InstancePtr);
u32 XEd25519_sign_IsIdle(XEd25519_sign *InstancePtr);
u32 XEd25519_sign_IsReady(XEd25519_sign *InstancePtr);
void XEd25519_sign_EnableAutoRestart(XEd25519_sign *InstancePtr);
void XEd25519_sign_DisableAutoRestart(XEd25519_sign *InstancePtr);

void XEd25519_sign_Set_blocks_in(XEd25519_sign *InstancePtr, u64 Data);
u64 XEd25519_sign_Get_blocks_in(XEd25519_sign *InstancePtr);
void XEd25519_sign_Set_blocks_in_vld(XEd25519_sign *InstancePtr);
u32 XEd25519_sign_Get_blocks_in_vld(XEd25519_sign *InstancePtr);
u32 XEd25519_sign_Get_signature_BaseAddress(XEd25519_sign *InstancePtr);
u32 XEd25519_sign_Get_signature_HighAddress(XEd25519_sign *InstancePtr);
u32 XEd25519_sign_Get_signature_TotalBytes(XEd25519_sign *InstancePtr);
u32 XEd25519_sign_Get_signature_BitWidth(XEd25519_sign *InstancePtr);
u32 XEd25519_sign_Get_signature_Depth(XEd25519_sign *InstancePtr);
u32 XEd25519_sign_Write_signature_Words(XEd25519_sign *InstancePtr, int offset, int *data, int length);
u32 XEd25519_sign_Read_signature_Words(XEd25519_sign *InstancePtr, int offset, int *data, int length);
u32 XEd25519_sign_Write_signature_Bytes(XEd25519_sign *InstancePtr, int offset, char *data, int length);
u32 XEd25519_sign_Read_signature_Bytes(XEd25519_sign *InstancePtr, int offset, char *data, int length);
u32 XEd25519_sign_Get_public_key_BaseAddress(XEd25519_sign *InstancePtr);
u32 XEd25519_sign_Get_public_key_HighAddress(XEd25519_sign *InstancePtr);
u32 XEd25519_sign_Get_public_key_TotalBytes(XEd25519_sign *InstancePtr);
u32 XEd25519_sign_Get_public_key_BitWidth(XEd25519_sign *InstancePtr);
u32 XEd25519_sign_Get_public_key_Depth(XEd25519_sign *InstancePtr);
u32 XEd25519_sign_Write_public_key_Words(XEd25519_sign *InstancePtr, int offset, int *data, int length);
u32 XEd25519_sign_Read_public_key_Words(XEd25519_sign *InstancePtr, int offset, int *data, int length);
u32 XEd25519_sign_Write_public_key_Bytes(XEd25519_sign *InstancePtr, int offset, char *data, int length);
u32 XEd25519_sign_Read_public_key_Bytes(XEd25519_sign *InstancePtr, int offset, char *data, int length);
u32 XEd25519_sign_Get_private_key_BaseAddress(XEd25519_sign *InstancePtr);
u32 XEd25519_sign_Get_private_key_HighAddress(XEd25519_sign *InstancePtr);
u32 XEd25519_sign_Get_private_key_TotalBytes(XEd25519_sign *InstancePtr);
u32 XEd25519_sign_Get_private_key_BitWidth(XEd25519_sign *InstancePtr);
u32 XEd25519_sign_Get_private_key_Depth(XEd25519_sign *InstancePtr);
u32 XEd25519_sign_Write_private_key_Words(XEd25519_sign *InstancePtr, int offset, int *data, int length);
u32 XEd25519_sign_Read_private_key_Words(XEd25519_sign *InstancePtr, int offset, int *data, int length);
u32 XEd25519_sign_Write_private_key_Bytes(XEd25519_sign *InstancePtr, int offset, char *data, int length);
u32 XEd25519_sign_Read_private_key_Bytes(XEd25519_sign *InstancePtr, int offset, char *data, int length);

void XEd25519_sign_InterruptGlobalEnable(XEd25519_sign *InstancePtr);
void XEd25519_sign_InterruptGlobalDisable(XEd25519_sign *InstancePtr);
void XEd25519_sign_InterruptEnable(XEd25519_sign *InstancePtr, u32 Mask);
void XEd25519_sign_InterruptDisable(XEd25519_sign *InstancePtr, u32 Mask);
void XEd25519_sign_InterruptClear(XEd25519_sign *InstancePtr, u32 Mask);
u32 XEd25519_sign_InterruptGetEnabled(XEd25519_sign *InstancePtr);
u32 XEd25519_sign_InterruptGetStatus(XEd25519_sign *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif