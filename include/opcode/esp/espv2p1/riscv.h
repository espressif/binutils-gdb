/* Vendor-specific (Espressif) extract macros.  */
#define EXTRACT_ESP_LP_COUNT(x) \
  (RV_X(x, 20, 12))
#define EXTRACT_ESP_LP_ID(x) \
  (RV_X(x, 7, 1))
#define EXTRACT_ESP_LP_OFFSET_12(x) \
  (RV_X(x, 20, 12) << 1)
#define EXTRACT_ESP_LP_OFFSET_9(x) \
  ((RV_X(x, 15, 5) << 1) | (RV_X(x, 8, 4) << 6))
#define EXTRACT_ESP_OFFSET_16_16_0(x) \
  ( ( ((RV_X(x, 19, 3) << 1) | (RV_X(x, 9, 1))) << (sizeof(x) * 8 - 4) ) >> (sizeof(x) * 8 - 8) )
#define EXTRACT_ESP_OFFSET_16_16_1(x) \
  ( ( (RV_X(x, 19, 4)) << (sizeof(x) * 8 - 4) ) >> (sizeof(x) * 8 - 8) )
#define EXTRACT_ESP_OFFSET_16_16_2(x) \
  ( ( (RV_X(x, 20, 4)) << (sizeof(x) * 8 - 4) ) >> (sizeof(x) * 8 - 8) )
#define EXTRACT_ESP_OFFSET_256_16_0(x) \
  ( ( ((RV_X(x, 20, 4) << 4) | (RV_X(x, 9, 4))) << (sizeof(x) * 8 - 8) ) >> (sizeof(x) * 8 - 12) )
#define EXTRACT_ESP_OFFSET_256_16_1(x) \
  ( ( ((RV_X(x, 28, 3) << 5) | (RV_X(x, 20, 4) << 1) | (RV_X(x, 9, 1))) << (sizeof(x) * 8 - 8) ) >> (sizeof(x) * 8 - 12) )
#define EXTRACT_ESP_OFFSET_256_16_2(x) \
  ( ( ((RV_X(x, 30, 1) << 7) | (RV_X(x, 20, 4) << 3) | (RV_X(x, 10, 3))) << (sizeof(x) * 8 - 8) ) >> (sizeof(x) * 8 - 12) )
#define EXTRACT_ESP_OFFSET_256_16_3(x) \
  ( ( ((RV_X(x, 29, 3) << 5) | (RV_X(x, 20, 4) << 1) | (RV_X(x, 9, 1))) << (sizeof(x) * 8 - 8) ) >> (sizeof(x) * 8 - 12) )
#define EXTRACT_ESP_OFFSET_256_1_0(x) \
  ( ( ((RV_X(x, 28, 3) << 5) | (RV_X(x, 20, 4) << 1) | (RV_X(x, 9, 1))) << (sizeof(x) * 8 - 8) ) >> (sizeof(x) * 8 - 8) )
#define EXTRACT_ESP_OFFSET_256_2_0(x) \
  ( ( ((RV_X(x, 28, 3) << 5) | (RV_X(x, 20, 4) << 1) | (RV_X(x, 9, 1))) << (sizeof(x) * 8 - 8) ) >> (sizeof(x) * 8 - 9) )
#define EXTRACT_ESP_OFFSET_256_4_0(x) \
  ( ( ((RV_X(x, 29, 3) << 5) | (RV_X(x, 20, 4) << 1) | (RV_X(x, 9, 1))) << (sizeof(x) * 8 - 8) ) >> (sizeof(x) * 8 - 10) )
#define EXTRACT_ESP_OFFSET_256_8_0(x) \
  ( ( ((RV_X(x, 27, 3) << 5) | (RV_X(x, 20, 4) << 1) | (RV_X(x, 9, 1))) << (sizeof(x) * 8 - 8) ) >> (sizeof(x) * 8 - 11) )
#define EXTRACT_ESP_OFFSET_256_8_1(x) \
  ( ( ((RV_X(x, 30, 1) << 7) | (RV_X(x, 20, 4) << 3) | (RV_X(x, 10, 3))) << (sizeof(x) * 8 - 8) ) >> (sizeof(x) * 8 - 11) )
