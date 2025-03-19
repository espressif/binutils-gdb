/* RISC-V Xuantie disassembler
   Copyright (C) 2011-2024 Free Software Foundation, Inc.

   Contributed by Lifang Xia (lifang_xia@linux.alibaba.com).

   This file is part of the GNU opcodes library.

   This library is free software; you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation; either version 3, or (at your option)
   any later version.

   It is distributed in the hope that it will be useful, but WITHOUT
   ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
   or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public
   License for more details.

   You should have received a copy of the GNU General Public License
   along with this program; see the file COPYING3. If not,
   see <http://www.gnu.org/licenses/>.  */

/* This file is only included by riscv-dis.c.  */

#ifndef __RISCV_DIS_XT__
#define __RISCV_DIS_XT__

static bool
riscv_xuantie_print_csr( unsigned csr, disassemble_info *info)
{
  fprintf_styled_ftype print = info->fprintf_styled_func;

  if (strcmp (riscv_xuantie_get_series_with_subset (
      &riscv_rps_dis), "c907") == 0
      && (csr == CSR_MHINT2H || csr == CSR_MCCR2H))
    {
      if (csr == CSR_MHINT2H)
        print (info->stream, dis_style_register, "%s", "mhint2h");
      else if (csr == CSR_MCCR2H)
        print (info->stream, dis_style_register, "%s", "mccr2h");
      return true;
    }
  else if (strcmp (riscv_xuantie_get_series_with_subset (&riscv_rps_dis), "e900") == 0
	   && (csr == CSR_MRADDR || csr == CSR_MNMICAUSE
	   || csr == CSR_MNMIPC || csr == CSR_MCLICBASE))
    {
      if (csr == CSR_MRADDR)
	print (info->stream, dis_style_register, "%s", "mraddr");
      else if (csr == CSR_MEXSTATUS)
	print (info->stream, dis_style_register, "%s", "mexstatus");
      else if (csr == CSR_MNMICAUSE)
	print (info->stream, dis_style_register, "%s", "mnmicause");
      else if (csr == CSR_MNMIPC)
	print (info->stream, dis_style_register, "%s", "mnmipc");
      else if (csr == CSR_MCLICBASE)
	print (info->stream, dis_style_register, "%s", "mclicbase");
      return true;
    }

  return false;
}

#endif
