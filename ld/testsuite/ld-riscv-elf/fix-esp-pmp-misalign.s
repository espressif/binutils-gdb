# A store faults only when it is the instruction immediately after a load
# that can cross a 4-byte boundary, and only when it can reach a PMP region
# other than the load's.  Everything else runs clean.

	.text
	.option norvc
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
	sw	a0, 0(a1)

byte_load:
	lb	a0, 0(a1)
	sw	a0, 0(a2)

byte_store:
	lw	a0, 0(a1)
	sb	a0, 0(a2)

branch_between:
	lw	a0, 0(a1)
	bne	a3, a4, btarget
	li	a5, 1
btarget:
	sw	a0, 0(a2)

load_between:
	lw	a0, 0(a1)
	lw	a2, 0(a3)
	sw	a0, 0(a4)
	ret
