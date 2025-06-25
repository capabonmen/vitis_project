// accel.h - Header for convex_hull_accel
// Contains function declarations and shared structures.

#ifndef ACCEL_H
#define ACCEL_H

#include <hls_stream.h>
#include <ap_int.h>
#include "xf_common.hpp"
#include "xf_utility.hpp"
#include "xf_types.hpp" // This inclusion is kept for robustness

// Shared macro definitions (REDUCED VALUES FOR DEBUGGING)
#define MAX_HEIGHT  128 // Reduced from 512
#define MAX_WIDTH   128 // Reduced from 512
#define TYPE        XF_8UC1
#define NPC         XF_NPPC1
#define MAX_POINTS  64   // Reduced from 256

// We define XF_DEPTH based on TYPE for compatibility.
// For XF_8UC1 (8-bit, 1 channel), the corresponding depth is XF_8U.
// This macro is already defined in xf_types.hpp, so we will use it directly.
// #define XF_DEPTH XF_8U // Commented out, no longer needed here

// Definition of the LocalPoint structure
struct LocalPoint {
    int x;
    int y;
};

// Declaration of the cross function
inline int cross(const LocalPoint &a, const LocalPoint &b, const LocalPoint &c);

// TOP-LEVEL FUNCTION DECLARATION (signature unchanged)
extern "C" {
void convex_hull_accel(
    unsigned char *in_data,
    unsigned char *out_data,
    int            rows,
    int            cols,
    int           *hull_size);
}

#endif // ACCEL_H