
code.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <_start>:
       0:	00010137          	lui	sp,0x10
       4:	00000097          	auipc	ra,0x0
       8:	180080e7          	jalr	384(ra) # 184 <main>
       c:	00000317          	auipc	t1,0x0
      10:	00830067          	jr	8(t1) # 14 <exit>

00000014 <exit>:
      14:	00000000          	.word	0x00000000
      18:	00008067          	ret

0000001c <pause>:
      1c:	c0002773          	rdcycle	a4
      20:	c00027f3          	rdcycle	a5
      24:	40e787b3          	sub	a5,a5,a4
      28:	fea7ece3          	bltu	a5,a0,20 <pause+0x4>
      2c:	00008067          	ret

00000030 <scan_files>:
      30:	ed010113          	addi	sp,sp,-304 # fed0 <_files+0x4ec0>
      34:	00004537          	lui	a0,0x4
      38:	12812423          	sw	s0,296(sp)
      3c:	00410593          	addi	a1,sp,4
      40:	00005437          	lui	s0,0x5
      44:	70c50513          	addi	a0,a0,1804 # 470c <LEDS+0x4>
      48:	12112623          	sw	ra,300(sp)
      4c:	12912223          	sw	s1,292(sp)
      50:	9e042c23          	sw	zero,-1544(s0) # 49f8 <file_count>
      54:	00003097          	auipc	ra,0x3
      58:	c30080e7          	jalr	-976(ra) # 2c84 <fl_opendir>
      5c:	02050a63          	beqz	a0,90 <scan_files+0x60>
      60:	01010593          	addi	a1,sp,16
      64:	01f00493          	li	s1,31
      68:	00410513          	addi	a0,sp,4
      6c:	00003097          	auipc	ra,0x3
      70:	2e4080e7          	jalr	740(ra) # 3350 <fl_readdir>
      74:	00051863          	bnez	a0,84 <scan_files+0x54>
      78:	9f842703          	lw	a4,-1544(s0)
      7c:	01010593          	addi	a1,sp,16
      80:	02e4d263          	bge	s1,a4,a4 <scan_files+0x74>
      84:	00410513          	addi	a0,sp,4
      88:	00001097          	auipc	ra,0x1
      8c:	7e4080e7          	jalr	2020(ra) # 186c <fl_closedir>
      90:	12c12083          	lw	ra,300(sp)
      94:	12812403          	lw	s0,296(sp)
      98:	12412483          	lw	s1,292(sp)
      9c:	13010113          	addi	sp,sp,304
      a0:	00008067          	ret
      a4:	11414783          	lbu	a5,276(sp)
      a8:	fc0790e3          	bnez	a5,68 <scan_files+0x38>
      ac:	00671693          	slli	a3,a4,0x6
      b0:	00e68633          	add	a2,a3,a4
      b4:	000057b7          	lui	a5,0x5
      b8:	00261613          	slli	a2,a2,0x2
      bc:	a2878793          	addi	a5,a5,-1496 # 4a28 <files>
      c0:	0ff00313          	li	t1,255
      c4:	00a58833          	add	a6,a1,a0
      c8:	00084883          	lbu	a7,0(a6)
      cc:	00088463          	beqz	a7,d4 <scan_files+0xa4>
      d0:	02651263          	bne	a0,t1,f4 <scan_files+0xc4>
      d4:	00e686b3          	add	a3,a3,a4
      d8:	00269693          	slli	a3,a3,0x2
      dc:	00d787b3          	add	a5,a5,a3
      e0:	00a787b3          	add	a5,a5,a0
      e4:	00170713          	addi	a4,a4,1
      e8:	00078023          	sb	zero,0(a5)
      ec:	9ee42c23          	sw	a4,-1544(s0)
      f0:	f79ff06f          	j	68 <scan_files+0x38>
      f4:	00c50833          	add	a6,a0,a2
      f8:	01078833          	add	a6,a5,a6
      fc:	01180023          	sb	a7,0(a6)
     100:	00150513          	addi	a0,a0,1
     104:	fc1ff06f          	j	c4 <scan_files+0x94>

00000108 <clear_audio>:
     108:	fe010113          	addi	sp,sp,-32
     10c:	000047b7          	lui	a5,0x4
     110:	00812c23          	sw	s0,24(sp)
     114:	6f47a403          	lw	s0,1780(a5) # 46f4 <AUDIO>
     118:	00112e23          	sw	ra,28(sp)
     11c:	00912a23          	sw	s1,20(sp)
     120:	00042703          	lw	a4,0(s0)
     124:	01212823          	sw	s2,16(sp)
     128:	01312623          	sw	s3,12(sp)
     12c:	00042783          	lw	a5,0(s0)
     130:	fef70ee3          	beq	a4,a5,12c <clear_audio+0x24>
     134:	00200493          	li	s1,2
     138:	00100993          	li	s3,1
     13c:	00042903          	lw	s2,0(s0)
     140:	20000613          	li	a2,512
     144:	00000593          	li	a1,0
     148:	00090513          	mv	a0,s2
     14c:	00001097          	auipc	ra,0x1
     150:	ad4080e7          	jalr	-1324(ra) # c20 <memset>
     154:	00042783          	lw	a5,0(s0)
     158:	fef90ee3          	beq	s2,a5,154 <clear_audio+0x4c>
     15c:	03349063          	bne	s1,s3,17c <clear_audio+0x74>
     160:	01c12083          	lw	ra,28(sp)
     164:	01812403          	lw	s0,24(sp)
     168:	01412483          	lw	s1,20(sp)
     16c:	01012903          	lw	s2,16(sp)
     170:	00c12983          	lw	s3,12(sp)
     174:	02010113          	addi	sp,sp,32
     178:	00008067          	ret
     17c:	00100493          	li	s1,1
     180:	fbdff06f          	j	13c <clear_audio+0x34>

00000184 <main>:
     184:	000017b7          	lui	a5,0x1
     188:	fd010113          	addi	sp,sp,-48
     18c:	00005737          	lui	a4,0x5
     190:	f2478793          	addi	a5,a5,-220 # f24 <display_putchar>
     194:	02112623          	sw	ra,44(sp)
     198:	a0f72623          	sw	a5,-1524(a4) # 4a0c <f_putchar>
     19c:	02812423          	sw	s0,40(sp)
     1a0:	02912223          	sw	s1,36(sp)
     1a4:	03212023          	sw	s2,32(sp)
     1a8:	01312e23          	sw	s3,28(sp)
     1ac:	01412c23          	sw	s4,24(sp)
     1b0:	01512a23          	sw	s5,20(sp)
     1b4:	01612823          	sw	s6,16(sp)
     1b8:	01712623          	sw	s7,12(sp)
     1bc:	01812423          	sw	s8,8(sp)
     1c0:	01912223          	sw	s9,4(sp)
     1c4:	00001097          	auipc	ra,0x1
     1c8:	c68080e7          	jalr	-920(ra) # e2c <oled_init>
     1cc:	00001097          	auipc	ra,0x1
     1d0:	c6c080e7          	jalr	-916(ra) # e38 <oled_fullscreen>
     1d4:	00001097          	auipc	ra,0x1
     1d8:	d1c080e7          	jalr	-740(ra) # ef0 <display_framebuffer>
     1dc:	00004637          	lui	a2,0x4
     1e0:	00000593          	li	a1,0
     1e4:	00001097          	auipc	ra,0x1
     1e8:	a3c080e7          	jalr	-1476(ra) # c20 <memset>
     1ec:	00001097          	auipc	ra,0x1
     1f0:	e50080e7          	jalr	-432(ra) # 103c <display_refresh>
     1f4:	00000593          	li	a1,0
     1f8:	00000513          	li	a0,0
     1fc:	00001097          	auipc	ra,0x1
     200:	d00080e7          	jalr	-768(ra) # efc <display_set_cursor>
     204:	00000593          	li	a1,0
     208:	0ff00513          	li	a0,255
     20c:	00001097          	auipc	ra,0x1
     210:	d04080e7          	jalr	-764(ra) # f10 <display_set_front_back_color>
     214:	00004537          	lui	a0,0x4
     218:	71050513          	addi	a0,a0,1808 # 4710 <LEDS+0x8>
     21c:	00001097          	auipc	ra,0x1
     220:	018080e7          	jalr	24(ra) # 1234 <printf>
     224:	000014b7          	lui	s1,0x1
     228:	00001437          	lui	s0,0x1
     22c:	00001097          	auipc	ra,0x1
     230:	e10080e7          	jalr	-496(ra) # 103c <display_refresh>
     234:	b6448493          	addi	s1,s1,-1180 # b64 <sdcard_writesector>
     238:	00000097          	auipc	ra,0x0
     23c:	788080e7          	jalr	1928(ra) # 9c0 <sdcard_init>
     240:	b1040413          	addi	s0,s0,-1264 # b10 <sdcard_readsector>
     244:	00001097          	auipc	ra,0x1
     248:	5c0080e7          	jalr	1472(ra) # 1804 <fl_init>
     24c:	00048593          	mv	a1,s1
     250:	00040513          	mv	a0,s0
     254:	00002097          	auipc	ra,0x2
     258:	418080e7          	jalr	1048(ra) # 266c <fl_attach_media>
     25c:	fe0518e3          	bnez	a0,24c <main+0xc8>
     260:	00004537          	lui	a0,0x4
     264:	71c50513          	addi	a0,a0,1820 # 471c <LEDS+0x14>
     268:	00001097          	auipc	ra,0x1
     26c:	fcc080e7          	jalr	-52(ra) # 1234 <printf>
     270:	00001097          	auipc	ra,0x1
     274:	dcc080e7          	jalr	-564(ra) # 103c <display_refresh>
     278:	00000097          	auipc	ra,0x0
     27c:	e90080e7          	jalr	-368(ra) # 108 <clear_audio>
     280:	00000097          	auipc	ra,0x0
     284:	db0080e7          	jalr	-592(ra) # 30 <scan_files>
     288:	000047b7          	lui	a5,0x4
     28c:	72478c93          	addi	s9,a5,1828 # 4724 <LEDS+0x1c>
     290:	000047b7          	lui	a5,0x4
     294:	6f87ac03          	lw	s8,1784(a5) # 46f8 <BUTTONS>
     298:	000044b7          	lui	s1,0x4
     29c:	00000a93          	li	s5,0
     2a0:	00000413          	li	s0,0
     2a4:	00005a37          	lui	s4,0x5
     2a8:	000059b7          	lui	s3,0x5
     2ac:	74048493          	addi	s1,s1,1856 # 4740 <LEDS+0x38>
     2b0:	00000593          	li	a1,0
     2b4:	00000513          	li	a0,0
     2b8:	00001097          	auipc	ra,0x1
     2bc:	c44080e7          	jalr	-956(ra) # efc <display_set_cursor>
     2c0:	0ff00593          	li	a1,255
     2c4:	00000513          	li	a0,0
     2c8:	00001097          	auipc	ra,0x1
     2cc:	c48080e7          	jalr	-952(ra) # f10 <display_set_front_back_color>
     2d0:	000c8513          	mv	a0,s9
     2d4:	00001097          	auipc	ra,0x1
     2d8:	f60080e7          	jalr	-160(ra) # 1234 <printf>
     2dc:	a28a0b93          	addi	s7,s4,-1496 # 4a28 <files>
     2e0:	00001097          	auipc	ra,0x1
     2e4:	d5c080e7          	jalr	-676(ra) # 103c <display_refresh>
     2e8:	00000b13          	li	s6,0
     2ec:	000b8913          	mv	s2,s7
     2f0:	9f89a783          	lw	a5,-1544(s3) # 49f8 <file_count>
     2f4:	1afb4463          	blt	s6,a5,49c <main+0x318>
     2f8:	00001097          	auipc	ra,0x1
     2fc:	d44080e7          	jalr	-700(ra) # 103c <display_refresh>
     300:	000c2b03          	lw	s6,0(s8)
     304:	010b7793          	andi	a5,s6,16
     308:	00078863          	beqz	a5,318 <main+0x194>
     30c:	010af793          	andi	a5,s5,16
     310:	0017b793          	seqz	a5,a5
     314:	00f40433          	add	s0,s0,a5
     318:	008b7793          	andi	a5,s6,8
     31c:	00078863          	beqz	a5,32c <main+0x1a8>
     320:	008af793          	andi	a5,s5,8
     324:	0017b793          	seqz	a5,a5
     328:	40f40433          	sub	s0,s0,a5
     32c:	9f89a783          	lw	a5,-1544(s3)
     330:	1a045463          	bgez	s0,4d8 <main+0x354>
     334:	fff78413          	addi	s0,a5,-1
     338:	0000c537          	lui	a0,0xc
     33c:	35050513          	addi	a0,a0,848 # c350 <_files+0x1340>
     340:	00000097          	auipc	ra,0x0
     344:	cdc080e7          	jalr	-804(ra) # 1c <pause>
     348:	004b7793          	andi	a5,s6,4
     34c:	14078463          	beqz	a5,494 <main+0x310>
     350:	00007a37          	lui	s4,0x7
     354:	00004ab7          	lui	s5,0x4
     358:	000074b7          	lui	s1,0x7
     35c:	70ca8593          	addi	a1,s5,1804 # 470c <LEDS+0x4>
     360:	b28a0513          	addi	a0,s4,-1240 # 6b28 <tmp>
     364:	aa048423          	sb	zero,-1368(s1) # 6aa8 <tmp1>
     368:	b20a0423          	sb	zero,-1240(s4)
     36c:	00001097          	auipc	ra,0x1
     370:	978080e7          	jalr	-1672(ra) # ce4 <strcat>
     374:	00641793          	slli	a5,s0,0x6
     378:	00878433          	add	s0,a5,s0
     37c:	00241413          	slli	s0,s0,0x2
     380:	00890433          	add	s0,s2,s0
     384:	00040593          	mv	a1,s0
     388:	b28a0513          	addi	a0,s4,-1240
     38c:	00001097          	auipc	ra,0x1
     390:	958080e7          	jalr	-1704(ra) # ce4 <strcat>
     394:	70ca8593          	addi	a1,s5,1804
     398:	aa848513          	addi	a0,s1,-1368
     39c:	00001097          	auipc	ra,0x1
     3a0:	948080e7          	jalr	-1720(ra) # ce4 <strcat>
     3a4:	00040593          	mv	a1,s0
     3a8:	aa848513          	addi	a0,s1,-1368
     3ac:	00001097          	auipc	ra,0x1
     3b0:	938080e7          	jalr	-1736(ra) # ce4 <strcat>
     3b4:	000045b7          	lui	a1,0x4
     3b8:	74858593          	addi	a1,a1,1864 # 4748 <LEDS+0x40>
     3bc:	aa848513          	addi	a0,s1,-1368
     3c0:	00001097          	auipc	ra,0x1
     3c4:	924080e7          	jalr	-1756(ra) # ce4 <strcat>
     3c8:	00004537          	lui	a0,0x4
     3cc:	aa848593          	addi	a1,s1,-1368
     3d0:	75050513          	addi	a0,a0,1872 # 4750 <LEDS+0x48>
     3d4:	00001097          	auipc	ra,0x1
     3d8:	e60080e7          	jalr	-416(ra) # 1234 <printf>
     3dc:	00001097          	auipc	ra,0x1
     3e0:	c60080e7          	jalr	-928(ra) # 103c <display_refresh>
     3e4:	00895537          	lui	a0,0x895
     3e8:	44050513          	addi	a0,a0,1088 # 895440 <__stacktop+0x885440>
     3ec:	00000097          	auipc	ra,0x0
     3f0:	c30080e7          	jalr	-976(ra) # 1c <pause>
     3f4:	00004937          	lui	s2,0x4
     3f8:	aa848513          	addi	a0,s1,-1368
     3fc:	75890593          	addi	a1,s2,1880 # 4758 <LEDS+0x50>
     400:	00004097          	auipc	ra,0x4
     404:	ee4080e7          	jalr	-284(ra) # 42e4 <fl_fopen>
     408:	000047b7          	lui	a5,0x4
     40c:	7087a983          	lw	s3,1800(a5) # 4708 <LEDS>
     410:	00050493          	mv	s1,a0
     414:	0c051a63          	bnez	a0,4e8 <main+0x364>
     418:	00004537          	lui	a0,0x4
     41c:	75c50513          	addi	a0,a0,1884 # 475c <LEDS+0x54>
     420:	00001097          	auipc	ra,0x1
     424:	e14080e7          	jalr	-492(ra) # 1234 <printf>
     428:	00001097          	auipc	ra,0x1
     42c:	c14080e7          	jalr	-1004(ra) # 103c <display_refresh>
     430:	0009a023          	sw	zero,0(s3)
     434:	00001097          	auipc	ra,0x1
     438:	c08080e7          	jalr	-1016(ra) # 103c <display_refresh>
     43c:	75890593          	addi	a1,s2,1880
     440:	b28a0513          	addi	a0,s4,-1240
     444:	00004097          	auipc	ra,0x4
     448:	ea0080e7          	jalr	-352(ra) # 42e4 <fl_fopen>
     44c:	00050493          	mv	s1,a0
     450:	0e051263          	bnez	a0,534 <main+0x3b0>
     454:	00040513          	mv	a0,s0
     458:	00001097          	auipc	ra,0x1
     45c:	ddc080e7          	jalr	-548(ra) # 1234 <printf>
     460:	00001097          	auipc	ra,0x1
     464:	bdc080e7          	jalr	-1060(ra) # 103c <display_refresh>
     468:	00004537          	lui	a0,0x4
     46c:	79050513          	addi	a0,a0,1936 # 4790 <LEDS+0x88>
     470:	00001097          	auipc	ra,0x1
     474:	dc4080e7          	jalr	-572(ra) # 1234 <printf>
     478:	00001097          	auipc	ra,0x1
     47c:	bc4080e7          	jalr	-1084(ra) # 103c <display_refresh>
     480:	000f4537          	lui	a0,0xf4
     484:	24050513          	addi	a0,a0,576 # f4240 <__stacktop+0xe4240>
     488:	00000097          	auipc	ra,0x0
     48c:	b94080e7          	jalr	-1132(ra) # 1c <pause>
     490:	ff1ff06f          	j	480 <main+0x2fc>
     494:	000b0a93          	mv	s5,s6
     498:	e19ff06f          	j	2b0 <main+0x12c>
     49c:	028b1863          	bne	s6,s0,4cc <main+0x348>
     4a0:	0ff00593          	li	a1,255
     4a4:	00000513          	li	a0,0
     4a8:	00001097          	auipc	ra,0x1
     4ac:	a68080e7          	jalr	-1432(ra) # f10 <display_set_front_back_color>
     4b0:	000b8593          	mv	a1,s7
     4b4:	00048513          	mv	a0,s1
     4b8:	00001097          	auipc	ra,0x1
     4bc:	d7c080e7          	jalr	-644(ra) # 1234 <printf>
     4c0:	001b0b13          	addi	s6,s6,1
     4c4:	104b8b93          	addi	s7,s7,260
     4c8:	e29ff06f          	j	2f0 <main+0x16c>
     4cc:	00000593          	li	a1,0
     4d0:	0ff00513          	li	a0,255
     4d4:	fd5ff06f          	j	4a8 <main+0x324>
     4d8:	00f427b3          	slt	a5,s0,a5
     4dc:	40f007b3          	neg	a5,a5
     4e0:	00f47433          	and	s0,s0,a5
     4e4:	e55ff06f          	j	338 <main+0x1b4>
     4e8:	00004537          	lui	a0,0x4
     4ec:	77050513          	addi	a0,a0,1904 # 4770 <LEDS+0x68>
     4f0:	00001097          	auipc	ra,0x1
     4f4:	d44080e7          	jalr	-700(ra) # 1234 <printf>
     4f8:	00001097          	auipc	ra,0x1
     4fc:	b44080e7          	jalr	-1212(ra) # 103c <display_refresh>
     500:	00001097          	auipc	ra,0x1
     504:	9f0080e7          	jalr	-1552(ra) # ef0 <display_framebuffer>
     508:	00048693          	mv	a3,s1
     50c:	00004637          	lui	a2,0x4
     510:	00100593          	li	a1,1
     514:	00003097          	auipc	ra,0x3
     518:	7cc080e7          	jalr	1996(ra) # 3ce0 <fl_fread>
     51c:	00001097          	auipc	ra,0x1
     520:	b20080e7          	jalr	-1248(ra) # 103c <display_refresh>
     524:	00048513          	mv	a0,s1
     528:	00003097          	auipc	ra,0x3
     52c:	6dc080e7          	jalr	1756(ra) # 3c04 <fl_fclose>
     530:	f01ff06f          	j	430 <main+0x2ac>
     534:	00004537          	lui	a0,0x4
     538:	78050513          	addi	a0,a0,1920 # 4780 <LEDS+0x78>
     53c:	00001097          	auipc	ra,0x1
     540:	cf8080e7          	jalr	-776(ra) # 1234 <printf>
     544:	00001097          	auipc	ra,0x1
     548:	af8080e7          	jalr	-1288(ra) # 103c <display_refresh>
     54c:	000047b7          	lui	a5,0x4
     550:	6f47a403          	lw	s0,1780(a5) # 46f4 <AUDIO>
     554:	1ff00993          	li	s3,511
     558:	00042903          	lw	s2,0(s0)
     55c:	00048693          	mv	a3,s1
     560:	20000613          	li	a2,512
     564:	00100593          	li	a1,1
     568:	00090513          	mv	a0,s2
     56c:	00003097          	auipc	ra,0x3
     570:	774080e7          	jalr	1908(ra) # 3ce0 <fl_fread>
     574:	00a05863          	blez	a0,584 <main+0x400>
     578:	00042783          	lw	a5,0(s0)
     57c:	fef90ee3          	beq	s2,a5,578 <main+0x3f4>
     580:	fca9cce3          	blt	s3,a0,558 <main+0x3d4>
     584:	00048513          	mv	a0,s1
     588:	00003097          	auipc	ra,0x3
     58c:	67c080e7          	jalr	1660(ra) # 3c04 <fl_fclose>
     590:	ed9ff06f          	j	468 <main+0x2e4>

00000594 <pause>:
     594:	c0002773          	rdcycle	a4
     598:	c00027f3          	rdcycle	a5
     59c:	40e787b3          	sub	a5,a5,a4
     5a0:	fea7ece3          	bltu	a5,a0,598 <pause+0x4>
     5a4:	00008067          	ret

000005a8 <sdcard_idle>:
     5a8:	00008067          	ret

000005ac <sdcard_select>:
     5ac:	000047b7          	lui	a5,0x4
     5b0:	6fc7a783          	lw	a5,1788(a5) # 46fc <SDCARD>
     5b4:	00200713          	li	a4,2
     5b8:	00e7a023          	sw	a4,0(a5)
     5bc:	00008067          	ret

000005c0 <sdcard_ponder>:
     5c0:	000046b7          	lui	a3,0x4
     5c4:	6fc6a683          	lw	a3,1788(a3) # 46fc <SDCARD>
     5c8:	01000793          	li	a5,16
     5cc:	00000713          	li	a4,0
     5d0:	00676613          	ori	a2,a4,6
     5d4:	00c6a023          	sw	a2,0(a3)
     5d8:	00174713          	xori	a4,a4,1
     5dc:	00000013          	nop
     5e0:	fff78793          	addi	a5,a5,-1
     5e4:	fe0796e3          	bnez	a5,5d0 <sdcard_ponder+0x10>
     5e8:	00008067          	ret

000005ec <sdcard_unselect>:
     5ec:	000047b7          	lui	a5,0x4
     5f0:	6fc7a783          	lw	a5,1788(a5) # 46fc <SDCARD>
     5f4:	00600713          	li	a4,6
     5f8:	00e7a023          	sw	a4,0(a5)
     5fc:	00008067          	ret

00000600 <sdcard_send>:
     600:	000047b7          	lui	a5,0x4
     604:	6fc7a783          	lw	a5,1788(a5) # 46fc <SDCARD>
     608:	00655713          	srli	a4,a0,0x6
     60c:	00277713          	andi	a4,a4,2
     610:	00e7a023          	sw	a4,0(a5)
     614:	00176713          	ori	a4,a4,1
     618:	00e7a023          	sw	a4,0(a5)
     61c:	00555713          	srli	a4,a0,0x5
     620:	00277713          	andi	a4,a4,2
     624:	00e7a023          	sw	a4,0(a5)
     628:	00176713          	ori	a4,a4,1
     62c:	00e7a023          	sw	a4,0(a5)
     630:	00455713          	srli	a4,a0,0x4
     634:	00277713          	andi	a4,a4,2
     638:	00e7a023          	sw	a4,0(a5)
     63c:	00176713          	ori	a4,a4,1
     640:	00e7a023          	sw	a4,0(a5)
     644:	00355713          	srli	a4,a0,0x3
     648:	00277713          	andi	a4,a4,2
     64c:	00e7a023          	sw	a4,0(a5)
     650:	00176713          	ori	a4,a4,1
     654:	00e7a023          	sw	a4,0(a5)
     658:	00255713          	srli	a4,a0,0x2
     65c:	00277713          	andi	a4,a4,2
     660:	00e7a023          	sw	a4,0(a5)
     664:	00176713          	ori	a4,a4,1
     668:	00e7a023          	sw	a4,0(a5)
     66c:	00155713          	srli	a4,a0,0x1
     670:	00277713          	andi	a4,a4,2
     674:	00e7a023          	sw	a4,0(a5)
     678:	00176713          	ori	a4,a4,1
     67c:	00e7a023          	sw	a4,0(a5)
     680:	00257713          	andi	a4,a0,2
     684:	00e7a023          	sw	a4,0(a5)
     688:	00151513          	slli	a0,a0,0x1
     68c:	00176713          	ori	a4,a4,1
     690:	00e7a023          	sw	a4,0(a5)
     694:	00257513          	andi	a0,a0,2
     698:	00a7a023          	sw	a0,0(a5)
     69c:	00156513          	ori	a0,a0,1
     6a0:	00a7a023          	sw	a0,0(a5)
     6a4:	00200713          	li	a4,2
     6a8:	00e7a023          	sw	a4,0(a5)
     6ac:	000057b7          	lui	a5,0x5
     6b0:	9fc7a783          	lw	a5,-1540(a5) # 49fc <sdcard_while_loading_callback>
     6b4:	00078067          	jr	a5

000006b8 <sdcard_read>:
     6b8:	fd010113          	addi	sp,sp,-48
     6bc:	fff50793          	addi	a5,a0,-1
     6c0:	03212023          	sw	s2,32(sp)
     6c4:	00100913          	li	s2,1
     6c8:	00f91933          	sll	s2,s2,a5
     6cc:	000047b7          	lui	a5,0x4
     6d0:	01312e23          	sw	s3,28(sp)
     6d4:	6fc7a983          	lw	s3,1788(a5) # 46fc <SDCARD>
     6d8:	02812423          	sw	s0,40(sp)
     6dc:	02912223          	sw	s1,36(sp)
     6e0:	01412c23          	sw	s4,24(sp)
     6e4:	01512a23          	sw	s5,20(sp)
     6e8:	01612823          	sw	s6,16(sp)
     6ec:	02112623          	sw	ra,44(sp)
     6f0:	0ff00413          	li	s0,255
     6f4:	00000493          	li	s1,0
     6f8:	00300a13          	li	s4,3
     6fc:	00200a93          	li	s5,2
     700:	00005b37          	lui	s6,0x5
     704:	02058c63          	beqz	a1,73c <sdcard_read+0x84>
     708:	012477b3          	and	a5,s0,s2
     70c:	02079a63          	bnez	a5,740 <sdcard_read+0x88>
     710:	02c12083          	lw	ra,44(sp)
     714:	0ff47513          	zext.b	a0,s0
     718:	02812403          	lw	s0,40(sp)
     71c:	02412483          	lw	s1,36(sp)
     720:	02012903          	lw	s2,32(sp)
     724:	01c12983          	lw	s3,28(sp)
     728:	01812a03          	lw	s4,24(sp)
     72c:	01412a83          	lw	s5,20(sp)
     730:	01012b03          	lw	s6,16(sp)
     734:	03010113          	addi	sp,sp,48
     738:	00008067          	ret
     73c:	fca4dae3          	bge	s1,a0,710 <sdcard_read+0x58>
     740:	0149a023          	sw	s4,0(s3)
     744:	0159a023          	sw	s5,0(s3)
     748:	0009a783          	lw	a5,0(s3)
     74c:	00141413          	slli	s0,s0,0x1
     750:	00b12623          	sw	a1,12(sp)
     754:	00f46433          	or	s0,s0,a5
     758:	9fcb2783          	lw	a5,-1540(s6) # 49fc <sdcard_while_loading_callback>
     75c:	00a12423          	sw	a0,8(sp)
     760:	00148493          	addi	s1,s1,1
     764:	000780e7          	jalr	a5
     768:	00c12583          	lw	a1,12(sp)
     76c:	00812503          	lw	a0,8(sp)
     770:	f95ff06f          	j	704 <sdcard_read+0x4c>

00000774 <sdcard_get>:
     774:	fe010113          	addi	sp,sp,-32
     778:	00112e23          	sw	ra,28(sp)
     77c:	00812c23          	sw	s0,24(sp)
     780:	00912a23          	sw	s1,20(sp)
     784:	00050413          	mv	s0,a0
     788:	00b12623          	sw	a1,12(sp)
     78c:	00000097          	auipc	ra,0x0
     790:	e20080e7          	jalr	-480(ra) # 5ac <sdcard_select>
     794:	00c12583          	lw	a1,12(sp)
     798:	00040513          	mv	a0,s0
     79c:	00100493          	li	s1,1
     7a0:	00000097          	auipc	ra,0x0
     7a4:	f18080e7          	jalr	-232(ra) # 6b8 <sdcard_read>
     7a8:	00345413          	srli	s0,s0,0x3
     7ac:	0284c463          	blt	s1,s0,7d4 <sdcard_get+0x60>
     7b0:	00a12623          	sw	a0,12(sp)
     7b4:	00000097          	auipc	ra,0x0
     7b8:	e38080e7          	jalr	-456(ra) # 5ec <sdcard_unselect>
     7bc:	01c12083          	lw	ra,28(sp)
     7c0:	01812403          	lw	s0,24(sp)
     7c4:	00c12503          	lw	a0,12(sp)
     7c8:	01412483          	lw	s1,20(sp)
     7cc:	02010113          	addi	sp,sp,32
     7d0:	00008067          	ret
     7d4:	00000593          	li	a1,0
     7d8:	00800513          	li	a0,8
     7dc:	00000097          	auipc	ra,0x0
     7e0:	edc080e7          	jalr	-292(ra) # 6b8 <sdcard_read>
     7e4:	00148493          	addi	s1,s1,1
     7e8:	fc5ff06f          	j	7ac <sdcard_get+0x38>

000007ec <sdcard_cmd>:
     7ec:	ff010113          	addi	sp,sp,-16
     7f0:	00812423          	sw	s0,8(sp)
     7f4:	00912223          	sw	s1,4(sp)
     7f8:	01212023          	sw	s2,0(sp)
     7fc:	00112623          	sw	ra,12(sp)
     800:	00050913          	mv	s2,a0
     804:	00000413          	li	s0,0
     808:	00000097          	auipc	ra,0x0
     80c:	da4080e7          	jalr	-604(ra) # 5ac <sdcard_select>
     810:	00600493          	li	s1,6
     814:	008907b3          	add	a5,s2,s0
     818:	0007c503          	lbu	a0,0(a5)
     81c:	00140413          	addi	s0,s0,1
     820:	00000097          	auipc	ra,0x0
     824:	de0080e7          	jalr	-544(ra) # 600 <sdcard_send>
     828:	fe9416e3          	bne	s0,s1,814 <sdcard_cmd+0x28>
     82c:	00812403          	lw	s0,8(sp)
     830:	00c12083          	lw	ra,12(sp)
     834:	00412483          	lw	s1,4(sp)
     838:	00012903          	lw	s2,0(sp)
     83c:	01010113          	addi	sp,sp,16
     840:	00000317          	auipc	t1,0x0
     844:	dac30067          	jr	-596(t1) # 5ec <sdcard_unselect>

00000848 <sdcard_start_sector>:
     848:	ff010113          	addi	sp,sp,-16
     84c:	00112623          	sw	ra,12(sp)
     850:	00812423          	sw	s0,8(sp)
     854:	00050413          	mv	s0,a0
     858:	00000097          	auipc	ra,0x0
     85c:	d54080e7          	jalr	-684(ra) # 5ac <sdcard_select>
     860:	05100513          	li	a0,81
     864:	00000097          	auipc	ra,0x0
     868:	d9c080e7          	jalr	-612(ra) # 600 <sdcard_send>
     86c:	01845513          	srli	a0,s0,0x18
     870:	00000097          	auipc	ra,0x0
     874:	d90080e7          	jalr	-624(ra) # 600 <sdcard_send>
     878:	41045513          	srai	a0,s0,0x10
     87c:	0ff57513          	zext.b	a0,a0
     880:	00000097          	auipc	ra,0x0
     884:	d80080e7          	jalr	-640(ra) # 600 <sdcard_send>
     888:	40845513          	srai	a0,s0,0x8
     88c:	0ff57513          	zext.b	a0,a0
     890:	00000097          	auipc	ra,0x0
     894:	d70080e7          	jalr	-656(ra) # 600 <sdcard_send>
     898:	0ff47513          	zext.b	a0,s0
     89c:	00000097          	auipc	ra,0x0
     8a0:	d64080e7          	jalr	-668(ra) # 600 <sdcard_send>
     8a4:	05500513          	li	a0,85
     8a8:	00000097          	auipc	ra,0x0
     8ac:	d58080e7          	jalr	-680(ra) # 600 <sdcard_send>
     8b0:	00000097          	auipc	ra,0x0
     8b4:	d3c080e7          	jalr	-708(ra) # 5ec <sdcard_unselect>
     8b8:	00812403          	lw	s0,8(sp)
     8bc:	00c12083          	lw	ra,12(sp)
     8c0:	00100593          	li	a1,1
     8c4:	00800513          	li	a0,8
     8c8:	01010113          	addi	sp,sp,16
     8cc:	00000317          	auipc	t1,0x0
     8d0:	ea830067          	jr	-344(t1) # 774 <sdcard_get>

000008d4 <sdcard_read_sector>:
     8d4:	ff010113          	addi	sp,sp,-16
     8d8:	00812423          	sw	s0,8(sp)
     8dc:	00112623          	sw	ra,12(sp)
     8e0:	00912223          	sw	s1,4(sp)
     8e4:	01212023          	sw	s2,0(sp)
     8e8:	00058413          	mv	s0,a1
     8ec:	00000097          	auipc	ra,0x0
     8f0:	f5c080e7          	jalr	-164(ra) # 848 <sdcard_start_sector>
     8f4:	04051863          	bnez	a0,944 <sdcard_read_sector+0x70>
     8f8:	00100593          	li	a1,1
     8fc:	00058513          	mv	a0,a1
     900:	00000097          	auipc	ra,0x0
     904:	e74080e7          	jalr	-396(ra) # 774 <sdcard_get>
     908:	00000493          	li	s1,0
     90c:	20000913          	li	s2,512
     910:	00000593          	li	a1,0
     914:	00800513          	li	a0,8
     918:	00000097          	auipc	ra,0x0
     91c:	e5c080e7          	jalr	-420(ra) # 774 <sdcard_get>
     920:	009407b3          	add	a5,s0,s1
     924:	00a78023          	sb	a0,0(a5)
     928:	00148493          	addi	s1,s1,1
     92c:	ff2492e3          	bne	s1,s2,910 <sdcard_read_sector+0x3c>
     930:	00100593          	li	a1,1
     934:	01000513          	li	a0,16
     938:	20040413          	addi	s0,s0,512
     93c:	00000097          	auipc	ra,0x0
     940:	e38080e7          	jalr	-456(ra) # 774 <sdcard_get>
     944:	00c12083          	lw	ra,12(sp)
     948:	00040513          	mv	a0,s0
     94c:	00812403          	lw	s0,8(sp)
     950:	00412483          	lw	s1,4(sp)
     954:	00012903          	lw	s2,0(sp)
     958:	01010113          	addi	sp,sp,16
     95c:	00008067          	ret

