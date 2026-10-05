/* Place each function in its own executable section.  None of the
   output sections is named .text.  */
SECTIONS
{
  .code.one 0x10000 : { *(.text.code_one) }
  .code.two 0x20000 : { *(.text.code_two) }
  .code.gap 0x28000 : { *(.text.code_gap) }
  .code.end 0x30000 : { *(.text.code_end) }
  .code.stub 0x40000 : { *(.text.code_stub) }
  /DISCARD/ : {
    *(.text .text.*)
    *(.data .data.* .bss .bss.* .rodata .rodata.*)
    *(.comment .note.* .eh_frame .eh_frame_hdr .gcc_except_table)
    *(.gnu.attributes)
  }
}
