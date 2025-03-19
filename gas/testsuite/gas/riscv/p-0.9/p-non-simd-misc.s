simd_16bit_misc:
ave x0,  x0,  x0
ave x1,  x2,  x3
ave x15, x16, x17
ave x20, x21, x22
ave x29, x30, x31
sra.u x0,  x0,  x0
sra.u x1,  x2,  x3
sra.u x15, x16, x17
sra.u x20, x21, x22
sra.u x29, x30, x31
srai.u x0,  x0,  0
srai.u x1,  x2,  3
srai.u x15, x16, 17
srai.u x20, x21, 22
srai.u x29, x30, 31
bitrev x0,  x0,  x0
bitrev x1,  x2,  x3
bitrev x15, x16, x17
bitrev x20, x21, x22
bitrev x29, x30, x31
bitrevi x0,  x0,  0
bitrevi x1,  x2,  3
bitrevi x15, x16, 17
bitrevi x20, x21, 22
bitrevi x29, x30, 31
wext x0,  x0,  x0
wext x1,  x2,  x3
wext x15, x16, x17
wext x20, x21, x22
wext x29, x30, x31
wexti x0,  x0,  0
wexti x1,  x2,  3
wexti x15, x16, 17
wexti x20, x21, 22
wexti x29, x30, 31
bpick x0,  x0,  x0, x0
bpick x1,  x2,  x3, x4
bpick x15, x16, x17, x18
bpick x20, x21, x22, x23
bpick x29, x30, x31, x15
insb x0,  x0,  0
insb x1,  x2,  1
insb x15, x16, 2
insb x20, x21, 3
insb x29, x30, 1
maddr32 x0,  x0,  x0
maddr32 x1,  x2,  x3
maddr32 x15, x16, x17
maddr32 x20, x21, x22
maddr32 x29, x30, x31