00000960 <sdcard_preinit>:
     960:	ff010113          	addi	sp,sp,-16
     964:	000047b7          	lui	a5,0x4
     968:	00812423          	sw	s0,8(sp)
     96c:	6fc7a403          	lw	s0,1788(a5) # 46fc <SDCARD>
     970:	00112623          	sw	ra,12(sp)
     974:	00600793          	li	a5,6
     978:	01313537          	lui	a0,0x1313
     97c:	00f42023          	sw	a5,0(s0)
     980:	d0050513          	addi	a0,a0,-768 # 1312d00 <__stacktop+0x1302d00>
     984:	00000097          	auipc	ra,0x0
     988:	c10080e7          	jalr	-1008(ra) # 594 <pause>
     98c:	0a000793          	li	a5,160
     990:	00000713          	li	a4,0
     994:	00676693          	ori	a3,a4,6
     998:	00d42023          	sw	a3,0(s0)
     99c:	fff78793          	addi	a5,a5,-1
     9a0:	00174713          	xori	a4,a4,1
     9a4:	fe0798e3          	bnez	a5,994 <sdcard_preinit+0x34>
     9a8:	00600793          	li	a5,6
     9ac:	00c12083          	lw	ra,12(sp)
     9b0:	00f42023          	sw	a5,0(s0)
     9b4:	00812403          	lw	s0,8(sp)
     9b8:	01010113          	addi	sp,sp,16
     9bc:	00008067          	ret

000009c0 <sdcard_init>:
     9c0:	000007b7          	lui	a5,0x0
     9c4:	5a878793          	addi	a5,a5,1448 # 5a8 <sdcard_idle>
     9c8:	00005737          	lui	a4,0x5
     9cc:	fe010113          	addi	sp,sp,-32
     9d0:	9ef72e23          	sw	a5,-1540(a4) # 49fc <sdcard_while_loading_callback>
     9d4:	000047b7          	lui	a5,0x4
     9d8:	00812c23          	sw	s0,24(sp)
     9dc:	00912a23          	sw	s1,20(sp)
     9e0:	00112e23          	sw	ra,28(sp)
     9e4:	6ec78493          	addi	s1,a5,1772 # 46ec <cmd0>
     9e8:	0ff00413          	li	s0,255
     9ec:	00000097          	auipc	ra,0x0
     9f0:	f74080e7          	jalr	-140(ra) # 960 <sdcard_preinit>
     9f4:	00048513          	mv	a0,s1
     9f8:	00000097          	auipc	ra,0x0
     9fc:	df4080e7          	jalr	-524(ra) # 7ec <sdcard_cmd>
     a00:	00100593          	li	a1,1
     a04:	00800513          	li	a0,8
     a08:	00000097          	auipc	ra,0x0
     a0c:	d6c080e7          	jalr	-660(ra) # 774 <sdcard_get>
     a10:	00a12623          	sw	a0,12(sp)
     a14:	00000097          	auipc	ra,0x0
     a18:	bac080e7          	jalr	-1108(ra) # 5c0 <sdcard_ponder>
     a1c:	00c12503          	lw	a0,12(sp)
     a20:	00851c63          	bne	a0,s0,a38 <sdcard_init+0x78>
     a24:	01313537          	lui	a0,0x1313
     a28:	d0050513          	addi	a0,a0,-768 # 1312d00 <__stacktop+0x1302d00>
     a2c:	00000097          	auipc	ra,0x0
     a30:	b68080e7          	jalr	-1176(ra) # 594 <pause>
     a34:	fb9ff06f          	j	9ec <sdcard_init+0x2c>
     a38:	00004537          	lui	a0,0x4
     a3c:	6e450513          	addi	a0,a0,1764 # 46e4 <cmd8>
     a40:	00000097          	auipc	ra,0x0
     a44:	dac080e7          	jalr	-596(ra) # 7ec <sdcard_cmd>
     a48:	00100593          	li	a1,1
     a4c:	02800513          	li	a0,40
     a50:	00000097          	auipc	ra,0x0
     a54:	d24080e7          	jalr	-732(ra) # 774 <sdcard_get>
     a58:	00000097          	auipc	ra,0x0
     a5c:	b68080e7          	jalr	-1176(ra) # 5c0 <sdcard_ponder>
     a60:	000047b7          	lui	a5,0x4
     a64:	6dc78413          	addi	s0,a5,1756 # 46dc <cmd55>
     a68:	000047b7          	lui	a5,0x4
     a6c:	6d478493          	addi	s1,a5,1748 # 46d4 <acmd41>
     a70:	00040513          	mv	a0,s0
     a74:	00000097          	auipc	ra,0x0
     a78:	d78080e7          	jalr	-648(ra) # 7ec <sdcard_cmd>
     a7c:	00100593          	li	a1,1
     a80:	00800513          	li	a0,8
     a84:	00000097          	auipc	ra,0x0
     a88:	cf0080e7          	jalr	-784(ra) # 774 <sdcard_get>
     a8c:	00000097          	auipc	ra,0x0
     a90:	b34080e7          	jalr	-1228(ra) # 5c0 <sdcard_ponder>
     a94:	00048513          	mv	a0,s1
     a98:	00000097          	auipc	ra,0x0
     a9c:	d54080e7          	jalr	-684(ra) # 7ec <sdcard_cmd>
     aa0:	00100593          	li	a1,1
     aa4:	00800513          	li	a0,8
     aa8:	00000097          	auipc	ra,0x0
     aac:	ccc080e7          	jalr	-820(ra) # 774 <sdcard_get>
     ab0:	00a12623          	sw	a0,12(sp)
     ab4:	00000097          	auipc	ra,0x0
     ab8:	b0c080e7          	jalr	-1268(ra) # 5c0 <sdcard_ponder>
     abc:	00c12503          	lw	a0,12(sp)
     ac0:	00050c63          	beqz	a0,ad8 <sdcard_init+0x118>
     ac4:	001e8537          	lui	a0,0x1e8
     ac8:	48050513          	addi	a0,a0,1152 # 1e8480 <__stacktop+0x1d8480>
     acc:	00000097          	auipc	ra,0x0
     ad0:	ac8080e7          	jalr	-1336(ra) # 594 <pause>
     ad4:	f9dff06f          	j	a70 <sdcard_init+0xb0>
     ad8:	00004537          	lui	a0,0x4
     adc:	6cc50513          	addi	a0,a0,1740 # 46cc <cmd16>
     ae0:	00000097          	auipc	ra,0x0
     ae4:	d0c080e7          	jalr	-756(ra) # 7ec <sdcard_cmd>
     ae8:	00100593          	li	a1,1
     aec:	00800513          	li	a0,8
     af0:	00000097          	auipc	ra,0x0
     af4:	c84080e7          	jalr	-892(ra) # 774 <sdcard_get>
     af8:	01812403          	lw	s0,24(sp)
     afc:	01c12083          	lw	ra,28(sp)
     b00:	01412483          	lw	s1,20(sp)
     b04:	02010113          	addi	sp,sp,32
     b08:	00000317          	auipc	t1,0x0
     b0c:	ab830067          	jr	-1352(t1) # 5c0 <sdcard_ponder>

00000b10 <sdcard_readsector>:
     b10:	04060663          	beqz	a2,b5c <sdcard_readsector+0x4c>
     b14:	ff010113          	addi	sp,sp,-16
     b18:	00812423          	sw	s0,8(sp)
     b1c:	00912223          	sw	s1,4(sp)
     b20:	00112623          	sw	ra,12(sp)
     b24:	00050413          	mv	s0,a0
     b28:	00a604b3          	add	s1,a2,a0
     b2c:	00040513          	mv	a0,s0
     b30:	00000097          	auipc	ra,0x0
     b34:	da4080e7          	jalr	-604(ra) # 8d4 <sdcard_read_sector>
     b38:	00140413          	addi	s0,s0,1
     b3c:	00050593          	mv	a1,a0
     b40:	fe9416e3          	bne	s0,s1,b2c <sdcard_readsector+0x1c>
     b44:	00c12083          	lw	ra,12(sp)
     b48:	00812403          	lw	s0,8(sp)
     b4c:	00412483          	lw	s1,4(sp)
     b50:	00100513          	li	a0,1
     b54:	01010113          	addi	sp,sp,16
     b58:	00008067          	ret
     b5c:	00000513          	li	a0,0
     b60:	00008067          	ret

00000b64 <sdcard_writesector>:
     b64:	00000513          	li	a0,0
     b68:	00008067          	ret

00000b6c <__divsi3>:
     b6c:	06054063          	bltz	a0,bcc <__umodsi3+0x10>
     b70:	0605c663          	bltz	a1,bdc <__umodsi3+0x20>

00000b74 <__udivsi3>:
     b74:	00058613          	mv	a2,a1
     b78:	00050593          	mv	a1,a0
     b7c:	fff00513          	li	a0,-1
     b80:	02060c63          	beqz	a2,bb8 <__udivsi3+0x44>
     b84:	00100693          	li	a3,1
     b88:	00b67a63          	bgeu	a2,a1,b9c <__udivsi3+0x28>
     b8c:	00c05863          	blez	a2,b9c <__udivsi3+0x28>
     b90:	00161613          	slli	a2,a2,0x1
     b94:	00169693          	slli	a3,a3,0x1
     b98:	feb66ae3          	bltu	a2,a1,b8c <__udivsi3+0x18>
     b9c:	00000513          	li	a0,0
     ba0:	00c5e663          	bltu	a1,a2,bac <__udivsi3+0x38>
     ba4:	40c585b3          	sub	a1,a1,a2
     ba8:	00d56533          	or	a0,a0,a3
     bac:	0016d693          	srli	a3,a3,0x1
     bb0:	00165613          	srli	a2,a2,0x1
     bb4:	fe0696e3          	bnez	a3,ba0 <__udivsi3+0x2c>
     bb8:	00008067          	ret

00000bbc <__umodsi3>:
     bbc:	00008293          	mv	t0,ra
     bc0:	fb5ff0ef          	jal	b74 <__udivsi3>
     bc4:	00058513          	mv	a0,a1
     bc8:	00028067          	jr	t0
     bcc:	40a00533          	neg	a0,a0
     bd0:	0005d863          	bgez	a1,be0 <__umodsi3+0x24>
     bd4:	40b005b3          	neg	a1,a1
     bd8:	f95ff06f          	j	b6c <__divsi3>
     bdc:	40b005b3          	neg	a1,a1
     be0:	00008293          	mv	t0,ra
     be4:	f89ff0ef          	jal	b6c <__divsi3>
     be8:	40a00533          	neg	a0,a0
     bec:	00028067          	jr	t0

00000bf0 <__modsi3>:
     bf0:	00008293          	mv	t0,ra
     bf4:	0005ca63          	bltz	a1,c08 <__modsi3+0x18>
     bf8:	00054c63          	bltz	a0,c10 <__modsi3+0x20>
     bfc:	f79ff0ef          	jal	b74 <__udivsi3>
     c00:	00058513          	mv	a0,a1
     c04:	00028067          	jr	t0
     c08:	40b005b3          	neg	a1,a1
     c0c:	fe0558e3          	bgez	a0,bfc <__modsi3+0xc>
     c10:	40a00533          	neg	a0,a0
     c14:	f61ff0ef          	jal	b74 <__udivsi3>
     c18:	40b00533          	neg	a0,a1
     c1c:	00028067          	jr	t0

00000c20 <memset>:
     c20:	00c50633          	add	a2,a0,a2
     c24:	00050793          	mv	a5,a0
     c28:	00c79463          	bne	a5,a2,c30 <memset+0x10>
     c2c:	00008067          	ret
     c30:	00178793          	addi	a5,a5,1
     c34:	feb78fa3          	sb	a1,-1(a5)
     c38:	ff1ff06f          	j	c28 <memset+0x8>

00000c3c <memcpy>:
     c3c:	00000793          	li	a5,0
     c40:	00c79463          	bne	a5,a2,c48 <memcpy+0xc>
     c44:	00008067          	ret
     c48:	00f58733          	add	a4,a1,a5
     c4c:	00074683          	lbu	a3,0(a4)
     c50:	00f50733          	add	a4,a0,a5
     c54:	00178793          	addi	a5,a5,1
     c58:	00d70023          	sb	a3,0(a4)
     c5c:	fe5ff06f          	j	c40 <memcpy+0x4>

00000c60 <strlen>:
     c60:	00000793          	li	a5,0
     c64:	00f50733          	add	a4,a0,a5
     c68:	00074703          	lbu	a4,0(a4)
     c6c:	00071663          	bnez	a4,c78 <strlen+0x18>
     c70:	00078513          	mv	a0,a5
     c74:	00008067          	ret
     c78:	00178793          	addi	a5,a5,1
     c7c:	fe9ff06f          	j	c64 <strlen+0x4>

00000c80 <strncmp>:
     c80:	00000793          	li	a5,0
     c84:	00c79663          	bne	a5,a2,c90 <strncmp+0x10>
     c88:	00000513          	li	a0,0
     c8c:	00008067          	ret
     c90:	00f50733          	add	a4,a0,a5
     c94:	00074683          	lbu	a3,0(a4)
     c98:	00f58733          	add	a4,a1,a5
     c9c:	00074703          	lbu	a4,0(a4)
     ca0:	00e6e863          	bltu	a3,a4,cb0 <strncmp+0x30>
     ca4:	00d76a63          	bltu	a4,a3,cb8 <strncmp+0x38>
     ca8:	00178793          	addi	a5,a5,1
     cac:	fd9ff06f          	j	c84 <strncmp+0x4>
     cb0:	fff00513          	li	a0,-1
     cb4:	00008067          	ret
     cb8:	00100513          	li	a0,1
     cbc:	00008067          	ret

00000cc0 <strncpy>:
     cc0:	00000793          	li	a5,0
     cc4:	00c79463          	bne	a5,a2,ccc <strncpy+0xc>
     cc8:	00008067          	ret
     ccc:	00f58733          	add	a4,a1,a5
     cd0:	00074683          	lbu	a3,0(a4)
     cd4:	00f50733          	add	a4,a0,a5
     cd8:	00178793          	addi	a5,a5,1
     cdc:	00d70023          	sb	a3,0(a4)
     ce0:	fe5ff06f          	j	cc4 <strncpy+0x4>

00000ce4 <strcat>:
     ce4:	00050793          	mv	a5,a0
     ce8:	0007c683          	lbu	a3,0(a5)
     cec:	00078713          	mv	a4,a5
     cf0:	00178793          	addi	a5,a5,1
     cf4:	fe069ae3          	bnez	a3,ce8 <strcat+0x4>
     cf8:	0005c783          	lbu	a5,0(a1)
     cfc:	00158593          	addi	a1,a1,1
     d00:	00170713          	addi	a4,a4,1
     d04:	fef70fa3          	sb	a5,-1(a4)
     d08:	fe0798e3          	bnez	a5,cf8 <strcat+0x14>
     d0c:	00008067          	ret

00000d10 <oled_wait>:
     d10:	00000013          	nop
     d14:	00000013          	nop
     d18:	00000013          	nop
     d1c:	00000013          	nop
     d20:	00000013          	nop
     d24:	00000013          	nop
     d28:	00000013          	nop
     d2c:	00008067          	ret

00000d30 <oled_init_mode>:
     d30:	000047b7          	lui	a5,0x4
     d34:	7007a703          	lw	a4,1792(a5) # 4700 <OLED_RST>
     d38:	fe010113          	addi	sp,sp,-32
     d3c:	00112e23          	sw	ra,28(sp)
     d40:	00812c23          	sw	s0,24(sp)
     d44:	00072023          	sw	zero,0(a4)
     d48:	00040737          	lui	a4,0x40
     d4c:	00000013          	nop
     d50:	fff70713          	addi	a4,a4,-1 # 3ffff <__stacktop+0x2ffff>
     d54:	fe071ce3          	bnez	a4,d4c <oled_init_mode+0x1c>
     d58:	7007a703          	lw	a4,1792(a5)
     d5c:	00100693          	li	a3,1
     d60:	00d72023          	sw	a3,0(a4)
     d64:	00040737          	lui	a4,0x40
     d68:	00000013          	nop
     d6c:	fff70713          	addi	a4,a4,-1 # 3ffff <__stacktop+0x2ffff>
     d70:	fe071ce3          	bnez	a4,d68 <oled_init_mode+0x38>
     d74:	7007a783          	lw	a5,1792(a5)
     d78:	0007a023          	sw	zero,0(a5)
     d7c:	000407b7          	lui	a5,0x40
     d80:	00000013          	nop
     d84:	fff78793          	addi	a5,a5,-1 # 3ffff <__stacktop+0x2ffff>
     d88:	fe079ce3          	bnez	a5,d80 <oled_init_mode+0x50>
     d8c:	00004737          	lui	a4,0x4
     d90:	70472783          	lw	a5,1796(a4) # 4704 <OLED>
     d94:	2af00693          	li	a3,687
     d98:	00d7a023          	sw	a3,0(a5)
     d9c:	000407b7          	lui	a5,0x40
     da0:	00000013          	nop
     da4:	fff78793          	addi	a5,a5,-1 # 3ffff <__stacktop+0x2ffff>
     da8:	fe079ce3          	bnez	a5,da0 <oled_init_mode+0x70>
     dac:	70472403          	lw	s0,1796(a4)
     db0:	2a000793          	li	a5,672
     db4:	00a12623          	sw	a0,12(sp)
     db8:	00f42023          	sw	a5,0(s0)
     dbc:	00000097          	auipc	ra,0x0
     dc0:	f54080e7          	jalr	-172(ra) # d10 <oled_wait>
     dc4:	00c12503          	lw	a0,12(sp)
     dc8:	4a000793          	li	a5,1184
     dcc:	00050463          	beqz	a0,dd4 <oled_init_mode+0xa4>
     dd0:	42000793          	li	a5,1056
     dd4:	00f42023          	sw	a5,0(s0)
     dd8:	00000097          	auipc	ra,0x0
     ddc:	f38080e7          	jalr	-200(ra) # d10 <oled_wait>
     de0:	2fd00793          	li	a5,765
     de4:	00f42023          	sw	a5,0(s0)
     de8:	00000097          	auipc	ra,0x0
     dec:	f28080e7          	jalr	-216(ra) # d10 <oled_wait>
     df0:	4b100793          	li	a5,1201
     df4:	00f42023          	sw	a5,0(s0)
     df8:	00000097          	auipc	ra,0x0
     dfc:	f18080e7          	jalr	-232(ra) # d10 <oled_wait>
     e00:	2a200793          	li	a5,674
     e04:	00f42023          	sw	a5,0(s0)
     e08:	00000097          	auipc	ra,0x0
     e0c:	f08080e7          	jalr	-248(ra) # d10 <oled_wait>
     e10:	40000793          	li	a5,1024
     e14:	00f42023          	sw	a5,0(s0)
     e18:	01812403          	lw	s0,24(sp)
     e1c:	01c12083          	lw	ra,28(sp)
     e20:	02010113          	addi	sp,sp,32
     e24:	00000317          	auipc	t1,0x0
     e28:	eec30067          	jr	-276(t1) # d10 <oled_wait>

00000e2c <oled_init>:
     e2c:	00000513          	li	a0,0
     e30:	00000317          	auipc	t1,0x0
     e34:	f0030067          	jr	-256(t1) # d30 <oled_init_mode>

00000e38 <oled_fullscreen>:
     e38:	ff010113          	addi	sp,sp,-16
     e3c:	000047b7          	lui	a5,0x4
     e40:	00812423          	sw	s0,8(sp)
     e44:	7047a403          	lw	s0,1796(a5) # 4704 <OLED>
     e48:	00112623          	sw	ra,12(sp)
     e4c:	00912223          	sw	s1,4(sp)
     e50:	01212023          	sw	s2,0(sp)
     e54:	21500793          	li	a5,533
     e58:	00f42023          	sw	a5,0(s0)
     e5c:	40000913          	li	s2,1024
     e60:	00000097          	auipc	ra,0x0
     e64:	eb0080e7          	jalr	-336(ra) # d10 <oled_wait>
     e68:	47f00493          	li	s1,1151
     e6c:	01242023          	sw	s2,0(s0)
     e70:	00000097          	auipc	ra,0x0
     e74:	ea0080e7          	jalr	-352(ra) # d10 <oled_wait>
     e78:	00942023          	sw	s1,0(s0)
     e7c:	00000097          	auipc	ra,0x0
     e80:	e94080e7          	jalr	-364(ra) # d10 <oled_wait>
     e84:	27500793          	li	a5,629
     e88:	00f42023          	sw	a5,0(s0)
     e8c:	00000097          	auipc	ra,0x0
     e90:	e84080e7          	jalr	-380(ra) # d10 <oled_wait>
     e94:	01242023          	sw	s2,0(s0)
     e98:	00000097          	auipc	ra,0x0
     e9c:	e78080e7          	jalr	-392(ra) # d10 <oled_wait>
     ea0:	00942023          	sw	s1,0(s0)
     ea4:	00000097          	auipc	ra,0x0
     ea8:	e6c080e7          	jalr	-404(ra) # d10 <oled_wait>
     eac:	25c00793          	li	a5,604
     eb0:	00f42023          	sw	a5,0(s0)
     eb4:	00812403          	lw	s0,8(sp)
     eb8:	00c12083          	lw	ra,12(sp)
     ebc:	00412483          	lw	s1,4(sp)
     ec0:	00012903          	lw	s2,0(sp)
     ec4:	01010113          	addi	sp,sp,16
     ec8:	00000317          	auipc	t1,0x0
     ecc:	e4830067          	jr	-440(t1) # d10 <oled_wait>

00000ed0 <oled_wait>:
     ed0:	00000013          	nop
     ed4:	00000013          	nop
     ed8:	00000013          	nop
     edc:	00000013          	nop
     ee0:	00000013          	nop
     ee4:	00000013          	nop
     ee8:	00000013          	nop
     eec:	00008067          	ret

00000ef0 <display_framebuffer>:
     ef0:	00007537          	lui	a0,0x7
     ef4:	ba850513          	addi	a0,a0,-1112 # 6ba8 <framebuffer>
     ef8:	00008067          	ret

00000efc <display_set_cursor>:
     efc:	000057b7          	lui	a5,0x5
     f00:	a0a7a423          	sw	a0,-1528(a5) # 4a08 <cursor_x>
     f04:	000057b7          	lui	a5,0x5
     f08:	a0b7a223          	sw	a1,-1532(a5) # 4a04 <cursor_y>
     f0c:	00008067          	ret

00000f10 <display_set_front_back_color>:
     f10:	000057b7          	lui	a5,0x5
     f14:	a0a780a3          	sb	a0,-1535(a5) # 4a01 <front_color>
     f18:	000057b7          	lui	a5,0x5
     f1c:	a0b78023          	sb	a1,-1536(a5) # 4a00 <back_color>
     f20:	00008067          	ret

00000f24 <display_putchar>:
     f24:	00a00793          	li	a5,10
     f28:	000055b7          	lui	a1,0x5
     f2c:	02f51663          	bne	a0,a5,f58 <display_putchar+0x34>
     f30:	00005737          	lui	a4,0x5
     f34:	a0472783          	lw	a5,-1532(a4) # 4a04 <cursor_y>
     f38:	a005a423          	sw	zero,-1528(a1) # 4a08 <cursor_x>
     f3c:	00878793          	addi	a5,a5,8
     f40:	a0f72223          	sw	a5,-1532(a4)
     f44:	07f00713          	li	a4,127
     f48:	00f75663          	bge	a4,a5,f54 <display_putchar+0x30>
     f4c:	000057b7          	lui	a5,0x5
     f50:	a007a223          	sw	zero,-1532(a5) # 4a04 <cursor_y>
     f54:	00008067          	ret
     f58:	ff010113          	addi	sp,sp,-16
     f5c:	00812623          	sw	s0,12(sp)
     f60:	01f00713          	li	a4,31
     f64:	a085a783          	lw	a5,-1528(a1)
     f68:	08a75a63          	bge	a4,a0,ffc <display_putchar+0xd8>
     f6c:	00005737          	lui	a4,0x5
     f70:	a0074f83          	lbu	t6,-1536(a4) # 4a00 <back_color>
     f74:	00005737          	lui	a4,0x5
     f78:	a0174283          	lbu	t0,-1535(a4) # 4a01 <front_color>
     f7c:	000046b7          	lui	a3,0x4
     f80:	00251713          	slli	a4,a0,0x2
     f84:	7e468693          	addi	a3,a3,2020 # 47e4 <font>
     f88:	00a70733          	add	a4,a4,a0
     f8c:	00d70733          	add	a4,a4,a3
     f90:	000056b7          	lui	a3,0x5
     f94:	a046a683          	lw	a3,-1532(a3) # 4a04 <cursor_y>
     f98:	00007637          	lui	a2,0x7
     f9c:	ba860613          	addi	a2,a2,-1112 # 6ba8 <framebuffer>
     fa0:	00c686b3          	add	a3,a3,a2
     fa4:	00779613          	slli	a2,a5,0x7
     fa8:	00c686b3          	add	a3,a3,a2
     fac:	00100f13          	li	t5,1
     fb0:	00000613          	li	a2,0
     fb4:	00500393          	li	t2,5
     fb8:	00800413          	li	s0,8
     fbc:	00cf1eb3          	sll	t4,t5,a2
     fc0:	00d608b3          	add	a7,a2,a3
     fc4:	00070813          	mv	a6,a4
     fc8:	00000513          	li	a0,0
     fcc:	f6084303          	lbu	t1,-160(a6)
     fd0:	00028e13          	mv	t3,t0
     fd4:	01d37333          	and	t1,t1,t4
     fd8:	00031463          	bnez	t1,fe0 <display_putchar+0xbc>
     fdc:	000f8e13          	mv	t3,t6
     fe0:	01c88023          	sb	t3,0(a7)
     fe4:	00150513          	addi	a0,a0,1
     fe8:	00180813          	addi	a6,a6,1
     fec:	08088893          	addi	a7,a7,128
     ff0:	fc751ee3          	bne	a0,t2,fcc <display_putchar+0xa8>
     ff4:	00160613          	addi	a2,a2,1
     ff8:	fc8612e3          	bne	a2,s0,fbc <display_putchar+0x98>
     ffc:	00578793          	addi	a5,a5,5
    1000:	07f00713          	li	a4,127
    1004:	00f74663          	blt	a4,a5,1010 <display_putchar+0xec>
    1008:	a0f5a423          	sw	a5,-1528(a1)
    100c:	0240006f          	j	1030 <display_putchar+0x10c>
    1010:	000056b7          	lui	a3,0x5
    1014:	a046a783          	lw	a5,-1532(a3) # 4a04 <cursor_y>
    1018:	a005a423          	sw	zero,-1528(a1)
    101c:	00878793          	addi	a5,a5,8
    1020:	a0f6a223          	sw	a5,-1532(a3)
    1024:	00f75663          	bge	a4,a5,1030 <display_putchar+0x10c>
    1028:	000057b7          	lui	a5,0x5
    102c:	a007a223          	sw	zero,-1532(a5) # 4a04 <cursor_y>
    1030:	00c12403          	lw	s0,12(sp)
    1034:	01010113          	addi	sp,sp,16
    1038:	00008067          	ret

0000103c <display_refresh>:
    103c:	fe010113          	addi	sp,sp,-32
    1040:	000047b7          	lui	a5,0x4
    1044:	01212823          	sw	s2,16(sp)
    1048:	7047a903          	lw	s2,1796(a5) # 4704 <OLED>
    104c:	01312623          	sw	s3,12(sp)
    1050:	000079b7          	lui	s3,0x7
    1054:	00912a23          	sw	s1,20(sp)
    1058:	01412423          	sw	s4,8(sp)
    105c:	00112e23          	sw	ra,28(sp)
    1060:	00812c23          	sw	s0,24(sp)
    1064:	00000493          	li	s1,0
    1068:	ba898993          	addi	s3,s3,-1112 # 6ba8 <framebuffer>
    106c:	00004a37          	lui	s4,0x4
    1070:	013487b3          	add	a5,s1,s3
    1074:	0007c403          	lbu	s0,0(a5)
    1078:	00148493          	addi	s1,s1,1
    107c:	00245413          	srli	s0,s0,0x2
    1080:	40046413          	ori	s0,s0,1024
    1084:	00892023          	sw	s0,0(s2)
    1088:	00000097          	auipc	ra,0x0
    108c:	e48080e7          	jalr	-440(ra) # ed0 <oled_wait>
    1090:	00892023          	sw	s0,0(s2)
    1094:	00000097          	auipc	ra,0x0
    1098:	e3c080e7          	jalr	-452(ra) # ed0 <oled_wait>
    109c:	00892023          	sw	s0,0(s2)
    10a0:	00000097          	auipc	ra,0x0
    10a4:	e30080e7          	jalr	-464(ra) # ed0 <oled_wait>
    10a8:	fd4494e3          	bne	s1,s4,1070 <display_refresh+0x34>
    10ac:	01c12083          	lw	ra,28(sp)
    10b0:	01812403          	lw	s0,24(sp)
    10b4:	01412483          	lw	s1,20(sp)
    10b8:	01012903          	lw	s2,16(sp)
    10bc:	00c12983          	lw	s3,12(sp)
    10c0:	00812a03          	lw	s4,8(sp)
    10c4:	02010113          	addi	sp,sp,32
    10c8:	00008067          	ret

000010cc <print_string>:
    10cc:	ff010113          	addi	sp,sp,-16
    10d0:	00812423          	sw	s0,8(sp)
    10d4:	00912223          	sw	s1,4(sp)
    10d8:	00112623          	sw	ra,12(sp)
    10dc:	00050413          	mv	s0,a0
    10e0:	000054b7          	lui	s1,0x5
    10e4:	00044503          	lbu	a0,0(s0)
    10e8:	00051c63          	bnez	a0,1100 <print_string+0x34>
    10ec:	00c12083          	lw	ra,12(sp)
    10f0:	00812403          	lw	s0,8(sp)
    10f4:	00412483          	lw	s1,4(sp)
    10f8:	01010113          	addi	sp,sp,16
    10fc:	00008067          	ret
    1100:	a0c4a783          	lw	a5,-1524(s1) # 4a0c <f_putchar>
    1104:	00140413          	addi	s0,s0,1
    1108:	000780e7          	jalr	a5
    110c:	fd9ff06f          	j	10e4 <print_string+0x18>

00001110 <print_dec>:
    1110:	ef010113          	addi	sp,sp,-272
    1114:	10812423          	sw	s0,264(sp)
    1118:	10912223          	sw	s1,260(sp)
    111c:	10112623          	sw	ra,268(sp)
    1120:	11212023          	sw	s2,256(sp)
    1124:	00050413          	mv	s0,a0
    1128:	000054b7          	lui	s1,0x5
    112c:	08045063          	bgez	s0,11ac <print_dec+0x9c>
    1130:	a0c4a783          	lw	a5,-1524(s1) # 4a0c <f_putchar>
    1134:	02d00513          	li	a0,45
    1138:	40800433          	neg	s0,s0
    113c:	000780e7          	jalr	a5
    1140:	fedff06f          	j	112c <print_dec+0x1c>
    1144:	00040513          	mv	a0,s0
    1148:	00a00593          	li	a1,10
    114c:	00000097          	auipc	ra,0x0
    1150:	a20080e7          	jalr	-1504(ra) # b6c <__divsi3>
    1154:	00251793          	slli	a5,a0,0x2
    1158:	00f507b3          	add	a5,a0,a5
    115c:	00179793          	slli	a5,a5,0x1
    1160:	40f40433          	sub	s0,s0,a5
    1164:	00148493          	addi	s1,s1,1
    1168:	fe848fa3          	sb	s0,-1(s1)
    116c:	00050413          	mv	s0,a0
    1170:	fc041ae3          	bnez	s0,1144 <print_dec+0x34>
    1174:	fd2488e3          	beq	s1,s2,1144 <print_dec+0x34>
    1178:	00005437          	lui	s0,0x5
    117c:	fff4c503          	lbu	a0,-1(s1)
    1180:	a0c42783          	lw	a5,-1524(s0) # 4a0c <f_putchar>
    1184:	fff48493          	addi	s1,s1,-1
    1188:	03050513          	addi	a0,a0,48
    118c:	000780e7          	jalr	a5
    1190:	ff2496e3          	bne	s1,s2,117c <print_dec+0x6c>
    1194:	10c12083          	lw	ra,268(sp)
    1198:	10812403          	lw	s0,264(sp)
    119c:	10412483          	lw	s1,260(sp)
    11a0:	10012903          	lw	s2,256(sp)
    11a4:	11010113          	addi	sp,sp,272
    11a8:	00008067          	ret
    11ac:	00010493          	mv	s1,sp
    11b0:	00010913          	mv	s2,sp
    11b4:	fbdff06f          	j	1170 <print_dec+0x60>

000011b8 <print_hex_digits>:
    11b8:	fe010113          	addi	sp,sp,-32
    11bc:	00812c23          	sw	s0,24(sp)
    11c0:	00912a23          	sw	s1,20(sp)
    11c4:	fff58413          	addi	s0,a1,-1
    11c8:	000044b7          	lui	s1,0x4
    11cc:	01212823          	sw	s2,16(sp)
    11d0:	01312623          	sw	s3,12(sp)
    11d4:	00112e23          	sw	ra,28(sp)
    11d8:	00050993          	mv	s3,a0
    11dc:	00241413          	slli	s0,s0,0x2
    11e0:	79c48493          	addi	s1,s1,1948 # 479c <LEDS+0x94>
    11e4:	00005937          	lui	s2,0x5
    11e8:	02045063          	bgez	s0,1208 <print_hex_digits+0x50>
    11ec:	01c12083          	lw	ra,28(sp)
    11f0:	01812403          	lw	s0,24(sp)
    11f4:	01412483          	lw	s1,20(sp)
    11f8:	01012903          	lw	s2,16(sp)
    11fc:	00c12983          	lw	s3,12(sp)
    1200:	02010113          	addi	sp,sp,32
    1204:	00008067          	ret
    1208:	0089d7b3          	srl	a5,s3,s0
    120c:	00f7f793          	andi	a5,a5,15
    1210:	00f487b3          	add	a5,s1,a5
    1214:	a0c92703          	lw	a4,-1524(s2) # 4a0c <f_putchar>
    1218:	0007c503          	lbu	a0,0(a5)
    121c:	ffc40413          	addi	s0,s0,-4
    1220:	000700e7          	jalr	a4
    1224:	fc5ff06f          	j	11e8 <print_hex_digits+0x30>

00001228 <print_hex>:
    1228:	00800593          	li	a1,8
    122c:	00000317          	auipc	t1,0x0
    1230:	f8c30067          	jr	-116(t1) # 11b8 <print_hex_digits>

