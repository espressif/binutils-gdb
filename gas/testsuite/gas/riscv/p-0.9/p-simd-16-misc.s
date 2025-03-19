simd_16bit_misc:
smin16 x0,  x0,  x0
smin16 x1,  x2,  x3
smin16 x15, x16, x17
smin16 x20, x21, x22
smin16 x29, x30, x31
umin16 x0,  x0,  x0
umin16 x1,  x2,  x3
umin16 x15, x16, x17
umin16 x20, x21, x22
umin16 x29, x30, x31
smax16 x0,  x0,  x0
smax16 x1,  x2,  x3
smax16 x15, x16, x17
smax16 x20, x21, x22
smax16 x29, x30, x31
umax16 x0,  x0,  x0
umax16 x1,  x2,  x3
umax16 x15, x16, x17
umax16 x20, x21, x22
umax16 x29, x30, x31
sclip16 x0,  x0,  0
sclip16 x1,  x2,  3
sclip16 x15, x16, 7
sclip16 x20, x21, 11
sclip16 x29, x30, 15
uclip16 x0,  x0,  0
uclip16 x1,  x2,  3
uclip16 x15, x16, 7
uclip16 x20, x21, 11
uclip16 x29, x30, 15
kabs16 x0,  x0
kabs16 x1,  x2
kabs16 x15, x16
kabs16 x20, x21
kabs16 x29, x30
clrs16 x0,  x0
clrs16 x1,  x2
clrs16 x15, x16
clrs16 x20, x21
clrs16 x29, x30
clz16 x0,  x0
clz16 x1,  x2
clz16 x15, x16
clz16 x20, x21
clz16 x29, x30
clo16 x0,  x0
clo16 x1,  x2
clo16 x15, x16
clo16 x20, x21
clo16 x29, x30
