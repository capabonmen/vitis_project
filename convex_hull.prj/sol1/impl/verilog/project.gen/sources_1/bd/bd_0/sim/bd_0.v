//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
//Date        : Mon Jun 23 18:46:00 2025
//Host        : DESKTOP-789A4L0 running 64-bit major release  (build 9200)
//Command     : generate_target bd_0.bd
//Design      : bd_0
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "bd_0,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_0,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=1,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "bd_0.hwdef" *) 
module bd_0
   (ap_clk,
    ap_rst_n,
    interrupt,
    m_axi_gmem0_araddr,
    m_axi_gmem0_arburst,
    m_axi_gmem0_arcache,
    m_axi_gmem0_arid,
    m_axi_gmem0_arlen,
    m_axi_gmem0_arlock,
    m_axi_gmem0_arprot,
    m_axi_gmem0_arqos,
    m_axi_gmem0_arready,
    m_axi_gmem0_arregion,
    m_axi_gmem0_arsize,
    m_axi_gmem0_arvalid,
    m_axi_gmem0_awaddr,
    m_axi_gmem0_awburst,
    m_axi_gmem0_awcache,
    m_axi_gmem0_awid,
    m_axi_gmem0_awlen,
    m_axi_gmem0_awlock,
    m_axi_gmem0_awprot,
    m_axi_gmem0_awqos,
    m_axi_gmem0_awready,
    m_axi_gmem0_awregion,
    m_axi_gmem0_awsize,
    m_axi_gmem0_awvalid,
    m_axi_gmem0_bid,
    m_axi_gmem0_bready,
    m_axi_gmem0_bresp,
    m_axi_gmem0_bvalid,
    m_axi_gmem0_rdata,
    m_axi_gmem0_rid,
    m_axi_gmem0_rlast,
    m_axi_gmem0_rready,
    m_axi_gmem0_rresp,
    m_axi_gmem0_rvalid,
    m_axi_gmem0_wdata,
    m_axi_gmem0_wid,
    m_axi_gmem0_wlast,
    m_axi_gmem0_wready,
    m_axi_gmem0_wstrb,
    m_axi_gmem0_wvalid,
    m_axi_gmem1_araddr,
    m_axi_gmem1_arburst,
    m_axi_gmem1_arcache,
    m_axi_gmem1_arid,
    m_axi_gmem1_arlen,
    m_axi_gmem1_arlock,
    m_axi_gmem1_arprot,
    m_axi_gmem1_arqos,
    m_axi_gmem1_arready,
    m_axi_gmem1_arregion,
    m_axi_gmem1_arsize,
    m_axi_gmem1_arvalid,
    m_axi_gmem1_awaddr,
    m_axi_gmem1_awburst,
    m_axi_gmem1_awcache,
    m_axi_gmem1_awid,
    m_axi_gmem1_awlen,
    m_axi_gmem1_awlock,
    m_axi_gmem1_awprot,
    m_axi_gmem1_awqos,
    m_axi_gmem1_awready,
    m_axi_gmem1_awregion,
    m_axi_gmem1_awsize,
    m_axi_gmem1_awvalid,
    m_axi_gmem1_bid,
    m_axi_gmem1_bready,
    m_axi_gmem1_bresp,
    m_axi_gmem1_bvalid,
    m_axi_gmem1_rdata,
    m_axi_gmem1_rid,
    m_axi_gmem1_rlast,
    m_axi_gmem1_rready,
    m_axi_gmem1_rresp,
    m_axi_gmem1_rvalid,
    m_axi_gmem1_wdata,
    m_axi_gmem1_wid,
    m_axi_gmem1_wlast,
    m_axi_gmem1_wready,
    m_axi_gmem1_wstrb,
    m_axi_gmem1_wvalid,
    s_axi_control_araddr,
    s_axi_control_arready,
    s_axi_control_arvalid,
    s_axi_control_awaddr,
    s_axi_control_awready,
    s_axi_control_awvalid,
    s_axi_control_bready,
    s_axi_control_bresp,
    s_axi_control_bvalid,
    s_axi_control_r_araddr,
    s_axi_control_r_arready,
    s_axi_control_r_arvalid,
    s_axi_control_r_awaddr,
    s_axi_control_r_awready,
    s_axi_control_r_awvalid,
    s_axi_control_r_bready,
    s_axi_control_r_bresp,
    s_axi_control_r_bvalid,
    s_axi_control_r_rdata,
    s_axi_control_r_rready,
    s_axi_control_r_rresp,
    s_axi_control_r_rvalid,
    s_axi_control_r_wdata,
    s_axi_control_r_wready,
    s_axi_control_r_wstrb,
    s_axi_control_r_wvalid,
    s_axi_control_rdata,
    s_axi_control_rready,
    s_axi_control_rresp,
    s_axi_control_rvalid,
    s_axi_control_wdata,
    s_axi_control_wready,
    s_axi_control_wstrb,
    s_axi_control_wvalid);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.AP_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.AP_CLK, ASSOCIATED_BUSIF m_axi_gmem0:m_axi_gmem1:s_axi_control:s_axi_control_r, ASSOCIATED_RESET ap_rst_n, CLK_DOMAIN bd_0_ap_clk_0, FREQ_HZ 100000000.0, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.AP_RST_N RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.AP_RST_N, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input ap_rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.INTERRUPT INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.INTERRUPT, PortWidth 1, SENSITIVITY LEVEL_HIGH" *) output interrupt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 " *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_gmem0, ADDR_WIDTH 64, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN bd_0_ap_clk_0, DATA_WIDTH 32, FREQ_HZ 100000000.0, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 1, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 1, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 16, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 16, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_ONLY, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [63:0]m_axi_gmem0_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 " *) output [1:0]m_axi_gmem0_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 " *) output [3:0]m_axi_gmem0_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 " *) output [0:0]m_axi_gmem0_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 " *) output [7:0]m_axi_gmem0_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 " *) output [1:0]m_axi_gmem0_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 " *) output [2:0]m_axi_gmem0_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 " *) output [3:0]m_axi_gmem0_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 " *) input m_axi_gmem0_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 " *) output [3:0]m_axi_gmem0_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 " *) output [2:0]m_axi_gmem0_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 " *) output m_axi_gmem0_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 " *) output [63:0]m_axi_gmem0_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 " *) output [1:0]m_axi_gmem0_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 " *) output [3:0]m_axi_gmem0_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 " *) output [0:0]m_axi_gmem0_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 " *) output [7:0]m_axi_gmem0_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 " *) output [1:0]m_axi_gmem0_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 " *) output [2:0]m_axi_gmem0_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 " *) output [3:0]m_axi_gmem0_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 " *) input m_axi_gmem0_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 " *) output [3:0]m_axi_gmem0_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 " *) output [2:0]m_axi_gmem0_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 " *) output m_axi_gmem0_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 " *) input [0:0]m_axi_gmem0_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 " *) output m_axi_gmem0_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 " *) input [1:0]m_axi_gmem0_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 " *) input m_axi_gmem0_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 " *) input [31:0]m_axi_gmem0_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 " *) input [0:0]m_axi_gmem0_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 " *) input m_axi_gmem0_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 " *) output m_axi_gmem0_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 " *) input [1:0]m_axi_gmem0_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 " *) input m_axi_gmem0_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 " *) output [31:0]m_axi_gmem0_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 " *) output [0:0]m_axi_gmem0_wid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 " *) output m_axi_gmem0_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 " *) input m_axi_gmem0_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 " *) output [3:0]m_axi_gmem0_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0 " *) output m_axi_gmem0_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem1 " *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_gmem1, ADDR_WIDTH 64, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN bd_0_ap_clk_0, DATA_WIDTH 32, FREQ_HZ 100000000.0, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 1, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 1, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 16, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 16, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE WRITE_ONLY, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [63:0]m_axi_gmem1_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem1 " *) output [1:0]m_axi_gmem1_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem1 " *) output [3:0]m_axi_gmem1_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem1 " *) output [0:0]m_axi_gmem1_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem1 " *) output [7:0]m_axi_gmem1_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem1 " *) output [1:0]m_axi_gmem1_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem1 " *) output [2:0]m_axi_gmem1_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem1 " *) output [3:0]m_axi_gmem1_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem1 " *) input m_axi_gmem1_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem1 " *) output [3:0]m_axi_gmem1_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem1 " *) output [2:0]m_axi_gmem1_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem1 " *) output m_axi_gmem1_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem1 " *) output [63:0]m_axi_gmem1_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem1 " *) output [1:0]m_axi_gmem1_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem1 " *) output [3:0]m_axi_gmem1_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem1 " *) output [0:0]m_axi_gmem1_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem1 " *) output [7:0]m_axi_gmem1_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem1 " *) output [1:0]m_axi_gmem1_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem1 " *) output [2:0]m_axi_gmem1_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem1 " *) output [3:0]m_axi_gmem1_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem1 " *) input m_axi_gmem1_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem1 " *) output [3:0]m_axi_gmem1_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem1 " *) output [2:0]m_axi_gmem1_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem1 " *) output m_axi_gmem1_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem1 " *) input [0:0]m_axi_gmem1_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem1 " *) output m_axi_gmem1_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem1 " *) input [1:0]m_axi_gmem1_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem1 " *) input m_axi_gmem1_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem1 " *) input [31:0]m_axi_gmem1_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem1 " *) input [0:0]m_axi_gmem1_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem1 " *) input m_axi_gmem1_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem1 " *) output m_axi_gmem1_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem1 " *) input [1:0]m_axi_gmem1_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem1 " *) input m_axi_gmem1_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem1 " *) output [31:0]m_axi_gmem1_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem1 " *) output [0:0]m_axi_gmem1_wid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem1 " *) output m_axi_gmem1_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem1 " *) input m_axi_gmem1_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem1 " *) output [3:0]m_axi_gmem1_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem1 " *) output m_axi_gmem1_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control " *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_control, ADDR_WIDTH 32, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN bd_0_ap_clk_0, DATA_WIDTH 32, FREQ_HZ 100000000.0, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 0, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 1, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 1, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [5:0]s_axi_control_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control " *) output s_axi_control_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control " *) input s_axi_control_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control " *) input [5:0]s_axi_control_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control " *) output s_axi_control_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control " *) input s_axi_control_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control " *) input s_axi_control_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control " *) output [1:0]s_axi_control_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control " *) output s_axi_control_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control_r " *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_control_r, ADDR_WIDTH 32, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN bd_0_ap_clk_0, DATA_WIDTH 32, FREQ_HZ 100000000.0, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 0, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 1, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 1, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [5:0]s_axi_control_r_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control_r " *) output s_axi_control_r_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control_r " *) input s_axi_control_r_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control_r " *) input [5:0]s_axi_control_r_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control_r " *) output s_axi_control_r_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control_r " *) input s_axi_control_r_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control_r " *) input s_axi_control_r_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control_r " *) output [1:0]s_axi_control_r_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control_r " *) output s_axi_control_r_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control_r " *) output [31:0]s_axi_control_r_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control_r " *) input s_axi_control_r_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control_r " *) output [1:0]s_axi_control_r_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control_r " *) output s_axi_control_r_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control_r " *) input [31:0]s_axi_control_r_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control_r " *) output s_axi_control_r_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control_r " *) input [3:0]s_axi_control_r_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control_r " *) input s_axi_control_r_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control " *) output [31:0]s_axi_control_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control " *) input s_axi_control_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control " *) output [1:0]s_axi_control_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control " *) output s_axi_control_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control " *) input [31:0]s_axi_control_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control " *) output s_axi_control_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control " *) input [3:0]s_axi_control_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control " *) input s_axi_control_wvalid;

  wire ap_clk_0_1;
  wire ap_rst_n_0_1;
  wire hls_inst_interrupt;
  wire [63:0]hls_inst_m_axi_gmem0_ARADDR;
  wire [1:0]hls_inst_m_axi_gmem0_ARBURST;
  wire [3:0]hls_inst_m_axi_gmem0_ARCACHE;
  wire [0:0]hls_inst_m_axi_gmem0_ARID;
  wire [7:0]hls_inst_m_axi_gmem0_ARLEN;
  wire [1:0]hls_inst_m_axi_gmem0_ARLOCK;
  wire [2:0]hls_inst_m_axi_gmem0_ARPROT;
  wire [3:0]hls_inst_m_axi_gmem0_ARQOS;
  wire hls_inst_m_axi_gmem0_ARREADY;
  wire [3:0]hls_inst_m_axi_gmem0_ARREGION;
  wire [2:0]hls_inst_m_axi_gmem0_ARSIZE;
  wire hls_inst_m_axi_gmem0_ARVALID;
  wire [63:0]hls_inst_m_axi_gmem0_AWADDR;
  wire [1:0]hls_inst_m_axi_gmem0_AWBURST;
  wire [3:0]hls_inst_m_axi_gmem0_AWCACHE;
  wire [0:0]hls_inst_m_axi_gmem0_AWID;
  wire [7:0]hls_inst_m_axi_gmem0_AWLEN;
  wire [1:0]hls_inst_m_axi_gmem0_AWLOCK;
  wire [2:0]hls_inst_m_axi_gmem0_AWPROT;
  wire [3:0]hls_inst_m_axi_gmem0_AWQOS;
  wire hls_inst_m_axi_gmem0_AWREADY;
  wire [3:0]hls_inst_m_axi_gmem0_AWREGION;
  wire [2:0]hls_inst_m_axi_gmem0_AWSIZE;
  wire hls_inst_m_axi_gmem0_AWVALID;
  wire [0:0]hls_inst_m_axi_gmem0_BID;
  wire hls_inst_m_axi_gmem0_BREADY;
  wire [1:0]hls_inst_m_axi_gmem0_BRESP;
  wire hls_inst_m_axi_gmem0_BVALID;
  wire [31:0]hls_inst_m_axi_gmem0_RDATA;
  wire [0:0]hls_inst_m_axi_gmem0_RID;
  wire hls_inst_m_axi_gmem0_RLAST;
  wire hls_inst_m_axi_gmem0_RREADY;
  wire [1:0]hls_inst_m_axi_gmem0_RRESP;
  wire hls_inst_m_axi_gmem0_RVALID;
  wire [31:0]hls_inst_m_axi_gmem0_WDATA;
  wire [0:0]hls_inst_m_axi_gmem0_WID;
  wire hls_inst_m_axi_gmem0_WLAST;
  wire hls_inst_m_axi_gmem0_WREADY;
  wire [3:0]hls_inst_m_axi_gmem0_WSTRB;
  wire hls_inst_m_axi_gmem0_WVALID;
  wire [63:0]hls_inst_m_axi_gmem1_ARADDR;
  wire [1:0]hls_inst_m_axi_gmem1_ARBURST;
  wire [3:0]hls_inst_m_axi_gmem1_ARCACHE;
  wire [0:0]hls_inst_m_axi_gmem1_ARID;
  wire [7:0]hls_inst_m_axi_gmem1_ARLEN;
  wire [1:0]hls_inst_m_axi_gmem1_ARLOCK;
  wire [2:0]hls_inst_m_axi_gmem1_ARPROT;
  wire [3:0]hls_inst_m_axi_gmem1_ARQOS;
  wire hls_inst_m_axi_gmem1_ARREADY;
  wire [3:0]hls_inst_m_axi_gmem1_ARREGION;
  wire [2:0]hls_inst_m_axi_gmem1_ARSIZE;
  wire hls_inst_m_axi_gmem1_ARVALID;
  wire [63:0]hls_inst_m_axi_gmem1_AWADDR;
  wire [1:0]hls_inst_m_axi_gmem1_AWBURST;
  wire [3:0]hls_inst_m_axi_gmem1_AWCACHE;
  wire [0:0]hls_inst_m_axi_gmem1_AWID;
  wire [7:0]hls_inst_m_axi_gmem1_AWLEN;
  wire [1:0]hls_inst_m_axi_gmem1_AWLOCK;
  wire [2:0]hls_inst_m_axi_gmem1_AWPROT;
  wire [3:0]hls_inst_m_axi_gmem1_AWQOS;
  wire hls_inst_m_axi_gmem1_AWREADY;
  wire [3:0]hls_inst_m_axi_gmem1_AWREGION;
  wire [2:0]hls_inst_m_axi_gmem1_AWSIZE;
  wire hls_inst_m_axi_gmem1_AWVALID;
  wire [0:0]hls_inst_m_axi_gmem1_BID;
  wire hls_inst_m_axi_gmem1_BREADY;
  wire [1:0]hls_inst_m_axi_gmem1_BRESP;
  wire hls_inst_m_axi_gmem1_BVALID;
  wire [31:0]hls_inst_m_axi_gmem1_RDATA;
  wire [0:0]hls_inst_m_axi_gmem1_RID;
  wire hls_inst_m_axi_gmem1_RLAST;
  wire hls_inst_m_axi_gmem1_RREADY;
  wire [1:0]hls_inst_m_axi_gmem1_RRESP;
  wire hls_inst_m_axi_gmem1_RVALID;
  wire [31:0]hls_inst_m_axi_gmem1_WDATA;
  wire [0:0]hls_inst_m_axi_gmem1_WID;
  wire hls_inst_m_axi_gmem1_WLAST;
  wire hls_inst_m_axi_gmem1_WREADY;
  wire [3:0]hls_inst_m_axi_gmem1_WSTRB;
  wire hls_inst_m_axi_gmem1_WVALID;
  wire [5:0]s_axi_control_0_1_ARADDR;
  wire s_axi_control_0_1_ARREADY;
  wire s_axi_control_0_1_ARVALID;
  wire [5:0]s_axi_control_0_1_AWADDR;
  wire s_axi_control_0_1_AWREADY;
  wire s_axi_control_0_1_AWVALID;
  wire s_axi_control_0_1_BREADY;
  wire [1:0]s_axi_control_0_1_BRESP;
  wire s_axi_control_0_1_BVALID;
  wire [31:0]s_axi_control_0_1_RDATA;
  wire s_axi_control_0_1_RREADY;
  wire [1:0]s_axi_control_0_1_RRESP;
  wire s_axi_control_0_1_RVALID;
  wire [31:0]s_axi_control_0_1_WDATA;
  wire s_axi_control_0_1_WREADY;
  wire [3:0]s_axi_control_0_1_WSTRB;
  wire s_axi_control_0_1_WVALID;
  wire [5:0]s_axi_control_r_0_1_ARADDR;
  wire s_axi_control_r_0_1_ARREADY;
  wire s_axi_control_r_0_1_ARVALID;
  wire [5:0]s_axi_control_r_0_1_AWADDR;
  wire s_axi_control_r_0_1_AWREADY;
  wire s_axi_control_r_0_1_AWVALID;
  wire s_axi_control_r_0_1_BREADY;
  wire [1:0]s_axi_control_r_0_1_BRESP;
  wire s_axi_control_r_0_1_BVALID;
  wire [31:0]s_axi_control_r_0_1_RDATA;
  wire s_axi_control_r_0_1_RREADY;
  wire [1:0]s_axi_control_r_0_1_RRESP;
  wire s_axi_control_r_0_1_RVALID;
  wire [31:0]s_axi_control_r_0_1_WDATA;
  wire s_axi_control_r_0_1_WREADY;
  wire [3:0]s_axi_control_r_0_1_WSTRB;
  wire s_axi_control_r_0_1_WVALID;

  assign ap_clk_0_1 = ap_clk;
  assign ap_rst_n_0_1 = ap_rst_n;
  assign hls_inst_m_axi_gmem0_ARREADY = m_axi_gmem0_arready;
  assign hls_inst_m_axi_gmem0_AWREADY = m_axi_gmem0_awready;
  assign hls_inst_m_axi_gmem0_BID = m_axi_gmem0_bid[0];
  assign hls_inst_m_axi_gmem0_BRESP = m_axi_gmem0_bresp[1:0];
  assign hls_inst_m_axi_gmem0_BVALID = m_axi_gmem0_bvalid;
  assign hls_inst_m_axi_gmem0_RDATA = m_axi_gmem0_rdata[31:0];
  assign hls_inst_m_axi_gmem0_RID = m_axi_gmem0_rid[0];
  assign hls_inst_m_axi_gmem0_RLAST = m_axi_gmem0_rlast;
  assign hls_inst_m_axi_gmem0_RRESP = m_axi_gmem0_rresp[1:0];
  assign hls_inst_m_axi_gmem0_RVALID = m_axi_gmem0_rvalid;
  assign hls_inst_m_axi_gmem0_WREADY = m_axi_gmem0_wready;
  assign hls_inst_m_axi_gmem1_ARREADY = m_axi_gmem1_arready;
  assign hls_inst_m_axi_gmem1_AWREADY = m_axi_gmem1_awready;
  assign hls_inst_m_axi_gmem1_BID = m_axi_gmem1_bid[0];
  assign hls_inst_m_axi_gmem1_BRESP = m_axi_gmem1_bresp[1:0];
  assign hls_inst_m_axi_gmem1_BVALID = m_axi_gmem1_bvalid;
  assign hls_inst_m_axi_gmem1_RDATA = m_axi_gmem1_rdata[31:0];
  assign hls_inst_m_axi_gmem1_RID = m_axi_gmem1_rid[0];
  assign hls_inst_m_axi_gmem1_RLAST = m_axi_gmem1_rlast;
  assign hls_inst_m_axi_gmem1_RRESP = m_axi_gmem1_rresp[1:0];
  assign hls_inst_m_axi_gmem1_RVALID = m_axi_gmem1_rvalid;
  assign hls_inst_m_axi_gmem1_WREADY = m_axi_gmem1_wready;
  assign interrupt = hls_inst_interrupt;
  assign m_axi_gmem0_araddr[63:0] = hls_inst_m_axi_gmem0_ARADDR;
  assign m_axi_gmem0_arburst[1:0] = hls_inst_m_axi_gmem0_ARBURST;
  assign m_axi_gmem0_arcache[3:0] = hls_inst_m_axi_gmem0_ARCACHE;
  assign m_axi_gmem0_arid[0] = hls_inst_m_axi_gmem0_ARID;
  assign m_axi_gmem0_arlen[7:0] = hls_inst_m_axi_gmem0_ARLEN;
  assign m_axi_gmem0_arlock[1:0] = hls_inst_m_axi_gmem0_ARLOCK;
  assign m_axi_gmem0_arprot[2:0] = hls_inst_m_axi_gmem0_ARPROT;
  assign m_axi_gmem0_arqos[3:0] = hls_inst_m_axi_gmem0_ARQOS;
  assign m_axi_gmem0_arregion[3:0] = hls_inst_m_axi_gmem0_ARREGION;
  assign m_axi_gmem0_arsize[2:0] = hls_inst_m_axi_gmem0_ARSIZE;
  assign m_axi_gmem0_arvalid = hls_inst_m_axi_gmem0_ARVALID;
  assign m_axi_gmem0_awaddr[63:0] = hls_inst_m_axi_gmem0_AWADDR;
  assign m_axi_gmem0_awburst[1:0] = hls_inst_m_axi_gmem0_AWBURST;
  assign m_axi_gmem0_awcache[3:0] = hls_inst_m_axi_gmem0_AWCACHE;
  assign m_axi_gmem0_awid[0] = hls_inst_m_axi_gmem0_AWID;
  assign m_axi_gmem0_awlen[7:0] = hls_inst_m_axi_gmem0_AWLEN;
  assign m_axi_gmem0_awlock[1:0] = hls_inst_m_axi_gmem0_AWLOCK;
  assign m_axi_gmem0_awprot[2:0] = hls_inst_m_axi_gmem0_AWPROT;
  assign m_axi_gmem0_awqos[3:0] = hls_inst_m_axi_gmem0_AWQOS;
  assign m_axi_gmem0_awregion[3:0] = hls_inst_m_axi_gmem0_AWREGION;
  assign m_axi_gmem0_awsize[2:0] = hls_inst_m_axi_gmem0_AWSIZE;
  assign m_axi_gmem0_awvalid = hls_inst_m_axi_gmem0_AWVALID;
  assign m_axi_gmem0_bready = hls_inst_m_axi_gmem0_BREADY;
  assign m_axi_gmem0_rready = hls_inst_m_axi_gmem0_RREADY;
  assign m_axi_gmem0_wdata[31:0] = hls_inst_m_axi_gmem0_WDATA;
  assign m_axi_gmem0_wid[0] = hls_inst_m_axi_gmem0_WID;
  assign m_axi_gmem0_wlast = hls_inst_m_axi_gmem0_WLAST;
  assign m_axi_gmem0_wstrb[3:0] = hls_inst_m_axi_gmem0_WSTRB;
  assign m_axi_gmem0_wvalid = hls_inst_m_axi_gmem0_WVALID;
  assign m_axi_gmem1_araddr[63:0] = hls_inst_m_axi_gmem1_ARADDR;
  assign m_axi_gmem1_arburst[1:0] = hls_inst_m_axi_gmem1_ARBURST;
  assign m_axi_gmem1_arcache[3:0] = hls_inst_m_axi_gmem1_ARCACHE;
  assign m_axi_gmem1_arid[0] = hls_inst_m_axi_gmem1_ARID;
  assign m_axi_gmem1_arlen[7:0] = hls_inst_m_axi_gmem1_ARLEN;
  assign m_axi_gmem1_arlock[1:0] = hls_inst_m_axi_gmem1_ARLOCK;
  assign m_axi_gmem1_arprot[2:0] = hls_inst_m_axi_gmem1_ARPROT;
  assign m_axi_gmem1_arqos[3:0] = hls_inst_m_axi_gmem1_ARQOS;
  assign m_axi_gmem1_arregion[3:0] = hls_inst_m_axi_gmem1_ARREGION;
  assign m_axi_gmem1_arsize[2:0] = hls_inst_m_axi_gmem1_ARSIZE;
  assign m_axi_gmem1_arvalid = hls_inst_m_axi_gmem1_ARVALID;
  assign m_axi_gmem1_awaddr[63:0] = hls_inst_m_axi_gmem1_AWADDR;
  assign m_axi_gmem1_awburst[1:0] = hls_inst_m_axi_gmem1_AWBURST;
  assign m_axi_gmem1_awcache[3:0] = hls_inst_m_axi_gmem1_AWCACHE;
  assign m_axi_gmem1_awid[0] = hls_inst_m_axi_gmem1_AWID;
  assign m_axi_gmem1_awlen[7:0] = hls_inst_m_axi_gmem1_AWLEN;
  assign m_axi_gmem1_awlock[1:0] = hls_inst_m_axi_gmem1_AWLOCK;
  assign m_axi_gmem1_awprot[2:0] = hls_inst_m_axi_gmem1_AWPROT;
  assign m_axi_gmem1_awqos[3:0] = hls_inst_m_axi_gmem1_AWQOS;
  assign m_axi_gmem1_awregion[3:0] = hls_inst_m_axi_gmem1_AWREGION;
  assign m_axi_gmem1_awsize[2:0] = hls_inst_m_axi_gmem1_AWSIZE;
  assign m_axi_gmem1_awvalid = hls_inst_m_axi_gmem1_AWVALID;
  assign m_axi_gmem1_bready = hls_inst_m_axi_gmem1_BREADY;
  assign m_axi_gmem1_rready = hls_inst_m_axi_gmem1_RREADY;
  assign m_axi_gmem1_wdata[31:0] = hls_inst_m_axi_gmem1_WDATA;
  assign m_axi_gmem1_wid[0] = hls_inst_m_axi_gmem1_WID;
  assign m_axi_gmem1_wlast = hls_inst_m_axi_gmem1_WLAST;
  assign m_axi_gmem1_wstrb[3:0] = hls_inst_m_axi_gmem1_WSTRB;
  assign m_axi_gmem1_wvalid = hls_inst_m_axi_gmem1_WVALID;
  assign s_axi_control_0_1_ARADDR = s_axi_control_araddr[5:0];
  assign s_axi_control_0_1_ARVALID = s_axi_control_arvalid;
  assign s_axi_control_0_1_AWADDR = s_axi_control_awaddr[5:0];
  assign s_axi_control_0_1_AWVALID = s_axi_control_awvalid;
  assign s_axi_control_0_1_BREADY = s_axi_control_bready;
  assign s_axi_control_0_1_RREADY = s_axi_control_rready;
  assign s_axi_control_0_1_WDATA = s_axi_control_wdata[31:0];
  assign s_axi_control_0_1_WSTRB = s_axi_control_wstrb[3:0];
  assign s_axi_control_0_1_WVALID = s_axi_control_wvalid;
  assign s_axi_control_arready = s_axi_control_0_1_ARREADY;
  assign s_axi_control_awready = s_axi_control_0_1_AWREADY;
  assign s_axi_control_bresp[1:0] = s_axi_control_0_1_BRESP;
  assign s_axi_control_bvalid = s_axi_control_0_1_BVALID;
  assign s_axi_control_r_0_1_ARADDR = s_axi_control_r_araddr[5:0];
  assign s_axi_control_r_0_1_ARVALID = s_axi_control_r_arvalid;
  assign s_axi_control_r_0_1_AWADDR = s_axi_control_r_awaddr[5:0];
  assign s_axi_control_r_0_1_AWVALID = s_axi_control_r_awvalid;
  assign s_axi_control_r_0_1_BREADY = s_axi_control_r_bready;
  assign s_axi_control_r_0_1_RREADY = s_axi_control_r_rready;
  assign s_axi_control_r_0_1_WDATA = s_axi_control_r_wdata[31:0];
  assign s_axi_control_r_0_1_WSTRB = s_axi_control_r_wstrb[3:0];
  assign s_axi_control_r_0_1_WVALID = s_axi_control_r_wvalid;
  assign s_axi_control_r_arready = s_axi_control_r_0_1_ARREADY;
  assign s_axi_control_r_awready = s_axi_control_r_0_1_AWREADY;
  assign s_axi_control_r_bresp[1:0] = s_axi_control_r_0_1_BRESP;
  assign s_axi_control_r_bvalid = s_axi_control_r_0_1_BVALID;
  assign s_axi_control_r_rdata[31:0] = s_axi_control_r_0_1_RDATA;
  assign s_axi_control_r_rresp[1:0] = s_axi_control_r_0_1_RRESP;
  assign s_axi_control_r_rvalid = s_axi_control_r_0_1_RVALID;
  assign s_axi_control_r_wready = s_axi_control_r_0_1_WREADY;
  assign s_axi_control_rdata[31:0] = s_axi_control_0_1_RDATA;
  assign s_axi_control_rresp[1:0] = s_axi_control_0_1_RRESP;
  assign s_axi_control_rvalid = s_axi_control_0_1_RVALID;
  assign s_axi_control_wready = s_axi_control_0_1_WREADY;
  bd_0_hls_inst_0 hls_inst
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .interrupt(hls_inst_interrupt),
        .m_axi_gmem0_ARADDR(hls_inst_m_axi_gmem0_ARADDR),
        .m_axi_gmem0_ARBURST(hls_inst_m_axi_gmem0_ARBURST),
        .m_axi_gmem0_ARCACHE(hls_inst_m_axi_gmem0_ARCACHE),
        .m_axi_gmem0_ARID(hls_inst_m_axi_gmem0_ARID),
        .m_axi_gmem0_ARLEN(hls_inst_m_axi_gmem0_ARLEN),
        .m_axi_gmem0_ARLOCK(hls_inst_m_axi_gmem0_ARLOCK),
        .m_axi_gmem0_ARPROT(hls_inst_m_axi_gmem0_ARPROT),
        .m_axi_gmem0_ARQOS(hls_inst_m_axi_gmem0_ARQOS),
        .m_axi_gmem0_ARREADY(hls_inst_m_axi_gmem0_ARREADY),
        .m_axi_gmem0_ARREGION(hls_inst_m_axi_gmem0_ARREGION),
        .m_axi_gmem0_ARSIZE(hls_inst_m_axi_gmem0_ARSIZE),
        .m_axi_gmem0_ARVALID(hls_inst_m_axi_gmem0_ARVALID),
        .m_axi_gmem0_AWADDR(hls_inst_m_axi_gmem0_AWADDR),
        .m_axi_gmem0_AWBURST(hls_inst_m_axi_gmem0_AWBURST),
        .m_axi_gmem0_AWCACHE(hls_inst_m_axi_gmem0_AWCACHE),
        .m_axi_gmem0_AWID(hls_inst_m_axi_gmem0_AWID),
        .m_axi_gmem0_AWLEN(hls_inst_m_axi_gmem0_AWLEN),
        .m_axi_gmem0_AWLOCK(hls_inst_m_axi_gmem0_AWLOCK),
        .m_axi_gmem0_AWPROT(hls_inst_m_axi_gmem0_AWPROT),
        .m_axi_gmem0_AWQOS(hls_inst_m_axi_gmem0_AWQOS),
        .m_axi_gmem0_AWREADY(hls_inst_m_axi_gmem0_AWREADY),
        .m_axi_gmem0_AWREGION(hls_inst_m_axi_gmem0_AWREGION),
        .m_axi_gmem0_AWSIZE(hls_inst_m_axi_gmem0_AWSIZE),
        .m_axi_gmem0_AWVALID(hls_inst_m_axi_gmem0_AWVALID),
        .m_axi_gmem0_BID(hls_inst_m_axi_gmem0_BID),
        .m_axi_gmem0_BREADY(hls_inst_m_axi_gmem0_BREADY),
        .m_axi_gmem0_BRESP(hls_inst_m_axi_gmem0_BRESP),
        .m_axi_gmem0_BVALID(hls_inst_m_axi_gmem0_BVALID),
        .m_axi_gmem0_RDATA(hls_inst_m_axi_gmem0_RDATA),
        .m_axi_gmem0_RID(hls_inst_m_axi_gmem0_RID),
        .m_axi_gmem0_RLAST(hls_inst_m_axi_gmem0_RLAST),
        .m_axi_gmem0_RREADY(hls_inst_m_axi_gmem0_RREADY),
        .m_axi_gmem0_RRESP(hls_inst_m_axi_gmem0_RRESP),
        .m_axi_gmem0_RVALID(hls_inst_m_axi_gmem0_RVALID),
        .m_axi_gmem0_WDATA(hls_inst_m_axi_gmem0_WDATA),
        .m_axi_gmem0_WID(hls_inst_m_axi_gmem0_WID),
        .m_axi_gmem0_WLAST(hls_inst_m_axi_gmem0_WLAST),
        .m_axi_gmem0_WREADY(hls_inst_m_axi_gmem0_WREADY),
        .m_axi_gmem0_WSTRB(hls_inst_m_axi_gmem0_WSTRB),
        .m_axi_gmem0_WVALID(hls_inst_m_axi_gmem0_WVALID),
        .m_axi_gmem1_ARADDR(hls_inst_m_axi_gmem1_ARADDR),
        .m_axi_gmem1_ARBURST(hls_inst_m_axi_gmem1_ARBURST),
        .m_axi_gmem1_ARCACHE(hls_inst_m_axi_gmem1_ARCACHE),
        .m_axi_gmem1_ARID(hls_inst_m_axi_gmem1_ARID),
        .m_axi_gmem1_ARLEN(hls_inst_m_axi_gmem1_ARLEN),
        .m_axi_gmem1_ARLOCK(hls_inst_m_axi_gmem1_ARLOCK),
        .m_axi_gmem1_ARPROT(hls_inst_m_axi_gmem1_ARPROT),
        .m_axi_gmem1_ARQOS(hls_inst_m_axi_gmem1_ARQOS),
        .m_axi_gmem1_ARREADY(hls_inst_m_axi_gmem1_ARREADY),
        .m_axi_gmem1_ARREGION(hls_inst_m_axi_gmem1_ARREGION),
        .m_axi_gmem1_ARSIZE(hls_inst_m_axi_gmem1_ARSIZE),
        .m_axi_gmem1_ARVALID(hls_inst_m_axi_gmem1_ARVALID),
        .m_axi_gmem1_AWADDR(hls_inst_m_axi_gmem1_AWADDR),
        .m_axi_gmem1_AWBURST(hls_inst_m_axi_gmem1_AWBURST),
        .m_axi_gmem1_AWCACHE(hls_inst_m_axi_gmem1_AWCACHE),
        .m_axi_gmem1_AWID(hls_inst_m_axi_gmem1_AWID),
        .m_axi_gmem1_AWLEN(hls_inst_m_axi_gmem1_AWLEN),
        .m_axi_gmem1_AWLOCK(hls_inst_m_axi_gmem1_AWLOCK),
        .m_axi_gmem1_AWPROT(hls_inst_m_axi_gmem1_AWPROT),
        .m_axi_gmem1_AWQOS(hls_inst_m_axi_gmem1_AWQOS),
        .m_axi_gmem1_AWREADY(hls_inst_m_axi_gmem1_AWREADY),
        .m_axi_gmem1_AWREGION(hls_inst_m_axi_gmem1_AWREGION),
        .m_axi_gmem1_AWSIZE(hls_inst_m_axi_gmem1_AWSIZE),
        .m_axi_gmem1_AWVALID(hls_inst_m_axi_gmem1_AWVALID),
        .m_axi_gmem1_BID(hls_inst_m_axi_gmem1_BID),
        .m_axi_gmem1_BREADY(hls_inst_m_axi_gmem1_BREADY),
        .m_axi_gmem1_BRESP(hls_inst_m_axi_gmem1_BRESP),
        .m_axi_gmem1_BVALID(hls_inst_m_axi_gmem1_BVALID),
        .m_axi_gmem1_RDATA(hls_inst_m_axi_gmem1_RDATA),
        .m_axi_gmem1_RID(hls_inst_m_axi_gmem1_RID),
        .m_axi_gmem1_RLAST(hls_inst_m_axi_gmem1_RLAST),
        .m_axi_gmem1_RREADY(hls_inst_m_axi_gmem1_RREADY),
        .m_axi_gmem1_RRESP(hls_inst_m_axi_gmem1_RRESP),
        .m_axi_gmem1_RVALID(hls_inst_m_axi_gmem1_RVALID),
        .m_axi_gmem1_WDATA(hls_inst_m_axi_gmem1_WDATA),
        .m_axi_gmem1_WID(hls_inst_m_axi_gmem1_WID),
        .m_axi_gmem1_WLAST(hls_inst_m_axi_gmem1_WLAST),
        .m_axi_gmem1_WREADY(hls_inst_m_axi_gmem1_WREADY),
        .m_axi_gmem1_WSTRB(hls_inst_m_axi_gmem1_WSTRB),
        .m_axi_gmem1_WVALID(hls_inst_m_axi_gmem1_WVALID),
        .s_axi_control_ARADDR(s_axi_control_0_1_ARADDR),
        .s_axi_control_ARREADY(s_axi_control_0_1_ARREADY),
        .s_axi_control_ARVALID(s_axi_control_0_1_ARVALID),
        .s_axi_control_AWADDR(s_axi_control_0_1_AWADDR),
        .s_axi_control_AWREADY(s_axi_control_0_1_AWREADY),
        .s_axi_control_AWVALID(s_axi_control_0_1_AWVALID),
        .s_axi_control_BREADY(s_axi_control_0_1_BREADY),
        .s_axi_control_BRESP(s_axi_control_0_1_BRESP),
        .s_axi_control_BVALID(s_axi_control_0_1_BVALID),
        .s_axi_control_RDATA(s_axi_control_0_1_RDATA),
        .s_axi_control_RREADY(s_axi_control_0_1_RREADY),
        .s_axi_control_RRESP(s_axi_control_0_1_RRESP),
        .s_axi_control_RVALID(s_axi_control_0_1_RVALID),
        .s_axi_control_WDATA(s_axi_control_0_1_WDATA),
        .s_axi_control_WREADY(s_axi_control_0_1_WREADY),
        .s_axi_control_WSTRB(s_axi_control_0_1_WSTRB),
        .s_axi_control_WVALID(s_axi_control_0_1_WVALID),
        .s_axi_control_r_ARADDR(s_axi_control_r_0_1_ARADDR),
        .s_axi_control_r_ARREADY(s_axi_control_r_0_1_ARREADY),
        .s_axi_control_r_ARVALID(s_axi_control_r_0_1_ARVALID),
        .s_axi_control_r_AWADDR(s_axi_control_r_0_1_AWADDR),
        .s_axi_control_r_AWREADY(s_axi_control_r_0_1_AWREADY),
        .s_axi_control_r_AWVALID(s_axi_control_r_0_1_AWVALID),
        .s_axi_control_r_BREADY(s_axi_control_r_0_1_BREADY),
        .s_axi_control_r_BRESP(s_axi_control_r_0_1_BRESP),
        .s_axi_control_r_BVALID(s_axi_control_r_0_1_BVALID),
        .s_axi_control_r_RDATA(s_axi_control_r_0_1_RDATA),
        .s_axi_control_r_RREADY(s_axi_control_r_0_1_RREADY),
        .s_axi_control_r_RRESP(s_axi_control_r_0_1_RRESP),
        .s_axi_control_r_RVALID(s_axi_control_r_0_1_RVALID),
        .s_axi_control_r_WDATA(s_axi_control_r_0_1_WDATA),
        .s_axi_control_r_WREADY(s_axi_control_r_0_1_WREADY),
        .s_axi_control_r_WSTRB(s_axi_control_r_0_1_WSTRB),
        .s_axi_control_r_WVALID(s_axi_control_r_0_1_WVALID));
endmodule
