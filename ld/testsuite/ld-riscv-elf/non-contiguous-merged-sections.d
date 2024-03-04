#name: non-contiguous-merged-sections
#source: non-contiguous-merged-sections.s
#as: -mno-arch-attr
#ld: --enable-non-contiguous-regions -T non-contiguous-merged-sections.ld
#readelf: -l --wide

#...
 +LOAD +0x[0-9a-f]+ +0x[0-9a-f]+ +0x[0-9a-f]+ 0x00012 0x00012 .*
#...
 +00 +\.rodata_ram2 
