# ==============================================================
# Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2 (64-bit)
# Tool Version Limit: 2023.10
# Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
# Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
# 
# ==============================================================
CSIM_DESIGN = 1

__SIM_FPO__ = 1

__SIM_MATHHLS__ = 1

__SIM_FFT__ = 1

__SIM_FIR__ = 1

__SIM_DDS__ = 1

ObjDir = obj

HLS_SOURCES = ../../../../tb.cpp ../../../../accel.cpp

override TARGET := csim.exe

AUTOPILOT_ROOT := D:/Xilinx/Vitis_HLS/2023.2
AUTOPILOT_MACH := win64
ifdef AP_GCC_M32
  AUTOPILOT_MACH := Linux_x86
  IFLAG += -m32
endif
ifndef AP_GCC_PATH
  AP_GCC_PATH := D:/Xilinx/Vitis_HLS/2023.2/tps/win64/msys64/mingw64/bin
endif
AUTOPILOT_TOOL := ${AUTOPILOT_ROOT}/${AUTOPILOT_MACH}/tools
AP_CLANG_PATH := ${AUTOPILOT_ROOT}/tps/win64/msys64/mingw64/bin
AUTOPILOT_TECH := ${AUTOPILOT_ROOT}/common/technology


IFLAG += -I "${AUTOPILOT_ROOT}/include"
IFLAG += -I "${AUTOPILOT_ROOT}/include/ap_sysc"
IFLAG += -I "${AUTOPILOT_TECH}/generic/SystemC"
IFLAG += -I "${AUTOPILOT_TECH}/generic/SystemC/AESL_FP_comp"
IFLAG += -I "${AUTOPILOT_TECH}/generic/SystemC/AESL_comp"
IFLAG += -I "${AUTOPILOT_TOOL}/auto_cc/include"
IFLAG += -D__HLS_COSIM__

IFLAG += -D__HLS_CSIM__

IFLAG += -D__VITIS_HLS__

IFLAG += -D__SIM_FPO__

IFLAG += -D__SIM_FFT__

IFLAG += -D__SIM_FIR__

IFLAG += -D__SIM_DDS__

IFLAG += -D__DSP48E1__
LFLAG += -LD:/opencv/build/install/x64/mingw/bin -lopencv_core440 -lopencv_highgui440 -lopencv_imgproc440 -lopencv_imgcodecs440 -Wl,--stack,0x40000000
IFLAG += -g
IFLAG += -DNT
LFLAG += -Wl,--enable-auto-import 
DFLAG += -D__xilinx_ip_top= -DAESL_TB
CCFLAG += -Werror=return-type
CCFLAG += -Wno-abi
TOOLCHAIN += 



include ./Makefile.rules

all: $(TARGET)



$(ObjDir)/tb.o: ../../../../tb.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../tb.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD -ID:/opencv/build/install/include -ID:/Xilinx/Vitis_Libraries/vision/L1/include -ID:/Xilinx/Vitis_Libraries/vision/L1/include/common -ID:/Xilinx/Vitis_Libraries/vision/L1/include/core -I../../../../. -ID:/opencv/build/install/include -ID:/Xilinx/Vitis_Libraries/vision/L1/include -ID:/Xilinx/Vitis_Libraries/vision/L1/include/common -ID:/Xilinx/Vitis_Libraries/vision/L1/include/core -I../../../../. -std=c++14 -std=c++14 -Wno-unknown-pragmas -Wno-unknown-pragmas  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/tb.d

$(ObjDir)/accel.o: ../../../../accel.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../accel.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD -ID:/Xilinx/Vitis_Libraries/vision/L1/include -ID:/Xilinx/Vitis_Libraries/vision/L1/include/common -ID:/Xilinx/Vitis_Libraries/vision/L1/include/core -I../../../.././. -ID:/Xilinx/Vitis_Libraries/vision/L1/include -ID:/Xilinx/Vitis_Libraries/vision/L1/include/common -ID:/Xilinx/Vitis_Libraries/vision/L1/include/core -I../../. -std=c++14 -std=c++14  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/accel.d