00001234 <printf>:
    1234:	fa010113          	addi	sp,sp,-96
    1238:	04f12a23          	sw	a5,84(sp)
    123c:	04410793          	addi	a5,sp,68
    1240:	02812c23          	sw	s0,56(sp)
    1244:	02912a23          	sw	s1,52(sp)
    1248:	03212823          	sw	s2,48(sp)
    124c:	03312623          	sw	s3,44(sp)
    1250:	03412423          	sw	s4,40(sp)
    1254:	03512223          	sw	s5,36(sp)
    1258:	03612023          	sw	s6,32(sp)
    125c:	02112e23          	sw	ra,60(sp)
    1260:	01712e23          	sw	s7,28(sp)
    1264:	00050413          	mv	s0,a0
    1268:	04b12223          	sw	a1,68(sp)
    126c:	04c12423          	sw	a2,72(sp)
    1270:	04d12623          	sw	a3,76(sp)
    1274:	04e12823          	sw	a4,80(sp)
    1278:	05012c23          	sw	a6,88(sp)
    127c:	05112e23          	sw	a7,92(sp)
    1280:	00f12623          	sw	a5,12(sp)
    1284:	02500913          	li	s2,37
    1288:	000054b7          	lui	s1,0x5
    128c:	07300993          	li	s3,115
    1290:	07800a13          	li	s4,120
    1294:	06400a93          	li	s5,100
    1298:	06300b13          	li	s6,99
    129c:	00044503          	lbu	a0,0(s0)
    12a0:	02051863          	bnez	a0,12d0 <printf+0x9c>
    12a4:	03c12083          	lw	ra,60(sp)
    12a8:	03812403          	lw	s0,56(sp)
    12ac:	03412483          	lw	s1,52(sp)
    12b0:	03012903          	lw	s2,48(sp)
    12b4:	02c12983          	lw	s3,44(sp)
    12b8:	02812a03          	lw	s4,40(sp)
    12bc:	02412a83          	lw	s5,36(sp)
    12c0:	02012b03          	lw	s6,32(sp)
    12c4:	01c12b83          	lw	s7,28(sp)
    12c8:	06010113          	addi	sp,sp,96
    12cc:	00008067          	ret
    12d0:	09251a63          	bne	a0,s2,1364 <printf+0x130>
    12d4:	00144503          	lbu	a0,1(s0)
    12d8:	00140b93          	addi	s7,s0,1
    12dc:	03351463          	bne	a0,s3,1304 <printf+0xd0>
    12e0:	00c12783          	lw	a5,12(sp)
    12e4:	0007a503          	lw	a0,0(a5)
    12e8:	00478713          	addi	a4,a5,4
    12ec:	00e12623          	sw	a4,12(sp)
    12f0:	00000097          	auipc	ra,0x0
    12f4:	ddc080e7          	jalr	-548(ra) # 10cc <print_string>
    12f8:	000b8413          	mv	s0,s7
    12fc:	00140413          	addi	s0,s0,1
    1300:	f9dff06f          	j	129c <printf+0x68>
    1304:	03451063          	bne	a0,s4,1324 <printf+0xf0>
    1308:	00c12783          	lw	a5,12(sp)
    130c:	0007a503          	lw	a0,0(a5)
    1310:	00478713          	addi	a4,a5,4
    1314:	00e12623          	sw	a4,12(sp)
    1318:	00000097          	auipc	ra,0x0
    131c:	f10080e7          	jalr	-240(ra) # 1228 <print_hex>
    1320:	fd9ff06f          	j	12f8 <printf+0xc4>
    1324:	03551063          	bne	a0,s5,1344 <printf+0x110>
    1328:	00c12783          	lw	a5,12(sp)
    132c:	0007a503          	lw	a0,0(a5)
    1330:	00478713          	addi	a4,a5,4
    1334:	00e12623          	sw	a4,12(sp)
    1338:	00000097          	auipc	ra,0x0
    133c:	dd8080e7          	jalr	-552(ra) # 1110 <print_dec>
    1340:	fb9ff06f          	j	12f8 <printf+0xc4>
    1344:	a0c4a783          	lw	a5,-1524(s1) # 4a0c <f_putchar>
    1348:	01651a63          	bne	a0,s6,135c <printf+0x128>
    134c:	00c12703          	lw	a4,12(sp)
    1350:	00072503          	lw	a0,0(a4)
    1354:	00470693          	addi	a3,a4,4
    1358:	00d12623          	sw	a3,12(sp)
    135c:	000780e7          	jalr	a5
    1360:	f99ff06f          	j	12f8 <printf+0xc4>
    1364:	a0c4a783          	lw	a5,-1524(s1)
    1368:	000780e7          	jalr	a5
    136c:	f91ff06f          	j	12fc <printf+0xc8>

00001370 <__mulsi3>:
    1370:	00050793          	mv	a5,a0
    1374:	00000513          	li	a0,0
    1378:	00079463          	bnez	a5,1380 <__mulsi3+0x10>
    137c:	00008067          	ret
    1380:	01f79693          	slli	a3,a5,0x1f
    1384:	41f6d713          	srai	a4,a3,0x1f
    1388:	00b77733          	and	a4,a4,a1
    138c:	00e50533          	add	a0,a0,a4
    1390:	0017d793          	srli	a5,a5,0x1
    1394:	00159593          	slli	a1,a1,0x1
    1398:	fe1ff06f          	j	1378 <__mulsi3+0x8>

0000139c <fat_list_insert_last>:
    139c:	00452783          	lw	a5,4(a0)
    13a0:	04079263          	bnez	a5,13e4 <fat_list_insert_last+0x48>
    13a4:	00052783          	lw	a5,0(a0)
    13a8:	00079c63          	bnez	a5,13c0 <fat_list_insert_last+0x24>
    13ac:	00b52023          	sw	a1,0(a0)
    13b0:	00b52223          	sw	a1,4(a0)
    13b4:	0005a023          	sw	zero,0(a1)
    13b8:	0005a223          	sw	zero,4(a1)
    13bc:	00008067          	ret
    13c0:	0007a703          	lw	a4,0(a5)
    13c4:	00f5a223          	sw	a5,4(a1)
    13c8:	00e5a023          	sw	a4,0(a1)
    13cc:	00071863          	bnez	a4,13dc <fat_list_insert_last+0x40>
    13d0:	00b52023          	sw	a1,0(a0)
    13d4:	00b7a023          	sw	a1,0(a5)
    13d8:	00008067          	ret
    13dc:	00b72223          	sw	a1,4(a4)
    13e0:	ff5ff06f          	j	13d4 <fat_list_insert_last+0x38>
    13e4:	0047a703          	lw	a4,4(a5)
    13e8:	00f5a023          	sw	a5,0(a1)
    13ec:	00e5a223          	sw	a4,4(a1)
    13f0:	00071863          	bnez	a4,1400 <fat_list_insert_last+0x64>
    13f4:	00b52223          	sw	a1,4(a0)
    13f8:	00b7a223          	sw	a1,4(a5)
    13fc:	00008067          	ret
    1400:	00b72023          	sw	a1,0(a4)
    1404:	ff5ff06f          	j	13f8 <fat_list_insert_last+0x5c>

00001408 <FileString_StrCmpNoCase>:
    1408:	00050e93          	mv	t4,a0
    140c:	00000793          	li	a5,0
    1410:	01900e13          	li	t3,25
    1414:	00c79663          	bne	a5,a2,1420 <FileString_StrCmpNoCase+0x18>
    1418:	00000513          	li	a0,0
    141c:	00008067          	ret
    1420:	00fe8733          	add	a4,t4,a5
    1424:	00074803          	lbu	a6,0(a4)
    1428:	00f58733          	add	a4,a1,a5
    142c:	00074883          	lbu	a7,0(a4)
    1430:	fbf80713          	addi	a4,a6,-65
    1434:	0ff77713          	zext.b	a4,a4
    1438:	00080693          	mv	a3,a6
    143c:	00ee6663          	bltu	t3,a4,1448 <FileString_StrCmpNoCase+0x40>
    1440:	02080693          	addi	a3,a6,32
    1444:	0ff6f693          	zext.b	a3,a3
    1448:	fbf88313          	addi	t1,a7,-65
    144c:	0ff37313          	zext.b	t1,t1
    1450:	00088713          	mv	a4,a7
    1454:	006e6663          	bltu	t3,t1,1460 <FileString_StrCmpNoCase+0x58>
    1458:	02088713          	addi	a4,a7,32
    145c:	0ff77713          	zext.b	a4,a4
    1460:	40e68533          	sub	a0,a3,a4
    1464:	00e69863          	bne	a3,a4,1474 <FileString_StrCmpNoCase+0x6c>
    1468:	00178793          	addi	a5,a5,1
    146c:	00088463          	beqz	a7,1474 <FileString_StrCmpNoCase+0x6c>
    1470:	fa0812e3          	bnez	a6,1414 <FileString_StrCmpNoCase+0xc>
    1474:	00008067          	ret

00001478 <FileString_GetExtension>:
    1478:	00050793          	mv	a5,a0
    147c:	fff00713          	li	a4,-1
    1480:	02e00613          	li	a2,46
    1484:	0007c683          	lbu	a3,0(a5)
    1488:	00069663          	bnez	a3,1494 <FileString_GetExtension+0x1c>
    148c:	00070513          	mv	a0,a4
    1490:	00008067          	ret
    1494:	00c69463          	bne	a3,a2,149c <FileString_GetExtension+0x24>
    1498:	40a78733          	sub	a4,a5,a0
    149c:	00178793          	addi	a5,a5,1
    14a0:	fe5ff06f          	j	1484 <FileString_GetExtension+0xc>

000014a4 <fatfs_fat_writeback>:
    14a4:	00059e63          	bnez	a1,14c0 <fatfs_fat_writeback+0x1c>
    14a8:	00000513          	li	a0,0
    14ac:	00008067          	ret
    14b0:	00000513          	li	a0,0
    14b4:	01c12083          	lw	ra,28(sp)
    14b8:	02010113          	addi	sp,sp,32
    14bc:	00008067          	ret
    14c0:	2045a783          	lw	a5,516(a1)
    14c4:	04078e63          	beqz	a5,1520 <fatfs_fat_writeback+0x7c>
    14c8:	03852683          	lw	a3,56(a0)
    14cc:	00050793          	mv	a5,a0
    14d0:	04068663          	beqz	a3,151c <fatfs_fat_writeback+0x78>
    14d4:	0147a703          	lw	a4,20(a5)
    14d8:	2005a503          	lw	a0,512(a1)
    14dc:	0207a803          	lw	a6,32(a5)
    14e0:	00100613          	li	a2,1
    14e4:	fe010113          	addi	sp,sp,-32
    14e8:	40e607b3          	sub	a5,a2,a4
    14ec:	00112e23          	sw	ra,28(sp)
    14f0:	00a787b3          	add	a5,a5,a0
    14f4:	00f87663          	bgeu	a6,a5,1500 <fatfs_fat_writeback+0x5c>
    14f8:	01070733          	add	a4,a4,a6
    14fc:	40a70633          	sub	a2,a4,a0
    1500:	00b12623          	sw	a1,12(sp)
    1504:	000680e7          	jalr	a3
    1508:	fa0504e3          	beqz	a0,14b0 <fatfs_fat_writeback+0xc>
    150c:	00c12583          	lw	a1,12(sp)
    1510:	00100513          	li	a0,1
    1514:	2005a223          	sw	zero,516(a1)
    1518:	f9dff06f          	j	14b4 <fatfs_fat_writeback+0x10>
    151c:	2005a223          	sw	zero,516(a1)
    1520:	00100513          	li	a0,1
    1524:	00008067          	ret

00001528 <fatfs_fat_read_sector>:
    1528:	fe010113          	addi	sp,sp,-32
    152c:	01212823          	sw	s2,16(sp)
    1530:	25452903          	lw	s2,596(a0)
    1534:	00812c23          	sw	s0,24(sp)
    1538:	00112e23          	sw	ra,28(sp)
    153c:	00912a23          	sw	s1,20(sp)
    1540:	01312623          	sw	s3,12(sp)
    1544:	00000413          	li	s0,0
    1548:	04091463          	bnez	s2,1590 <fatfs_fat_read_sector+0x68>
    154c:	25452783          	lw	a5,596(a0)
    1550:	00058493          	mv	s1,a1
    1554:	00050993          	mv	s3,a0
    1558:	20f42623          	sw	a5,524(s0)
    155c:	20442783          	lw	a5,516(s0)
    1560:	24852a23          	sw	s0,596(a0)
    1564:	08079863          	bnez	a5,15f4 <fatfs_fat_read_sector+0xcc>
    1568:	0349a783          	lw	a5,52(s3)
    156c:	20942023          	sw	s1,512(s0)
    1570:	00100613          	li	a2,1
    1574:	00040593          	mv	a1,s0
    1578:	00048513          	mv	a0,s1
    157c:	000780e7          	jalr	a5
    1580:	08051463          	bnez	a0,1608 <fatfs_fat_read_sector+0xe0>
    1584:	fff00793          	li	a5,-1
    1588:	20f42023          	sw	a5,512(s0)
    158c:	0480006f          	j	15d4 <fatfs_fat_read_sector+0xac>
    1590:	20092783          	lw	a5,512(s2)
    1594:	00f5e663          	bltu	a1,a5,15a0 <fatfs_fat_read_sector+0x78>
    1598:	00178713          	addi	a4,a5,1
    159c:	02e5e463          	bltu	a1,a4,15c4 <fatfs_fat_read_sector+0x9c>
    15a0:	20c92783          	lw	a5,524(s2)
    15a4:	00079663          	bnez	a5,15b0 <fatfs_fat_read_sector+0x88>
    15a8:	00040a63          	beqz	s0,15bc <fatfs_fat_read_sector+0x94>
    15ac:	20042623          	sw	zero,524(s0)
    15b0:	00090413          	mv	s0,s2
    15b4:	20c92903          	lw	s2,524(s2)
    15b8:	f91ff06f          	j	1548 <fatfs_fat_read_sector+0x20>
    15bc:	24052a23          	sw	zero,596(a0)
    15c0:	ff1ff06f          	j	15b0 <fatfs_fat_read_sector+0x88>
    15c4:	40f585b3          	sub	a1,a1,a5
    15c8:	00959593          	slli	a1,a1,0x9
    15cc:	00b905b3          	add	a1,s2,a1
    15d0:	20b92423          	sw	a1,520(s2)
    15d4:	01c12083          	lw	ra,28(sp)
    15d8:	01812403          	lw	s0,24(sp)
    15dc:	01412483          	lw	s1,20(sp)
    15e0:	00c12983          	lw	s3,12(sp)
    15e4:	00090513          	mv	a0,s2
    15e8:	01012903          	lw	s2,16(sp)
    15ec:	02010113          	addi	sp,sp,32
    15f0:	00008067          	ret
    15f4:	00040593          	mv	a1,s0
    15f8:	00000097          	auipc	ra,0x0
    15fc:	eac080e7          	jalr	-340(ra) # 14a4 <fatfs_fat_writeback>
    1600:	f60514e3          	bnez	a0,1568 <fatfs_fat_read_sector+0x40>
    1604:	fd1ff06f          	j	15d4 <fatfs_fat_read_sector+0xac>
    1608:	20842423          	sw	s0,520(s0)
    160c:	00040913          	mv	s2,s0
    1610:	fc5ff06f          	j	15d4 <fatfs_fat_read_sector+0xac>

00001614 <_allocate_file>:
    1614:	000057b7          	lui	a5,0x5
    1618:	a1078793          	addi	a5,a5,-1520 # 4a10 <_free_file_list>
    161c:	0007a583          	lw	a1,0(a5)
    1620:	06058263          	beqz	a1,1684 <_allocate_file+0x70>
    1624:	0005a703          	lw	a4,0(a1)
    1628:	fe010113          	addi	sp,sp,-32
    162c:	00112e23          	sw	ra,28(sp)
    1630:	0045a683          	lw	a3,4(a1)
    1634:	04071063          	bnez	a4,1674 <_allocate_file+0x60>
    1638:	00d7a023          	sw	a3,0(a5)
    163c:	0045a683          	lw	a3,4(a1)
    1640:	02069e63          	bnez	a3,167c <_allocate_file+0x68>
    1644:	00e7a223          	sw	a4,4(a5)
    1648:	00005537          	lui	a0,0x5
    164c:	a1850513          	addi	a0,a0,-1512 # 4a18 <_open_file_list>
    1650:	00b12623          	sw	a1,12(sp)
    1654:	00000097          	auipc	ra,0x0
    1658:	d48080e7          	jalr	-696(ra) # 139c <fat_list_insert_last>
    165c:	00c12583          	lw	a1,12(sp)
    1660:	01c12083          	lw	ra,28(sp)
    1664:	bc458593          	addi	a1,a1,-1084
    1668:	00058513          	mv	a0,a1
    166c:	02010113          	addi	sp,sp,32
    1670:	00008067          	ret
    1674:	00d72223          	sw	a3,4(a4)
    1678:	fc5ff06f          	j	163c <_allocate_file+0x28>
    167c:	00e6a023          	sw	a4,0(a3)
    1680:	fc9ff06f          	j	1648 <_allocate_file+0x34>
    1684:	00058513          	mv	a0,a1
    1688:	00008067          	ret

0000168c <_free_file>:
    168c:	43c52783          	lw	a5,1084(a0)
    1690:	44052703          	lw	a4,1088(a0)
    1694:	43c50593          	addi	a1,a0,1084
    1698:	02079663          	bnez	a5,16c4 <_free_file+0x38>
    169c:	000056b7          	lui	a3,0x5
    16a0:	a0e6ac23          	sw	a4,-1512(a3) # 4a18 <_open_file_list>
    16a4:	44052703          	lw	a4,1088(a0)
    16a8:	02071263          	bnez	a4,16cc <_free_file+0x40>
    16ac:	00005737          	lui	a4,0x5
    16b0:	a0f72e23          	sw	a5,-1508(a4) # 4a1c <_open_file_list+0x4>
    16b4:	00005537          	lui	a0,0x5
    16b8:	a1050513          	addi	a0,a0,-1520 # 4a10 <_free_file_list>
    16bc:	00000317          	auipc	t1,0x0
    16c0:	ce030067          	jr	-800(t1) # 139c <fat_list_insert_last>
    16c4:	00e7a223          	sw	a4,4(a5)
    16c8:	fddff06f          	j	16a4 <_free_file+0x18>
    16cc:	00f72023          	sw	a5,0(a4)
    16d0:	fe5ff06f          	j	16b4 <_free_file+0x28>

000016d4 <fatfs_lba_of_cluster>:
    16d4:	ff010113          	addi	sp,sp,-16
    16d8:	00812423          	sw	s0,8(sp)
    16dc:	00112623          	sw	ra,12(sp)
    16e0:	00050413          	mv	s0,a0
    16e4:	ffe58513          	addi	a0,a1,-2
    16e8:	00044583          	lbu	a1,0(s0)
    16ec:	00000097          	auipc	ra,0x0
    16f0:	c84080e7          	jalr	-892(ra) # 1370 <__mulsi3>
    16f4:	00442783          	lw	a5,4(s0)
    16f8:	00f50533          	add	a0,a0,a5
    16fc:	03042783          	lw	a5,48(s0)
    1700:	00079863          	bnez	a5,1710 <fatfs_lba_of_cluster+0x3c>
    1704:	02845783          	lhu	a5,40(s0)
    1708:	4047d793          	srai	a5,a5,0x4
    170c:	00f50533          	add	a0,a0,a5
    1710:	00c12083          	lw	ra,12(sp)
    1714:	00812403          	lw	s0,8(sp)
    1718:	01010113          	addi	sp,sp,16
    171c:	00008067          	ret

00001720 <fatfs_sector_read>:
    1720:	03452783          	lw	a5,52(a0)
    1724:	00058713          	mv	a4,a1
    1728:	00070513          	mv	a0,a4
    172c:	00060593          	mv	a1,a2
    1730:	00068613          	mv	a2,a3
    1734:	00078067          	jr	a5

00001738 <fatfs_sector_write>:
    1738:	03852783          	lw	a5,56(a0)
    173c:	00058713          	mv	a4,a1
    1740:	00070513          	mv	a0,a4
    1744:	00060593          	mv	a1,a2
    1748:	00068613          	mv	a2,a3
    174c:	00078067          	jr	a5

00001750 <fatfs_write_sector>:
    1750:	03852703          	lw	a4,56(a0)
    1754:	0a070463          	beqz	a4,17fc <fatfs_write_sector+0xac>
    1758:	03052883          	lw	a7,48(a0)
    175c:	00050793          	mv	a5,a0
    1760:	0115e833          	or	a6,a1,a7
    1764:	02081e63          	bnez	a6,17a0 <fatfs_write_sector+0x50>
    1768:	01052583          	lw	a1,16(a0)
    176c:	08b67863          	bgeu	a2,a1,17fc <fatfs_write_sector+0xac>
    1770:	01c52503          	lw	a0,28(a0)
    1774:	00c7a583          	lw	a1,12(a5)
    1778:	00b50533          	add	a0,a0,a1
    177c:	00c50533          	add	a0,a0,a2
    1780:	00068863          	beqz	a3,1790 <fatfs_write_sector+0x40>
    1784:	00100613          	li	a2,1
    1788:	00068593          	mv	a1,a3
    178c:	00070067          	jr	a4
    1790:	24a7a223          	sw	a0,580(a5)
    1794:	00100613          	li	a2,1
    1798:	04478593          	addi	a1,a5,68
    179c:	ff1ff06f          	j	178c <fatfs_write_sector+0x3c>
    17a0:	fe010113          	addi	sp,sp,-32
    17a4:	00e12623          	sw	a4,12(sp)
    17a8:	00d12423          	sw	a3,8(sp)
    17ac:	00c12223          	sw	a2,4(sp)
    17b0:	00112e23          	sw	ra,28(sp)
    17b4:	00a12023          	sw	a0,0(sp)
    17b8:	00000097          	auipc	ra,0x0
    17bc:	f1c080e7          	jalr	-228(ra) # 16d4 <fatfs_lba_of_cluster>
    17c0:	00412603          	lw	a2,4(sp)
    17c4:	00812683          	lw	a3,8(sp)
    17c8:	00012783          	lw	a5,0(sp)
    17cc:	00c12703          	lw	a4,12(sp)
    17d0:	00a60533          	add	a0,a2,a0
    17d4:	00068c63          	beqz	a3,17ec <fatfs_write_sector+0x9c>
    17d8:	00100613          	li	a2,1
    17dc:	00068593          	mv	a1,a3
    17e0:	01c12083          	lw	ra,28(sp)
    17e4:	02010113          	addi	sp,sp,32
    17e8:	fa5ff06f          	j	178c <fatfs_write_sector+0x3c>
    17ec:	24a7a223          	sw	a0,580(a5)
    17f0:	00100613          	li	a2,1
    17f4:	04478593          	addi	a1,a5,68
    17f8:	fe9ff06f          	j	17e0 <fatfs_write_sector+0x90>
    17fc:	00000513          	li	a0,0
    1800:	00008067          	ret

00001804 <fl_init>:
    1804:	ff010113          	addi	sp,sp,-16
    1808:	00005537          	lui	a0,0x5
    180c:	000057b7          	lui	a5,0x5
    1810:	0000b5b7          	lui	a1,0xb
    1814:	00112623          	sw	ra,12(sp)
    1818:	a1050513          	addi	a0,a0,-1520 # 4a10 <_free_file_list>
    181c:	a1878793          	addi	a5,a5,-1512 # 4a18 <_open_file_list>
    1820:	44c58593          	addi	a1,a1,1100 # b44c <_files+0x43c>
    1824:	00052223          	sw	zero,4(a0)
    1828:	00052023          	sw	zero,0(a0)
    182c:	0007a223          	sw	zero,4(a5)
    1830:	0007a023          	sw	zero,0(a5)
    1834:	00000097          	auipc	ra,0x0
    1838:	b68080e7          	jalr	-1176(ra) # 139c <fat_list_insert_last>
    183c:	000057b7          	lui	a5,0x5
    1840:	0000c5b7          	lui	a1,0xc
    1844:	a1078513          	addi	a0,a5,-1520 # 4a10 <_free_file_list>
    1848:	89058593          	addi	a1,a1,-1904 # b890 <_files+0x880>
    184c:	00000097          	auipc	ra,0x0
    1850:	b50080e7          	jalr	-1200(ra) # 139c <fat_list_insert_last>
    1854:	00c12083          	lw	ra,12(sp)
    1858:	000057b7          	lui	a5,0x5
    185c:	00100713          	li	a4,1
    1860:	a2e7a223          	sw	a4,-1500(a5) # 4a24 <_filelib_init>
    1864:	01010113          	addi	sp,sp,16
    1868:	00008067          	ret

0000186c <fl_closedir>:
    186c:	00000513          	li	a0,0
    1870:	00008067          	ret

00001874 <fatfs_lfn_cache_entry>:
    1874:	0005c783          	lbu	a5,0(a1)
    1878:	01300693          	li	a3,19
    187c:	01f7f793          	andi	a5,a5,31
    1880:	fff78713          	addi	a4,a5,-1
    1884:	0ff77613          	zext.b	a2,a4
    1888:	0ac6ea63          	bltu	a3,a2,193c <fatfs_lfn_cache_entry+0xc8>
    188c:	10554683          	lbu	a3,261(a0)
    1890:	00069463          	bnez	a3,1898 <fatfs_lfn_cache_entry+0x24>
    1894:	10f502a3          	sb	a5,261(a0)
    1898:	00171793          	slli	a5,a4,0x1
    189c:	00e787b3          	add	a5,a5,a4
    18a0:	0015c683          	lbu	a3,1(a1)
    18a4:	00279793          	slli	a5,a5,0x2
    18a8:	00e787b3          	add	a5,a5,a4
    18ac:	00f50533          	add	a0,a0,a5
    18b0:	00d50023          	sb	a3,0(a0)
    18b4:	0035c783          	lbu	a5,3(a1)
    18b8:	0ff00713          	li	a4,255
    18bc:	02000693          	li	a3,32
    18c0:	00f500a3          	sb	a5,1(a0)
    18c4:	0055c783          	lbu	a5,5(a1)
    18c8:	00f50123          	sb	a5,2(a0)
    18cc:	0075c783          	lbu	a5,7(a1)
    18d0:	00f501a3          	sb	a5,3(a0)
    18d4:	0095c783          	lbu	a5,9(a1)
    18d8:	00f50223          	sb	a5,4(a0)
    18dc:	00e5c783          	lbu	a5,14(a1)
    18e0:	00f502a3          	sb	a5,5(a0)
    18e4:	0105c783          	lbu	a5,16(a1)
    18e8:	00f50323          	sb	a5,6(a0)
    18ec:	0125c783          	lbu	a5,18(a1)
    18f0:	00f503a3          	sb	a5,7(a0)
    18f4:	0145c783          	lbu	a5,20(a1)
    18f8:	00f50423          	sb	a5,8(a0)
    18fc:	0165c783          	lbu	a5,22(a1)
    1900:	00f504a3          	sb	a5,9(a0)
    1904:	0185c783          	lbu	a5,24(a1)
    1908:	00f50523          	sb	a5,10(a0)
    190c:	01c5c783          	lbu	a5,28(a1)
    1910:	00f505a3          	sb	a5,11(a0)
    1914:	01e5c783          	lbu	a5,30(a1)
    1918:	00f50623          	sb	a5,12(a0)
    191c:	00d00793          	li	a5,13
    1920:	00054603          	lbu	a2,0(a0)
    1924:	00e61463          	bne	a2,a4,192c <fatfs_lfn_cache_entry+0xb8>
    1928:	00d50023          	sb	a3,0(a0)
    192c:	fff78793          	addi	a5,a5,-1
    1930:	0ff7f793          	zext.b	a5,a5
    1934:	00150513          	addi	a0,a0,1
    1938:	fe0794e3          	bnez	a5,1920 <fatfs_lfn_cache_entry+0xac>
    193c:	00008067          	ret

00001940 <fatfs_lfn_cache_get>:
    1940:	10554703          	lbu	a4,261(a0)
    1944:	01400793          	li	a5,20
    1948:	00f71663          	bne	a4,a5,1954 <fatfs_lfn_cache_get+0x14>
    194c:	10050223          	sb	zero,260(a0)
    1950:	00008067          	ret
    1954:	02070063          	beqz	a4,1974 <fatfs_lfn_cache_get+0x34>
    1958:	00171793          	slli	a5,a4,0x1
    195c:	00e787b3          	add	a5,a5,a4
    1960:	00279793          	slli	a5,a5,0x2
    1964:	00e787b3          	add	a5,a5,a4
    1968:	00f507b3          	add	a5,a0,a5
    196c:	00078023          	sb	zero,0(a5)
    1970:	00008067          	ret
    1974:	00050023          	sb	zero,0(a0)
    1978:	00008067          	ret

0000197c <fatfs_entry_lfn_text>:
    197c:	00b54503          	lbu	a0,11(a0)
    1980:	00f57513          	andi	a0,a0,15
    1984:	ff150513          	addi	a0,a0,-15
    1988:	00153513          	seqz	a0,a0
    198c:	00008067          	ret

00001990 <fatfs_entry_lfn_invalid>:
    1990:	00054783          	lbu	a5,0(a0)
    1994:	f1b78713          	addi	a4,a5,-229
    1998:	02070263          	beqz	a4,19bc <fatfs_entry_lfn_invalid+0x2c>
    199c:	02078063          	beqz	a5,19bc <fatfs_entry_lfn_invalid+0x2c>
    19a0:	00b54783          	lbu	a5,11(a0)
    19a4:	00800713          	li	a4,8
    19a8:	00100513          	li	a0,1
    19ac:	00e78a63          	beq	a5,a4,19c0 <fatfs_entry_lfn_invalid+0x30>
    19b0:	0067f793          	andi	a5,a5,6
    19b4:	00f03533          	snez	a0,a5
    19b8:	00008067          	ret
    19bc:	00100513          	li	a0,1
    19c0:	00008067          	ret

000019c4 <fatfs_entry_lfn_exists>:
    19c4:	00b5c783          	lbu	a5,11(a1)
    19c8:	00f00713          	li	a4,15
    19cc:	04e78063          	beq	a5,a4,1a0c <fatfs_entry_lfn_exists+0x48>
    19d0:	0005c683          	lbu	a3,0(a1)
    19d4:	f1b68713          	addi	a4,a3,-229
    19d8:	00e03733          	snez	a4,a4
    19dc:	00d036b3          	snez	a3,a3
    19e0:	00d77733          	and	a4,a4,a3
    19e4:	02070463          	beqz	a4,1a0c <fatfs_entry_lfn_exists+0x48>
    19e8:	ff878713          	addi	a4,a5,-8
    19ec:	02070063          	beqz	a4,1a0c <fatfs_entry_lfn_exists+0x48>
    19f0:	0067f713          	andi	a4,a5,6
    19f4:	00000793          	li	a5,0
    19f8:	00071663          	bnez	a4,1a04 <fatfs_entry_lfn_exists+0x40>
    19fc:	10554783          	lbu	a5,261(a0)
    1a00:	00f037b3          	snez	a5,a5
    1a04:	00078513          	mv	a0,a5
    1a08:	00008067          	ret
    1a0c:	00000793          	li	a5,0
    1a10:	ff5ff06f          	j	1a04 <fatfs_entry_lfn_exists+0x40>

00001a14 <fatfs_entry_sfn_only>:
    1a14:	00b54783          	lbu	a5,11(a0)
    1a18:	00f00713          	li	a4,15
    1a1c:	02e78863          	beq	a5,a4,1a4c <fatfs_entry_sfn_only+0x38>
    1a20:	00054683          	lbu	a3,0(a0)
    1a24:	f1b68713          	addi	a4,a3,-229
    1a28:	00e03733          	snez	a4,a4
    1a2c:	00d036b3          	snez	a3,a3
    1a30:	00d77733          	and	a4,a4,a3
    1a34:	00070c63          	beqz	a4,1a4c <fatfs_entry_sfn_only+0x38>
    1a38:	ff878713          	addi	a4,a5,-8
    1a3c:	00070863          	beqz	a4,1a4c <fatfs_entry_sfn_only+0x38>
    1a40:	0067f513          	andi	a0,a5,6
    1a44:	00153513          	seqz	a0,a0
    1a48:	00008067          	ret
    1a4c:	00000513          	li	a0,0
    1a50:	00008067          	ret

00001a54 <fatfs_entry_is_dir>:
    1a54:	00b54503          	lbu	a0,11(a0)
    1a58:	00455513          	srli	a0,a0,0x4
    1a5c:	00157513          	andi	a0,a0,1
    1a60:	00008067          	ret

00001a64 <fatfs_lfn_entries_required>:
    1a64:	ff010113          	addi	sp,sp,-16
    1a68:	00112623          	sw	ra,12(sp)
    1a6c:	fffff097          	auipc	ra,0xfffff
    1a70:	1f4080e7          	jalr	500(ra) # c60 <strlen>
    1a74:	00050a63          	beqz	a0,1a88 <fatfs_lfn_entries_required+0x24>
    1a78:	00d00593          	li	a1,13
    1a7c:	00c50513          	addi	a0,a0,12
    1a80:	fffff097          	auipc	ra,0xfffff
    1a84:	0ec080e7          	jalr	236(ra) # b6c <__divsi3>
    1a88:	00c12083          	lw	ra,12(sp)
    1a8c:	01010113          	addi	sp,sp,16
    1a90:	00008067          	ret

00001a94 <fatfs_filename_to_lfn>:
    1a94:	f9010113          	addi	sp,sp,-112
    1a98:	06812423          	sw	s0,104(sp)
    1a9c:	00058413          	mv	s0,a1
    1aa0:	000055b7          	lui	a1,0x5
    1aa4:	9c458593          	addi	a1,a1,-1596 # 49c4 <font+0x1e0>
    1aa8:	06912223          	sw	s1,100(sp)
    1aac:	05312e23          	sw	s3,92(sp)
    1ab0:	00060493          	mv	s1,a2
    1ab4:	00050993          	mv	s3,a0
    1ab8:	03400613          	li	a2,52
    1abc:	01c10513          	addi	a0,sp,28
    1ac0:	00d12623          	sw	a3,12(sp)
    1ac4:	06112623          	sw	ra,108(sp)
    1ac8:	07212023          	sw	s2,96(sp)
    1acc:	05412c23          	sw	s4,88(sp)
    1ad0:	fffff097          	auipc	ra,0xfffff
    1ad4:	16c080e7          	jalr	364(ra) # c3c <memcpy>
    1ad8:	00098513          	mv	a0,s3
    1adc:	fffff097          	auipc	ra,0xfffff
    1ae0:	184080e7          	jalr	388(ra) # c60 <strlen>
    1ae4:	00050913          	mv	s2,a0
    1ae8:	00098513          	mv	a0,s3
    1aec:	00000097          	auipc	ra,0x0
    1af0:	f78080e7          	jalr	-136(ra) # 1a64 <fatfs_lfn_entries_required>
    1af4:	00050a13          	mv	s4,a0
    1af8:	02000613          	li	a2,32
    1afc:	00000593          	li	a1,0
    1b00:	00040513          	mv	a0,s0
    1b04:	fffff097          	auipc	ra,0xfffff
    1b08:	11c080e7          	jalr	284(ra) # c20 <memset>
    1b0c:	fffa0713          	addi	a4,s4,-1 # 3fff <fatfs_add_file_entry+0x43>
    1b10:	00c12683          	lw	a3,12(sp)
    1b14:	00148793          	addi	a5,s1,1
    1b18:	00971463          	bne	a4,s1,1b20 <fatfs_filename_to_lfn+0x8c>
    1b1c:	0407e793          	ori	a5,a5,64
    1b20:	00149613          	slli	a2,s1,0x1
    1b24:	00960633          	add	a2,a2,s1
    1b28:	00f40023          	sb	a5,0(s0)
    1b2c:	00261613          	slli	a2,a2,0x2
    1b30:	00f00793          	li	a5,15
    1b34:	00f405a3          	sb	a5,11(s0)
    1b38:	00d406a3          	sb	a3,13(s0)
    1b3c:	01c10793          	addi	a5,sp,28
    1b40:	00960633          	add	a2,a2,s1
    1b44:	fff00693          	li	a3,-1
    1b48:	0007a703          	lw	a4,0(a5)
    1b4c:	00e40733          	add	a4,s0,a4
    1b50:	05265063          	bge	a2,s2,1b90 <fatfs_filename_to_lfn+0xfc>
    1b54:	00c985b3          	add	a1,s3,a2
    1b58:	0005c583          	lbu	a1,0(a1)
    1b5c:	00b70023          	sb	a1,0(a4)
    1b60:	00478793          	addi	a5,a5,4
    1b64:	05010713          	addi	a4,sp,80
    1b68:	00160613          	addi	a2,a2,1
    1b6c:	fce79ee3          	bne	a5,a4,1b48 <fatfs_filename_to_lfn+0xb4>
    1b70:	06c12083          	lw	ra,108(sp)
    1b74:	06812403          	lw	s0,104(sp)
    1b78:	06412483          	lw	s1,100(sp)
    1b7c:	06012903          	lw	s2,96(sp)
    1b80:	05c12983          	lw	s3,92(sp)
    1b84:	05812a03          	lw	s4,88(sp)
    1b88:	07010113          	addi	sp,sp,112
    1b8c:	00008067          	ret
    1b90:	01261663          	bne	a2,s2,1b9c <fatfs_filename_to_lfn+0x108>
    1b94:	00070023          	sb	zero,0(a4)
    1b98:	fc9ff06f          	j	1b60 <fatfs_filename_to_lfn+0xcc>
    1b9c:	00d70023          	sb	a3,0(a4)
    1ba0:	00d700a3          	sb	a3,1(a4)
    1ba4:	fbdff06f          	j	1b60 <fatfs_filename_to_lfn+0xcc>

