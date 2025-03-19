/* RISC-V Xuantie specific support for ELF.
   Copyright (C) 2011-2024 Free Software Foundation, Inc.

   Contributed by Lifang Xia (lifang_xia@linux.alibaba.com).

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

/* For Xuantie, get CPU series with subset.  */

const char *
riscv_xuantie_get_series_with_subset (riscv_parse_subset_t *rps)
{
  /* Only C910v2
     rv64imafdc_zicbom_zicbop_zicboz_zicond_zihintntl_zihintpause_zawrs
     _zfa_zfbfmin_zfh_zca_zcb_zcd_zba_zbb_zbc_zbs_svinval_svnapot_svpbmt
     _xtheadc
     */
  if (riscv_subset_supports (rps, "zfbfmin"))
    return "c910v2";
  /* Only C907
     rv64imac_zicbom_zicbop_zicboz_zicond_zihintntl_zihintpause_zawrs
     _zba_zbb_zbc_zbs_svinval_svnapot_svpbmt_xtheadc
     */
  else if (riscv_subset_supports (rps, "zicond"))
    return "c907";
  /* Only
     rv64imafdc_zicbom_zicbop_zicboz_zihintpause_zfh_zba_zbb_zbc_zbs
     _svinval_svnapot_svpbmt_xtheadc
     C908.  */
  else if (riscv_subset_supports (rps, "zihintpause"))
    return "c908";
  /* Only C910v1.  rv64imafdc_zfh_xtheadc  */
  else if (riscv_subset_supports (rps, "zfh"))
    return "c910v1";
  /* Only C906.   rv64imacxtheadc  */
  else if (*rps->xlen == 64)
    return "c906";
  /* E902/E906/E907.  */
  else
    return "e900";
}

bool
riscv_vendor_perfer_subset (riscv_subset_list_t *subset_list,
                            const char *subset, int major, int minor)
{
  riscv_subset_t *current;
  if (*subset == 'v' && major == 0 && minor == 7)
    {
      /* v0p7 are split into xtheadvector1p0 and xtheadzvamo1p0.  */
      if (!riscv_lookup_subset (subset_list, "xtheadvector", &current))
	{
	  riscv_add_subset (subset_list, "xtheadvector", 1, 0);
	}
      if (!riscv_lookup_subset (subset_list, "xtheadzvamo", &current))
	{
	  riscv_add_subset (subset_list, "xtheadzvamo", 1, 0);
	}
      return true;
    }
  else if (strcmp(subset, "zvamo") == 0 && major == 0 && minor == 7)
    {
      riscv_add_subset (subset_list, "xtheadzvamo", 1, 0);
      return true;
    }
  else if (strcmp(subset, "zvlsseg") == 0 && major == 0 && minor == 7)
    {
      riscv_add_subset (subset_list, "xtheadvector", 1, 0);
      return true;
    }
  return false;
}

