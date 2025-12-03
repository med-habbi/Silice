
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
  20:	fe010113          	addi	sp,sp,-32 # ffe0 <f_putchar+0xf5b8>
  24:	00001737          	lui	a4,0x1
  28:	45078793          	addi	a5,a5,1104 # 450 <display_putchar>
  2c:	00112e23          	sw	ra,28(sp)
  30:	a2f72423          	sw	a5,-1496(a4) # a28 <f_putchar>
  34:	00812c23          	sw	s0,24(sp)
  38:	01312623          	sw	s3,12(sp)
  3c:	01512223          	sw	s5,4(sp)
  40:	00912a23          	sw	s1,20(sp)
  44:	01212823          	sw	s2,16(sp)
  48:	01412423          	sw	s4,8(sp)
  4c:	00000097          	auipc	ra,0x0
  50:	2b0080e7          	jalr	688(ra) # 2fc <oled_init>
  54:	00000097          	auipc	ra,0x0
  58:	2b4080e7          	jalr	692(ra) # 308 <oled_fullscreen>
  5c:	00000513          	li	a0,0
  60:	00000097          	auipc	ra,0x0
  64:	340080e7          	jalr	832(ra) # 3a0 <oled_clear>
  68:	00000593          	li	a1,0
  6c:	00000513          	li	a0,0
  70:	00000097          	auipc	ra,0x0
  74:	3b8080e7          	jalr	952(ra) # 428 <display_set_cursor>
  78:	00000593          	li	a1,0
  7c:	0ff00513          	li	a0,255
  80:	00000097          	auipc	ra,0x0
  84:	3bc080e7          	jalr	956(ra) # 43c <display_set_front_back_color>
  88:	00000413          	li	s0,0
  8c:	000049b7          	lui	s3,0x4
  90:	08000a93          	li	s5,128
  94:	00040493          	mv	s1,s0
  98:	00040a13          	mv	s4,s0
  9c:	01340933          	add	s2,s0,s3
  a0:	00000097          	auipc	ra,0x0
  a4:	37c080e7          	jalr	892(ra) # 41c <display_framebuffer>
  a8:	00950533          	add	a0,a0,s1
  ac:	01450023          	sb	s4,0(a0)
  b0:	08048493          	addi	s1,s1,128
  b4:	ff2496e3          	bne	s1,s2,a0 <main+0x84>
  b8:	00140413          	addi	s0,s0,1
  bc:	fd541ce3          	bne	s0,s5,94 <main+0x78>
  c0:	000017b7          	lui	a5,0x1
  c4:	00000a93          	li	s5,0
  c8:	00000413          	li	s0,0
  cc:	00300493          	li	s1,3
  d0:	81878a13          	addi	s4,a5,-2024 # 818 <OLED+0x4>
  d4:	04000913          	li	s2,64
  d8:	06d00993          	li	s3,109
  dc:	0080006f          	j	e4 <main+0xc8>
  e0:	fff00a93          	li	s5,-1
  e4:	00040513          	mv	a0,s0
  e8:	000a8593          	mv	a1,s5
  ec:	00000097          	auipc	ra,0x0
  f0:	33c080e7          	jalr	828(ra) # 428 <display_set_cursor>
  f4:	000a0513          	mv	a0,s4
  f8:	00940433          	add	s0,s0,s1
  fc:	00000097          	auipc	ra,0x0
 100:	5d4080e7          	jalr	1492(ra) # 6d0 <printf>
 104:	00895c63          	bge	s2,s0,11c <main+0x100>
 108:	409004b3          	neg	s1,s1
 10c:	04000413          	li	s0,64
 110:	001a8a93          	addi	s5,s5,1
 114:	fd3a98e3          	bne	s5,s3,e4 <main+0xc8>
 118:	fc9ff06f          	j	e0 <main+0xc4>
 11c:	fe045ae3          	bgez	s0,110 <main+0xf4>
 120:	409004b3          	neg	s1,s1
 124:	00000413          	li	s0,0
 128:	fe9ff06f          	j	110 <main+0xf4>

0000012c <__divsi3>:
 12c:	06054063          	bltz	a0,18c <__umodsi3+0x10>
 130:	0605c663          	bltz	a1,19c <__umodsi3+0x20>

