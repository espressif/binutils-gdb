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


extern const char *
riscv_xuantie_get_series_with_subset (riscv_parse_subset_t *rps);

bool riscv_vendor_perfer_subset (riscv_subset_list_t *subset_list,
		                 const char *subset, int major, int minor);
