
.text

test_int8_int4:
	th.vmaqa.vv v0, v0, v0, v0.t
	th.vmaqa.vv v0, v0, v0
	th.vmaqa.vv v0, v2, v1

	th.vmaqa.vx v0, x0, v0, v0.t
	th.vmaqa.vx v0, x0, v0
	th.vmaqa.vx v0, x2, v1

	th.vmaqau.vv v0, v0, v0, v0.t
	th.vmaqau.vv v0, v0, v0
	th.vmaqau.vv v0, v2, v1

	th.vmaqau.vx v0, x0, v0, v0.t
	th.vmaqau.vx v0, x0, v0
	th.vmaqau.vx v0, x2, v1

	th.vmaqasu.vv v0, v0, v0, v0.t
	th.vmaqasu.vv v0, v0, v0
	th.vmaqasu.vv v0, v2, v1

	th.vmaqasu.vx v0, x0, v0, v0.t
	th.vmaqasu.vx v0, x0, v0
	th.vmaqasu.vx v0, x2, v1

	th.vmaqaus.vx v0, x0, v0, v0.t
	th.vmaqaus.vx v0, x0, v0
	th.vmaqaus.vx v0, x2, v1

	th.vpmaqa.vv v0, v0, v0, v0.t
	th.vpmaqa.vv v0, v0, v0
	th.vpmaqa.vv v0, v2, v1

	th.vpmaqa.vx v0, x0, v0, v0.t
	th.vpmaqa.vx v0, x0, v0
	th.vpmaqa.vx v0, x2, v1

	th.vpmaqau.vv v0, v0, v0, v0.t
	th.vpmaqau.vv v0, v0, v0
	th.vpmaqau.vv v0, v2, v1

	th.vpmaqau.vx v0, x0, v0, v0.t
	th.vpmaqau.vx v0, x0, v0
	th.vpmaqau.vx v0, x2, v1

	th.vpmaqasu.vv v0, v0, v0, v0.t
	th.vpmaqasu.vv v0, v0, v0
	th.vpmaqasu.vv v0, v2, v1

	th.vpmaqasu.vx v0, x0, v0, v0.t
	th.vpmaqasu.vx v0, x0, v0
	th.vpmaqasu.vx v0, x2, v1

	th.vpmaqaus.vx v0, x0, v0, v0.t
	th.vpmaqaus.vx v0, x0, v0
	th.vpmaqaus.vx v0, x2, v1

	th.vpnclip.wv v0, v0, v0, v0.t
	th.vpnclip.wv v0, v0, v0
	th.vpnclip.wv v0, v1, v2

	th.vpnclip.wx v0, v0, x0, v0.t
	th.vpnclip.wx v0, v0, x0
	th.vpnclip.wx v0, v1, x2

	th.vpnclipu.wv v0, v0, v0, v0.t
	th.vpnclipu.wv v0, v0, v0
	th.vpnclipu.wv v0, v1, v2

	th.vpnclipu.wx v0, v0, x0, v0.t
	th.vpnclipu.wx v0, v0, x0
	th.vpnclipu.wx v0, v1, x2

	th.vpwadd.vv v0, v0, v0, v0.t
	th.vpwadd.vv v0, v0, v0
	th.vpwadd.vv v0, v1, v2

	th.vpwadd.vx v0, v0, x0, v0.t
	th.vpwadd.vx v0, v0, x0
	th.vpwadd.vx v0, v1, x2

	th.vpwaddu.vv v0, v0, v0, v0.t
	th.vpwaddu.vv v0, v0, v0
	th.vpwaddu.vv v0, v1, v2

	th.vpwaddu.vx v0, v0, x0, v0.t
	th.vpwaddu.vx v0, v0, x0
	th.vpwaddu.vx v0, v1, x2