00000134 <__udivsi3>:
 134:	00058613          	mv	a2,a1
 138:	00050593          	mv	a1,a0
 13c:	fff00513          	li	a0,-1
 140:	02060c63          	beqz	a2,178 <__udivsi3+0x44>
 144:	00100693          	li	a3,1
 148:	00b67a63          	bgeu	a2,a1,15c <__udivsi3+0x28>
 14c:	00c05863          	blez	a2,15c <__udivsi3+0x28>
 150:	00161613          	slli	a2,a2,0x1
 154:	00169693          	slli	a3,a3,0x1
 158:	feb66ae3          	bltu	a2,a1,14c <__udivsi3+0x18>
 15c:	00000513          	li	a0,0
 160:	00c5e663          	bltu	a1,a2,16c <__udivsi3+0x38>
 164:	40c585b3          	sub	a1,a1,a2
 168:	00d56533          	or	a0,a0,a3
 16c:	0016d693          	srli	a3,a3,0x1
 170:	00165613          	srli	a2,a2,0x1
 174:	fe0696e3          	bnez	a3,160 <__udivsi3+0x2c>
 178:	00008067          	ret

0000017c <__umodsi3>:
 17c:	00008293          	mv	t0,ra
 180:	fb5ff0ef          	jal	134 <__udivsi3>
 184:	00058513          	mv	a0,a1
 188:	00028067          	jr	t0
 18c:	40a00533          	neg	a0,a0
 190:	0005d863          	bgez	a1,1a0 <__umodsi3+0x24>
 194:	40b005b3          	neg	a1,a1
 198:	f95ff06f          	j	12c <__divsi3>
 19c:	40b005b3          	neg	a1,a1
 1a0:	00008293          	mv	t0,ra
 1a4:	f89ff0ef          	jal	12c <__divsi3>
 1a8:	40a00533          	neg	a0,a0
 1ac:	00028067          	jr	t0

000001b0 <__modsi3>:
 1b0:	00008293          	mv	t0,ra
 1b4:	0005ca63          	bltz	a1,1c8 <__modsi3+0x18>
 1b8:	00054c63          	bltz	a0,1d0 <__modsi3+0x20>
 1bc:	f79ff0ef          	jal	134 <__udivsi3>
 1c0:	00058513          	mv	a0,a1
 1c4:	00028067          	jr	t0
 1c8:	40b005b3          	neg	a1,a1
 1cc:	fe0558e3          	bgez	a0,1bc <__modsi3+0xc>
 1d0:	40a00533          	neg	a0,a0
 1d4:	f61ff0ef          	jal	134 <__udivsi3>
 1d8:	40b00533          	neg	a0,a1
 1dc:	00028067          	jr	t0

000001e0 <oled_wait>:
 1e0:	00000013          	nop
 1e4:	00000013          	nop
 1e8:	00000013          	nop
 1ec:	00000013          	nop
 1f0:	00000013          	nop
 1f4:	00000013          	nop
 1f8:	00000013          	nop
 1fc:	00008067          	ret

