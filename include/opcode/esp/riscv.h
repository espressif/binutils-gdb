#if RISCV_XESPV2P1
#include "riscv_xespv2p1.h"
#else
#include "riscv_xespv2p2.h"
#endif

/* Espressif fields.  */
#define OP_MASK_ESP_QU     0x7
#define OP_SH_ESP_QU       10
#define OP_MASK_ESP_QV     0x7
#define OP_SH_ESP_QV       20
#define OP_MASK_ESP_QX     0x7
#define OP_SH_ESP_QX       29
#define OP_MASK_ESP_QY     0x7
#define OP_SH_ESP_QY       26
#define OP_MASK_ESP_QZ     0x7
#define OP_SH_ESP_QZ       7

extern const char riscv_espv_qr_names_numeric[8][NRC];
extern const char * const riscv_espv_rm[8];
extern const char * const riscv_espv_sat[2];
