// (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// (c) Copyright 2022-2025 Advanced Micro Devices, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of AMD and is protected under U.S. and international copyright
// and other intellectual property laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:hls:convex_hull_accel:1.0
// IP Revision: 2114140842

(* X_CORE_INFO = "convex_hull_accel,Vivado 2023.2" *)
(* CHECK_LICENSE_TYPE = "bd_0_hls_inst_0,convex_hull_accel,{}" *)
(* CORE_GENERATION_INFO = "bd_0_hls_inst_0,convex_hull_accel,{x_ipProduct=Vivado 2023.2,x_ipVendor=xilinx.com,x_ipLibrary=hls,x_ipName=convex_hull_accel,x_ipVersion=1.0,x_ipCoreRevision=2114140842,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_S_AXI_CONTROL_ADDR_WIDTH=6,C_S_AXI_CONTROL_DATA_WIDTH=32,C_S_AXI_CONTROL_R_ADDR_WIDTH=6,C_S_AXI_CONTROL_R_DATA_WIDTH=32,C_M_AXI_GMEM0_ID_WIDTH=1,C_M_AXI_GMEM0_ADDR_WIDTH=64,C_M_AXI_GMEM0_DATA_WIDTH=32,C_M_AXI_GMEM0_AWUSER_WIDTH=1,C_M_AXI_GMEM0_ARUSER_WIDTH=1,C_M_AXI_GMEM0_WUSER_WIDTH=\
1,C_M_AXI_GMEM0_RUSER_WIDTH=1,C_M_AXI_GMEM0_BUSER_WIDTH=1,C_M_AXI_GMEM0_USER_VALUE=0x00000000,C_M_AXI_GMEM0_PROT_VALUE=000,C_M_AXI_GMEM0_CACHE_VALUE=0011,C_M_AXI_GMEM1_ID_WIDTH=1,C_M_AXI_GMEM1_ADDR_WIDTH=64,C_M_AXI_GMEM1_DATA_WIDTH=32,C_M_AXI_GMEM1_AWUSER_WIDTH=1,C_M_AXI_GMEM1_ARUSER_WIDTH=1,C_M_AXI_GMEM1_WUSER_WIDTH=1,C_M_AXI_GMEM1_RUSER_WIDTH=1,C_M_AXI_GMEM1_BUSER_WIDTH=1,C_M_AXI_GMEM1_USER_VALUE=0x00000000,C_M_AXI_GMEM1_PROT_VALUE=000,C_M_AXI_GMEM1_CACHE_VALUE=0011}" *)
(* IP_DEFINITION_SOURCE = "HLS" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module bd_0_hls_inst_0 (
  s_axi_control_AWADDR,
  s_axi_control_AWVALID,
  s_axi_control_AWREADY,
  s_axi_control_WDATA,
  s_axi_control_WSTRB,
  s_axi_control_WVALID,
  s_axi_control_WREADY,
  s_axi_control_BRESP,
  s_axi_control_BVALID,
  s_axi_control_BREADY,
  s_axi_control_ARADDR,
  s_axi_control_ARVALID,
  s_axi_control_ARREADY,
  s_axi_control_RDATA,
  s_axi_control_RRESP,
  s_axi_control_RVALID,
  s_axi_control_RREADY,
  s_axi_control_r_AWADDR,
  s_axi_control_r_AWVALID,
  s_axi_control_r_AWREADY,
  s_axi_control_r_WDATA,
  s_axi_control_r_WSTRB,
  s_axi_control_r_WVALID,
  s_axi_control_r_WREADY,
  s_axi_control_r_BRESP,
  s_axi_control_r_BVALID,
  s_axi_control_r_BREADY,
  s_axi_control_r_ARADDR,
  s_axi_control_r_ARVALID,
  s_axi_control_r_ARREADY,
  s_axi_control_r_RDATA,
  s_axi_control_r_RRESP,
  s_axi_control_r_RVALID,
  s_axi_control_r_RREADY,
  ap_clk,
  ap_rst_n,
  interrupt,
  m_axi_gmem0_AWID,
  m_axi_gmem0_AWADDR,
  m_axi_gmem0_AWLEN,
  m_axi_gmem0_AWSIZE,
  m_axi_gmem0_AWBURST,
  m_axi_gmem0_AWLOCK,
  m_axi_gmem0_AWREGION,
  m_axi_gmem0_AWCACHE,
  m_axi_gmem0_AWPROT,
  m_axi_gmem0_AWQOS,
  m_axi_gmem0_AWVALID,
  m_axi_gmem0_AWREADY,
  m_axi_gmem0_WID,
  m_axi_gmem0_WDATA,
  m_axi_gmem0_WSTRB,
  m_axi_gmem0_WLAST,
  m_axi_gmem0_WVALID,
  m_axi_gmem0_WREADY,
  m_axi_gmem0_BID,
  m_axi_gmem0_BRESP,
  m_axi_gmem0_BVALID,
  m_axi_gmem0_BREADY,
  m_axi_gmem0_ARID,
  m_axi_gmem0_ARADDR,
  m_axi_gmem0_ARLEN,
  m_axi_gmem0_ARSIZE,
  m_axi_gmem0_ARBURST,
  m_axi_gmem0_ARLOCK,
  m_axi_gmem0_ARREGION,
  m_axi_gmem0_ARCACHE,
  m_axi_gmem0_ARPROT,
  m_axi_gmem0_ARQOS,
  m_axi_gmem0_ARVALID,
  m_axi_gmem0_ARREADY,
  m_axi_gmem0_RID,
  m_axi_gmem0_RDATA,
  m_axi_gmem0_RRESP,
  m_axi_gmem0_RLAST,
  m_axi_gmem0_RVALID,
  m_axi_gmem0_RREADY,
  m_axi_gmem1_AWID,
  m_axi_gmem1_AWADDR,
  m_axi_gmem1_AWLEN,
  m_axi_gmem1_AWSIZE,
  m_axi_gmem1_AWBURST,
  m_axi_gmem1_AWLOCK,
  m_axi_gmem1_AWREGION,
  m_axi_gmem1_AWCACHE,
  m_axi_gmem1_AWPROT,
  m_axi_gmem1_AWQOS,
  m_axi_gmem1_AWVALID,
  m_axi_gmem1_AWREADY,
  m_axi_gmem1_WID,
  m_axi_gmem1_WDATA,
  m_axi_gmem1_WSTRB,
  m_axi_gmem1_WLAST,
  m_axi_gmem1_WVALID,
  m_axi_gmem1_WREADY,
  m_axi_gmem1_BID,
  m_axi_gmem1_BRESP,
  m_axi_gmem1_BVALID,
  m_axi_gmem1_BREADY,
  m_axi_gmem1_ARID,
  m_axi_gmem1_ARADDR,
  m_axi_gmem1_ARLEN,
  m_axi_gmem1_ARSIZE,
  m_axi_gmem1_ARBURST,
  m_axi_gmem1_ARLOCK,
  m_axi_gmem1_ARREGION,
  m_axi_gmem1_ARCACHE,
  m_axi_gmem1_ARPROT,
  m_axi_gmem1_ARQOS,
  m_axi_gmem1_ARVALID,
  m_axi_gmem1_ARREADY,
  m_axi_gmem1_RID,
  m_axi_gmem1_RDATA,
  m_axi_gmem1_RRESP,
  m_axi_gmem1_RLAST,
  m_axi_gmem1_RVALID,
  m_axi_gmem1_RREADY
);

(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWADDR" *)
input wire [5 : 0] s_axi_control_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWVALID" *)
input wire s_axi_control_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWREADY" *)
output wire s_axi_control_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WDATA" *)
input wire [31 : 0] s_axi_control_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WSTRB" *)
input wire [3 : 0] s_axi_control_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WVALID" *)
input wire s_axi_control_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WREADY" *)
output wire s_axi_control_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BRESP" *)
output wire [1 : 0] s_axi_control_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BVALID" *)
output wire s_axi_control_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BREADY" *)
input wire s_axi_control_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARADDR" *)
input wire [5 : 0] s_axi_control_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARVALID" *)
input wire s_axi_control_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARREADY" *)
output wire s_axi_control_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RDATA" *)
output wire [31 : 0] s_axi_control_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RRESP" *)
output wire [1 : 0] s_axi_control_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RVALID" *)
output wire s_axi_control_RVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_control, ADDR_WIDTH 6, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, FREQ_HZ 100000000.0, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN bd_0_ap_clk_0, NUM_READ_THREADS 1, NUM_WRITE_THREAD\
S 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RREADY" *)
input wire s_axi_control_RREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control_r AWADDR" *)
input wire [5 : 0] s_axi_control_r_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control_r AWVALID" *)
input wire s_axi_control_r_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control_r AWREADY" *)
output wire s_axi_control_r_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control_r WDATA" *)
input wire [31 : 0] s_axi_control_r_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control_r WSTRB" *)
input wire [3 : 0] s_axi_control_r_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control_r WVALID" *)
input wire s_axi_control_r_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control_r WREADY" *)
output wire s_axi_control_r_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control_r BRESP" *)
output wire [1 : 0] s_axi_control_r_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control_r BVALID" *)
output wire s_axi_control_r_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control_r BREADY" *)
input wire s_axi_control_r_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control_r ARADDR" *)
input wire [5 : 0] s_axi_control_r_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control_r ARVALID" *)
input wire s_axi_control_r_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control_r ARREADY" *)
output wire s_axi_control_r_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control_r RDATA" *)
output wire [31 : 0] s_axi_control_r_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control_r RRESP" *)
output wire [1 : 0] s_axi_control_r_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control_r RVALID" *)
output wire s_axi_control_r_RVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_control_r, ADDR_WIDTH 6, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, FREQ_HZ 100000000.0, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN bd_0_ap_clk_0, NUM_READ_THREADS 1, NUM_WRITE_THRE\
ADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control_r RREADY" *)
input wire s_axi_control_r_RREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axi_control:s_axi_control_r:m_axi_gmem0:m_axi_gmem1, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 100000000.0, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_0_ap_clk_0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *)
input wire ap_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *)
input wire ap_rst_n;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, PortWidth 1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT" *)
output wire interrupt;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 AWID" *)
output wire [0 : 0] m_axi_gmem0_AWID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 AWADDR" *)
output wire [63 : 0] m_axi_gmem0_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 AWLEN" *)
output wire [7 : 0] m_axi_gmem0_AWLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 AWSIZE" *)
output wire [2 : 0] m_axi_gmem0_AWSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 AWBURST" *)
output wire [1 : 0] m_axi_gmem0_AWBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 AWLOCK" *)
output wire [1 : 0] m_axi_gmem0_AWLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 AWREGION" *)
output wire [3 : 0] m_axi_gmem0_AWREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 AWCACHE" *)
output wire [3 : 0] m_axi_gmem0_AWCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 AWPROT" *)
output wire [2 : 0] m_axi_gmem0_AWPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 AWQOS" *)
output wire [3 : 0] m_axi_gmem0_AWQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 AWVALID" *)
output wire m_axi_gmem0_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 AWREADY" *)
input wire m_axi_gmem0_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 WID" *)
output wire [0 : 0] m_axi_gmem0_WID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 WDATA" *)
output wire [31 : 0] m_axi_gmem0_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 WSTRB" *)
output wire [3 : 0] m_axi_gmem0_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 WLAST" *)
output wire m_axi_gmem0_WLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 WVALID" *)
output wire m_axi_gmem0_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 WREADY" *)
input wire m_axi_gmem0_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 BID" *)
input wire [0 : 0] m_axi_gmem0_BID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 BRESP" *)
input wire [1 : 0] m_axi_gmem0_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 BVALID" *)
input wire m_axi_gmem0_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 BREADY" *)
output wire m_axi_gmem0_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 ARID" *)
output wire [0 : 0] m_axi_gmem0_ARID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 ARADDR" *)
output wire [63 : 0] m_axi_gmem0_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 ARLEN" *)
output wire [7 : 0] m_axi_gmem0_ARLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 ARSIZE" *)
output wire [2 : 0] m_axi_gmem0_ARSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 ARBURST" *)
output wire [1 : 0] m_axi_gmem0_ARBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 ARLOCK" *)
output wire [1 : 0] m_axi_gmem0_ARLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 ARREGION" *)
output wire [3 : 0] m_axi_gmem0_ARREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 ARCACHE" *)
output wire [3 : 0] m_axi_gmem0_ARCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 ARPROT" *)
output wire [2 : 0] m_axi_gmem0_ARPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 ARQOS" *)
output wire [3 : 0] m_axi_gmem0_ARQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 ARVALID" *)
output wire m_axi_gmem0_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 ARREADY" *)
input wire m_axi_gmem0_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 RID" *)
input wire [0 : 0] m_axi_gmem0_RID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 RDATA" *)
input wire [31 : 0] m_axi_gmem0_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 RRESP" *)
input wire [1 : 0] m_axi_gmem0_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 RLAST" *)
input wire m_axi_gmem0_RLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 RVALID" *)
input wire m_axi_gmem0_RVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_gmem0, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_READ_BURST_LENGTH 16, MAX_WRITE_BURST_LENGTH 16, MAX_BURST_LENGTH 256, PROTOCOL AXI4, READ_WRITE_MODE READ_ONLY, HAS_BURST 0, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, FREQ_HZ 100000000.0, ID_WIDTH 1, ADDR_WIDTH 64, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, PHASE 0.0, CLK_DOMAIN \
bd_0_ap_clk_0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 RREADY" *)
output wire m_axi_gmem0_RREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem1 AWID" *)
output wire [0 : 0] m_axi_gmem1_AWID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem1 AWADDR" *)
output wire [63 : 0] m_axi_gmem1_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem1 AWLEN" *)
output wire [7 : 0] m_axi_gmem1_AWLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem1 AWSIZE" *)
output wire [2 : 0] m_axi_gmem1_AWSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem1 AWBURST" *)
output wire [1 : 0] m_axi_gmem1_AWBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem1 AWLOCK" *)
output wire [1 : 0] m_axi_gmem1_AWLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem1 AWREGION" *)
output wire [3 : 0] m_axi_gmem1_AWREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem1 AWCACHE" *)
output wire [3 : 0] m_axi_gmem1_AWCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem1 AWPROT" *)
output wire [2 : 0] m_axi_gmem1_AWPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem1 AWQOS" *)
output wire [3 : 0] m_axi_gmem1_AWQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem1 AWVALID" *)
output wire m_axi_gmem1_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem1 AWREADY" *)
input wire m_axi_gmem1_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem1 WID" *)
output wire [0 : 0] m_axi_gmem1_WID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem1 WDATA" *)
output wire [31 : 0] m_axi_gmem1_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem1 WSTRB" *)
output wire [3 : 0] m_axi_gmem1_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem1 WLAST" *)
output wire m_axi_gmem1_WLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem1 WVALID" *)
output wire m_axi_gmem1_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem1 WREADY" *)
input wire m_axi_gmem1_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem1 BID" *)
input wire [0 : 0] m_axi_gmem1_BID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem1 BRESP" *)
input wire [1 : 0] m_axi_gmem1_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem1 BVALID" *)
input wire m_axi_gmem1_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem1 BREADY" *)
output wire m_axi_gmem1_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem1 ARID" *)
output wire [0 : 0] m_axi_gmem1_ARID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem1 ARADDR" *)
output wire [63 : 0] m_axi_gmem1_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem1 ARLEN" *)
output wire [7 : 0] m_axi_gmem1_ARLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem1 ARSIZE" *)
output wire [2 : 0] m_axi_gmem1_ARSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem1 ARBURST" *)
output wire [1 : 0] m_axi_gmem1_ARBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem1 ARLOCK" *)
output wire [1 : 0] m_axi_gmem1_ARLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem1 ARREGION" *)
output wire [3 : 0] m_axi_gmem1_ARREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem1 ARCACHE" *)
output wire [3 : 0] m_axi_gmem1_ARCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem1 ARPROT" *)
output wire [2 : 0] m_axi_gmem1_ARPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem1 ARQOS" *)
output wire [3 : 0] m_axi_gmem1_ARQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem1 ARVALID" *)
output wire m_axi_gmem1_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem1 ARREADY" *)
input wire m_axi_gmem1_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem1 RID" *)
input wire [0 : 0] m_axi_gmem1_RID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem1 RDATA" *)
input wire [31 : 0] m_axi_gmem1_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem1 RRESP" *)
input wire [1 : 0] m_axi_gmem1_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem1 RLAST" *)
input wire m_axi_gmem1_RLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem1 RVALID" *)
input wire m_axi_gmem1_RVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_gmem1, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_READ_BURST_LENGTH 16, MAX_WRITE_BURST_LENGTH 16, MAX_BURST_LENGTH 256, PROTOCOL AXI4, READ_WRITE_MODE WRITE_ONLY, HAS_BURST 0, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, FREQ_HZ 100000000.0, ID_WIDTH 1, ADDR_WIDTH 64, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, PHASE 0.0, CLK_DOMAIN\
 bd_0_ap_clk_0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem1 RREADY" *)