00000200 <oled_init_mode>:
 200:	000017b7          	lui	a5,0x1
 204:	8107a703          	lw	a4,-2032(a5) # 810 <OLED_RST>
 208:	fe010113          	addi	sp,sp,-32
 20c:	00112e23          	sw	ra,28(sp)
 210:	00812c23          	sw	s0,24(sp)
 214:	00072023          	sw	zero,0(a4)
 218:	00040737          	lui	a4,0x40
 21c:	00000013          	nop
 220:	fff70713          	addi	a4,a4,-1 # 3ffff <__stacktop+0x2ffff>
 224:	fe071ce3          	bnez	a4,21c <oled_init_mode+0x1c>
 228:	8107a703          	lw	a4,-2032(a5)
 22c:	00100693          	li	a3,1
 230:	00d72023          	sw	a3,0(a4)
 234:	00040737          	lui	a4,0x40
 238:	00000013          	nop
 23c:	fff70713          	addi	a4,a4,-1 # 3ffff <__stacktop+0x2ffff>
 240:	fe071ce3          	bnez	a4,238 <oled_init_mode+0x38>
 244:	8107a783          	lw	a5,-2032(a5)
 248:	0007a023          	sw	zero,0(a5)
 24c:	000407b7          	lui	a5,0x40
 250:	00000013          	nop
 254:	fff78793          	addi	a5,a5,-1 # 3ffff <__stacktop+0x2ffff>
 258:	fe079ce3          	bnez	a5,250 <oled_init_mode+0x50>
 25c:	00001737          	lui	a4,0x1
 260:	81472783          	lw	a5,-2028(a4) # 814 <OLED>
 264:	2af00693          	li	a3,687
 268:	00d7a023          	sw	a3,0(a5)
 26c:	000407b7          	lui	a5,0x40
 270:	00000013          	nop
 274:	fff78793          	addi	a5,a5,-1 # 3ffff <__stacktop+0x2ffff>
 278:	fe079ce3          	bnez	a5,270 <oled_init_mode+0x70>
 27c:	81472403          	lw	s0,-2028(a4)
 280:	2a000793          	li	a5,672
 284:	00a12623          	sw	a0,12(sp)
 288:	00f42023          	sw	a5,0(s0)
 28c:	00000097          	auipc	ra,0x0
 290:	f54080e7          	jalr	-172(ra) # 1e0 <oled_wait>
 294:	00c12503          	lw	a0,12(sp)
 298:	4a000793          	li	a5,1184
 29c:	00050463          	beqz	a0,2a4 <oled_init_mode+0xa4>
 2a0:	42000793          	li	a5,1056
 2a4:	00f42023          	sw	a5,0(s0)
 2a8:	00000097          	auipc	ra,0x0
 2ac:	f38080e7          	jalr	-200(ra) # 1e0 <oled_wait>
 2b0:	2fd00793          	li	a5,765
 2b4:	00f42023          	sw	a5,0(s0)
 2b8:	00000097          	auipc	ra,0x0
 2bc:	f28080e7          	jalr	-216(ra) # 1e0 <oled_wait>
 2c0:	4b100793          	li	a5,1201
 2c4:	00f42023          	sw	a5,0(s0)
 2c8:	00000097          	auipc	ra,0x0
 2cc:	f18080e7          	jalr	-232(ra) # 1e0 <oled_wait>
 2d0:	2a200793          	li	a5,674
 2d4:	00f42023          	sw	a5,0(s0)
 2d8:	00000097          	auipc	ra,0x0
 2dc:	f08080e7          	jalr	-248(ra) # 1e0 <oled_wait>
 2e0:	40000793          	li	a5,1024
 2e4:	00f42023          	sw	a5,0(s0)
 2e8:	01812403          	lw	s0,24(sp)
 2ec:	01c12083          	lw	ra,28(sp)
 2f0:	02010113          	addi	sp,sp,32
 2f4:	00000317          	auipc	t1,0x0
 2f8:	eec30067          	jr	-276(t1) # 1e0 <oled_wait>

000002fc <oled_init>:
 2fc:	00000513          	li	a0,0
 300:	00000317          	auipc	t1,0x0
 304:	f0030067          	jr	-256(t1) # 200 <oled_init_mode>

00000308 <oled_fullscreen>:
 308:	ff010113          	addi	sp,sp,-16
 30c:	000017b7          	lui	a5,0x1
 310:	00812423          	sw	s0,8(sp)
 314:	8147a403          	lw	s0,-2028(a5) # 814 <OLED>
 318:	00112623          	sw	ra,12(sp)
 31c:	00912223          	sw	s1,4(sp)
 320:	01212023          	sw	s2,0(sp)
 324:	21500793          	li	a5,533
 328:	00f42023          	sw	a5,0(s0)
 32c:	40000913          	li	s2,1024
 330:	00000097          	auipc	ra,0x0
 334:	eb0080e7          	jalr	-336(ra) # 1e0 <oled_wait>
 338:	47f00493          	li	s1,1151
 33c:	01242023          	sw	s2,0(s0)
 340:	00000097          	auipc	ra,0x0
 344:	ea0080e7          	jalr	-352(ra) # 1e0 <oled_wait>
 348:	00942023          	sw	s1,0(s0)
 34c:	00000097          	auipc	ra,0x0
 350:	e94080e7          	jalr	-364(ra) # 1e0 <oled_wait>
 354:	27500793          	li	a5,629
 358:	00f42023          	sw	a5,0(s0)
 35c:	00000097          	auipc	ra,0x0
 360:	e84080e7          	jalr	-380(ra) # 1e0 <oled_wait>
 364:	01242023          	sw	s2,0(s0)
 368:	00000097          	auipc	ra,0x0
 36c:	e78080e7          	jalr	-392(ra) # 1e0 <oled_wait>
 370:	00942023          	sw	s1,0(s0)
 374:	00000097          	auipc	ra,0x0
 378:	e6c080e7          	jalr	-404(ra) # 1e0 <oled_wait>
 37c:	25c00793          	li	a5,604
 380:	00f42023          	sw	a5,0(s0)
 384:	00812403          	lw	s0,8(sp)
 388:	00c12083          	lw	ra,12(sp)
 38c:	00412483          	lw	s1,4(sp)
 390:	00012903          	lw	s2,0(sp)
 394:	01010113          	addi	sp,sp,16
 398:	00000317          	auipc	t1,0x0
 39c:	e4830067          	jr	-440(t1) # 1e0 <oled_wait>

