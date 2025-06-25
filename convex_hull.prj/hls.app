<AutoPilot:project xmlns:AutoPilot="com.autoesl.autopilot.project" projectType="C/C++" top="convex_hull_accel" name="convex_hull.prj">
    <files>
        <file name="../../tb.cpp" sc="0" tb="1" cflags="-std=c++14 -ID:/opencv/build/install/include -ID:/Xilinx/Vitis_Libraries/vision/L1/include -ID:/Xilinx/Vitis_Libraries/vision/L1/include/common -ID:/Xilinx/Vitis_Libraries/vision/L1/include/core -I../../. -std=c++14 -ID:/opencv/build/install/include -ID:/Xilinx/Vitis_Libraries/vision/L1/include -ID:/Xilinx/Vitis_Libraries/vision/L1/include/common -ID:/Xilinx/Vitis_Libraries/vision/L1/include/core -I../../. -Wno-unknown-pragmas" csimflags="" blackbox="false"/>
        <file name="./accel.cpp" sc="0" tb="false" cflags="-std=c++14 -ID:/Xilinx/Vitis_Libraries/vision/L1/include -ID:/Xilinx/Vitis_Libraries/vision/L1/include/common -ID:/Xilinx/Vitis_Libraries/vision/L1/include/core -I." csimflags="-std=c++14 -ID:/Xilinx/Vitis_Libraries/vision/L1/include -ID:/Xilinx/Vitis_Libraries/vision/L1/include/common -ID:/Xilinx/Vitis_Libraries/vision/L1/include/core -I." blackbox="false"/>
    </files>
    <solutions>
        <solution name="sol1" status=""/>
    </solutions>
    <Simulation argv="">
        <SimFlow name="csim" setup="false" optimizeCompile="false" clean="false" ldflags="-LD:/opencv/build/install/x64/mingw/bin  -lopencv_core440  -lopencv_highgui440  -lopencv_imgproc440  -lopencv_imgcodecs440" mflags=""/>
    </Simulation>
</AutoPilot:project>

