# PMP inserts can push a compressed branch or jump past its range.
# Linker must widen c.beqz/c.bnez to beq/bne and c.j to jal.

	.text
	.option	rvc
	.globl	_start
_start:
	# Stays compressed: target is two bytes away.
	c.beqz	s0, near
	c.nop
near:
	# 40 * (c.lw + c.sw) = 160 bytes without inserts, 320 with.
	# c.beqz range is ±256, so --fix must expand this to beq.
	c.beqz	s0, fwd
	.rept	40
	lw	a0, 0(a1)
	sw	a0, 0(a2)
	.endr
fwd:
	ret

	# Backward c.bnez, same distances.
bwd:
	.rept	40
	lw	a0, 0(a1)
	sw	a0, 0(a2)
	.endr
	c.bnez	s0, bwd

	# c.j range is ±2048.  300 pairs: 1200 without inserts, 2400 with.
	c.j	jfar
	.rept	300
	lw	a0, 0(a1)
	sw	a0, 0(a2)
	.endr
jfar:
	ret