000003a0 <oled_clear>:
 3a0:	fe010113          	addi	sp,sp,-32
 3a4:	000017b7          	lui	a5,0x1
 3a8:	01312623          	sw	s3,12(sp)
 3ac:	8147a983          	lw	s3,-2028(a5) # 814 <OLED>
 3b0:	00812c23          	sw	s0,24(sp)
 3b4:	01212823          	sw	s2,16(sp)
 3b8:	00112e23          	sw	ra,28(sp)
 3bc:	00912a23          	sw	s1,20(sp)
 3c0:	08000913          	li	s2,128
 3c4:	40056413          	ori	s0,a0,1024
 3c8:	08000493          	li	s1,128
 3cc:	0089a023          	sw	s0,0(s3) # 4000 <f_putchar+0x35d8>
 3d0:	00000097          	auipc	ra,0x0
 3d4:	e10080e7          	jalr	-496(ra) # 1e0 <oled_wait>
 3d8:	0089a023          	sw	s0,0(s3)
 3dc:	00000097          	auipc	ra,0x0
 3e0:	e04080e7          	jalr	-508(ra) # 1e0 <oled_wait>
 3e4:	fff48493          	addi	s1,s1,-1
 3e8:	0089a023          	sw	s0,0(s3)
 3ec:	00000097          	auipc	ra,0x0
 3f0:	df4080e7          	jalr	-524(ra) # 1e0 <oled_wait>
 3f4:	fc049ce3          	bnez	s1,3cc <oled_clear+0x2c>
 3f8:	fff90913          	addi	s2,s2,-1
 3fc:	fc0916e3          	bnez	s2,3c8 <oled_clear+0x28>
 400:	01c12083          	lw	ra,28(sp)
 404:	01812403          	lw	s0,24(sp)
 408:	01412483          	lw	s1,20(sp)
 40c:	01012903          	lw	s2,16(sp)
 410:	00c12983          	lw	s3,12(sp)
 414:	02010113          	addi	sp,sp,32
 418:	00008067          	ret

0000041c <display_framebuffer>:
 41c:	000017b7          	lui	a5,0x1
 420:	80c7a503          	lw	a0,-2036(a5) # 80c <DISPLAY>
 424:	00008067          	ret

00000428 <display_set_cursor>:
 428:	000017b7          	lui	a5,0x1
 42c:	a2a7a223          	sw	a0,-1500(a5) # a24 <cursor_x>
 430:	000017b7          	lui	a5,0x1
 434:	a2b7a023          	sw	a1,-1504(a5) # a20 <cursor_y>
 438:	00008067          	ret

0000043c <display_set_front_back_color>:
 43c:	000017b7          	lui	a5,0x1
 440:	a0a78ea3          	sb	a0,-1507(a5) # a1d <front_color>
 444:	000017b7          	lui	a5,0x1
 448:	a0b78e23          	sb	a1,-1508(a5) # a1c <back_color>
 44c:	00008067          	ret

