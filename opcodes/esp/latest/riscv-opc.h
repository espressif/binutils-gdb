/* Vendor-specific (Espressif) masks.  */
#define MASK_ESP_RM_00 ENCODE_ESP_RM_00 (-1U)
#define MASK_ESP_RM_01 ENCODE_ESP_RM_01 (-1U)
#define MASK_ESP_RM_02 ENCODE_ESP_RM_02 (-1U)
#define MASK_ESP_RM_03 ENCODE_ESP_RM_03 (-1U)
#define MASK_ESP_RM_04 ENCODE_ESP_RM_04 (-1U)
#define MASK_ESP_RM_05 ENCODE_ESP_RM_05 (-1U)
#define MASK_ESP_RM_06 ENCODE_ESP_RM_06 (-1U)
#define MASK_ESP_RM_07 ENCODE_ESP_RM_07 (-1U)
#define MASK_ESP_RM_08 ENCODE_ESP_RM_08 (-1U)
#define MASK_ESP_RM_09 ENCODE_ESP_RM_09 (-1U)
#define MASK_ESP_RM_10 ENCODE_ESP_RM_10 (-1U)
#define MASK_ESP_SAT_00 ENCODE_ESP_SAT_00 (-1U)
#define MASK_ESP_SAT_01 ENCODE_ESP_SAT_01 (-1U)
#define MASK_ESP_SAT_02 ENCODE_ESP_SAT_02 (-1U)
#define MASK_ESP_SAT_03 ENCODE_ESP_SAT_03 (-1U)
#define MASK_ESP_SAT_04 ENCODE_ESP_SAT_04 (-1U)
#define MASK_ESP_SAT_05 ENCODE_ESP_SAT_05 (-1U)
#define MASK_ESP_SAT_06 ENCODE_ESP_SAT_06 (-1U)
#define MASK_ESP_SAT_07 ENCODE_ESP_SAT_07 (-1U)
#define MASK_ESP_SAT_08 ENCODE_ESP_SAT_08 (-1U)
#define MASK_ESP_SAT_09 ENCODE_ESP_SAT_09 (-1U)
#define MASK_ESP_SAT_10 ENCODE_ESP_SAT_10 (-1U)
#define MASK_ESP_SAT_11 ENCODE_ESP_SAT_11 (-1U)
#define MASK_ESP_SAT_12 ENCODE_ESP_SAT_12 (-1U)
#define MASK_ESP_SAT_13 ENCODE_ESP_SAT_13 (-1U)
#define MASK_ESP_SAT_14 ENCODE_ESP_SAT_14 (-1U)
#define MASK_ESP_SAT_15 ENCODE_ESP_SAT_15 (-1U)
#define MASK_ESP_SAT_16 ENCODE_ESP_SAT_16 (-1U)


/* XESPV registers.  */
const char riscv_espv_qr_names_numeric[8][NRC] =
{
  "q0", "q1", "q2", "q3", "q4", "q5", "q6", "q7"
};

/* XESPV rounding modes.  */
const char * const riscv_espv_rm[8] =
{
  "rdn", "rup", "raz", "rtz", "rhaz", "rhtz", "rne", "dyn"
};

/* XESPV saturation mode.  */
const char * const riscv_espv_sat[2] =
{
  "trunc", "sat"
};
        
