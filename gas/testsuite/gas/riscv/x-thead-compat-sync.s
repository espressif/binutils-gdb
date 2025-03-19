target:
	sfence.vmas	a0, a1
	sync
	sync.i
	sync.is
	sync.s
