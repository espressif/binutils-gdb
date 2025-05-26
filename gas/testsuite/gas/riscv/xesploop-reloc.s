    .global _start
    .type _start, @function
_start:
    esp.lp.setup    0,t0,last_inst + 4
    esp.lp.setupi	0,4,last_inst - 4
last_inst:
    nop
