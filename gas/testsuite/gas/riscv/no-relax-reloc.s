target:
	lui	a5,%hi(target)
	lw	a5,%lo(target)(a5)

	.LA0: auipc     a5,%pcrel_hi(symbol1)
	lw      a0,%pcrel_lo(.LA0)(a5)

	.LA1: auipc     a5,%got_pcrel_hi(symbol2)
	lw      a0,%pcrel_lo(.LA1)(a5)

	call target
.L1:
	c.j .L1
	c.bnez a0, .L1
	.option norvc
	j .L1
	bnez a0, .L1
	.option rvc

