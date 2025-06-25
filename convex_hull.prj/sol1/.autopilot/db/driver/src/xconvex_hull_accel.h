// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2 (64-bit)
// Tool Version Limit: 2023.10
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XCONVEX_HULL_ACCEL_H
#define XCONVEX_HULL_ACCEL_H

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
#include "xconvex_hull_accel_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
#ifdef SDT
    char *Name;
#else
    u16 DeviceId;
#endif
    u64 Control_BaseAddress;
    u64 Control_r_BaseAddress;
} XConvex_hull_accel_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u64 Control_r_BaseAddress;
    u32 IsReady;
} XConvex_hull_accel;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XConvex_hull_accel_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XConvex_hull_accel_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XConvex_hull_accel_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XConvex_hull_accel_ReadReg(BaseAddress, RegOffset) \
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
#ifdef SDT
int XConvex_hull_accel_Initialize(XConvex_hull_accel *InstancePtr, UINTPTR BaseAddress);
XConvex_hull_accel_Config* XConvex_hull_accel_LookupConfig(UINTPTR BaseAddress);
#else
int XConvex_hull_accel_Initialize(XConvex_hull_accel *InstancePtr, u16 DeviceId);
XConvex_hull_accel_Config* XConvex_hull_accel_LookupConfig(u16 DeviceId);
#endif
int XConvex_hull_accel_CfgInitialize(XConvex_hull_accel *InstancePtr, XConvex_hull_accel_Config *ConfigPtr);
#else
int XConvex_hull_accel_Initialize(XConvex_hull_accel *InstancePtr, const char* InstanceName);
int XConvex_hull_accel_Release(XConvex_hull_accel *InstancePtr);
#endif

void XConvex_hull_accel_Start(XConvex_hull_accel *InstancePtr);
u32 XConvex_hull_accel_IsDone(XConvex_hull_accel *InstancePtr);
u32 XConvex_hull_accel_IsIdle(XConvex_hull_accel *InstancePtr);
u32 XConvex_hull_accel_IsReady(XConvex_hull_accel *InstancePtr);
void XConvex_hull_accel_EnableAutoRestart(XConvex_hull_accel *InstancePtr);
void XConvex_hull_accel_DisableAutoRestart(XConvex_hull_accel *InstancePtr);

void XConvex_hull_accel_Set_rows(XConvex_hull_accel *InstancePtr, u32 Data);
u32 XConvex_hull_accel_Get_rows(XConvex_hull_accel *InstancePtr);
void XConvex_hull_accel_Set_cols(XConvex_hull_accel *InstancePtr, u32 Data);
u32 XConvex_hull_accel_Get_cols(XConvex_hull_accel *InstancePtr);
u32 XConvex_hull_accel_Get_hull_size(XConvex_hull_accel *InstancePtr);
u32 XConvex_hull_accel_Get_hull_size_vld(XConvex_hull_accel *InstancePtr);
void XConvex_hull_accel_Set_in_data(XConvex_hull_accel *InstancePtr, u64 Data);
u64 XConvex_hull_accel_Get_in_data(XConvex_hull_accel *InstancePtr);
void XConvex_hull_accel_Set_out_data(XConvex_hull_accel *InstancePtr, u64 Data);
u64 XConvex_hull_accel_Get_out_data(XConvex_hull_accel *InstancePtr);

void XConvex_hull_accel_InterruptGlobalEnable(XConvex_hull_accel *InstancePtr);
void XConvex_hull_accel_InterruptGlobalDisable(XConvex_hull_accel *InstancePtr);
void XConvex_hull_accel_InterruptEnable(XConvex_hull_accel *InstancePtr, u32 Mask);
void XConvex_hull_accel_InterruptDisable(XConvex_hull_accel *InstancePtr, u32 Mask);
void XConvex_hull_accel_InterruptClear(XConvex_hull_accel *InstancePtr, u32 Mask);
u32 XConvex_hull_accel_InterruptGetEnabled(XConvex_hull_accel *InstancePtr);
u32 XConvex_hull_accel_InterruptGetStatus(XConvex_hull_accel *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
