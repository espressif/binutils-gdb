/* RISC-V ELF support for BFD.
   Copyright (C) 2011-2025 Free Software Foundation, Inc.

   Contributed by Andrew Waterman (andrew@sifive.com).
   Based on MIPS ELF support for BFD, by Ian Lance Taylor.

   This file is part of BFD, the Binary File Descriptor library.

   This program is free software; you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation; either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program; see the file COPYING3. If not,
   see <http://www.gnu.org/licenses/>.  */

/* This file holds definitions specific to the RISCV ELF ABI.  Note
   that most of this is not actually implemented by BFD.  */

#ifndef _ELF_RISCV_H
#define _ELF_RISCV_H

#include "elf/reloc-macros.h"
#include "libiberty.h"

/* Relocation types.  */
START_RELOC_NUMBERS (elf_riscv_reloc_type)
  /* Relocation types used by the dynamic linker.  */
  RELOC_NUMBER (R_RISCV_NONE, 0)
  RELOC_NUMBER (R_RISCV_32, 1)
  RELOC_NUMBER (R_RISCV_64, 2)
  RELOC_NUMBER (R_RISCV_RELATIVE, 3)
  RELOC_NUMBER (R_RISCV_COPY, 4)
  RELOC_NUMBER (R_RISCV_JUMP_SLOT, 5)
  RELOC_NUMBER (R_RISCV_TLS_DTPMOD32, 6)
  RELOC_NUMBER (R_RISCV_TLS_DTPMOD64, 7)
  RELOC_NUMBER (R_RISCV_TLS_DTPREL32, 8)
  RELOC_NUMBER (R_RISCV_TLS_DTPREL64, 9)
  RELOC_NUMBER (R_RISCV_TLS_TPREL32, 10)
  RELOC_NUMBER (R_RISCV_TLS_TPREL64, 11)
  RELOC_NUMBER (R_RISCV_TLSDESC, 12)

  /* Relocation types not used by the dynamic linker.  */
  RELOC_NUMBER (R_RISCV_BRANCH, 16)
  RELOC_NUMBER (R_RISCV_JAL, 17)
  RELOC_NUMBER (R_RISCV_CALL, 18)
  RELOC_NUMBER (R_RISCV_CALL_PLT, 19)
  RELOC_NUMBER (R_RISCV_GOT_HI20, 20)
  RELOC_NUMBER (R_RISCV_TLS_GOT_HI20, 21)
  RELOC_NUMBER (R_RISCV_TLS_GD_HI20, 22)
  RELOC_NUMBER (R_RISCV_PCREL_HI20, 23)
  RELOC_NUMBER (R_RISCV_PCREL_LO12_I, 24)
  RELOC_NUMBER (R_RISCV_PCREL_LO12_S, 25)
  RELOC_NUMBER (R_RISCV_HI20, 26)
  RELOC_NUMBER (R_RISCV_LO12_I, 27)
  RELOC_NUMBER (R_RISCV_LO12_S, 28)
  RELOC_NUMBER (R_RISCV_TPREL_HI20, 29)
  RELOC_NUMBER (R_RISCV_TPREL_LO12_I, 30)
  RELOC_NUMBER (R_RISCV_TPREL_LO12_S, 31)
  RELOC_NUMBER (R_RISCV_TPREL_ADD, 32)
  RELOC_NUMBER (R_RISCV_ADD8, 33)
  RELOC_NUMBER (R_RISCV_ADD16, 34)
  RELOC_NUMBER (R_RISCV_ADD32, 35)
  RELOC_NUMBER (R_RISCV_ADD64, 36)
  RELOC_NUMBER (R_RISCV_SUB8, 37)
  RELOC_NUMBER (R_RISCV_SUB16, 38)
  RELOC_NUMBER (R_RISCV_SUB32, 39)
  RELOC_NUMBER (R_RISCV_SUB64, 40)
  RELOC_NUMBER (R_RISCV_ALIGN, 43)
  RELOC_NUMBER (R_RISCV_RVC_BRANCH, 44)
  RELOC_NUMBER (R_RISCV_RVC_JUMP, 45)
  RELOC_NUMBER (R_RISCV_RVC_LUI, 46)
  RELOC_NUMBER (R_RISCV_GPREL_I, 47)
  RELOC_NUMBER (R_RISCV_GPREL_S, 48)
  RELOC_NUMBER (R_RISCV_TPREL_I, 49)
  RELOC_NUMBER (R_RISCV_TPREL_S, 50)
  RELOC_NUMBER (R_RISCV_RELAX, 51)
  RELOC_NUMBER (R_RISCV_SUB6, 52)
  RELOC_NUMBER (R_RISCV_SET6, 53)
  RELOC_NUMBER (R_RISCV_SET8, 54)
  RELOC_NUMBER (R_RISCV_SET16, 55)
  RELOC_NUMBER (R_RISCV_SET32, 56)
  RELOC_NUMBER (R_RISCV_32_PCREL, 57)
  RELOC_NUMBER (R_RISCV_IRELATIVE, 58)
  /* Reserved 59 for R_RISCV_PLT32.  */
  RELOC_NUMBER (R_RISCV_SET_ULEB128, 60)
  RELOC_NUMBER (R_RISCV_SUB_ULEB128, 61)
  RELOC_NUMBER (R_RISCV_TLSDESC_HI20, 62)
  RELOC_NUMBER (R_RISCV_TLSDESC_LOAD_LO12, 63)
  RELOC_NUMBER (R_RISCV_TLSDESC_ADD_LO12, 64)
  RELOC_NUMBER (R_RISCV_TLSDESC_CALL, 65)
  /* update R_RISCV_internal_first if add new reloc.  */

  /* Vendor-specific (nonstandard) relocations are defined here only to provide
     string version names (in readelf).  */
  RELOC_NUMBER (R_RISCV_VENDOR, 191)
  RELOC_NUMBER (R_RISCV_CUSTOM0, 192)
  RELOC_NUMBER (R_RISCV_CUSTOM1, 193)
  RELOC_NUMBER (R_RISCV_CUSTOM2, 194)
  RELOC_NUMBER (R_RISCV_CUSTOM3, 195)
  RELOC_NUMBER (R_RISCV_CUSTOM4, 196)
  RELOC_NUMBER (R_RISCV_CUSTOM5, 197)
  RELOC_NUMBER (R_RISCV_CUSTOM6, 198)
  RELOC_NUMBER (R_RISCV_CUSTOM7, 199)
  RELOC_NUMBER (R_RISCV_CUSTOM8, 200)
  RELOC_NUMBER (R_RISCV_CUSTOM9, 201)
  RELOC_NUMBER (R_RISCV_CUSTOM10, 202)
  RELOC_NUMBER (R_RISCV_CUSTOM11, 203)
  RELOC_NUMBER (R_RISCV_CUSTOM12, 204)
  RELOC_NUMBER (R_RISCV_CUSTOM13, 205)
  RELOC_NUMBER (R_RISCV_CUSTOM14, 206)
  RELOC_NUMBER (R_RISCV_CUSTOM15, 207)
  RELOC_NUMBER (R_RISCV_CUSTOM16, 208)
  RELOC_NUMBER (R_RISCV_CUSTOM17, 209)
  RELOC_NUMBER (R_RISCV_CUSTOM18, 210)
  RELOC_NUMBER (R_RISCV_CUSTOM19, 211)
  RELOC_NUMBER (R_RISCV_CUSTOM20, 212)
  RELOC_NUMBER (R_RISCV_CUSTOM21, 213)
  RELOC_NUMBER (R_RISCV_CUSTOM22, 214)
  RELOC_NUMBER (R_RISCV_CUSTOM23, 215)
  RELOC_NUMBER (R_RISCV_CUSTOM24, 216)
  RELOC_NUMBER (R_RISCV_CUSTOM25, 217)
  RELOC_NUMBER (R_RISCV_CUSTOM26, 218)
  RELOC_NUMBER (R_RISCV_CUSTOM27, 219)
  RELOC_NUMBER (R_RISCV_CUSTOM28, 220)
  RELOC_NUMBER (R_RISCV_CUSTOM29, 221)
  RELOC_NUMBER (R_RISCV_CUSTOM30, 222)
  RELOC_NUMBER (R_RISCV_CUSTOM31, 223)
  RELOC_NUMBER (R_RISCV_CUSTOM32, 224)
  RELOC_NUMBER (R_RISCV_CUSTOM33, 225)
  RELOC_NUMBER (R_RISCV_CUSTOM34, 226)
  RELOC_NUMBER (R_RISCV_CUSTOM35, 227)
  RELOC_NUMBER (R_RISCV_CUSTOM36, 228)
  RELOC_NUMBER (R_RISCV_CUSTOM37, 229)
  RELOC_NUMBER (R_RISCV_CUSTOM38, 230)
  RELOC_NUMBER (R_RISCV_CUSTOM39, 231)
  RELOC_NUMBER (R_RISCV_CUSTOM40, 232)
  RELOC_NUMBER (R_RISCV_CUSTOM41, 233)
  RELOC_NUMBER (R_RISCV_CUSTOM42, 234)
  RELOC_NUMBER (R_RISCV_CUSTOM43, 235)
  RELOC_NUMBER (R_RISCV_CUSTOM44, 236)
  RELOC_NUMBER (R_RISCV_CUSTOM45, 237)
  RELOC_NUMBER (R_RISCV_CUSTOM46, 238)
  RELOC_NUMBER (R_RISCV_CUSTOM47, 239)
  RELOC_NUMBER (R_RISCV_CUSTOM48, 240)
  RELOC_NUMBER (R_RISCV_CUSTOM49, 241)
  RELOC_NUMBER (R_RISCV_CUSTOM50, 242)
  RELOC_NUMBER (R_RISCV_CUSTOM51, 243)
  RELOC_NUMBER (R_RISCV_CUSTOM52, 244)
  RELOC_NUMBER (R_RISCV_CUSTOM53, 245)
  RELOC_NUMBER (R_RISCV_CUSTOM54, 246)
  RELOC_NUMBER (R_RISCV_CUSTOM55, 247)
  RELOC_NUMBER (R_RISCV_CUSTOM56, 248)
  RELOC_NUMBER (R_RISCV_CUSTOM57, 249)
  RELOC_NUMBER (R_RISCV_CUSTOM58, 250)
  RELOC_NUMBER (R_RISCV_CUSTOM59, 251)
  RELOC_NUMBER (R_RISCV_CUSTOM60, 252)
  RELOC_NUMBER (R_RISCV_CUSTOM61, 253)
  RELOC_NUMBER (R_RISCV_CUSTOM62, 254)
  RELOC_NUMBER (R_RISCV_CUSTOM63, 255)
