// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2 (64-bit)
// Tool Version Limit: 2023.10
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
// control
// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read/COR)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read/COR)
//        bit 7  - auto_restart (Read/Write)
//        bit 9  - interrupt (Read)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0 - enable ap_done interrupt (Read/Write)
//        bit 1 - enable ap_ready interrupt (Read/Write)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0 - ap_done (Read/TOW)
//        bit 1 - ap_ready (Read/TOW)
//        others - reserved
// 0x10 : Data signal of rows
//        bit 31~0 - rows[31:0] (Read/Write)
// 0x14 : reserved
// 0x18 : Data signal of cols
//        bit 31~0 - cols[31:0] (Read/Write)
// 0x1c : reserved
// 0x20 : Data signal of hull_size
//        bit 31~0 - hull_size[31:0] (Read)
// 0x24 : Control signal of hull_size
//        bit 0  - hull_size_ap_vld (Read/COR)
//        others - reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XCONVEX_HULL_ACCEL_CONTROL_ADDR_AP_CTRL        0x00
#define XCONVEX_HULL_ACCEL_CONTROL_ADDR_GIE            0x04
#define XCONVEX_HULL_ACCEL_CONTROL_ADDR_IER            0x08
#define XCONVEX_HULL_ACCEL_CONTROL_ADDR_ISR            0x0c
#define XCONVEX_HULL_ACCEL_CONTROL_ADDR_ROWS_DATA      0x10
#define XCONVEX_HULL_ACCEL_CONTROL_BITS_ROWS_DATA      32
#define XCONVEX_HULL_ACCEL_CONTROL_ADDR_COLS_DATA      0x18
#define XCONVEX_HULL_ACCEL_CONTROL_BITS_COLS_DATA      32
#define XCONVEX_HULL_ACCEL_CONTROL_ADDR_HULL_SIZE_DATA 0x20
#define XCONVEX_HULL_ACCEL_CONTROL_BITS_HULL_SIZE_DATA 32
#define XCONVEX_HULL_ACCEL_CONTROL_ADDR_HULL_SIZE_CTRL 0x24

// control_r
// 0x00 : reserved
// 0x04 : reserved
// 0x08 : reserved
// 0x0c : reserved
// 0x10 : Data signal of in_data
//        bit 31~0 - in_data[31:0] (Read/Write)
// 0x14 : Data signal of in_data
//        bit 31~0 - in_data[63:32] (Read/Write)
// 0x18 : reserved
// 0x1c : Data signal of out_data
//        bit 31~0 - out_data[31:0] (Read/Write)
// 0x20 : Data signal of out_data
//        bit 31~0 - out_data[63:32] (Read/Write)
// 0x24 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XCONVEX_HULL_ACCEL_CONTROL_R_ADDR_IN_DATA_DATA  0x10
#define XCONVEX_HULL_ACCEL_CONTROL_R_BITS_IN_DATA_DATA  64
#define XCONVEX_HULL_ACCEL_CONTROL_R_ADDR_OUT_DATA_DATA 0x1c
#define XCONVEX_HULL_ACCEL_CONTROL_R_BITS_OUT_DATA_DATA 64

