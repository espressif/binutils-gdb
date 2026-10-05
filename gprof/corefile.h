/* corefile.h

   Copyright (C) 2000-2025 Free Software Foundation, Inc.

   This file is part of GNU Binutils.

   This program is free software; you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation; either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program; if not, write to the Free Software
   Foundation, Inc., 51 Franklin Street - Fifth Floor, Boston,
   MA 02110-1301, USA.  */

#ifndef corefile_h
#define corefile_h

struct function_map
{
  char *         function_name;
  char *         file_name;
  unsigned int   is_first:1;	/* Is this the first symbol in an object file?  */
};

extern struct function_map * symbol_map;
extern unsigned int symbol_map_count;

extern bfd * core_bfd;		  /* BFD for core-file.  */

/* One contiguous executable range.  Every allocated code section
   with bytes is recorded here.  */
struct core_text_range
{
  asection *sec;
  bfd_vma low;
  bfd_vma high;		/* Exclusive.  */
  void *space;		/* Section bytes, or NULL.  */
};

extern struct core_text_range *core_text_ranges;
extern unsigned int core_num_text_ranges;

extern bfd_vma core_text_high;	/* Exclusive end of highest code.  */
extern struct core_text_range *core_text_range_at (bfd_vma);
extern unsigned char *core_text_at (bfd_vma);
extern int offset_to_code;	  /* Offset (in bytes) of code from entry
				     address of routine.  */

extern void core_init                  (const char *);
extern void core_get_text_space        (bfd *);
extern void core_create_function_syms  (void);
extern void core_create_line_syms      (void);
extern void core_create_syms_from      (const char *);

#endif /* corefile_h */
