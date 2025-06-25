// tb.cpp - Testbench for convex_hull_accel

#include "accel.h" // Important: Include the header!
#include "common/xf_headers.hpp" // For xf::cv::Mat and utilities
#include <opencv2/opencv.hpp>
#include <iostream>
#include <cstring> // For memcpy

// MAX_HEIGHT, MAX_WIDTH, TYPE, NPC do not need to be defined here
// as they are included from "accel.h"

int main() {
    // 1) Generate input with OpenCV
    cv::Mat in_cv(MAX_HEIGHT, MAX_WIDTH, CV_8UC1, cv::Scalar(0));
    cv::RNG rng;
    for (int i = 0; i < 100; i++) {
        // Generate points within a more centered range to ensure they are not at the extreme edges
        int x = rng.uniform(MAX_WIDTH / 4, 3 * MAX_WIDTH / 4); // Range 128 to 384 for 512
        int y = rng.uniform(MAX_HEIGHT / 4, 3 * MAX_HEIGHT / 4); // Range 128 to 384 for 512
        cv::circle(in_cv, cv::Point(x, y), 1, cv::Scalar(255), -1);
    }

    // 2) Prepare data pointers for the HLS function
    // We need raw data buffers for the AXI m_axi interfaces
    unsigned char *in_data_ptr = (unsigned char *)malloc(MAX_HEIGHT * MAX_WIDTH * sizeof(unsigned char));
    unsigned char *out_data_ptr = (unsigned char *)malloc(MAX_HEIGHT * MAX_WIDTH * sizeof(unsigned char));

    // Copy input image data from OpenCV to the input buffer for HLS
    memcpy(in_data_ptr, in_cv.data, MAX_HEIGHT * MAX_WIDTH * sizeof(unsigned char));

    // 3) Call the accelerator
    int hull_size = 0;
    // Call the HLS function with data pointers and dimensions
    convex_hull_accel(in_data_ptr, out_data_ptr, MAX_HEIGHT, MAX_WIDTH, &hull_size);

    // 4) Retrieve and display
    cv::Mat out_cv(MAX_HEIGHT, MAX_WIDTH, CV_8UC1);
    // Copy data from the HLS output buffer to the OpenCV output image
    memcpy(out_cv.data, out_data_ptr, MAX_HEIGHT * MAX_WIDTH * sizeof(unsigned char));

    std::cout << "Hull size: " << hull_size << std::endl;
    cv::imshow("Input", in_cv);
    cv::imshow("Hull", out_cv);
    cv::waitKey(0);

    // Free allocated memory
    free(in_data_ptr);
    free(out_data_ptr);

    return 0;
}