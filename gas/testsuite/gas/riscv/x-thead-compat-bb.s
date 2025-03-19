target:
	srri	a0, a1, 0
	srri	a0, a1, 1
	srri	a0, a1, 62
	srri	a0, a1, 63
	srriw	a0, a1, 0
	srriw	a0, a1, 1
	srriw	a0, a1, 30
	srriw	a0, a1, 31
	ext	a0, a1, 1, 0
	ext	a0, a1, 31, 0
	ext	a0, a1, 63, 31
	ext	a0, a1, 63, 62
	extu	a0, a1, 1, 0
	extu	a0, a1, 31, 0
	extu	a0, a1, 63, 31
	extu	a0, a1, 63, 62
	ff0	a0, a1
	ff1	a0, a1
	rev	a0, a1
	revw	a0, a1
	tstnbz	a0, a1
