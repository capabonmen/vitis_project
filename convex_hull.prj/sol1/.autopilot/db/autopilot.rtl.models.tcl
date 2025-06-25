set SynModuleInfo {
  {SRCNAME convex_hull_accel_Pipeline_VITIS_LOOP_34_1_VITIS_LOOP_36_2 MODELNAME convex_hull_accel_Pipeline_VITIS_LOOP_34_1_VITIS_LOOP_36_2 RTLNAME convex_hull_accel_convex_hull_accel_Pipeline_VITIS_LOOP_34_1_VITIS_LOOP_36_2
    SUBMODULES {
      {MODELNAME convex_hull_accel_flow_control_loop_pipe_sequential_init RTLNAME convex_hull_accel_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME convex_hull_accel_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME convex_hull_accel_Pipeline_VITIS_LOOP_47_3_VITIS_LOOP_49_4 MODELNAME convex_hull_accel_Pipeline_VITIS_LOOP_47_3_VITIS_LOOP_49_4 RTLNAME convex_hull_accel_convex_hull_accel_Pipeline_VITIS_LOOP_47_3_VITIS_LOOP_49_4}
  {SRCNAME cross MODELNAME cross_r RTLNAME convex_hull_accel_cross_r
    SUBMODULES {
      {MODELNAME convex_hull_accel_mul_32s_32s_32_2_0 RTLNAME convex_hull_accel_mul_32s_32s_32_2_0 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME convex_hull_accel_Pipeline_VITIS_LOOP_104_11 MODELNAME convex_hull_accel_Pipeline_VITIS_LOOP_104_11 RTLNAME convex_hull_accel_convex_hull_accel_Pipeline_VITIS_LOOP_104_11
    SUBMODULES {
      {MODELNAME convex_hull_accel_sparsemux_9_2_32_1_1 RTLNAME convex_hull_accel_sparsemux_9_2_32_1_1 BINDTYPE op TYPE sparsemux IMPL auto}
    }
  }
  {SRCNAME convex_hull_accel_Pipeline_VITIS_LOOP_118_13 MODELNAME convex_hull_accel_Pipeline_VITIS_LOOP_118_13 RTLNAME convex_hull_accel_convex_hull_accel_Pipeline_VITIS_LOOP_118_13}
  {SRCNAME convex_hull_accel_Pipeline_VITIS_LOOP_134_15_VITIS_LOOP_136_16 MODELNAME convex_hull_accel_Pipeline_VITIS_LOOP_134_15_VITIS_LOOP_136_16 RTLNAME convex_hull_accel_convex_hull_accel_Pipeline_VITIS_LOOP_134_15_VITIS_LOOP_136_16}
  {SRCNAME convex_hull_accel_Pipeline_VITIS_LOOP_143_17 MODELNAME convex_hull_accel_Pipeline_VITIS_LOOP_143_17 RTLNAME convex_hull_accel_convex_hull_accel_Pipeline_VITIS_LOOP_143_17}
  {SRCNAME convex_hull_accel_Pipeline_VITIS_LOOP_154_18_VITIS_LOOP_156_19 MODELNAME convex_hull_accel_Pipeline_VITIS_LOOP_154_18_VITIS_LOOP_156_19 RTLNAME convex_hull_accel_convex_hull_accel_Pipeline_VITIS_LOOP_154_18_VITIS_LOOP_156_19}
  {SRCNAME convex_hull_accel_Pipeline_VITIS_LOOP_63_5_VITIS_LOOP_65_6 MODELNAME convex_hull_accel_Pipeline_VITIS_LOOP_63_5_VITIS_LOOP_65_6 RTLNAME convex_hull_accel_convex_hull_accel_Pipeline_VITIS_LOOP_63_5_VITIS_LOOP_65_6}
  {SRCNAME convex_hull_accel_Pipeline_VITIS_LOOP_73_7_VITIS_LOOP_75_8 MODELNAME convex_hull_accel_Pipeline_VITIS_LOOP_73_7_VITIS_LOOP_75_8 RTLNAME convex_hull_accel_convex_hull_accel_Pipeline_VITIS_LOOP_73_7_VITIS_LOOP_75_8}
  {SRCNAME convex_hull_accel MODELNAME convex_hull_accel RTLNAME convex_hull_accel IS_TOP 1
    SUBMODULES {
      {MODELNAME convex_hull_accel_mul_15s_15s_15_1_1 RTLNAME convex_hull_accel_mul_15s_15s_15_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME convex_hull_accel_mul_8ns_8ns_16_1_1 RTLNAME convex_hull_accel_mul_8ns_8ns_16_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME convex_hull_accel_pts_x_RAM_1WNR_AUTO_1R1W RTLNAME convex_hull_accel_pts_x_RAM_1WNR_AUTO_1R1W BINDTYPE storage TYPE ram_1wnr IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME convex_hull_accel_fifo_w8_d2_S RTLNAME convex_hull_accel_fifo_w8_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME in_img_data_U}
      {MODELNAME convex_hull_accel_fifo_w8_d2_S RTLNAME convex_hull_accel_fifo_w8_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME out_img_data_U}
      {MODELNAME convex_hull_accel_gmem0_m_axi RTLNAME convex_hull_accel_gmem0_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME convex_hull_accel_gmem1_m_axi RTLNAME convex_hull_accel_gmem1_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME convex_hull_accel_control_s_axi RTLNAME convex_hull_accel_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME convex_hull_accel_control_r_s_axi RTLNAME convex_hull_accel_control_r_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
