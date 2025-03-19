#as: -march=rv64gcv_xtheadvsfa
#objdump: -d

.*:[ 	]+file format .*


Disassembly of section .text:

0000000000000000 <.text>:
[	 ]+[0-9a-f]+:[	 ]+c220608b[	 ]+th.vfexp2.v[	 ]+v1,v2
[	 ]+[0-9a-f]+:[	 ]+c020608b[	 ]+th.vfexp2.v[	 ]+v1,v2,v0.t
[	 ]+[0-9a-f]+:[	 ]+c220e08b[	 ]+th.vftanh.v[	 ]+v1,v2
[	 ]+[0-9a-f]+:[	 ]+c020e08b[	 ]+th.vftanh.v[	 ]+v1,v2,v0.t
[	 ]+[0-9a-f]+:[	 ]+c221608b[	 ]+th.vfsig.v[	 ]+v1,v2
[	 ]+[0-9a-f]+:[	 ]+c021608b[	 ]+th.vfsig.v[	 ]+v1,v2,v0.t
[	 ]+[0-9a-f]+:[	 ]+c221e08b[	 ]+th.vfrec.v[	 ]+v1,v2
[	 ]+[0-9a-f]+:[	 ]+c021e08b[	 ]+th.vfrec.v[	 ]+v1,v2,v0.t
[	 ]+[0-9a-f]+:[	 ]+c220608b[	 ]+th.vfexp2.v[	 ]+v1,v2
[	 ]+[0-9a-f]+:[	 ]+c020608b[	 ]+th.vfexp2.v[	 ]+v1,v2,v0.t
[	 ]+[0-9a-f]+:[	 ]+c220e08b[	 ]+th.vftanh.v[	 ]+v1,v2
[	 ]+[0-9a-f]+:[	 ]+c020e08b[	 ]+th.vftanh.v[	 ]+v1,v2,v0.t
[	 ]+[0-9a-f]+:[	 ]+c221608b[	 ]+th.vfsig.v[	 ]+v1,v2
[	 ]+[0-9a-f]+:[	 ]+c021608b[	 ]+th.vfsig.v[	 ]+v1,v2,v0.t
[	 ]+[0-9a-f]+:[	 ]+c221e08b[	 ]+th.vfrec.v[	 ]+v1,v2
[	 ]+[0-9a-f]+:[	 ]+c021e08b[	 ]+th.vfrec.v[	 ]+v1,v2,v0.t

