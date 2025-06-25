# run_hls.tcl - Vitis HLS Script
# This script opens a project, adds files, creates a solution,
# runs C simulation, C synthesis, and then exports the IP.

# Main configurations
set CSIM 1         ;# Enable C Simulation
set CSYNTH 1       ;# Enable C Synthesis
set COSIM 0        ;# Disable Co-simulation
set VIVADO_SYN 1   ;# Enable Vivado Synthesis export flow (for IP Catalog)
set VIVADO_IMPL 0  ;# Disable Vivado Implementation export flow (if not needed)

# Paths
set OPENCV_INCLUDE "D:/opencv/build/install/include"
set OPENCV_LIB "D:/opencv/build/install/x64/mingw/bin"
set XF_VISION_ROOT "D:/Xilinx/Vitis_Libraries/vision/L1"
set XPART xc7z020clg400-1

# Project and solution names
set PROJ "convex_hull.prj"
set SOLN "sol1"

# Clock period definition
if {![info exists CLKP]} {
    set CLKP 10
}

# Open and reset project
open_project -reset $PROJ

# Main file (accelerator)
add_files "./accel.cpp" \
    -cflags "-std=c++14 \
             -I${XF_VISION_ROOT}/include \
             -I${XF_VISION_ROOT}/include/common \
             -I${XF_VISION_ROOT}/include/core \
             -I. " \
    -csimflags "-std=c++14 \
                -I${XF_VISION_ROOT}/include \
                -I${XF_VISION_ROOT}/include/common \
                -I${XF_VISION_ROOT}/include/core \
                -I. "

# Testbench file
add_files -tb "./tb.cpp" \
    -cflags "-std=c++14 \
             -I${OPENCV_INCLUDE} \
             -I${XF_VISION_ROOT}/include \
             -I${XF_VISION_ROOT}/include/common \
             -I${XF_VISION_ROOT}/include/core \
             -I. " \
    -csimflags "-std=c++14 \
                -I${OPENCV_INCLUDE} \
                -I${XF_VISION_ROOT}/include \
                -I${XF_VISION_ROOT}/include/common \
                -I${XF_VISION_ROOT}/include/core \
                -I. "

# Define the top-level function
set_top convex_hull_accel

# Open the solution
open_solution -reset $SOLN

# Clock and FPGA configurations
set_part $XPART
create_clock -period $CLKP

# C Simulation
if {$CSIM == 1} {
    csim_design -ldflags "-L${OPENCV_LIB} \
                          -lopencv_core440 \
                          -lopencv_highgui440 \
                          -lopencv_imgproc440 \
                          -lopencv_imgcodecs440"
}

# C Synthesis
if {$CSYNTH == 1} {
    csynth_design
}

# Co-simulation
if {$COSIM == 1} {
    cosim_design -ldflags "-L${OPENCV_LIB} \
                            -lopencv_core440 \
                            -lopencv_highgui440 \
                            -lopencv_imgproc440 \
                            -lopencv_imgcodecs440"
}

# IP Export
if {$VIVADO_SYN == 1} {
    export_design -flow syn -rtl verilog
}

if {$VIVADO_IMPL == 1} {
    export_design -flow impl -rtl verilog
}

exit