#define EXTRACT_ESP_OFFSET_256_8_2(x) \
  ( ( ((RV_X(x, 31, 1) << 7) | (RV_X(x, 20, 4) << 3) | (RV_X(x, 10, 3))) << (sizeof(x) * 8 - 8) ) >> (sizeof(x) * 8 - 11) )
#define EXTRACT_ESP_QU(x) \
  (RV_X(x, 10, 3))
#define EXTRACT_ESP_QV(x) \
  (RV_X(x, 20, 3))
#define EXTRACT_ESP_QW(x) \
  ((RV_X(x, 24, 2)) | (RV_X(x, 19, 1) << 2))
#define EXTRACT_ESP_QX(x) \
  (RV_X(x, 29, 3))
#define EXTRACT_ESP_QY(x) \
  (RV_X(x, 26, 3))
#define EXTRACT_ESP_QZ(x) \
  (RV_X(x, 7, 3))
#define EXTRACT_ESP_RD(x) \
  ((RV_X(x, 10, 1) << 4) | (RV_X(x, 7, 3)))
#define EXTRACT_ESP_RS1_0(x) \
  ((RV_X(x, 18, 1) << 4) | (RV_X(x, 15, 3)))
#define EXTRACT_ESP_RS2_0(x) \
  ((RV_X(x, 23, 1) << 4) | (RV_X(x, 20, 3)))
#define EXTRACT_ESP_SELECT_16_0(x) \
  (RV_X(x, 7, 4))
#define EXTRACT_ESP_SELECT_16_1(x) \
  (RV_X(x, 15, 4))
#define EXTRACT_ESP_SELECT_16_2(x) \
  (RV_X(x, 19, 4))
#define EXTRACT_ESP_SELECT_16_3(x) \
  ((RV_X(x, 22, 1) << 3) | (RV_X(x, 7, 3)))
#define EXTRACT_ESP_SELECT_16_4(x) \
  ((RV_X(x, 24, 2) << 2) | (RV_X(x, 18, 2)))
#define EXTRACT_ESP_SELECT_2_0(x) \
  (RV_X(x, 14, 1))
#define EXTRACT_ESP_SELECT_2_1(x) \
  (RV_X(x, 18, 1))
#define EXTRACT_ESP_SELECT_2_2(x) \
  (RV_X(x, 23, 1))
#define EXTRACT_ESP_SELECT_2_3(x) \
  (RV_X(x, 26, 1))
#define EXTRACT_ESP_SELECT_2_4(x) \
  (RV_X(x, 29, 1))
#define EXTRACT_ESP_SELECT_2_5(x) \
  (RV_X(x, 31, 1))
#define EXTRACT_ESP_SELECT_4_0(x) \
  (RV_X(x, 9, 2))
#define EXTRACT_ESP_SELECT_4_1(x) \
  (RV_X(x, 15, 2))
#define EXTRACT_ESP_SELECT_4_2(x) \
  (RV_X(x, 20, 2))
#define EXTRACT_ESP_SELECT_4_3(x) \
  ((RV_X(x, 22, 1) << 1) | (RV_X(x, 18, 1)))
#define EXTRACT_ESP_SELECT_4_4(x) \
  (RV_X(x, 22, 2))
#define EXTRACT_ESP_SELECT_4_5(x) \
  (RV_X(x, 24, 2))
#define EXTRACT_ESP_SELECT_4_6(x) \
  (RV_X(x, 29, 2))
#define EXTRACT_ESP_SELECT_8_0(x) \
  ((RV_X(x, 24, 2) << 1) | (RV_X(x, 19, 1)))
#define EXTRACT_ESP_SELECT_8_1(x) \
  (RV_X(x, 26, 3))
#define EXTRACT_ESP_SELECT_8_2(x) \
  (RV_X(x, 7, 3))
#define EXTRACT_ESP_UPD_4(x) \
  ((RV_X(x, 19, 1) << 1) | (RV_X(x, 14, 1)))


