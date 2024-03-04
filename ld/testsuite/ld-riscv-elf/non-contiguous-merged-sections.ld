MEMORY
{
  RAM1 (xrw)   : ORIGIN = 0x10000000,   LENGTH = 0x12 - 1
  RAM2 (xrw)   : ORIGIN = 0x20000000,   LENGTH = 1K
}

SECTIONS
{
  .rodata_ram1 :
  {
    *(.rodata) *(.rodata.*);
  } >RAM1

  .rodata_ram2 :
  {
    *(.rodata) *(.rodata.*);
  } >RAM2
}
