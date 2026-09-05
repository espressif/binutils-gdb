SECTIONS
{
  .text 0x10000 :
  {
    *(.text.pad)
    *(.text.dest)
    *(.text.caller)
  }
}