/* Vendor-specific (Espressif) encode macros.  */
#define ENCODE_ESP_LP_COUNT(x) \
  (RV_X(x, 0, 12) << 20)
#define ENCODE_ESP_LP_ID(x) \
  (RV_X(x, 0, 1) << 7)
#define ENCODE_ESP_LP_OFFSET_12(x) \
  (RV_X(x, 1, 12) << 20)
#define ENCODE_ESP_LP_OFFSET_9(x) \
  ((RV_X(x, 1, 5) << 15) | (RV_X(x, 6, 4) << 8))
#define ENCODE_ESP_OFFSET_16_16_0(x) \
  ((RV_X((x >> 4), 1, 3) << 19) | (RV_X((x >> 4), 0, 1) << 9))
#define ENCODE_ESP_OFFSET_16_16_1(x) \
  (RV_X((x >> 4), 0, 4) << 19)
#define ENCODE_ESP_OFFSET_16_16_2(x) \
  (RV_X((x >> 4), 0, 4) << 20)
#define ENCODE_ESP_OFFSET_256_16_0(x) \
  ((RV_X((x >> 4), 4, 4) << 20) | (RV_X((x >> 4), 0, 4) << 9))
#define ENCODE_ESP_OFFSET_256_16_1(x) \
  ((RV_X((x >> 4), 5, 3) << 28) | (RV_X((x >> 4), 1, 4) << 20) | (RV_X((x >> 4), 0, 1) << 9))
#define ENCODE_ESP_OFFSET_256_16_2(x) \
  ((RV_X((x >> 4), 7, 1) << 30) | (RV_X((x >> 4), 3, 4) << 20) | (RV_X((x >> 4), 0, 3) << 10))
#define ENCODE_ESP_OFFSET_256_16_3(x) \
  ((RV_X((x >> 4), 5, 3) << 29) | (RV_X((x >> 4), 1, 4) << 20) | (RV_X((x >> 4), 0, 1) << 9))
#define ENCODE_ESP_OFFSET_256_1_0(x) \
  ((RV_X((x >> 0), 5, 3) << 28) | (RV_X((x >> 0), 1, 4) << 20) | (RV_X((x >> 0), 0, 1) << 9))
#define ENCODE_ESP_OFFSET_256_2_0(x) \
  ((RV_X((x >> 1), 5, 3) << 28) | (RV_X((x >> 1), 1, 4) << 20) | (RV_X((x >> 1), 0, 1) << 9))
#define ENCODE_ESP_OFFSET_256_4_0(x) \
  ((RV_X((x >> 2), 5, 3) << 29) | (RV_X((x >> 2), 1, 4) << 20) | (RV_X((x >> 2), 0, 1) << 9))
#define ENCODE_ESP_OFFSET_256_8_0(x) \
  ((RV_X((x >> 3), 5, 3) << 27) | (RV_X((x >> 3), 1, 4) << 20) | (RV_X((x >> 3), 0, 1) << 9))
#define ENCODE_ESP_OFFSET_256_8_1(x) \
  ((RV_X((x >> 3), 7, 1) << 30) | (RV_X((x >> 3), 3, 4) << 20) | (RV_X((x >> 3), 0, 3) << 10))
#define ENCODE_ESP_OFFSET_256_8_2(x) \
  ((RV_X((x >> 3), 7, 1) << 31) | (RV_X((x >> 3), 3, 4) << 20) | (RV_X((x >> 3), 0, 3) << 10))
#define ENCODE_ESP_QU(x) \
  (RV_X(x, 0, 3) << 10)
#define ENCODE_ESP_QV(x) \
  (RV_X(x, 0, 3) << 20)
#define ENCODE_ESP_QW(x) \
  ((RV_X(x, 0, 2) << 24) | (RV_X(x, 2, 1) << 19))
#define ENCODE_ESP_QX(x) \
  (RV_X(x, 0, 3) << 29)
#define ENCODE_ESP_QY(x) \
  (RV_X(x, 0, 3) << 26)
