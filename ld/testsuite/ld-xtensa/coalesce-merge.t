SECTIONS
{
  .text 0x1000 : { *(.literal .text) }
  .rodata 0x2000 : { *(.rodata .rodata.*) }
}
