	.text
	.option rvc
	.globl	_start
_start:
hazard_adjacent:
	lw	a0, 0(a1)
	sw	a0, 0(a2)

safe_one_between:
	lw	a0, 0(a1)
	addi	a3, a3, 1
	sw	a0, 0(a2)

same_base:
	lw	a0, 0(a1)
	sw	a0, 4(a1)
	ret