00000450 <display_putchar>:
 450:	00a00793          	li	a5,10
 454:	00001737          	lui	a4,0x1
 458:	02f51663          	bne	a0,a5,484 <display_putchar+0x34>
 45c:	a2072223          	sw	zero,-1500(a4) # a24 <cursor_x>
 460:	00001737          	lui	a4,0x1
 464:	a2072783          	lw	a5,-1504(a4) # a20 <cursor_y>
 468:	00878793          	addi	a5,a5,8
 46c:	a2f72023          	sw	a5,-1504(a4)
 470:	07f00713          	li	a4,127
 474:	00f75663          	bge	a4,a5,480 <display_putchar+0x30>
 478:	000017b7          	lui	a5,0x1
 47c:	a207a023          	sw	zero,-1504(a5) # a20 <cursor_y>
 480:	00008067          	ret
 484:	ff010113          	addi	sp,sp,-16
 488:	00812623          	sw	s0,12(sp)
 48c:	01f00793          	li	a5,31
 490:	08a7d663          	bge	a5,a0,51c <display_putchar+0xcc>
 494:	000017b7          	lui	a5,0x1
 498:	80c7ae83          	lw	t4,-2036(a5) # 80c <DISPLAY>
 49c:	000016b7          	lui	a3,0x1
 4a0:	00251793          	slli	a5,a0,0x2
 4a4:	83c68693          	addi	a3,a3,-1988 # 83c <font>
 4a8:	00a787b3          	add	a5,a5,a0
 4ac:	00d78533          	add	a0,a5,a3
 4b0:	00100e13          	li	t3,1
 4b4:	00000693          	li	a3,0
 4b8:	000013b7          	lui	t2,0x1
 4bc:	00001437          	lui	s0,0x1
 4c0:	00001f37          	lui	t5,0x1
 4c4:	00500f93          	li	t6,5
 4c8:	00800293          	li	t0,8
 4cc:	00de1333          	sll	t1,t3,a3
 4d0:	00050593          	mv	a1,a0
 4d4:	00000613          	li	a2,0
 4d8:	f605c783          	lbu	a5,-160(a1)
 4dc:	0067f7b3          	and	a5,a5,t1
 4e0:	04078a63          	beqz	a5,534 <display_putchar+0xe4>
 4e4:	a1d44883          	lbu	a7,-1507(s0) # a1d <front_color>
 4e8:	a2472783          	lw	a5,-1500(a4)
 4ec:	a20f2803          	lw	a6,-1504(t5) # a20 <cursor_y>
 4f0:	00158593          	addi	a1,a1,1
 4f4:	00f607b3          	add	a5,a2,a5
 4f8:	00779793          	slli	a5,a5,0x7
 4fc:	01068833          	add	a6,a3,a6
 500:	010787b3          	add	a5,a5,a6
 504:	00fe87b3          	add	a5,t4,a5
 508:	01178023          	sb	a7,0(a5)
 50c:	00160613          	addi	a2,a2,1
 510:	fdf614e3          	bne	a2,t6,4d8 <display_putchar+0x88>
 514:	00168693          	addi	a3,a3,1
 518:	fa569ae3          	bne	a3,t0,4cc <display_putchar+0x7c>
 51c:	a2472783          	lw	a5,-1500(a4)
 520:	07f00693          	li	a3,127
 524:	00578793          	addi	a5,a5,5
 528:	00f6ca63          	blt	a3,a5,53c <display_putchar+0xec>
 52c:	a2f72223          	sw	a5,-1500(a4)
 530:	02c0006f          	j	55c <display_putchar+0x10c>
 534:	a1c3c883          	lbu	a7,-1508(t2) # a1c <back_color>
 538:	fb1ff06f          	j	4e8 <display_putchar+0x98>
 53c:	a2072223          	sw	zero,-1500(a4)
 540:	00001737          	lui	a4,0x1
 544:	a2072783          	lw	a5,-1504(a4) # a20 <cursor_y>
 548:	00878793          	addi	a5,a5,8
 54c:	a2f72023          	sw	a5,-1504(a4)
 550:	00f6d663          	bge	a3,a5,55c <display_putchar+0x10c>
 554:	000017b7          	lui	a5,0x1
 558:	a207a023          	sw	zero,-1504(a5) # a20 <cursor_y>
 55c:	00c12403          	lw	s0,12(sp)
 560:	01010113          	addi	sp,sp,16
 564:	00008067          	ret

00000568 <print_string>:
 568:	ff010113          	addi	sp,sp,-16
 56c:	00812423          	sw	s0,8(sp)
 570:	00912223          	sw	s1,4(sp)
 574:	00112623          	sw	ra,12(sp)
 578:	00050413          	mv	s0,a0
 57c:	000014b7          	lui	s1,0x1
 580:	00044503          	lbu	a0,0(s0)
 584:	00051c63          	bnez	a0,59c <print_string+0x34>
 588:	00c12083          	lw	ra,12(sp)
 58c:	00812403          	lw	s0,8(sp)
 590:	00412483          	lw	s1,4(sp)
 594:	01010113          	addi	sp,sp,16
 598:	00008067          	ret
 59c:	a284a783          	lw	a5,-1496(s1) # a28 <f_putchar>
 5a0:	00140413          	addi	s0,s0,1
 5a4:	000780e7          	jalr	a5
 5a8:	fd9ff06f          	j	580 <print_string+0x18>

