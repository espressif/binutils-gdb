#as: -march=rv32if_xtheadvdot
#objdump: -dr

.*:[ 	]+file format .*


Disassembly of section .text:

0+000 <test_int8_int4>:
[ 	]+[0-9a-f]+:[ 	]+8000600b[ 	]+th.vmaqa\.vv[ 	]+v0,v0,v0,v0\.t
[ 	]+[0-9a-f]+:[ 	]+8200600b[ 	]+th.vmaqa\.vv[ 	]+v0,v0,v0
[ 	]+[0-9a-f]+:[ 	]+8211600b[ 	]+th.vmaqa\.vv[ 	]+v0,v2,v1
[ 	]+[0-9a-f]+:[ 	]+8400600b[ 	]+th.vmaqa\.vx[ 	]+v0,zero,v0,v0\.t
[ 	]+[0-9a-f]+:[ 	]+8600600b[ 	]+th.vmaqa\.vx[ 	]+v0,zero,v0
[ 	]+[0-9a-f]+:[ 	]+8611600b[ 	]+th.vmaqa\.vx[ 	]+v0,sp,v1
[ 	]+[0-9a-f]+:[ 	]+8800600b[ 	]+th.vmaqau\.vv[ 	]+v0,v0,v0,v0\.t
[ 	]+[0-9a-f]+:[ 	]+8a00600b[ 	]+th.vmaqau\.vv[ 	]+v0,v0,v0
[ 	]+[0-9a-f]+:[ 	]+8a11600b[ 	]+th.vmaqau\.vv[ 	]+v0,v2,v1
[ 	]+[0-9a-f]+:[ 	]+8c00600b[ 	]+th.vmaqau\.vx[ 	]+v0,zero,v0,v0\.t
[ 	]+[0-9a-f]+:[ 	]+8e00600b[ 	]+th.vmaqau\.vx[ 	]+v0,zero,v0
[ 	]+[0-9a-f]+:[ 	]+8e11600b[ 	]+th.vmaqau\.vx[ 	]+v0,sp,v1
[ 	]+[0-9a-f]+:[ 	]+9000600b[ 	]+th.vmaqasu\.vv[ 	]+v0,v0,v0,v0\.t
[ 	]+[0-9a-f]+:[ 	]+9200600b[ 	]+th.vmaqasu\.vv[ 	]+v0,v0,v0
[ 	]+[0-9a-f]+:[ 	]+9211600b[ 	]+th.vmaqasu\.vv[ 	]+v0,v2,v1
[ 	]+[0-9a-f]+:[ 	]+9400600b[ 	]+th.vmaqasu\.vx[ 	]+v0,zero,v0,v0\.t
[ 	]+[0-9a-f]+:[ 	]+9600600b[ 	]+th.vmaqasu\.vx[ 	]+v0,zero,v0
[ 	]+[0-9a-f]+:[ 	]+9611600b[ 	]+th.vmaqasu\.vx[ 	]+v0,sp,v1
[ 	]+[0-9a-f]+:[ 	]+9c00600b[ 	]+th.vmaqaus\.vx[ 	]+v0,zero,v0,v0\.t
[ 	]+[0-9a-f]+:[ 	]+9e00600b[ 	]+th.vmaqaus\.vx[ 	]+v0,zero,v0
[ 	]+[0-9a-f]+:[ 	]+9e11600b[ 	]+th.vmaqaus\.vx[ 	]+v0,sp,v1
[ 	]+[0-9a-f]+:[ 	]+8000700b[ 	]+th.vpmaqa\.vv[ 	]+v0,v0,v0,v0\.t
[ 	]+[0-9a-f]+:[ 	]+8200700b[ 	]+th.vpmaqa\.vv[ 	]+v0,v0,v0
[ 	]+[0-9a-f]+:[ 	]+8211700b[ 	]+th.vpmaqa\.vv[ 	]+v0,v2,v1
[ 	]+[0-9a-f]+:[ 	]+8400700b[ 	]+th.vpmaqa\.vx[ 	]+v0,zero,v0,v0\.t
[ 	]+[0-9a-f]+:[ 	]+8600700b[ 	]+th.vpmaqa\.vx[ 	]+v0,zero,v0
[ 	]+[0-9a-f]+:[ 	]+8611700b[ 	]+th.vpmaqa\.vx[ 	]+v0,sp,v1
[ 	]+[0-9a-f]+:[ 	]+8800700b[ 	]+th.vpmaqau\.vv[ 	]+v0,v0,v0,v0\.t
[ 	]+[0-9a-f]+:[ 	]+8a00700b[ 	]+th.vpmaqau\.vv[ 	]+v0,v0,v0
[ 	]+[0-9a-f]+:[ 	]+8a11700b[ 	]+th.vpmaqau\.vv[ 	]+v0,v2,v1
[ 	]+[0-9a-f]+:[ 	]+8c00700b[ 	]+th.vpmaqau\.vx[ 	]+v0,zero,v0,v0\.t
[ 	]+[0-9a-f]+:[ 	]+8e00700b[ 	]+th.vpmaqau\.vx[ 	]+v0,zero,v0
[ 	]+[0-9a-f]+:[ 	]+8e11700b[ 	]+th.vpmaqau\.vx[ 	]+v0,sp,v1
[ 	]+[0-9a-f]+:[ 	]+9000700b[ 	]+th.vpmaqasu\.vv[ 	]+v0,v0,v0,v0\.t
[ 	]+[0-9a-f]+:[ 	]+9200700b[ 	]+th.vpmaqasu\.vv[ 	]+v0,v0,v0
[ 	]+[0-9a-f]+:[ 	]+9211700b[ 	]+th.vpmaqasu\.vv[ 	]+v0,v2,v1
[ 	]+[0-9a-f]+:[ 	]+9400700b[ 	]+th.vpmaqasu\.vx[ 	]+v0,zero,v0,v0\.t
[ 	]+[0-9a-f]+:[ 	]+9600700b[ 	]+th.vpmaqasu\.vx[ 	]+v0,zero,v0
[ 	]+[0-9a-f]+:[ 	]+9611700b[ 	]+th.vpmaqasu\.vx[ 	]+v0,sp,v1
[ 	]+[0-9a-f]+:[ 	]+9c00700b[ 	]+th.vpmaqaus\.vx[ 	]+v0,zero,v0,v0\.t
[ 	]+[0-9a-f]+:[ 	]+9e00700b[ 	]+th.vpmaqaus\.vx[ 	]+v0,zero,v0
[ 	]+[0-9a-f]+:[ 	]+9e11700b[ 	]+th.vpmaqaus\.vx[ 	]+v0,sp,v1
[ 	]+[0-9a-f]+:[ 	]+a000700b[ 	]+th.vpnclip\.wv[ 	]+v0,v0,v0,v0\.t
[ 	]+[0-9a-f]+:[ 	]+a200700b[ 	]+th.vpnclip\.wv[ 	]+v0,v0,v0
[ 	]+[0-9a-f]+:[ 	]+a211700b[ 	]+th.vpnclip\.wv[ 	]+v0,v1,v2
[ 	]+[0-9a-f]+:[ 	]+a400700b[ 	]+th.vpnclip\.wx[ 	]+v0,v0,zero,v0\.t
[ 	]+[0-9a-f]+:[ 	]+a600700b[ 	]+th.vpnclip\.wx[ 	]+v0,v0,zero
[ 	]+[0-9a-f]+:[ 	]+a611700b[ 	]+th.vpnclip\.wx[ 	]+v0,v1,sp
[ 	]+[0-9a-f]+:[ 	]+a800700b[ 	]+th.vpnclipu\.wv[ 	]+v0,v0,v0,v0\.t
[ 	]+[0-9a-f]+:[ 	]+aa00700b[ 	]+th.vpnclipu\.wv[ 	]+v0,v0,v0
[ 	]+[0-9a-f]+:[ 	]+aa11700b[ 	]+th.vpnclipu\.wv[ 	]+v0,v1,v2
[ 	]+[0-9a-f]+:[ 	]+ac00700b[ 	]+th.vpnclipu\.wx[ 	]+v0,v0,zero,v0\.t
[ 	]+[0-9a-f]+:[ 	]+ae00700b[ 	]+th.vpnclipu\.wx[ 	]+v0,v0,zero
[ 	]+[0-9a-f]+:[ 	]+ae11700b[ 	]+th.vpnclipu\.wx[ 	]+v0,v1,sp
[ 	]+[0-9a-f]+:[ 	]+b000700b[ 	]+th.vpwadd\.vv[ 	]+v0,v0,v0,v0\.t
[ 	]+[0-9a-f]+:[ 	]+b200700b[ 	]+th.vpwadd\.vv[ 	]+v0,v0,v0
[ 	]+[0-9a-f]+:[ 	]+b211700b[ 	]+th.vpwadd\.vv[ 	]+v0,v1,v2
[ 	]+[0-9a-f]+:[ 	]+b400700b[ 	]+th.vpwadd\.vx[ 	]+v0,v0,zero,v0\.t
[ 	]+[0-9a-f]+:[ 	]+b600700b[ 	]+th.vpwadd\.vx[ 	]+v0,v0,zero
[ 	]+[0-9a-f]+:[ 	]+b611700b[ 	]+th.vpwadd\.vx[ 	]+v0,v1,sp
[ 	]+[0-9a-f]+:[ 	]+b800700b[ 	]+th.vpwaddu\.vv[ 	]+v0,v0,v0,v0\.t
[ 	]+[0-9a-f]+:[ 	]+ba00700b[ 	]+th.vpwaddu\.vv[ 	]+v0,v0,v0
[ 	]+[0-9a-f]+:[ 	]+ba11700b[ 	]+th.vpwaddu\.vv[ 	]+v0,v1,v2
[ 	]+[0-9a-f]+:[ 	]+bc00700b[ 	]+th.vpwaddu\.vx[ 	]+v0,v0,zero,v0\.t
[ 	]+[0-9a-f]+:[ 	]+be00700b[ 	]+th.vpwaddu\.vx[ 	]+v0,v0,zero
[ 	]+[0-9a-f]+:[ 	]+be11700b[ 	]+th.vpwaddu\.vx[ 	]+v0,v1,sp
