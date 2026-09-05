SECTIONS
{
  .text 0x10000 :
  {
    *(.text.caller)
    *(.text.pad)
    *(.text.dest)
  }
}