000005ac <print_dec>:
 5ac:	ef010113          	addi	sp,sp,-272
 5b0:	10812423          	sw	s0,264(sp)
 5b4:	10912223          	sw	s1,260(sp)
 5b8:	10112623          	sw	ra,268(sp)
 5bc:	11212023          	sw	s2,256(sp)
 5c0:	00050413          	mv	s0,a0
 5c4:	000014b7          	lui	s1,0x1
 5c8:	08045063          	bgez	s0,648 <print_dec+0x9c>
 5cc:	a284a783          	lw	a5,-1496(s1) # a28 <f_putchar>
 5d0:	02d00513          	li	a0,45
 5d4:	40800433          	neg	s0,s0
 5d8:	000780e7          	jalr	a5
 5dc:	fedff06f          	j	5c8 <print_dec+0x1c>
 5e0:	00040513          	mv	a0,s0
 5e4:	00a00593          	li	a1,10
 5e8:	00000097          	auipc	ra,0x0
 5ec:	b44080e7          	jalr	-1212(ra) # 12c <__divsi3>
 5f0:	00251793          	slli	a5,a0,0x2
 5f4:	00f507b3          	add	a5,a0,a5
 5f8:	00179793          	slli	a5,a5,0x1
 5fc:	40f40433          	sub	s0,s0,a5
 600:	00148493          	addi	s1,s1,1
 604:	fe848fa3          	sb	s0,-1(s1)
 608:	00050413          	mv	s0,a0
 60c:	fc041ae3          	bnez	s0,5e0 <print_dec+0x34>
 610:	fd2488e3          	beq	s1,s2,5e0 <print_dec+0x34>
 614:	00001437          	lui	s0,0x1
 618:	fff4c503          	lbu	a0,-1(s1)
 61c:	a2842783          	lw	a5,-1496(s0) # a28 <f_putchar>
 620:	fff48493          	addi	s1,s1,-1
 624:	03050513          	addi	a0,a0,48
 628:	000780e7          	jalr	a5
 62c:	ff2496e3          	bne	s1,s2,618 <print_dec+0x6c>
 630:	10c12083          	lw	ra,268(sp)
 634:	10812403          	lw	s0,264(sp)
 638:	10412483          	lw	s1,260(sp)
 63c:	10012903          	lw	s2,256(sp)
 640:	11010113          	addi	sp,sp,272
 644:	00008067          	ret
 648:	00010493          	mv	s1,sp
 64c:	00010913          	mv	s2,sp
 650:	fbdff06f          	j	60c <print_dec+0x60>

00000654 <print_hex_digits>:
 654:	fe010113          	addi	sp,sp,-32
 658:	00812c23          	sw	s0,24(sp)
 65c:	00912a23          	sw	s1,20(sp)
 660:	fff58413          	addi	s0,a1,-1
 664:	000014b7          	lui	s1,0x1
 668:	01212823          	sw	s2,16(sp)
 66c:	01312623          	sw	s3,12(sp)
 670:	00112e23          	sw	ra,28(sp)
 674:	00050993          	mv	s3,a0
 678:	00241413          	slli	s0,s0,0x2
 67c:	82848493          	addi	s1,s1,-2008 # 828 <OLED+0x14>
 680:	00001937          	lui	s2,0x1
 684:	02045063          	bgez	s0,6a4 <print_hex_digits+0x50>
 688:	01c12083          	lw	ra,28(sp)
 68c:	01812403          	lw	s0,24(sp)
 690:	01412483          	lw	s1,20(sp)
 694:	01012903          	lw	s2,16(sp)
 698:	00c12983          	lw	s3,12(sp)
 69c:	02010113          	addi	sp,sp,32
 6a0:	00008067          	ret
 6a4:	0089d7b3          	srl	a5,s3,s0
 6a8:	00f7f793          	andi	a5,a5,15
 6ac:	00f487b3          	add	a5,s1,a5
 6b0:	a2892703          	lw	a4,-1496(s2) # a28 <f_putchar>
 6b4:	0007c503          	lbu	a0,0(a5)
 6b8:	ffc40413          	addi	s0,s0,-4
 6bc:	000700e7          	jalr	a4
 6c0:	fc5ff06f          	j	684 <print_hex_digits+0x30>