00001ba8 <fatfs_sfn_create_entry>:
    1ba8:	00000793          	li	a5,0
    1bac:	00b00813          	li	a6,11
    1bb0:	00f508b3          	add	a7,a0,a5
    1bb4:	0008c303          	lbu	t1,0(a7)
    1bb8:	00f688b3          	add	a7,a3,a5
    1bbc:	00178793          	addi	a5,a5,1
    1bc0:	00688023          	sb	t1,0(a7)
    1bc4:	ff0796e3          	bne	a5,a6,1bb0 <fatfs_sfn_create_entry+0x8>
    1bc8:	00e03733          	snez	a4,a4
    1bcc:	40e00733          	neg	a4,a4
    1bd0:	02000793          	li	a5,32
    1bd4:	ff077713          	andi	a4,a4,-16
    1bd8:	00f70733          	add	a4,a4,a5
    1bdc:	00f68823          	sb	a5,16(a3)
    1be0:	00f68923          	sb	a5,18(a3)
    1be4:	00f68c23          	sb	a5,24(a3)
    1be8:	01065793          	srli	a5,a2,0x10
    1bec:	00f68a23          	sb	a5,20(a3)
    1bf0:	01865793          	srli	a5,a2,0x18
    1bf4:	00f68aa3          	sb	a5,21(a3)
    1bf8:	0085d793          	srli	a5,a1,0x8
    1bfc:	00c68d23          	sb	a2,26(a3)
    1c00:	00b68e23          	sb	a1,28(a3)
    1c04:	00865613          	srli	a2,a2,0x8
    1c08:	00f68ea3          	sb	a5,29(a3)
    1c0c:	0105d793          	srli	a5,a1,0x10
    1c10:	0185d593          	srli	a1,a1,0x18
    1c14:	000686a3          	sb	zero,13(a3)
    1c18:	00068723          	sb	zero,14(a3)
    1c1c:	000687a3          	sb	zero,15(a3)
    1c20:	000688a3          	sb	zero,17(a3)
    1c24:	000689a3          	sb	zero,19(a3)
    1c28:	00068b23          	sb	zero,22(a3)
    1c2c:	00068ba3          	sb	zero,23(a3)
    1c30:	00068ca3          	sb	zero,25(a3)
    1c34:	00e685a3          	sb	a4,11(a3)
    1c38:	00068623          	sb	zero,12(a3)
    1c3c:	00c68da3          	sb	a2,27(a3)
    1c40:	00f68f23          	sb	a5,30(a3)
    1c44:	00b68fa3          	sb	a1,31(a3)
    1c48:	00008067          	ret

00001c4c <fatfs_lfn_create_sfn>:
    1c4c:	fd010113          	addi	sp,sp,-48
    1c50:	02912223          	sw	s1,36(sp)
    1c54:	00050493          	mv	s1,a0
    1c58:	00058513          	mv	a0,a1
    1c5c:	02812423          	sw	s0,40(sp)
    1c60:	01312e23          	sw	s3,28(sp)
    1c64:	00058413          	mv	s0,a1
    1c68:	02112623          	sw	ra,44(sp)
    1c6c:	03212023          	sw	s2,32(sp)
    1c70:	fffff097          	auipc	ra,0xfffff
    1c74:	ff0080e7          	jalr	-16(ra) # c60 <strlen>
    1c78:	00044783          	lbu	a5,0(s0)
    1c7c:	02e00993          	li	s3,46
    1c80:	15378063          	beq	a5,s3,1dc0 <fatfs_lfn_create_sfn+0x174>
    1c84:	00b00613          	li	a2,11
    1c88:	02000593          	li	a1,32
    1c8c:	00050913          	mv	s2,a0
    1c90:	00048513          	mv	a0,s1
    1c94:	fffff097          	auipc	ra,0xfffff
    1c98:	f8c080e7          	jalr	-116(ra) # c20 <memset>
    1c9c:	00300613          	li	a2,3
    1ca0:	02000593          	li	a1,32
    1ca4:	00c10513          	addi	a0,sp,12
    1ca8:	fffff097          	auipc	ra,0xfffff
    1cac:	f78080e7          	jalr	-136(ra) # c20 <memset>
    1cb0:	fff00793          	li	a5,-1
    1cb4:	00000713          	li	a4,0
    1cb8:	0d274263          	blt	a4,s2,1d7c <fatfs_lfn_create_sfn+0x130>
    1cbc:	fff00713          	li	a4,-1
    1cc0:	0ee78863          	beq	a5,a4,1db0 <fatfs_lfn_create_sfn+0x164>
    1cc4:	00178713          	addi	a4,a5,1
    1cc8:	00c10693          	addi	a3,sp,12
    1ccc:	00478613          	addi	a2,a5,4
    1cd0:	0ce61263          	bne	a2,a4,1d94 <fatfs_lfn_create_sfn+0x148>
    1cd4:	00000613          	li	a2,0
    1cd8:	00000693          	li	a3,0
    1cdc:	01900813          	li	a6,25
    1ce0:	00800893          	li	a7,8
    1ce4:	02f6de63          	bge	a3,a5,1d20 <fatfs_lfn_create_sfn+0xd4>
    1ce8:	00d40733          	add	a4,s0,a3
    1cec:	00074703          	lbu	a4,0(a4)
    1cf0:	fe070513          	addi	a0,a4,-32
    1cf4:	0c050263          	beqz	a0,1db8 <fatfs_lfn_create_sfn+0x16c>
    1cf8:	fd270593          	addi	a1,a4,-46
    1cfc:	0a058e63          	beqz	a1,1db8 <fatfs_lfn_create_sfn+0x16c>
    1d00:	f9f70593          	addi	a1,a4,-97
    1d04:	0ff5f593          	zext.b	a1,a1
    1d08:	00c48333          	add	t1,s1,a2
    1d0c:	00160613          	addi	a2,a2,1
    1d10:	00b86463          	bltu	a6,a1,1d18 <fatfs_lfn_create_sfn+0xcc>
    1d14:	0ff57713          	zext.b	a4,a0
    1d18:	00e30023          	sb	a4,0(t1)
    1d1c:	09161e63          	bne	a2,a7,1db8 <fatfs_lfn_create_sfn+0x16c>
    1d20:	00c10793          	addi	a5,sp,12
    1d24:	00800693          	li	a3,8
    1d28:	01900513          	li	a0,25
    1d2c:	00b00593          	li	a1,11
    1d30:	0007c703          	lbu	a4,0(a5)
    1d34:	f9f70613          	addi	a2,a4,-97
    1d38:	0ff67613          	zext.b	a2,a2
    1d3c:	00c56663          	bltu	a0,a2,1d48 <fatfs_lfn_create_sfn+0xfc>
    1d40:	fe070713          	addi	a4,a4,-32
    1d44:	0ff77713          	zext.b	a4,a4
    1d48:	00d48633          	add	a2,s1,a3
    1d4c:	00e60023          	sb	a4,0(a2)
    1d50:	00168693          	addi	a3,a3,1
    1d54:	00178793          	addi	a5,a5,1
    1d58:	fcb69ce3          	bne	a3,a1,1d30 <fatfs_lfn_create_sfn+0xe4>
    1d5c:	00100513          	li	a0,1
    1d60:	02c12083          	lw	ra,44(sp)
    1d64:	02812403          	lw	s0,40(sp)
    1d68:	02412483          	lw	s1,36(sp)
    1d6c:	02012903          	lw	s2,32(sp)
    1d70:	01c12983          	lw	s3,28(sp)
    1d74:	03010113          	addi	sp,sp,48
    1d78:	00008067          	ret
    1d7c:	00e406b3          	add	a3,s0,a4
    1d80:	0006c683          	lbu	a3,0(a3)
    1d84:	01369463          	bne	a3,s3,1d8c <fatfs_lfn_create_sfn+0x140>
    1d88:	00070793          	mv	a5,a4
    1d8c:	00170713          	addi	a4,a4,1
    1d90:	f29ff06f          	j	1cb8 <fatfs_lfn_create_sfn+0x6c>
    1d94:	01275863          	bge	a4,s2,1da4 <fatfs_lfn_create_sfn+0x158>
    1d98:	00e405b3          	add	a1,s0,a4
    1d9c:	0005c583          	lbu	a1,0(a1)
    1da0:	00b68023          	sb	a1,0(a3)
    1da4:	00170713          	addi	a4,a4,1
    1da8:	00168693          	addi	a3,a3,1
    1dac:	f25ff06f          	j	1cd0 <fatfs_lfn_create_sfn+0x84>
    1db0:	00090793          	mv	a5,s2
    1db4:	f21ff06f          	j	1cd4 <fatfs_lfn_create_sfn+0x88>
    1db8:	00168693          	addi	a3,a3,1
    1dbc:	f29ff06f          	j	1ce4 <fatfs_lfn_create_sfn+0x98>
    1dc0:	00000513          	li	a0,0
    1dc4:	f9dff06f          	j	1d60 <fatfs_lfn_create_sfn+0x114>

00001dc8 <fatfs_lfn_generate_tail>:
    1dc8:	000187b7          	lui	a5,0x18
    1dcc:	69f78793          	addi	a5,a5,1695 # 1869f <__stacktop+0x869f>
    1dd0:	16c7e463          	bltu	a5,a2,1f38 <fatfs_lfn_generate_tail+0x170>
    1dd4:	fa010113          	addi	sp,sp,-96
    1dd8:	04812c23          	sw	s0,88(sp)
    1ddc:	04912a23          	sw	s1,84(sp)
    1de0:	03712e23          	sw	s7,60(sp)
    1de4:	00060413          	mv	s0,a2
    1de8:	00058b93          	mv	s7,a1
    1dec:	00c00613          	li	a2,12
    1df0:	00000593          	li	a1,0
    1df4:	00050493          	mv	s1,a0
    1df8:	00410513          	addi	a0,sp,4
    1dfc:	04112e23          	sw	ra,92(sp)
    1e00:	05312623          	sw	s3,76(sp)
    1e04:	05412423          	sw	s4,72(sp)
    1e08:	05612023          	sw	s6,64(sp)
    1e0c:	05212823          	sw	s2,80(sp)
    1e10:	05512223          	sw	s5,68(sp)
    1e14:	fffff097          	auipc	ra,0xfffff
    1e18:	e0c080e7          	jalr	-500(ra) # c20 <memset>
    1e1c:	000045b7          	lui	a1,0x4
    1e20:	07e00793          	li	a5,126
    1e24:	01100613          	li	a2,17
    1e28:	79c58593          	addi	a1,a1,1948 # 479c <LEDS+0x94>
    1e2c:	01c10513          	addi	a0,sp,28
    1e30:	01010993          	addi	s3,sp,16
    1e34:	00f10223          	sb	a5,4(sp)
    1e38:	00098a13          	mv	s4,s3
    1e3c:	fffff097          	auipc	ra,0xfffff
    1e40:	e00080e7          	jalr	-512(ra) # c3c <memcpy>
    1e44:	00900b13          	li	s6,9
    1e48:	00a00593          	li	a1,10
    1e4c:	00040513          	mv	a0,s0
    1e50:	fffff097          	auipc	ra,0xfffff
    1e54:	d6c080e7          	jalr	-660(ra) # bbc <__umodsi3>
    1e58:	03050793          	addi	a5,a0,48
    1e5c:	00278533          	add	a0,a5,sp
    1e60:	fec54783          	lbu	a5,-20(a0)
    1e64:	00098913          	mv	s2,s3
    1e68:	00040513          	mv	a0,s0
    1e6c:	00a00593          	li	a1,10
    1e70:	00f98023          	sb	a5,0(s3)
    1e74:	00040a93          	mv	s5,s0
    1e78:	fffff097          	auipc	ra,0xfffff
    1e7c:	cfc080e7          	jalr	-772(ra) # b74 <__udivsi3>
    1e80:	00198993          	addi	s3,s3,1
    1e84:	00050413          	mv	s0,a0
    1e88:	fd5b60e3          	bltu	s6,s5,1e48 <fatfs_lfn_generate_tail+0x80>
    1e8c:	00098023          	sb	zero,0(s3)
    1e90:	00410713          	addi	a4,sp,4
    1e94:	00090793          	mv	a5,s2
    1e98:	0947f663          	bgeu	a5,s4,1f24 <fatfs_lfn_generate_tail+0x15c>
    1e9c:	00f10713          	addi	a4,sp,15
    1ea0:	00000793          	li	a5,0
    1ea4:	00e96663          	bltu	s2,a4,1eb0 <fatfs_lfn_generate_tail+0xe8>
    1ea8:	41490933          	sub	s2,s2,s4
    1eac:	00190793          	addi	a5,s2,1
    1eb0:	03078793          	addi	a5,a5,48
    1eb4:	002787b3          	add	a5,a5,sp
    1eb8:	000b8593          	mv	a1,s7
    1ebc:	fc078aa3          	sb	zero,-43(a5)
    1ec0:	00b00613          	li	a2,11
    1ec4:	00048513          	mv	a0,s1
    1ec8:	fffff097          	auipc	ra,0xfffff
    1ecc:	d74080e7          	jalr	-652(ra) # c3c <memcpy>
    1ed0:	00410513          	addi	a0,sp,4
    1ed4:	fffff097          	auipc	ra,0xfffff
    1ed8:	d8c080e7          	jalr	-628(ra) # c60 <strlen>
    1edc:	40a484b3          	sub	s1,s1,a0
    1ee0:	00050613          	mv	a2,a0
    1ee4:	00410593          	addi	a1,sp,4
    1ee8:	00848513          	addi	a0,s1,8
    1eec:	fffff097          	auipc	ra,0xfffff
    1ef0:	d50080e7          	jalr	-688(ra) # c3c <memcpy>
    1ef4:	05c12083          	lw	ra,92(sp)
    1ef8:	05812403          	lw	s0,88(sp)
    1efc:	05412483          	lw	s1,84(sp)
    1f00:	05012903          	lw	s2,80(sp)
    1f04:	04c12983          	lw	s3,76(sp)
    1f08:	04812a03          	lw	s4,72(sp)
    1f0c:	04412a83          	lw	s5,68(sp)
    1f10:	04012b03          	lw	s6,64(sp)
    1f14:	03c12b83          	lw	s7,60(sp)
    1f18:	00100513          	li	a0,1
    1f1c:	06010113          	addi	sp,sp,96
    1f20:	00008067          	ret
    1f24:	0007c683          	lbu	a3,0(a5)
    1f28:	00170713          	addi	a4,a4,1
    1f2c:	fff78793          	addi	a5,a5,-1
    1f30:	00d70023          	sb	a3,0(a4)
    1f34:	f65ff06f          	j	1e98 <fatfs_lfn_generate_tail+0xd0>
    1f38:	00000513          	li	a0,0
    1f3c:	00008067          	ret

00001f40 <fatfs_total_path_levels>:
    1f40:	fff00793          	li	a5,-1
    1f44:	06050263          	beqz	a0,1fa8 <fatfs_total_path_levels+0x68>
    1f48:	00054703          	lbu	a4,0(a0)
    1f4c:	02f00793          	li	a5,47
    1f50:	00f71863          	bne	a4,a5,1f60 <fatfs_total_path_levels+0x20>
    1f54:	00150513          	addi	a0,a0,1
    1f58:	00000793          	li	a5,0
    1f5c:	0400006f          	j	1f9c <fatfs_total_path_levels+0x5c>
    1f60:	00154703          	lbu	a4,1(a0)
    1f64:	03a00793          	li	a5,58
    1f68:	00f70a63          	beq	a4,a5,1f7c <fatfs_total_path_levels+0x3c>
    1f6c:	00254683          	lbu	a3,2(a0)
    1f70:	05c00713          	li	a4,92
    1f74:	fff00793          	li	a5,-1
    1f78:	02e69863          	bne	a3,a4,1fa8 <fatfs_total_path_levels+0x68>
    1f7c:	00350513          	addi	a0,a0,3
    1f80:	05c00713          	li	a4,92
    1f84:	fd5ff06f          	j	1f58 <fatfs_total_path_levels+0x18>
    1f88:	00150513          	addi	a0,a0,1
    1f8c:	00e68663          	beq	a3,a4,1f98 <fatfs_total_path_levels+0x58>
    1f90:	00054683          	lbu	a3,0(a0)
    1f94:	fe069ae3          	bnez	a3,1f88 <fatfs_total_path_levels+0x48>
    1f98:	00178793          	addi	a5,a5,1
    1f9c:	00054683          	lbu	a3,0(a0)
    1fa0:	fe0698e3          	bnez	a3,1f90 <fatfs_total_path_levels+0x50>
    1fa4:	fff78793          	addi	a5,a5,-1
    1fa8:	00078513          	mv	a0,a5
    1fac:	00008067          	ret

00001fb0 <fatfs_get_substring>:
    1fb0:	0cd05e63          	blez	a3,208c <fatfs_get_substring+0xdc>
    1fb4:	0c050c63          	beqz	a0,208c <fatfs_get_substring+0xdc>
    1fb8:	fe010113          	addi	sp,sp,-32
    1fbc:	00812c23          	sw	s0,24(sp)
    1fc0:	00112e23          	sw	ra,28(sp)
    1fc4:	00912a23          	sw	s1,20(sp)
    1fc8:	00054483          	lbu	s1,0(a0)
    1fcc:	02f00793          	li	a5,47
    1fd0:	00150413          	addi	s0,a0,1
    1fd4:	02f48463          	beq	s1,a5,1ffc <fatfs_get_substring+0x4c>
    1fd8:	00154703          	lbu	a4,1(a0)
    1fdc:	03a00793          	li	a5,58
    1fe0:	00f70a63          	beq	a4,a5,1ff4 <fatfs_get_substring+0x44>
    1fe4:	00254803          	lbu	a6,2(a0)
    1fe8:	05c00713          	li	a4,92
    1fec:	fff00793          	li	a5,-1
    1ff0:	04e81c63          	bne	a6,a4,2048 <fatfs_get_substring+0x98>
    1ff4:	00350413          	addi	s0,a0,3
    1ff8:	05c00493          	li	s1,92
    1ffc:	00040513          	mv	a0,s0
    2000:	00d12623          	sw	a3,12(sp)
    2004:	00c12423          	sw	a2,8(sp)
    2008:	00b12223          	sw	a1,4(sp)
    200c:	fffff097          	auipc	ra,0xfffff
    2010:	c54080e7          	jalr	-940(ra) # c60 <strlen>
    2014:	00c12683          	lw	a3,12(sp)
    2018:	00412583          	lw	a1,4(sp)
    201c:	00812603          	lw	a2,8(sp)
    2020:	00000713          	li	a4,0
    2024:	00000813          	li	a6,0
    2028:	00000793          	li	a5,0
    202c:	fff68693          	addi	a3,a3,-1
    2030:	00e608b3          	add	a7,a2,a4
    2034:	02a7c663          	blt	a5,a0,2060 <fatfs_get_substring+0xb0>
    2038:	00088023          	sb	zero,0(a7)
    203c:	00064783          	lbu	a5,0(a2)
    2040:	0017b793          	seqz	a5,a5
    2044:	40f007b3          	neg	a5,a5
    2048:	01c12083          	lw	ra,28(sp)
    204c:	01812403          	lw	s0,24(sp)
    2050:	01412483          	lw	s1,20(sp)
    2054:	00078513          	mv	a0,a5
    2058:	02010113          	addi	sp,sp,32
    205c:	00008067          	ret
    2060:	00f40333          	add	t1,s0,a5
    2064:	00034303          	lbu	t1,0(t1)
    2068:	00931863          	bne	t1,s1,2078 <fatfs_get_substring+0xc8>
    206c:	00180813          	addi	a6,a6,1
    2070:	00178793          	addi	a5,a5,1
    2074:	fbdff06f          	j	2030 <fatfs_get_substring+0x80>
    2078:	feb81ce3          	bne	a6,a1,2070 <fatfs_get_substring+0xc0>
    207c:	fed75ae3          	bge	a4,a3,2070 <fatfs_get_substring+0xc0>
    2080:	00170713          	addi	a4,a4,1
    2084:	00688023          	sb	t1,0(a7)
    2088:	fe9ff06f          	j	2070 <fatfs_get_substring+0xc0>
    208c:	fff00793          	li	a5,-1
    2090:	00078513          	mv	a0,a5
    2094:	00008067          	ret

00002098 <fatfs_split_path>:
    2098:	fd010113          	addi	sp,sp,-48
    209c:	02912223          	sw	s1,36(sp)
    20a0:	03212023          	sw	s2,32(sp)
    20a4:	01312e23          	sw	s3,28(sp)
    20a8:	01412c23          	sw	s4,24(sp)
    20ac:	02112623          	sw	ra,44(sp)
    20b0:	02812423          	sw	s0,40(sp)
    20b4:	01512a23          	sw	s5,20(sp)
    20b8:	00050993          	mv	s3,a0
    20bc:	00058493          	mv	s1,a1
    20c0:	00060913          	mv	s2,a2
    20c4:	00068a13          	mv	s4,a3
    20c8:	00e12623          	sw	a4,12(sp)
    20cc:	00000097          	auipc	ra,0x0
    20d0:	e74080e7          	jalr	-396(ra) # 1f40 <fatfs_total_path_levels>
    20d4:	fff00793          	li	a5,-1
    20d8:	02f51863          	bne	a0,a5,2108 <fatfs_split_path+0x70>
    20dc:	fff00413          	li	s0,-1
    20e0:	02c12083          	lw	ra,44(sp)
    20e4:	00040513          	mv	a0,s0
    20e8:	02812403          	lw	s0,40(sp)
    20ec:	02412483          	lw	s1,36(sp)
    20f0:	02012903          	lw	s2,32(sp)
    20f4:	01c12983          	lw	s3,28(sp)
    20f8:	01812a03          	lw	s4,24(sp)
    20fc:	01412a83          	lw	s5,20(sp)
    2100:	03010113          	addi	sp,sp,48
    2104:	00008067          	ret
    2108:	00c12683          	lw	a3,12(sp)
    210c:	00050593          	mv	a1,a0
    2110:	00a12623          	sw	a0,12(sp)
    2114:	000a0613          	mv	a2,s4
    2118:	00098513          	mv	a0,s3
    211c:	00000097          	auipc	ra,0x0
    2120:	e94080e7          	jalr	-364(ra) # 1fb0 <fatfs_get_substring>
    2124:	00050413          	mv	s0,a0
    2128:	fa051ae3          	bnez	a0,20dc <fatfs_split_path+0x44>
    212c:	00c12583          	lw	a1,12(sp)
    2130:	00059663          	bnez	a1,213c <fatfs_split_path+0xa4>
    2134:	00048023          	sb	zero,0(s1)
    2138:	fa9ff06f          	j	20e0 <fatfs_split_path+0x48>
    213c:	00098513          	mv	a0,s3
    2140:	fffff097          	auipc	ra,0xfffff
    2144:	b20080e7          	jalr	-1248(ra) # c60 <strlen>
    2148:	00050a93          	mv	s5,a0
    214c:	000a0513          	mv	a0,s4
    2150:	fffff097          	auipc	ra,0xfffff
    2154:	b10080e7          	jalr	-1264(ra) # c60 <strlen>
    2158:	40aa8633          	sub	a2,s5,a0
    215c:	00c95463          	bge	s2,a2,2164 <fatfs_split_path+0xcc>
    2160:	00090613          	mv	a2,s2
    2164:	00048513          	mv	a0,s1
    2168:	00098593          	mv	a1,s3
    216c:	00c12623          	sw	a2,12(sp)
    2170:	fffff097          	auipc	ra,0xfffff
    2174:	acc080e7          	jalr	-1332(ra) # c3c <memcpy>
    2178:	00c12603          	lw	a2,12(sp)
    217c:	00c484b3          	add	s1,s1,a2
    2180:	fe048fa3          	sb	zero,-1(s1)
    2184:	f5dff06f          	j	20e0 <fatfs_split_path+0x48>

00002188 <fatfs_compare_names>:
    2188:	fd010113          	addi	sp,sp,-48
    218c:	02112623          	sw	ra,44(sp)
    2190:	03212023          	sw	s2,32(sp)
    2194:	01312e23          	sw	s3,28(sp)
    2198:	01412c23          	sw	s4,24(sp)
    219c:	01512a23          	sw	s5,20(sp)
    21a0:	00058a13          	mv	s4,a1
    21a4:	02812423          	sw	s0,40(sp)
    21a8:	02912223          	sw	s1,36(sp)
    21ac:	01612823          	sw	s6,16(sp)
    21b0:	01712623          	sw	s7,12(sp)
    21b4:	01812423          	sw	s8,8(sp)
    21b8:	00050a93          	mv	s5,a0
    21bc:	fffff097          	auipc	ra,0xfffff
    21c0:	2bc080e7          	jalr	700(ra) # 1478 <FileString_GetExtension>
    21c4:	00050993          	mv	s3,a0
    21c8:	000a0513          	mv	a0,s4
    21cc:	fffff097          	auipc	ra,0xfffff
    21d0:	2ac080e7          	jalr	684(ra) # 1478 <FileString_GetExtension>
    21d4:	fff00793          	li	a5,-1
    21d8:	00050913          	mv	s2,a0
    21dc:	02f99e63          	bne	s3,a5,2218 <fatfs_compare_names+0x90>
    21e0:	0f350063          	beq	a0,s3,22c0 <fatfs_compare_names+0x138>
    21e4:	00000513          	li	a0,0
    21e8:	02c12083          	lw	ra,44(sp)
    21ec:	02812403          	lw	s0,40(sp)
    21f0:	02412483          	lw	s1,36(sp)
    21f4:	02012903          	lw	s2,32(sp)
    21f8:	01c12983          	lw	s3,28(sp)
    21fc:	01812a03          	lw	s4,24(sp)
    2200:	01412a83          	lw	s5,20(sp)
    2204:	01012b03          	lw	s6,16(sp)
    2208:	00c12b83          	lw	s7,12(sp)
    220c:	00812c03          	lw	s8,8(sp)
    2210:	03010113          	addi	sp,sp,48
    2214:	00008067          	ret
    2218:	fcf506e3          	beq	a0,a5,21e4 <fatfs_compare_names+0x5c>
    221c:	00198793          	addi	a5,s3,1
    2220:	00fa8b33          	add	s6,s5,a5
    2224:	00050413          	mv	s0,a0
    2228:	00150793          	addi	a5,a0,1
    222c:	000b0513          	mv	a0,s6
    2230:	00fa0bb3          	add	s7,s4,a5
    2234:	fffff097          	auipc	ra,0xfffff
    2238:	a2c080e7          	jalr	-1492(ra) # c60 <strlen>
    223c:	00050c13          	mv	s8,a0
    2240:	000b8513          	mv	a0,s7
    2244:	00098493          	mv	s1,s3
    2248:	fffff097          	auipc	ra,0xfffff
    224c:	a18080e7          	jalr	-1512(ra) # c60 <strlen>
    2250:	f8ac1ae3          	bne	s8,a0,21e4 <fatfs_compare_names+0x5c>
    2254:	000b0513          	mv	a0,s6
    2258:	fffff097          	auipc	ra,0xfffff
    225c:	a08080e7          	jalr	-1528(ra) # c60 <strlen>
    2260:	00050613          	mv	a2,a0
    2264:	000b8593          	mv	a1,s7
    2268:	000b0513          	mv	a0,s6
    226c:	fffff097          	auipc	ra,0xfffff
    2270:	19c080e7          	jalr	412(ra) # 1408 <FileString_StrCmpNoCase>
    2274:	f60518e3          	bnez	a0,21e4 <fatfs_compare_names+0x5c>
    2278:	fff48793          	addi	a5,s1,-1
    227c:	00fa87b3          	add	a5,s5,a5
    2280:	41378733          	sub	a4,a5,s3
    2284:	02000693          	li	a3,32
    2288:	06e79263          	bne	a5,a4,22ec <fatfs_compare_names+0x164>
    228c:	fff40793          	addi	a5,s0,-1
    2290:	00fa07b3          	add	a5,s4,a5
    2294:	41278733          	sub	a4,a5,s2
    2298:	02000693          	li	a3,32
    229c:	06e79263          	bne	a5,a4,2300 <fatfs_compare_names+0x178>
    22a0:	f53912e3          	bne	s2,s3,21e4 <fatfs_compare_names+0x5c>
    22a4:	00090613          	mv	a2,s2
    22a8:	000a0593          	mv	a1,s4
    22ac:	000a8513          	mv	a0,s5
    22b0:	fffff097          	auipc	ra,0xfffff
    22b4:	158080e7          	jalr	344(ra) # 1408 <FileString_StrCmpNoCase>
    22b8:	00153513          	seqz	a0,a0
    22bc:	f2dff06f          	j	21e8 <fatfs_compare_names+0x60>
    22c0:	000a8513          	mv	a0,s5
    22c4:	fffff097          	auipc	ra,0xfffff
    22c8:	99c080e7          	jalr	-1636(ra) # c60 <strlen>
    22cc:	00050493          	mv	s1,a0
    22d0:	00050993          	mv	s3,a0
    22d4:	000a0513          	mv	a0,s4
    22d8:	fffff097          	auipc	ra,0xfffff
    22dc:	988080e7          	jalr	-1656(ra) # c60 <strlen>
    22e0:	00050413          	mv	s0,a0
    22e4:	00050913          	mv	s2,a0
    22e8:	f91ff06f          	j	2278 <fatfs_compare_names+0xf0>
    22ec:	0007c603          	lbu	a2,0(a5)
    22f0:	f8d61ee3          	bne	a2,a3,228c <fatfs_compare_names+0x104>
    22f4:	415789b3          	sub	s3,a5,s5
    22f8:	fff78793          	addi	a5,a5,-1
    22fc:	f8dff06f          	j	2288 <fatfs_compare_names+0x100>
    2300:	0007c603          	lbu	a2,0(a5)
    2304:	f8d61ee3          	bne	a2,a3,22a0 <fatfs_compare_names+0x118>
    2308:	41478933          	sub	s2,a5,s4
    230c:	fff78793          	addi	a5,a5,-1
    2310:	f8dff06f          	j	229c <fatfs_compare_names+0x114>

00002314 <_check_file_open>:
    2314:	fe010113          	addi	sp,sp,-32
    2318:	000057b7          	lui	a5,0x5
    231c:	00812c23          	sw	s0,24(sp)
    2320:	a187a403          	lw	s0,-1512(a5) # 4a18 <_open_file_list>
    2324:	00912a23          	sw	s1,20(sp)
    2328:	00112e23          	sw	ra,28(sp)
    232c:	01212823          	sw	s2,16(sp)
    2330:	01312623          	sw	s3,12(sp)
    2334:	00050493          	mv	s1,a0
    2338:	00041663          	bnez	s0,2344 <_check_file_open+0x30>
    233c:	00000513          	li	a0,0
    2340:	03c0006f          	j	237c <_check_file_open+0x68>
    2344:	bc440793          	addi	a5,s0,-1084
    2348:	00f49663          	bne	s1,a5,2354 <_check_file_open+0x40>
    234c:	00442403          	lw	s0,4(s0)
    2350:	fe9ff06f          	j	2338 <_check_file_open+0x24>
    2354:	01448593          	addi	a1,s1,20
    2358:	bd840513          	addi	a0,s0,-1064
    235c:	00000097          	auipc	ra,0x0
    2360:	e2c080e7          	jalr	-468(ra) # 2188 <fatfs_compare_names>
    2364:	fe0504e3          	beqz	a0,234c <_check_file_open+0x38>
    2368:	11848593          	addi	a1,s1,280
    236c:	cdc40513          	addi	a0,s0,-804
    2370:	00000097          	auipc	ra,0x0
    2374:	e18080e7          	jalr	-488(ra) # 2188 <fatfs_compare_names>
    2378:	fc050ae3          	beqz	a0,234c <_check_file_open+0x38>
    237c:	01c12083          	lw	ra,28(sp)
    2380:	01812403          	lw	s0,24(sp)
    2384:	01412483          	lw	s1,20(sp)
    2388:	01012903          	lw	s2,16(sp)
    238c:	00c12983          	lw	s3,12(sp)
    2390:	02010113          	addi	sp,sp,32
    2394:	00008067          	ret

00002398 <fatfs_get_sfn_display_name>:
    2398:	00000713          	li	a4,0
    239c:	02000613          	li	a2,32
    23a0:	01900813          	li	a6,25
    23a4:	0005c783          	lbu	a5,0(a1)
    23a8:	00078663          	beqz	a5,23b4 <fatfs_get_sfn_display_name+0x1c>
    23ac:	ff470693          	addi	a3,a4,-12
    23b0:	00069863          	bnez	a3,23c0 <fatfs_get_sfn_display_name+0x28>
    23b4:	00050023          	sb	zero,0(a0)
    23b8:	00100513          	li	a0,1
    23bc:	00008067          	ret
    23c0:	00158593          	addi	a1,a1,1
    23c4:	fec780e3          	beq	a5,a2,23a4 <fatfs_get_sfn_display_name+0xc>
    23c8:	fbf78693          	addi	a3,a5,-65
    23cc:	0ff6f693          	zext.b	a3,a3
    23d0:	00d86663          	bltu	a6,a3,23dc <fatfs_get_sfn_display_name+0x44>
    23d4:	02078793          	addi	a5,a5,32
    23d8:	0ff7f793          	zext.b	a5,a5
    23dc:	00f50023          	sb	a5,0(a0)
    23e0:	00170713          	addi	a4,a4,1
    23e4:	00150513          	addi	a0,a0,1
    23e8:	fbdff06f          	j	23a4 <fatfs_get_sfn_display_name+0xc>

000023ec <fatfs_fat_init>:
    23ec:	ff010113          	addi	sp,sp,-16
    23f0:	00812423          	sw	s0,8(sp)
    23f4:	00912223          	sw	s1,4(sp)
    23f8:	00112623          	sw	ra,12(sp)
    23fc:	fff00793          	li	a5,-1
    2400:	25850493          	addi	s1,a0,600
    2404:	00050413          	mv	s0,a0
    2408:	44f52c23          	sw	a5,1112(a0)
    240c:	24052a23          	sw	zero,596(a0)
    2410:	44052e23          	sw	zero,1116(a0)
    2414:	20000613          	li	a2,512
    2418:	00048513          	mv	a0,s1
    241c:	00000593          	li	a1,0
    2420:	fffff097          	auipc	ra,0xfffff
    2424:	800080e7          	jalr	-2048(ra) # c20 <memset>
    2428:	25442783          	lw	a5,596(s0)
    242c:	00c12083          	lw	ra,12(sp)
    2430:	24942a23          	sw	s1,596(s0)
    2434:	46042023          	sw	zero,1120(s0)
    2438:	46f42223          	sw	a5,1124(s0)
    243c:	00812403          	lw	s0,8(sp)
    2440:	00412483          	lw	s1,4(sp)
    2444:	01010113          	addi	sp,sp,16
    2448:	00008067          	ret