output wire m_axi_gmem1_RREADY;

(* SDX_KERNEL = "true" *)
(* SDX_KERNEL_TYPE = "hls" *)
(* SDX_KERNEL_SYNTH_INST = "inst" *)
  convex_hull_accel #(
    .C_S_AXI_CONTROL_ADDR_WIDTH(6),
    .C_S_AXI_CONTROL_DATA_WIDTH(32),
    .C_S_AXI_CONTROL_R_ADDR_WIDTH(6),
    .C_S_AXI_CONTROL_R_DATA_WIDTH(32),
    .C_M_AXI_GMEM0_ID_WIDTH(1),
    .C_M_AXI_GMEM0_ADDR_WIDTH(64),
    .C_M_AXI_GMEM0_DATA_WIDTH(32),
    .C_M_AXI_GMEM0_AWUSER_WIDTH(1),
    .C_M_AXI_GMEM0_ARUSER_WIDTH(1),
    .C_M_AXI_GMEM0_WUSER_WIDTH(1),
    .C_M_AXI_GMEM0_RUSER_WIDTH(1),
    .C_M_AXI_GMEM0_BUSER_WIDTH(1),
    .C_M_AXI_GMEM0_USER_VALUE(32'H00000000),
    .C_M_AXI_GMEM0_PROT_VALUE(3'B000),
    .C_M_AXI_GMEM0_CACHE_VALUE(4'B0011),
    .C_M_AXI_GMEM1_ID_WIDTH(1),
    .C_M_AXI_GMEM1_ADDR_WIDTH(64),
    .C_M_AXI_GMEM1_DATA_WIDTH(32),
    .C_M_AXI_GMEM1_AWUSER_WIDTH(1),
    .C_M_AXI_GMEM1_ARUSER_WIDTH(1),
    .C_M_AXI_GMEM1_WUSER_WIDTH(1),
    .C_M_AXI_GMEM1_RUSER_WIDTH(1),
    .C_M_AXI_GMEM1_BUSER_WIDTH(1),
    .C_M_AXI_GMEM1_USER_VALUE(32'H00000000),
    .C_M_AXI_GMEM1_PROT_VALUE(3'B000),
    .C_M_AXI_GMEM1_CACHE_VALUE(4'B0011)
  ) inst (
    .s_axi_control_AWADDR(s_axi_control_AWADDR),
    .s_axi_control_AWVALID(s_axi_control_AWVALID),
    .s_axi_control_AWREADY(s_axi_control_AWREADY),
    .s_axi_control_WDATA(s_axi_control_WDATA),
    .s_axi_control_WSTRB(s_axi_control_WSTRB),
    .s_axi_control_WVALID(s_axi_control_WVALID),
    .s_axi_control_WREADY(s_axi_control_WREADY),
    .s_axi_control_BRESP(s_axi_control_BRESP),
    .s_axi_control_BVALID(s_axi_control_BVALID),
    .s_axi_control_BREADY(s_axi_control_BREADY),
    .s_axi_control_ARADDR(s_axi_control_ARADDR),
    .s_axi_control_ARVALID(s_axi_control_ARVALID),
    .s_axi_control_ARREADY(s_axi_control_ARREADY),
    .s_axi_control_RDATA(s_axi_control_RDATA),
    .s_axi_control_RRESP(s_axi_control_RRESP),
    .s_axi_control_RVALID(s_axi_control_RVALID),
    .s_axi_control_RREADY(s_axi_control_RREADY),
    .s_axi_control_r_AWADDR(s_axi_control_r_AWADDR),
    .s_axi_control_r_AWVALID(s_axi_control_r_AWVALID),
    .s_axi_control_r_AWREADY(s_axi_control_r_AWREADY),
    .s_axi_control_r_WDATA(s_axi_control_r_WDATA),
    .s_axi_control_r_WSTRB(s_axi_control_r_WSTRB),
    .s_axi_control_r_WVALID(s_axi_control_r_WVALID),
    .s_axi_control_r_WREADY(s_axi_control_r_WREADY),
    .s_axi_control_r_BRESP(s_axi_control_r_BRESP),
    .s_axi_control_r_BVALID(s_axi_control_r_BVALID),
    .s_axi_control_r_BREADY(s_axi_control_r_BREADY),
    .s_axi_control_r_ARADDR(s_axi_control_r_ARADDR),
    .s_axi_control_r_ARVALID(s_axi_control_r_ARVALID),
    .s_axi_control_r_ARREADY(s_axi_control_r_ARREADY),
    .s_axi_control_r_RDATA(s_axi_control_r_RDATA),
    .s_axi_control_r_RRESP(s_axi_control_r_RRESP),
    .s_axi_control_r_RVALID(s_axi_control_r_RVALID),
    .s_axi_control_r_RREADY(s_axi_control_r_RREADY),
    .ap_clk(ap_clk),
    .ap_rst_n(ap_rst_n),
    .interrupt(interrupt),
    .m_axi_gmem0_AWID(m_axi_gmem0_AWID),
    .m_axi_gmem0_AWADDR(m_axi_gmem0_AWADDR),
    .m_axi_gmem0_AWLEN(m_axi_gmem0_AWLEN),
    .m_axi_gmem0_AWSIZE(m_axi_gmem0_AWSIZE),
    .m_axi_gmem0_AWBURST(m_axi_gmem0_AWBURST),
    .m_axi_gmem0_AWLOCK(m_axi_gmem0_AWLOCK),
    .m_axi_gmem0_AWREGION(m_axi_gmem0_AWREGION),
    .m_axi_gmem0_AWCACHE(m_axi_gmem0_AWCACHE),
    .m_axi_gmem0_AWPROT(m_axi_gmem0_AWPROT),
    .m_axi_gmem0_AWQOS(m_axi_gmem0_AWQOS),
    .m_axi_gmem0_AWUSER(),
    .m_axi_gmem0_AWVALID(m_axi_gmem0_AWVALID),
    .m_axi_gmem0_AWREADY(m_axi_gmem0_AWREADY),
    .m_axi_gmem0_WID(m_axi_gmem0_WID),
    .m_axi_gmem0_WDATA(m_axi_gmem0_WDATA),
    .m_axi_gmem0_WSTRB(m_axi_gmem0_WSTRB),
    .m_axi_gmem0_WLAST(m_axi_gmem0_WLAST),
    .m_axi_gmem0_WUSER(),
    .m_axi_gmem0_WVALID(m_axi_gmem0_WVALID),
    .m_axi_gmem0_WREADY(m_axi_gmem0_WREADY),
    .m_axi_gmem0_BID(m_axi_gmem0_BID),
    .m_axi_gmem0_BRESP(m_axi_gmem0_BRESP),
    .m_axi_gmem0_BUSER(1'B0),
    .m_axi_gmem0_BVALID(m_axi_gmem0_BVALID),
    .m_axi_gmem0_BREADY(m_axi_gmem0_BREADY),
    .m_axi_gmem0_ARID(m_axi_gmem0_ARID),
    .m_axi_gmem0_ARADDR(m_axi_gmem0_ARADDR),
    .m_axi_gmem0_ARLEN(m_axi_gmem0_ARLEN),
    .m_axi_gmem0_ARSIZE(m_axi_gmem0_ARSIZE),
    .m_axi_gmem0_ARBURST(m_axi_gmem0_ARBURST),
    .m_axi_gmem0_ARLOCK(m_axi_gmem0_ARLOCK),
    .m_axi_gmem0_ARREGION(m_axi_gmem0_ARREGION),
    .m_axi_gmem0_ARCACHE(m_axi_gmem0_ARCACHE),
    .m_axi_gmem0_ARPROT(m_axi_gmem0_ARPROT),
    .m_axi_gmem0_ARQOS(m_axi_gmem0_ARQOS),
    .m_axi_gmem0_ARUSER(),
    .m_axi_gmem0_ARVALID(m_axi_gmem0_ARVALID),
    .m_axi_gmem0_ARREADY(m_axi_gmem0_ARREADY),
    .m_axi_gmem0_RID(m_axi_gmem0_RID),
    .m_axi_gmem0_RDATA(m_axi_gmem0_RDATA),
    .m_axi_gmem0_RRESP(m_axi_gmem0_RRESP),
    .m_axi_gmem0_RLAST(m_axi_gmem0_RLAST),
    .m_axi_gmem0_RUSER(1'B0),
    .m_axi_gmem0_RVALID(m_axi_gmem0_RVALID),
    .m_axi_gmem0_RREADY(m_axi_gmem0_RREADY),
    .m_axi_gmem1_AWID(m_axi_gmem1_AWID),
    .m_axi_gmem1_AWADDR(m_axi_gmem1_AWADDR),
    .m_axi_gmem1_AWLEN(m_axi_gmem1_AWLEN),
    .m_axi_gmem1_AWSIZE(m_axi_gmem1_AWSIZE),
    .m_axi_gmem1_AWBURST(m_axi_gmem1_AWBURST),
    .m_axi_gmem1_AWLOCK(m_axi_gmem1_AWLOCK),
    .m_axi_gmem1_AWREGION(m_axi_gmem1_AWREGION),
    .m_axi_gmem1_AWCACHE(m_axi_gmem1_AWCACHE),
    .m_axi_gmem1_AWPROT(m_axi_gmem1_AWPROT),
    .m_axi_gmem1_AWQOS(m_axi_gmem1_AWQOS),
    .m_axi_gmem1_AWUSER(),
    .m_axi_gmem1_AWVALID(m_axi_gmem1_AWVALID),
    .m_axi_gmem1_AWREADY(m_axi_gmem1_AWREADY),
    .m_axi_gmem1_WID(m_axi_gmem1_WID),
    .m_axi_gmem1_WDATA(m_axi_gmem1_WDATA),
    .m_axi_gmem1_WSTRB(m_axi_gmem1_WSTRB),
    .m_axi_gmem1_WLAST(m_axi_gmem1_WLAST),
    .m_axi_gmem1_WUSER(),
    .m_axi_gmem1_WVALID(m_axi_gmem1_WVALID),
    .m_axi_gmem1_WREADY(m_axi_gmem1_WREADY),
    .m_axi_gmem1_BID(m_axi_gmem1_BID),
    .m_axi_gmem1_BRESP(m_axi_gmem1_BRESP),
    .m_axi_gmem1_BUSER(1'B0),
    .m_axi_gmem1_BVALID(m_axi_gmem1_BVALID),
    .m_axi_gmem1_BREADY(m_axi_gmem1_BREADY),
    .m_axi_gmem1_ARID(m_axi_gmem1_ARID),
    .m_axi_gmem1_ARADDR(m_axi_gmem1_ARADDR),
    .m_axi_gmem1_ARLEN(m_axi_gmem1_ARLEN),
    .m_axi_gmem1_ARSIZE(m_axi_gmem1_ARSIZE),
    .m_axi_gmem1_ARBURST(m_axi_gmem1_ARBURST),
    .m_axi_gmem1_ARLOCK(m_axi_gmem1_ARLOCK),
    .m_axi_gmem1_ARREGION(m_axi_gmem1_ARREGION),
    .m_axi_gmem1_ARCACHE(m_axi_gmem1_ARCACHE),
    .m_axi_gmem1_ARPROT(m_axi_gmem1_ARPROT),
    .m_axi_gmem1_ARQOS(m_axi_gmem1_ARQOS),
    .m_axi_gmem1_ARUSER(),
    .m_axi_gmem1_ARVALID(m_axi_gmem1_ARVALID),
    .m_axi_gmem1_ARREADY(m_axi_gmem1_ARREADY),
    .m_axi_gmem1_RID(m_axi_gmem1_RID),
    .m_axi_gmem1_RDATA(m_axi_gmem1_RDATA),
    .m_axi_gmem1_RRESP(m_axi_gmem1_RRESP),
    .m_axi_gmem1_RLAST(m_axi_gmem1_RLAST),
    .m_axi_gmem1_RUSER(1'B0),
    .m_axi_gmem1_RVALID(m_axi_gmem1_RVALID),
    .m_axi_gmem1_RREADY(m_axi_gmem1_RREADY)
  );
endmodule
