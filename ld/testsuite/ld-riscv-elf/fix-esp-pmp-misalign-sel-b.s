	.text
	.option norvc
	.globl	_start
_start:
	lw	a0, 0(a1)
	sw	a0, 0(a2)
	ret