0000244c <fatfs_init>:
    244c:	fd010113          	addi	sp,sp,-48
    2450:	02812423          	sw	s0,40(sp)
    2454:	02112623          	sw	ra,44(sp)
    2458:	02912223          	sw	s1,36(sp)
    245c:	03212023          	sw	s2,32(sp)
    2460:	01312e23          	sw	s3,28(sp)
    2464:	fff00793          	li	a5,-1
    2468:	24f52223          	sw	a5,580(a0)
    246c:	24052423          	sw	zero,584(a0)
    2470:	02052223          	sw	zero,36(a0)
    2474:	00050413          	mv	s0,a0
    2478:	00000097          	auipc	ra,0x0
    247c:	f74080e7          	jalr	-140(ra) # 23ec <fatfs_fat_init>
    2480:	03442783          	lw	a5,52(s0)
    2484:	02079463          	bnez	a5,24ac <fatfs_init+0x60>
    2488:	fff00713          	li	a4,-1
    248c:	02c12083          	lw	ra,44(sp)
    2490:	02812403          	lw	s0,40(sp)
    2494:	02412483          	lw	s1,36(sp)
    2498:	02012903          	lw	s2,32(sp)
    249c:	01c12983          	lw	s3,28(sp)
    24a0:	00070513          	mv	a0,a4
    24a4:	03010113          	addi	sp,sp,48
    24a8:	00008067          	ret
    24ac:	04440593          	addi	a1,s0,68
    24b0:	00100613          	li	a2,1
    24b4:	00000513          	li	a0,0
    24b8:	00b12623          	sw	a1,12(sp)
    24bc:	000780e7          	jalr	a5
    24c0:	fc0504e3          	beqz	a0,2488 <fatfs_init+0x3c>
    24c4:	24244703          	lbu	a4,578(s0)
    24c8:	05500793          	li	a5,85
    24cc:	00c12583          	lw	a1,12(sp)
    24d0:	00f70663          	beq	a4,a5,24dc <fatfs_init+0x90>
    24d4:	ffd00713          	li	a4,-3
    24d8:	fb5ff06f          	j	248c <fatfs_init+0x40>
    24dc:	24344703          	lbu	a4,579(s0)
    24e0:	0aa00793          	li	a5,170
    24e4:	fef718e3          	bne	a4,a5,24d4 <fatfs_init+0x88>
    24e8:	20644783          	lbu	a5,518(s0)
    24ec:	00600713          	li	a4,6
    24f0:	02f76463          	bltu	a4,a5,2518 <fatfs_init+0xcc>
    24f4:	00400713          	li	a4,4
    24f8:	00f76663          	bltu	a4,a5,2504 <fatfs_init+0xb8>
    24fc:	00000513          	li	a0,0
    2500:	02078663          	beqz	a5,252c <fatfs_init+0xe0>
    2504:	20c45503          	lhu	a0,524(s0)
    2508:	20a45783          	lhu	a5,522(s0)
    250c:	01051513          	slli	a0,a0,0x10
    2510:	00f56533          	or	a0,a0,a5
    2514:	0180006f          	j	252c <fatfs_init+0xe0>
    2518:	00c00713          	li	a4,12
    251c:	12f76663          	bltu	a4,a5,2648 <fatfs_init+0x1fc>
    2520:	00a00713          	li	a4,10
    2524:	00000513          	li	a0,0
    2528:	fcf76ee3          	bltu	a4,a5,2504 <fatfs_init+0xb8>
    252c:	03442783          	lw	a5,52(s0)
    2530:	00a42e23          	sw	a0,28(s0)
    2534:	00100613          	li	a2,1
    2538:	000780e7          	jalr	a5
    253c:	f40506e3          	beqz	a0,2488 <fatfs_init+0x3c>
    2540:	05044783          	lbu	a5,80(s0)
    2544:	04f44703          	lbu	a4,79(s0)
    2548:	20000693          	li	a3,512
    254c:	00879793          	slli	a5,a5,0x8
    2550:	00e7e7b3          	or	a5,a5,a4
    2554:	ffe00713          	li	a4,-2
    2558:	f2d79ae3          	bne	a5,a3,248c <fatfs_init+0x40>
    255c:	05644483          	lbu	s1,86(s0)
    2560:	05544783          	lbu	a5,85(s0)
    2564:	05144983          	lbu	s3,81(s0)
    2568:	00849493          	slli	s1,s1,0x8
    256c:	05a45583          	lhu	a1,90(s0)
    2570:	00f4e4b3          	or	s1,s1,a5
    2574:	01340023          	sb	s3,0(s0)
    2578:	02941423          	sh	s1,40(s0)
    257c:	05245903          	lhu	s2,82(s0)
    2580:	05444503          	lbu	a0,84(s0)
    2584:	00059463          	bnez	a1,258c <fatfs_init+0x140>
    2588:	06842583          	lw	a1,104(s0)
    258c:	07042783          	lw	a5,112(s0)
    2590:	02b42023          	sw	a1,32(s0)
    2594:	00549493          	slli	s1,s1,0x5
    2598:	00f42423          	sw	a5,8(s0)
    259c:	07445783          	lhu	a5,116(s0)
    25a0:	1ff48493          	addi	s1,s1,511
    25a4:	4094d493          	srai	s1,s1,0x9
    25a8:	00f41c23          	sh	a5,24(s0)
    25ac:	fffff097          	auipc	ra,0xfffff
    25b0:	dc4080e7          	jalr	-572(ra) # 1370 <__mulsi3>
    25b4:	00a907b3          	add	a5,s2,a0
    25b8:	00f42623          	sw	a5,12(s0)
    25bc:	01c42783          	lw	a5,28(s0)
    25c0:	24245703          	lhu	a4,578(s0)
    25c4:	00942823          	sw	s1,16(s0)
    25c8:	00f907b3          	add	a5,s2,a5
    25cc:	00f42a23          	sw	a5,20(s0)
    25d0:	00f507b3          	add	a5,a0,a5
    25d4:	00f42223          	sw	a5,4(s0)
    25d8:	0000b7b7          	lui	a5,0xb
    25dc:	a5578793          	addi	a5,a5,-1451 # aa55 <framebuffer+0x3ead>
    25e0:	eef71ae3          	bne	a4,a5,24d4 <fatfs_init+0x88>
    25e4:	05844783          	lbu	a5,88(s0)
    25e8:	05744703          	lbu	a4,87(s0)
    25ec:	00879793          	slli	a5,a5,0x8
    25f0:	00e7e7b3          	or	a5,a5,a4
    25f4:	00079463          	bnez	a5,25fc <fatfs_init+0x1b0>
    25f8:	06442783          	lw	a5,100(s0)
    25fc:	ffb00713          	li	a4,-5
    2600:	e80986e3          	beqz	s3,248c <fatfs_init+0x40>
    2604:	00990933          	add	s2,s2,s1
    2608:	00a90533          	add	a0,s2,a0
    260c:	40a78533          	sub	a0,a5,a0
    2610:	00098593          	mv	a1,s3
    2614:	ffffe097          	auipc	ra,0xffffe
    2618:	560080e7          	jalr	1376(ra) # b74 <__udivsi3>
    261c:	000017b7          	lui	a5,0x1
    2620:	ff478793          	addi	a5,a5,-12 # ff4 <display_putchar+0xd0>
    2624:	ffb00713          	li	a4,-5
    2628:	e6a7f2e3          	bgeu	a5,a0,248c <fatfs_init+0x40>
    262c:	000107b7          	lui	a5,0x10
    2630:	ff478793          	addi	a5,a5,-12 # fff4 <_files+0x4fe4>
    2634:	02a7e663          	bltu	a5,a0,2660 <fatfs_init+0x214>
    2638:	00042423          	sw	zero,8(s0)
    263c:	02042823          	sw	zero,48(s0)
    2640:	00000713          	li	a4,0
    2644:	e49ff06f          	j	248c <fatfs_init+0x40>
    2648:	ff278793          	addi	a5,a5,-14
    264c:	0ff7f793          	zext.b	a5,a5
    2650:	00100713          	li	a4,1
    2654:	00000513          	li	a0,0
    2658:	eaf776e3          	bgeu	a4,a5,2504 <fatfs_init+0xb8>
    265c:	ed1ff06f          	j	252c <fatfs_init+0xe0>
    2660:	00100793          	li	a5,1
    2664:	02f42823          	sw	a5,48(s0)
    2668:	fd9ff06f          	j	2640 <fatfs_init+0x1f4>

0000266c <fl_attach_media>:
    266c:	000057b7          	lui	a5,0x5
    2670:	a247a783          	lw	a5,-1500(a5) # 4a24 <_filelib_init>
    2674:	fe010113          	addi	sp,sp,-32
    2678:	00812c23          	sw	s0,24(sp)
    267c:	00112e23          	sw	ra,28(sp)
    2680:	00050413          	mv	s0,a0
    2684:	00079a63          	bnez	a5,2698 <fl_attach_media+0x2c>
    2688:	00b12623          	sw	a1,12(sp)
    268c:	fffff097          	auipc	ra,0xfffff
    2690:	178080e7          	jalr	376(ra) # 1804 <fl_init>
    2694:	00c12583          	lw	a1,12(sp)
    2698:	0000b7b7          	lui	a5,0xb
    269c:	ba878513          	addi	a0,a5,-1112 # aba8 <_fs>
    26a0:	02b52c23          	sw	a1,56(a0)
    26a4:	02852a23          	sw	s0,52(a0)
    26a8:	00000097          	auipc	ra,0x0
    26ac:	da4080e7          	jalr	-604(ra) # 244c <fatfs_init>
    26b0:	00050593          	mv	a1,a0
    26b4:	02050863          	beqz	a0,26e4 <fl_attach_media+0x78>
    26b8:	00a12623          	sw	a0,12(sp)
    26bc:	00004537          	lui	a0,0x4
    26c0:	7b050513          	addi	a0,a0,1968 # 47b0 <LEDS+0xa8>
    26c4:	fffff097          	auipc	ra,0xfffff
    26c8:	b70080e7          	jalr	-1168(ra) # 1234 <printf>
    26cc:	00c12583          	lw	a1,12(sp)
    26d0:	01c12083          	lw	ra,28(sp)
    26d4:	01812403          	lw	s0,24(sp)
    26d8:	00058513          	mv	a0,a1
    26dc:	02010113          	addi	sp,sp,32
    26e0:	00008067          	ret
    26e4:	000057b7          	lui	a5,0x5
    26e8:	00100713          	li	a4,1
    26ec:	a2e7a023          	sw	a4,-1504(a5) # 4a20 <_filelib_valid>
    26f0:	fe1ff06f          	j	26d0 <fl_attach_media+0x64>

000026f4 <fatfs_fat_purge>:
    26f4:	25452583          	lw	a1,596(a0)
    26f8:	fe010113          	addi	sp,sp,-32
    26fc:	00812c23          	sw	s0,24(sp)
    2700:	00112e23          	sw	ra,28(sp)
    2704:	00050413          	mv	s0,a0
    2708:	00059663          	bnez	a1,2714 <fatfs_fat_purge+0x20>
    270c:	00100513          	li	a0,1
    2710:	02c0006f          	j	273c <fatfs_fat_purge+0x48>
    2714:	2045a783          	lw	a5,516(a1)
    2718:	00079663          	bnez	a5,2724 <fatfs_fat_purge+0x30>
    271c:	20c5a583          	lw	a1,524(a1)
    2720:	fe9ff06f          	j	2708 <fatfs_fat_purge+0x14>
    2724:	00040513          	mv	a0,s0
    2728:	00b12623          	sw	a1,12(sp)
    272c:	fffff097          	auipc	ra,0xfffff
    2730:	d78080e7          	jalr	-648(ra) # 14a4 <fatfs_fat_writeback>
    2734:	00c12583          	lw	a1,12(sp)
    2738:	fe0512e3          	bnez	a0,271c <fatfs_fat_purge+0x28>
    273c:	01c12083          	lw	ra,28(sp)
    2740:	01812403          	lw	s0,24(sp)
    2744:	02010113          	addi	sp,sp,32
    2748:	00008067          	ret

0000274c <fatfs_find_next_cluster>:
    274c:	ff010113          	addi	sp,sp,-16
    2750:	00812423          	sw	s0,8(sp)
    2754:	01212023          	sw	s2,0(sp)
    2758:	00112623          	sw	ra,12(sp)
    275c:	00912223          	sw	s1,4(sp)
    2760:	00050913          	mv	s2,a0
    2764:	00200413          	li	s0,2
    2768:	00058463          	beqz	a1,2770 <fatfs_find_next_cluster+0x24>
    276c:	00058413          	mv	s0,a1
    2770:	03092783          	lw	a5,48(s2)
    2774:	00745493          	srli	s1,s0,0x7
    2778:	00079463          	bnez	a5,2780 <fatfs_find_next_cluster+0x34>
    277c:	00845493          	srli	s1,s0,0x8
    2780:	01492583          	lw	a1,20(s2)
    2784:	00090513          	mv	a0,s2
    2788:	00b485b3          	add	a1,s1,a1
    278c:	fffff097          	auipc	ra,0xfffff
    2790:	d9c080e7          	jalr	-612(ra) # 1528 <fatfs_fat_read_sector>
    2794:	00050793          	mv	a5,a0
    2798:	fff00513          	li	a0,-1
    279c:	04078863          	beqz	a5,27ec <fatfs_find_next_cluster+0xa0>
    27a0:	03092703          	lw	a4,48(s2)
    27a4:	2087a783          	lw	a5,520(a5)
    27a8:	04071e63          	bnez	a4,2804 <fatfs_find_next_cluster+0xb8>
    27ac:	00849493          	slli	s1,s1,0x8
    27b0:	40940433          	sub	s0,s0,s1
    27b4:	00141413          	slli	s0,s0,0x1
    27b8:	01041413          	slli	s0,s0,0x10
    27bc:	01045413          	srli	s0,s0,0x10
    27c0:	008787b3          	add	a5,a5,s0
    27c4:	0017c503          	lbu	a0,1(a5)
    27c8:	0007c783          	lbu	a5,0(a5)
    27cc:	00851513          	slli	a0,a0,0x8
    27d0:	00f50533          	add	a0,a0,a5
    27d4:	ffff07b7          	lui	a5,0xffff0
    27d8:	00878793          	addi	a5,a5,8 # ffff0008 <__stacktop+0xfffe0008>
    27dc:	00f507b3          	add	a5,a0,a5
    27e0:	00700713          	li	a4,7
    27e4:	00f76463          	bltu	a4,a5,27ec <fatfs_find_next_cluster+0xa0>
    27e8:	fff00513          	li	a0,-1
    27ec:	00c12083          	lw	ra,12(sp)
    27f0:	00812403          	lw	s0,8(sp)
    27f4:	00412483          	lw	s1,4(sp)
    27f8:	00012903          	lw	s2,0(sp)
    27fc:	01010113          	addi	sp,sp,16
    2800:	00008067          	ret
    2804:	00749493          	slli	s1,s1,0x7
    2808:	40940433          	sub	s0,s0,s1
    280c:	00241413          	slli	s0,s0,0x2
    2810:	01041413          	slli	s0,s0,0x10
    2814:	01045413          	srli	s0,s0,0x10
    2818:	008787b3          	add	a5,a5,s0
    281c:	0037c503          	lbu	a0,3(a5)
    2820:	0027c703          	lbu	a4,2(a5)
    2824:	01851513          	slli	a0,a0,0x18
    2828:	01071713          	slli	a4,a4,0x10
    282c:	00e50533          	add	a0,a0,a4
    2830:	0007c703          	lbu	a4,0(a5)
    2834:	0017c783          	lbu	a5,1(a5)
    2838:	00e50533          	add	a0,a0,a4
    283c:	00879793          	slli	a5,a5,0x8
    2840:	00f50533          	add	a0,a0,a5
    2844:	00451513          	slli	a0,a0,0x4
    2848:	00455513          	srli	a0,a0,0x4
    284c:	f00007b7          	lui	a5,0xf0000
    2850:	f89ff06f          	j	27d8 <fatfs_find_next_cluster+0x8c>

00002854 <fatfs_sector_reader>:
    2854:	03052783          	lw	a5,48(a0)
    2858:	fe010113          	addi	sp,sp,-32
    285c:	00812c23          	sw	s0,24(sp)
    2860:	01212823          	sw	s2,16(sp)
    2864:	01512223          	sw	s5,4(sp)
    2868:	00112e23          	sw	ra,28(sp)
    286c:	00912a23          	sw	s1,20(sp)
    2870:	01312623          	sw	s3,12(sp)
    2874:	01412423          	sw	s4,8(sp)
    2878:	01612023          	sw	s6,0(sp)
    287c:	00f5e7b3          	or	a5,a1,a5
    2880:	00050413          	mv	s0,a0
    2884:	00060913          	mv	s2,a2
    2888:	00068a93          	mv	s5,a3
    288c:	08079063          	bnez	a5,290c <fatfs_sector_reader+0xb8>
    2890:	01052783          	lw	a5,16(a0)
    2894:	02f66863          	bltu	a2,a5,28c4 <fatfs_sector_reader+0x70>
    2898:	00000513          	li	a0,0
    289c:	01c12083          	lw	ra,28(sp)
    28a0:	01812403          	lw	s0,24(sp)
    28a4:	01412483          	lw	s1,20(sp)
    28a8:	01012903          	lw	s2,16(sp)
    28ac:	00c12983          	lw	s3,12(sp)
    28b0:	00812a03          	lw	s4,8(sp)
    28b4:	00412a83          	lw	s5,4(sp)
    28b8:	00012b03          	lw	s6,0(sp)
    28bc:	02010113          	addi	sp,sp,32
    28c0:	00008067          	ret
    28c4:	01c52503          	lw	a0,28(a0)
    28c8:	00c42783          	lw	a5,12(s0)
    28cc:	00f50533          	add	a0,a0,a5
    28d0:	01250533          	add	a0,a0,s2
    28d4:	0a0a8663          	beqz	s5,2980 <fatfs_sector_reader+0x12c>
    28d8:	03442783          	lw	a5,52(s0)
    28dc:	00100613          	li	a2,1
    28e0:	000a8593          	mv	a1,s5
    28e4:	01812403          	lw	s0,24(sp)
    28e8:	01c12083          	lw	ra,28(sp)
    28ec:	01412483          	lw	s1,20(sp)
    28f0:	01012903          	lw	s2,16(sp)
    28f4:	00c12983          	lw	s3,12(sp)
    28f8:	00812a03          	lw	s4,8(sp)
    28fc:	00412a83          	lw	s5,4(sp)
    2900:	00012b03          	lw	s6,0(sp)
    2904:	02010113          	addi	sp,sp,32
    2908:	00078067          	jr	a5 # f0000000 <__stacktop+0xefff0000>
    290c:	00054783          	lbu	a5,0(a0)
    2910:	00058493          	mv	s1,a1
    2914:	00060513          	mv	a0,a2
    2918:	00078593          	mv	a1,a5
    291c:	00078a13          	mv	s4,a5
    2920:	ffffe097          	auipc	ra,0xffffe
    2924:	254080e7          	jalr	596(ra) # b74 <__udivsi3>
    2928:	00050b13          	mv	s6,a0
    292c:	00000993          	li	s3,0
    2930:	03699a63          	bne	s3,s6,2964 <fatfs_sector_reader+0x110>
    2934:	fff00793          	li	a5,-1
    2938:	f6f480e3          	beq	s1,a5,2898 <fatfs_sector_reader+0x44>
    293c:	000a0593          	mv	a1,s4
    2940:	00090513          	mv	a0,s2
    2944:	ffffe097          	auipc	ra,0xffffe
    2948:	278080e7          	jalr	632(ra) # bbc <__umodsi3>
    294c:	00050913          	mv	s2,a0
    2950:	00048593          	mv	a1,s1
    2954:	00040513          	mv	a0,s0
    2958:	fffff097          	auipc	ra,0xfffff
    295c:	d7c080e7          	jalr	-644(ra) # 16d4 <fatfs_lba_of_cluster>
    2960:	f71ff06f          	j	28d0 <fatfs_sector_reader+0x7c>
    2964:	00048593          	mv	a1,s1
    2968:	00040513          	mv	a0,s0
    296c:	00000097          	auipc	ra,0x0
    2970:	de0080e7          	jalr	-544(ra) # 274c <fatfs_find_next_cluster>
    2974:	00050493          	mv	s1,a0
    2978:	00198993          	addi	s3,s3,1
    297c:	fb5ff06f          	j	2930 <fatfs_sector_reader+0xdc>
    2980:	24442783          	lw	a5,580(s0)
    2984:	00a78c63          	beq	a5,a0,299c <fatfs_sector_reader+0x148>
    2988:	03442783          	lw	a5,52(s0)
    298c:	24a42223          	sw	a0,580(s0)
    2990:	00100613          	li	a2,1
    2994:	04440593          	addi	a1,s0,68
    2998:	f4dff06f          	j	28e4 <fatfs_sector_reader+0x90>
    299c:	00100513          	li	a0,1
    29a0:	efdff06f          	j	289c <fatfs_sector_reader+0x48>

000029a4 <fatfs_get_file_entry>:
    29a4:	eb010113          	addi	sp,sp,-336
    29a8:	14812423          	sw	s0,328(sp)
    29ac:	14912223          	sw	s1,324(sp)
    29b0:	13312e23          	sw	s3,316(sp)
    29b4:	13712623          	sw	s7,300(sp)
    29b8:	13812423          	sw	s8,296(sp)
    29bc:	13912223          	sw	s9,292(sp)
    29c0:	14112623          	sw	ra,332(sp)
    29c4:	15212023          	sw	s2,320(sp)
    29c8:	13412c23          	sw	s4,312(sp)
    29cc:	13512a23          	sw	s5,308(sp)
    29d0:	13612823          	sw	s6,304(sp)
    29d4:	00050993          	mv	s3,a0
    29d8:	00058c93          	mv	s9,a1
    29dc:	00060b93          	mv	s7,a2
    29e0:	00068c13          	mv	s8,a3
    29e4:	10010ea3          	sb	zero,285(sp)
    29e8:	01810413          	addi	s0,sp,24
    29ec:	11c10493          	addi	s1,sp,284
    29f0:	00040513          	mv	a0,s0
    29f4:	00d00613          	li	a2,13
    29f8:	00000593          	li	a1,0
    29fc:	00d40413          	addi	s0,s0,13
    2a00:	ffffe097          	auipc	ra,0xffffe
    2a04:	220080e7          	jalr	544(ra) # c20 <memset>
    2a08:	fe9414e3          	bne	s0,s1,29f0 <fatfs_get_file_entry+0x4c>
    2a0c:	00000493          	li	s1,0
    2a10:	24498a13          	addi	s4,s3,580
    2a14:	00810913          	addi	s2,sp,8
    2a18:	00800a93          	li	s5,8
    2a1c:	02e00b13          	li	s6,46
    2a20:	00000693          	li	a3,0
    2a24:	00048613          	mv	a2,s1
    2a28:	000c8593          	mv	a1,s9
    2a2c:	00098513          	mv	a0,s3
    2a30:	00000097          	auipc	ra,0x0
    2a34:	e24080e7          	jalr	-476(ra) # 2854 <fatfs_sector_reader>
    2a38:	08050c63          	beqz	a0,2ad0 <fatfs_get_file_entry+0x12c>
    2a3c:	00148493          	addi	s1,s1,1
    2a40:	04498413          	addi	s0,s3,68
    2a44:	00040513          	mv	a0,s0
    2a48:	fffff097          	auipc	ra,0xfffff
    2a4c:	f34080e7          	jalr	-204(ra) # 197c <fatfs_entry_lfn_text>
    2a50:	02050063          	beqz	a0,2a70 <fatfs_get_file_entry+0xcc>
    2a54:	00040593          	mv	a1,s0
    2a58:	01810513          	addi	a0,sp,24
    2a5c:	fffff097          	auipc	ra,0xfffff
    2a60:	e18080e7          	jalr	-488(ra) # 1874 <fatfs_lfn_cache_entry>
    2a64:	02040413          	addi	s0,s0,32
    2a68:	fd441ee3          	bne	s0,s4,2a44 <fatfs_get_file_entry+0xa0>
    2a6c:	fb5ff06f          	j	2a20 <fatfs_get_file_entry+0x7c>
    2a70:	00040513          	mv	a0,s0
    2a74:	fffff097          	auipc	ra,0xfffff
    2a78:	f1c080e7          	jalr	-228(ra) # 1990 <fatfs_entry_lfn_invalid>
    2a7c:	00050663          	beqz	a0,2a88 <fatfs_get_file_entry+0xe4>
    2a80:	10010ea3          	sb	zero,285(sp)
    2a84:	fe1ff06f          	j	2a64 <fatfs_get_file_entry+0xc0>
    2a88:	00040593          	mv	a1,s0
    2a8c:	01810513          	addi	a0,sp,24
    2a90:	fffff097          	auipc	ra,0xfffff
    2a94:	f34080e7          	jalr	-204(ra) # 19c4 <fatfs_entry_lfn_exists>
    2a98:	06050663          	beqz	a0,2b04 <fatfs_get_file_entry+0x160>
    2a9c:	01810513          	addi	a0,sp,24
    2aa0:	fffff097          	auipc	ra,0xfffff
    2aa4:	ea0080e7          	jalr	-352(ra) # 1940 <fatfs_lfn_cache_get>
    2aa8:	000b8593          	mv	a1,s7
    2aac:	fffff097          	auipc	ra,0xfffff
    2ab0:	6dc080e7          	jalr	1756(ra) # 2188 <fatfs_compare_names>
    2ab4:	fc0506e3          	beqz	a0,2a80 <fatfs_get_file_entry+0xdc>
    2ab8:	02000613          	li	a2,32
    2abc:	00040593          	mv	a1,s0
    2ac0:	000c0513          	mv	a0,s8
    2ac4:	ffffe097          	auipc	ra,0xffffe
    2ac8:	178080e7          	jalr	376(ra) # c3c <memcpy>
    2acc:	00100513          	li	a0,1
    2ad0:	14c12083          	lw	ra,332(sp)
    2ad4:	14812403          	lw	s0,328(sp)
    2ad8:	14412483          	lw	s1,324(sp)
    2adc:	14012903          	lw	s2,320(sp)
    2ae0:	13c12983          	lw	s3,316(sp)
    2ae4:	13812a03          	lw	s4,312(sp)
    2ae8:	13412a83          	lw	s5,308(sp)
    2aec:	13012b03          	lw	s6,304(sp)
    2af0:	12c12b83          	lw	s7,300(sp)
    2af4:	12812c03          	lw	s8,296(sp)
    2af8:	12412c83          	lw	s9,292(sp)
    2afc:	15010113          	addi	sp,sp,336
    2b00:	00008067          	ret
    2b04:	00040513          	mv	a0,s0
    2b08:	fffff097          	auipc	ra,0xfffff
    2b0c:	f0c080e7          	jalr	-244(ra) # 1a14 <fatfs_entry_sfn_only>
    2b10:	f4050ae3          	beqz	a0,2a64 <fatfs_get_file_entry+0xc0>
    2b14:	00d00613          	li	a2,13
    2b18:	00000593          	li	a1,0
    2b1c:	00090513          	mv	a0,s2
    2b20:	ffffe097          	auipc	ra,0xffffe
    2b24:	100080e7          	jalr	256(ra) # c20 <memset>
    2b28:	00000793          	li	a5,0
    2b2c:	00f406b3          	add	a3,s0,a5
    2b30:	0006c683          	lbu	a3,0(a3)
    2b34:	00f90733          	add	a4,s2,a5
    2b38:	00178793          	addi	a5,a5,1
    2b3c:	00d70023          	sb	a3,0(a4)
    2b40:	ff5796e3          	bne	a5,s5,2b2c <fatfs_get_file_entry+0x188>
    2b44:	00844703          	lbu	a4,8(s0)
    2b48:	00944783          	lbu	a5,9(s0)
    2b4c:	00a44683          	lbu	a3,10(s0)
    2b50:	00e108a3          	sb	a4,17(sp)
    2b54:	00f10923          	sb	a5,18(sp)
    2b58:	fe070713          	addi	a4,a4,-32
    2b5c:	fe078793          	addi	a5,a5,-32
    2b60:	00f037b3          	snez	a5,a5
    2b64:	00e03733          	snez	a4,a4
    2b68:	00d109a3          	sb	a3,19(sp)
    2b6c:	00e7e7b3          	or	a5,a5,a4
    2b70:	00079863          	bnez	a5,2b80 <fatfs_get_file_entry+0x1dc>
    2b74:	fe068693          	addi	a3,a3,-32
    2b78:	02000793          	li	a5,32
    2b7c:	00068a63          	beqz	a3,2b90 <fatfs_get_file_entry+0x1ec>
    2b80:	00814703          	lbu	a4,8(sp)
    2b84:	02e00793          	li	a5,46
    2b88:	01671463          	bne	a4,s6,2b90 <fatfs_get_file_entry+0x1ec>
    2b8c:	02000793          	li	a5,32
    2b90:	00f10823          	sb	a5,16(sp)
    2b94:	000b8593          	mv	a1,s7
    2b98:	00090513          	mv	a0,s2
    2b9c:	f11ff06f          	j	2aac <fatfs_get_file_entry+0x108>

00002ba0 <_open_directory>:
    2ba0:	eb010113          	addi	sp,sp,-336
    2ba4:	15212023          	sw	s2,320(sp)
    2ba8:	0000b937          	lui	s2,0xb
    2bac:	ba890913          	addi	s2,s2,-1112 # aba8 <_fs>
    2bb0:	14812423          	sw	s0,328(sp)
    2bb4:	00892403          	lw	s0,8(s2)
    2bb8:	14912223          	sw	s1,324(sp)
    2bbc:	13312e23          	sw	s3,316(sp)
    2bc0:	13412c23          	sw	s4,312(sp)
    2bc4:	13512a23          	sw	s5,308(sp)
    2bc8:	13612823          	sw	s6,304(sp)
    2bcc:	14112623          	sw	ra,332(sp)
    2bd0:	00050a13          	mv	s4,a0
    2bd4:	00058a93          	mv	s5,a1
    2bd8:	fffff097          	auipc	ra,0xfffff
    2bdc:	368080e7          	jalr	872(ra) # 1f40 <fatfs_total_path_levels>
    2be0:	00050b13          	mv	s6,a0
    2be4:	00000493          	li	s1,0
    2be8:	fff00993          	li	s3,-1
    2bec:	009b5863          	bge	s6,s1,2bfc <_open_directory+0x5c>
    2bf0:	008aa023          	sw	s0,0(s5)
    2bf4:	00100513          	li	a0,1
    2bf8:	0240006f          	j	2c1c <_open_directory+0x7c>
    2bfc:	10400693          	li	a3,260
    2c00:	02c10613          	addi	a2,sp,44
    2c04:	00048593          	mv	a1,s1
    2c08:	000a0513          	mv	a0,s4
    2c0c:	fffff097          	auipc	ra,0xfffff
    2c10:	3a4080e7          	jalr	932(ra) # 1fb0 <fatfs_get_substring>
    2c14:	03351863          	bne	a0,s3,2c44 <_open_directory+0xa4>
    2c18:	00000513          	li	a0,0
    2c1c:	14c12083          	lw	ra,332(sp)
    2c20:	14812403          	lw	s0,328(sp)
    2c24:	14412483          	lw	s1,324(sp)
    2c28:	14012903          	lw	s2,320(sp)
    2c2c:	13c12983          	lw	s3,316(sp)
    2c30:	13812a03          	lw	s4,312(sp)
    2c34:	13412a83          	lw	s5,308(sp)
    2c38:	13012b03          	lw	s6,304(sp)
    2c3c:	15010113          	addi	sp,sp,336
    2c40:	00008067          	ret
    2c44:	00c10693          	addi	a3,sp,12
    2c48:	02c10613          	addi	a2,sp,44
    2c4c:	00040593          	mv	a1,s0
    2c50:	00090513          	mv	a0,s2
    2c54:	00000097          	auipc	ra,0x0
    2c58:	d50080e7          	jalr	-688(ra) # 29a4 <fatfs_get_file_entry>
    2c5c:	fa050ee3          	beqz	a0,2c18 <_open_directory+0x78>
    2c60:	01714783          	lbu	a5,23(sp)
    2c64:	0107f793          	andi	a5,a5,16
    2c68:	fa0788e3          	beqz	a5,2c18 <_open_directory+0x78>
    2c6c:	02015403          	lhu	s0,32(sp)
    2c70:	02615783          	lhu	a5,38(sp)
    2c74:	00148493          	addi	s1,s1,1
    2c78:	01041413          	slli	s0,s0,0x10
    2c7c:	00f40433          	add	s0,s0,a5
    2c80:	f6dff06f          	j	2bec <_open_directory+0x4c>

00002c84 <fl_opendir>:
    2c84:	fe010113          	addi	sp,sp,-32
    2c88:	fff00793          	li	a5,-1
    2c8c:	00f12623          	sw	a5,12(sp)
    2c90:	000057b7          	lui	a5,0x5
    2c94:	a247a783          	lw	a5,-1500(a5) # 4a24 <_filelib_init>
    2c98:	00812c23          	sw	s0,24(sp)
    2c9c:	01212823          	sw	s2,16(sp)
    2ca0:	00112e23          	sw	ra,28(sp)
    2ca4:	00912a23          	sw	s1,20(sp)
    2ca8:	00050913          	mv	s2,a0
    2cac:	00058413          	mv	s0,a1
    2cb0:	00079663          	bnez	a5,2cbc <fl_opendir+0x38>
    2cb4:	fffff097          	auipc	ra,0xfffff
    2cb8:	b50080e7          	jalr	-1200(ra) # 1804 <fl_init>
    2cbc:	0000b4b7          	lui	s1,0xb
    2cc0:	ba848493          	addi	s1,s1,-1112 # aba8 <_fs>
    2cc4:	03c4a783          	lw	a5,60(s1)
    2cc8:	00078463          	beqz	a5,2cd0 <fl_opendir+0x4c>
    2ccc:	000780e7          	jalr	a5
    2cd0:	00090513          	mv	a0,s2
    2cd4:	fffff097          	auipc	ra,0xfffff
    2cd8:	26c080e7          	jalr	620(ra) # 1f40 <fatfs_total_path_levels>
    2cdc:	fff00793          	li	a5,-1
    2ce0:	02f51063          	bne	a0,a5,2d00 <fl_opendir+0x7c>
    2ce4:	0084a783          	lw	a5,8(s1)
    2ce8:	00f12623          	sw	a5,12(sp)
    2cec:	00c12783          	lw	a5,12(sp)
    2cf0:	00042023          	sw	zero,0(s0)
    2cf4:	00040423          	sb	zero,8(s0)
    2cf8:	00f42223          	sw	a5,4(s0)
    2cfc:	0180006f          	j	2d14 <fl_opendir+0x90>
    2d00:	00c10593          	addi	a1,sp,12
    2d04:	00090513          	mv	a0,s2
    2d08:	00000097          	auipc	ra,0x0
    2d0c:	e98080e7          	jalr	-360(ra) # 2ba0 <_open_directory>
    2d10:	fc051ee3          	bnez	a0,2cec <fl_opendir+0x68>
    2d14:	0404a783          	lw	a5,64(s1)
    2d18:	00078463          	beqz	a5,2d20 <fl_opendir+0x9c>
    2d1c:	000780e7          	jalr	a5
    2d20:	00c12703          	lw	a4,12(sp)
    2d24:	fff00793          	li	a5,-1
    2d28:	00f71463          	bne	a4,a5,2d30 <fl_opendir+0xac>
    2d2c:	00000413          	li	s0,0
    2d30:	01c12083          	lw	ra,28(sp)
    2d34:	00040513          	mv	a0,s0
    2d38:	01812403          	lw	s0,24(sp)
    2d3c:	01412483          	lw	s1,20(sp)
    2d40:	01012903          	lw	s2,16(sp)
    2d44:	02010113          	addi	sp,sp,32
    2d48:	00008067          	ret

