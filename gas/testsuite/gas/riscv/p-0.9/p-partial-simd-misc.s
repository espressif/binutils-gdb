partial_simd_misc:
sclip32 x0,  x0,  0
sclip32 x1,  x2,  7
sclip32 x15, x16, 15
sclip32 x20, x21, 23
sclip32 x29, x30, 31
uclip32 x0,  x0,  0
uclip32 x1,  x2,  7
uclip32 x15, x16, 15
uclip32 x20, x21, 23
uclip32 x29, x30, 31
clrs32 x0,  x0
clrs32 x1,  x2
clrs32 x15, x16
clrs32 x20, x21
clrs32 x29, x30
clz32 x0,  x0
clz32 x1,  x2
clz32 x15, x16
clz32 x20, x21
clz32 x29, x30
clo32 x0,  x0
clo32 x1,  x2
clo32 x15, x16
clo32 x20, x21
clo32 x29, x30
pbsad x0,  x0,  x0
pbsad x1,  x2,  x3
pbsad x15, x16, x17
pbsad x20, x21, x22
pbsad x29, x30, x31
pbsada x0,  x0,  x0
pbsada x1,  x2,  x3
pbsada x15, x16, x17
pbsada x20, x21, x22
pbsada x29, x30, x31
