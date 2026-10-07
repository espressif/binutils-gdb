	.section	.rodata.str1.1,"aMS",@progbits,1
.LS0:
	.string	"v"

	.text
	.literal .LC0, .LS0
	.align	4
	.global	other
other:
	entry	a1, 16
	l32r	a2, .LC0
	retw