00002d4c <_open_file>:
    2d4c:	fc010113          	addi	sp,sp,-64
    2d50:	03312623          	sw	s3,44(sp)
    2d54:	02112e23          	sw	ra,60(sp)
    2d58:	02812c23          	sw	s0,56(sp)
    2d5c:	02912a23          	sw	s1,52(sp)
    2d60:	03212823          	sw	s2,48(sp)
    2d64:	00050993          	mv	s3,a0
    2d68:	fffff097          	auipc	ra,0xfffff
    2d6c:	8ac080e7          	jalr	-1876(ra) # 1614 <_allocate_file>
    2d70:	06050463          	beqz	a0,2dd8 <_open_file+0x8c>
    2d74:	01450913          	addi	s2,a0,20
    2d78:	00050413          	mv	s0,a0
    2d7c:	10400613          	li	a2,260
    2d80:	00000593          	li	a1,0
    2d84:	00090513          	mv	a0,s2
    2d88:	ffffe097          	auipc	ra,0xffffe
    2d8c:	e98080e7          	jalr	-360(ra) # c20 <memset>
    2d90:	11840493          	addi	s1,s0,280
    2d94:	10400613          	li	a2,260
    2d98:	00000593          	li	a1,0
    2d9c:	00048513          	mv	a0,s1
    2da0:	ffffe097          	auipc	ra,0xffffe
    2da4:	e80080e7          	jalr	-384(ra) # c20 <memset>
    2da8:	10400713          	li	a4,260
    2dac:	00048693          	mv	a3,s1
    2db0:	00070613          	mv	a2,a4
    2db4:	00090593          	mv	a1,s2
    2db8:	00098513          	mv	a0,s3
    2dbc:	fffff097          	auipc	ra,0xfffff
    2dc0:	2dc080e7          	jalr	732(ra) # 2098 <fatfs_split_path>
    2dc4:	fff00793          	li	a5,-1
    2dc8:	02f51a63          	bne	a0,a5,2dfc <_open_file+0xb0>
    2dcc:	00040513          	mv	a0,s0
    2dd0:	fffff097          	auipc	ra,0xfffff
    2dd4:	8bc080e7          	jalr	-1860(ra) # 168c <_free_file>
    2dd8:	00000413          	li	s0,0
    2ddc:	03c12083          	lw	ra,60(sp)
    2de0:	00040513          	mv	a0,s0
    2de4:	03812403          	lw	s0,56(sp)
    2de8:	03412483          	lw	s1,52(sp)
    2dec:	03012903          	lw	s2,48(sp)
    2df0:	02c12983          	lw	s3,44(sp)
    2df4:	04010113          	addi	sp,sp,64
    2df8:	00008067          	ret
    2dfc:	00040513          	mv	a0,s0
    2e00:	fffff097          	auipc	ra,0xfffff
    2e04:	514080e7          	jalr	1300(ra) # 2314 <_check_file_open>
    2e08:	fc0512e3          	bnez	a0,2dcc <_open_file+0x80>
    2e0c:	01444783          	lbu	a5,20(s0)
    2e10:	08079c63          	bnez	a5,2ea8 <_open_file+0x15c>
    2e14:	0000b7b7          	lui	a5,0xb
    2e18:	bb07a783          	lw	a5,-1104(a5) # abb0 <_fs+0x8>
    2e1c:	00f42023          	sw	a5,0(s0)
    2e20:	00042583          	lw	a1,0(s0)
    2e24:	00048613          	mv	a2,s1
    2e28:	0000b4b7          	lui	s1,0xb
    2e2c:	00010693          	mv	a3,sp
    2e30:	ba848513          	addi	a0,s1,-1112 # aba8 <_fs>
    2e34:	00000097          	auipc	ra,0x0
    2e38:	b70080e7          	jalr	-1168(ra) # 29a4 <fatfs_get_file_entry>
    2e3c:	f80508e3          	beqz	a0,2dcc <_open_file+0x80>
    2e40:	00b14783          	lbu	a5,11(sp)
    2e44:	0207f793          	andi	a5,a5,32
    2e48:	f80782e3          	beqz	a5,2dcc <_open_file+0x80>
    2e4c:	00b00613          	li	a2,11
    2e50:	00010593          	mv	a1,sp
    2e54:	21c40513          	addi	a0,s0,540
    2e58:	ffffe097          	auipc	ra,0xffffe
    2e5c:	de4080e7          	jalr	-540(ra) # c3c <memcpy>
    2e60:	01c12783          	lw	a5,28(sp)
    2e64:	01a15703          	lhu	a4,26(sp)
    2e68:	00042423          	sw	zero,8(s0)
    2e6c:	00f42623          	sw	a5,12(s0)
    2e70:	01415783          	lhu	a5,20(sp)
    2e74:	42042a23          	sw	zero,1076(s0)
    2e78:	00042823          	sw	zero,16(s0)
    2e7c:	01079793          	slli	a5,a5,0x10
    2e80:	00e787b3          	add	a5,a5,a4
    2e84:	00f42223          	sw	a5,4(s0)
    2e88:	fff00793          	li	a5,-1
    2e8c:	42f42823          	sw	a5,1072(s0)
    2e90:	22f42423          	sw	a5,552(s0)
    2e94:	22f42623          	sw	a5,556(s0)
    2e98:	ba848513          	addi	a0,s1,-1112
    2e9c:	00000097          	auipc	ra,0x0
    2ea0:	858080e7          	jalr	-1960(ra) # 26f4 <fatfs_fat_purge>
    2ea4:	f39ff06f          	j	2ddc <_open_file+0x90>
    2ea8:	00040593          	mv	a1,s0
    2eac:	00090513          	mv	a0,s2
    2eb0:	00000097          	auipc	ra,0x0
    2eb4:	cf0080e7          	jalr	-784(ra) # 2ba0 <_open_directory>
    2eb8:	f60514e3          	bnez	a0,2e20 <_open_file+0xd4>
    2ebc:	f11ff06f          	j	2dcc <_open_file+0x80>

00002ec0 <fatfs_sfn_exists>:
    2ec0:	fe010113          	addi	sp,sp,-32
    2ec4:	01212823          	sw	s2,16(sp)
    2ec8:	01312623          	sw	s3,12(sp)
    2ecc:	01412423          	sw	s4,8(sp)
    2ed0:	01512223          	sw	s5,4(sp)
    2ed4:	01612023          	sw	s6,0(sp)
    2ed8:	00112e23          	sw	ra,28(sp)
    2edc:	00812c23          	sw	s0,24(sp)
    2ee0:	00912a23          	sw	s1,20(sp)
    2ee4:	00050993          	mv	s3,a0
    2ee8:	00058a93          	mv	s5,a1
    2eec:	00060b13          	mv	s6,a2
    2ef0:	00000913          	li	s2,0
    2ef4:	24450a13          	addi	s4,a0,580
    2ef8:	00000693          	li	a3,0
    2efc:	00090613          	mv	a2,s2
    2f00:	000a8593          	mv	a1,s5
    2f04:	00098513          	mv	a0,s3
    2f08:	00000097          	auipc	ra,0x0
    2f0c:	94c080e7          	jalr	-1716(ra) # 2854 <fatfs_sector_reader>
    2f10:	00050413          	mv	s0,a0
    2f14:	06050263          	beqz	a0,2f78 <fatfs_sfn_exists+0xb8>
    2f18:	00190913          	addi	s2,s2,1
    2f1c:	04498493          	addi	s1,s3,68
    2f20:	00048513          	mv	a0,s1
    2f24:	fffff097          	auipc	ra,0xfffff
    2f28:	a58080e7          	jalr	-1448(ra) # 197c <fatfs_entry_lfn_text>
    2f2c:	00050863          	beqz	a0,2f3c <fatfs_sfn_exists+0x7c>
    2f30:	02048493          	addi	s1,s1,32
    2f34:	ff4496e3          	bne	s1,s4,2f20 <fatfs_sfn_exists+0x60>
    2f38:	fc1ff06f          	j	2ef8 <fatfs_sfn_exists+0x38>
    2f3c:	00048513          	mv	a0,s1
    2f40:	fffff097          	auipc	ra,0xfffff
    2f44:	a50080e7          	jalr	-1456(ra) # 1990 <fatfs_entry_lfn_invalid>
    2f48:	fe0514e3          	bnez	a0,2f30 <fatfs_sfn_exists+0x70>
    2f4c:	00048513          	mv	a0,s1
    2f50:	fffff097          	auipc	ra,0xfffff
    2f54:	ac4080e7          	jalr	-1340(ra) # 1a14 <fatfs_entry_sfn_only>
    2f58:	00050413          	mv	s0,a0
    2f5c:	fc050ae3          	beqz	a0,2f30 <fatfs_sfn_exists+0x70>
    2f60:	00b00613          	li	a2,11
    2f64:	000b0593          	mv	a1,s6
    2f68:	00048513          	mv	a0,s1
    2f6c:	ffffe097          	auipc	ra,0xffffe
    2f70:	d14080e7          	jalr	-748(ra) # c80 <strncmp>
    2f74:	fa051ee3          	bnez	a0,2f30 <fatfs_sfn_exists+0x70>
    2f78:	01c12083          	lw	ra,28(sp)
    2f7c:	00040513          	mv	a0,s0
    2f80:	01812403          	lw	s0,24(sp)
    2f84:	01412483          	lw	s1,20(sp)
    2f88:	01012903          	lw	s2,16(sp)
    2f8c:	00c12983          	lw	s3,12(sp)
    2f90:	00812a03          	lw	s4,8(sp)
    2f94:	00412a83          	lw	s5,4(sp)
    2f98:	00012b03          	lw	s6,0(sp)
    2f9c:	02010113          	addi	sp,sp,32
    2fa0:	00008067          	ret

00002fa4 <fatfs_update_file_length>:
    2fa4:	03852783          	lw	a5,56(a0)
    2fa8:	14078e63          	beqz	a5,3104 <fatfs_update_file_length+0x160>
    2fac:	fd010113          	addi	sp,sp,-48
    2fb0:	02912223          	sw	s1,36(sp)
    2fb4:	03212023          	sw	s2,32(sp)
    2fb8:	01312e23          	sw	s3,28(sp)
    2fbc:	01412c23          	sw	s4,24(sp)
    2fc0:	01612823          	sw	s6,16(sp)
    2fc4:	01712623          	sw	s7,12(sp)
    2fc8:	02112623          	sw	ra,44(sp)
    2fcc:	02812423          	sw	s0,40(sp)
    2fd0:	01512a23          	sw	s5,20(sp)
    2fd4:	00068913          	mv	s2,a3
    2fd8:	00060b93          	mv	s7,a2
    2fdc:	00058b13          	mv	s6,a1
    2fe0:	00050493          	mv	s1,a0
    2fe4:	00000993          	li	s3,0
    2fe8:	24450a13          	addi	s4,a0,580
    2fec:	00000693          	li	a3,0
    2ff0:	00098613          	mv	a2,s3
    2ff4:	000b0593          	mv	a1,s6
    2ff8:	00048513          	mv	a0,s1
    2ffc:	00000097          	auipc	ra,0x0
    3000:	858080e7          	jalr	-1960(ra) # 2854 <fatfs_sector_reader>
    3004:	0c050863          	beqz	a0,30d4 <fatfs_update_file_length+0x130>
    3008:	04448413          	addi	s0,s1,68
    300c:	00198993          	addi	s3,s3,1
    3010:	00040a93          	mv	s5,s0
    3014:	00040513          	mv	a0,s0
    3018:	fffff097          	auipc	ra,0xfffff
    301c:	964080e7          	jalr	-1692(ra) # 197c <fatfs_entry_lfn_text>
    3020:	0a051463          	bnez	a0,30c8 <fatfs_update_file_length+0x124>
    3024:	00040513          	mv	a0,s0
    3028:	fffff097          	auipc	ra,0xfffff
    302c:	968080e7          	jalr	-1688(ra) # 1990 <fatfs_entry_lfn_invalid>
    3030:	08051c63          	bnez	a0,30c8 <fatfs_update_file_length+0x124>
    3034:	00040513          	mv	a0,s0
    3038:	fffff097          	auipc	ra,0xfffff
    303c:	9dc080e7          	jalr	-1572(ra) # 1a14 <fatfs_entry_sfn_only>
    3040:	08050463          	beqz	a0,30c8 <fatfs_update_file_length+0x124>
    3044:	00b00613          	li	a2,11
    3048:	000b8593          	mv	a1,s7
    304c:	00040513          	mv	a0,s0
    3050:	ffffe097          	auipc	ra,0xffffe
    3054:	c30080e7          	jalr	-976(ra) # c80 <strncmp>
    3058:	06051863          	bnez	a0,30c8 <fatfs_update_file_length+0x124>
    305c:	00895793          	srli	a5,s2,0x8
    3060:	01240e23          	sb	s2,28(s0)
    3064:	00f40ea3          	sb	a5,29(s0)
    3068:	01095793          	srli	a5,s2,0x10
    306c:	01895913          	srli	s2,s2,0x18
    3070:	00f40f23          	sb	a5,30(s0)
    3074:	01240fa3          	sb	s2,31(s0)
    3078:	00040593          	mv	a1,s0
    307c:	02000613          	li	a2,32
    3080:	00040513          	mv	a0,s0
    3084:	ffffe097          	auipc	ra,0xffffe
    3088:	bb8080e7          	jalr	-1096(ra) # c3c <memcpy>
    308c:	02812403          	lw	s0,40(sp)
    3090:	0384a783          	lw	a5,56(s1)
    3094:	2444a503          	lw	a0,580(s1)
    3098:	02c12083          	lw	ra,44(sp)
    309c:	02412483          	lw	s1,36(sp)
    30a0:	02012903          	lw	s2,32(sp)
    30a4:	01c12983          	lw	s3,28(sp)
    30a8:	01812a03          	lw	s4,24(sp)
    30ac:	01012b03          	lw	s6,16(sp)
    30b0:	00c12b83          	lw	s7,12(sp)
    30b4:	000a8593          	mv	a1,s5
    30b8:	01412a83          	lw	s5,20(sp)
    30bc:	00100613          	li	a2,1
    30c0:	03010113          	addi	sp,sp,48
    30c4:	00078067          	jr	a5
    30c8:	02040413          	addi	s0,s0,32
    30cc:	f54414e3          	bne	s0,s4,3014 <fatfs_update_file_length+0x70>
    30d0:	f1dff06f          	j	2fec <fatfs_update_file_length+0x48>
    30d4:	02c12083          	lw	ra,44(sp)
    30d8:	02812403          	lw	s0,40(sp)
    30dc:	02412483          	lw	s1,36(sp)
    30e0:	02012903          	lw	s2,32(sp)
    30e4:	01c12983          	lw	s3,28(sp)
    30e8:	01812a03          	lw	s4,24(sp)
    30ec:	01412a83          	lw	s5,20(sp)
    30f0:	01012b03          	lw	s6,16(sp)
    30f4:	00c12b83          	lw	s7,12(sp)
    30f8:	00000513          	li	a0,0
    30fc:	03010113          	addi	sp,sp,48
    3100:	00008067          	ret
    3104:	00000513          	li	a0,0
    3108:	00008067          	ret

0000310c <fatfs_list_directory_next>:
    310c:	ec010113          	addi	sp,sp,-320
    3110:	13212823          	sw	s2,304(sp)
    3114:	13312623          	sw	s3,300(sp)
    3118:	13412423          	sw	s4,296(sp)
    311c:	13512223          	sw	s5,292(sp)
    3120:	13612023          	sw	s6,288(sp)
    3124:	12112e23          	sw	ra,316(sp)
    3128:	12812c23          	sw	s0,312(sp)
    312c:	12912a23          	sw	s1,308(sp)
    3130:	00050a13          	mv	s4,a0
    3134:	00058913          	mv	s2,a1
    3138:	00060993          	mv	s3,a2
    313c:	10010ea3          	sb	zero,285(sp)
    3140:	04450a93          	addi	s5,a0,68
    3144:	00f00b13          	li	s6,15
    3148:	00092603          	lw	a2,0(s2)
    314c:	00492583          	lw	a1,4(s2)
    3150:	00000693          	li	a3,0
    3154:	000a0513          	mv	a0,s4
    3158:	fffff097          	auipc	ra,0xfffff
    315c:	6fc080e7          	jalr	1788(ra) # 2854 <fatfs_sector_reader>
    3160:	10050c63          	beqz	a0,3278 <fatfs_list_directory_next+0x16c>
    3164:	00894483          	lbu	s1,8(s2)
    3168:	00549413          	slli	s0,s1,0x5
    316c:	008a8433          	add	s0,s5,s0
    3170:	009b7c63          	bgeu	s6,s1,3188 <fatfs_list_directory_next+0x7c>
    3174:	00092783          	lw	a5,0(s2)
    3178:	00090423          	sb	zero,8(s2)
    317c:	00178793          	addi	a5,a5,1
    3180:	00f92023          	sw	a5,0(s2)
    3184:	fc5ff06f          	j	3148 <fatfs_list_directory_next+0x3c>
    3188:	00040513          	mv	a0,s0
    318c:	ffffe097          	auipc	ra,0xffffe
    3190:	7f0080e7          	jalr	2032(ra) # 197c <fatfs_entry_lfn_text>
    3194:	02050263          	beqz	a0,31b8 <fatfs_list_directory_next+0xac>
    3198:	00040593          	mv	a1,s0
    319c:	01810513          	addi	a0,sp,24
    31a0:	ffffe097          	auipc	ra,0xffffe
    31a4:	6d4080e7          	jalr	1748(ra) # 1874 <fatfs_lfn_cache_entry>
    31a8:	00148493          	addi	s1,s1,1
    31ac:	0ff4f493          	zext.b	s1,s1
    31b0:	02040413          	addi	s0,s0,32
    31b4:	fbdff06f          	j	3170 <fatfs_list_directory_next+0x64>
    31b8:	00040513          	mv	a0,s0
    31bc:	ffffe097          	auipc	ra,0xffffe
    31c0:	7d4080e7          	jalr	2004(ra) # 1990 <fatfs_entry_lfn_invalid>
    31c4:	00050663          	beqz	a0,31d0 <fatfs_list_directory_next+0xc4>
    31c8:	10010ea3          	sb	zero,285(sp)
    31cc:	fddff06f          	j	31a8 <fatfs_list_directory_next+0x9c>
    31d0:	00040593          	mv	a1,s0
    31d4:	01810513          	addi	a0,sp,24
    31d8:	ffffe097          	auipc	ra,0xffffe
    31dc:	7ec080e7          	jalr	2028(ra) # 19c4 <fatfs_entry_lfn_exists>
    31e0:	0c050063          	beqz	a0,32a0 <fatfs_list_directory_next+0x194>
    31e4:	01810513          	addi	a0,sp,24
    31e8:	ffffe097          	auipc	ra,0xffffe
    31ec:	758080e7          	jalr	1880(ra) # 1940 <fatfs_lfn_cache_get>
    31f0:	00050593          	mv	a1,a0
    31f4:	10300613          	li	a2,259
    31f8:	00098513          	mv	a0,s3
    31fc:	ffffe097          	auipc	ra,0xffffe
    3200:	ac4080e7          	jalr	-1340(ra) # cc0 <strncpy>
    3204:	00040513          	mv	a0,s0
    3208:	fffff097          	auipc	ra,0xfffff
    320c:	84c080e7          	jalr	-1972(ra) # 1a54 <fatfs_entry_is_dir>
    3210:	10a98223          	sb	a0,260(s3)
    3214:	01d44783          	lbu	a5,29(s0)
    3218:	01c44703          	lbu	a4,28(s0)
    321c:	00148493          	addi	s1,s1,1
    3220:	00879793          	slli	a5,a5,0x8
    3224:	00e7e7b3          	or	a5,a5,a4
    3228:	01e44703          	lbu	a4,30(s0)
    322c:	00100513          	li	a0,1
    3230:	01071713          	slli	a4,a4,0x10
    3234:	00f76733          	or	a4,a4,a5
    3238:	01f44783          	lbu	a5,31(s0)
    323c:	01879793          	slli	a5,a5,0x18
    3240:	00e7e7b3          	or	a5,a5,a4
    3244:	10f9a623          	sw	a5,268(s3)
    3248:	01544783          	lbu	a5,21(s0)
    324c:	01444703          	lbu	a4,20(s0)
    3250:	01a44683          	lbu	a3,26(s0)
    3254:	00879793          	slli	a5,a5,0x8
    3258:	00e7e7b3          	or	a5,a5,a4
    325c:	01b44703          	lbu	a4,27(s0)
    3260:	01079793          	slli	a5,a5,0x10
    3264:	00871713          	slli	a4,a4,0x8
    3268:	00d76733          	or	a4,a4,a3
    326c:	00e7e7b3          	or	a5,a5,a4
    3270:	10f9a423          	sw	a5,264(s3)
    3274:	00990423          	sb	s1,8(s2)
    3278:	13c12083          	lw	ra,316(sp)
    327c:	13812403          	lw	s0,312(sp)
    3280:	13412483          	lw	s1,308(sp)
    3284:	13012903          	lw	s2,304(sp)
    3288:	12c12983          	lw	s3,300(sp)
    328c:	12812a03          	lw	s4,296(sp)
    3290:	12412a83          	lw	s5,292(sp)
    3294:	12012b03          	lw	s6,288(sp)
    3298:	14010113          	addi	sp,sp,320
    329c:	00008067          	ret
    32a0:	00040513          	mv	a0,s0
    32a4:	ffffe097          	auipc	ra,0xffffe
    32a8:	770080e7          	jalr	1904(ra) # 1a14 <fatfs_entry_sfn_only>
    32ac:	ee050ee3          	beqz	a0,31a8 <fatfs_list_directory_next+0x9c>
    32b0:	00810a13          	addi	s4,sp,8
    32b4:	00d00613          	li	a2,13
    32b8:	00000593          	li	a1,0
    32bc:	000a0513          	mv	a0,s4
    32c0:	10010ea3          	sb	zero,285(sp)
    32c4:	ffffe097          	auipc	ra,0xffffe
    32c8:	95c080e7          	jalr	-1700(ra) # c20 <memset>
    32cc:	00000793          	li	a5,0
    32d0:	00800713          	li	a4,8
    32d4:	00f40633          	add	a2,s0,a5
    32d8:	00064603          	lbu	a2,0(a2)
    32dc:	00fa06b3          	add	a3,s4,a5
    32e0:	00178793          	addi	a5,a5,1
    32e4:	00c68023          	sb	a2,0(a3)
    32e8:	fee796e3          	bne	a5,a4,32d4 <fatfs_list_directory_next+0x1c8>
    32ec:	00844783          	lbu	a5,8(s0)
    32f0:	00944703          	lbu	a4,9(s0)
    32f4:	00a44683          	lbu	a3,10(s0)
    32f8:	00f108a3          	sb	a5,17(sp)
    32fc:	00e10923          	sb	a4,18(sp)
    3300:	fe078793          	addi	a5,a5,-32
    3304:	fe070713          	addi	a4,a4,-32
    3308:	00f037b3          	snez	a5,a5
    330c:	00e03733          	snez	a4,a4
    3310:	00d109a3          	sb	a3,19(sp)
    3314:	00e7e7b3          	or	a5,a5,a4
    3318:	00079863          	bnez	a5,3328 <fatfs_list_directory_next+0x21c>
    331c:	fe068693          	addi	a3,a3,-32
    3320:	02000793          	li	a5,32
    3324:	00068a63          	beqz	a3,3338 <fatfs_list_directory_next+0x22c>
    3328:	00814703          	lbu	a4,8(sp)
    332c:	02e00793          	li	a5,46
    3330:	00f71463          	bne	a4,a5,3338 <fatfs_list_directory_next+0x22c>
    3334:	02000793          	li	a5,32
    3338:	000a0593          	mv	a1,s4
    333c:	00098513          	mv	a0,s3
    3340:	00f10823          	sb	a5,16(sp)
    3344:	fffff097          	auipc	ra,0xfffff
    3348:	054080e7          	jalr	84(ra) # 2398 <fatfs_get_sfn_display_name>
    334c:	eb9ff06f          	j	3204 <fatfs_list_directory_next+0xf8>

00003350 <fl_readdir>:
    3350:	000057b7          	lui	a5,0x5
    3354:	a247a783          	lw	a5,-1500(a5) # 4a24 <_filelib_init>
    3358:	fd010113          	addi	sp,sp,-48
    335c:	03212023          	sw	s2,32(sp)
    3360:	01312e23          	sw	s3,28(sp)
    3364:	02112623          	sw	ra,44(sp)
    3368:	02812423          	sw	s0,40(sp)
    336c:	02912223          	sw	s1,36(sp)
    3370:	00050913          	mv	s2,a0
    3374:	00058993          	mv	s3,a1
    3378:	00079663          	bnez	a5,3384 <fl_readdir+0x34>
    337c:	ffffe097          	auipc	ra,0xffffe
    3380:	488080e7          	jalr	1160(ra) # 1804 <fl_init>
    3384:	0000b4b7          	lui	s1,0xb
    3388:	ba848413          	addi	s0,s1,-1112 # aba8 <_fs>
    338c:	03c42783          	lw	a5,60(s0)
    3390:	00078463          	beqz	a5,3398 <fl_readdir+0x48>
    3394:	000780e7          	jalr	a5
    3398:	00098613          	mv	a2,s3
    339c:	00090593          	mv	a1,s2
    33a0:	ba848513          	addi	a0,s1,-1112
    33a4:	00000097          	auipc	ra,0x0
    33a8:	d68080e7          	jalr	-664(ra) # 310c <fatfs_list_directory_next>
    33ac:	04042783          	lw	a5,64(s0)
    33b0:	00078863          	beqz	a5,33c0 <fl_readdir+0x70>
    33b4:	00a12623          	sw	a0,12(sp)
    33b8:	000780e7          	jalr	a5
    33bc:	00c12503          	lw	a0,12(sp)
    33c0:	02c12083          	lw	ra,44(sp)
    33c4:	02812403          	lw	s0,40(sp)
    33c8:	00154513          	xori	a0,a0,1
    33cc:	02412483          	lw	s1,36(sp)
    33d0:	02012903          	lw	s2,32(sp)
    33d4:	01c12983          	lw	s3,28(sp)
    33d8:	40a00533          	neg	a0,a0
    33dc:	03010113          	addi	sp,sp,48
    33e0:	00008067          	ret

000033e4 <_read_sectors>:
    33e4:	fd010113          	addi	sp,sp,-48
    33e8:	01512a23          	sw	s5,20(sp)
    33ec:	0000bab7          	lui	s5,0xb
    33f0:	01312e23          	sw	s3,28(sp)
    33f4:	ba8ac983          	lbu	s3,-1112(s5) # aba8 <_fs>
    33f8:	01612823          	sw	s6,16(sp)
    33fc:	00058b13          	mv	s6,a1
    3400:	02912223          	sw	s1,36(sp)
    3404:	00098593          	mv	a1,s3
    3408:	00050493          	mv	s1,a0
    340c:	000b0513          	mv	a0,s6
    3410:	02112623          	sw	ra,44(sp)
    3414:	02812423          	sw	s0,40(sp)
    3418:	01412c23          	sw	s4,24(sp)
    341c:	00068413          	mv	s0,a3
    3420:	01712623          	sw	s7,12(sp)
    3424:	01812423          	sw	s8,8(sp)
    3428:	03212023          	sw	s2,32(sp)
    342c:	00060c13          	mv	s8,a2
    3430:	ffffd097          	auipc	ra,0xffffd
    3434:	744080e7          	jalr	1860(ra) # b74 <__udivsi3>
    3438:	00050a13          	mv	s4,a0
    343c:	00098593          	mv	a1,s3
    3440:	000b0513          	mv	a0,s6
    3444:	ffffd097          	auipc	ra,0xffffd
    3448:	778080e7          	jalr	1912(ra) # bbc <__umodsi3>
    344c:	00a407b3          	add	a5,s0,a0
    3450:	00050b93          	mv	s7,a0
    3454:	00f9fe63          	bgeu	s3,a5,3470 <_read_sectors+0x8c>
    3458:	000a0593          	mv	a1,s4
    345c:	00098513          	mv	a0,s3
    3460:	ffffe097          	auipc	ra,0xffffe
    3464:	f10080e7          	jalr	-240(ra) # 1370 <__mulsi3>
    3468:	416987b3          	sub	a5,s3,s6
    346c:	00f50433          	add	s0,a0,a5
    3470:	2284a903          	lw	s2,552(s1)
    3474:	07491863          	bne	s2,s4,34e4 <_read_sectors+0x100>
    3478:	22c4a583          	lw	a1,556(s1)
    347c:	fff00793          	li	a5,-1
    3480:	02f58663          	beq	a1,a5,34ac <_read_sectors+0xc8>
    3484:	ba8a8513          	addi	a0,s5,-1112
    3488:	ffffe097          	auipc	ra,0xffffe
    348c:	24c080e7          	jalr	588(ra) # 16d4 <fatfs_lba_of_cluster>
    3490:	017505b3          	add	a1,a0,s7
    3494:	00040693          	mv	a3,s0
    3498:	000c0613          	mv	a2,s8
    349c:	ba8a8513          	addi	a0,s5,-1112
    34a0:	ffffe097          	auipc	ra,0xffffe
    34a4:	280080e7          	jalr	640(ra) # 1720 <fatfs_sector_read>
    34a8:	00051463          	bnez	a0,34b0 <_read_sectors+0xcc>
    34ac:	00000413          	li	s0,0
    34b0:	02c12083          	lw	ra,44(sp)
    34b4:	00040513          	mv	a0,s0
    34b8:	02812403          	lw	s0,40(sp)
    34bc:	02412483          	lw	s1,36(sp)
    34c0:	02012903          	lw	s2,32(sp)
    34c4:	01c12983          	lw	s3,28(sp)
    34c8:	01812a03          	lw	s4,24(sp)
    34cc:	01412a83          	lw	s5,20(sp)
    34d0:	01012b03          	lw	s6,16(sp)
    34d4:	00c12b83          	lw	s7,12(sp)
    34d8:	00812c03          	lw	s8,8(sp)
    34dc:	03010113          	addi	sp,sp,48
    34e0:	00008067          	ret
    34e4:	033b6463          	bltu	s6,s3,350c <_read_sectors+0x128>
    34e8:	00190793          	addi	a5,s2,1
    34ec:	03479063          	bne	a5,s4,350c <_read_sectors+0x128>
    34f0:	22c4a583          	lw	a1,556(s1)
    34f4:	03496263          	bltu	s2,s4,3518 <_read_sectors+0x134>
    34f8:	fff00793          	li	a5,-1
    34fc:	faf588e3          	beq	a1,a5,34ac <_read_sectors+0xc8>
    3500:	22b4a623          	sw	a1,556(s1)
    3504:	2344a423          	sw	s4,552(s1)
    3508:	f7dff06f          	j	3484 <_read_sectors+0xa0>
    350c:	0044a583          	lw	a1,4(s1)
    3510:	00000913          	li	s2,0
    3514:	fe1ff06f          	j	34f4 <_read_sectors+0x110>
    3518:	ba8a8513          	addi	a0,s5,-1112
    351c:	fffff097          	auipc	ra,0xfffff
    3520:	230080e7          	jalr	560(ra) # 274c <fatfs_find_next_cluster>
    3524:	00050593          	mv	a1,a0
    3528:	00190913          	addi	s2,s2,1
    352c:	fc9ff06f          	j	34f4 <_read_sectors+0x110>

00003530 <fatfs_set_fs_info_next_free_cluster>:
    3530:	03052783          	lw	a5,48(a0)
    3534:	0a078463          	beqz	a5,35dc <fatfs_set_fs_info_next_free_cluster+0xac>
    3538:	fe010113          	addi	sp,sp,-32
    353c:	01c52783          	lw	a5,28(a0)
    3540:	00912a23          	sw	s1,20(sp)
    3544:	00058493          	mv	s1,a1
    3548:	01855583          	lhu	a1,24(a0)
    354c:	00812c23          	sw	s0,24(sp)
    3550:	00112e23          	sw	ra,28(sp)
    3554:	00f585b3          	add	a1,a1,a5
    3558:	00050413          	mv	s0,a0
    355c:	ffffe097          	auipc	ra,0xffffe
    3560:	fcc080e7          	jalr	-52(ra) # 1528 <fatfs_fat_read_sector>
    3564:	00050593          	mv	a1,a0
    3568:	06050063          	beqz	a0,35c8 <fatfs_set_fs_info_next_free_cluster+0x98>
    356c:	20852783          	lw	a5,520(a0)
    3570:	0084d713          	srli	a4,s1,0x8
    3574:	00100613          	li	a2,1
    3578:	1e978623          	sb	s1,492(a5)
    357c:	20852783          	lw	a5,520(a0)
    3580:	1ee786a3          	sb	a4,493(a5)
    3584:	20852783          	lw	a5,520(a0)
    3588:	0104d713          	srli	a4,s1,0x10
    358c:	1ee78723          	sb	a4,494(a5)
    3590:	20852783          	lw	a5,520(a0)
    3594:	0184d713          	srli	a4,s1,0x18
    3598:	1ee787a3          	sb	a4,495(a5)
    359c:	03842783          	lw	a5,56(s0)
    35a0:	20c52223          	sw	a2,516(a0)
    35a4:	02942223          	sw	s1,36(s0)
    35a8:	00078a63          	beqz	a5,35bc <fatfs_set_fs_info_next_free_cluster+0x8c>
    35ac:	20052503          	lw	a0,512(a0)
    35b0:	00b12623          	sw	a1,12(sp)
    35b4:	000780e7          	jalr	a5
    35b8:	00c12583          	lw	a1,12(sp)
    35bc:	fff00793          	li	a5,-1
    35c0:	20f5a023          	sw	a5,512(a1)
    35c4:	2005a223          	sw	zero,516(a1)
    35c8:	01c12083          	lw	ra,28(sp)
    35cc:	01812403          	lw	s0,24(sp)
    35d0:	01412483          	lw	s1,20(sp)
    35d4:	02010113          	addi	sp,sp,32
    35d8:	00008067          	ret
    35dc:	00008067          	ret

000035e0 <fatfs_find_blank_cluster>:
    35e0:	fd010113          	addi	sp,sp,-48
    35e4:	01312e23          	sw	s3,28(sp)
    35e8:	100009b7          	lui	s3,0x10000
    35ec:	02912223          	sw	s1,36(sp)
    35f0:	03212023          	sw	s2,32(sp)
    35f4:	02112623          	sw	ra,44(sp)
    35f8:	02812423          	sw	s0,40(sp)
    35fc:	00050913          	mv	s2,a0
    3600:	00058493          	mv	s1,a1
    3604:	fff98993          	addi	s3,s3,-1 # fffffff <__stacktop+0xffeffff>
    3608:	03092783          	lw	a5,48(s2)
    360c:	0074d413          	srli	s0,s1,0x7
    3610:	00079463          	bnez	a5,3618 <fatfs_find_blank_cluster+0x38>
    3614:	0084d413          	srli	s0,s1,0x8
    3618:	02092783          	lw	a5,32(s2)
    361c:	0cf47863          	bgeu	s0,a5,36ec <fatfs_find_blank_cluster+0x10c>
    3620:	01492583          	lw	a1,20(s2)
    3624:	00090513          	mv	a0,s2
    3628:	00c12623          	sw	a2,12(sp)
    362c:	00b405b3          	add	a1,s0,a1
    3630:	ffffe097          	auipc	ra,0xffffe
    3634:	ef8080e7          	jalr	-264(ra) # 1528 <fatfs_fat_read_sector>
    3638:	0a050a63          	beqz	a0,36ec <fatfs_find_blank_cluster+0x10c>
    363c:	03092783          	lw	a5,48(s2)
    3640:	20852703          	lw	a4,520(a0)
    3644:	00c12603          	lw	a2,12(sp)
    3648:	04079a63          	bnez	a5,369c <fatfs_find_blank_cluster+0xbc>
    364c:	00841413          	slli	s0,s0,0x8
    3650:	40848433          	sub	s0,s1,s0
    3654:	00141413          	slli	s0,s0,0x1
    3658:	01041413          	slli	s0,s0,0x10
    365c:	01045413          	srli	s0,s0,0x10
    3660:	00870733          	add	a4,a4,s0
    3664:	00174783          	lbu	a5,1(a4)
    3668:	00074703          	lbu	a4,0(a4)
    366c:	00879793          	slli	a5,a5,0x8
    3670:	00e787b3          	add	a5,a5,a4
    3674:	06079863          	bnez	a5,36e4 <fatfs_find_blank_cluster+0x104>
    3678:	00962023          	sw	s1,0(a2)
    367c:	00100513          	li	a0,1
    3680:	02c12083          	lw	ra,44(sp)
    3684:	02812403          	lw	s0,40(sp)
    3688:	02412483          	lw	s1,36(sp)
    368c:	02012903          	lw	s2,32(sp)
    3690:	01c12983          	lw	s3,28(sp)
    3694:	03010113          	addi	sp,sp,48
    3698:	00008067          	ret
    369c:	00741413          	slli	s0,s0,0x7
    36a0:	40848433          	sub	s0,s1,s0
    36a4:	00241413          	slli	s0,s0,0x2
    36a8:	01041413          	slli	s0,s0,0x10
    36ac:	01045413          	srli	s0,s0,0x10
    36b0:	00870733          	add	a4,a4,s0
    36b4:	00374783          	lbu	a5,3(a4)
    36b8:	00274683          	lbu	a3,2(a4)
    36bc:	01879793          	slli	a5,a5,0x18
    36c0:	01069693          	slli	a3,a3,0x10
    36c4:	00d787b3          	add	a5,a5,a3
    36c8:	00074683          	lbu	a3,0(a4)
    36cc:	00174703          	lbu	a4,1(a4)
    36d0:	00d787b3          	add	a5,a5,a3
    36d4:	00871713          	slli	a4,a4,0x8
    36d8:	00e787b3          	add	a5,a5,a4
    36dc:	0137f7b3          	and	a5,a5,s3
    36e0:	f95ff06f          	j	3674 <fatfs_find_blank_cluster+0x94>
    36e4:	00148493          	addi	s1,s1,1
    36e8:	f21ff06f          	j	3608 <fatfs_find_blank_cluster+0x28>
    36ec:	00000513          	li	a0,0
    36f0:	f91ff06f          	j	3680 <fatfs_find_blank_cluster+0xa0>

