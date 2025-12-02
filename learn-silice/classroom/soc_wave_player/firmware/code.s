
code.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <_start>:
   0:	00010137          	lui	sp,0x10
   4:	00000097          	auipc	ra,0x0
   8:	018080e7          	jalr	24(ra) # 1c <main>
   c:	00000317          	auipc	t1,0x0
  10:	00830067          	jr	8(t1) # 14 <exit>

00000014 <exit>:
  14:	00000000          	.word	0x00000000
  18:	00008067          	ret

0000001c <main>:
  1c:	000007b7          	lui	a5,0x0
  20:	0347a703          	lw	a4,52(a5) # 34 <SNDGEN>
  24:	000127b7          	lui	a5,0x12
  28:	7ff78793          	addi	a5,a5,2047 # 127ff <__stacktop+0x27ff>
  2c:	00f72023          	sw	a5,0(a4)
  30:	00008067          	ret

00000034 <SNDGEN>:
  34:	00010200                                ....