000006c4 <print_hex>:
 6c4:	00800593          	li	a1,8
 6c8:	00000317          	auipc	t1,0x0
 6cc:	f8c30067          	jr	-116(t1) # 654 <print_hex_digits>

000006d0 <printf>:
 6d0:	fa010113          	addi	sp,sp,-96
 6d4:	04f12a23          	sw	a5,84(sp)
 6d8:	04410793          	addi	a5,sp,68
 6dc:	02812c23          	sw	s0,56(sp)
 6e0:	02912a23          	sw	s1,52(sp)
 6e4:	03212823          	sw	s2,48(sp)
 6e8:	03312623          	sw	s3,44(sp)
 6ec:	03412423          	sw	s4,40(sp)
 6f0:	03512223          	sw	s5,36(sp)
 6f4:	03612023          	sw	s6,32(sp)
 6f8:	02112e23          	sw	ra,60(sp)
 6fc:	01712e23          	sw	s7,28(sp)
 700:	00050413          	mv	s0,a0
 704:	04b12223          	sw	a1,68(sp)
 708:	04c12423          	sw	a2,72(sp)
 70c:	04d12623          	sw	a3,76(sp)
 710:	04e12823          	sw	a4,80(sp)
 714:	05012c23          	sw	a6,88(sp)
 718:	05112e23          	sw	a7,92(sp)
 71c:	00f12623          	sw	a5,12(sp)
 720:	02500913          	li	s2,37
 724:	000014b7          	lui	s1,0x1
 728:	07300993          	li	s3,115
 72c:	07800a13          	li	s4,120
 730:	06400a93          	li	s5,100
 734:	06300b13          	li	s6,99
 738:	00044503          	lbu	a0,0(s0)
 73c:	02051863          	bnez	a0,76c <printf+0x9c>
 740:	03c12083          	lw	ra,60(sp)
 744:	03812403          	lw	s0,56(sp)
 748:	03412483          	lw	s1,52(sp)
 74c:	03012903          	lw	s2,48(sp)
 750:	02c12983          	lw	s3,44(sp)
 754:	02812a03          	lw	s4,40(sp)
 758:	02412a83          	lw	s5,36(sp)
 75c:	02012b03          	lw	s6,32(sp)
 760:	01c12b83          	lw	s7,28(sp)
 764:	06010113          	addi	sp,sp,96
 768:	00008067          	ret
 76c:	09251a63          	bne	a0,s2,800 <printf+0x130>
 770:	00144503          	lbu	a0,1(s0)
 774:	00140b93          	addi	s7,s0,1
 778:	03351463          	bne	a0,s3,7a0 <printf+0xd0>
 77c:	00c12783          	lw	a5,12(sp)
 780:	0007a503          	lw	a0,0(a5)
 784:	00478713          	addi	a4,a5,4
 788:	00e12623          	sw	a4,12(sp)
 78c:	00000097          	auipc	ra,0x0
 790:	ddc080e7          	jalr	-548(ra) # 568 <print_string>
 794:	000b8413          	mv	s0,s7
 798:	00140413          	addi	s0,s0,1
 79c:	f9dff06f          	j	738 <printf+0x68>
 7a0:	03451063          	bne	a0,s4,7c0 <printf+0xf0>
 7a4:	00c12783          	lw	a5,12(sp)
 7a8:	0007a503          	lw	a0,0(a5)
 7ac:	00478713          	addi	a4,a5,4
 7b0:	00e12623          	sw	a4,12(sp)
 7b4:	00000097          	auipc	ra,0x0
 7b8:	f10080e7          	jalr	-240(ra) # 6c4 <print_hex>
 7bc:	fd9ff06f          	j	794 <printf+0xc4>
 7c0:	03551063          	bne	a0,s5,7e0 <printf+0x110>
 7c4:	00c12783          	lw	a5,12(sp)
 7c8:	0007a503          	lw	a0,0(a5)
 7cc:	00478713          	addi	a4,a5,4
 7d0:	00e12623          	sw	a4,12(sp)
 7d4:	00000097          	auipc	ra,0x0
 7d8:	dd8080e7          	jalr	-552(ra) # 5ac <print_dec>
 7dc:	fb9ff06f          	j	794 <printf+0xc4>
 7e0:	a284a783          	lw	a5,-1496(s1) # a28 <f_putchar>
 7e4:	01651a63          	bne	a0,s6,7f8 <printf+0x128>
 7e8:	00c12703          	lw	a4,12(sp)
 7ec:	00072503          	lw	a0,0(a4)
 7f0:	00470693          	addi	a3,a4,4
 7f4:	00d12623          	sw	a3,12(sp)
 7f8:	000780e7          	jalr	a5
 7fc:	f99ff06f          	j	794 <printf+0xc4>
 800:	a284a783          	lw	a5,-1496(s1)
 804:	000780e7          	jalr	a5
 808:	f91ff06f          	j	798 <printf+0xc8>

