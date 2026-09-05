SECTIONS
{
  .text.start 0x10000 : { *(.text.start) }
  .text.pad : { *(.text.pad) }
  .text.dest : { *(.text.dest) }
}