END_RELOC_NUMBERS (R_RISCV_max)

/* Internal relocations used exclusively by the relaxation pass.  */
#define R_RISCV_internal_first (R_RISCV_TLSDESC_CALL + 1)
#define R_RISCV_DELETE  (R_RISCV_internal_first)
#define R_RISCV_RVC_LUI (R_RISCV_internal_first + 1)
#define R_RISCV_GPREL_I (R_RISCV_internal_first + 2)
#define R_RISCV_GPREL_S (R_RISCV_internal_first + 3)
#define R_RISCV_TPREL_I (R_RISCV_internal_first + 4)
#define R_RISCV_TPREL_S (R_RISCV_internal_first + 5)

/* Vendor specific relocations macro and structures.  */
#define R_RISCV_ESPRESSIF_VENDOR_ID_STR "esp"

/* VENDOR IDs for internal usage.  */
enum elf_riscv_vendor_id {
  R_RISCV_VENDOR_ID_NONE = -1,
  R_RISCV_VENDOR_ID_ESP,
};

/* Vendor (Espressif) relocations.  */
START_RELOC_NUMBERS (elf_riscv_esp_reloc_type)
  RELOC_NUMBER (R_RISCV_ESP_LP_OFFSET_9, 192)
  RELOC_NUMBER (R_RISCV_ESP_LP_OFFSET_12, 193)
