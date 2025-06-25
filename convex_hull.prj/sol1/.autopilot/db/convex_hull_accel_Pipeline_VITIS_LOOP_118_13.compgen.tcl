# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 51 \
    name hull_x \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename hull_x \
    op interface \
    ports { hull_x_address0 { O 4 vector } hull_x_ce0 { O 1 bit } hull_x_we0 { O 1 bit } hull_x_d0 { O 32 vector } hull_x_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'hull_x'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 52 \
    name hull_x_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename hull_x_1 \
    op interface \
    ports { hull_x_1_address0 { O 4 vector } hull_x_1_ce0 { O 1 bit } hull_x_1_we0 { O 1 bit } hull_x_1_d0 { O 32 vector } hull_x_1_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'hull_x_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 53 \
    name hull_x_2 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename hull_x_2 \
    op interface \
    ports { hull_x_2_address0 { O 4 vector } hull_x_2_ce0 { O 1 bit } hull_x_2_we0 { O 1 bit } hull_x_2_d0 { O 32 vector } hull_x_2_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'hull_x_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 54 \
    name hull_x_3 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename hull_x_3 \
    op interface \
    ports { hull_x_3_address0 { O 4 vector } hull_x_3_ce0 { O 1 bit } hull_x_3_we0 { O 1 bit } hull_x_3_d0 { O 32 vector } hull_x_3_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'hull_x_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 55 \
    name hull_y \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename hull_y \
    op interface \
    ports { hull_y_address0 { O 4 vector } hull_y_ce0 { O 1 bit } hull_y_we0 { O 1 bit } hull_y_d0 { O 32 vector } hull_y_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'hull_y'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 56 \
    name hull_y_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename hull_y_1 \
    op interface \
    ports { hull_y_1_address0 { O 4 vector } hull_y_1_ce0 { O 1 bit } hull_y_1_we0 { O 1 bit } hull_y_1_d0 { O 32 vector } hull_y_1_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'hull_y_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 57 \
    name hull_y_2 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename hull_y_2 \
    op interface \
    ports { hull_y_2_address0 { O 4 vector } hull_y_2_ce0 { O 1 bit } hull_y_2_we0 { O 1 bit } hull_y_2_d0 { O 32 vector } hull_y_2_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'hull_y_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 58 \
    name hull_y_3 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename hull_y_3 \
    op interface \
    ports { hull_y_3_address0 { O 4 vector } hull_y_3_ce0 { O 1 bit } hull_y_3_we0 { O 1 bit } hull_y_3_d0 { O 32 vector } hull_y_3_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'hull_y_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 59 \
    name pts_x \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename pts_x \
    op interface \
    ports { pts_x_address0 { O 4 vector } pts_x_ce0 { O 1 bit } pts_x_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pts_x'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 60 \
    name pts_x_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename pts_x_1 \
    op interface \
    ports { pts_x_1_address0 { O 4 vector } pts_x_1_ce0 { O 1 bit } pts_x_1_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pts_x_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 61 \
    name pts_x_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename pts_x_2 \
    op interface \
    ports { pts_x_2_address0 { O 4 vector } pts_x_2_ce0 { O 1 bit } pts_x_2_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pts_x_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 62 \
    name pts_x_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename pts_x_3 \
    op interface \
    ports { pts_x_3_address0 { O 4 vector } pts_x_3_ce0 { O 1 bit } pts_x_3_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pts_x_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 63 \
    name pts_y \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename pts_y \
    op interface \
    ports { pts_y_address0 { O 4 vector } pts_y_ce0 { O 1 bit } pts_y_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pts_y'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 64 \
    name pts_y_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename pts_y_1 \
    op interface \
    ports { pts_y_1_address0 { O 4 vector } pts_y_1_ce0 { O 1 bit } pts_y_1_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pts_y_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 65 \
    name pts_y_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename pts_y_2 \
    op interface \
    ports { pts_y_2_address0 { O 4 vector } pts_y_2_ce0 { O 1 bit } pts_y_2_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pts_y_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 66 \
    name pts_y_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename pts_y_3 \
    op interface \
    ports { pts_y_3_address0 { O 4 vector } pts_y_3_ce0 { O 1 bit } pts_y_3_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pts_y_3'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 49 \
    name zext_ln118 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln118 \
    op interface \
    ports { zext_ln118 { I 31 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 50 \
    name k_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_k_reload \
    op interface \
    ports { k_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 67 \
    name t \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t \
    op interface \
    ports { t { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 68 \
    name k_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_k_1_out \
    op interface \
    ports { k_1_out { O 32 vector } k_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


