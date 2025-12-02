
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
  20:	0907a503          	lw	a0,144(a5) # 90 <SNDGEN>
  24:	000007b7          	lui	a5,0x0
  28:	0947a603          	lw	a2,148(a5) # 94 <BUTTONS>
  2c:	00018737          	lui	a4,0x18
  30:	000007b7          	lui	a5,0x0
  34:	0987a583          	lw	a1,152(a5) # 98 <LEDS>
  38:	02000813          	li	a6,32
  3c:	12700793          	li	a5,295
  40:	04000893          	li	a7,64
  44:	69f70713          	addi	a4,a4,1695 # 1869f <__stacktop+0x869f>
  48:	00879693          	slli	a3,a5,0x8
  4c:	0ff6e693          	ori	a3,a3,255
  50:	00d52023          	sw	a3,0(a0)
  54:	00062683          	lw	a3,0(a2)
  58:	0106f693          	andi	a3,a3,16
  5c:	00068663          	beqz	a3,68 <main+0x4c>
  60:	12778793          	addi	a5,a5,295
  64:	0105a023          	sw	a6,0(a1)
  68:	00062683          	lw	a3,0(a2)
  6c:	0206f693          	andi	a3,a3,32
  70:	00068663          	beqz	a3,7c <main+0x60>
  74:	ed978793          	addi	a5,a5,-295
  78:	0115a023          	sw	a7,0(a1)
  7c:	c0002373          	rdcycle	t1
  80:	c00026f3          	rdcycle	a3
  84:	406686b3          	sub	a3,a3,t1
  88:	fed77ce3          	bgeu	a4,a3,80 <main+0x64>
  8c:	fbdff06f          	j	48 <main+0x2c>

00000090 <SNDGEN>:
  90:	00010200                                ....

00000094 <BUTTONS>:
  94:	00010100                                ....

00000098 <LEDS>:
  98:	00010004                                ....