#define ENCODE_ESP_QZ(x) \
  (RV_X(x, 0, 3) << 7)
#define ENCODE_ESP_RD(x) \
  ((RV_X(x, 4, 1) << 10) | (RV_X(x, 0, 3) << 7))
#define ENCODE_ESP_RS1_0(x) \
  ((RV_X(x, 4, 1) << 18) | (RV_X(x, 0, 3) << 15))
#define ENCODE_ESP_RS2_0(x) \
  ((RV_X(x, 4, 1) << 23) | (RV_X(x, 0, 3) << 20))
#define ENCODE_ESP_SELECT_16_0(x) \
  (RV_X(x, 0, 4) << 7)
#define ENCODE_ESP_SELECT_16_1(x) \
  (RV_X(x, 0, 4) << 15)
#define ENCODE_ESP_SELECT_16_2(x) \
  (RV_X(x, 0, 4) << 19)
#define ENCODE_ESP_SELECT_16_3(x) \
  ((RV_X(x, 3, 1) << 22) | (RV_X(x, 0, 3) << 7))
#define ENCODE_ESP_SELECT_16_4(x) \
  ((RV_X(x, 2, 2) << 24) | (RV_X(x, 0, 2) << 18))
#define ENCODE_ESP_SELECT_2_0(x) \
  (RV_X(x, 0, 1) << 14)
#define ENCODE_ESP_SELECT_2_1(x) \
  (RV_X(x, 0, 1) << 18)
#define ENCODE_ESP_SELECT_2_2(x) \
  (RV_X(x, 0, 1) << 23)
#define ENCODE_ESP_SELECT_2_3(x) \
  (RV_X(x, 0, 1) << 26)
#define ENCODE_ESP_SELECT_2_4(x) \
  (RV_X(x, 0, 1) << 29)
#define ENCODE_ESP_SELECT_2_5(x) \
  (RV_X(x, 0, 1) << 31)
#define ENCODE_ESP_SELECT_4_0(x) \
  (RV_X(x, 0, 2) << 9)
#define ENCODE_ESP_SELECT_4_1(x) \
  (RV_X(x, 0, 2) << 15)
#define ENCODE_ESP_SELECT_4_2(x) \
  (RV_X(x, 0, 2) << 20)
#define ENCODE_ESP_SELECT_4_3(x) \
  ((RV_X(x, 1, 1) << 22) | (RV_X(x, 0, 1) << 18))
#define ENCODE_ESP_SELECT_4_4(x) \
  (RV_X(x, 0, 2) << 22)
#define ENCODE_ESP_SELECT_4_5(x) \
  (RV_X(x, 0, 2) << 24)
#define ENCODE_ESP_SELECT_4_6(x) \
  (RV_X(x, 0, 2) << 29)
#define ENCODE_ESP_SELECT_8_0(x) \
  ((RV_X(x, 1, 2) << 24) | (RV_X(x, 0, 1) << 19))
#define ENCODE_ESP_SELECT_8_1(x) \
  (RV_X(x, 0, 3) << 26)
#define ENCODE_ESP_SELECT_8_2(x) \
  (RV_X(x, 0, 3) << 7)
#define ENCODE_ESP_UPD_4(x) \
  ((RV_X(x, 1, 1) << 19) | (RV_X(x, 0, 1) << 14))


