#as: -march=rv64gqc_zfa_zfh_zfbfmin
#objdump: -d -Mno-aliases

.*:[ 	]+file format .*

Disassembly of section .text:

0+000 <target>:
[ 	]+[0-9a-f]+:[ 	]+04c5f553[ 	]+fadd.h[ 	]+fa0,fa1,fa2,dyn
[ 	]+[0-9a-f]+:[ 	]+0cc5f553[ 	]+fsub.h[ 	]+fa0,fa1,fa2,dyn
[ 	]+[0-9a-f]+:[ 	]+14c5f553[ 	]+fmul.h[ 	]+fa0,fa1,fa2,dyn
[ 	]+[0-9a-f]+:[ 	]+1cc5f553[ 	]+fdiv.h[ 	]+fa0,fa1,fa2,dyn
[ 	]+[0-9a-f]+:[ 	]+5c05f553[ 	]+fsqrt.h[ 	]+fa0,fa1,dyn
[ 	]+[0-9a-f]+:[ 	]+6cc5f543[ 	]+fmadd.h[ 	]+fa0,fa1,fa2,fa3,dyn
[ 	]+[0-9a-f]+:[ 	]+6cc5f54f[ 	]+fnmadd.h[ 	]+fa0,fa1,fa2,fa3,dyn
[ 	]+[0-9a-f]+:[ 	]+6cc5f547[ 	]+fmsub.h[ 	]+fa0,fa1,fa2,fa3,dyn
[ 	]+[0-9a-f]+:[ 	]+6cc5f54b[ 	]+fnmsub.h[ 	]+fa0,fa1,fa2,fa3,dyn
[ 	]+[0-9a-f]+:[ 	]+c405f553[ 	]+fcvt.w.h[ 	]+a0,fa1,dyn
[ 	]+[0-9a-f]+:[ 	]+c415f553[ 	]+fcvt.wu.h[ 	]+a0,fa1,dyn
[ 	]+[0-9a-f]+:[ 	]+d405f553[ 	]+fcvt.h.w[ 	]+fa0,a1,dyn
[ 	]+[0-9a-f]+:[ 	]+d415f553[ 	]+fcvt.h.wu[ 	]+fa0,a1,dyn
[ 	]+[0-9a-f]+:[ 	]+40258553[ 	]+fcvt.s.h[ 	]+fa0,fa1
[ 	]+[0-9a-f]+:[ 	]+4405f553[ 	]+fcvt.h.s[ 	]+fa0,fa1,dyn
[ 	]+[0-9a-f]+:[ 	]+4415f553[ 	]+fcvt.h.d[ 	]+fa0,fa1,dyn
[ 	]+[0-9a-f]+:[ 	]+c425f553[ 	]+fcvt.l.h[ 	]+a0,fa1,dyn
[ 	]+[0-9a-f]+:[ 	]+c435f553[ 	]+fcvt.lu.h[ 	]+a0,fa1,dyn
[ 	]+[0-9a-f]+:[ 	]+d425f553[ 	]+fcvt.h.l[ 	]+fa0,a1,dyn
[ 	]+[0-9a-f]+:[ 	]+d435f553[ 	]+fcvt.h.lu[ 	]+fa0,a1,dyn
[ 	]+[0-9a-f]+:[ 	]+4485f553[ 	]+fcvt.bf16.s[ 	]+fa0,fa1,dyn
[ 	]+[0-9a-f]+:[ 	]+00c5f553[ 	]+fadd.s[ 	]+fa0,fa1,fa2,dyn
[ 	]+[0-9a-f]+:[ 	]+08c5f553[ 	]+fsub.s[ 	]+fa0,fa1,fa2,dyn
[ 	]+[0-9a-f]+:[ 	]+10c5f553[ 	]+fmul.s[ 	]+fa0,fa1,fa2,dyn
[ 	]+[0-9a-f]+:[ 	]+18c5f553[ 	]+fdiv.s[ 	]+fa0,fa1,fa2,dyn
[ 	]+[0-9a-f]+:[ 	]+5805f553[ 	]+fsqrt.s[ 	]+fa0,fa1,dyn
[ 	]+[0-9a-f]+:[ 	]+68c5f543[ 	]+fmadd.s[ 	]+fa0,fa1,fa2,fa3,dyn
[ 	]+[0-9a-f]+:[ 	]+68c5f54f[ 	]+fnmadd.s[ 	]+fa0,fa1,fa2,fa3,dyn
[ 	]+[0-9a-f]+:[ 	]+68c5f547[ 	]+fmsub.s[ 	]+fa0,fa1,fa2,fa3,dyn
[ 	]+[0-9a-f]+:[ 	]+68c5f54b[ 	]+fnmsub.s[ 	]+fa0,fa1,fa2,fa3,dyn
[ 	]+[0-9a-f]+:[ 	]+c005f553[ 	]+fcvt.w.s[ 	]+a0,fa1,dyn
[ 	]+[0-9a-f]+:[ 	]+c015f553[ 	]+fcvt.wu.s[ 	]+a0,fa1,dyn
[ 	]+[0-9a-f]+:[ 	]+d005f553[ 	]+fcvt.s.w[ 	]+fa0,a1,dyn
[ 	]+[0-9a-f]+:[ 	]+d015f553[ 	]+fcvt.s.wu[ 	]+fa0,a1,dyn
[ 	]+[0-9a-f]+:[ 	]+c025f553[ 	]+fcvt.l.s[ 	]+a0,fa1,dyn
[ 	]+[0-9a-f]+:[ 	]+c035f553[ 	]+fcvt.lu.s[ 	]+a0,fa1,dyn
[ 	]+[0-9a-f]+:[ 	]+d025f553[ 	]+fcvt.s.l[ 	]+fa0,a1,dyn
[ 	]+[0-9a-f]+:[ 	]+d035f553[ 	]+fcvt.s.lu[ 	]+fa0,a1,dyn
[ 	]+[0-9a-f]+:[ 	]+02c5f553[ 	]+fadd.d[ 	]+fa0,fa1,fa2,dyn
[ 	]+[0-9a-f]+:[ 	]+0ac5f553[ 	]+fsub.d[ 	]+fa0,fa1,fa2,dyn
[ 	]+[0-9a-f]+:[ 	]+12c5f553[ 	]+fmul.d[ 	]+fa0,fa1,fa2,dyn
[ 	]+[0-9a-f]+:[ 	]+1ac5f553[ 	]+fdiv.d[ 	]+fa0,fa1,fa2,dyn
[ 	]+[0-9a-f]+:[ 	]+5a05f553[ 	]+fsqrt.d[ 	]+fa0,fa1,dyn
[ 	]+[0-9a-f]+:[ 	]+6ac5f543[ 	]+fmadd.d[ 	]+fa0,fa1,fa2,fa3,dyn
[ 	]+[0-9a-f]+:[ 	]+6ac5f54f[ 	]+fnmadd.d[ 	]+fa0,fa1,fa2,fa3,dyn
[ 	]+[0-9a-f]+:[ 	]+6ac5f547[ 	]+fmsub.d[ 	]+fa0,fa1,fa2,fa3,dyn
[ 	]+[0-9a-f]+:[ 	]+6ac5f54b[ 	]+fnmsub.d[ 	]+fa0,fa1,fa2,fa3,dyn
[ 	]+[0-9a-f]+:[ 	]+c205f553[ 	]+fcvt.w.d[ 	]+a0,fa1,dyn
[ 	]+[0-9a-f]+:[ 	]+c215f553[ 	]+fcvt.wu.d[ 	]+a0,fa1,dyn
[ 	]+[0-9a-f]+:[ 	]+4015f553[ 	]+fcvt.s.d[ 	]+fa0,fa1,dyn
[ 	]+[0-9a-f]+:[ 	]+c225f553[ 	]+fcvt.l.d[ 	]+a0,fa1,dyn
[ 	]+[0-9a-f]+:[ 	]+c235f553[ 	]+fcvt.lu.d[ 	]+a0,fa1,dyn
[ 	]+[0-9a-f]+:[ 	]+d225f553[ 	]+fcvt.d.l[ 	]+fa0,a1,dyn
[ 	]+[0-9a-f]+:[ 	]+d235f553[ 	]+fcvt.d.lu[ 	]+fa0,a1,dyn
[ 	]+[0-9a-f]+:[ 	]+06c5f553[ 	]+fadd.q[ 	]+fa0,fa1,fa2,dyn
[ 	]+[0-9a-f]+:[ 	]+0ec5f553[ 	]+fsub.q[ 	]+fa0,fa1,fa2,dyn
[ 	]+[0-9a-f]+:[ 	]+16c5f553[ 	]+fmul.q[ 	]+fa0,fa1,fa2,dyn
[ 	]+[0-9a-f]+:[ 	]+1ec5f553[ 	]+fdiv.q[ 	]+fa0,fa1,fa2,dyn
[ 	]+[0-9a-f]+:[ 	]+5e05f553[ 	]+fsqrt.q[ 	]+fa0,fa1,dyn
[ 	]+[0-9a-f]+:[ 	]+6ec5f543[ 	]+fmadd.q[ 	]+fa0,fa1,fa2,fa3,dyn
[ 	]+[0-9a-f]+:[ 	]+6ec5f54f[ 	]+fnmadd.q[ 	]+fa0,fa1,fa2,fa3,dyn
[ 	]+[0-9a-f]+:[ 	]+6ec5f547[ 	]+fmsub.q[ 	]+fa0,fa1,fa2,fa3,dyn
[ 	]+[0-9a-f]+:[ 	]+6ec5f54b[ 	]+fnmsub.q[ 	]+fa0,fa1,fa2,fa3,dyn
[ 	]+[0-9a-f]+:[ 	]+c605f553[ 	]+fcvt.w.q[ 	]+a0,fa1,dyn
[ 	]+[0-9a-f]+:[ 	]+c615f553[ 	]+fcvt.wu.q[ 	]+a0,fa1,dyn
[ 	]+[0-9a-f]+:[ 	]+4035f553[ 	]+fcvt.s.q[ 	]+fa0,fa1,dyn
[ 	]+[0-9a-f]+:[ 	]+4235f553[ 	]+fcvt.d.q[ 	]+fa0,fa1,dyn
[ 	]+[0-9a-f]+:[ 	]+c625f553[ 	]+fcvt.l.q[ 	]+a0,fa1,dyn
[ 	]+[0-9a-f]+:[ 	]+c635f553[ 	]+fcvt.lu.q[ 	]+a0,fa1,dyn
[ 	]+[0-9a-f]+:[ 	]+d6258553[ 	]+fcvt.q.l[ 	]+fa0,a1,rne
[ 	]+[0-9a-f]+:[ 	]+d6358553[ 	]+fcvt.q.lu[ 	]+fa0,a1,rne
[ 	]+[0-9a-f]+:[ 	]+4045f553[ 	]+fround.s[ 	]+fa0,fa1,dyn
[ 	]+[0-9a-f]+:[ 	]+4055f553[ 	]+froundnx.s[ 	]+fa0,fa1,dyn
[ 	]+[0-9a-f]+:[ 	]+4245f553[ 	]+fround.d[ 	]+fa0,fa1,dyn
[ 	]+[0-9a-f]+:[ 	]+4255f553[ 	]+froundnx.d[ 	]+fa0,fa1,dyn
[ 	]+[0-9a-f]+:[ 	]+4645f553[ 	]+fround.q[ 	]+fa0,fa1,dyn
[ 	]+[0-9a-f]+:[ 	]+4655f553[ 	]+froundnx.q[ 	]+fa0,fa1,dyn
[ 	]+[0-9a-f]+:[ 	]+4445f553[ 	]+fround.h[ 	]+fa0,fa1,dyn
[ 	]+[0-9a-f]+:[ 	]+4455f553[ 	]+froundnx.h[ 	]+fa0,fa1,dyn
[ 	]+[0-9a-f]+:[ 	]+40658553[ 	]+fcvt.s.bf16[ 	]+fa0,fa1,rne