0000080c <DISPLAY>:
 80c:	00014000                                .@..

00000810 <OLED_RST>:
 810:	00010010                                ....

00000814 <OLED>:
 814:	00010008 6c6c6548 6f77206f 21646c72     ....Hello world!
 824:	00000000 33323130 37363534 42413938     ....0123456789AB
 834:	46454443 00000000                       CDEF....

0000083c <font>:
 83c:	00000000 00002f00 00030000 14000003     ...../..........
 84c:	143e143e 3a2b6a2e 08122600 171c3224     >.>..j+:.&..$2..
 85c:	03003415 00000000 0000211e 001e2100     .4.......!...!..
 86c:	08220000 0822081c 0000081c 00002040     .."...".....@ ..
 87c:	00080800 00200000 20000000 02040810     ...... .... ....
 88c:	3f21213f 003f0100 253d0000 25002725     ?!!?..?...=%%'.%
 89c:	003f2525 3f040407 25252700 253f003d     %%?....?.'%%=.?%
 8ac:	01003d25 00030539 3f25253f 25252700     %=..9...?%%?.'%%
 8bc:	0028003f 40000000 00000028 00110a04     ?.(....@(.......
 8cc:	00141400 0a110000 01000004 0007052d     ............-...
 8dc:	253d213f 09093f1f 253f003f 3f003c27     ?!=%.?..?.?%'<.?
 8ec:	00212121 1e21213f 25253f00 053f0025     !!!.?!!..?%%%.?.
 8fc:	3f000505 003d2521 3f04043f 213f2100     ...?!%=.?..?.!?!
 90c:	20380000 3f013f21 003b0404 2020203f     ..8 !?.?..;.?   
 91c:	3f013f00 023f3f01 3f003f04 003f2121     .?.?.??..?.?!!?.
 92c:	0f09093f 31213f00 093f003f 27002f39     ?....?!1?.?.9/.'
 93c:	003d2525 013f0101 20203f01 100f003f     %%=...?..?  ?...
 94c:	3f001f30 3f203f20 3b04043b 38080f00     0..? ? ?;..;...8
 95c:	2931000f 3f002325 00000021 04081020     ..1)%#.?!... ...
 96c:	003f2102 01020000 20000201 00000020     .!?........  ...
 97c:	00000201 24243800 243f003c 3c003c24     .....8$$<.?$$<.<
 98c:	00242424 3f24243c 2c2c3c00 3f04002c     $$$.<$$?.<,,,..?
 99c:	bc000005 00fca4a4 3c04043f 00003d00     ........?..<.=..
 9ac:	fd800000 3f000000 00340808 0000003f     .......?..4.?...
 9bc:	3c043c00 043c3c04 3c003c04 003c2424     .<.<.<<..<.<$$<.
 9cc:	3c2424fc 24243c00 083c00fc 2c000004     .$$<.<$$..<....,
 9dc:	003c2c2c 00243f04 20203c00 100c003c     ,,<..?$..<  <...
 9ec:	3c001c30 3c203c20 34080834 a0a0bc00     0..< < <4..4....
 9fc:	342400fc 0400242c 0000213f 0000003f     ..$4,$..?!..?...
 a0c:	043f2100 02010000 00000102 00000000     .!?.............

00000a1c <back_color>:
	...

00000a1d <front_color>:
 a1d:	                                         ...

00000a20 <cursor_y>:
 a20:	00000000                                ....

00000a24 <cursor_x>:
 a24:	00000000                                ....

00000a28 <f_putchar>:
 a28:	00000000                                ....
