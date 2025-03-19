mmov.mm	m7, m0
mmov.mv.x	m0, m7[x9]
mmov.mv.i	m1, m1[3]
fmmacc.h	m1, m0, m5
fmmacc.s	m6, m2, m1
fmmacc.d	m0, m7, m7
fwmmacc.h	m7, m6, m3
fwmmacc.s	m2, m1, m0
mmaqa.b	m3, m6, m2
mmaqau.b	m0, m1, m3
mmaqaus.b	m3, m7, m6
mmaqasu.b	m4, m0, m5
mmaqa.h	m6, m1, m3
mmaqau.h	m2, m4, m7
mmaqaus.h	m0, m2, m7
mmaqasu.h	m4, m0, m3
pmmaqa.b	m1, m2, m2
pmmaqau.b	m7, m2, m6
pmmaqaus.b	m4, m3, m5
pmmaqasu.b	m5, m2, m0
madd.s.mm	m6, m0, m5
madd.s.mv.x	m6, m4, m3[x8]
madd.s.mv.i	m6, m6, m7[6]
madd.s.mx	m7, m5, x9
msub.s.mm	m5, m0, m5
msub.s.mv.x	m1, m7, m5[x12]
msub.s.mv.i	m6, m4, m6[0]
msub.s.mx	m4, m5, x11
msra.s.mm	m1, m5, m3
msra.s.mv.x	m1, m2, m7[x8]
msra.s.mv.i	m4, m6, m7[0]
msra.s.mx	m2, m5, x15
mn4clip.s.mm	m2, m4, m6
mn4clip.s.mv.x	m0, m6, m7[x11]
mn4clip.s.mv.i	m7, m4, m0[4]
mn4clip.s.mx	m4, m4, x11
mn4clipu.s.mm	m2, m4, m2
mn4clipu.s.mv.x	m5, m3, m6[x11]
mn4clipu.s.mv.i	m6, m1, m5[2]
mn4clipu.s.mx	m3, m3, x12
mmul.s.mm	m3, m2, m3
mmul.s.mv.x	m1, m6, m1[x14]
mmul.s.mv.i	m3, m3, m6[3]
mmul.s.mx	m3, m4, x9
mmulh.s.mm	m5, m5, m0
mmulh.s.mv.x	m4, m1, m7[x12]
mmulh.s.mv.i	m1, m4, m0[3]
mmulh.s.mx	m6, m6, x10
madd.d.mm	m0, m6, m0
madd.d.mv.x	m3, m0, m1[x14]
madd.d.mv.i	m4, m6, m3[7]
madd.d.mx	m7, m3, x11
msub.d.mm	m7, m4, m6
msub.d.mv.x	m7, m0, m7[x10]
msub.d.mv.i	m2, m7, m0[7]
msub.d.mx	m3, m0, x11
msra.d.mm	m0, m6, m2
msra.d.mv.x	m2, m0, m5[x12]
msra.d.mv.i	m5, m0, m2[4]
msra.d.mx	m6, m7, x9
mn4clip.d.mm	m5, m7, m0
mn4clip.d.mv.x	m1, m6, m2[x13]
mn4clip.d.mv.i	m5, m1, m7[1]
mn4clip.d.mx	m4, m7, x15
mn4clipu.d.mm	m1, m0, m1
mn4clipu.d.mv.x	m2, m4, m0[x9]
mn4clipu.d.mv.i	m5, m6, m4[6]
mn4clipu.d.mx	m2, m7, x13
mmul.d.mm	m4, m3, m4
mmul.d.mv.x	m3, m5, m3[x14]
mmul.d.mv.i	m7, m1, m3[6]
mmul.d.mx	m1, m7, x15
mmulh.d.mm	m1, m3, m5
mmulh.d.mv.x	m2, m5, m2[x13]
mmulh.d.mv.i	m3, m1, m4[1]
mmulh.d.mx	m6, m7, x14
mldb	m5, x0, (x12)
mldh	m1, x12, (x31)
mldw	m4, x0, (x11)
mldd	m2, x31, (x29)
mstb	m2, x12, (x19)
msth	m7, x18, (x15)
mstw	m2, x25, (x16)
mstd	m0, x3, (x10)
msldb	m0, x14, (x30)
msldh	m3, x0, (x29)
msldw	m0, x16, (x22)
msldd	m5, x27, (x6)
msstb	m6, x26, (x19)
mssth	m3, x17, (x6)
msstw	m2, x15, (x12)
msstd	m4, x16, (x17)
mld1mb	m7, (x25)
mld2mb	m6, (x9)
mld4mb	m4, (x28)
mld8mb	m0, (x9)
mld1mh	m6, (x31)
mld2mh	m4, (x14)
mld4mh	m4, (x30)
mld8mh	m0, (x13)
mld1mw	m5, (x9)
mld2mw	m2, (x19)
mld4mw	m4, (x2)
mld8mw	m0, (x5)
mld1md	m1, (x1)
mld2md	m2, (x28)
mld4md	m4, (x15)
mld8md	m0, (x14)
mst1mb	m3, (x10)
mst2mb	m4, (x11)
mst4mb	m0, (x11)
mst8mb	m0, (x18)
mst1mh	m0, (x9)
mst2mh	m2, (x12)
mst4mh	m4, (x30)
mst8mh	m0, (x10)
mst1mw	m3, (x15)
mst2mw	m6, (x14)
mst4mw	m4, (x14)
mst8mw	m0, (x3)
mst1md	m1, (x8)
mst2md	m6, (x23)
mst4md	m4, (x2)
mst8md	m0, (x17)
mcfgk	x1, x14
mcfgm	x29, x17
mcfgn	x10, x6
mcfg	x12, x3
mcfgki	x15, 3
mcfgmi	x30, 76
mcfgni	x6, 43
mzero	m2
mrelease	
mmovb.x.m	x9, m3, x8
mmovh.x.m	x13, m5, x22
mmovw.x.m	x16, m7, x19
mmovd.x.m	x24, m6, x15
mzero   m3
mrelease
mmovb.x.m       x17, m5, x22
mmovh.x.m       x21, m0, x29
mmovw.x.m       x14, m0, x6
mmovd.x.m       x23, m3, x8
mdupb.m.x       m3, x25
mduph.m.x       m0, x1
mdupw.m.x       m0, x1
mdupd.m.x       m0, x4
mmovb.m.x       m1, x2, x2
mmovh.m.x       m7, x23, x2
mmovw.m.x       m4, x3, x16
mmovd.m.x       m6, x14, x1

