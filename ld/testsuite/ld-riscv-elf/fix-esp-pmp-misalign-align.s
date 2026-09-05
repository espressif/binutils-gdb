# PMP NOP insert must not break a later .align, and ALIGN padding must not
# stand in for the instruction after a load (pass 2 may still delete it).
	.text
	.option rvc
	.globl	_start
	.globl	aligned
	.globl	hazard_align
_start:
	lw	a0, 0(a1)
	addi	a3, a3, 1
	addi	a4, a4, 1
	.align	3
aligned:
	ret

hazard_align:
	lw	a0, 0(a1)
	.align	4
	sw	a0, 0(a2)
	ret
