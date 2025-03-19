target:
	ldia	a0, (a1), 0, 0
	ldib	a0, (a1), 15, 1
	lwia	a0, (a1), 0, 2
	lwib	a0, (a1), -16, 3
	lwuia	a0, (a1), 0, 0
	lwuib	a0, (a1), 15, 1
	lhia	a0, (a1), 0, 2
	lhib	a0, (a1), -16, 3
	lhuia	a0, (a1), 0, 0
	lhuib	a0, (a1), 15, 1
	lbia	a0, (a1), 0, 2
	lbib	a0, (a1), -16, 3
	lbuia	a0, (a1), 0, 0
	lbuib	a0, (a1), 15, 1

	sdia	a0, (a1), -16, 0
	sdib	a0, (a1), -1, 1
	swia	a0, (a1), 0, 2
	swib	a0, (a1), 1, 3
	shia	a0, (a1), 4, 0
	shib	a0, (a1), 13, 1
	sbia	a0, (a1), 14, 2
	sbib	a0, (a1), 15, 3

	lrd	a0, a1, a2, 0
	lrw	a0, a1, a2, 1
	lrwu	a0, a1, a2, 2
	lrh	a0, a1, a2, 3
	lrhu	a0, a1, a2, 0
	lrb	a0, a1, a2, 1
	lrbu	a0, a1, a2, 2
	srd	a0, a1, a2, 3
	srw	a0, a1, a2, 0
	srh	a0, a1, a2, 1
	srb	a0, a1, a2, 2

	lurd	a0, a1, a2, 0
	lurw	a0, a1, a2, 1
	lurwu	a0, a1, a2, 2
	lurh	a0, a1, a2, 3
	lurhu	a0, a1, a2, 0
	lurb	a0, a1, a2, 1
	lurbu	a0, a1, a2, 2
	surd	a0, a1, a2, 3
	surw	a0, a1, a2, 0
	surh	a0, a1, a2, 1
	surb	a0, a1, a2, 2
