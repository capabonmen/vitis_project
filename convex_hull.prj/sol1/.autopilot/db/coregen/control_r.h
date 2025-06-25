// 0x00 : reserved
// 0x04 : reserved
// 0x08 : reserved
// 0x0c : reserved
// 0x10 : Data signal of in_data
//        bit 31~0 - in_data[31:0] (Read/Write)
// 0x14 : Data signal of in_data
//        bit 31~0 - in_data[63:32] (Read/Write)
// 0x18 : reserved
// 0x1c : Data signal of out_data
//        bit 31~0 - out_data[31:0] (Read/Write)
// 0x20 : Data signal of out_data
//        bit 31~0 - out_data[63:32] (Read/Write)
// 0x24 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define CONTROL_R_ADDR_IN_DATA_DATA  0x10
#define CONTROL_R_BITS_IN_DATA_DATA  64
#define CONTROL_R_ADDR_OUT_DATA_DATA 0x1c
#define CONTROL_R_BITS_OUT_DATA_DATA 64