000036f4 <fatfs_fat_set_cluster>:
    36f4:	03052783          	lw	a5,48(a0)
    36f8:	fe010113          	addi	sp,sp,-32
    36fc:	00812c23          	sw	s0,24(sp)
    3700:	00912a23          	sw	s1,20(sp)
    3704:	01212823          	sw	s2,16(sp)
    3708:	00112e23          	sw	ra,28(sp)
    370c:	00050913          	mv	s2,a0
    3710:	00058413          	mv	s0,a1
    3714:	0085d493          	srli	s1,a1,0x8
    3718:	00078463          	beqz	a5,3720 <fatfs_fat_set_cluster+0x2c>
    371c:	0075d493          	srli	s1,a1,0x7
    3720:	01492583          	lw	a1,20(s2)
    3724:	00090513          	mv	a0,s2
    3728:	00c12623          	sw	a2,12(sp)
    372c:	00b485b3          	add	a1,s1,a1
    3730:	ffffe097          	auipc	ra,0xffffe
    3734:	df8080e7          	jalr	-520(ra) # 1528 <fatfs_fat_read_sector>
    3738:	00050793          	mv	a5,a0
    373c:	00000513          	li	a0,0
    3740:	04078663          	beqz	a5,378c <fatfs_fat_set_cluster+0x98>
    3744:	03092683          	lw	a3,48(s2)
    3748:	2087a703          	lw	a4,520(a5)
    374c:	00c12603          	lw	a2,12(sp)
    3750:	04069a63          	bnez	a3,37a4 <fatfs_fat_set_cluster+0xb0>
    3754:	00849493          	slli	s1,s1,0x8
    3758:	40940433          	sub	s0,s0,s1
    375c:	00141413          	slli	s0,s0,0x1
    3760:	01041413          	slli	s0,s0,0x10
    3764:	01045413          	srli	s0,s0,0x10
    3768:	00870733          	add	a4,a4,s0
    376c:	00c70023          	sb	a2,0(a4)
    3770:	2087a703          	lw	a4,520(a5)
    3774:	00865613          	srli	a2,a2,0x8
    3778:	00870733          	add	a4,a4,s0
    377c:	00c700a3          	sb	a2,1(a4)
    3780:	00100713          	li	a4,1
    3784:	20e7a223          	sw	a4,516(a5)
    3788:	00100513          	li	a0,1
    378c:	01c12083          	lw	ra,28(sp)
    3790:	01812403          	lw	s0,24(sp)
    3794:	01412483          	lw	s1,20(sp)
    3798:	01012903          	lw	s2,16(sp)
    379c:	02010113          	addi	sp,sp,32
    37a0:	00008067          	ret
    37a4:	00749493          	slli	s1,s1,0x7
    37a8:	40940433          	sub	s0,s0,s1
    37ac:	00241413          	slli	s0,s0,0x2
    37b0:	01041413          	slli	s0,s0,0x10
    37b4:	01045413          	srli	s0,s0,0x10
    37b8:	00870733          	add	a4,a4,s0
    37bc:	00c70023          	sb	a2,0(a4)
    37c0:	2087a703          	lw	a4,520(a5)
    37c4:	00865693          	srli	a3,a2,0x8
    37c8:	00870733          	add	a4,a4,s0
    37cc:	00d700a3          	sb	a3,1(a4)
    37d0:	2087a703          	lw	a4,520(a5)
    37d4:	01065693          	srli	a3,a2,0x10
    37d8:	01865613          	srli	a2,a2,0x18
    37dc:	00870733          	add	a4,a4,s0
    37e0:	00d70123          	sb	a3,2(a4)
    37e4:	2087a703          	lw	a4,520(a5)
    37e8:	00870733          	add	a4,a4,s0
    37ec:	00c701a3          	sb	a2,3(a4)
    37f0:	f91ff06f          	j	3780 <fatfs_fat_set_cluster+0x8c>

000037f4 <fatfs_free_cluster_chain>:
    37f4:	fe010113          	addi	sp,sp,-32
    37f8:	00812c23          	sw	s0,24(sp)
    37fc:	00912a23          	sw	s1,20(sp)
    3800:	00112e23          	sw	ra,28(sp)
    3804:	01212823          	sw	s2,16(sp)
    3808:	00050493          	mv	s1,a0
    380c:	ffd00413          	li	s0,-3
    3810:	fff58793          	addi	a5,a1,-1
    3814:	02f47063          	bgeu	s0,a5,3834 <fatfs_free_cluster_chain+0x40>
    3818:	01c12083          	lw	ra,28(sp)
    381c:	01812403          	lw	s0,24(sp)
    3820:	01412483          	lw	s1,20(sp)
    3824:	01012903          	lw	s2,16(sp)
    3828:	00100513          	li	a0,1
    382c:	02010113          	addi	sp,sp,32
    3830:	00008067          	ret
    3834:	00048513          	mv	a0,s1
    3838:	00b12623          	sw	a1,12(sp)
    383c:	fffff097          	auipc	ra,0xfffff
    3840:	f10080e7          	jalr	-240(ra) # 274c <fatfs_find_next_cluster>
    3844:	00c12583          	lw	a1,12(sp)
    3848:	00050913          	mv	s2,a0
    384c:	00000613          	li	a2,0
    3850:	00048513          	mv	a0,s1
    3854:	00000097          	auipc	ra,0x0
    3858:	ea0080e7          	jalr	-352(ra) # 36f4 <fatfs_fat_set_cluster>
    385c:	00090593          	mv	a1,s2
    3860:	fb1ff06f          	j	3810 <fatfs_free_cluster_chain+0x1c>

00003864 <fatfs_fat_add_cluster_to_chain>:
    3864:	fd010113          	addi	sp,sp,-48
    3868:	02912223          	sw	s1,36(sp)
    386c:	02112623          	sw	ra,44(sp)
    3870:	02812423          	sw	s0,40(sp)
    3874:	03212023          	sw	s2,32(sp)
    3878:	01312e23          	sw	s3,28(sp)
    387c:	fff00493          	li	s1,-1
    3880:	02959263          	bne	a1,s1,38a4 <fatfs_fat_add_cluster_to_chain+0x40>
    3884:	00000513          	li	a0,0
    3888:	02c12083          	lw	ra,44(sp)
    388c:	02812403          	lw	s0,40(sp)
    3890:	02412483          	lw	s1,36(sp)
    3894:	02012903          	lw	s2,32(sp)
    3898:	01c12983          	lw	s3,28(sp)
    389c:	03010113          	addi	sp,sp,48
    38a0:	00008067          	ret
    38a4:	00050913          	mv	s2,a0
    38a8:	00058413          	mv	s0,a1
    38ac:	00060993          	mv	s3,a2
    38b0:	00040593          	mv	a1,s0
    38b4:	00090513          	mv	a0,s2
    38b8:	00812623          	sw	s0,12(sp)
    38bc:	fffff097          	auipc	ra,0xfffff
    38c0:	e90080e7          	jalr	-368(ra) # 274c <fatfs_find_next_cluster>
    38c4:	00050413          	mv	s0,a0
    38c8:	fa050ee3          	beqz	a0,3884 <fatfs_fat_add_cluster_to_chain+0x20>
    38cc:	00c12583          	lw	a1,12(sp)
    38d0:	fe9510e3          	bne	a0,s1,38b0 <fatfs_fat_add_cluster_to_chain+0x4c>
    38d4:	00098613          	mv	a2,s3
    38d8:	00090513          	mv	a0,s2
    38dc:	00000097          	auipc	ra,0x0
    38e0:	e18080e7          	jalr	-488(ra) # 36f4 <fatfs_fat_set_cluster>
    38e4:	00040613          	mv	a2,s0
    38e8:	00098593          	mv	a1,s3
    38ec:	00090513          	mv	a0,s2
    38f0:	00000097          	auipc	ra,0x0
    38f4:	e04080e7          	jalr	-508(ra) # 36f4 <fatfs_fat_set_cluster>
    38f8:	00100513          	li	a0,1
    38fc:	f8dff06f          	j	3888 <fatfs_fat_add_cluster_to_chain+0x24>

00003900 <fatfs_add_free_space>:
    3900:	02452783          	lw	a5,36(a0)
    3904:	fd010113          	addi	sp,sp,-48
    3908:	02812423          	sw	s0,40(sp)
    390c:	01312e23          	sw	s3,28(sp)
    3910:	01412c23          	sw	s4,24(sp)
    3914:	0005a983          	lw	s3,0(a1)
    3918:	01512a23          	sw	s5,20(sp)
    391c:	00058a13          	mv	s4,a1
    3920:	02112623          	sw	ra,44(sp)
    3924:	02912223          	sw	s1,36(sp)
    3928:	03212023          	sw	s2,32(sp)
    392c:	fff00593          	li	a1,-1
    3930:	00050413          	mv	s0,a0
    3934:	00060a93          	mv	s5,a2
    3938:	00b78663          	beq	a5,a1,3944 <fatfs_add_free_space+0x44>
    393c:	00000097          	auipc	ra,0x0
    3940:	bf4080e7          	jalr	-1036(ra) # 3530 <fatfs_set_fs_info_next_free_cluster>
    3944:	00000493          	li	s1,0
    3948:	03549663          	bne	s1,s5,3974 <fatfs_add_free_space+0x74>
    394c:	00100513          	li	a0,1
    3950:	02c12083          	lw	ra,44(sp)
    3954:	02812403          	lw	s0,40(sp)
    3958:	02412483          	lw	s1,36(sp)
    395c:	02012903          	lw	s2,32(sp)
    3960:	01c12983          	lw	s3,28(sp)
    3964:	01812a03          	lw	s4,24(sp)
    3968:	01412a83          	lw	s5,20(sp)
    396c:	03010113          	addi	sp,sp,48
    3970:	00008067          	ret
    3974:	00842583          	lw	a1,8(s0)
    3978:	00c10613          	addi	a2,sp,12
    397c:	00040513          	mv	a0,s0
    3980:	00000097          	auipc	ra,0x0
    3984:	c60080e7          	jalr	-928(ra) # 35e0 <fatfs_find_blank_cluster>
    3988:	fc0504e3          	beqz	a0,3950 <fatfs_add_free_space+0x50>
    398c:	00c12903          	lw	s2,12(sp)
    3990:	00098593          	mv	a1,s3
    3994:	00040513          	mv	a0,s0
    3998:	00090613          	mv	a2,s2
    399c:	00000097          	auipc	ra,0x0
    39a0:	d58080e7          	jalr	-680(ra) # 36f4 <fatfs_fat_set_cluster>
    39a4:	fff00613          	li	a2,-1
    39a8:	00090593          	mv	a1,s2
    39ac:	00040513          	mv	a0,s0
    39b0:	00000097          	auipc	ra,0x0
    39b4:	d44080e7          	jalr	-700(ra) # 36f4 <fatfs_fat_set_cluster>
    39b8:	00049463          	bnez	s1,39c0 <fatfs_add_free_space+0xc0>
    39bc:	012a2023          	sw	s2,0(s4)
    39c0:	00148493          	addi	s1,s1,1
    39c4:	00090993          	mv	s3,s2
    39c8:	f81ff06f          	j	3948 <fatfs_add_free_space+0x48>

000039cc <_write_sectors>:
    39cc:	fb010113          	addi	sp,sp,-80
    39d0:	03512a23          	sw	s5,52(sp)
    39d4:	0000bab7          	lui	s5,0xb
    39d8:	04112623          	sw	ra,76(sp)
    39dc:	04812423          	sw	s0,72(sp)
    39e0:	04912223          	sw	s1,68(sp)
    39e4:	03412c23          	sw	s4,56(sp)
    39e8:	03612823          	sw	s6,48(sp)
    39ec:	03712623          	sw	s7,44(sp)
    39f0:	03812423          	sw	s8,40(sp)
    39f4:	03912223          	sw	s9,36(sp)
    39f8:	03a12023          	sw	s10,32(sp)
    39fc:	05212023          	sw	s2,64(sp)
    3a00:	03312e23          	sw	s3,60(sp)
    3a04:	ba8a8b93          	addi	s7,s5,-1112 # aba8 <_fs>
    3a08:	000bc983          	lbu	s3,0(s7)
    3a0c:	00058b13          	mv	s6,a1
    3a10:	fff00793          	li	a5,-1
    3a14:	00098593          	mv	a1,s3
    3a18:	00050493          	mv	s1,a0
    3a1c:	000b0513          	mv	a0,s6
    3a20:	00068c13          	mv	s8,a3
    3a24:	00f12e23          	sw	a5,28(sp)
    3a28:	00060d13          	mv	s10,a2
    3a2c:	ffffd097          	auipc	ra,0xffffd
    3a30:	148080e7          	jalr	328(ra) # b74 <__udivsi3>
    3a34:	00050a13          	mv	s4,a0
    3a38:	00098593          	mv	a1,s3
    3a3c:	000b0513          	mv	a0,s6
    3a40:	ffffd097          	auipc	ra,0xffffd
    3a44:	17c080e7          	jalr	380(ra) # bbc <__umodsi3>
    3a48:	00ac07b3          	add	a5,s8,a0
    3a4c:	00050c93          	mv	s9,a0
    3a50:	000c0413          	mv	s0,s8
    3a54:	00f9fe63          	bgeu	s3,a5,3a70 <_write_sectors+0xa4>
    3a58:	000a0593          	mv	a1,s4
    3a5c:	00098513          	mv	a0,s3
    3a60:	ffffe097          	auipc	ra,0xffffe
    3a64:	910080e7          	jalr	-1776(ra) # 1370 <__mulsi3>
    3a68:	416987b3          	sub	a5,s3,s6
    3a6c:	00f50433          	add	s0,a0,a5
    3a70:	2284a903          	lw	s2,552(s1)
    3a74:	03491a63          	bne	s2,s4,3aa8 <_write_sectors+0xdc>
    3a78:	22c4a583          	lw	a1,556(s1)
    3a7c:	ba8a8513          	addi	a0,s5,-1112
    3a80:	ffffe097          	auipc	ra,0xffffe
    3a84:	c54080e7          	jalr	-940(ra) # 16d4 <fatfs_lba_of_cluster>
    3a88:	019505b3          	add	a1,a0,s9
    3a8c:	00040693          	mv	a3,s0
    3a90:	000d0613          	mv	a2,s10
    3a94:	ba8a8513          	addi	a0,s5,-1112
    3a98:	ffffe097          	auipc	ra,0xffffe
    3a9c:	ca0080e7          	jalr	-864(ra) # 1738 <fatfs_sector_write>
    3aa0:	04050a63          	beqz	a0,3af4 <_write_sectors+0x128>
    3aa4:	0540006f          	j	3af8 <_write_sectors+0x12c>
    3aa8:	093b6663          	bltu	s6,s3,3b34 <_write_sectors+0x168>
    3aac:	00190793          	addi	a5,s2,1
    3ab0:	09479263          	bne	a5,s4,3b34 <_write_sectors+0x168>
    3ab4:	22c4a583          	lw	a1,556(s1)
    3ab8:	fff00b13          	li	s6,-1
    3abc:	09496263          	bltu	s2,s4,3b40 <_write_sectors+0x174>
    3ac0:	fff00793          	li	a5,-1
    3ac4:	0af59463          	bne	a1,a5,3b6c <_write_sectors+0x1a0>
    3ac8:	000bc583          	lbu	a1,0(s7)
    3acc:	fff58513          	addi	a0,a1,-1
    3ad0:	01850533          	add	a0,a0,s8
    3ad4:	ffffd097          	auipc	ra,0xffffd
    3ad8:	0a0080e7          	jalr	160(ra) # b74 <__udivsi3>
    3adc:	00050613          	mv	a2,a0
    3ae0:	01c10593          	addi	a1,sp,28
    3ae4:	000b8513          	mv	a0,s7
    3ae8:	00000097          	auipc	ra,0x0
    3aec:	e18080e7          	jalr	-488(ra) # 3900 <fatfs_add_free_space>
    3af0:	06051c63          	bnez	a0,3b68 <_write_sectors+0x19c>
    3af4:	00000413          	li	s0,0
    3af8:	04c12083          	lw	ra,76(sp)
    3afc:	00040513          	mv	a0,s0
    3b00:	04812403          	lw	s0,72(sp)
    3b04:	04412483          	lw	s1,68(sp)
    3b08:	04012903          	lw	s2,64(sp)
    3b0c:	03c12983          	lw	s3,60(sp)
    3b10:	03812a03          	lw	s4,56(sp)
    3b14:	03412a83          	lw	s5,52(sp)
    3b18:	03012b03          	lw	s6,48(sp)
    3b1c:	02c12b83          	lw	s7,44(sp)
    3b20:	02812c03          	lw	s8,40(sp)
    3b24:	02412c83          	lw	s9,36(sp)
    3b28:	02012d03          	lw	s10,32(sp)
    3b2c:	05010113          	addi	sp,sp,80
    3b30:	00008067          	ret
    3b34:	0044a583          	lw	a1,4(s1)
    3b38:	00000913          	li	s2,0
    3b3c:	f7dff06f          	j	3ab8 <_write_sectors+0xec>
    3b40:	ba8a8513          	addi	a0,s5,-1112
    3b44:	00b12623          	sw	a1,12(sp)
    3b48:	fffff097          	auipc	ra,0xfffff
    3b4c:	c04080e7          	jalr	-1020(ra) # 274c <fatfs_find_next_cluster>
    3b50:	00c12583          	lw	a1,12(sp)
    3b54:	00b12e23          	sw	a1,28(sp)
    3b58:	f76508e3          	beq	a0,s6,3ac8 <_write_sectors+0xfc>
    3b5c:	00190913          	addi	s2,s2,1
    3b60:	00050593          	mv	a1,a0
    3b64:	f59ff06f          	j	3abc <_write_sectors+0xf0>
    3b68:	01c12583          	lw	a1,28(sp)
    3b6c:	22b4a623          	sw	a1,556(s1)
    3b70:	2344a423          	sw	s4,552(s1)
    3b74:	f09ff06f          	j	3a7c <_write_sectors+0xb0>

00003b78 <fl_fflush>:
    3b78:	000057b7          	lui	a5,0x5
    3b7c:	a247a783          	lw	a5,-1500(a5) # 4a24 <_filelib_init>
    3b80:	ff010113          	addi	sp,sp,-16
    3b84:	00812423          	sw	s0,8(sp)
    3b88:	00112623          	sw	ra,12(sp)
    3b8c:	00912223          	sw	s1,4(sp)
    3b90:	00050413          	mv	s0,a0
    3b94:	00079663          	bnez	a5,3ba0 <fl_fflush+0x28>
    3b98:	ffffe097          	auipc	ra,0xffffe
    3b9c:	c6c080e7          	jalr	-916(ra) # 1804 <fl_init>
    3ba0:	04040663          	beqz	s0,3bec <fl_fflush+0x74>
    3ba4:	0000b4b7          	lui	s1,0xb
    3ba8:	ba848493          	addi	s1,s1,-1112 # aba8 <_fs>
    3bac:	03c4a783          	lw	a5,60(s1)
    3bb0:	00078463          	beqz	a5,3bb8 <fl_fflush+0x40>
    3bb4:	000780e7          	jalr	a5
    3bb8:	43442783          	lw	a5,1076(s0)
    3bbc:	02078263          	beqz	a5,3be0 <fl_fflush+0x68>
    3bc0:	43042583          	lw	a1,1072(s0)
    3bc4:	00100693          	li	a3,1
    3bc8:	23040613          	addi	a2,s0,560
    3bcc:	00040513          	mv	a0,s0
    3bd0:	00000097          	auipc	ra,0x0
    3bd4:	dfc080e7          	jalr	-516(ra) # 39cc <_write_sectors>
    3bd8:	00050463          	beqz	a0,3be0 <fl_fflush+0x68>
    3bdc:	42042a23          	sw	zero,1076(s0)
    3be0:	0404a783          	lw	a5,64(s1)
    3be4:	00078463          	beqz	a5,3bec <fl_fflush+0x74>
    3be8:	000780e7          	jalr	a5
    3bec:	00c12083          	lw	ra,12(sp)
    3bf0:	00812403          	lw	s0,8(sp)
    3bf4:	00412483          	lw	s1,4(sp)
    3bf8:	00000513          	li	a0,0
    3bfc:	01010113          	addi	sp,sp,16
    3c00:	00008067          	ret

00003c04 <fl_fclose>:
    3c04:	000057b7          	lui	a5,0x5
    3c08:	a247a783          	lw	a5,-1500(a5) # 4a24 <_filelib_init>
    3c0c:	ff010113          	addi	sp,sp,-16
    3c10:	00812423          	sw	s0,8(sp)
    3c14:	00112623          	sw	ra,12(sp)
    3c18:	00912223          	sw	s1,4(sp)
    3c1c:	01212023          	sw	s2,0(sp)
    3c20:	00050413          	mv	s0,a0
    3c24:	00079663          	bnez	a5,3c30 <fl_fclose+0x2c>
    3c28:	ffffe097          	auipc	ra,0xffffe
    3c2c:	bdc080e7          	jalr	-1060(ra) # 1804 <fl_init>
    3c30:	08040c63          	beqz	s0,3cc8 <fl_fclose+0xc4>
    3c34:	0000b4b7          	lui	s1,0xb
    3c38:	ba848913          	addi	s2,s1,-1112 # aba8 <_fs>
    3c3c:	03c92783          	lw	a5,60(s2)
    3c40:	00078463          	beqz	a5,3c48 <fl_fclose+0x44>
    3c44:	000780e7          	jalr	a5
    3c48:	00040513          	mv	a0,s0
    3c4c:	00000097          	auipc	ra,0x0
    3c50:	f2c080e7          	jalr	-212(ra) # 3b78 <fl_fflush>
    3c54:	01042783          	lw	a5,16(s0)
    3c58:	00078e63          	beqz	a5,3c74 <fl_fclose+0x70>
    3c5c:	00c42683          	lw	a3,12(s0)
    3c60:	00042583          	lw	a1,0(s0)
    3c64:	21c40613          	addi	a2,s0,540
    3c68:	ba848513          	addi	a0,s1,-1112
    3c6c:	fffff097          	auipc	ra,0xfffff
    3c70:	338080e7          	jalr	824(ra) # 2fa4 <fatfs_update_file_length>
    3c74:	fff00793          	li	a5,-1
    3c78:	42f42823          	sw	a5,1072(s0)
    3c7c:	00040513          	mv	a0,s0
    3c80:	00042423          	sw	zero,8(s0)
    3c84:	00042623          	sw	zero,12(s0)
    3c88:	00042223          	sw	zero,4(s0)
    3c8c:	42042a23          	sw	zero,1076(s0)
    3c90:	00042823          	sw	zero,16(s0)
    3c94:	ffffe097          	auipc	ra,0xffffe
    3c98:	9f8080e7          	jalr	-1544(ra) # 168c <_free_file>
    3c9c:	ba848513          	addi	a0,s1,-1112
    3ca0:	fffff097          	auipc	ra,0xfffff
    3ca4:	a54080e7          	jalr	-1452(ra) # 26f4 <fatfs_fat_purge>
    3ca8:	04092783          	lw	a5,64(s2)
    3cac:	00078e63          	beqz	a5,3cc8 <fl_fclose+0xc4>
    3cb0:	00812403          	lw	s0,8(sp)
    3cb4:	00c12083          	lw	ra,12(sp)
    3cb8:	00412483          	lw	s1,4(sp)
    3cbc:	00012903          	lw	s2,0(sp)
    3cc0:	01010113          	addi	sp,sp,16
    3cc4:	00078067          	jr	a5
    3cc8:	00c12083          	lw	ra,12(sp)
    3ccc:	00812403          	lw	s0,8(sp)
    3cd0:	00412483          	lw	s1,4(sp)
    3cd4:	00012903          	lw	s2,0(sp)
    3cd8:	01010113          	addi	sp,sp,16
    3cdc:	00008067          	ret

00003ce0 <fl_fread>:
    3ce0:	000057b7          	lui	a5,0x5
    3ce4:	a247a783          	lw	a5,-1500(a5) # 4a24 <_filelib_init>
    3ce8:	fc010113          	addi	sp,sp,-64
    3cec:	02812c23          	sw	s0,56(sp)
    3cf0:	03512223          	sw	s5,36(sp)
    3cf4:	02112e23          	sw	ra,60(sp)
    3cf8:	02912a23          	sw	s1,52(sp)
    3cfc:	03212823          	sw	s2,48(sp)
    3d00:	03312623          	sw	s3,44(sp)
    3d04:	03412423          	sw	s4,40(sp)
    3d08:	03612023          	sw	s6,32(sp)
    3d0c:	01712e23          	sw	s7,28(sp)
    3d10:	01812c23          	sw	s8,24(sp)
    3d14:	01912a23          	sw	s9,20(sp)
    3d18:	00050a93          	mv	s5,a0
    3d1c:	00068413          	mv	s0,a3
    3d20:	00058513          	mv	a0,a1
    3d24:	00079e63          	bnez	a5,3d40 <fl_fread+0x60>
    3d28:	00c12623          	sw	a2,12(sp)
    3d2c:	00b12423          	sw	a1,8(sp)
    3d30:	ffffe097          	auipc	ra,0xffffe
    3d34:	ad4080e7          	jalr	-1324(ra) # 1804 <fl_init>
    3d38:	00c12603          	lw	a2,12(sp)
    3d3c:	00812503          	lw	a0,8(sp)
    3d40:	14040e63          	beqz	s0,3e9c <fl_fread+0x1bc>
    3d44:	140a8c63          	beqz	s5,3e9c <fl_fread+0x1bc>
    3d48:	43844783          	lbu	a5,1080(s0)
    3d4c:	fff00493          	li	s1,-1
    3d50:	0017f793          	andi	a5,a5,1
    3d54:	04078863          	beqz	a5,3da4 <fl_fread+0xc4>
    3d58:	00060593          	mv	a1,a2
    3d5c:	ffffd097          	auipc	ra,0xffffd
    3d60:	614080e7          	jalr	1556(ra) # 1370 <__mulsi3>
    3d64:	00050493          	mv	s1,a0
    3d68:	02050e63          	beqz	a0,3da4 <fl_fread+0xc4>
    3d6c:	00842583          	lw	a1,8(s0)
    3d70:	00c42783          	lw	a5,12(s0)
    3d74:	12f5f463          	bgeu	a1,a5,3e9c <fl_fread+0x1bc>
    3d78:	00b50733          	add	a4,a0,a1
    3d7c:	00e7f463          	bgeu	a5,a4,3d84 <fl_fread+0xa4>
    3d80:	40b784b3          	sub	s1,a5,a1
    3d84:	0095da13          	srli	s4,a1,0x9
    3d88:	1ff5f913          	andi	s2,a1,511
    3d8c:	00000993          	li	s3,0
    3d90:	23040b13          	addi	s6,s0,560
    3d94:	20000b93          	li	s7,512
    3d98:	1ff00c13          	li	s8,511
    3d9c:	0499c063          	blt	s3,s1,3ddc <fl_fread+0xfc>
    3da0:	00098493          	mv	s1,s3
    3da4:	03c12083          	lw	ra,60(sp)
    3da8:	03812403          	lw	s0,56(sp)
    3dac:	03012903          	lw	s2,48(sp)
    3db0:	02c12983          	lw	s3,44(sp)
    3db4:	02812a03          	lw	s4,40(sp)
    3db8:	02412a83          	lw	s5,36(sp)
    3dbc:	02012b03          	lw	s6,32(sp)
    3dc0:	01c12b83          	lw	s7,28(sp)
    3dc4:	01812c03          	lw	s8,24(sp)
    3dc8:	01412c83          	lw	s9,20(sp)
    3dcc:	00048513          	mv	a0,s1
    3dd0:	03412483          	lw	s1,52(sp)
    3dd4:	04010113          	addi	sp,sp,64
    3dd8:	00008067          	ret
    3ddc:	04091663          	bnez	s2,3e28 <fl_fread+0x148>
    3de0:	413486b3          	sub	a3,s1,s3
    3de4:	04dc5263          	bge	s8,a3,3e28 <fl_fread+0x148>
    3de8:	4096d693          	srai	a3,a3,0x9
    3dec:	013a8633          	add	a2,s5,s3
    3df0:	000a0593          	mv	a1,s4
    3df4:	00040513          	mv	a0,s0
    3df8:	fffff097          	auipc	ra,0xfffff
    3dfc:	5ec080e7          	jalr	1516(ra) # 33e4 <_read_sectors>
    3e00:	fa0500e3          	beqz	a0,3da0 <fl_fread+0xc0>
    3e04:	00951c93          	slli	s9,a0,0x9
    3e08:	000c8613          	mv	a2,s9
    3e0c:	00aa0a33          	add	s4,s4,a0
    3e10:	00842783          	lw	a5,8(s0)
    3e14:	00c989b3          	add	s3,s3,a2
    3e18:	00000913          	li	s2,0
    3e1c:	019787b3          	add	a5,a5,s9
    3e20:	00f42423          	sw	a5,8(s0)
    3e24:	f79ff06f          	j	3d9c <fl_fread+0xbc>
    3e28:	43042783          	lw	a5,1072(s0)
    3e2c:	03478e63          	beq	a5,s4,3e68 <fl_fread+0x188>
    3e30:	43442783          	lw	a5,1076(s0)
    3e34:	00078863          	beqz	a5,3e44 <fl_fread+0x164>
    3e38:	00040513          	mv	a0,s0
    3e3c:	00000097          	auipc	ra,0x0
    3e40:	d3c080e7          	jalr	-708(ra) # 3b78 <fl_fflush>
    3e44:	00100693          	li	a3,1
    3e48:	000b0613          	mv	a2,s6
    3e4c:	000a0593          	mv	a1,s4
    3e50:	00040513          	mv	a0,s0
    3e54:	fffff097          	auipc	ra,0xfffff
    3e58:	590080e7          	jalr	1424(ra) # 33e4 <_read_sectors>
    3e5c:	f40502e3          	beqz	a0,3da0 <fl_fread+0xc0>
    3e60:	43442823          	sw	s4,1072(s0)
    3e64:	42042a23          	sw	zero,1076(s0)
    3e68:	412b87b3          	sub	a5,s7,s2
    3e6c:	41348633          	sub	a2,s1,s3
    3e70:	00c7d463          	bge	a5,a2,3e78 <fl_fread+0x198>
    3e74:	00078613          	mv	a2,a5
    3e78:	012b05b3          	add	a1,s6,s2
    3e7c:	013a8533          	add	a0,s5,s3
    3e80:	00060c93          	mv	s9,a2
    3e84:	00c12423          	sw	a2,8(sp)
    3e88:	ffffd097          	auipc	ra,0xffffd
    3e8c:	db4080e7          	jalr	-588(ra) # c3c <memcpy>
    3e90:	00812603          	lw	a2,8(sp)
    3e94:	001a0a13          	addi	s4,s4,1
    3e98:	f79ff06f          	j	3e10 <fl_fread+0x130>
    3e9c:	fff00493          	li	s1,-1
    3ea0:	f05ff06f          	j	3da4 <fl_fread+0xc4>

00003ea4 <fatfs_allocate_free_space>:
    3ea4:	fd010113          	addi	sp,sp,-48
    3ea8:	02112623          	sw	ra,44(sp)
    3eac:	02812423          	sw	s0,40(sp)
    3eb0:	02912223          	sw	s1,36(sp)
    3eb4:	03212023          	sw	s2,32(sp)
    3eb8:	01312e23          	sw	s3,28(sp)
    3ebc:	01412c23          	sw	s4,24(sp)
    3ec0:	01512a23          	sw	s5,20(sp)
    3ec4:	02069863          	bnez	a3,3ef4 <fatfs_allocate_free_space+0x50>
    3ec8:	00000413          	li	s0,0
    3ecc:	02c12083          	lw	ra,44(sp)
    3ed0:	00040513          	mv	a0,s0
    3ed4:	02812403          	lw	s0,40(sp)
    3ed8:	02412483          	lw	s1,36(sp)
    3edc:	02012903          	lw	s2,32(sp)
    3ee0:	01c12983          	lw	s3,28(sp)
    3ee4:	01812a03          	lw	s4,24(sp)
    3ee8:	01412a83          	lw	s5,20(sp)
    3eec:	03010113          	addi	sp,sp,48
    3ef0:	00008067          	ret
    3ef4:	02452783          	lw	a5,36(a0)
    3ef8:	00058a13          	mv	s4,a1
    3efc:	fff00593          	li	a1,-1
    3f00:	00050493          	mv	s1,a0
    3f04:	00068913          	mv	s2,a3
    3f08:	00060993          	mv	s3,a2
    3f0c:	00b78663          	beq	a5,a1,3f18 <fatfs_allocate_free_space+0x74>
    3f10:	fffff097          	auipc	ra,0xfffff
    3f14:	620080e7          	jalr	1568(ra) # 3530 <fatfs_set_fs_info_next_free_cluster>
    3f18:	0004c783          	lbu	a5,0(s1)
    3f1c:	00090513          	mv	a0,s2
    3f20:	00979a93          	slli	s5,a5,0x9
    3f24:	000a8593          	mv	a1,s5
    3f28:	ffffd097          	auipc	ra,0xffffd
    3f2c:	c4c080e7          	jalr	-948(ra) # b74 <__udivsi3>
    3f30:	00050413          	mv	s0,a0
    3f34:	00050593          	mv	a1,a0
    3f38:	000a8513          	mv	a0,s5
    3f3c:	ffffd097          	auipc	ra,0xffffd
    3f40:	434080e7          	jalr	1076(ra) # 1370 <__mulsi3>
    3f44:	41250533          	sub	a0,a0,s2
    3f48:	00a03533          	snez	a0,a0
    3f4c:	00a40933          	add	s2,s0,a0
    3f50:	040a0463          	beqz	s4,3f98 <fatfs_allocate_free_space+0xf4>
    3f54:	0084a583          	lw	a1,8(s1)
    3f58:	00c10613          	addi	a2,sp,12
    3f5c:	00048513          	mv	a0,s1
    3f60:	fffff097          	auipc	ra,0xfffff
    3f64:	680080e7          	jalr	1664(ra) # 35e0 <fatfs_find_blank_cluster>
    3f68:	00050413          	mv	s0,a0
    3f6c:	f4050ee3          	beqz	a0,3ec8 <fatfs_allocate_free_space+0x24>
    3f70:	00100793          	li	a5,1
    3f74:	02f91663          	bne	s2,a5,3fa0 <fatfs_allocate_free_space+0xfc>
    3f78:	00c12903          	lw	s2,12(sp)
    3f7c:	fff00613          	li	a2,-1
    3f80:	00048513          	mv	a0,s1
    3f84:	00090593          	mv	a1,s2
    3f88:	fffff097          	auipc	ra,0xfffff
    3f8c:	76c080e7          	jalr	1900(ra) # 36f4 <fatfs_fat_set_cluster>
    3f90:	0129a023          	sw	s2,0(s3)
    3f94:	f39ff06f          	j	3ecc <fatfs_allocate_free_space+0x28>
    3f98:	0009a783          	lw	a5,0(s3)
    3f9c:	00f12623          	sw	a5,12(sp)
    3fa0:	00090613          	mv	a2,s2
    3fa4:	00c10593          	addi	a1,sp,12
    3fa8:	00048513          	mv	a0,s1
    3fac:	00000097          	auipc	ra,0x0
    3fb0:	954080e7          	jalr	-1708(ra) # 3900 <fatfs_add_free_space>
    3fb4:	00050413          	mv	s0,a0
    3fb8:	f15ff06f          	j	3ecc <fatfs_allocate_free_space+0x28>

