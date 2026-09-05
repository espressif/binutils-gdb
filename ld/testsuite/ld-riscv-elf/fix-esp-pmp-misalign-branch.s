# PMP inserts can push a 32-bit branch past ±4KiB.  Linker must invert
# the branch over a JAL to the original target.

	.text
	.globl	_start
_start:
	bne	a0, a1, fwd
	.rept	300
	lw	a0, 0(a1)
	sw	a0, 0(a2)
	.endr
fwd:
	ret

bwd:
	.rept	300
	lw	a0, 0(a1)
	sw	a0, 0(a2)
	.endr
	blt	a0, a1, bwd
	ret