END_RELOC_NUMBERS (R_RISCV_ESP_max)

#ifdef RELOC_MACROS_GEN_FUNC
static const char *elf_riscv_vendor_reloc_type (const char *vendor, unsigned long rtype);
static const char *
elf_riscv_vendor_reloc_type (const char *vendor, unsigned long rtype)
{
  if (strcmp(vendor, R_RISCV_ESPRESSIF_VENDOR_ID_STR) == 0)
  {
    return elf_riscv_esp_reloc_type(rtype);
  }
  return elf_riscv_reloc_type(rtype);
}
#endif /* RELOC_MACROS_GEN_FUNC */
/* Processor specific flags for the ELF header e_flags field.  */

/* File may contain compressed instructions.  */
#define EF_RISCV_RVC 0x0001

/* Which floating-point ABI a file uses.  */
#define EF_RISCV_FLOAT_ABI 0x0006

/* File uses the soft-float ABI.  */
#define EF_RISCV_FLOAT_ABI_SOFT 0x0000

/* File uses the single-float ABI.  */
#define EF_RISCV_FLOAT_ABI_SINGLE 0x0002

/* File uses the double-float ABI.  */
#define EF_RISCV_FLOAT_ABI_DOUBLE 0x0004

/* File uses the quad-float ABI.  */
#define EF_RISCV_FLOAT_ABI_QUAD 0x0006

/* File uses the 32E base integer instruction.  */
#define EF_RISCV_RVE 0x0008

/* The name of the global pointer symbol.  */
#define RISCV_GP_SYMBOL "__global_pointer$"

/* Processor specific dynamic array tags.  */
#define DT_RISCV_VARIANT_CC (DT_LOPROC + 1)

/* RISC-V specific values for st_other.  */
#define STO_RISCV_VARIANT_CC 0x80

/* File uses the TSO model. */
#define EF_RISCV_TSO 0x0010

/* Additional section types.  */
#define SHT_RISCV_ATTRIBUTES (SHT_LOPROC + 3) /* Section holds attributes.  */

/* Processor specific program header types.  */

/* Location of RISC-V ELF attribute section. */
#define PT_RISCV_ATTRIBUTES 0x70000003

/* Object attributes.  */
enum
{
  /* 0-3 are generic.  */
  Tag_RISCV_stack_align = 4,
  Tag_RISCV_arch = 5,
  Tag_RISCV_unaligned_access = 6,
  Tag_RISCV_priv_spec = 8,
  Tag_RISCV_priv_spec_minor = 10,
  Tag_RISCV_priv_spec_revision = 12
};

#endif /* _ELF_RISCV_H */
