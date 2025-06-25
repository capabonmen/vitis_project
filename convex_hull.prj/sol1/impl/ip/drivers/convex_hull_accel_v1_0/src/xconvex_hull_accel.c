// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2 (64-bit)
// Tool Version Limit: 2023.10
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xconvex_hull_accel.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XConvex_hull_accel_CfgInitialize(XConvex_hull_accel *InstancePtr, XConvex_hull_accel_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->Control_r_BaseAddress = ConfigPtr->Control_r_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XConvex_hull_accel_Start(XConvex_hull_accel *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XConvex_hull_accel_ReadReg(InstancePtr->Control_BaseAddress, XCONVEX_HULL_ACCEL_CONTROL_ADDR_AP_CTRL) & 0x80;
    XConvex_hull_accel_WriteReg(InstancePtr->Control_BaseAddress, XCONVEX_HULL_ACCEL_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XConvex_hull_accel_IsDone(XConvex_hull_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XConvex_hull_accel_ReadReg(InstancePtr->Control_BaseAddress, XCONVEX_HULL_ACCEL_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XConvex_hull_accel_IsIdle(XConvex_hull_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XConvex_hull_accel_ReadReg(InstancePtr->Control_BaseAddress, XCONVEX_HULL_ACCEL_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XConvex_hull_accel_IsReady(XConvex_hull_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XConvex_hull_accel_ReadReg(InstancePtr->Control_BaseAddress, XCONVEX_HULL_ACCEL_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XConvex_hull_accel_EnableAutoRestart(XConvex_hull_accel *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XConvex_hull_accel_WriteReg(InstancePtr->Control_BaseAddress, XCONVEX_HULL_ACCEL_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XConvex_hull_accel_DisableAutoRestart(XConvex_hull_accel *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XConvex_hull_accel_WriteReg(InstancePtr->Control_BaseAddress, XCONVEX_HULL_ACCEL_CONTROL_ADDR_AP_CTRL, 0);
}

void XConvex_hull_accel_Set_rows(XConvex_hull_accel *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XConvex_hull_accel_WriteReg(InstancePtr->Control_BaseAddress, XCONVEX_HULL_ACCEL_CONTROL_ADDR_ROWS_DATA, Data);
}

u32 XConvex_hull_accel_Get_rows(XConvex_hull_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XConvex_hull_accel_ReadReg(InstancePtr->Control_BaseAddress, XCONVEX_HULL_ACCEL_CONTROL_ADDR_ROWS_DATA);
    return Data;
}

void XConvex_hull_accel_Set_cols(XConvex_hull_accel *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XConvex_hull_accel_WriteReg(InstancePtr->Control_BaseAddress, XCONVEX_HULL_ACCEL_CONTROL_ADDR_COLS_DATA, Data);
}

u32 XConvex_hull_accel_Get_cols(XConvex_hull_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XConvex_hull_accel_ReadReg(InstancePtr->Control_BaseAddress, XCONVEX_HULL_ACCEL_CONTROL_ADDR_COLS_DATA);
    return Data;
}

u32 XConvex_hull_accel_Get_hull_size(XConvex_hull_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XConvex_hull_accel_ReadReg(InstancePtr->Control_BaseAddress, XCONVEX_HULL_ACCEL_CONTROL_ADDR_HULL_SIZE_DATA);
    return Data;
}

u32 XConvex_hull_accel_Get_hull_size_vld(XConvex_hull_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XConvex_hull_accel_ReadReg(InstancePtr->Control_BaseAddress, XCONVEX_HULL_ACCEL_CONTROL_ADDR_HULL_SIZE_CTRL);
    return Data & 0x1;
}

void XConvex_hull_accel_Set_in_data(XConvex_hull_accel *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XConvex_hull_accel_WriteReg(InstancePtr->Control_r_BaseAddress, XCONVEX_HULL_ACCEL_CONTROL_R_ADDR_IN_DATA_DATA, (u32)(Data));
    XConvex_hull_accel_WriteReg(InstancePtr->Control_r_BaseAddress, XCONVEX_HULL_ACCEL_CONTROL_R_ADDR_IN_DATA_DATA + 4, (u32)(Data >> 32));
}

u64 XConvex_hull_accel_Get_in_data(XConvex_hull_accel *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XConvex_hull_accel_ReadReg(InstancePtr->Control_r_BaseAddress, XCONVEX_HULL_ACCEL_CONTROL_R_ADDR_IN_DATA_DATA);
    Data += (u64)XConvex_hull_accel_ReadReg(InstancePtr->Control_r_BaseAddress, XCONVEX_HULL_ACCEL_CONTROL_R_ADDR_IN_DATA_DATA + 4) << 32;
    return Data;
}

void XConvex_hull_accel_Set_out_data(XConvex_hull_accel *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XConvex_hull_accel_WriteReg(InstancePtr->Control_r_BaseAddress, XCONVEX_HULL_ACCEL_CONTROL_R_ADDR_OUT_DATA_DATA, (u32)(Data));
    XConvex_hull_accel_WriteReg(InstancePtr->Control_r_BaseAddress, XCONVEX_HULL_ACCEL_CONTROL_R_ADDR_OUT_DATA_DATA + 4, (u32)(Data >> 32));
}

u64 XConvex_hull_accel_Get_out_data(XConvex_hull_accel *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XConvex_hull_accel_ReadReg(InstancePtr->Control_r_BaseAddress, XCONVEX_HULL_ACCEL_CONTROL_R_ADDR_OUT_DATA_DATA);
    Data += (u64)XConvex_hull_accel_ReadReg(InstancePtr->Control_r_BaseAddress, XCONVEX_HULL_ACCEL_CONTROL_R_ADDR_OUT_DATA_DATA + 4) << 32;
    return Data;
}

void XConvex_hull_accel_InterruptGlobalEnable(XConvex_hull_accel *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XConvex_hull_accel_WriteReg(InstancePtr->Control_BaseAddress, XCONVEX_HULL_ACCEL_CONTROL_ADDR_GIE, 1);
}

void XConvex_hull_accel_InterruptGlobalDisable(XConvex_hull_accel *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XConvex_hull_accel_WriteReg(InstancePtr->Control_BaseAddress, XCONVEX_HULL_ACCEL_CONTROL_ADDR_GIE, 0);
}

void XConvex_hull_accel_InterruptEnable(XConvex_hull_accel *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XConvex_hull_accel_ReadReg(InstancePtr->Control_BaseAddress, XCONVEX_HULL_ACCEL_CONTROL_ADDR_IER);
    XConvex_hull_accel_WriteReg(InstancePtr->Control_BaseAddress, XCONVEX_HULL_ACCEL_CONTROL_ADDR_IER, Register | Mask);
}

void XConvex_hull_accel_InterruptDisable(XConvex_hull_accel *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XConvex_hull_accel_ReadReg(InstancePtr->Control_BaseAddress, XCONVEX_HULL_ACCEL_CONTROL_ADDR_IER);
    XConvex_hull_accel_WriteReg(InstancePtr->Control_BaseAddress, XCONVEX_HULL_ACCEL_CONTROL_ADDR_IER, Register & (~Mask));
}

void XConvex_hull_accel_InterruptClear(XConvex_hull_accel *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XConvex_hull_accel_WriteReg(InstancePtr->Control_BaseAddress, XCONVEX_HULL_ACCEL_CONTROL_ADDR_ISR, Mask);
}

u32 XConvex_hull_accel_InterruptGetEnabled(XConvex_hull_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XConvex_hull_accel_ReadReg(InstancePtr->Control_BaseAddress, XCONVEX_HULL_ACCEL_CONTROL_ADDR_IER);
}

u32 XConvex_hull_accel_InterruptGetStatus(XConvex_hull_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XConvex_hull_accel_ReadReg(InstancePtr->Control_BaseAddress, XCONVEX_HULL_ACCEL_CONTROL_ADDR_ISR);
}

