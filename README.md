# Image Processing IP - Convex Hull Exercise with Vitis HLS 2023.2

This project involves creating an IP using **Vitis HLS 2023.2**, based on the **Convex Hull** exercise from OpenCV 4.4.0.

## Description

Project to develop a hardware IP that performs convex hull calculation on images, using Vitis Vision and OpenCV libraries, for synthesis on FPGA platforms.

## Repository Contents

- `accel.cpp` and `accel.h`: Main source code of the IP.  
- `tb.cpp`: Testbench for simulation and functional verification.  
- `run_hls.tcl`: Script for synthesis and simulation with Vitis HLS.

## Requirements

- Vitis HLS 2023.2 installed and configured.  
- Vitis Vision libraries.  
- OpenCV 4.4.0 (for reference).  
- Compatible FPGA platform (optional).

## How to Compile and Synthesize

```bash
git clone https://github.com/capabonmen/vitis_project.git
cd vits_project
vitis_hls -f run_hls.tcl
