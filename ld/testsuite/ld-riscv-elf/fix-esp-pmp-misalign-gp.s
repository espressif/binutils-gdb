# A store whose base register relaxation rewrites to gp reaches a PMP region
# other than the load's, even though both read the same base register here.

	.set	far, 0x40000

	.text
	.option norvc
	.globl	_start
_start:
gp_store:
	lui	a5, %hi(far)
	lw	a0, %lo(far)(a5)
	lui	a5, %hi(gpdata)
	sw	a0, %lo(gpdata)(a5)
	ret

	.data
	.align	2
	.globl	gpdata
gpdata:
	.word	0
