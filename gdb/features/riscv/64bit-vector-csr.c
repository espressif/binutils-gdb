/* THIS FILE IS GENERATED.  -*- buffer-read-only: t -*- vi:set ro:
  Original: 64bit-vector-csr.xml */

#include "gdbsupport/tdesc.h"

static int
create_feature_riscv_64bit_vector_csr (struct target_desc *result, long regnum)
{
  struct tdesc_feature *feature;

  feature = tdesc_create_feature (result, "org.gnu.gdb.riscv.csr");
  regnum = 73;
  tdesc_create_reg (feature, "vstart", regnum++, 1, NULL, 64, "int");
  regnum = 80;
  tdesc_create_reg (feature, "vcsr", regnum++, 1, NULL, 64, "int");
  regnum = 3169;
  tdesc_create_reg (feature, "vl", regnum++, 1, NULL, 64, "int");
  tdesc_create_reg (feature, "vtype", regnum++, 1, NULL, 64, "int");
  tdesc_create_reg (feature, "vlenb", regnum++, 1, NULL, 64, "int");
  return regnum;
}