00003fbc <fatfs_add_file_entry>:
    3fbc:	03852883          	lw	a7,56(a0)
    3fc0:	30088e63          	beqz	a7,42dc <fatfs_add_file_entry+0x320>
    3fc4:	f8010113          	addi	sp,sp,-128
    3fc8:	06812c23          	sw	s0,120(sp)
    3fcc:	00050413          	mv	s0,a0
    3fd0:	00060513          	mv	a0,a2
    3fd4:	06912a23          	sw	s1,116(sp)
    3fd8:	07512223          	sw	s5,100(sp)
    3fdc:	00f12c23          	sw	a5,24(sp)
    3fe0:	00e12a23          	sw	a4,20(sp)
    3fe4:	06112e23          	sw	ra,124(sp)
    3fe8:	07212823          	sw	s2,112(sp)
    3fec:	07312623          	sw	s3,108(sp)
    3ff0:	07412423          	sw	s4,104(sp)
    3ff4:	07612023          	sw	s6,96(sp)
    3ff8:	05712e23          	sw	s7,92(sp)
    3ffc:	05812c23          	sw	s8,88(sp)
    4000:	05912a23          	sw	s9,84(sp)
    4004:	05a12823          	sw	s10,80(sp)
    4008:	05b12623          	sw	s11,76(sp)
    400c:	01012e23          	sw	a6,28(sp)
    4010:	00068a93          	mv	s5,a3
    4014:	00c12823          	sw	a2,16(sp)
    4018:	00b12423          	sw	a1,8(sp)
    401c:	ffffe097          	auipc	ra,0xffffe
    4020:	a48080e7          	jalr	-1464(ra) # 1a64 <fatfs_lfn_entries_required>
    4024:	00150713          	addi	a4,a0,1
    4028:	00100793          	li	a5,1
    402c:	00050493          	mv	s1,a0
    4030:	2ae7f263          	bgeu	a5,a4,42d4 <fatfs_add_file_entry+0x318>
    4034:	00000a13          	li	s4,0
    4038:	00000993          	li	s3,0
    403c:	00000913          	li	s2,0
    4040:	00000c93          	li	s9,0
    4044:	00000b13          	li	s6,0
    4048:	01000c13          	li	s8,16
    404c:	00812583          	lw	a1,8(sp)
    4050:	00000693          	li	a3,0
    4054:	000b0613          	mv	a2,s6
    4058:	00040513          	mv	a0,s0
    405c:	000b0b93          	mv	s7,s6
    4060:	ffffe097          	auipc	ra,0xffffe
    4064:	7f4080e7          	jalr	2036(ra) # 2854 <fatfs_sector_reader>
    4068:	18050463          	beqz	a0,41f0 <fatfs_add_file_entry+0x234>
    406c:	001b0b13          	addi	s6,s6,1
    4070:	04440793          	addi	a5,s0,68
    4074:	000c8d13          	mv	s10,s9
    4078:	00000d93          	li	s11,0
    407c:	00078513          	mv	a0,a5
    4080:	00f12623          	sw	a5,12(sp)
    4084:	ffffe097          	auipc	ra,0xffffe
    4088:	8f8080e7          	jalr	-1800(ra) # 197c <fatfs_entry_lfn_text>
    408c:	00c12783          	lw	a5,12(sp)
    4090:	00050c93          	mv	s9,a0
    4094:	02050c63          	beqz	a0,40cc <fatfs_add_file_entry+0x110>
    4098:	020d0463          	beqz	s10,40c0 <fatfs_add_file_entry+0x104>
    409c:	00090c93          	mv	s9,s2
    40a0:	000c8913          	mv	s2,s9
    40a4:	001d0c93          	addi	s9,s10,1
    40a8:	001d8d93          	addi	s11,s11,1
    40ac:	0ffdfd93          	zext.b	s11,s11
    40b0:	02078793          	addi	a5,a5,32
    40b4:	f98d8ce3          	beq	s11,s8,404c <fatfs_add_file_entry+0x90>
    40b8:	000c8d13          	mv	s10,s9
    40bc:	fc1ff06f          	j	407c <fatfs_add_file_entry+0xc0>
    40c0:	000d8a13          	mv	s4,s11
    40c4:	000b8993          	mv	s3,s7
    40c8:	fd9ff06f          	j	40a0 <fatfs_add_file_entry+0xe4>
    40cc:	0007c683          	lbu	a3,0(a5)
    40d0:	0e500713          	li	a4,229
    40d4:	10e69863          	bne	a3,a4,41e4 <fatfs_add_file_entry+0x228>
    40d8:	000d1863          	bnez	s10,40e8 <fatfs_add_file_entry+0x12c>
    40dc:	000d8a13          	mv	s4,s11
    40e0:	000b8993          	mv	s3,s7
    40e4:	00100913          	li	s2,1
    40e8:	fa9d4ee3          	blt	s10,s1,40a4 <fatfs_add_file_entry+0xe8>
    40ec:	00ba8693          	addi	a3,s5,11
    40f0:	000a8713          	mv	a4,s5
    40f4:	00000913          	li	s2,0
    40f8:	00074603          	lbu	a2,0(a4)
    40fc:	00195793          	srli	a5,s2,0x1
    4100:	00791913          	slli	s2,s2,0x7
    4104:	012787b3          	add	a5,a5,s2
    4108:	00170713          	addi	a4,a4,1
    410c:	00c787b3          	add	a5,a5,a2
    4110:	0ff7f913          	zext.b	s2,a5
    4114:	fed712e3          	bne	a4,a3,40f8 <fatfs_add_file_entry+0x13c>
    4118:	00098b13          	mv	s6,s3
    411c:	00000d13          	li	s10,0
    4120:	01000b93          	li	s7,16
    4124:	00812583          	lw	a1,8(sp)
    4128:	00000693          	li	a3,0
    412c:	000b0613          	mv	a2,s6
    4130:	00040513          	mv	a0,s0
    4134:	ffffe097          	auipc	ra,0xffffe
    4138:	720080e7          	jalr	1824(ra) # 2854 <fatfs_sector_reader>
    413c:	18050c63          	beqz	a0,42d4 <fatfs_add_file_entry+0x318>
    4140:	04440c93          	addi	s9,s0,68
    4144:	413b0db3          	sub	s11,s6,s3
    4148:	00000793          	li	a5,0
    414c:	00000c13          	li	s8,0
    4150:	01912623          	sw	s9,12(sp)
    4154:	000d1663          	bnez	s10,4160 <fatfs_add_file_entry+0x1a4>
    4158:	154c1863          	bne	s8,s4,42a8 <fatfs_add_file_entry+0x2ec>
    415c:	140d9663          	bnez	s11,42a8 <fatfs_add_file_entry+0x2ec>
    4160:	12049263          	bnez	s1,4284 <fatfs_add_file_entry+0x2c8>
    4164:	01c12703          	lw	a4,28(sp)
    4168:	01412603          	lw	a2,20(sp)
    416c:	01812583          	lw	a1,24(sp)
    4170:	02010693          	addi	a3,sp,32
    4174:	000a8513          	mv	a0,s5
    4178:	ffffe097          	auipc	ra,0xffffe
    417c:	a30080e7          	jalr	-1488(ra) # 1ba8 <fatfs_sfn_create_entry>
    4180:	02000613          	li	a2,32
    4184:	00c105b3          	add	a1,sp,a2
    4188:	000c8513          	mv	a0,s9
    418c:	ffffd097          	auipc	ra,0xffffd
    4190:	ab0080e7          	jalr	-1360(ra) # c3c <memcpy>
    4194:	03842783          	lw	a5,56(s0)
    4198:	00c12583          	lw	a1,12(sp)
    419c:	24442503          	lw	a0,580(s0)
    41a0:	00100613          	li	a2,1
    41a4:	000780e7          	jalr	a5
    41a8:	07c12083          	lw	ra,124(sp)
    41ac:	07812403          	lw	s0,120(sp)
    41b0:	07412483          	lw	s1,116(sp)
    41b4:	07012903          	lw	s2,112(sp)
    41b8:	06c12983          	lw	s3,108(sp)
    41bc:	06812a03          	lw	s4,104(sp)
    41c0:	06412a83          	lw	s5,100(sp)
    41c4:	06012b03          	lw	s6,96(sp)
    41c8:	05c12b83          	lw	s7,92(sp)
    41cc:	05812c03          	lw	s8,88(sp)
    41d0:	05412c83          	lw	s9,84(sp)
    41d4:	05012d03          	lw	s10,80(sp)
    41d8:	04c12d83          	lw	s11,76(sp)
    41dc:	08010113          	addi	sp,sp,128
    41e0:	00008067          	ret
    41e4:	ee068ae3          	beqz	a3,40d8 <fatfs_add_file_entry+0x11c>
    41e8:	00000913          	li	s2,0
    41ec:	ebdff06f          	j	40a8 <fatfs_add_file_entry+0xec>
    41f0:	00842583          	lw	a1,8(s0)
    41f4:	02010613          	addi	a2,sp,32
    41f8:	00040513          	mv	a0,s0
    41fc:	fffff097          	auipc	ra,0xfffff
    4200:	3e4080e7          	jalr	996(ra) # 35e0 <fatfs_find_blank_cluster>
    4204:	0c050863          	beqz	a0,42d4 <fatfs_add_file_entry+0x318>
    4208:	02012b83          	lw	s7,32(sp)
    420c:	00812583          	lw	a1,8(sp)
    4210:	00040513          	mv	a0,s0
    4214:	000b8613          	mv	a2,s7
    4218:	fffff097          	auipc	ra,0xfffff
    421c:	64c080e7          	jalr	1612(ra) # 3864 <fatfs_fat_add_cluster_to_chain>
    4220:	0a050a63          	beqz	a0,42d4 <fatfs_add_file_entry+0x318>
    4224:	20000613          	li	a2,512
    4228:	00000593          	li	a1,0
    422c:	04440513          	addi	a0,s0,68
    4230:	ffffd097          	auipc	ra,0xffffd
    4234:	9f0080e7          	jalr	-1552(ra) # c20 <memset>
    4238:	00000c13          	li	s8,0
    423c:	00044783          	lbu	a5,0(s0)
    4240:	00fc6a63          	bltu	s8,a5,4254 <fatfs_add_file_entry+0x298>
    4244:	ea0914e3          	bnez	s2,40ec <fatfs_add_file_entry+0x130>
    4248:	000b0993          	mv	s3,s6
    424c:	00000a13          	li	s4,0
    4250:	e9dff06f          	j	40ec <fatfs_add_file_entry+0x130>
    4254:	00000693          	li	a3,0
    4258:	000c0613          	mv	a2,s8
    425c:	000b8593          	mv	a1,s7
    4260:	00040513          	mv	a0,s0
    4264:	ffffd097          	auipc	ra,0xffffd
    4268:	4ec080e7          	jalr	1260(ra) # 1750 <fatfs_write_sector>
    426c:	06050463          	beqz	a0,42d4 <fatfs_add_file_entry+0x318>
    4270:	001c0c13          	addi	s8,s8,1
    4274:	0ffc7c13          	zext.b	s8,s8
    4278:	fc5ff06f          	j	423c <fatfs_add_file_entry+0x280>
    427c:	001b0b13          	addi	s6,s6,1
    4280:	ea5ff06f          	j	4124 <fatfs_add_file_entry+0x168>
    4284:	01012503          	lw	a0,16(sp)
    4288:	fff48493          	addi	s1,s1,-1
    428c:	00090693          	mv	a3,s2
    4290:	00048613          	mv	a2,s1
    4294:	000c8593          	mv	a1,s9
    4298:	ffffd097          	auipc	ra,0xffffd
    429c:	7fc080e7          	jalr	2044(ra) # 1a94 <fatfs_filename_to_lfn>
    42a0:	00100d13          	li	s10,1
    42a4:	000d0793          	mv	a5,s10
    42a8:	001c0c13          	addi	s8,s8,1
    42ac:	0ffc7c13          	zext.b	s8,s8
    42b0:	020c8c93          	addi	s9,s9,32
    42b4:	eb7c10e3          	bne	s8,s7,4154 <fatfs_add_file_entry+0x198>
    42b8:	fc0782e3          	beqz	a5,427c <fatfs_add_file_entry+0x2c0>
    42bc:	03842783          	lw	a5,56(s0)
    42c0:	00c12583          	lw	a1,12(sp)
    42c4:	24442503          	lw	a0,580(s0)
    42c8:	00100613          	li	a2,1
    42cc:	000780e7          	jalr	a5
    42d0:	fa0516e3          	bnez	a0,427c <fatfs_add_file_entry+0x2c0>
    42d4:	00000513          	li	a0,0
    42d8:	ed1ff06f          	j	41a8 <fatfs_add_file_entry+0x1ec>
    42dc:	00000513          	li	a0,0
    42e0:	00008067          	ret

000042e4 <fl_fopen>:
    42e4:	000057b7          	lui	a5,0x5
    42e8:	a247a783          	lw	a5,-1500(a5) # 4a24 <_filelib_init>
    42ec:	fa010113          	addi	sp,sp,-96
    42f0:	05212823          	sw	s2,80(sp)
    42f4:	03a12823          	sw	s10,48(sp)
    42f8:	04112e23          	sw	ra,92(sp)
    42fc:	04812c23          	sw	s0,88(sp)
    4300:	04912a23          	sw	s1,84(sp)
    4304:	05312623          	sw	s3,76(sp)
    4308:	05412423          	sw	s4,72(sp)
    430c:	05512223          	sw	s5,68(sp)
    4310:	05612023          	sw	s6,64(sp)
    4314:	03712e23          	sw	s7,60(sp)
    4318:	03812c23          	sw	s8,56(sp)
    431c:	03912a23          	sw	s9,52(sp)
    4320:	00050d13          	mv	s10,a0
    4324:	00058913          	mv	s2,a1
    4328:	00079663          	bnez	a5,4334 <fl_fopen+0x50>
    432c:	ffffd097          	auipc	ra,0xffffd
    4330:	4d8080e7          	jalr	1240(ra) # 1804 <fl_init>
    4334:	000057b7          	lui	a5,0x5
    4338:	a207a783          	lw	a5,-1504(a5) # 4a20 <_filelib_valid>
    433c:	00193713          	seqz	a4,s2
    4340:	0017b793          	seqz	a5,a5
    4344:	00e7e7b3          	or	a5,a5,a4
    4348:	36079e63          	bnez	a5,46c4 <fl_fopen+0x3e0>
    434c:	360d0c63          	beqz	s10,46c4 <fl_fopen+0x3e0>
    4350:	00000493          	li	s1,0
    4354:	00000413          	li	s0,0
    4358:	05700993          	li	s3,87
    435c:	07200a13          	li	s4,114
    4360:	07700b13          	li	s6,119
    4364:	06100b93          	li	s7,97
    4368:	06200c13          	li	s8,98
    436c:	04100a93          	li	s5,65
    4370:	04200c93          	li	s9,66
    4374:	00090513          	mv	a0,s2
    4378:	ffffd097          	auipc	ra,0xffffd
    437c:	8e8080e7          	jalr	-1816(ra) # c60 <strlen>
    4380:	10a44a63          	blt	s0,a0,4494 <fl_fopen+0x1b0>
    4384:	0000b9b7          	lui	s3,0xb
    4388:	ba898a13          	addi	s4,s3,-1112 # aba8 <_fs>
    438c:	038a2783          	lw	a5,56(s4)
    4390:	00079463          	bnez	a5,4398 <fl_fopen+0xb4>
    4394:	fd94f493          	andi	s1,s1,-39
    4398:	03ca2783          	lw	a5,60(s4)
    439c:	00078463          	beqz	a5,43a4 <fl_fopen+0xc0>
    43a0:	000780e7          	jalr	a5
    43a4:	0014f793          	andi	a5,s1,1
    43a8:	18079263          	bnez	a5,452c <fl_fopen+0x248>
    43ac:	0204f793          	andi	a5,s1,32
    43b0:	08078c63          	beqz	a5,4448 <fl_fopen+0x164>
    43b4:	038a2783          	lw	a5,56(s4)
    43b8:	06078a63          	beqz	a5,442c <fl_fopen+0x148>
    43bc:	ffffd097          	auipc	ra,0xffffd
    43c0:	258080e7          	jalr	600(ra) # 1614 <_allocate_file>
    43c4:	00050413          	mv	s0,a0
    43c8:	06050263          	beqz	a0,442c <fl_fopen+0x148>
    43cc:	01450a93          	addi	s5,a0,20
    43d0:	10400613          	li	a2,260
    43d4:	00000593          	li	a1,0
    43d8:	000a8513          	mv	a0,s5
    43dc:	ffffd097          	auipc	ra,0xffffd
    43e0:	844080e7          	jalr	-1980(ra) # c20 <memset>
    43e4:	11840b13          	addi	s6,s0,280
    43e8:	10400613          	li	a2,260
    43ec:	00000593          	li	a1,0
    43f0:	000b0513          	mv	a0,s6
    43f4:	ffffd097          	auipc	ra,0xffffd
    43f8:	82c080e7          	jalr	-2004(ra) # c20 <memset>
    43fc:	10400713          	li	a4,260
    4400:	000b0693          	mv	a3,s6
    4404:	00070613          	mv	a2,a4
    4408:	000a8593          	mv	a1,s5
    440c:	000d0513          	mv	a0,s10
    4410:	ffffe097          	auipc	ra,0xffffe
    4414:	c88080e7          	jalr	-888(ra) # 2098 <fatfs_split_path>
    4418:	fff00793          	li	a5,-1
    441c:	12f51663          	bne	a0,a5,4548 <fl_fopen+0x264>
    4420:	00040513          	mv	a0,s0
    4424:	ffffd097          	auipc	ra,0xffffd
    4428:	268080e7          	jalr	616(ra) # 168c <_free_file>
    442c:	00000413          	li	s0,0
    4430:	0214f793          	andi	a5,s1,33
    4434:	02000713          	li	a4,32
    4438:	28e79263          	bne	a5,a4,46bc <fl_fopen+0x3d8>
    443c:	10041263          	bnez	s0,4540 <fl_fopen+0x25c>
    4440:	0064f793          	andi	a5,s1,6
    4444:	26079463          	bnez	a5,46ac <fl_fopen+0x3c8>
    4448:	00000413          	li	s0,0
    444c:	040a2783          	lw	a5,64(s4)
    4450:	00078463          	beqz	a5,4458 <fl_fopen+0x174>
    4454:	000780e7          	jalr	a5
    4458:	05c12083          	lw	ra,92(sp)
    445c:	00040513          	mv	a0,s0
    4460:	05812403          	lw	s0,88(sp)
    4464:	05412483          	lw	s1,84(sp)
    4468:	05012903          	lw	s2,80(sp)
    446c:	04c12983          	lw	s3,76(sp)
    4470:	04812a03          	lw	s4,72(sp)
    4474:	04412a83          	lw	s5,68(sp)
    4478:	04012b03          	lw	s6,64(sp)
    447c:	03c12b83          	lw	s7,60(sp)
    4480:	03812c03          	lw	s8,56(sp)
    4484:	03412c83          	lw	s9,52(sp)
    4488:	03012d03          	lw	s10,48(sp)
    448c:	06010113          	addi	sp,sp,96
    4490:	00008067          	ret
    4494:	008907b3          	add	a5,s2,s0
    4498:	0007c783          	lbu	a5,0(a5)
    449c:	05378863          	beq	a5,s3,44ec <fl_fopen+0x208>
    44a0:	02f9e863          	bltu	s3,a5,44d0 <fl_fopen+0x1ec>
    44a4:	05578863          	beq	a5,s5,44f4 <fl_fopen+0x210>
    44a8:	00faea63          	bltu	s5,a5,44bc <fl_fopen+0x1d8>
    44ac:	02b00713          	li	a4,43
    44b0:	04e78663          	beq	a5,a4,44fc <fl_fopen+0x218>
    44b4:	00140413          	addi	s0,s0,1
    44b8:	ebdff06f          	j	4374 <fl_fopen+0x90>
    44bc:	03978263          	beq	a5,s9,44e0 <fl_fopen+0x1fc>
    44c0:	05200713          	li	a4,82
    44c4:	fee798e3          	bne	a5,a4,44b4 <fl_fopen+0x1d0>
    44c8:	0014e493          	ori	s1,s1,1
    44cc:	fe9ff06f          	j	44b4 <fl_fopen+0x1d0>
    44d0:	ff478ce3          	beq	a5,s4,44c8 <fl_fopen+0x1e4>
    44d4:	00fa6a63          	bltu	s4,a5,44e8 <fl_fopen+0x204>
    44d8:	01778e63          	beq	a5,s7,44f4 <fl_fopen+0x210>
    44dc:	fd879ce3          	bne	a5,s8,44b4 <fl_fopen+0x1d0>
    44e0:	0084e493          	ori	s1,s1,8
    44e4:	fd1ff06f          	j	44b4 <fl_fopen+0x1d0>
    44e8:	fd6796e3          	bne	a5,s6,44b4 <fl_fopen+0x1d0>
    44ec:	0324e493          	ori	s1,s1,50
    44f0:	fc5ff06f          	j	44b4 <fl_fopen+0x1d0>
    44f4:	0264e493          	ori	s1,s1,38
    44f8:	fbdff06f          	j	44b4 <fl_fopen+0x1d0>
    44fc:	0014f793          	andi	a5,s1,1
    4500:	00078663          	beqz	a5,450c <fl_fopen+0x228>
    4504:	0024e493          	ori	s1,s1,2
    4508:	fadff06f          	j	44b4 <fl_fopen+0x1d0>
    450c:	0024f793          	andi	a5,s1,2
    4510:	00078663          	beqz	a5,451c <fl_fopen+0x238>
    4514:	0314e493          	ori	s1,s1,49
    4518:	f9dff06f          	j	44b4 <fl_fopen+0x1d0>
    451c:	0044f793          	andi	a5,s1,4
    4520:	f8078ae3          	beqz	a5,44b4 <fl_fopen+0x1d0>
    4524:	0274e493          	ori	s1,s1,39
    4528:	f8dff06f          	j	44b4 <fl_fopen+0x1d0>
    452c:	000d0513          	mv	a0,s10
    4530:	fffff097          	auipc	ra,0xfffff
    4534:	81c080e7          	jalr	-2020(ra) # 2d4c <_open_file>
    4538:	00050413          	mv	s0,a0
    453c:	e60508e3          	beqz	a0,43ac <fl_fopen+0xc8>
    4540:	42940c23          	sb	s1,1080(s0)
    4544:	f09ff06f          	j	444c <fl_fopen+0x168>
    4548:	00040513          	mv	a0,s0
    454c:	ffffe097          	auipc	ra,0xffffe
    4550:	dc8080e7          	jalr	-568(ra) # 2314 <_check_file_open>
    4554:	00050913          	mv	s2,a0
    4558:	ec0514e3          	bnez	a0,4420 <fl_fopen+0x13c>
    455c:	01444783          	lbu	a5,20(s0)
    4560:	0e079663          	bnez	a5,464c <fl_fopen+0x368>
    4564:	008a2783          	lw	a5,8(s4)
    4568:	00f42023          	sw	a5,0(s0)
    456c:	00042583          	lw	a1,0(s0)
    4570:	01010693          	addi	a3,sp,16
    4574:	000b0613          	mv	a2,s6
    4578:	ba898513          	addi	a0,s3,-1112
    457c:	ffffe097          	auipc	ra,0xffffe
    4580:	428080e7          	jalr	1064(ra) # 29a4 <fatfs_get_file_entry>
    4584:	00100693          	li	a3,1
    4588:	e8d50ce3          	beq	a0,a3,4420 <fl_fopen+0x13c>
    458c:	00042223          	sw	zero,4(s0)
    4590:	00440613          	addi	a2,s0,4
    4594:	00068593          	mv	a1,a3
    4598:	ba898513          	addi	a0,s3,-1112
    459c:	00000097          	auipc	ra,0x0
    45a0:	908080e7          	jalr	-1784(ra) # 3ea4 <fatfs_allocate_free_space>
    45a4:	e6050ee3          	beqz	a0,4420 <fl_fopen+0x13c>
    45a8:	00002ab7          	lui	s5,0x2
    45ac:	21c40b93          	addi	s7,s0,540
    45b0:	ba898c13          	addi	s8,s3,-1112
    45b4:	70fa8a93          	addi	s5,s5,1807 # 270f <fatfs_fat_purge+0x1b>
    45b8:	000b0593          	mv	a1,s6
    45bc:	00410513          	addi	a0,sp,4
    45c0:	ffffd097          	auipc	ra,0xffffd
    45c4:	68c080e7          	jalr	1676(ra) # 1c4c <fatfs_lfn_create_sfn>
    45c8:	08090e63          	beqz	s2,4664 <fl_fopen+0x380>
    45cc:	00090613          	mv	a2,s2
    45d0:	00410593          	addi	a1,sp,4
    45d4:	000b8513          	mv	a0,s7
    45d8:	ffffd097          	auipc	ra,0xffffd
    45dc:	7f0080e7          	jalr	2032(ra) # 1dc8 <fatfs_lfn_generate_tail>
    45e0:	00042583          	lw	a1,0(s0)
    45e4:	000b8613          	mv	a2,s7
    45e8:	000c0513          	mv	a0,s8
    45ec:	fffff097          	auipc	ra,0xfffff
    45f0:	8d4080e7          	jalr	-1836(ra) # 2ec0 <fatfs_sfn_exists>
    45f4:	00050663          	beqz	a0,4600 <fl_fopen+0x31c>
    45f8:	00190913          	addi	s2,s2,1
    45fc:	fb591ee3          	bne	s2,s5,45b8 <fl_fopen+0x2d4>
    4600:	00442703          	lw	a4,4(s0)
    4604:	000027b7          	lui	a5,0x2
    4608:	70f78793          	addi	a5,a5,1807 # 270f <fatfs_fat_purge+0x1b>
    460c:	00070593          	mv	a1,a4
    4610:	02f90663          	beq	s2,a5,463c <fl_fopen+0x358>
    4614:	00042583          	lw	a1,0(s0)
    4618:	00000813          	li	a6,0
    461c:	00000793          	li	a5,0
    4620:	000b8693          	mv	a3,s7
    4624:	000b0613          	mv	a2,s6
    4628:	ba898513          	addi	a0,s3,-1112
    462c:	00000097          	auipc	ra,0x0
    4630:	990080e7          	jalr	-1648(ra) # 3fbc <fatfs_add_file_entry>
    4634:	04051463          	bnez	a0,467c <fl_fopen+0x398>
    4638:	00442583          	lw	a1,4(s0)
    463c:	ba898513          	addi	a0,s3,-1112
    4640:	fffff097          	auipc	ra,0xfffff
    4644:	1b4080e7          	jalr	436(ra) # 37f4 <fatfs_free_cluster_chain>
    4648:	dd9ff06f          	j	4420 <fl_fopen+0x13c>
    464c:	00040593          	mv	a1,s0
    4650:	000a8513          	mv	a0,s5
    4654:	ffffe097          	auipc	ra,0xffffe
    4658:	54c080e7          	jalr	1356(ra) # 2ba0 <_open_directory>
    465c:	f00518e3          	bnez	a0,456c <fl_fopen+0x288>
    4660:	dc1ff06f          	j	4420 <fl_fopen+0x13c>
    4664:	00b00613          	li	a2,11
    4668:	00410593          	addi	a1,sp,4
    466c:	000b8513          	mv	a0,s7
    4670:	ffffc097          	auipc	ra,0xffffc
    4674:	5cc080e7          	jalr	1484(ra) # c3c <memcpy>
    4678:	f69ff06f          	j	45e0 <fl_fopen+0x2fc>
    467c:	fff00793          	li	a5,-1
    4680:	00042623          	sw	zero,12(s0)
    4684:	00042423          	sw	zero,8(s0)
    4688:	42f42823          	sw	a5,1072(s0)
    468c:	42042a23          	sw	zero,1076(s0)
    4690:	00042823          	sw	zero,16(s0)
    4694:	22f42423          	sw	a5,552(s0)
    4698:	22f42623          	sw	a5,556(s0)
    469c:	ba898513          	addi	a0,s3,-1112
    46a0:	ffffe097          	auipc	ra,0xffffe
    46a4:	054080e7          	jalr	84(ra) # 26f4 <fatfs_fat_purge>
    46a8:	d89ff06f          	j	4430 <fl_fopen+0x14c>
    46ac:	000d0513          	mv	a0,s10
    46b0:	ffffe097          	auipc	ra,0xffffe
    46b4:	69c080e7          	jalr	1692(ra) # 2d4c <_open_file>
    46b8:	00050413          	mv	s0,a0
    46bc:	e80412e3          	bnez	s0,4540 <fl_fopen+0x25c>
    46c0:	d89ff06f          	j	4448 <fl_fopen+0x164>
    46c4:	00000413          	li	s0,0
    46c8:	d91ff06f          	j	4458 <fl_fopen+0x174>

000046cc <cmd16>:
    46cc:	02000050 00001500                       P.......

000046d4 <acmd41>:
    46d4:	00004069 00000100                       i@......

000046dc <cmd55>:
    46dc:	00000077 00000100                       w.......

000046e4 <cmd8>:
    46e4:	01000048 000087aa                       H.......

000046ec <cmd0>:
    46ec:	00000040 00009500                       @.......

000046f4 <AUDIO>:
    46f4:	00018000                                ....

000046f8 <BUTTONS>:
    46f8:	00010100                                ....

000046fc <SDCARD>:
    46fc:	00010080                                ....

00004700 <OLED_RST>:
    4700:	00010010                                ....

00004704 <OLED>:
    4704:	00010008                                ....

00004708 <LEDS>:
    4708:	00010004 0000002f 74696e69 2e2e2e20     ..../...init ...
    4718:	00000020 656e6f64 000a2e31 20202020      ...done1...    
    4728:	3d3d3d3d 6966203d 2073656c 3d3d3d3d     ===== files ====
    4738:	2020203d 000a0a20 0a207325 00000000     =    ...%s .....
    4748:	676d692e 00000000 0a2e7325 00000000     .img....%s......
    4758:	00006272 2e676d69 20776172 20746f6e     rb..img.raw not 
    4768:	6e756f66 000a2e64 67616d69 6f662065     found...image fo
    4778:	2e646e75 0000000a 79616c70 20676e69     und.....playing 
    4788:	0a2e2e2e 00000000 656e6f64 45454545     ........doneEEEE
    4798:	00000a2e 33323130 37363534 42413938     ....0123456789AB
    47a8:	46454443 00000000 5f544146 203a5346     CDEF....FAT_FS: 
    47b8:	6f727245 6f632072 20646c75 20746f6e     Error could not 
    47c8:	64616f6c 54414620 74656420 736c6961     load FAT details
    47d8:	64252820 0a0d2129 00000000               (%d)!......

000047e4 <font>:
    47e4:	00000000 00002f00 00030000 14000003     ...../..........
    47f4:	143e143e 3a2b6a2e 08122600 171c3224     >.>..j+:.&..$2..
    4804:	03003415 00000000 0000211e 001e2100     .4.......!...!..
    4814:	08220000 0822081c 0000081c 00002040     .."...".....@ ..
    4824:	00080800 00200000 20000000 02040810     ...... .... ....
    4834:	3f21213f 003f0100 253d0000 25002725     ?!!?..?...=%%'.%
    4844:	003f2525 3f040407 25252700 253f003d     %%?....?.'%%=.?%
    4854:	01003d25 00030539 3f25253f 25252700     %=..9...?%%?.'%%
    4864:	0028003f 40000000 00000028 00110a04     ?.(....@(.......
    4874:	00141400 0a110000 01000004 0007052d     ............-...
    4884:	253d213f 09093f1f 253f003f 3f003c27     ?!=%.?..?.?%'<.?
    4894:	00212121 1e21213f 25253f00 053f0025     !!!.?!!..?%%%.?.
    48a4:	3f000505 003d2521 3f04043f 213f2100     ...?!%=.?..?.!?!
    48b4:	20380000 3f013f21 003b0404 2020203f     ..8 !?.?..;.?   
    48c4:	3f013f00 023f3f01 3f003f04 003f2121     .?.?.??..?.?!!?.
    48d4:	0f09093f 31213f00 093f003f 27002f39     ?....?!1?.?.9/.'
    48e4:	003d2525 013f0101 20203f01 100f003f     %%=...?..?  ?...
    48f4:	3f001f30 3f203f20 3b04043b 38080f00     0..? ? ?;..;...8
    4904:	2931000f 3f002325 00000021 04081020     ..1)%#.?!... ...
    4914:	003f2102 01020000 20000201 00000020     .!?........  ...
    4924:	00000201 24243800 243f003c 3c003c24     .....8$$<.?$$<.<
    4934:	00242424 3f24243c 2c2c3c00 3f04002c     $$$.<$$?.<,,,..?
    4944:	bc000005 00fca4a4 3c04043f 00003d00     ........?..<.=..
    4954:	fd800000 3f000000 00340808 0000003f     .......?..4.?...
    4964:	3c043c00 043c3c04 3c003c04 003c2424     .<.<.<<..<.<$$<.
    4974:	3c2424fc 24243c00 083c00fc 2c000004     .$$<.<$$..<....,
    4984:	003c2c2c 00243f04 20203c00 100c003c     ,,<..?$..<  <...
    4994:	3c001c30 3c203c20 34080834 a0a0bc00     0..< < <4..4....
    49a4:	342400fc 0400242c 0000213f 0000003f     ..$4,$..?!..?...
    49b4:	043f2100 02010000 00000102 00000000     .!?.............
    49c4:	00000001 00000003 00000005 00000007     ................
    49d4:	00000009 0000000e 00000010 00000012     ................
    49e4:	00000014 00000016 00000018 0000001c     ................
    49f4:	0000001e                                ....

000049f8 <file_count>:
    49f8:	00000000                                ....

000049fc <sdcard_while_loading_callback>:
    49fc:	00000000                                ....

00004a00 <back_color>:
	...

00004a01 <front_color>:
    4a01:	                                         ...

00004a04 <cursor_y>:
    4a04:	00000000                                ....

00004a08 <cursor_x>:
    4a08:	00000000                                ....

00004a0c <f_putchar>:
    4a0c:	00000000                                ....

00004a10 <_free_file_list>:
	...

00004a18 <_open_file_list>:
	...

00004a20 <_filelib_valid>:
    4a20:	00000000                                ....

00004a24 <_filelib_init>:
    4a24:	00000000                                ....
