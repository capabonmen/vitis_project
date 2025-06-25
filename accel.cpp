// accel.cpp - Convex Hull Accelerator (Monotone Chain, bounded loops)
// Target: Vitis HLS 2023.2

#include "accel.h" // Include the header file

// Implementation of the cross product function
inline int cross(const LocalPoint &a, const LocalPoint &b, const LocalPoint &c) {
    return (b.x - a.x) * (c.y - a.y) - (b.y - a.y) * (c.x - a.x);
}

extern "C" {
void convex_hull_accel(
    unsigned char *in_data,    // Pointer to input image data
    unsigned char *out_data,   // Pointer to output image data
    int            rows,       // Image height
    int            cols,       // Image width
    int           *hull_size)  // Output convex hull size
{
    // The depth must be the maximum image size (MAX_HEIGHT * MAX_WIDTH)
#pragma HLS INTERFACE m_axi       port=in_data    offset=slave bundle=gmem0 depth=16384 // 128 * 128 = 16384
#pragma HLS INTERFACE m_axi       port=out_data   offset=slave bundle=gmem1 depth=16384 // 128 * 128 = 16384
#pragma HLS INTERFACE s_axilite   port=rows           bundle=control
#pragma HLS INTERFACE s_axilite   port=cols           bundle=control
#pragma HLS INTERFACE s_axilite   port=hull_size      bundle=control
#pragma HLS INTERFACE s_axilite   port=return         bundle=control

    // Declare xf::cv::Mat instances without initializing them with external pointers here.
    xf::cv::Mat<TYPE, MAX_HEIGHT, MAX_WIDTH, NPC, XF_DEPTH(TYPE, NPC)> in_img(rows, cols);
    xf::cv::Mat<TYPE, MAX_HEIGHT, MAX_WIDTH, NPC, XF_DEPTH(TYPE, NPC)> out_img(rows, cols);

    // *********** MANUAL INPUT DATA TRANSFER ***********
    // Read pixels from the in_data pointer and write them to in_img's internal stream.
    for (int r = 0; r < rows; r++) {
#pragma HLS LOOP_TRIPCOUNT min=1 max=128
        for (int c = 0; c < cols; c++) {
#pragma HLS LOOP_TRIPCOUNT min=1 max=128
#pragma HLS PIPELINE II=1
            // Convert from unsigned char (8-bit) to XF_TNAME(TYPE, NPC) (ap_uint<8>)
            // The index must be provided to the write() method
            in_img.write(r * cols + c, in_data[r * cols + c]); 
        }
    }

    // 1) Collect non-null points from in_img's stream
    LocalPoint pts[MAX_POINTS];
#pragma HLS ARRAY_PARTITION variable=pts cyclic factor=4
    int count = 0;
    for (int r = 0; r < rows; r++) {
#pragma HLS LOOP_TRIPCOUNT min=1 max=128
        for (int c = 0; c < cols; c++) {
#pragma HLS LOOP_TRIPCOUNT min=1 max=128
#pragma HLS PIPELINE II=1
            // Read from in_img's internal stream, the index must be provided
            XF_TNAME(TYPE, NPC) pix = in_img.read(r * cols + c); 
            if (pix != 0 && count < MAX_POINTS) {
                pts[count++] = {c, r};
            }
        }
    }

    // 2) Corner-case: less than 3 points
    if (count < 3) {
        *hull_size = 0;
        // Fill out_img with zeros (black background)
        for (int r = 0; r < rows; r++) {
#pragma HLS LOOP_TRIPCOUNT min=1 max=128
            for (int c = 0; c < cols; c++) {
#pragma HLS LOOP_TRIPCOUNT min=1 max=128
#pragma HLS PIPELINE II=1
                // Write to out_img's internal stream, the index must be provided
                out_img.write(r * cols + c, 0); 
            }
        }
        // *********** MANUAL OUTPUT DATA TRANSFER ***********
        // Read from out_img's internal stream and write to the out_data pointer.
        for (int r = 0; r < rows; r++) {
#pragma HLS LOOP_TRIPCOUNT min=1 max=128
            for (int c = 0; c < cols; c++) {
#pragma HLS LOOP_TRIPCOUNT min=1 max=128
#pragma HLS PIPELINE II=1
                // Read from out_img's internal stream, the index must be provided
                out_data[r * cols + c] = out_img.read(r * cols + c); 
            }
        }
        return;
    }

    // 3) Insertion sort (x, then y)
    for (int i = 1; i < count; i++) {
#pragma HLS PIPELINE II=1
#pragma HLS LOOP_TRIPCOUNT min=1 max=64
        LocalPoint key = pts[i];
        int j = i - 1;
        while (j >= 0 && (pts[j].x > key.x || (pts[j].x == key.x && pts[j].y > key.y))) {
#pragma HLS UNROLL factor=2
            pts[j + 1] = pts[j];
            j--;
        }
        pts[j + 1] = key;
    }

    // 4) Convex Hull Construction (Monotone Chain)
    LocalPoint hull[MAX_POINTS];
#pragma HLS ARRAY_PARTITION variable=hull cyclic factor=4
    int k = 0;

    // Lower hull
    for (int i = 0; i < count; i++) {
#pragma HLS PIPELINE II=1
#pragma HLS LOOP_TRIPCOUNT min=1 max=64
        for (int cnt = 0; cnt < MAX_POINTS; cnt++) {
            if (!(k >= 2 && cross(hull[k-2], hull[k-1], pts[i]) <= 0)) {
                break;
            }
            k--;
        }
        hull[k++] = pts[i];
    }

    // Upper hull
    int t = k + 1;
    for (int i = count - 2; i >= 0; i--) {
#pragma HLS PIPELINE II=1
#pragma HLS LOOP_TRIPCOUNT min=1 max=64
        for (int cnt = 0; cnt < MAX_POINTS; cnt++) {
            if (!(k >= t && cross(hull[k-2], hull[k-1], pts[i]) <= 0)) {
                break;
            }
            k--;
        }
        hull[k++] = pts[i];
    }

    int hs = k - 1;
    *hull_size = hs;

    // 5) Rasterize hull onto out_img: clear and draw
    for (int r = 0; r < rows; r++) {
#pragma HLS LOOP_TRIPCOUNT min=1 max=128
        for (int c = 0; c < cols; c++) {
#pragma HLS LOOP_TRIPCOUNT min=1 max=128
#pragma HLS PIPELINE II=1
            out_img.write(r * cols + c, 0); 
        }
    }

    for (int i = 0; i < hs; i++) {
#pragma HLS PIPELINE II=1
#pragma HLS LOOP_TRIPCOUNT min=1 max=64
        LocalPoint p = hull[i];
        if (p.x >= 0 && p.x < cols && p.y >= 0 && p.y < rows) {
            out_img.write(p.y * cols + p.x, 255); 
        }
    }

    // *********** MANUAL OUTPUT DATA TRANSFER ***********
    // Read from out_img's internal stream and write to the out_data pointer.
    for (int r = 0; r < rows; r++) {
#pragma HLS LOOP_TRIPCOUNT min=1 max=128
        for (int c = 0; c < cols; c++) {
#pragma HLS LOOP_TRIPCOUNT min=1 max=128
#pragma HLS PIPELINE II=1
            out_data[r * cols + c] = out_img.read(r * cols + c); 
        }
    }
}
}