/* Vendor-specific (Espressif) validation macros.  */
#define VALID_ESP_LP_COUNT(x) (EXTRACT_ESP_LP_COUNT(ENCODE_ESP_LP_COUNT(x)) == (x))
#define VALID_ESP_LP_ID(x) (EXTRACT_ESP_LP_ID(ENCODE_ESP_LP_ID(x)) == (x))
#define VALID_ESP_LP_OFFSET_12(x) (EXTRACT_ESP_LP_OFFSET_12(ENCODE_ESP_LP_OFFSET_12(x)) == (x))
#define VALID_ESP_LP_OFFSET_9(x) (EXTRACT_ESP_LP_OFFSET_9(ENCODE_ESP_LP_OFFSET_9(x)) == (x))
#define VALID_ESP_OFFSET_16_16_0(x) (EXTRACT_ESP_OFFSET_16_16_0(ENCODE_ESP_OFFSET_16_16_0(x)) == (x))
#define VALID_ESP_OFFSET_16_16_1(x) (EXTRACT_ESP_OFFSET_16_16_1(ENCODE_ESP_OFFSET_16_16_1(x)) == (x))
#define VALID_ESP_OFFSET_16_16_2(x) (EXTRACT_ESP_OFFSET_16_16_2(ENCODE_ESP_OFFSET_16_16_2(x)) == (x))
#define VALID_ESP_OFFSET_256_16_0(x) (EXTRACT_ESP_OFFSET_256_16_0(ENCODE_ESP_OFFSET_256_16_0(x)) == (x))
#define VALID_ESP_OFFSET_256_16_1(x) (EXTRACT_ESP_OFFSET_256_16_1(ENCODE_ESP_OFFSET_256_16_1(x)) == (x))
#define VALID_ESP_OFFSET_256_16_2(x) (EXTRACT_ESP_OFFSET_256_16_2(ENCODE_ESP_OFFSET_256_16_2(x)) == (x))
#define VALID_ESP_OFFSET_256_16_3(x) (EXTRACT_ESP_OFFSET_256_16_3(ENCODE_ESP_OFFSET_256_16_3(x)) == (x))
#define VALID_ESP_OFFSET_256_1_0(x) (EXTRACT_ESP_OFFSET_256_1_0(ENCODE_ESP_OFFSET_256_1_0(x)) == (x))
#define VALID_ESP_OFFSET_256_2_0(x) (EXTRACT_ESP_OFFSET_256_2_0(ENCODE_ESP_OFFSET_256_2_0(x)) == (x))
#define VALID_ESP_OFFSET_256_4_0(x) (EXTRACT_ESP_OFFSET_256_4_0(ENCODE_ESP_OFFSET_256_4_0(x)) == (x))
#define VALID_ESP_OFFSET_256_8_0(x) (EXTRACT_ESP_OFFSET_256_8_0(ENCODE_ESP_OFFSET_256_8_0(x)) == (x))
#define VALID_ESP_OFFSET_256_8_1(x) (EXTRACT_ESP_OFFSET_256_8_1(ENCODE_ESP_OFFSET_256_8_1(x)) == (x))
#define VALID_ESP_OFFSET_256_8_2(x) (EXTRACT_ESP_OFFSET_256_8_2(ENCODE_ESP_OFFSET_256_8_2(x)) == (x))
#define VALID_ESP_QU(x) (EXTRACT_ESP_QU(ENCODE_ESP_QU(x)) == (x))
#define VALID_ESP_QV(x) (EXTRACT_ESP_QV(ENCODE_ESP_QV(x)) == (x))
#define VALID_ESP_QW(x) (EXTRACT_ESP_QW(ENCODE_ESP_QW(x)) == (x))
#define VALID_ESP_QX(x) (EXTRACT_ESP_QX(ENCODE_ESP_QX(x)) == (x))
#define VALID_ESP_QY(x) (EXTRACT_ESP_QY(ENCODE_ESP_QY(x)) == (x))
#define VALID_ESP_QZ(x) (EXTRACT_ESP_QZ(ENCODE_ESP_QZ(x)) == (x))
#define VALID_ESP_RD(x) (EXTRACT_ESP_RD(ENCODE_ESP_RD(x)) == (x))
#define VALID_ESP_RS1_0(x) (EXTRACT_ESP_RS1_0(ENCODE_ESP_RS1_0(x)) == (x))
#define VALID_ESP_RS2_0(x) (EXTRACT_ESP_RS2_0(ENCODE_ESP_RS2_0(x)) == (x))
#define VALID_ESP_SELECT_16_0(x) (EXTRACT_ESP_SELECT_16_0(ENCODE_ESP_SELECT_16_0(x)) == (x))
#define VALID_ESP_SELECT_16_1(x) (EXTRACT_ESP_SELECT_16_1(ENCODE_ESP_SELECT_16_1(x)) == (x))
#define VALID_ESP_SELECT_16_2(x) (EXTRACT_ESP_SELECT_16_2(ENCODE_ESP_SELECT_16_2(x)) == (x))
#define VALID_ESP_SELECT_16_3(x) (EXTRACT_ESP_SELECT_16_3(ENCODE_ESP_SELECT_16_3(x)) == (x))
#define VALID_ESP_SELECT_16_4(x) (EXTRACT_ESP_SELECT_16_4(ENCODE_ESP_SELECT_16_4(x)) == (x))
#define VALID_ESP_SELECT_2_0(x) (EXTRACT_ESP_SELECT_2_0(ENCODE_ESP_SELECT_2_0(x)) == (x))
#define VALID_ESP_SELECT_2_1(x) (EXTRACT_ESP_SELECT_2_1(ENCODE_ESP_SELECT_2_1(x)) == (x))
#define VALID_ESP_SELECT_2_2(x) (EXTRACT_ESP_SELECT_2_2(ENCODE_ESP_SELECT_2_2(x)) == (x))
#define VALID_ESP_SELECT_2_3(x) (EXTRACT_ESP_SELECT_2_3(ENCODE_ESP_SELECT_2_3(x)) == (x))
#define VALID_ESP_SELECT_2_4(x) (EXTRACT_ESP_SELECT_2_4(ENCODE_ESP_SELECT_2_4(x)) == (x))
#define VALID_ESP_SELECT_2_5(x) (EXTRACT_ESP_SELECT_2_5(ENCODE_ESP_SELECT_2_5(x)) == (x))
#define VALID_ESP_SELECT_4_0(x) (EXTRACT_ESP_SELECT_4_0(ENCODE_ESP_SELECT_4_0(x)) == (x))
#define VALID_ESP_SELECT_4_1(x) (EXTRACT_ESP_SELECT_4_1(ENCODE_ESP_SELECT_4_1(x)) == (x))
#define VALID_ESP_SELECT_4_2(x) (EXTRACT_ESP_SELECT_4_2(ENCODE_ESP_SELECT_4_2(x)) == (x))
#define VALID_ESP_SELECT_4_3(x) (EXTRACT_ESP_SELECT_4_3(ENCODE_ESP_SELECT_4_3(x)) == (x))
#define VALID_ESP_SELECT_4_4(x) (EXTRACT_ESP_SELECT_4_4(ENCODE_ESP_SELECT_4_4(x)) == (x))
#define VALID_ESP_SELECT_4_5(x) (EXTRACT_ESP_SELECT_4_5(ENCODE_ESP_SELECT_4_5(x)) == (x))
#define VALID_ESP_SELECT_4_6(x) (EXTRACT_ESP_SELECT_4_6(ENCODE_ESP_SELECT_4_6(x)) == (x))
#define VALID_ESP_SELECT_8_0(x) (EXTRACT_ESP_SELECT_8_0(ENCODE_ESP_SELECT_8_0(x)) == (x))
#define VALID_ESP_SELECT_8_1(x) (EXTRACT_ESP_SELECT_8_1(ENCODE_ESP_SELECT_8_1(x)) == (x))
#define VALID_ESP_SELECT_8_2(x) (EXTRACT_ESP_SELECT_8_2(ENCODE_ESP_SELECT_8_2(x)) == (x))
#define VALID_ESP_UPD_4(x) (EXTRACT_ESP_UPD_4(ENCODE_ESP_UPD_4(x)) == (x))


/* Espressif fields.  */
#define OP_MASK_ESP_QU  0x7
#define OP_SH_ESP_QU    10
#define OP_MASK_ESP_QV  0x7
#define OP_SH_ESP_QV    20
#define OP_MASK_ESP_QX  0x7
#define OP_SH_ESP_QX    29
#define OP_MASK_ESP_QY  0x7
#define OP_SH_ESP_QY    26
#define OP_MASK_ESP_QZ  0x7
#define OP_SH_ESP_QZ    7


/* XESPV registers.  */
extern const char riscv_espv_qr_names_numeric[8][NRC];
