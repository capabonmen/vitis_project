// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2 (64-bit)
// Tool Version Limit: 2023.10
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#ifdef SDT
#include "xparameters.h"
#endif
#include "xconvex_hull_accel.h"

extern XConvex_hull_accel_Config XConvex_hull_accel_ConfigTable[];

#ifdef SDT
XConvex_hull_accel_Config *XConvex_hull_accel_LookupConfig(UINTPTR BaseAddress) {
	XConvex_hull_accel_Config *ConfigPtr = NULL;

	int Index;

	for (Index = (u32)0x0; XConvex_hull_accel_ConfigTable[Index].Name != NULL; Index++) {
		if (!BaseAddress || XConvex_hull_accel_ConfigTable[Index].Control_BaseAddress == BaseAddress) {
			ConfigPtr = &XConvex_hull_accel_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XConvex_hull_accel_Initialize(XConvex_hull_accel *InstancePtr, UINTPTR BaseAddress) {
	XConvex_hull_accel_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XConvex_hull_accel_LookupConfig(BaseAddress);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XConvex_hull_accel_CfgInitialize(InstancePtr, ConfigPtr);
}
#else
XConvex_hull_accel_Config *XConvex_hull_accel_LookupConfig(u16 DeviceId) {
	XConvex_hull_accel_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XCONVEX_HULL_ACCEL_NUM_INSTANCES; Index++) {
		if (XConvex_hull_accel_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XConvex_hull_accel_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XConvex_hull_accel_Initialize(XConvex_hull_accel *InstancePtr, u16 DeviceId) {
	XConvex_hull_accel_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XConvex_hull_accel_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XConvex_hull_accel_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif

#endif

