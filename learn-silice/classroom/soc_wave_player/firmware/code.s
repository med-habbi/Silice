
code.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <_start>:
       0:	00010137          	lui	sp,0x10
       4:	00000097          	auipc	ra,0x0
       8:	214080e7          	jalr	532(ra) # 218 <main>
       c:	00000317          	auipc	t1,0x0
      10:	00830067          	jr	8(t1) # 14 <exit>

00000014 <exit>:
      14:	00000000          	.word	0x00000000
      18:	00008067          	ret

0000001c <scan_files>:
      1c:	ed010113          	addi	sp,sp,-304 # fed0 <_files+0x4d78>
      20:	00005537          	lui	a0,0x5
      24:	12812423          	sw	s0,296(sp)
      28:	00410593          	addi	a1,sp,4
      2c:	00005437          	lui	s0,0x5
      30:	83c50513          	addi	a0,a0,-1988 # 483c <LEDS+0x4>
      34:	12112623          	sw	ra,300(sp)
      38:	12912223          	sw	s1,292(sp)
      3c:	b4042023          	sw	zero,-1216(s0) # 4b40 <file_count>
      40:	00003097          	auipc	ra,0x3
      44:	d74080e7          	jalr	-652(ra) # 2db4 <fl_opendir>
      48:	02050a63          	beqz	a0,7c <scan_files+0x60>
      4c:	01010593          	addi	a1,sp,16
      50:	01f00493          	li	s1,31
      54:	00410513          	addi	a0,sp,4
      58:	00003097          	auipc	ra,0x3
      5c:	428080e7          	jalr	1064(ra) # 3480 <fl_readdir>
      60:	00051863          	bnez	a0,70 <scan_files+0x54>
      64:	b4042703          	lw	a4,-1216(s0)
      68:	01010593          	addi	a1,sp,16
      6c:	02e4d263          	bge	s1,a4,90 <scan_files+0x74>
      70:	00410513          	addi	a0,sp,4
      74:	00002097          	auipc	ra,0x2
      78:	928080e7          	jalr	-1752(ra) # 199c <fl_closedir>
      7c:	12c12083          	lw	ra,300(sp)
      80:	12812403          	lw	s0,296(sp)
      84:	12412483          	lw	s1,292(sp)
      88:	13010113          	addi	sp,sp,304
      8c:	00008067          	ret
      90:	11414783          	lbu	a5,276(sp)
      94:	fc0790e3          	bnez	a5,54 <scan_files+0x38>
      98:	00671693          	slli	a3,a4,0x6
      9c:	00e68633          	add	a2,a3,a4
      a0:	000057b7          	lui	a5,0x5
      a4:	00261613          	slli	a2,a2,0x2
      a8:	b7078793          	addi	a5,a5,-1168 # 4b70 <files>
      ac:	0ff00313          	li	t1,255
      b0:	00a58833          	add	a6,a1,a0
      b4:	00084883          	lbu	a7,0(a6)
      b8:	00088463          	beqz	a7,c0 <scan_files+0xa4>
      bc:	02651263          	bne	a0,t1,e0 <scan_files+0xc4>
      c0:	00e686b3          	add	a3,a3,a4
      c4:	00269693          	slli	a3,a3,0x2
      c8:	00d787b3          	add	a5,a5,a3
      cc:	00a787b3          	add	a5,a5,a0
      d0:	00170713          	addi	a4,a4,1
      d4:	00078023          	sb	zero,0(a5)
      d8:	b4e42023          	sw	a4,-1216(s0)
      dc:	f79ff06f          	j	54 <scan_files+0x38>
      e0:	00c50833          	add	a6,a0,a2
      e4:	01078833          	add	a6,a5,a6
      e8:	01180023          	sb	a7,0(a6)
      ec:	00150513          	addi	a0,a0,1
      f0:	fc1ff06f          	j	b0 <scan_files+0x94>

000000f4 <clear_audio>:
      f4:	fe010113          	addi	sp,sp,-32
      f8:	000057b7          	lui	a5,0x5
      fc:	00812c23          	sw	s0,24(sp)
     100:	8247a403          	lw	s0,-2012(a5) # 4824 <AUDIO>
     104:	00112e23          	sw	ra,28(sp)
     108:	00912a23          	sw	s1,20(sp)
     10c:	00042703          	lw	a4,0(s0)
     110:	01212823          	sw	s2,16(sp)
     114:	01312623          	sw	s3,12(sp)
     118:	00042783          	lw	a5,0(s0)
     11c:	fef70ee3          	beq	a4,a5,118 <clear_audio+0x24>
     120:	00200493          	li	s1,2
     124:	00100993          	li	s3,1
     128:	00042903          	lw	s2,0(s0)
     12c:	20000613          	li	a2,512
     130:	00000593          	li	a1,0
     134:	00090513          	mv	a0,s2
     138:	00001097          	auipc	ra,0x1
     13c:	c18080e7          	jalr	-1000(ra) # d50 <memset>
     140:	00042783          	lw	a5,0(s0)
     144:	fef90ee3          	beq	s2,a5,140 <clear_audio+0x4c>
     148:	03349063          	bne	s1,s3,168 <clear_audio+0x74>
     14c:	01c12083          	lw	ra,28(sp)
     150:	01812403          	lw	s0,24(sp)
     154:	01412483          	lw	s1,20(sp)
     158:	01012903          	lw	s2,16(sp)
     15c:	00c12983          	lw	s3,12(sp)
     160:	02010113          	addi	sp,sp,32
     164:	00008067          	ret
     168:	00100493          	li	s1,1
     16c:	fbdff06f          	j	128 <clear_audio+0x34>

00000170 <click_sound>:
     170:	000055b7          	lui	a1,0x5
     174:	00005537          	lui	a0,0x5
     178:	fe010113          	addi	sp,sp,-32
     17c:	84058593          	addi	a1,a1,-1984 # 4840 <LEDS+0x8>
     180:	84850513          	addi	a0,a0,-1976 # 4848 <LEDS+0x10>
     184:	00112e23          	sw	ra,28(sp)
     188:	00812c23          	sw	s0,24(sp)
     18c:	00912a23          	sw	s1,20(sp)
     190:	01212823          	sw	s2,16(sp)
     194:	00004097          	auipc	ra,0x4
     198:	280080e7          	jalr	640(ra) # 4414 <fl_fopen>
     19c:	06050263          	beqz	a0,200 <click_sound+0x90>
     1a0:	000057b7          	lui	a5,0x5
     1a4:	8247a903          	lw	s2,-2012(a5) # 4824 <AUDIO>
     1a8:	00050693          	mv	a3,a0
     1ac:	1ff00493          	li	s1,511
     1b0:	00092403          	lw	s0,0(s2)
     1b4:	20000613          	li	a2,512
     1b8:	00100593          	li	a1,1
     1bc:	00040513          	mv	a0,s0
     1c0:	00d12623          	sw	a3,12(sp)
     1c4:	00004097          	auipc	ra,0x4
     1c8:	c4c080e7          	jalr	-948(ra) # 3e10 <fl_fread>
     1cc:	00c12683          	lw	a3,12(sp)
     1d0:	00a05863          	blez	a0,1e0 <click_sound+0x70>
     1d4:	00092783          	lw	a5,0(s2)
     1d8:	fef40ee3          	beq	s0,a5,1d4 <click_sound+0x64>
     1dc:	fca4cae3          	blt	s1,a0,1b0 <click_sound+0x40>
     1e0:	01812403          	lw	s0,24(sp)
     1e4:	01c12083          	lw	ra,28(sp)
     1e8:	01412483          	lw	s1,20(sp)
     1ec:	01012903          	lw	s2,16(sp)
     1f0:	00068513          	mv	a0,a3
     1f4:	02010113          	addi	sp,sp,32
     1f8:	00004317          	auipc	t1,0x4
     1fc:	b3c30067          	jr	-1220(t1) # 3d34 <fl_fclose>
     200:	01c12083          	lw	ra,28(sp)
     204:	01812403          	lw	s0,24(sp)
     208:	01412483          	lw	s1,20(sp)
     20c:	01012903          	lw	s2,16(sp)
     210:	02010113          	addi	sp,sp,32
     214:	00008067          	ret

00000218 <main>:
     218:	fb010113          	addi	sp,sp,-80
     21c:	000057b7          	lui	a5,0x5
     220:	03512a23          	sw	s5,52(sp)
     224:	8287aa83          	lw	s5,-2008(a5) # 4828 <BUTTONS>
     228:	000057b7          	lui	a5,0x5
     22c:	03712623          	sw	s7,44(sp)
     230:	8387ab83          	lw	s7,-1992(a5) # 4838 <LEDS>
     234:	000057b7          	lui	a5,0x5
     238:	8247a783          	lw	a5,-2012(a5) # 4824 <AUDIO>
     23c:	03612823          	sw	s6,48(sp)
     240:	00001b37          	lui	s6,0x1
     244:	03912223          	sw	s9,36(sp)
     248:	04112623          	sw	ra,76(sp)
     24c:	04812423          	sw	s0,72(sp)
     250:	04912223          	sw	s1,68(sp)
     254:	05212023          	sw	s2,64(sp)
     258:	03312e23          	sw	s3,60(sp)
     25c:	03412c23          	sw	s4,56(sp)
     260:	03812423          	sw	s8,40(sp)
     264:	03a12023          	sw	s10,32(sp)
     268:	01b12e23          	sw	s11,28(sp)
     26c:	00005cb7          	lui	s9,0x5
     270:	054b0b13          	addi	s6,s6,84 # 1054 <display_putchar>
     274:	00f12223          	sw	a5,4(sp)
     278:	b56caa23          	sw	s6,-1196(s9) # 4b54 <f_putchar>
     27c:	00001097          	auipc	ra,0x1
     280:	ce0080e7          	jalr	-800(ra) # f5c <oled_init>
     284:	00001097          	auipc	ra,0x1
     288:	ce4080e7          	jalr	-796(ra) # f68 <oled_fullscreen>
     28c:	00001097          	auipc	ra,0x1
     290:	d94080e7          	jalr	-620(ra) # 1020 <display_framebuffer>
     294:	00004637          	lui	a2,0x4
     298:	00000593          	li	a1,0
     29c:	00001097          	auipc	ra,0x1
     2a0:	ab4080e7          	jalr	-1356(ra) # d50 <memset>
     2a4:	00001097          	auipc	ra,0x1
     2a8:	ec8080e7          	jalr	-312(ra) # 116c <display_refresh>
     2ac:	00000593          	li	a1,0
     2b0:	00000513          	li	a0,0
     2b4:	00001097          	auipc	ra,0x1
     2b8:	d78080e7          	jalr	-648(ra) # 102c <display_set_cursor>
     2bc:	00000593          	li	a1,0
     2c0:	0ff00513          	li	a0,255
     2c4:	00001097          	auipc	ra,0x1
     2c8:	d7c080e7          	jalr	-644(ra) # 1040 <display_set_front_back_color>
     2cc:	00005537          	lui	a0,0x5
     2d0:	85c50513          	addi	a0,a0,-1956 # 485c <LEDS+0x24>
     2d4:	00001097          	auipc	ra,0x1
     2d8:	090080e7          	jalr	144(ra) # 1364 <printf>
     2dc:	00001937          	lui	s2,0x1
     2e0:	00001437          	lui	s0,0x1
     2e4:	00001097          	auipc	ra,0x1
     2e8:	e88080e7          	jalr	-376(ra) # 116c <display_refresh>
     2ec:	c9490913          	addi	s2,s2,-876 # c94 <sdcard_writesector>
     2f0:	00001097          	auipc	ra,0x1
     2f4:	800080e7          	jalr	-2048(ra) # af0 <sdcard_init>
     2f8:	c4040413          	addi	s0,s0,-960 # c40 <sdcard_readsector>
     2fc:	00001097          	auipc	ra,0x1
     300:	638080e7          	jalr	1592(ra) # 1934 <fl_init>
     304:	00090593          	mv	a1,s2
     308:	00040513          	mv	a0,s0
     30c:	00002097          	auipc	ra,0x2
     310:	490080e7          	jalr	1168(ra) # 279c <fl_attach_media>
     314:	00050493          	mv	s1,a0
     318:	fe0516e3          	bnez	a0,304 <main+0xec>
     31c:	00005537          	lui	a0,0x5
     320:	86850513          	addi	a0,a0,-1944 # 4868 <LEDS+0x30>
     324:	00001097          	auipc	ra,0x1
     328:	040080e7          	jalr	64(ra) # 1364 <printf>
     32c:	00001097          	auipc	ra,0x1
     330:	e40080e7          	jalr	-448(ra) # 116c <display_refresh>
     334:	00000097          	auipc	ra,0x0
     338:	dc0080e7          	jalr	-576(ra) # f4 <clear_audio>
     33c:	00000097          	auipc	ra,0x0
     340:	ce0080e7          	jalr	-800(ra) # 1c <scan_files>
     344:	000057b7          	lui	a5,0x5
     348:	87078793          	addi	a5,a5,-1936 # 4870 <LEDS+0x38>
     34c:	00f12623          	sw	a5,12(sp)
     350:	000057b7          	lui	a5,0x5
     354:	88c78793          	addi	a5,a5,-1908 # 488c <LEDS+0x54>
     358:	00000913          	li	s2,0
     35c:	00000413          	li	s0,0
     360:	00005db7          	lui	s11,0x5
     364:	00005c37          	lui	s8,0x5
     368:	00f12423          	sw	a5,8(sp)
     36c:	00000593          	li	a1,0
     370:	00000513          	li	a0,0
     374:	00001097          	auipc	ra,0x1
     378:	cb8080e7          	jalr	-840(ra) # 102c <display_set_cursor>
     37c:	0ff00593          	li	a1,255
     380:	00000513          	li	a0,0
     384:	00001097          	auipc	ra,0x1
     388:	cbc080e7          	jalr	-836(ra) # 1040 <display_set_front_back_color>
     38c:	00c12503          	lw	a0,12(sp)
     390:	b70d8a13          	addi	s4,s11,-1168 # 4b70 <files>
     394:	00000993          	li	s3,0
     398:	00001097          	auipc	ra,0x1
     39c:	fcc080e7          	jalr	-52(ra) # 1364 <printf>
     3a0:	00001097          	auipc	ra,0x1
     3a4:	dcc080e7          	jalr	-564(ra) # 116c <display_refresh>
     3a8:	000a0d13          	mv	s10,s4
     3ac:	b40c2783          	lw	a5,-1216(s8) # 4b40 <file_count>
     3b0:	1af9ca63          	blt	s3,a5,564 <main+0x34c>
     3b4:	00001097          	auipc	ra,0x1
     3b8:	db8080e7          	jalr	-584(ra) # 116c <display_refresh>
     3bc:	000aa983          	lw	s3,0(s5)
     3c0:	0109f793          	andi	a5,s3,16
     3c4:	00078c63          	beqz	a5,3dc <main+0x1c4>
     3c8:	01097793          	andi	a5,s2,16
     3cc:	00079863          	bnez	a5,3dc <main+0x1c4>
     3d0:	00140413          	addi	s0,s0,1
     3d4:	00000097          	auipc	ra,0x0
     3d8:	d9c080e7          	jalr	-612(ra) # 170 <click_sound>
     3dc:	0089f793          	andi	a5,s3,8
     3e0:	00078c63          	beqz	a5,3f8 <main+0x1e0>
     3e4:	00897913          	andi	s2,s2,8
     3e8:	00091863          	bnez	s2,3f8 <main+0x1e0>
     3ec:	fff40413          	addi	s0,s0,-1
     3f0:	00000097          	auipc	ra,0x0
     3f4:	d80080e7          	jalr	-640(ra) # 170 <click_sound>
     3f8:	b40c2783          	lw	a5,-1216(s8)
     3fc:	1a045263          	bgez	s0,5a0 <main+0x388>
     400:	fff78413          	addi	s0,a5,-1
     404:	0049f693          	andi	a3,s3,4
     408:	c0002673          	rdcycle	a2
     40c:	0000c7b7          	lui	a5,0xc
     410:	34f78793          	addi	a5,a5,847 # c34f <_files+0x11f7>
     414:	c0002773          	rdcycle	a4
     418:	40c70733          	sub	a4,a4,a2
     41c:	fee7fce3          	bgeu	a5,a4,414 <main+0x1fc>
     420:	12068e63          	beqz	a3,55c <main+0x344>
     424:	00007a37          	lui	s4,0x7
     428:	00005737          	lui	a4,0x5
     42c:	00007db7          	lui	s11,0x7
     430:	83c70593          	addi	a1,a4,-1988 # 483c <LEDS+0x4>
     434:	c70a0513          	addi	a0,s4,-912 # 6c70 <tmp>
     438:	c60a0823          	sb	zero,-912(s4)
     43c:	be0d8823          	sb	zero,-1040(s11) # 6bf0 <tmp1>
     440:	00001097          	auipc	ra,0x1
     444:	9d4080e7          	jalr	-1580(ra) # e14 <strcat>
     448:	00641793          	slli	a5,s0,0x6
     44c:	00878433          	add	s0,a5,s0
     450:	00241413          	slli	s0,s0,0x2
     454:	008d0433          	add	s0,s10,s0
     458:	00040593          	mv	a1,s0
     45c:	c70a0513          	addi	a0,s4,-912
     460:	00001097          	auipc	ra,0x1
     464:	9b4080e7          	jalr	-1612(ra) # e14 <strcat>
     468:	00005737          	lui	a4,0x5
     46c:	83c70593          	addi	a1,a4,-1988 # 483c <LEDS+0x4>
     470:	bf0d8513          	addi	a0,s11,-1040
     474:	00001097          	auipc	ra,0x1
     478:	9a0080e7          	jalr	-1632(ra) # e14 <strcat>
     47c:	00040593          	mv	a1,s0
     480:	bf0d8513          	addi	a0,s11,-1040
     484:	00001097          	auipc	ra,0x1
     488:	990080e7          	jalr	-1648(ra) # e14 <strcat>
     48c:	000055b7          	lui	a1,0x5
     490:	89458593          	addi	a1,a1,-1900 # 4894 <LEDS+0x5c>
     494:	bf0d8513          	addi	a0,s11,-1040
     498:	00001097          	auipc	ra,0x1
     49c:	97c080e7          	jalr	-1668(ra) # e14 <strcat>
     4a0:	00005537          	lui	a0,0x5
     4a4:	bf0d8593          	addi	a1,s11,-1040
     4a8:	89c50513          	addi	a0,a0,-1892 # 489c <LEDS+0x64>
     4ac:	00001097          	auipc	ra,0x1
     4b0:	eb8080e7          	jalr	-328(ra) # 1364 <printf>
     4b4:	00001097          	auipc	ra,0x1
     4b8:	cb8080e7          	jalr	-840(ra) # 116c <display_refresh>
     4bc:	c00026f3          	rdcycle	a3
     4c0:	008957b7          	lui	a5,0x895
     4c4:	43f78793          	addi	a5,a5,1087 # 89543f <__stacktop+0x88543f>
     4c8:	c0002773          	rdcycle	a4
     4cc:	40d70733          	sub	a4,a4,a3
     4d0:	fee7fce3          	bgeu	a5,a4,4c8 <main+0x2b0>
     4d4:	00005c37          	lui	s8,0x5
     4d8:	840c0593          	addi	a1,s8,-1984 # 4840 <LEDS+0x8>
     4dc:	bf0d8513          	addi	a0,s11,-1040
     4e0:	00004097          	auipc	ra,0x4
     4e4:	f34080e7          	jalr	-204(ra) # 4414 <fl_fopen>
     4e8:	00050913          	mv	s2,a0
     4ec:	0c051263          	bnez	a0,5b0 <main+0x398>
     4f0:	00005537          	lui	a0,0x5
     4f4:	8a450513          	addi	a0,a0,-1884 # 48a4 <LEDS+0x6c>
     4f8:	00001097          	auipc	ra,0x1
     4fc:	e6c080e7          	jalr	-404(ra) # 1364 <printf>
     500:	00001097          	auipc	ra,0x1
     504:	c6c080e7          	jalr	-916(ra) # 116c <display_refresh>
     508:	000ba023          	sw	zero,0(s7)
     50c:	00001097          	auipc	ra,0x1
     510:	c60080e7          	jalr	-928(ra) # 116c <display_refresh>
     514:	840c0593          	addi	a1,s8,-1984
     518:	c70a0513          	addi	a0,s4,-912
     51c:	00004097          	auipc	ra,0x4
     520:	ef8080e7          	jalr	-264(ra) # 4414 <fl_fopen>
     524:	00050913          	mv	s2,a0
     528:	0c051a63          	bnez	a0,5fc <main+0x3e4>
     52c:	00040513          	mv	a0,s0
     530:	00001097          	auipc	ra,0x1
     534:	e34080e7          	jalr	-460(ra) # 1364 <printf>
     538:	00001097          	auipc	ra,0x1
     53c:	c34080e7          	jalr	-972(ra) # 116c <display_refresh>
     540:	00005537          	lui	a0,0x5
     544:	8d850513          	addi	a0,a0,-1832 # 48d8 <LEDS+0xa0>
     548:	00001097          	auipc	ra,0x1
     54c:	e1c080e7          	jalr	-484(ra) # 1364 <printf>
     550:	00001097          	auipc	ra,0x1
     554:	c1c080e7          	jalr	-996(ra) # 116c <display_refresh>
     558:	d21ff06f          	j	278 <main+0x60>
     55c:	00098913          	mv	s2,s3
     560:	e0dff06f          	j	36c <main+0x154>
     564:	02899863          	bne	s3,s0,594 <main+0x37c>
     568:	0ff00593          	li	a1,255
     56c:	00000513          	li	a0,0
     570:	00001097          	auipc	ra,0x1
     574:	ad0080e7          	jalr	-1328(ra) # 1040 <display_set_front_back_color>
     578:	00812503          	lw	a0,8(sp)
     57c:	000a0593          	mv	a1,s4
     580:	00198993          	addi	s3,s3,1
     584:	00001097          	auipc	ra,0x1
     588:	de0080e7          	jalr	-544(ra) # 1364 <printf>
     58c:	104a0a13          	addi	s4,s4,260
     590:	e1dff06f          	j	3ac <main+0x194>
     594:	00000593          	li	a1,0
     598:	0ff00513          	li	a0,255
     59c:	fd5ff06f          	j	570 <main+0x358>
     5a0:	00f427b3          	slt	a5,s0,a5
     5a4:	40f007b3          	neg	a5,a5
     5a8:	00f47433          	and	s0,s0,a5
     5ac:	e59ff06f          	j	404 <main+0x1ec>
     5b0:	00005537          	lui	a0,0x5
     5b4:	8b850513          	addi	a0,a0,-1864 # 48b8 <LEDS+0x80>
     5b8:	00001097          	auipc	ra,0x1
     5bc:	dac080e7          	jalr	-596(ra) # 1364 <printf>
     5c0:	00001097          	auipc	ra,0x1
     5c4:	bac080e7          	jalr	-1108(ra) # 116c <display_refresh>
     5c8:	00001097          	auipc	ra,0x1
     5cc:	a58080e7          	jalr	-1448(ra) # 1020 <display_framebuffer>
     5d0:	00090693          	mv	a3,s2
     5d4:	00004637          	lui	a2,0x4
     5d8:	00100593          	li	a1,1
     5dc:	00004097          	auipc	ra,0x4
     5e0:	834080e7          	jalr	-1996(ra) # 3e10 <fl_fread>
     5e4:	00001097          	auipc	ra,0x1
     5e8:	b88080e7          	jalr	-1144(ra) # 116c <display_refresh>
     5ec:	00090513          	mv	a0,s2
     5f0:	00003097          	auipc	ra,0x3
     5f4:	744080e7          	jalr	1860(ra) # 3d34 <fl_fclose>
     5f8:	f11ff06f          	j	508 <main+0x2f0>
     5fc:	00005537          	lui	a0,0x5
     600:	8c850513          	addi	a0,a0,-1848 # 48c8 <LEDS+0x90>
     604:	00001097          	auipc	ra,0x1
     608:	d60080e7          	jalr	-672(ra) # 1364 <printf>
     60c:	00001097          	auipc	ra,0x1
     610:	b60080e7          	jalr	-1184(ra) # 116c <display_refresh>
     614:	00100413          	li	s0,1
     618:	1ff00c13          	li	s8,511
     61c:	000aa783          	lw	a5,0(s5)
     620:	00412783          	lw	a5,4(sp)
     624:	00090693          	mv	a3,s2
     628:	20000613          	li	a2,512
     62c:	0007aa03          	lw	s4,0(a5)
     630:	00100593          	li	a1,1
     634:	000a0513          	mv	a0,s4
     638:	00003097          	auipc	ra,0x3
     63c:	7d8080e7          	jalr	2008(ra) # 3e10 <fl_fread>
     640:	06a04863          	bgtz	a0,6b0 <main+0x498>
     644:	00090513          	mv	a0,s2
     648:	00003097          	auipc	ra,0x3
     64c:	6ec080e7          	jalr	1772(ra) # 3d34 <fl_fclose>
     650:	ef1ff06f          	j	540 <main+0x328>
     654:	f8040793          	addi	a5,s0,-128
     658:	fff40713          	addi	a4,s0,-1
     65c:	0017b793          	seqz	a5,a5
     660:	00173713          	seqz	a4,a4
     664:	000aa683          	lw	a3,0(s5)
     668:	00e7e7b3          	or	a5,a5,a4
     66c:	02f48a63          	beq	s1,a5,6a0 <main+0x488>
     670:	00141413          	slli	s0,s0,0x1
     674:	008ba023          	sw	s0,0(s7)
     678:	0026f713          	andi	a4,a3,2
     67c:	02070663          	beqz	a4,6a8 <main+0x490>
     680:	0029f993          	andi	s3,s3,2
     684:	02099263          	bnez	s3,6a8 <main+0x490>
     688:	00000097          	auipc	ra,0x0
     68c:	ae8080e7          	jalr	-1304(ra) # 170 <click_sound>
     690:	00090513          	mv	a0,s2
     694:	00003097          	auipc	ra,0x3
     698:	6a0080e7          	jalr	1696(ra) # 3d34 <fl_fclose>
     69c:	fa9ff06f          	j	644 <main+0x42c>
     6a0:	40145413          	srai	s0,s0,0x1
     6a4:	fd1ff06f          	j	674 <main+0x45c>
     6a8:	00f4c4b3          	xor	s1,s1,a5
     6ac:	00068993          	mv	s3,a3
     6b0:	00412783          	lw	a5,4(sp)
     6b4:	0007a783          	lw	a5,0(a5)
     6b8:	f8fa0ee3          	beq	s4,a5,654 <main+0x43c>
     6bc:	f6ac40e3          	blt	s8,a0,61c <main+0x404>
     6c0:	f85ff06f          	j	644 <main+0x42c>

000006c4 <pause>:
     6c4:	c0002773          	rdcycle	a4
     6c8:	c00027f3          	rdcycle	a5
     6cc:	40e787b3          	sub	a5,a5,a4
     6d0:	fea7ece3          	bltu	a5,a0,6c8 <pause+0x4>
     6d4:	00008067          	ret

000006d8 <sdcard_idle>:
     6d8:	00008067          	ret

000006dc <sdcard_select>:
     6dc:	000057b7          	lui	a5,0x5
     6e0:	82c7a783          	lw	a5,-2004(a5) # 482c <SDCARD>
     6e4:	00200713          	li	a4,2
     6e8:	00e7a023          	sw	a4,0(a5)
     6ec:	00008067          	ret

000006f0 <sdcard_ponder>:
     6f0:	000056b7          	lui	a3,0x5
     6f4:	82c6a683          	lw	a3,-2004(a3) # 482c <SDCARD>
     6f8:	01000793          	li	a5,16
     6fc:	00000713          	li	a4,0
     700:	00676613          	ori	a2,a4,6
     704:	00c6a023          	sw	a2,0(a3)
     708:	00174713          	xori	a4,a4,1
     70c:	00000013          	nop
     710:	fff78793          	addi	a5,a5,-1
     714:	fe0796e3          	bnez	a5,700 <sdcard_ponder+0x10>
     718:	00008067          	ret

0000071c <sdcard_unselect>:
     71c:	000057b7          	lui	a5,0x5
     720:	82c7a783          	lw	a5,-2004(a5) # 482c <SDCARD>
     724:	00600713          	li	a4,6
     728:	00e7a023          	sw	a4,0(a5)
     72c:	00008067          	ret

00000730 <sdcard_send>:
     730:	000057b7          	lui	a5,0x5
     734:	82c7a783          	lw	a5,-2004(a5) # 482c <SDCARD>
     738:	00655713          	srli	a4,a0,0x6
     73c:	00277713          	andi	a4,a4,2
     740:	00e7a023          	sw	a4,0(a5)
     744:	00176713          	ori	a4,a4,1
     748:	00e7a023          	sw	a4,0(a5)
     74c:	00555713          	srli	a4,a0,0x5
     750:	00277713          	andi	a4,a4,2
     754:	00e7a023          	sw	a4,0(a5)
     758:	00176713          	ori	a4,a4,1
     75c:	00e7a023          	sw	a4,0(a5)
     760:	00455713          	srli	a4,a0,0x4
     764:	00277713          	andi	a4,a4,2
     768:	00e7a023          	sw	a4,0(a5)
     76c:	00176713          	ori	a4,a4,1
     770:	00e7a023          	sw	a4,0(a5)
     774:	00355713          	srli	a4,a0,0x3
     778:	00277713          	andi	a4,a4,2
     77c:	00e7a023          	sw	a4,0(a5)
     780:	00176713          	ori	a4,a4,1
     784:	00e7a023          	sw	a4,0(a5)
     788:	00255713          	srli	a4,a0,0x2
     78c:	00277713          	andi	a4,a4,2
     790:	00e7a023          	sw	a4,0(a5)
     794:	00176713          	ori	a4,a4,1
     798:	00e7a023          	sw	a4,0(a5)
     79c:	00155713          	srli	a4,a0,0x1
     7a0:	00277713          	andi	a4,a4,2
     7a4:	00e7a023          	sw	a4,0(a5)
     7a8:	00176713          	ori	a4,a4,1
     7ac:	00e7a023          	sw	a4,0(a5)
     7b0:	00257713          	andi	a4,a0,2
     7b4:	00e7a023          	sw	a4,0(a5)
     7b8:	00151513          	slli	a0,a0,0x1
     7bc:	00176713          	ori	a4,a4,1
     7c0:	00e7a023          	sw	a4,0(a5)
     7c4:	00257513          	andi	a0,a0,2
     7c8:	00a7a023          	sw	a0,0(a5)
     7cc:	00156513          	ori	a0,a0,1
     7d0:	00a7a023          	sw	a0,0(a5)
     7d4:	00200713          	li	a4,2
     7d8:	00e7a023          	sw	a4,0(a5)
     7dc:	000057b7          	lui	a5,0x5
     7e0:	b447a783          	lw	a5,-1212(a5) # 4b44 <sdcard_while_loading_callback>
     7e4:	00078067          	jr	a5

000007e8 <sdcard_read>:
     7e8:	fd010113          	addi	sp,sp,-48
     7ec:	fff50793          	addi	a5,a0,-1
     7f0:	03212023          	sw	s2,32(sp)
     7f4:	00100913          	li	s2,1
     7f8:	00f91933          	sll	s2,s2,a5
     7fc:	000057b7          	lui	a5,0x5
     800:	01312e23          	sw	s3,28(sp)
     804:	82c7a983          	lw	s3,-2004(a5) # 482c <SDCARD>
     808:	02812423          	sw	s0,40(sp)
     80c:	02912223          	sw	s1,36(sp)
     810:	01412c23          	sw	s4,24(sp)
     814:	01512a23          	sw	s5,20(sp)
     818:	01612823          	sw	s6,16(sp)
     81c:	02112623          	sw	ra,44(sp)
     820:	0ff00413          	li	s0,255
     824:	00000493          	li	s1,0
     828:	00300a13          	li	s4,3
     82c:	00200a93          	li	s5,2
     830:	00005b37          	lui	s6,0x5
     834:	02058c63          	beqz	a1,86c <sdcard_read+0x84>
     838:	012477b3          	and	a5,s0,s2
     83c:	02079a63          	bnez	a5,870 <sdcard_read+0x88>
     840:	02c12083          	lw	ra,44(sp)
     844:	0ff47513          	zext.b	a0,s0
     848:	02812403          	lw	s0,40(sp)
     84c:	02412483          	lw	s1,36(sp)
     850:	02012903          	lw	s2,32(sp)
     854:	01c12983          	lw	s3,28(sp)
     858:	01812a03          	lw	s4,24(sp)
     85c:	01412a83          	lw	s5,20(sp)
     860:	01012b03          	lw	s6,16(sp)
     864:	03010113          	addi	sp,sp,48
     868:	00008067          	ret
     86c:	fca4dae3          	bge	s1,a0,840 <sdcard_read+0x58>
     870:	0149a023          	sw	s4,0(s3)
     874:	0159a023          	sw	s5,0(s3)
     878:	0009a783          	lw	a5,0(s3)
     87c:	00141413          	slli	s0,s0,0x1
     880:	00b12623          	sw	a1,12(sp)
     884:	00f46433          	or	s0,s0,a5
     888:	b44b2783          	lw	a5,-1212(s6) # 4b44 <sdcard_while_loading_callback>
     88c:	00a12423          	sw	a0,8(sp)
     890:	00148493          	addi	s1,s1,1
     894:	000780e7          	jalr	a5
     898:	00c12583          	lw	a1,12(sp)
     89c:	00812503          	lw	a0,8(sp)
     8a0:	f95ff06f          	j	834 <sdcard_read+0x4c>

000008a4 <sdcard_get>:
     8a4:	fe010113          	addi	sp,sp,-32
     8a8:	00112e23          	sw	ra,28(sp)
     8ac:	00812c23          	sw	s0,24(sp)
     8b0:	00912a23          	sw	s1,20(sp)
     8b4:	00050413          	mv	s0,a0
     8b8:	00b12623          	sw	a1,12(sp)
     8bc:	00000097          	auipc	ra,0x0
     8c0:	e20080e7          	jalr	-480(ra) # 6dc <sdcard_select>
     8c4:	00c12583          	lw	a1,12(sp)
     8c8:	00040513          	mv	a0,s0
     8cc:	00100493          	li	s1,1
     8d0:	00000097          	auipc	ra,0x0
     8d4:	f18080e7          	jalr	-232(ra) # 7e8 <sdcard_read>
     8d8:	00345413          	srli	s0,s0,0x3
     8dc:	0284c463          	blt	s1,s0,904 <sdcard_get+0x60>
     8e0:	00a12623          	sw	a0,12(sp)
     8e4:	00000097          	auipc	ra,0x0
     8e8:	e38080e7          	jalr	-456(ra) # 71c <sdcard_unselect>
     8ec:	01c12083          	lw	ra,28(sp)
     8f0:	01812403          	lw	s0,24(sp)
     8f4:	00c12503          	lw	a0,12(sp)
     8f8:	01412483          	lw	s1,20(sp)
     8fc:	02010113          	addi	sp,sp,32
     900:	00008067          	ret
     904:	00000593          	li	a1,0
     908:	00800513          	li	a0,8
     90c:	00000097          	auipc	ra,0x0
     910:	edc080e7          	jalr	-292(ra) # 7e8 <sdcard_read>
     914:	00148493          	addi	s1,s1,1
     918:	fc5ff06f          	j	8dc <sdcard_get+0x38>

0000091c <sdcard_cmd>:
     91c:	ff010113          	addi	sp,sp,-16
     920:	00812423          	sw	s0,8(sp)
     924:	00912223          	sw	s1,4(sp)
     928:	01212023          	sw	s2,0(sp)
     92c:	00112623          	sw	ra,12(sp)
     930:	00050913          	mv	s2,a0
     934:	00000413          	li	s0,0
     938:	00000097          	auipc	ra,0x0
     93c:	da4080e7          	jalr	-604(ra) # 6dc <sdcard_select>
     940:	00600493          	li	s1,6
     944:	008907b3          	add	a5,s2,s0
     948:	0007c503          	lbu	a0,0(a5)
     94c:	00140413          	addi	s0,s0,1
     950:	00000097          	auipc	ra,0x0
     954:	de0080e7          	jalr	-544(ra) # 730 <sdcard_send>
     958:	fe9416e3          	bne	s0,s1,944 <sdcard_cmd+0x28>
     95c:	00812403          	lw	s0,8(sp)
     960:	00c12083          	lw	ra,12(sp)
     964:	00412483          	lw	s1,4(sp)
     968:	00012903          	lw	s2,0(sp)
     96c:	01010113          	addi	sp,sp,16
     970:	00000317          	auipc	t1,0x0
     974:	dac30067          	jr	-596(t1) # 71c <sdcard_unselect>

00000978 <sdcard_start_sector>:
     978:	ff010113          	addi	sp,sp,-16
     97c:	00112623          	sw	ra,12(sp)
     980:	00812423          	sw	s0,8(sp)
     984:	00050413          	mv	s0,a0
     988:	00000097          	auipc	ra,0x0
     98c:	d54080e7          	jalr	-684(ra) # 6dc <sdcard_select>
     990:	05100513          	li	a0,81
     994:	00000097          	auipc	ra,0x0
     998:	d9c080e7          	jalr	-612(ra) # 730 <sdcard_send>
     99c:	01845513          	srli	a0,s0,0x18
     9a0:	00000097          	auipc	ra,0x0
     9a4:	d90080e7          	jalr	-624(ra) # 730 <sdcard_send>
     9a8:	41045513          	srai	a0,s0,0x10
     9ac:	0ff57513          	zext.b	a0,a0
     9b0:	00000097          	auipc	ra,0x0
     9b4:	d80080e7          	jalr	-640(ra) # 730 <sdcard_send>
     9b8:	40845513          	srai	a0,s0,0x8
     9bc:	0ff57513          	zext.b	a0,a0
     9c0:	00000097          	auipc	ra,0x0
     9c4:	d70080e7          	jalr	-656(ra) # 730 <sdcard_send>
     9c8:	0ff47513          	zext.b	a0,s0
     9cc:	00000097          	auipc	ra,0x0
     9d0:	d64080e7          	jalr	-668(ra) # 730 <sdcard_send>
     9d4:	05500513          	li	a0,85
     9d8:	00000097          	auipc	ra,0x0
     9dc:	d58080e7          	jalr	-680(ra) # 730 <sdcard_send>
     9e0:	00000097          	auipc	ra,0x0
     9e4:	d3c080e7          	jalr	-708(ra) # 71c <sdcard_unselect>
     9e8:	00812403          	lw	s0,8(sp)
     9ec:	00c12083          	lw	ra,12(sp)
     9f0:	00100593          	li	a1,1
     9f4:	00800513          	li	a0,8
     9f8:	01010113          	addi	sp,sp,16
     9fc:	00000317          	auipc	t1,0x0
     a00:	ea830067          	jr	-344(t1) # 8a4 <sdcard_get>

00000a04 <sdcard_read_sector>:
     a04:	ff010113          	addi	sp,sp,-16
     a08:	00812423          	sw	s0,8(sp)
     a0c:	00112623          	sw	ra,12(sp)
     a10:	00912223          	sw	s1,4(sp)
     a14:	01212023          	sw	s2,0(sp)
     a18:	00058413          	mv	s0,a1
     a1c:	00000097          	auipc	ra,0x0
     a20:	f5c080e7          	jalr	-164(ra) # 978 <sdcard_start_sector>
     a24:	04051863          	bnez	a0,a74 <sdcard_read_sector+0x70>
     a28:	00100593          	li	a1,1
     a2c:	00058513          	mv	a0,a1
     a30:	00000097          	auipc	ra,0x0
     a34:	e74080e7          	jalr	-396(ra) # 8a4 <sdcard_get>
     a38:	00000493          	li	s1,0
     a3c:	20000913          	li	s2,512
     a40:	00000593          	li	a1,0
     a44:	00800513          	li	a0,8
     a48:	00000097          	auipc	ra,0x0
     a4c:	e5c080e7          	jalr	-420(ra) # 8a4 <sdcard_get>
     a50:	009407b3          	add	a5,s0,s1
     a54:	00a78023          	sb	a0,0(a5)
     a58:	00148493          	addi	s1,s1,1
     a5c:	ff2492e3          	bne	s1,s2,a40 <sdcard_read_sector+0x3c>
     a60:	00100593          	li	a1,1
     a64:	01000513          	li	a0,16
     a68:	20040413          	addi	s0,s0,512
     a6c:	00000097          	auipc	ra,0x0
     a70:	e38080e7          	jalr	-456(ra) # 8a4 <sdcard_get>
     a74:	00c12083          	lw	ra,12(sp)
     a78:	00040513          	mv	a0,s0
     a7c:	00812403          	lw	s0,8(sp)
     a80:	00412483          	lw	s1,4(sp)
     a84:	00012903          	lw	s2,0(sp)
     a88:	01010113          	addi	sp,sp,16
     a8c:	00008067          	ret

00000a90 <sdcard_preinit>:
     a90:	ff010113          	addi	sp,sp,-16
     a94:	000057b7          	lui	a5,0x5
     a98:	00812423          	sw	s0,8(sp)
     a9c:	82c7a403          	lw	s0,-2004(a5) # 482c <SDCARD>
     aa0:	00112623          	sw	ra,12(sp)
     aa4:	00600793          	li	a5,6
     aa8:	01313537          	lui	a0,0x1313
     aac:	00f42023          	sw	a5,0(s0)
     ab0:	d0050513          	addi	a0,a0,-768 # 1312d00 <__stacktop+0x1302d00>
     ab4:	00000097          	auipc	ra,0x0
     ab8:	c10080e7          	jalr	-1008(ra) # 6c4 <pause>
     abc:	0a000793          	li	a5,160
     ac0:	00000713          	li	a4,0
     ac4:	00676693          	ori	a3,a4,6
     ac8:	00d42023          	sw	a3,0(s0)
     acc:	fff78793          	addi	a5,a5,-1
     ad0:	00174713          	xori	a4,a4,1
     ad4:	fe0798e3          	bnez	a5,ac4 <sdcard_preinit+0x34>
     ad8:	00600793          	li	a5,6
     adc:	00c12083          	lw	ra,12(sp)
     ae0:	00f42023          	sw	a5,0(s0)
     ae4:	00812403          	lw	s0,8(sp)
     ae8:	01010113          	addi	sp,sp,16
     aec:	00008067          	ret

00000af0 <sdcard_init>:
     af0:	000007b7          	lui	a5,0x0
     af4:	6d878793          	addi	a5,a5,1752 # 6d8 <sdcard_idle>
     af8:	00005737          	lui	a4,0x5
     afc:	fe010113          	addi	sp,sp,-32
     b00:	b4f72223          	sw	a5,-1212(a4) # 4b44 <sdcard_while_loading_callback>
     b04:	000057b7          	lui	a5,0x5
     b08:	00812c23          	sw	s0,24(sp)
     b0c:	00912a23          	sw	s1,20(sp)
     b10:	00112e23          	sw	ra,28(sp)
     b14:	81c78493          	addi	s1,a5,-2020 # 481c <cmd0>
     b18:	0ff00413          	li	s0,255
     b1c:	00000097          	auipc	ra,0x0
     b20:	f74080e7          	jalr	-140(ra) # a90 <sdcard_preinit>
     b24:	00048513          	mv	a0,s1
     b28:	00000097          	auipc	ra,0x0
     b2c:	df4080e7          	jalr	-524(ra) # 91c <sdcard_cmd>
     b30:	00100593          	li	a1,1
     b34:	00800513          	li	a0,8
     b38:	00000097          	auipc	ra,0x0
     b3c:	d6c080e7          	jalr	-660(ra) # 8a4 <sdcard_get>
     b40:	00a12623          	sw	a0,12(sp)
     b44:	00000097          	auipc	ra,0x0
     b48:	bac080e7          	jalr	-1108(ra) # 6f0 <sdcard_ponder>
     b4c:	00c12503          	lw	a0,12(sp)
     b50:	00851c63          	bne	a0,s0,b68 <sdcard_init+0x78>
     b54:	01313537          	lui	a0,0x1313
     b58:	d0050513          	addi	a0,a0,-768 # 1312d00 <__stacktop+0x1302d00>
     b5c:	00000097          	auipc	ra,0x0
     b60:	b68080e7          	jalr	-1176(ra) # 6c4 <pause>
     b64:	fb9ff06f          	j	b1c <sdcard_init+0x2c>
     b68:	00005537          	lui	a0,0x5
     b6c:	81450513          	addi	a0,a0,-2028 # 4814 <cmd8>
     b70:	00000097          	auipc	ra,0x0
     b74:	dac080e7          	jalr	-596(ra) # 91c <sdcard_cmd>
     b78:	00100593          	li	a1,1
     b7c:	02800513          	li	a0,40
     b80:	00000097          	auipc	ra,0x0
     b84:	d24080e7          	jalr	-732(ra) # 8a4 <sdcard_get>
     b88:	00000097          	auipc	ra,0x0
     b8c:	b68080e7          	jalr	-1176(ra) # 6f0 <sdcard_ponder>
     b90:	000057b7          	lui	a5,0x5
     b94:	80c78413          	addi	s0,a5,-2036 # 480c <cmd55>
     b98:	000057b7          	lui	a5,0x5
     b9c:	80478493          	addi	s1,a5,-2044 # 4804 <acmd41>
     ba0:	00040513          	mv	a0,s0
     ba4:	00000097          	auipc	ra,0x0
     ba8:	d78080e7          	jalr	-648(ra) # 91c <sdcard_cmd>
     bac:	00100593          	li	a1,1
     bb0:	00800513          	li	a0,8
     bb4:	00000097          	auipc	ra,0x0
     bb8:	cf0080e7          	jalr	-784(ra) # 8a4 <sdcard_get>
     bbc:	00000097          	auipc	ra,0x0
     bc0:	b34080e7          	jalr	-1228(ra) # 6f0 <sdcard_ponder>
     bc4:	00048513          	mv	a0,s1
     bc8:	00000097          	auipc	ra,0x0
     bcc:	d54080e7          	jalr	-684(ra) # 91c <sdcard_cmd>
     bd0:	00100593          	li	a1,1
     bd4:	00800513          	li	a0,8
     bd8:	00000097          	auipc	ra,0x0
     bdc:	ccc080e7          	jalr	-820(ra) # 8a4 <sdcard_get>
     be0:	00a12623          	sw	a0,12(sp)
     be4:	00000097          	auipc	ra,0x0
     be8:	b0c080e7          	jalr	-1268(ra) # 6f0 <sdcard_ponder>
     bec:	00c12503          	lw	a0,12(sp)
     bf0:	00050c63          	beqz	a0,c08 <sdcard_init+0x118>
     bf4:	001e8537          	lui	a0,0x1e8
     bf8:	48050513          	addi	a0,a0,1152 # 1e8480 <__stacktop+0x1d8480>
     bfc:	00000097          	auipc	ra,0x0
     c00:	ac8080e7          	jalr	-1336(ra) # 6c4 <pause>
     c04:	f9dff06f          	j	ba0 <sdcard_init+0xb0>
     c08:	00004537          	lui	a0,0x4
     c0c:	7fc50513          	addi	a0,a0,2044 # 47fc <cmd16>
     c10:	00000097          	auipc	ra,0x0
     c14:	d0c080e7          	jalr	-756(ra) # 91c <sdcard_cmd>
     c18:	00100593          	li	a1,1
     c1c:	00800513          	li	a0,8
     c20:	00000097          	auipc	ra,0x0
     c24:	c84080e7          	jalr	-892(ra) # 8a4 <sdcard_get>
     c28:	01812403          	lw	s0,24(sp)
     c2c:	01c12083          	lw	ra,28(sp)
     c30:	01412483          	lw	s1,20(sp)
     c34:	02010113          	addi	sp,sp,32
     c38:	00000317          	auipc	t1,0x0
     c3c:	ab830067          	jr	-1352(t1) # 6f0 <sdcard_ponder>

00000c40 <sdcard_readsector>:
     c40:	04060663          	beqz	a2,c8c <sdcard_readsector+0x4c>
     c44:	ff010113          	addi	sp,sp,-16
     c48:	00812423          	sw	s0,8(sp)
     c4c:	00912223          	sw	s1,4(sp)
     c50:	00112623          	sw	ra,12(sp)
     c54:	00050413          	mv	s0,a0
     c58:	00a604b3          	add	s1,a2,a0
     c5c:	00040513          	mv	a0,s0
     c60:	00000097          	auipc	ra,0x0
     c64:	da4080e7          	jalr	-604(ra) # a04 <sdcard_read_sector>
     c68:	00140413          	addi	s0,s0,1
     c6c:	00050593          	mv	a1,a0
     c70:	fe9416e3          	bne	s0,s1,c5c <sdcard_readsector+0x1c>
     c74:	00c12083          	lw	ra,12(sp)
     c78:	00812403          	lw	s0,8(sp)
     c7c:	00412483          	lw	s1,4(sp)
     c80:	00100513          	li	a0,1
     c84:	01010113          	addi	sp,sp,16
     c88:	00008067          	ret
     c8c:	00000513          	li	a0,0
     c90:	00008067          	ret

00000c94 <sdcard_writesector>:
     c94:	00000513          	li	a0,0
     c98:	00008067          	ret

00000c9c <__divsi3>:
     c9c:	06054063          	bltz	a0,cfc <__umodsi3+0x10>
     ca0:	0605c663          	bltz	a1,d0c <__umodsi3+0x20>

00000ca4 <__udivsi3>:
     ca4:	00058613          	mv	a2,a1
     ca8:	00050593          	mv	a1,a0
     cac:	fff00513          	li	a0,-1
     cb0:	02060c63          	beqz	a2,ce8 <__udivsi3+0x44>
     cb4:	00100693          	li	a3,1
     cb8:	00b67a63          	bgeu	a2,a1,ccc <__udivsi3+0x28>
     cbc:	00c05863          	blez	a2,ccc <__udivsi3+0x28>
     cc0:	00161613          	slli	a2,a2,0x1
     cc4:	00169693          	slli	a3,a3,0x1
     cc8:	feb66ae3          	bltu	a2,a1,cbc <__udivsi3+0x18>
     ccc:	00000513          	li	a0,0
     cd0:	00c5e663          	bltu	a1,a2,cdc <__udivsi3+0x38>
     cd4:	40c585b3          	sub	a1,a1,a2
     cd8:	00d56533          	or	a0,a0,a3
     cdc:	0016d693          	srli	a3,a3,0x1
     ce0:	00165613          	srli	a2,a2,0x1
     ce4:	fe0696e3          	bnez	a3,cd0 <__udivsi3+0x2c>
     ce8:	00008067          	ret

00000cec <__umodsi3>:
     cec:	00008293          	mv	t0,ra
     cf0:	fb5ff0ef          	jal	ca4 <__udivsi3>
     cf4:	00058513          	mv	a0,a1
     cf8:	00028067          	jr	t0
     cfc:	40a00533          	neg	a0,a0
     d00:	0005d863          	bgez	a1,d10 <__umodsi3+0x24>
     d04:	40b005b3          	neg	a1,a1
     d08:	f95ff06f          	j	c9c <__divsi3>
     d0c:	40b005b3          	neg	a1,a1
     d10:	00008293          	mv	t0,ra
     d14:	f89ff0ef          	jal	c9c <__divsi3>
     d18:	40a00533          	neg	a0,a0
     d1c:	00028067          	jr	t0

00000d20 <__modsi3>:
     d20:	00008293          	mv	t0,ra
     d24:	0005ca63          	bltz	a1,d38 <__modsi3+0x18>
     d28:	00054c63          	bltz	a0,d40 <__modsi3+0x20>
     d2c:	f79ff0ef          	jal	ca4 <__udivsi3>
     d30:	00058513          	mv	a0,a1
     d34:	00028067          	jr	t0
     d38:	40b005b3          	neg	a1,a1
     d3c:	fe0558e3          	bgez	a0,d2c <__modsi3+0xc>
     d40:	40a00533          	neg	a0,a0
     d44:	f61ff0ef          	jal	ca4 <__udivsi3>
     d48:	40b00533          	neg	a0,a1
     d4c:	00028067          	jr	t0

00000d50 <memset>:
     d50:	00c50633          	add	a2,a0,a2
     d54:	00050793          	mv	a5,a0
     d58:	00c79463          	bne	a5,a2,d60 <memset+0x10>
     d5c:	00008067          	ret
     d60:	00178793          	addi	a5,a5,1
     d64:	feb78fa3          	sb	a1,-1(a5)
     d68:	ff1ff06f          	j	d58 <memset+0x8>

00000d6c <memcpy>:
     d6c:	00000793          	li	a5,0
     d70:	00c79463          	bne	a5,a2,d78 <memcpy+0xc>
     d74:	00008067          	ret
     d78:	00f58733          	add	a4,a1,a5
     d7c:	00074683          	lbu	a3,0(a4)
     d80:	00f50733          	add	a4,a0,a5
     d84:	00178793          	addi	a5,a5,1
     d88:	00d70023          	sb	a3,0(a4)
     d8c:	fe5ff06f          	j	d70 <memcpy+0x4>

00000d90 <strlen>:
     d90:	00000793          	li	a5,0
     d94:	00f50733          	add	a4,a0,a5
     d98:	00074703          	lbu	a4,0(a4)
     d9c:	00071663          	bnez	a4,da8 <strlen+0x18>
     da0:	00078513          	mv	a0,a5
     da4:	00008067          	ret
     da8:	00178793          	addi	a5,a5,1
     dac:	fe9ff06f          	j	d94 <strlen+0x4>

00000db0 <strncmp>:
     db0:	00000793          	li	a5,0
     db4:	00c79663          	bne	a5,a2,dc0 <strncmp+0x10>
     db8:	00000513          	li	a0,0
     dbc:	00008067          	ret
     dc0:	00f50733          	add	a4,a0,a5
     dc4:	00074683          	lbu	a3,0(a4)
     dc8:	00f58733          	add	a4,a1,a5
     dcc:	00074703          	lbu	a4,0(a4)
     dd0:	00e6e863          	bltu	a3,a4,de0 <strncmp+0x30>
     dd4:	00d76a63          	bltu	a4,a3,de8 <strncmp+0x38>
     dd8:	00178793          	addi	a5,a5,1
     ddc:	fd9ff06f          	j	db4 <strncmp+0x4>
     de0:	fff00513          	li	a0,-1
     de4:	00008067          	ret
     de8:	00100513          	li	a0,1
     dec:	00008067          	ret

00000df0 <strncpy>:
     df0:	00000793          	li	a5,0
     df4:	00c79463          	bne	a5,a2,dfc <strncpy+0xc>
     df8:	00008067          	ret
     dfc:	00f58733          	add	a4,a1,a5
     e00:	00074683          	lbu	a3,0(a4)
     e04:	00f50733          	add	a4,a0,a5
     e08:	00178793          	addi	a5,a5,1
     e0c:	00d70023          	sb	a3,0(a4)
     e10:	fe5ff06f          	j	df4 <strncpy+0x4>

00000e14 <strcat>:
     e14:	00050793          	mv	a5,a0
     e18:	0007c683          	lbu	a3,0(a5)
     e1c:	00078713          	mv	a4,a5
     e20:	00178793          	addi	a5,a5,1
     e24:	fe069ae3          	bnez	a3,e18 <strcat+0x4>
     e28:	0005c783          	lbu	a5,0(a1)
     e2c:	00158593          	addi	a1,a1,1
     e30:	00170713          	addi	a4,a4,1
     e34:	fef70fa3          	sb	a5,-1(a4)
     e38:	fe0798e3          	bnez	a5,e28 <strcat+0x14>
     e3c:	00008067          	ret

00000e40 <oled_wait>:
     e40:	00000013          	nop
     e44:	00000013          	nop
     e48:	00000013          	nop
     e4c:	00000013          	nop
     e50:	00000013          	nop
     e54:	00000013          	nop
     e58:	00000013          	nop
     e5c:	00008067          	ret

00000e60 <oled_init_mode>:
     e60:	000057b7          	lui	a5,0x5
     e64:	8307a703          	lw	a4,-2000(a5) # 4830 <OLED_RST>
     e68:	fe010113          	addi	sp,sp,-32
     e6c:	00112e23          	sw	ra,28(sp)
     e70:	00812c23          	sw	s0,24(sp)
     e74:	00072023          	sw	zero,0(a4)
     e78:	00040737          	lui	a4,0x40
     e7c:	00000013          	nop
     e80:	fff70713          	addi	a4,a4,-1 # 3ffff <__stacktop+0x2ffff>
     e84:	fe071ce3          	bnez	a4,e7c <oled_init_mode+0x1c>
     e88:	8307a703          	lw	a4,-2000(a5)
     e8c:	00100693          	li	a3,1
     e90:	00d72023          	sw	a3,0(a4)
     e94:	00040737          	lui	a4,0x40
     e98:	00000013          	nop
     e9c:	fff70713          	addi	a4,a4,-1 # 3ffff <__stacktop+0x2ffff>
     ea0:	fe071ce3          	bnez	a4,e98 <oled_init_mode+0x38>
     ea4:	8307a783          	lw	a5,-2000(a5)
     ea8:	0007a023          	sw	zero,0(a5)
     eac:	000407b7          	lui	a5,0x40
     eb0:	00000013          	nop
     eb4:	fff78793          	addi	a5,a5,-1 # 3ffff <__stacktop+0x2ffff>
     eb8:	fe079ce3          	bnez	a5,eb0 <oled_init_mode+0x50>
     ebc:	00005737          	lui	a4,0x5
     ec0:	83472783          	lw	a5,-1996(a4) # 4834 <OLED>
     ec4:	2af00693          	li	a3,687
     ec8:	00d7a023          	sw	a3,0(a5)
     ecc:	000407b7          	lui	a5,0x40
     ed0:	00000013          	nop
     ed4:	fff78793          	addi	a5,a5,-1 # 3ffff <__stacktop+0x2ffff>
     ed8:	fe079ce3          	bnez	a5,ed0 <oled_init_mode+0x70>
     edc:	83472403          	lw	s0,-1996(a4)
     ee0:	2a000793          	li	a5,672
     ee4:	00a12623          	sw	a0,12(sp)
     ee8:	00f42023          	sw	a5,0(s0)
     eec:	00000097          	auipc	ra,0x0
     ef0:	f54080e7          	jalr	-172(ra) # e40 <oled_wait>
     ef4:	00c12503          	lw	a0,12(sp)
     ef8:	4a000793          	li	a5,1184
     efc:	00050463          	beqz	a0,f04 <oled_init_mode+0xa4>
     f00:	42000793          	li	a5,1056
     f04:	00f42023          	sw	a5,0(s0)
     f08:	00000097          	auipc	ra,0x0
     f0c:	f38080e7          	jalr	-200(ra) # e40 <oled_wait>
     f10:	2fd00793          	li	a5,765
     f14:	00f42023          	sw	a5,0(s0)
     f18:	00000097          	auipc	ra,0x0
     f1c:	f28080e7          	jalr	-216(ra) # e40 <oled_wait>
     f20:	4b100793          	li	a5,1201
     f24:	00f42023          	sw	a5,0(s0)
     f28:	00000097          	auipc	ra,0x0
     f2c:	f18080e7          	jalr	-232(ra) # e40 <oled_wait>
     f30:	2a200793          	li	a5,674
     f34:	00f42023          	sw	a5,0(s0)
     f38:	00000097          	auipc	ra,0x0
     f3c:	f08080e7          	jalr	-248(ra) # e40 <oled_wait>
     f40:	40000793          	li	a5,1024
     f44:	00f42023          	sw	a5,0(s0)
     f48:	01812403          	lw	s0,24(sp)
     f4c:	01c12083          	lw	ra,28(sp)
     f50:	02010113          	addi	sp,sp,32
     f54:	00000317          	auipc	t1,0x0
     f58:	eec30067          	jr	-276(t1) # e40 <oled_wait>

00000f5c <oled_init>:
     f5c:	00000513          	li	a0,0
     f60:	00000317          	auipc	t1,0x0
     f64:	f0030067          	jr	-256(t1) # e60 <oled_init_mode>

00000f68 <oled_fullscreen>:
     f68:	ff010113          	addi	sp,sp,-16
     f6c:	000057b7          	lui	a5,0x5
     f70:	00812423          	sw	s0,8(sp)
     f74:	8347a403          	lw	s0,-1996(a5) # 4834 <OLED>
     f78:	00112623          	sw	ra,12(sp)
     f7c:	00912223          	sw	s1,4(sp)
     f80:	01212023          	sw	s2,0(sp)
     f84:	21500793          	li	a5,533
     f88:	00f42023          	sw	a5,0(s0)
     f8c:	40000913          	li	s2,1024
     f90:	00000097          	auipc	ra,0x0
     f94:	eb0080e7          	jalr	-336(ra) # e40 <oled_wait>
     f98:	47f00493          	li	s1,1151
     f9c:	01242023          	sw	s2,0(s0)
     fa0:	00000097          	auipc	ra,0x0
     fa4:	ea0080e7          	jalr	-352(ra) # e40 <oled_wait>
     fa8:	00942023          	sw	s1,0(s0)
     fac:	00000097          	auipc	ra,0x0
     fb0:	e94080e7          	jalr	-364(ra) # e40 <oled_wait>
     fb4:	27500793          	li	a5,629
     fb8:	00f42023          	sw	a5,0(s0)
     fbc:	00000097          	auipc	ra,0x0
     fc0:	e84080e7          	jalr	-380(ra) # e40 <oled_wait>
     fc4:	01242023          	sw	s2,0(s0)
     fc8:	00000097          	auipc	ra,0x0
     fcc:	e78080e7          	jalr	-392(ra) # e40 <oled_wait>
     fd0:	00942023          	sw	s1,0(s0)
     fd4:	00000097          	auipc	ra,0x0
     fd8:	e6c080e7          	jalr	-404(ra) # e40 <oled_wait>
     fdc:	25c00793          	li	a5,604
     fe0:	00f42023          	sw	a5,0(s0)
     fe4:	00812403          	lw	s0,8(sp)
     fe8:	00c12083          	lw	ra,12(sp)
     fec:	00412483          	lw	s1,4(sp)
     ff0:	00012903          	lw	s2,0(sp)
     ff4:	01010113          	addi	sp,sp,16
     ff8:	00000317          	auipc	t1,0x0
     ffc:	e4830067          	jr	-440(t1) # e40 <oled_wait>

00001000 <oled_wait>:
    1000:	00000013          	nop
    1004:	00000013          	nop
    1008:	00000013          	nop
    100c:	00000013          	nop
    1010:	00000013          	nop
    1014:	00000013          	nop
    1018:	00000013          	nop
    101c:	00008067          	ret

00001020 <display_framebuffer>:
    1020:	00007537          	lui	a0,0x7
    1024:	cf050513          	addi	a0,a0,-784 # 6cf0 <framebuffer>
    1028:	00008067          	ret

0000102c <display_set_cursor>:
    102c:	000057b7          	lui	a5,0x5
    1030:	b4a7a823          	sw	a0,-1200(a5) # 4b50 <cursor_x>
    1034:	000057b7          	lui	a5,0x5
    1038:	b4b7a623          	sw	a1,-1204(a5) # 4b4c <cursor_y>
    103c:	00008067          	ret

00001040 <display_set_front_back_color>:
    1040:	000057b7          	lui	a5,0x5
    1044:	b4a784a3          	sb	a0,-1207(a5) # 4b49 <front_color>
    1048:	000057b7          	lui	a5,0x5
    104c:	b4b78423          	sb	a1,-1208(a5) # 4b48 <back_color>
    1050:	00008067          	ret

00001054 <display_putchar>:
    1054:	00a00793          	li	a5,10
    1058:	000055b7          	lui	a1,0x5
    105c:	02f51663          	bne	a0,a5,1088 <display_putchar+0x34>
    1060:	00005737          	lui	a4,0x5
    1064:	b4c72783          	lw	a5,-1204(a4) # 4b4c <cursor_y>
    1068:	b405a823          	sw	zero,-1200(a1) # 4b50 <cursor_x>
    106c:	00878793          	addi	a5,a5,8
    1070:	b4f72623          	sw	a5,-1204(a4)
    1074:	07f00713          	li	a4,127
    1078:	00f75663          	bge	a4,a5,1084 <display_putchar+0x30>
    107c:	000057b7          	lui	a5,0x5
    1080:	b407a623          	sw	zero,-1204(a5) # 4b4c <cursor_y>
    1084:	00008067          	ret
    1088:	ff010113          	addi	sp,sp,-16
    108c:	00812623          	sw	s0,12(sp)
    1090:	01f00713          	li	a4,31
    1094:	b505a783          	lw	a5,-1200(a1)
    1098:	08a75a63          	bge	a4,a0,112c <display_putchar+0xd8>
    109c:	00005737          	lui	a4,0x5
    10a0:	b4874f83          	lbu	t6,-1208(a4) # 4b48 <back_color>
    10a4:	00005737          	lui	a4,0x5
    10a8:	b4974283          	lbu	t0,-1207(a4) # 4b49 <front_color>
    10ac:	000056b7          	lui	a3,0x5
    10b0:	00251713          	slli	a4,a0,0x2
    10b4:	92c68693          	addi	a3,a3,-1748 # 492c <font>
    10b8:	00a70733          	add	a4,a4,a0
    10bc:	00d70733          	add	a4,a4,a3
    10c0:	000056b7          	lui	a3,0x5
    10c4:	b4c6a683          	lw	a3,-1204(a3) # 4b4c <cursor_y>
    10c8:	00007637          	lui	a2,0x7
    10cc:	cf060613          	addi	a2,a2,-784 # 6cf0 <framebuffer>
    10d0:	00c686b3          	add	a3,a3,a2
    10d4:	00779613          	slli	a2,a5,0x7
    10d8:	00c686b3          	add	a3,a3,a2
    10dc:	00100f13          	li	t5,1
    10e0:	00000613          	li	a2,0
    10e4:	00500393          	li	t2,5
    10e8:	00800413          	li	s0,8
    10ec:	00cf1eb3          	sll	t4,t5,a2
    10f0:	00d608b3          	add	a7,a2,a3
    10f4:	00070813          	mv	a6,a4
    10f8:	00000513          	li	a0,0
    10fc:	f6084303          	lbu	t1,-160(a6)
    1100:	00028e13          	mv	t3,t0
    1104:	01d37333          	and	t1,t1,t4
    1108:	00031463          	bnez	t1,1110 <display_putchar+0xbc>
    110c:	000f8e13          	mv	t3,t6
    1110:	01c88023          	sb	t3,0(a7)
    1114:	00150513          	addi	a0,a0,1
    1118:	00180813          	addi	a6,a6,1
    111c:	08088893          	addi	a7,a7,128
    1120:	fc751ee3          	bne	a0,t2,10fc <display_putchar+0xa8>
    1124:	00160613          	addi	a2,a2,1
    1128:	fc8612e3          	bne	a2,s0,10ec <display_putchar+0x98>
    112c:	00578793          	addi	a5,a5,5
    1130:	07f00713          	li	a4,127
    1134:	00f74663          	blt	a4,a5,1140 <display_putchar+0xec>
    1138:	b4f5a823          	sw	a5,-1200(a1)
    113c:	0240006f          	j	1160 <display_putchar+0x10c>
    1140:	000056b7          	lui	a3,0x5
    1144:	b4c6a783          	lw	a5,-1204(a3) # 4b4c <cursor_y>
    1148:	b405a823          	sw	zero,-1200(a1)
    114c:	00878793          	addi	a5,a5,8
    1150:	b4f6a623          	sw	a5,-1204(a3)
    1154:	00f75663          	bge	a4,a5,1160 <display_putchar+0x10c>
    1158:	000057b7          	lui	a5,0x5
    115c:	b407a623          	sw	zero,-1204(a5) # 4b4c <cursor_y>
    1160:	00c12403          	lw	s0,12(sp)
    1164:	01010113          	addi	sp,sp,16
    1168:	00008067          	ret

0000116c <display_refresh>:
    116c:	fe010113          	addi	sp,sp,-32
    1170:	000057b7          	lui	a5,0x5
    1174:	01212823          	sw	s2,16(sp)
    1178:	8347a903          	lw	s2,-1996(a5) # 4834 <OLED>
    117c:	01312623          	sw	s3,12(sp)
    1180:	000079b7          	lui	s3,0x7
    1184:	00912a23          	sw	s1,20(sp)
    1188:	01412423          	sw	s4,8(sp)
    118c:	00112e23          	sw	ra,28(sp)
    1190:	00812c23          	sw	s0,24(sp)
    1194:	00000493          	li	s1,0
    1198:	cf098993          	addi	s3,s3,-784 # 6cf0 <framebuffer>
    119c:	00004a37          	lui	s4,0x4
    11a0:	013487b3          	add	a5,s1,s3
    11a4:	0007c403          	lbu	s0,0(a5)
    11a8:	00148493          	addi	s1,s1,1
    11ac:	00245413          	srli	s0,s0,0x2
    11b0:	40046413          	ori	s0,s0,1024
    11b4:	00892023          	sw	s0,0(s2)
    11b8:	00000097          	auipc	ra,0x0
    11bc:	e48080e7          	jalr	-440(ra) # 1000 <oled_wait>
    11c0:	00892023          	sw	s0,0(s2)
    11c4:	00000097          	auipc	ra,0x0
    11c8:	e3c080e7          	jalr	-452(ra) # 1000 <oled_wait>
    11cc:	00892023          	sw	s0,0(s2)
    11d0:	00000097          	auipc	ra,0x0
    11d4:	e30080e7          	jalr	-464(ra) # 1000 <oled_wait>
    11d8:	fd4494e3          	bne	s1,s4,11a0 <display_refresh+0x34>
    11dc:	01c12083          	lw	ra,28(sp)
    11e0:	01812403          	lw	s0,24(sp)
    11e4:	01412483          	lw	s1,20(sp)
    11e8:	01012903          	lw	s2,16(sp)
    11ec:	00c12983          	lw	s3,12(sp)
    11f0:	00812a03          	lw	s4,8(sp)
    11f4:	02010113          	addi	sp,sp,32
    11f8:	00008067          	ret

000011fc <print_string>:
    11fc:	ff010113          	addi	sp,sp,-16
    1200:	00812423          	sw	s0,8(sp)
    1204:	00912223          	sw	s1,4(sp)
    1208:	00112623          	sw	ra,12(sp)
    120c:	00050413          	mv	s0,a0
    1210:	000054b7          	lui	s1,0x5
    1214:	00044503          	lbu	a0,0(s0)
    1218:	00051c63          	bnez	a0,1230 <print_string+0x34>
    121c:	00c12083          	lw	ra,12(sp)
    1220:	00812403          	lw	s0,8(sp)
    1224:	00412483          	lw	s1,4(sp)
    1228:	01010113          	addi	sp,sp,16
    122c:	00008067          	ret
    1230:	b544a783          	lw	a5,-1196(s1) # 4b54 <f_putchar>
    1234:	00140413          	addi	s0,s0,1
    1238:	000780e7          	jalr	a5
    123c:	fd9ff06f          	j	1214 <print_string+0x18>

00001240 <print_dec>:
    1240:	ef010113          	addi	sp,sp,-272
    1244:	10812423          	sw	s0,264(sp)
    1248:	10912223          	sw	s1,260(sp)
    124c:	10112623          	sw	ra,268(sp)
    1250:	11212023          	sw	s2,256(sp)
    1254:	00050413          	mv	s0,a0
    1258:	000054b7          	lui	s1,0x5
    125c:	08045063          	bgez	s0,12dc <print_dec+0x9c>
    1260:	b544a783          	lw	a5,-1196(s1) # 4b54 <f_putchar>
    1264:	02d00513          	li	a0,45
    1268:	40800433          	neg	s0,s0
    126c:	000780e7          	jalr	a5
    1270:	fedff06f          	j	125c <print_dec+0x1c>
    1274:	00040513          	mv	a0,s0
    1278:	00a00593          	li	a1,10
    127c:	00000097          	auipc	ra,0x0
    1280:	a20080e7          	jalr	-1504(ra) # c9c <__divsi3>
    1284:	00251793          	slli	a5,a0,0x2
    1288:	00f507b3          	add	a5,a0,a5
    128c:	00179793          	slli	a5,a5,0x1
    1290:	40f40433          	sub	s0,s0,a5
    1294:	00148493          	addi	s1,s1,1
    1298:	fe848fa3          	sb	s0,-1(s1)
    129c:	00050413          	mv	s0,a0
    12a0:	fc041ae3          	bnez	s0,1274 <print_dec+0x34>
    12a4:	fd2488e3          	beq	s1,s2,1274 <print_dec+0x34>
    12a8:	00005437          	lui	s0,0x5
    12ac:	fff4c503          	lbu	a0,-1(s1)
    12b0:	b5442783          	lw	a5,-1196(s0) # 4b54 <f_putchar>
    12b4:	fff48493          	addi	s1,s1,-1
    12b8:	03050513          	addi	a0,a0,48
    12bc:	000780e7          	jalr	a5
    12c0:	ff2496e3          	bne	s1,s2,12ac <print_dec+0x6c>
    12c4:	10c12083          	lw	ra,268(sp)
    12c8:	10812403          	lw	s0,264(sp)
    12cc:	10412483          	lw	s1,260(sp)
    12d0:	10012903          	lw	s2,256(sp)
    12d4:	11010113          	addi	sp,sp,272
    12d8:	00008067          	ret
    12dc:	00010493          	mv	s1,sp
    12e0:	00010913          	mv	s2,sp
    12e4:	fbdff06f          	j	12a0 <print_dec+0x60>

000012e8 <print_hex_digits>:
    12e8:	fe010113          	addi	sp,sp,-32
    12ec:	00812c23          	sw	s0,24(sp)
    12f0:	00912a23          	sw	s1,20(sp)
    12f4:	fff58413          	addi	s0,a1,-1
    12f8:	000054b7          	lui	s1,0x5
    12fc:	01212823          	sw	s2,16(sp)
    1300:	01312623          	sw	s3,12(sp)
    1304:	00112e23          	sw	ra,28(sp)
    1308:	00050993          	mv	s3,a0
    130c:	00241413          	slli	s0,s0,0x2
    1310:	8e448493          	addi	s1,s1,-1820 # 48e4 <LEDS+0xac>
    1314:	00005937          	lui	s2,0x5
    1318:	02045063          	bgez	s0,1338 <print_hex_digits+0x50>
    131c:	01c12083          	lw	ra,28(sp)
    1320:	01812403          	lw	s0,24(sp)
    1324:	01412483          	lw	s1,20(sp)
    1328:	01012903          	lw	s2,16(sp)
    132c:	00c12983          	lw	s3,12(sp)
    1330:	02010113          	addi	sp,sp,32
    1334:	00008067          	ret
    1338:	0089d7b3          	srl	a5,s3,s0
    133c:	00f7f793          	andi	a5,a5,15
    1340:	00f487b3          	add	a5,s1,a5
    1344:	b5492703          	lw	a4,-1196(s2) # 4b54 <f_putchar>
    1348:	0007c503          	lbu	a0,0(a5)
    134c:	ffc40413          	addi	s0,s0,-4
    1350:	000700e7          	jalr	a4
    1354:	fc5ff06f          	j	1318 <print_hex_digits+0x30>

00001358 <print_hex>:
    1358:	00800593          	li	a1,8
    135c:	00000317          	auipc	t1,0x0
    1360:	f8c30067          	jr	-116(t1) # 12e8 <print_hex_digits>

00001364 <printf>:
    1364:	fa010113          	addi	sp,sp,-96
    1368:	04f12a23          	sw	a5,84(sp)
    136c:	04410793          	addi	a5,sp,68
    1370:	02812c23          	sw	s0,56(sp)
    1374:	02912a23          	sw	s1,52(sp)
    1378:	03212823          	sw	s2,48(sp)
    137c:	03312623          	sw	s3,44(sp)
    1380:	03412423          	sw	s4,40(sp)
    1384:	03512223          	sw	s5,36(sp)
    1388:	03612023          	sw	s6,32(sp)
    138c:	02112e23          	sw	ra,60(sp)
    1390:	01712e23          	sw	s7,28(sp)
    1394:	00050413          	mv	s0,a0
    1398:	04b12223          	sw	a1,68(sp)
    139c:	04c12423          	sw	a2,72(sp)
    13a0:	04d12623          	sw	a3,76(sp)
    13a4:	04e12823          	sw	a4,80(sp)
    13a8:	05012c23          	sw	a6,88(sp)
    13ac:	05112e23          	sw	a7,92(sp)
    13b0:	00f12623          	sw	a5,12(sp)
    13b4:	02500913          	li	s2,37
    13b8:	000054b7          	lui	s1,0x5
    13bc:	07300993          	li	s3,115
    13c0:	07800a13          	li	s4,120
    13c4:	06400a93          	li	s5,100
    13c8:	06300b13          	li	s6,99
    13cc:	00044503          	lbu	a0,0(s0)
    13d0:	02051863          	bnez	a0,1400 <printf+0x9c>
    13d4:	03c12083          	lw	ra,60(sp)
    13d8:	03812403          	lw	s0,56(sp)
    13dc:	03412483          	lw	s1,52(sp)
    13e0:	03012903          	lw	s2,48(sp)
    13e4:	02c12983          	lw	s3,44(sp)
    13e8:	02812a03          	lw	s4,40(sp)
    13ec:	02412a83          	lw	s5,36(sp)
    13f0:	02012b03          	lw	s6,32(sp)
    13f4:	01c12b83          	lw	s7,28(sp)
    13f8:	06010113          	addi	sp,sp,96
    13fc:	00008067          	ret
    1400:	09251a63          	bne	a0,s2,1494 <printf+0x130>
    1404:	00144503          	lbu	a0,1(s0)
    1408:	00140b93          	addi	s7,s0,1
    140c:	03351463          	bne	a0,s3,1434 <printf+0xd0>
    1410:	00c12783          	lw	a5,12(sp)
    1414:	0007a503          	lw	a0,0(a5)
    1418:	00478713          	addi	a4,a5,4
    141c:	00e12623          	sw	a4,12(sp)
    1420:	00000097          	auipc	ra,0x0
    1424:	ddc080e7          	jalr	-548(ra) # 11fc <print_string>
    1428:	000b8413          	mv	s0,s7
    142c:	00140413          	addi	s0,s0,1
    1430:	f9dff06f          	j	13cc <printf+0x68>
    1434:	03451063          	bne	a0,s4,1454 <printf+0xf0>
    1438:	00c12783          	lw	a5,12(sp)
    143c:	0007a503          	lw	a0,0(a5)
    1440:	00478713          	addi	a4,a5,4
    1444:	00e12623          	sw	a4,12(sp)
    1448:	00000097          	auipc	ra,0x0
    144c:	f10080e7          	jalr	-240(ra) # 1358 <print_hex>
    1450:	fd9ff06f          	j	1428 <printf+0xc4>
    1454:	03551063          	bne	a0,s5,1474 <printf+0x110>
    1458:	00c12783          	lw	a5,12(sp)
    145c:	0007a503          	lw	a0,0(a5)
    1460:	00478713          	addi	a4,a5,4
    1464:	00e12623          	sw	a4,12(sp)
    1468:	00000097          	auipc	ra,0x0
    146c:	dd8080e7          	jalr	-552(ra) # 1240 <print_dec>
    1470:	fb9ff06f          	j	1428 <printf+0xc4>
    1474:	b544a783          	lw	a5,-1196(s1) # 4b54 <f_putchar>
    1478:	01651a63          	bne	a0,s6,148c <printf+0x128>
    147c:	00c12703          	lw	a4,12(sp)
    1480:	00072503          	lw	a0,0(a4)
    1484:	00470693          	addi	a3,a4,4
    1488:	00d12623          	sw	a3,12(sp)
    148c:	000780e7          	jalr	a5
    1490:	f99ff06f          	j	1428 <printf+0xc4>
    1494:	b544a783          	lw	a5,-1196(s1)
    1498:	000780e7          	jalr	a5
    149c:	f91ff06f          	j	142c <printf+0xc8>

000014a0 <__mulsi3>:
    14a0:	00050793          	mv	a5,a0
    14a4:	00000513          	li	a0,0
    14a8:	00079463          	bnez	a5,14b0 <__mulsi3+0x10>
    14ac:	00008067          	ret
    14b0:	01f79693          	slli	a3,a5,0x1f
    14b4:	41f6d713          	srai	a4,a3,0x1f
    14b8:	00b77733          	and	a4,a4,a1
    14bc:	00e50533          	add	a0,a0,a4
    14c0:	0017d793          	srli	a5,a5,0x1
    14c4:	00159593          	slli	a1,a1,0x1
    14c8:	fe1ff06f          	j	14a8 <__mulsi3+0x8>

000014cc <fat_list_insert_last>:
    14cc:	00452783          	lw	a5,4(a0)
    14d0:	04079263          	bnez	a5,1514 <fat_list_insert_last+0x48>
    14d4:	00052783          	lw	a5,0(a0)
    14d8:	00079c63          	bnez	a5,14f0 <fat_list_insert_last+0x24>
    14dc:	00b52023          	sw	a1,0(a0)
    14e0:	00b52223          	sw	a1,4(a0)
    14e4:	0005a023          	sw	zero,0(a1)
    14e8:	0005a223          	sw	zero,4(a1)
    14ec:	00008067          	ret
    14f0:	0007a703          	lw	a4,0(a5)
    14f4:	00f5a223          	sw	a5,4(a1)
    14f8:	00e5a023          	sw	a4,0(a1)
    14fc:	00071863          	bnez	a4,150c <fat_list_insert_last+0x40>
    1500:	00b52023          	sw	a1,0(a0)
    1504:	00b7a023          	sw	a1,0(a5)
    1508:	00008067          	ret
    150c:	00b72223          	sw	a1,4(a4)
    1510:	ff5ff06f          	j	1504 <fat_list_insert_last+0x38>
    1514:	0047a703          	lw	a4,4(a5)
    1518:	00f5a023          	sw	a5,0(a1)
    151c:	00e5a223          	sw	a4,4(a1)
    1520:	00071863          	bnez	a4,1530 <fat_list_insert_last+0x64>
    1524:	00b52223          	sw	a1,4(a0)
    1528:	00b7a223          	sw	a1,4(a5)
    152c:	00008067          	ret
    1530:	00b72023          	sw	a1,0(a4)
    1534:	ff5ff06f          	j	1528 <fat_list_insert_last+0x5c>

00001538 <FileString_StrCmpNoCase>:
    1538:	00050e93          	mv	t4,a0
    153c:	00000793          	li	a5,0
    1540:	01900e13          	li	t3,25
    1544:	00c79663          	bne	a5,a2,1550 <FileString_StrCmpNoCase+0x18>
    1548:	00000513          	li	a0,0
    154c:	00008067          	ret
    1550:	00fe8733          	add	a4,t4,a5
    1554:	00074803          	lbu	a6,0(a4)
    1558:	00f58733          	add	a4,a1,a5
    155c:	00074883          	lbu	a7,0(a4)
    1560:	fbf80713          	addi	a4,a6,-65
    1564:	0ff77713          	zext.b	a4,a4
    1568:	00080693          	mv	a3,a6
    156c:	00ee6663          	bltu	t3,a4,1578 <FileString_StrCmpNoCase+0x40>
    1570:	02080693          	addi	a3,a6,32
    1574:	0ff6f693          	zext.b	a3,a3
    1578:	fbf88313          	addi	t1,a7,-65
    157c:	0ff37313          	zext.b	t1,t1
    1580:	00088713          	mv	a4,a7
    1584:	006e6663          	bltu	t3,t1,1590 <FileString_StrCmpNoCase+0x58>
    1588:	02088713          	addi	a4,a7,32
    158c:	0ff77713          	zext.b	a4,a4
    1590:	40e68533          	sub	a0,a3,a4
    1594:	00e69863          	bne	a3,a4,15a4 <FileString_StrCmpNoCase+0x6c>
    1598:	00178793          	addi	a5,a5,1
    159c:	00088463          	beqz	a7,15a4 <FileString_StrCmpNoCase+0x6c>
    15a0:	fa0812e3          	bnez	a6,1544 <FileString_StrCmpNoCase+0xc>
    15a4:	00008067          	ret

000015a8 <FileString_GetExtension>:
    15a8:	00050793          	mv	a5,a0
    15ac:	fff00713          	li	a4,-1
    15b0:	02e00613          	li	a2,46
    15b4:	0007c683          	lbu	a3,0(a5)
    15b8:	00069663          	bnez	a3,15c4 <FileString_GetExtension+0x1c>
    15bc:	00070513          	mv	a0,a4
    15c0:	00008067          	ret
    15c4:	00c69463          	bne	a3,a2,15cc <FileString_GetExtension+0x24>
    15c8:	40a78733          	sub	a4,a5,a0
    15cc:	00178793          	addi	a5,a5,1
    15d0:	fe5ff06f          	j	15b4 <FileString_GetExtension+0xc>

000015d4 <fatfs_fat_writeback>:
    15d4:	00059e63          	bnez	a1,15f0 <fatfs_fat_writeback+0x1c>
    15d8:	00000513          	li	a0,0
    15dc:	00008067          	ret
    15e0:	00000513          	li	a0,0
    15e4:	01c12083          	lw	ra,28(sp)
    15e8:	02010113          	addi	sp,sp,32
    15ec:	00008067          	ret
    15f0:	2045a783          	lw	a5,516(a1)
    15f4:	04078e63          	beqz	a5,1650 <fatfs_fat_writeback+0x7c>
    15f8:	03852683          	lw	a3,56(a0)
    15fc:	00050793          	mv	a5,a0
    1600:	04068663          	beqz	a3,164c <fatfs_fat_writeback+0x78>
    1604:	0147a703          	lw	a4,20(a5)
    1608:	2005a503          	lw	a0,512(a1)
    160c:	0207a803          	lw	a6,32(a5)
    1610:	00100613          	li	a2,1
    1614:	fe010113          	addi	sp,sp,-32
    1618:	40e607b3          	sub	a5,a2,a4
    161c:	00112e23          	sw	ra,28(sp)
    1620:	00a787b3          	add	a5,a5,a0
    1624:	00f87663          	bgeu	a6,a5,1630 <fatfs_fat_writeback+0x5c>
    1628:	01070733          	add	a4,a4,a6
    162c:	40a70633          	sub	a2,a4,a0
    1630:	00b12623          	sw	a1,12(sp)
    1634:	000680e7          	jalr	a3
    1638:	fa0504e3          	beqz	a0,15e0 <fatfs_fat_writeback+0xc>
    163c:	00c12583          	lw	a1,12(sp)
    1640:	00100513          	li	a0,1
    1644:	2005a223          	sw	zero,516(a1)
    1648:	f9dff06f          	j	15e4 <fatfs_fat_writeback+0x10>
    164c:	2005a223          	sw	zero,516(a1)
    1650:	00100513          	li	a0,1
    1654:	00008067          	ret

00001658 <fatfs_fat_read_sector>:
    1658:	fe010113          	addi	sp,sp,-32
    165c:	01212823          	sw	s2,16(sp)
    1660:	25452903          	lw	s2,596(a0)
    1664:	00812c23          	sw	s0,24(sp)
    1668:	00112e23          	sw	ra,28(sp)
    166c:	00912a23          	sw	s1,20(sp)
    1670:	01312623          	sw	s3,12(sp)
    1674:	00000413          	li	s0,0
    1678:	04091463          	bnez	s2,16c0 <fatfs_fat_read_sector+0x68>
    167c:	25452783          	lw	a5,596(a0)
    1680:	00058493          	mv	s1,a1
    1684:	00050993          	mv	s3,a0
    1688:	20f42623          	sw	a5,524(s0)
    168c:	20442783          	lw	a5,516(s0)
    1690:	24852a23          	sw	s0,596(a0)
    1694:	08079863          	bnez	a5,1724 <fatfs_fat_read_sector+0xcc>
    1698:	0349a783          	lw	a5,52(s3)
    169c:	20942023          	sw	s1,512(s0)
    16a0:	00100613          	li	a2,1
    16a4:	00040593          	mv	a1,s0
    16a8:	00048513          	mv	a0,s1
    16ac:	000780e7          	jalr	a5
    16b0:	08051463          	bnez	a0,1738 <fatfs_fat_read_sector+0xe0>
    16b4:	fff00793          	li	a5,-1
    16b8:	20f42023          	sw	a5,512(s0)
    16bc:	0480006f          	j	1704 <fatfs_fat_read_sector+0xac>
    16c0:	20092783          	lw	a5,512(s2)
    16c4:	00f5e663          	bltu	a1,a5,16d0 <fatfs_fat_read_sector+0x78>
    16c8:	00178713          	addi	a4,a5,1
    16cc:	02e5e463          	bltu	a1,a4,16f4 <fatfs_fat_read_sector+0x9c>
    16d0:	20c92783          	lw	a5,524(s2)
    16d4:	00079663          	bnez	a5,16e0 <fatfs_fat_read_sector+0x88>
    16d8:	00040a63          	beqz	s0,16ec <fatfs_fat_read_sector+0x94>
    16dc:	20042623          	sw	zero,524(s0)
    16e0:	00090413          	mv	s0,s2
    16e4:	20c92903          	lw	s2,524(s2)
    16e8:	f91ff06f          	j	1678 <fatfs_fat_read_sector+0x20>
    16ec:	24052a23          	sw	zero,596(a0)
    16f0:	ff1ff06f          	j	16e0 <fatfs_fat_read_sector+0x88>
    16f4:	40f585b3          	sub	a1,a1,a5
    16f8:	00959593          	slli	a1,a1,0x9
    16fc:	00b905b3          	add	a1,s2,a1
    1700:	20b92423          	sw	a1,520(s2)
    1704:	01c12083          	lw	ra,28(sp)
    1708:	01812403          	lw	s0,24(sp)
    170c:	01412483          	lw	s1,20(sp)
    1710:	00c12983          	lw	s3,12(sp)
    1714:	00090513          	mv	a0,s2
    1718:	01012903          	lw	s2,16(sp)
    171c:	02010113          	addi	sp,sp,32
    1720:	00008067          	ret
    1724:	00040593          	mv	a1,s0
    1728:	00000097          	auipc	ra,0x0
    172c:	eac080e7          	jalr	-340(ra) # 15d4 <fatfs_fat_writeback>
    1730:	f60514e3          	bnez	a0,1698 <fatfs_fat_read_sector+0x40>
    1734:	fd1ff06f          	j	1704 <fatfs_fat_read_sector+0xac>
    1738:	20842423          	sw	s0,520(s0)
    173c:	00040913          	mv	s2,s0
    1740:	fc5ff06f          	j	1704 <fatfs_fat_read_sector+0xac>

00001744 <_allocate_file>:
    1744:	000057b7          	lui	a5,0x5
    1748:	b5878793          	addi	a5,a5,-1192 # 4b58 <_free_file_list>
    174c:	0007a583          	lw	a1,0(a5)
    1750:	06058263          	beqz	a1,17b4 <_allocate_file+0x70>
    1754:	0005a703          	lw	a4,0(a1)
    1758:	fe010113          	addi	sp,sp,-32
    175c:	00112e23          	sw	ra,28(sp)
    1760:	0045a683          	lw	a3,4(a1)
    1764:	04071063          	bnez	a4,17a4 <_allocate_file+0x60>
    1768:	00d7a023          	sw	a3,0(a5)
    176c:	0045a683          	lw	a3,4(a1)
    1770:	02069e63          	bnez	a3,17ac <_allocate_file+0x68>
    1774:	00e7a223          	sw	a4,4(a5)
    1778:	00005537          	lui	a0,0x5
    177c:	b6050513          	addi	a0,a0,-1184 # 4b60 <_open_file_list>
    1780:	00b12623          	sw	a1,12(sp)
    1784:	00000097          	auipc	ra,0x0
    1788:	d48080e7          	jalr	-696(ra) # 14cc <fat_list_insert_last>
    178c:	00c12583          	lw	a1,12(sp)
    1790:	01c12083          	lw	ra,28(sp)
    1794:	bc458593          	addi	a1,a1,-1084
    1798:	00058513          	mv	a0,a1
    179c:	02010113          	addi	sp,sp,32
    17a0:	00008067          	ret
    17a4:	00d72223          	sw	a3,4(a4)
    17a8:	fc5ff06f          	j	176c <_allocate_file+0x28>
    17ac:	00e6a023          	sw	a4,0(a3)
    17b0:	fc9ff06f          	j	1778 <_allocate_file+0x34>
    17b4:	00058513          	mv	a0,a1
    17b8:	00008067          	ret

000017bc <_free_file>:
    17bc:	43c52783          	lw	a5,1084(a0)
    17c0:	44052703          	lw	a4,1088(a0)
    17c4:	43c50593          	addi	a1,a0,1084
    17c8:	02079663          	bnez	a5,17f4 <_free_file+0x38>
    17cc:	000056b7          	lui	a3,0x5
    17d0:	b6e6a023          	sw	a4,-1184(a3) # 4b60 <_open_file_list>
    17d4:	44052703          	lw	a4,1088(a0)
    17d8:	02071263          	bnez	a4,17fc <_free_file+0x40>
    17dc:	00005737          	lui	a4,0x5
    17e0:	b6f72223          	sw	a5,-1180(a4) # 4b64 <_open_file_list+0x4>
    17e4:	00005537          	lui	a0,0x5
    17e8:	b5850513          	addi	a0,a0,-1192 # 4b58 <_free_file_list>
    17ec:	00000317          	auipc	t1,0x0
    17f0:	ce030067          	jr	-800(t1) # 14cc <fat_list_insert_last>
    17f4:	00e7a223          	sw	a4,4(a5)
    17f8:	fddff06f          	j	17d4 <_free_file+0x18>
    17fc:	00f72023          	sw	a5,0(a4)
    1800:	fe5ff06f          	j	17e4 <_free_file+0x28>

00001804 <fatfs_lba_of_cluster>:
    1804:	ff010113          	addi	sp,sp,-16
    1808:	00812423          	sw	s0,8(sp)
    180c:	00112623          	sw	ra,12(sp)
    1810:	00050413          	mv	s0,a0
    1814:	ffe58513          	addi	a0,a1,-2
    1818:	00044583          	lbu	a1,0(s0)
    181c:	00000097          	auipc	ra,0x0
    1820:	c84080e7          	jalr	-892(ra) # 14a0 <__mulsi3>
    1824:	00442783          	lw	a5,4(s0)
    1828:	00f50533          	add	a0,a0,a5
    182c:	03042783          	lw	a5,48(s0)
    1830:	00079863          	bnez	a5,1840 <fatfs_lba_of_cluster+0x3c>
    1834:	02845783          	lhu	a5,40(s0)
    1838:	4047d793          	srai	a5,a5,0x4
    183c:	00f50533          	add	a0,a0,a5
    1840:	00c12083          	lw	ra,12(sp)
    1844:	00812403          	lw	s0,8(sp)
    1848:	01010113          	addi	sp,sp,16
    184c:	00008067          	ret

00001850 <fatfs_sector_read>:
    1850:	03452783          	lw	a5,52(a0)
    1854:	00058713          	mv	a4,a1
    1858:	00070513          	mv	a0,a4
    185c:	00060593          	mv	a1,a2
    1860:	00068613          	mv	a2,a3
    1864:	00078067          	jr	a5

00001868 <fatfs_sector_write>:
    1868:	03852783          	lw	a5,56(a0)
    186c:	00058713          	mv	a4,a1
    1870:	00070513          	mv	a0,a4
    1874:	00060593          	mv	a1,a2
    1878:	00068613          	mv	a2,a3
    187c:	00078067          	jr	a5

00001880 <fatfs_write_sector>:
    1880:	03852703          	lw	a4,56(a0)
    1884:	0a070463          	beqz	a4,192c <fatfs_write_sector+0xac>
    1888:	03052883          	lw	a7,48(a0)
    188c:	00050793          	mv	a5,a0
    1890:	0115e833          	or	a6,a1,a7
    1894:	02081e63          	bnez	a6,18d0 <fatfs_write_sector+0x50>
    1898:	01052583          	lw	a1,16(a0)
    189c:	08b67863          	bgeu	a2,a1,192c <fatfs_write_sector+0xac>
    18a0:	01c52503          	lw	a0,28(a0)
    18a4:	00c7a583          	lw	a1,12(a5)
    18a8:	00b50533          	add	a0,a0,a1
    18ac:	00c50533          	add	a0,a0,a2
    18b0:	00068863          	beqz	a3,18c0 <fatfs_write_sector+0x40>
    18b4:	00100613          	li	a2,1
    18b8:	00068593          	mv	a1,a3
    18bc:	00070067          	jr	a4
    18c0:	24a7a223          	sw	a0,580(a5)
    18c4:	00100613          	li	a2,1
    18c8:	04478593          	addi	a1,a5,68
    18cc:	ff1ff06f          	j	18bc <fatfs_write_sector+0x3c>
    18d0:	fe010113          	addi	sp,sp,-32
    18d4:	00e12623          	sw	a4,12(sp)
    18d8:	00d12423          	sw	a3,8(sp)
    18dc:	00c12223          	sw	a2,4(sp)
    18e0:	00112e23          	sw	ra,28(sp)
    18e4:	00a12023          	sw	a0,0(sp)
    18e8:	00000097          	auipc	ra,0x0
    18ec:	f1c080e7          	jalr	-228(ra) # 1804 <fatfs_lba_of_cluster>
    18f0:	00412603          	lw	a2,4(sp)
    18f4:	00812683          	lw	a3,8(sp)
    18f8:	00012783          	lw	a5,0(sp)
    18fc:	00c12703          	lw	a4,12(sp)
    1900:	00a60533          	add	a0,a2,a0
    1904:	00068c63          	beqz	a3,191c <fatfs_write_sector+0x9c>
    1908:	00100613          	li	a2,1
    190c:	00068593          	mv	a1,a3
    1910:	01c12083          	lw	ra,28(sp)
    1914:	02010113          	addi	sp,sp,32
    1918:	fa5ff06f          	j	18bc <fatfs_write_sector+0x3c>
    191c:	24a7a223          	sw	a0,580(a5)
    1920:	00100613          	li	a2,1
    1924:	04478593          	addi	a1,a5,68
    1928:	fe9ff06f          	j	1910 <fatfs_write_sector+0x90>
    192c:	00000513          	li	a0,0
    1930:	00008067          	ret

00001934 <fl_init>:
    1934:	ff010113          	addi	sp,sp,-16
    1938:	00005537          	lui	a0,0x5
    193c:	000057b7          	lui	a5,0x5
    1940:	0000b5b7          	lui	a1,0xb
    1944:	00112623          	sw	ra,12(sp)
    1948:	b5850513          	addi	a0,a0,-1192 # 4b58 <_free_file_list>
    194c:	b6078793          	addi	a5,a5,-1184 # 4b60 <_open_file_list>
    1950:	59458593          	addi	a1,a1,1428 # b594 <_files+0x43c>
    1954:	00052223          	sw	zero,4(a0)
    1958:	00052023          	sw	zero,0(a0)
    195c:	0007a223          	sw	zero,4(a5)
    1960:	0007a023          	sw	zero,0(a5)
    1964:	00000097          	auipc	ra,0x0
    1968:	b68080e7          	jalr	-1176(ra) # 14cc <fat_list_insert_last>
    196c:	000057b7          	lui	a5,0x5
    1970:	0000c5b7          	lui	a1,0xc
    1974:	b5878513          	addi	a0,a5,-1192 # 4b58 <_free_file_list>
    1978:	9d858593          	addi	a1,a1,-1576 # b9d8 <_files+0x880>
    197c:	00000097          	auipc	ra,0x0
    1980:	b50080e7          	jalr	-1200(ra) # 14cc <fat_list_insert_last>
    1984:	00c12083          	lw	ra,12(sp)
    1988:	000057b7          	lui	a5,0x5
    198c:	00100713          	li	a4,1
    1990:	b6e7a623          	sw	a4,-1172(a5) # 4b6c <_filelib_init>
    1994:	01010113          	addi	sp,sp,16
    1998:	00008067          	ret

0000199c <fl_closedir>:
    199c:	00000513          	li	a0,0
    19a0:	00008067          	ret

000019a4 <fatfs_lfn_cache_entry>:
    19a4:	0005c783          	lbu	a5,0(a1)
    19a8:	01300693          	li	a3,19
    19ac:	01f7f793          	andi	a5,a5,31
    19b0:	fff78713          	addi	a4,a5,-1
    19b4:	0ff77613          	zext.b	a2,a4
    19b8:	0ac6ea63          	bltu	a3,a2,1a6c <fatfs_lfn_cache_entry+0xc8>
    19bc:	10554683          	lbu	a3,261(a0)
    19c0:	00069463          	bnez	a3,19c8 <fatfs_lfn_cache_entry+0x24>
    19c4:	10f502a3          	sb	a5,261(a0)
    19c8:	00171793          	slli	a5,a4,0x1
    19cc:	00e787b3          	add	a5,a5,a4
    19d0:	0015c683          	lbu	a3,1(a1)
    19d4:	00279793          	slli	a5,a5,0x2
    19d8:	00e787b3          	add	a5,a5,a4
    19dc:	00f50533          	add	a0,a0,a5
    19e0:	00d50023          	sb	a3,0(a0)
    19e4:	0035c783          	lbu	a5,3(a1)
    19e8:	0ff00713          	li	a4,255
    19ec:	02000693          	li	a3,32
    19f0:	00f500a3          	sb	a5,1(a0)
    19f4:	0055c783          	lbu	a5,5(a1)
    19f8:	00f50123          	sb	a5,2(a0)
    19fc:	0075c783          	lbu	a5,7(a1)
    1a00:	00f501a3          	sb	a5,3(a0)
    1a04:	0095c783          	lbu	a5,9(a1)
    1a08:	00f50223          	sb	a5,4(a0)
    1a0c:	00e5c783          	lbu	a5,14(a1)
    1a10:	00f502a3          	sb	a5,5(a0)
    1a14:	0105c783          	lbu	a5,16(a1)
    1a18:	00f50323          	sb	a5,6(a0)
    1a1c:	0125c783          	lbu	a5,18(a1)
    1a20:	00f503a3          	sb	a5,7(a0)
    1a24:	0145c783          	lbu	a5,20(a1)
    1a28:	00f50423          	sb	a5,8(a0)
    1a2c:	0165c783          	lbu	a5,22(a1)
    1a30:	00f504a3          	sb	a5,9(a0)
    1a34:	0185c783          	lbu	a5,24(a1)
    1a38:	00f50523          	sb	a5,10(a0)
    1a3c:	01c5c783          	lbu	a5,28(a1)
    1a40:	00f505a3          	sb	a5,11(a0)
    1a44:	01e5c783          	lbu	a5,30(a1)
    1a48:	00f50623          	sb	a5,12(a0)
    1a4c:	00d00793          	li	a5,13
    1a50:	00054603          	lbu	a2,0(a0)
    1a54:	00e61463          	bne	a2,a4,1a5c <fatfs_lfn_cache_entry+0xb8>
    1a58:	00d50023          	sb	a3,0(a0)
    1a5c:	fff78793          	addi	a5,a5,-1
    1a60:	0ff7f793          	zext.b	a5,a5
    1a64:	00150513          	addi	a0,a0,1
    1a68:	fe0794e3          	bnez	a5,1a50 <fatfs_lfn_cache_entry+0xac>
    1a6c:	00008067          	ret

00001a70 <fatfs_lfn_cache_get>:
    1a70:	10554703          	lbu	a4,261(a0)
    1a74:	01400793          	li	a5,20
    1a78:	00f71663          	bne	a4,a5,1a84 <fatfs_lfn_cache_get+0x14>
    1a7c:	10050223          	sb	zero,260(a0)
    1a80:	00008067          	ret
    1a84:	02070063          	beqz	a4,1aa4 <fatfs_lfn_cache_get+0x34>
    1a88:	00171793          	slli	a5,a4,0x1
    1a8c:	00e787b3          	add	a5,a5,a4
    1a90:	00279793          	slli	a5,a5,0x2
    1a94:	00e787b3          	add	a5,a5,a4
    1a98:	00f507b3          	add	a5,a0,a5
    1a9c:	00078023          	sb	zero,0(a5)
    1aa0:	00008067          	ret
    1aa4:	00050023          	sb	zero,0(a0)
    1aa8:	00008067          	ret

00001aac <fatfs_entry_lfn_text>:
    1aac:	00b54503          	lbu	a0,11(a0)
    1ab0:	00f57513          	andi	a0,a0,15
    1ab4:	ff150513          	addi	a0,a0,-15
    1ab8:	00153513          	seqz	a0,a0
    1abc:	00008067          	ret

00001ac0 <fatfs_entry_lfn_invalid>:
    1ac0:	00054783          	lbu	a5,0(a0)
    1ac4:	f1b78713          	addi	a4,a5,-229
    1ac8:	02070263          	beqz	a4,1aec <fatfs_entry_lfn_invalid+0x2c>
    1acc:	02078063          	beqz	a5,1aec <fatfs_entry_lfn_invalid+0x2c>
    1ad0:	00b54783          	lbu	a5,11(a0)
    1ad4:	00800713          	li	a4,8
    1ad8:	00100513          	li	a0,1
    1adc:	00e78a63          	beq	a5,a4,1af0 <fatfs_entry_lfn_invalid+0x30>
    1ae0:	0067f793          	andi	a5,a5,6
    1ae4:	00f03533          	snez	a0,a5
    1ae8:	00008067          	ret
    1aec:	00100513          	li	a0,1
    1af0:	00008067          	ret

00001af4 <fatfs_entry_lfn_exists>:
    1af4:	00b5c783          	lbu	a5,11(a1)
    1af8:	00f00713          	li	a4,15
    1afc:	04e78063          	beq	a5,a4,1b3c <fatfs_entry_lfn_exists+0x48>
    1b00:	0005c683          	lbu	a3,0(a1)
    1b04:	f1b68713          	addi	a4,a3,-229
    1b08:	00e03733          	snez	a4,a4
    1b0c:	00d036b3          	snez	a3,a3
    1b10:	00d77733          	and	a4,a4,a3
    1b14:	02070463          	beqz	a4,1b3c <fatfs_entry_lfn_exists+0x48>
    1b18:	ff878713          	addi	a4,a5,-8
    1b1c:	02070063          	beqz	a4,1b3c <fatfs_entry_lfn_exists+0x48>
    1b20:	0067f713          	andi	a4,a5,6
    1b24:	00000793          	li	a5,0
    1b28:	00071663          	bnez	a4,1b34 <fatfs_entry_lfn_exists+0x40>
    1b2c:	10554783          	lbu	a5,261(a0)
    1b30:	00f037b3          	snez	a5,a5
    1b34:	00078513          	mv	a0,a5
    1b38:	00008067          	ret
    1b3c:	00000793          	li	a5,0
    1b40:	ff5ff06f          	j	1b34 <fatfs_entry_lfn_exists+0x40>

00001b44 <fatfs_entry_sfn_only>:
    1b44:	00b54783          	lbu	a5,11(a0)
    1b48:	00f00713          	li	a4,15
    1b4c:	02e78863          	beq	a5,a4,1b7c <fatfs_entry_sfn_only+0x38>
    1b50:	00054683          	lbu	a3,0(a0)
    1b54:	f1b68713          	addi	a4,a3,-229
    1b58:	00e03733          	snez	a4,a4
    1b5c:	00d036b3          	snez	a3,a3
    1b60:	00d77733          	and	a4,a4,a3
    1b64:	00070c63          	beqz	a4,1b7c <fatfs_entry_sfn_only+0x38>
    1b68:	ff878713          	addi	a4,a5,-8
    1b6c:	00070863          	beqz	a4,1b7c <fatfs_entry_sfn_only+0x38>
    1b70:	0067f513          	andi	a0,a5,6
    1b74:	00153513          	seqz	a0,a0
    1b78:	00008067          	ret
    1b7c:	00000513          	li	a0,0
    1b80:	00008067          	ret

00001b84 <fatfs_entry_is_dir>:
    1b84:	00b54503          	lbu	a0,11(a0)
    1b88:	00455513          	srli	a0,a0,0x4
    1b8c:	00157513          	andi	a0,a0,1
    1b90:	00008067          	ret

00001b94 <fatfs_lfn_entries_required>:
    1b94:	ff010113          	addi	sp,sp,-16
    1b98:	00112623          	sw	ra,12(sp)
    1b9c:	fffff097          	auipc	ra,0xfffff
    1ba0:	1f4080e7          	jalr	500(ra) # d90 <strlen>
    1ba4:	00050a63          	beqz	a0,1bb8 <fatfs_lfn_entries_required+0x24>
    1ba8:	00d00593          	li	a1,13
    1bac:	00c50513          	addi	a0,a0,12
    1bb0:	fffff097          	auipc	ra,0xfffff
    1bb4:	0ec080e7          	jalr	236(ra) # c9c <__divsi3>
    1bb8:	00c12083          	lw	ra,12(sp)
    1bbc:	01010113          	addi	sp,sp,16
    1bc0:	00008067          	ret

00001bc4 <fatfs_filename_to_lfn>:
    1bc4:	f9010113          	addi	sp,sp,-112
    1bc8:	06812423          	sw	s0,104(sp)
    1bcc:	00058413          	mv	s0,a1
    1bd0:	000055b7          	lui	a1,0x5
    1bd4:	b0c58593          	addi	a1,a1,-1268 # 4b0c <font+0x1e0>
    1bd8:	06912223          	sw	s1,100(sp)
    1bdc:	05312e23          	sw	s3,92(sp)
    1be0:	00060493          	mv	s1,a2
    1be4:	00050993          	mv	s3,a0
    1be8:	03400613          	li	a2,52
    1bec:	01c10513          	addi	a0,sp,28
    1bf0:	00d12623          	sw	a3,12(sp)
    1bf4:	06112623          	sw	ra,108(sp)
    1bf8:	07212023          	sw	s2,96(sp)
    1bfc:	05412c23          	sw	s4,88(sp)
    1c00:	fffff097          	auipc	ra,0xfffff
    1c04:	16c080e7          	jalr	364(ra) # d6c <memcpy>
    1c08:	00098513          	mv	a0,s3
    1c0c:	fffff097          	auipc	ra,0xfffff
    1c10:	184080e7          	jalr	388(ra) # d90 <strlen>
    1c14:	00050913          	mv	s2,a0
    1c18:	00098513          	mv	a0,s3
    1c1c:	00000097          	auipc	ra,0x0
    1c20:	f78080e7          	jalr	-136(ra) # 1b94 <fatfs_lfn_entries_required>
    1c24:	00050a13          	mv	s4,a0
    1c28:	02000613          	li	a2,32
    1c2c:	00000593          	li	a1,0
    1c30:	00040513          	mv	a0,s0
    1c34:	fffff097          	auipc	ra,0xfffff
    1c38:	11c080e7          	jalr	284(ra) # d50 <memset>
    1c3c:	fffa0713          	addi	a4,s4,-1 # 3fff <fatfs_allocate_free_space+0x2b>
    1c40:	00c12683          	lw	a3,12(sp)
    1c44:	00148793          	addi	a5,s1,1
    1c48:	00971463          	bne	a4,s1,1c50 <fatfs_filename_to_lfn+0x8c>
    1c4c:	0407e793          	ori	a5,a5,64
    1c50:	00149613          	slli	a2,s1,0x1
    1c54:	00960633          	add	a2,a2,s1
    1c58:	00f40023          	sb	a5,0(s0)
    1c5c:	00261613          	slli	a2,a2,0x2
    1c60:	00f00793          	li	a5,15
    1c64:	00f405a3          	sb	a5,11(s0)
    1c68:	00d406a3          	sb	a3,13(s0)
    1c6c:	01c10793          	addi	a5,sp,28
    1c70:	00960633          	add	a2,a2,s1
    1c74:	fff00693          	li	a3,-1
    1c78:	0007a703          	lw	a4,0(a5)
    1c7c:	00e40733          	add	a4,s0,a4
    1c80:	05265063          	bge	a2,s2,1cc0 <fatfs_filename_to_lfn+0xfc>
    1c84:	00c985b3          	add	a1,s3,a2
    1c88:	0005c583          	lbu	a1,0(a1)
    1c8c:	00b70023          	sb	a1,0(a4)
    1c90:	00478793          	addi	a5,a5,4
    1c94:	05010713          	addi	a4,sp,80
    1c98:	00160613          	addi	a2,a2,1
    1c9c:	fce79ee3          	bne	a5,a4,1c78 <fatfs_filename_to_lfn+0xb4>
    1ca0:	06c12083          	lw	ra,108(sp)
    1ca4:	06812403          	lw	s0,104(sp)
    1ca8:	06412483          	lw	s1,100(sp)
    1cac:	06012903          	lw	s2,96(sp)
    1cb0:	05c12983          	lw	s3,92(sp)
    1cb4:	05812a03          	lw	s4,88(sp)
    1cb8:	07010113          	addi	sp,sp,112
    1cbc:	00008067          	ret
    1cc0:	01261663          	bne	a2,s2,1ccc <fatfs_filename_to_lfn+0x108>
    1cc4:	00070023          	sb	zero,0(a4)
    1cc8:	fc9ff06f          	j	1c90 <fatfs_filename_to_lfn+0xcc>
    1ccc:	00d70023          	sb	a3,0(a4)
    1cd0:	00d700a3          	sb	a3,1(a4)
    1cd4:	fbdff06f          	j	1c90 <fatfs_filename_to_lfn+0xcc>

00001cd8 <fatfs_sfn_create_entry>:
    1cd8:	00000793          	li	a5,0
    1cdc:	00b00813          	li	a6,11
    1ce0:	00f508b3          	add	a7,a0,a5
    1ce4:	0008c303          	lbu	t1,0(a7)
    1ce8:	00f688b3          	add	a7,a3,a5
    1cec:	00178793          	addi	a5,a5,1
    1cf0:	00688023          	sb	t1,0(a7)
    1cf4:	ff0796e3          	bne	a5,a6,1ce0 <fatfs_sfn_create_entry+0x8>
    1cf8:	00e03733          	snez	a4,a4
    1cfc:	40e00733          	neg	a4,a4
    1d00:	02000793          	li	a5,32
    1d04:	ff077713          	andi	a4,a4,-16
    1d08:	00f70733          	add	a4,a4,a5
    1d0c:	00f68823          	sb	a5,16(a3)
    1d10:	00f68923          	sb	a5,18(a3)
    1d14:	00f68c23          	sb	a5,24(a3)
    1d18:	01065793          	srli	a5,a2,0x10
    1d1c:	00f68a23          	sb	a5,20(a3)
    1d20:	01865793          	srli	a5,a2,0x18
    1d24:	00f68aa3          	sb	a5,21(a3)
    1d28:	0085d793          	srli	a5,a1,0x8
    1d2c:	00c68d23          	sb	a2,26(a3)
    1d30:	00b68e23          	sb	a1,28(a3)
    1d34:	00865613          	srli	a2,a2,0x8
    1d38:	00f68ea3          	sb	a5,29(a3)
    1d3c:	0105d793          	srli	a5,a1,0x10
    1d40:	0185d593          	srli	a1,a1,0x18
    1d44:	000686a3          	sb	zero,13(a3)
    1d48:	00068723          	sb	zero,14(a3)
    1d4c:	000687a3          	sb	zero,15(a3)
    1d50:	000688a3          	sb	zero,17(a3)
    1d54:	000689a3          	sb	zero,19(a3)
    1d58:	00068b23          	sb	zero,22(a3)
    1d5c:	00068ba3          	sb	zero,23(a3)
    1d60:	00068ca3          	sb	zero,25(a3)
    1d64:	00e685a3          	sb	a4,11(a3)
    1d68:	00068623          	sb	zero,12(a3)
    1d6c:	00c68da3          	sb	a2,27(a3)
    1d70:	00f68f23          	sb	a5,30(a3)
    1d74:	00b68fa3          	sb	a1,31(a3)
    1d78:	00008067          	ret

00001d7c <fatfs_lfn_create_sfn>:
    1d7c:	fd010113          	addi	sp,sp,-48
    1d80:	02912223          	sw	s1,36(sp)
    1d84:	00050493          	mv	s1,a0
    1d88:	00058513          	mv	a0,a1
    1d8c:	02812423          	sw	s0,40(sp)
    1d90:	01312e23          	sw	s3,28(sp)
    1d94:	00058413          	mv	s0,a1
    1d98:	02112623          	sw	ra,44(sp)
    1d9c:	03212023          	sw	s2,32(sp)
    1da0:	fffff097          	auipc	ra,0xfffff
    1da4:	ff0080e7          	jalr	-16(ra) # d90 <strlen>
    1da8:	00044783          	lbu	a5,0(s0)
    1dac:	02e00993          	li	s3,46
    1db0:	15378063          	beq	a5,s3,1ef0 <fatfs_lfn_create_sfn+0x174>
    1db4:	00b00613          	li	a2,11
    1db8:	02000593          	li	a1,32
    1dbc:	00050913          	mv	s2,a0
    1dc0:	00048513          	mv	a0,s1
    1dc4:	fffff097          	auipc	ra,0xfffff
    1dc8:	f8c080e7          	jalr	-116(ra) # d50 <memset>
    1dcc:	00300613          	li	a2,3
    1dd0:	02000593          	li	a1,32
    1dd4:	00c10513          	addi	a0,sp,12
    1dd8:	fffff097          	auipc	ra,0xfffff
    1ddc:	f78080e7          	jalr	-136(ra) # d50 <memset>
    1de0:	fff00793          	li	a5,-1
    1de4:	00000713          	li	a4,0
    1de8:	0d274263          	blt	a4,s2,1eac <fatfs_lfn_create_sfn+0x130>
    1dec:	fff00713          	li	a4,-1
    1df0:	0ee78863          	beq	a5,a4,1ee0 <fatfs_lfn_create_sfn+0x164>
    1df4:	00178713          	addi	a4,a5,1
    1df8:	00c10693          	addi	a3,sp,12
    1dfc:	00478613          	addi	a2,a5,4
    1e00:	0ce61263          	bne	a2,a4,1ec4 <fatfs_lfn_create_sfn+0x148>
    1e04:	00000613          	li	a2,0
    1e08:	00000693          	li	a3,0
    1e0c:	01900813          	li	a6,25
    1e10:	00800893          	li	a7,8
    1e14:	02f6de63          	bge	a3,a5,1e50 <fatfs_lfn_create_sfn+0xd4>
    1e18:	00d40733          	add	a4,s0,a3
    1e1c:	00074703          	lbu	a4,0(a4)
    1e20:	fe070513          	addi	a0,a4,-32
    1e24:	0c050263          	beqz	a0,1ee8 <fatfs_lfn_create_sfn+0x16c>
    1e28:	fd270593          	addi	a1,a4,-46
    1e2c:	0a058e63          	beqz	a1,1ee8 <fatfs_lfn_create_sfn+0x16c>
    1e30:	f9f70593          	addi	a1,a4,-97
    1e34:	0ff5f593          	zext.b	a1,a1
    1e38:	00c48333          	add	t1,s1,a2
    1e3c:	00160613          	addi	a2,a2,1
    1e40:	00b86463          	bltu	a6,a1,1e48 <fatfs_lfn_create_sfn+0xcc>
    1e44:	0ff57713          	zext.b	a4,a0
    1e48:	00e30023          	sb	a4,0(t1)
    1e4c:	09161e63          	bne	a2,a7,1ee8 <fatfs_lfn_create_sfn+0x16c>
    1e50:	00c10793          	addi	a5,sp,12
    1e54:	00800693          	li	a3,8
    1e58:	01900513          	li	a0,25
    1e5c:	00b00593          	li	a1,11
    1e60:	0007c703          	lbu	a4,0(a5)
    1e64:	f9f70613          	addi	a2,a4,-97
    1e68:	0ff67613          	zext.b	a2,a2
    1e6c:	00c56663          	bltu	a0,a2,1e78 <fatfs_lfn_create_sfn+0xfc>
    1e70:	fe070713          	addi	a4,a4,-32
    1e74:	0ff77713          	zext.b	a4,a4
    1e78:	00d48633          	add	a2,s1,a3
    1e7c:	00e60023          	sb	a4,0(a2)
    1e80:	00168693          	addi	a3,a3,1
    1e84:	00178793          	addi	a5,a5,1
    1e88:	fcb69ce3          	bne	a3,a1,1e60 <fatfs_lfn_create_sfn+0xe4>
    1e8c:	00100513          	li	a0,1
    1e90:	02c12083          	lw	ra,44(sp)
    1e94:	02812403          	lw	s0,40(sp)
    1e98:	02412483          	lw	s1,36(sp)
    1e9c:	02012903          	lw	s2,32(sp)
    1ea0:	01c12983          	lw	s3,28(sp)
    1ea4:	03010113          	addi	sp,sp,48
    1ea8:	00008067          	ret
    1eac:	00e406b3          	add	a3,s0,a4
    1eb0:	0006c683          	lbu	a3,0(a3)
    1eb4:	01369463          	bne	a3,s3,1ebc <fatfs_lfn_create_sfn+0x140>
    1eb8:	00070793          	mv	a5,a4
    1ebc:	00170713          	addi	a4,a4,1
    1ec0:	f29ff06f          	j	1de8 <fatfs_lfn_create_sfn+0x6c>
    1ec4:	01275863          	bge	a4,s2,1ed4 <fatfs_lfn_create_sfn+0x158>
    1ec8:	00e405b3          	add	a1,s0,a4
    1ecc:	0005c583          	lbu	a1,0(a1)
    1ed0:	00b68023          	sb	a1,0(a3)
    1ed4:	00170713          	addi	a4,a4,1
    1ed8:	00168693          	addi	a3,a3,1
    1edc:	f25ff06f          	j	1e00 <fatfs_lfn_create_sfn+0x84>
    1ee0:	00090793          	mv	a5,s2
    1ee4:	f21ff06f          	j	1e04 <fatfs_lfn_create_sfn+0x88>
    1ee8:	00168693          	addi	a3,a3,1
    1eec:	f29ff06f          	j	1e14 <fatfs_lfn_create_sfn+0x98>
    1ef0:	00000513          	li	a0,0
    1ef4:	f9dff06f          	j	1e90 <fatfs_lfn_create_sfn+0x114>

00001ef8 <fatfs_lfn_generate_tail>:
    1ef8:	000187b7          	lui	a5,0x18
    1efc:	69f78793          	addi	a5,a5,1695 # 1869f <__stacktop+0x869f>
    1f00:	16c7e463          	bltu	a5,a2,2068 <fatfs_lfn_generate_tail+0x170>
    1f04:	fa010113          	addi	sp,sp,-96
    1f08:	04812c23          	sw	s0,88(sp)
    1f0c:	04912a23          	sw	s1,84(sp)
    1f10:	03712e23          	sw	s7,60(sp)
    1f14:	00060413          	mv	s0,a2
    1f18:	00058b93          	mv	s7,a1
    1f1c:	00c00613          	li	a2,12
    1f20:	00000593          	li	a1,0
    1f24:	00050493          	mv	s1,a0
    1f28:	00410513          	addi	a0,sp,4
    1f2c:	04112e23          	sw	ra,92(sp)
    1f30:	05312623          	sw	s3,76(sp)
    1f34:	05412423          	sw	s4,72(sp)
    1f38:	05612023          	sw	s6,64(sp)
    1f3c:	05212823          	sw	s2,80(sp)
    1f40:	05512223          	sw	s5,68(sp)
    1f44:	fffff097          	auipc	ra,0xfffff
    1f48:	e0c080e7          	jalr	-500(ra) # d50 <memset>
    1f4c:	000055b7          	lui	a1,0x5
    1f50:	07e00793          	li	a5,126
    1f54:	01100613          	li	a2,17
    1f58:	8e458593          	addi	a1,a1,-1820 # 48e4 <LEDS+0xac>
    1f5c:	01c10513          	addi	a0,sp,28
    1f60:	01010993          	addi	s3,sp,16
    1f64:	00f10223          	sb	a5,4(sp)
    1f68:	00098a13          	mv	s4,s3
    1f6c:	fffff097          	auipc	ra,0xfffff
    1f70:	e00080e7          	jalr	-512(ra) # d6c <memcpy>
    1f74:	00900b13          	li	s6,9
    1f78:	00a00593          	li	a1,10
    1f7c:	00040513          	mv	a0,s0
    1f80:	fffff097          	auipc	ra,0xfffff
    1f84:	d6c080e7          	jalr	-660(ra) # cec <__umodsi3>
    1f88:	03050793          	addi	a5,a0,48
    1f8c:	00278533          	add	a0,a5,sp
    1f90:	fec54783          	lbu	a5,-20(a0)
    1f94:	00098913          	mv	s2,s3
    1f98:	00040513          	mv	a0,s0
    1f9c:	00a00593          	li	a1,10
    1fa0:	00f98023          	sb	a5,0(s3)
    1fa4:	00040a93          	mv	s5,s0
    1fa8:	fffff097          	auipc	ra,0xfffff
    1fac:	cfc080e7          	jalr	-772(ra) # ca4 <__udivsi3>
    1fb0:	00198993          	addi	s3,s3,1
    1fb4:	00050413          	mv	s0,a0
    1fb8:	fd5b60e3          	bltu	s6,s5,1f78 <fatfs_lfn_generate_tail+0x80>
    1fbc:	00098023          	sb	zero,0(s3)
    1fc0:	00410713          	addi	a4,sp,4
    1fc4:	00090793          	mv	a5,s2
    1fc8:	0947f663          	bgeu	a5,s4,2054 <fatfs_lfn_generate_tail+0x15c>
    1fcc:	00f10713          	addi	a4,sp,15
    1fd0:	00000793          	li	a5,0
    1fd4:	00e96663          	bltu	s2,a4,1fe0 <fatfs_lfn_generate_tail+0xe8>
    1fd8:	41490933          	sub	s2,s2,s4
    1fdc:	00190793          	addi	a5,s2,1
    1fe0:	03078793          	addi	a5,a5,48
    1fe4:	002787b3          	add	a5,a5,sp
    1fe8:	000b8593          	mv	a1,s7
    1fec:	fc078aa3          	sb	zero,-43(a5)
    1ff0:	00b00613          	li	a2,11
    1ff4:	00048513          	mv	a0,s1
    1ff8:	fffff097          	auipc	ra,0xfffff
    1ffc:	d74080e7          	jalr	-652(ra) # d6c <memcpy>
    2000:	00410513          	addi	a0,sp,4
    2004:	fffff097          	auipc	ra,0xfffff
    2008:	d8c080e7          	jalr	-628(ra) # d90 <strlen>
    200c:	40a484b3          	sub	s1,s1,a0
    2010:	00050613          	mv	a2,a0
    2014:	00410593          	addi	a1,sp,4
    2018:	00848513          	addi	a0,s1,8
    201c:	fffff097          	auipc	ra,0xfffff
    2020:	d50080e7          	jalr	-688(ra) # d6c <memcpy>
    2024:	05c12083          	lw	ra,92(sp)
    2028:	05812403          	lw	s0,88(sp)
    202c:	05412483          	lw	s1,84(sp)
    2030:	05012903          	lw	s2,80(sp)
    2034:	04c12983          	lw	s3,76(sp)
    2038:	04812a03          	lw	s4,72(sp)
    203c:	04412a83          	lw	s5,68(sp)
    2040:	04012b03          	lw	s6,64(sp)
    2044:	03c12b83          	lw	s7,60(sp)
    2048:	00100513          	li	a0,1
    204c:	06010113          	addi	sp,sp,96
    2050:	00008067          	ret
    2054:	0007c683          	lbu	a3,0(a5)
    2058:	00170713          	addi	a4,a4,1
    205c:	fff78793          	addi	a5,a5,-1
    2060:	00d70023          	sb	a3,0(a4)
    2064:	f65ff06f          	j	1fc8 <fatfs_lfn_generate_tail+0xd0>
    2068:	00000513          	li	a0,0
    206c:	00008067          	ret

00002070 <fatfs_total_path_levels>:
    2070:	fff00793          	li	a5,-1
    2074:	06050263          	beqz	a0,20d8 <fatfs_total_path_levels+0x68>
    2078:	00054703          	lbu	a4,0(a0)
    207c:	02f00793          	li	a5,47
    2080:	00f71863          	bne	a4,a5,2090 <fatfs_total_path_levels+0x20>
    2084:	00150513          	addi	a0,a0,1
    2088:	00000793          	li	a5,0
    208c:	0400006f          	j	20cc <fatfs_total_path_levels+0x5c>
    2090:	00154703          	lbu	a4,1(a0)
    2094:	03a00793          	li	a5,58
    2098:	00f70a63          	beq	a4,a5,20ac <fatfs_total_path_levels+0x3c>
    209c:	00254683          	lbu	a3,2(a0)
    20a0:	05c00713          	li	a4,92
    20a4:	fff00793          	li	a5,-1
    20a8:	02e69863          	bne	a3,a4,20d8 <fatfs_total_path_levels+0x68>
    20ac:	00350513          	addi	a0,a0,3
    20b0:	05c00713          	li	a4,92
    20b4:	fd5ff06f          	j	2088 <fatfs_total_path_levels+0x18>
    20b8:	00150513          	addi	a0,a0,1
    20bc:	00e68663          	beq	a3,a4,20c8 <fatfs_total_path_levels+0x58>
    20c0:	00054683          	lbu	a3,0(a0)
    20c4:	fe069ae3          	bnez	a3,20b8 <fatfs_total_path_levels+0x48>
    20c8:	00178793          	addi	a5,a5,1
    20cc:	00054683          	lbu	a3,0(a0)
    20d0:	fe0698e3          	bnez	a3,20c0 <fatfs_total_path_levels+0x50>
    20d4:	fff78793          	addi	a5,a5,-1
    20d8:	00078513          	mv	a0,a5
    20dc:	00008067          	ret

000020e0 <fatfs_get_substring>:
    20e0:	0cd05e63          	blez	a3,21bc <fatfs_get_substring+0xdc>
    20e4:	0c050c63          	beqz	a0,21bc <fatfs_get_substring+0xdc>
    20e8:	fe010113          	addi	sp,sp,-32
    20ec:	00812c23          	sw	s0,24(sp)
    20f0:	00112e23          	sw	ra,28(sp)
    20f4:	00912a23          	sw	s1,20(sp)
    20f8:	00054483          	lbu	s1,0(a0)
    20fc:	02f00793          	li	a5,47
    2100:	00150413          	addi	s0,a0,1
    2104:	02f48463          	beq	s1,a5,212c <fatfs_get_substring+0x4c>
    2108:	00154703          	lbu	a4,1(a0)
    210c:	03a00793          	li	a5,58
    2110:	00f70a63          	beq	a4,a5,2124 <fatfs_get_substring+0x44>
    2114:	00254803          	lbu	a6,2(a0)
    2118:	05c00713          	li	a4,92
    211c:	fff00793          	li	a5,-1
    2120:	04e81c63          	bne	a6,a4,2178 <fatfs_get_substring+0x98>
    2124:	00350413          	addi	s0,a0,3
    2128:	05c00493          	li	s1,92
    212c:	00040513          	mv	a0,s0
    2130:	00d12623          	sw	a3,12(sp)
    2134:	00c12423          	sw	a2,8(sp)
    2138:	00b12223          	sw	a1,4(sp)
    213c:	fffff097          	auipc	ra,0xfffff
    2140:	c54080e7          	jalr	-940(ra) # d90 <strlen>
    2144:	00c12683          	lw	a3,12(sp)
    2148:	00412583          	lw	a1,4(sp)
    214c:	00812603          	lw	a2,8(sp)
    2150:	00000713          	li	a4,0
    2154:	00000813          	li	a6,0
    2158:	00000793          	li	a5,0
    215c:	fff68693          	addi	a3,a3,-1
    2160:	00e608b3          	add	a7,a2,a4
    2164:	02a7c663          	blt	a5,a0,2190 <fatfs_get_substring+0xb0>
    2168:	00088023          	sb	zero,0(a7)
    216c:	00064783          	lbu	a5,0(a2)
    2170:	0017b793          	seqz	a5,a5
    2174:	40f007b3          	neg	a5,a5
    2178:	01c12083          	lw	ra,28(sp)
    217c:	01812403          	lw	s0,24(sp)
    2180:	01412483          	lw	s1,20(sp)
    2184:	00078513          	mv	a0,a5
    2188:	02010113          	addi	sp,sp,32
    218c:	00008067          	ret
    2190:	00f40333          	add	t1,s0,a5
    2194:	00034303          	lbu	t1,0(t1)
    2198:	00931863          	bne	t1,s1,21a8 <fatfs_get_substring+0xc8>
    219c:	00180813          	addi	a6,a6,1
    21a0:	00178793          	addi	a5,a5,1
    21a4:	fbdff06f          	j	2160 <fatfs_get_substring+0x80>
    21a8:	feb81ce3          	bne	a6,a1,21a0 <fatfs_get_substring+0xc0>
    21ac:	fed75ae3          	bge	a4,a3,21a0 <fatfs_get_substring+0xc0>
    21b0:	00170713          	addi	a4,a4,1
    21b4:	00688023          	sb	t1,0(a7)
    21b8:	fe9ff06f          	j	21a0 <fatfs_get_substring+0xc0>
    21bc:	fff00793          	li	a5,-1
    21c0:	00078513          	mv	a0,a5
    21c4:	00008067          	ret

000021c8 <fatfs_split_path>:
    21c8:	fd010113          	addi	sp,sp,-48
    21cc:	02912223          	sw	s1,36(sp)
    21d0:	03212023          	sw	s2,32(sp)
    21d4:	01312e23          	sw	s3,28(sp)
    21d8:	01412c23          	sw	s4,24(sp)
    21dc:	02112623          	sw	ra,44(sp)
    21e0:	02812423          	sw	s0,40(sp)
    21e4:	01512a23          	sw	s5,20(sp)
    21e8:	00050993          	mv	s3,a0
    21ec:	00058493          	mv	s1,a1
    21f0:	00060913          	mv	s2,a2
    21f4:	00068a13          	mv	s4,a3
    21f8:	00e12623          	sw	a4,12(sp)
    21fc:	00000097          	auipc	ra,0x0
    2200:	e74080e7          	jalr	-396(ra) # 2070 <fatfs_total_path_levels>
    2204:	fff00793          	li	a5,-1
    2208:	02f51863          	bne	a0,a5,2238 <fatfs_split_path+0x70>
    220c:	fff00413          	li	s0,-1
    2210:	02c12083          	lw	ra,44(sp)
    2214:	00040513          	mv	a0,s0
    2218:	02812403          	lw	s0,40(sp)
    221c:	02412483          	lw	s1,36(sp)
    2220:	02012903          	lw	s2,32(sp)
    2224:	01c12983          	lw	s3,28(sp)
    2228:	01812a03          	lw	s4,24(sp)
    222c:	01412a83          	lw	s5,20(sp)
    2230:	03010113          	addi	sp,sp,48
    2234:	00008067          	ret
    2238:	00c12683          	lw	a3,12(sp)
    223c:	00050593          	mv	a1,a0
    2240:	00a12623          	sw	a0,12(sp)
    2244:	000a0613          	mv	a2,s4
    2248:	00098513          	mv	a0,s3
    224c:	00000097          	auipc	ra,0x0
    2250:	e94080e7          	jalr	-364(ra) # 20e0 <fatfs_get_substring>
    2254:	00050413          	mv	s0,a0
    2258:	fa051ae3          	bnez	a0,220c <fatfs_split_path+0x44>
    225c:	00c12583          	lw	a1,12(sp)
    2260:	00059663          	bnez	a1,226c <fatfs_split_path+0xa4>
    2264:	00048023          	sb	zero,0(s1)
    2268:	fa9ff06f          	j	2210 <fatfs_split_path+0x48>
    226c:	00098513          	mv	a0,s3
    2270:	fffff097          	auipc	ra,0xfffff
    2274:	b20080e7          	jalr	-1248(ra) # d90 <strlen>
    2278:	00050a93          	mv	s5,a0
    227c:	000a0513          	mv	a0,s4
    2280:	fffff097          	auipc	ra,0xfffff
    2284:	b10080e7          	jalr	-1264(ra) # d90 <strlen>
    2288:	40aa8633          	sub	a2,s5,a0
    228c:	00c95463          	bge	s2,a2,2294 <fatfs_split_path+0xcc>
    2290:	00090613          	mv	a2,s2
    2294:	00048513          	mv	a0,s1
    2298:	00098593          	mv	a1,s3
    229c:	00c12623          	sw	a2,12(sp)
    22a0:	fffff097          	auipc	ra,0xfffff
    22a4:	acc080e7          	jalr	-1332(ra) # d6c <memcpy>
    22a8:	00c12603          	lw	a2,12(sp)
    22ac:	00c484b3          	add	s1,s1,a2
    22b0:	fe048fa3          	sb	zero,-1(s1)
    22b4:	f5dff06f          	j	2210 <fatfs_split_path+0x48>

000022b8 <fatfs_compare_names>:
    22b8:	fd010113          	addi	sp,sp,-48
    22bc:	02112623          	sw	ra,44(sp)
    22c0:	03212023          	sw	s2,32(sp)
    22c4:	01312e23          	sw	s3,28(sp)
    22c8:	01412c23          	sw	s4,24(sp)
    22cc:	01512a23          	sw	s5,20(sp)
    22d0:	00058a13          	mv	s4,a1
    22d4:	02812423          	sw	s0,40(sp)
    22d8:	02912223          	sw	s1,36(sp)
    22dc:	01612823          	sw	s6,16(sp)
    22e0:	01712623          	sw	s7,12(sp)
    22e4:	01812423          	sw	s8,8(sp)
    22e8:	00050a93          	mv	s5,a0
    22ec:	fffff097          	auipc	ra,0xfffff
    22f0:	2bc080e7          	jalr	700(ra) # 15a8 <FileString_GetExtension>
    22f4:	00050993          	mv	s3,a0
    22f8:	000a0513          	mv	a0,s4
    22fc:	fffff097          	auipc	ra,0xfffff
    2300:	2ac080e7          	jalr	684(ra) # 15a8 <FileString_GetExtension>
    2304:	fff00793          	li	a5,-1
    2308:	00050913          	mv	s2,a0
    230c:	02f99e63          	bne	s3,a5,2348 <fatfs_compare_names+0x90>
    2310:	0f350063          	beq	a0,s3,23f0 <fatfs_compare_names+0x138>
    2314:	00000513          	li	a0,0
    2318:	02c12083          	lw	ra,44(sp)
    231c:	02812403          	lw	s0,40(sp)
    2320:	02412483          	lw	s1,36(sp)
    2324:	02012903          	lw	s2,32(sp)
    2328:	01c12983          	lw	s3,28(sp)
    232c:	01812a03          	lw	s4,24(sp)
    2330:	01412a83          	lw	s5,20(sp)
    2334:	01012b03          	lw	s6,16(sp)
    2338:	00c12b83          	lw	s7,12(sp)
    233c:	00812c03          	lw	s8,8(sp)
    2340:	03010113          	addi	sp,sp,48
    2344:	00008067          	ret
    2348:	fcf506e3          	beq	a0,a5,2314 <fatfs_compare_names+0x5c>
    234c:	00198793          	addi	a5,s3,1
    2350:	00fa8b33          	add	s6,s5,a5
    2354:	00050413          	mv	s0,a0
    2358:	00150793          	addi	a5,a0,1
    235c:	000b0513          	mv	a0,s6
    2360:	00fa0bb3          	add	s7,s4,a5
    2364:	fffff097          	auipc	ra,0xfffff
    2368:	a2c080e7          	jalr	-1492(ra) # d90 <strlen>
    236c:	00050c13          	mv	s8,a0
    2370:	000b8513          	mv	a0,s7
    2374:	00098493          	mv	s1,s3
    2378:	fffff097          	auipc	ra,0xfffff
    237c:	a18080e7          	jalr	-1512(ra) # d90 <strlen>
    2380:	f8ac1ae3          	bne	s8,a0,2314 <fatfs_compare_names+0x5c>
    2384:	000b0513          	mv	a0,s6
    2388:	fffff097          	auipc	ra,0xfffff
    238c:	a08080e7          	jalr	-1528(ra) # d90 <strlen>
    2390:	00050613          	mv	a2,a0
    2394:	000b8593          	mv	a1,s7
    2398:	000b0513          	mv	a0,s6
    239c:	fffff097          	auipc	ra,0xfffff
    23a0:	19c080e7          	jalr	412(ra) # 1538 <FileString_StrCmpNoCase>
    23a4:	f60518e3          	bnez	a0,2314 <fatfs_compare_names+0x5c>
    23a8:	fff48793          	addi	a5,s1,-1
    23ac:	00fa87b3          	add	a5,s5,a5
    23b0:	41378733          	sub	a4,a5,s3
    23b4:	02000693          	li	a3,32
    23b8:	06e79263          	bne	a5,a4,241c <fatfs_compare_names+0x164>
    23bc:	fff40793          	addi	a5,s0,-1
    23c0:	00fa07b3          	add	a5,s4,a5
    23c4:	41278733          	sub	a4,a5,s2
    23c8:	02000693          	li	a3,32
    23cc:	06e79263          	bne	a5,a4,2430 <fatfs_compare_names+0x178>
    23d0:	f53912e3          	bne	s2,s3,2314 <fatfs_compare_names+0x5c>
    23d4:	00090613          	mv	a2,s2
    23d8:	000a0593          	mv	a1,s4
    23dc:	000a8513          	mv	a0,s5
    23e0:	fffff097          	auipc	ra,0xfffff
    23e4:	158080e7          	jalr	344(ra) # 1538 <FileString_StrCmpNoCase>
    23e8:	00153513          	seqz	a0,a0
    23ec:	f2dff06f          	j	2318 <fatfs_compare_names+0x60>
    23f0:	000a8513          	mv	a0,s5
    23f4:	fffff097          	auipc	ra,0xfffff
    23f8:	99c080e7          	jalr	-1636(ra) # d90 <strlen>
    23fc:	00050493          	mv	s1,a0
    2400:	00050993          	mv	s3,a0
    2404:	000a0513          	mv	a0,s4
    2408:	fffff097          	auipc	ra,0xfffff
    240c:	988080e7          	jalr	-1656(ra) # d90 <strlen>
    2410:	00050413          	mv	s0,a0
    2414:	00050913          	mv	s2,a0
    2418:	f91ff06f          	j	23a8 <fatfs_compare_names+0xf0>
    241c:	0007c603          	lbu	a2,0(a5)
    2420:	f8d61ee3          	bne	a2,a3,23bc <fatfs_compare_names+0x104>
    2424:	415789b3          	sub	s3,a5,s5
    2428:	fff78793          	addi	a5,a5,-1
    242c:	f8dff06f          	j	23b8 <fatfs_compare_names+0x100>
    2430:	0007c603          	lbu	a2,0(a5)
    2434:	f8d61ee3          	bne	a2,a3,23d0 <fatfs_compare_names+0x118>
    2438:	41478933          	sub	s2,a5,s4
    243c:	fff78793          	addi	a5,a5,-1
    2440:	f8dff06f          	j	23cc <fatfs_compare_names+0x114>

00002444 <_check_file_open>:
    2444:	fe010113          	addi	sp,sp,-32
    2448:	000057b7          	lui	a5,0x5
    244c:	00812c23          	sw	s0,24(sp)
    2450:	b607a403          	lw	s0,-1184(a5) # 4b60 <_open_file_list>
    2454:	00912a23          	sw	s1,20(sp)
    2458:	00112e23          	sw	ra,28(sp)
    245c:	01212823          	sw	s2,16(sp)
    2460:	01312623          	sw	s3,12(sp)
    2464:	00050493          	mv	s1,a0
    2468:	00041663          	bnez	s0,2474 <_check_file_open+0x30>
    246c:	00000513          	li	a0,0
    2470:	03c0006f          	j	24ac <_check_file_open+0x68>
    2474:	bc440793          	addi	a5,s0,-1084
    2478:	00f49663          	bne	s1,a5,2484 <_check_file_open+0x40>
    247c:	00442403          	lw	s0,4(s0)
    2480:	fe9ff06f          	j	2468 <_check_file_open+0x24>
    2484:	01448593          	addi	a1,s1,20
    2488:	bd840513          	addi	a0,s0,-1064
    248c:	00000097          	auipc	ra,0x0
    2490:	e2c080e7          	jalr	-468(ra) # 22b8 <fatfs_compare_names>
    2494:	fe0504e3          	beqz	a0,247c <_check_file_open+0x38>
    2498:	11848593          	addi	a1,s1,280
    249c:	cdc40513          	addi	a0,s0,-804
    24a0:	00000097          	auipc	ra,0x0
    24a4:	e18080e7          	jalr	-488(ra) # 22b8 <fatfs_compare_names>
    24a8:	fc050ae3          	beqz	a0,247c <_check_file_open+0x38>
    24ac:	01c12083          	lw	ra,28(sp)
    24b0:	01812403          	lw	s0,24(sp)
    24b4:	01412483          	lw	s1,20(sp)
    24b8:	01012903          	lw	s2,16(sp)
    24bc:	00c12983          	lw	s3,12(sp)
    24c0:	02010113          	addi	sp,sp,32
    24c4:	00008067          	ret

000024c8 <fatfs_get_sfn_display_name>:
    24c8:	00000713          	li	a4,0
    24cc:	02000613          	li	a2,32
    24d0:	01900813          	li	a6,25
    24d4:	0005c783          	lbu	a5,0(a1)
    24d8:	00078663          	beqz	a5,24e4 <fatfs_get_sfn_display_name+0x1c>
    24dc:	ff470693          	addi	a3,a4,-12
    24e0:	00069863          	bnez	a3,24f0 <fatfs_get_sfn_display_name+0x28>
    24e4:	00050023          	sb	zero,0(a0)
    24e8:	00100513          	li	a0,1
    24ec:	00008067          	ret
    24f0:	00158593          	addi	a1,a1,1
    24f4:	fec780e3          	beq	a5,a2,24d4 <fatfs_get_sfn_display_name+0xc>
    24f8:	fbf78693          	addi	a3,a5,-65
    24fc:	0ff6f693          	zext.b	a3,a3
    2500:	00d86663          	bltu	a6,a3,250c <fatfs_get_sfn_display_name+0x44>
    2504:	02078793          	addi	a5,a5,32
    2508:	0ff7f793          	zext.b	a5,a5
    250c:	00f50023          	sb	a5,0(a0)
    2510:	00170713          	addi	a4,a4,1
    2514:	00150513          	addi	a0,a0,1
    2518:	fbdff06f          	j	24d4 <fatfs_get_sfn_display_name+0xc>

0000251c <fatfs_fat_init>:
    251c:	ff010113          	addi	sp,sp,-16
    2520:	00812423          	sw	s0,8(sp)
    2524:	00912223          	sw	s1,4(sp)
    2528:	00112623          	sw	ra,12(sp)
    252c:	fff00793          	li	a5,-1
    2530:	25850493          	addi	s1,a0,600
    2534:	00050413          	mv	s0,a0
    2538:	44f52c23          	sw	a5,1112(a0)
    253c:	24052a23          	sw	zero,596(a0)
    2540:	44052e23          	sw	zero,1116(a0)
    2544:	20000613          	li	a2,512
    2548:	00048513          	mv	a0,s1
    254c:	00000593          	li	a1,0
    2550:	fffff097          	auipc	ra,0xfffff
    2554:	800080e7          	jalr	-2048(ra) # d50 <memset>
    2558:	25442783          	lw	a5,596(s0)
    255c:	00c12083          	lw	ra,12(sp)
    2560:	24942a23          	sw	s1,596(s0)
    2564:	46042023          	sw	zero,1120(s0)
    2568:	46f42223          	sw	a5,1124(s0)
    256c:	00812403          	lw	s0,8(sp)
    2570:	00412483          	lw	s1,4(sp)
    2574:	01010113          	addi	sp,sp,16
    2578:	00008067          	ret

0000257c <fatfs_init>:
    257c:	fd010113          	addi	sp,sp,-48
    2580:	02812423          	sw	s0,40(sp)
    2584:	02112623          	sw	ra,44(sp)
    2588:	02912223          	sw	s1,36(sp)
    258c:	03212023          	sw	s2,32(sp)
    2590:	01312e23          	sw	s3,28(sp)
    2594:	fff00793          	li	a5,-1
    2598:	24f52223          	sw	a5,580(a0)
    259c:	24052423          	sw	zero,584(a0)
    25a0:	02052223          	sw	zero,36(a0)
    25a4:	00050413          	mv	s0,a0
    25a8:	00000097          	auipc	ra,0x0
    25ac:	f74080e7          	jalr	-140(ra) # 251c <fatfs_fat_init>
    25b0:	03442783          	lw	a5,52(s0)
    25b4:	02079463          	bnez	a5,25dc <fatfs_init+0x60>
    25b8:	fff00713          	li	a4,-1
    25bc:	02c12083          	lw	ra,44(sp)
    25c0:	02812403          	lw	s0,40(sp)
    25c4:	02412483          	lw	s1,36(sp)
    25c8:	02012903          	lw	s2,32(sp)
    25cc:	01c12983          	lw	s3,28(sp)
    25d0:	00070513          	mv	a0,a4
    25d4:	03010113          	addi	sp,sp,48
    25d8:	00008067          	ret
    25dc:	04440593          	addi	a1,s0,68
    25e0:	00100613          	li	a2,1
    25e4:	00000513          	li	a0,0
    25e8:	00b12623          	sw	a1,12(sp)
    25ec:	000780e7          	jalr	a5
    25f0:	fc0504e3          	beqz	a0,25b8 <fatfs_init+0x3c>
    25f4:	24244703          	lbu	a4,578(s0)
    25f8:	05500793          	li	a5,85
    25fc:	00c12583          	lw	a1,12(sp)
    2600:	00f70663          	beq	a4,a5,260c <fatfs_init+0x90>
    2604:	ffd00713          	li	a4,-3
    2608:	fb5ff06f          	j	25bc <fatfs_init+0x40>
    260c:	24344703          	lbu	a4,579(s0)
    2610:	0aa00793          	li	a5,170
    2614:	fef718e3          	bne	a4,a5,2604 <fatfs_init+0x88>
    2618:	20644783          	lbu	a5,518(s0)
    261c:	00600713          	li	a4,6
    2620:	02f76463          	bltu	a4,a5,2648 <fatfs_init+0xcc>
    2624:	00400713          	li	a4,4
    2628:	00f76663          	bltu	a4,a5,2634 <fatfs_init+0xb8>
    262c:	00000513          	li	a0,0
    2630:	02078663          	beqz	a5,265c <fatfs_init+0xe0>
    2634:	20c45503          	lhu	a0,524(s0)
    2638:	20a45783          	lhu	a5,522(s0)
    263c:	01051513          	slli	a0,a0,0x10
    2640:	00f56533          	or	a0,a0,a5
    2644:	0180006f          	j	265c <fatfs_init+0xe0>
    2648:	00c00713          	li	a4,12
    264c:	12f76663          	bltu	a4,a5,2778 <fatfs_init+0x1fc>
    2650:	00a00713          	li	a4,10
    2654:	00000513          	li	a0,0
    2658:	fcf76ee3          	bltu	a4,a5,2634 <fatfs_init+0xb8>
    265c:	03442783          	lw	a5,52(s0)
    2660:	00a42e23          	sw	a0,28(s0)
    2664:	00100613          	li	a2,1
    2668:	000780e7          	jalr	a5
    266c:	f40506e3          	beqz	a0,25b8 <fatfs_init+0x3c>
    2670:	05044783          	lbu	a5,80(s0)
    2674:	04f44703          	lbu	a4,79(s0)
    2678:	20000693          	li	a3,512
    267c:	00879793          	slli	a5,a5,0x8
    2680:	00e7e7b3          	or	a5,a5,a4
    2684:	ffe00713          	li	a4,-2
    2688:	f2d79ae3          	bne	a5,a3,25bc <fatfs_init+0x40>
    268c:	05644483          	lbu	s1,86(s0)
    2690:	05544783          	lbu	a5,85(s0)
    2694:	05144983          	lbu	s3,81(s0)
    2698:	00849493          	slli	s1,s1,0x8
    269c:	05a45583          	lhu	a1,90(s0)
    26a0:	00f4e4b3          	or	s1,s1,a5
    26a4:	01340023          	sb	s3,0(s0)
    26a8:	02941423          	sh	s1,40(s0)
    26ac:	05245903          	lhu	s2,82(s0)
    26b0:	05444503          	lbu	a0,84(s0)
    26b4:	00059463          	bnez	a1,26bc <fatfs_init+0x140>
    26b8:	06842583          	lw	a1,104(s0)
    26bc:	07042783          	lw	a5,112(s0)
    26c0:	02b42023          	sw	a1,32(s0)
    26c4:	00549493          	slli	s1,s1,0x5
    26c8:	00f42423          	sw	a5,8(s0)
    26cc:	07445783          	lhu	a5,116(s0)
    26d0:	1ff48493          	addi	s1,s1,511
    26d4:	4094d493          	srai	s1,s1,0x9
    26d8:	00f41c23          	sh	a5,24(s0)
    26dc:	fffff097          	auipc	ra,0xfffff
    26e0:	dc4080e7          	jalr	-572(ra) # 14a0 <__mulsi3>
    26e4:	00a907b3          	add	a5,s2,a0
    26e8:	00f42623          	sw	a5,12(s0)
    26ec:	01c42783          	lw	a5,28(s0)
    26f0:	24245703          	lhu	a4,578(s0)
    26f4:	00942823          	sw	s1,16(s0)
    26f8:	00f907b3          	add	a5,s2,a5
    26fc:	00f42a23          	sw	a5,20(s0)
    2700:	00f507b3          	add	a5,a0,a5
    2704:	00f42223          	sw	a5,4(s0)
    2708:	0000b7b7          	lui	a5,0xb
    270c:	a5578793          	addi	a5,a5,-1451 # aa55 <framebuffer+0x3d65>
    2710:	eef71ae3          	bne	a4,a5,2604 <fatfs_init+0x88>
    2714:	05844783          	lbu	a5,88(s0)
    2718:	05744703          	lbu	a4,87(s0)
    271c:	00879793          	slli	a5,a5,0x8
    2720:	00e7e7b3          	or	a5,a5,a4
    2724:	00079463          	bnez	a5,272c <fatfs_init+0x1b0>
    2728:	06442783          	lw	a5,100(s0)
    272c:	ffb00713          	li	a4,-5
    2730:	e80986e3          	beqz	s3,25bc <fatfs_init+0x40>
    2734:	00990933          	add	s2,s2,s1
    2738:	00a90533          	add	a0,s2,a0
    273c:	40a78533          	sub	a0,a5,a0
    2740:	00098593          	mv	a1,s3
    2744:	ffffe097          	auipc	ra,0xffffe
    2748:	560080e7          	jalr	1376(ra) # ca4 <__udivsi3>
    274c:	000017b7          	lui	a5,0x1
    2750:	ff478793          	addi	a5,a5,-12 # ff4 <oled_fullscreen+0x8c>
    2754:	ffb00713          	li	a4,-5
    2758:	e6a7f2e3          	bgeu	a5,a0,25bc <fatfs_init+0x40>
    275c:	000107b7          	lui	a5,0x10
    2760:	ff478793          	addi	a5,a5,-12 # fff4 <_files+0x4e9c>
    2764:	02a7e663          	bltu	a5,a0,2790 <fatfs_init+0x214>
    2768:	00042423          	sw	zero,8(s0)
    276c:	02042823          	sw	zero,48(s0)
    2770:	00000713          	li	a4,0
    2774:	e49ff06f          	j	25bc <fatfs_init+0x40>
    2778:	ff278793          	addi	a5,a5,-14
    277c:	0ff7f793          	zext.b	a5,a5
    2780:	00100713          	li	a4,1
    2784:	00000513          	li	a0,0
    2788:	eaf776e3          	bgeu	a4,a5,2634 <fatfs_init+0xb8>
    278c:	ed1ff06f          	j	265c <fatfs_init+0xe0>
    2790:	00100793          	li	a5,1
    2794:	02f42823          	sw	a5,48(s0)
    2798:	fd9ff06f          	j	2770 <fatfs_init+0x1f4>

0000279c <fl_attach_media>:
    279c:	000057b7          	lui	a5,0x5
    27a0:	b6c7a783          	lw	a5,-1172(a5) # 4b6c <_filelib_init>
    27a4:	fe010113          	addi	sp,sp,-32
    27a8:	00812c23          	sw	s0,24(sp)
    27ac:	00112e23          	sw	ra,28(sp)
    27b0:	00050413          	mv	s0,a0
    27b4:	00079a63          	bnez	a5,27c8 <fl_attach_media+0x2c>
    27b8:	00b12623          	sw	a1,12(sp)
    27bc:	fffff097          	auipc	ra,0xfffff
    27c0:	178080e7          	jalr	376(ra) # 1934 <fl_init>
    27c4:	00c12583          	lw	a1,12(sp)
    27c8:	0000b7b7          	lui	a5,0xb
    27cc:	cf078513          	addi	a0,a5,-784 # acf0 <_fs>
    27d0:	02b52c23          	sw	a1,56(a0)
    27d4:	02852a23          	sw	s0,52(a0)
    27d8:	00000097          	auipc	ra,0x0
    27dc:	da4080e7          	jalr	-604(ra) # 257c <fatfs_init>
    27e0:	00050593          	mv	a1,a0
    27e4:	02050863          	beqz	a0,2814 <fl_attach_media+0x78>
    27e8:	00a12623          	sw	a0,12(sp)
    27ec:	00005537          	lui	a0,0x5
    27f0:	8f850513          	addi	a0,a0,-1800 # 48f8 <LEDS+0xc0>
    27f4:	fffff097          	auipc	ra,0xfffff
    27f8:	b70080e7          	jalr	-1168(ra) # 1364 <printf>
    27fc:	00c12583          	lw	a1,12(sp)
    2800:	01c12083          	lw	ra,28(sp)
    2804:	01812403          	lw	s0,24(sp)
    2808:	00058513          	mv	a0,a1
    280c:	02010113          	addi	sp,sp,32
    2810:	00008067          	ret
    2814:	000057b7          	lui	a5,0x5
    2818:	00100713          	li	a4,1
    281c:	b6e7a423          	sw	a4,-1176(a5) # 4b68 <_filelib_valid>
    2820:	fe1ff06f          	j	2800 <fl_attach_media+0x64>

00002824 <fatfs_fat_purge>:
    2824:	25452583          	lw	a1,596(a0)
    2828:	fe010113          	addi	sp,sp,-32
    282c:	00812c23          	sw	s0,24(sp)
    2830:	00112e23          	sw	ra,28(sp)
    2834:	00050413          	mv	s0,a0
    2838:	00059663          	bnez	a1,2844 <fatfs_fat_purge+0x20>
    283c:	00100513          	li	a0,1
    2840:	02c0006f          	j	286c <fatfs_fat_purge+0x48>
    2844:	2045a783          	lw	a5,516(a1)
    2848:	00079663          	bnez	a5,2854 <fatfs_fat_purge+0x30>
    284c:	20c5a583          	lw	a1,524(a1)
    2850:	fe9ff06f          	j	2838 <fatfs_fat_purge+0x14>
    2854:	00040513          	mv	a0,s0
    2858:	00b12623          	sw	a1,12(sp)
    285c:	fffff097          	auipc	ra,0xfffff
    2860:	d78080e7          	jalr	-648(ra) # 15d4 <fatfs_fat_writeback>
    2864:	00c12583          	lw	a1,12(sp)
    2868:	fe0512e3          	bnez	a0,284c <fatfs_fat_purge+0x28>
    286c:	01c12083          	lw	ra,28(sp)
    2870:	01812403          	lw	s0,24(sp)
    2874:	02010113          	addi	sp,sp,32
    2878:	00008067          	ret

0000287c <fatfs_find_next_cluster>:
    287c:	ff010113          	addi	sp,sp,-16
    2880:	00812423          	sw	s0,8(sp)
    2884:	01212023          	sw	s2,0(sp)
    2888:	00112623          	sw	ra,12(sp)
    288c:	00912223          	sw	s1,4(sp)
    2890:	00050913          	mv	s2,a0
    2894:	00200413          	li	s0,2
    2898:	00058463          	beqz	a1,28a0 <fatfs_find_next_cluster+0x24>
    289c:	00058413          	mv	s0,a1
    28a0:	03092783          	lw	a5,48(s2)
    28a4:	00745493          	srli	s1,s0,0x7
    28a8:	00079463          	bnez	a5,28b0 <fatfs_find_next_cluster+0x34>
    28ac:	00845493          	srli	s1,s0,0x8
    28b0:	01492583          	lw	a1,20(s2)
    28b4:	00090513          	mv	a0,s2
    28b8:	00b485b3          	add	a1,s1,a1
    28bc:	fffff097          	auipc	ra,0xfffff
    28c0:	d9c080e7          	jalr	-612(ra) # 1658 <fatfs_fat_read_sector>
    28c4:	00050793          	mv	a5,a0
    28c8:	fff00513          	li	a0,-1
    28cc:	04078863          	beqz	a5,291c <fatfs_find_next_cluster+0xa0>
    28d0:	03092703          	lw	a4,48(s2)
    28d4:	2087a783          	lw	a5,520(a5)
    28d8:	04071e63          	bnez	a4,2934 <fatfs_find_next_cluster+0xb8>
    28dc:	00849493          	slli	s1,s1,0x8
    28e0:	40940433          	sub	s0,s0,s1
    28e4:	00141413          	slli	s0,s0,0x1
    28e8:	01041413          	slli	s0,s0,0x10
    28ec:	01045413          	srli	s0,s0,0x10
    28f0:	008787b3          	add	a5,a5,s0
    28f4:	0017c503          	lbu	a0,1(a5)
    28f8:	0007c783          	lbu	a5,0(a5)
    28fc:	00851513          	slli	a0,a0,0x8
    2900:	00f50533          	add	a0,a0,a5
    2904:	ffff07b7          	lui	a5,0xffff0
    2908:	00878793          	addi	a5,a5,8 # ffff0008 <__stacktop+0xfffe0008>
    290c:	00f507b3          	add	a5,a0,a5
    2910:	00700713          	li	a4,7
    2914:	00f76463          	bltu	a4,a5,291c <fatfs_find_next_cluster+0xa0>
    2918:	fff00513          	li	a0,-1
    291c:	00c12083          	lw	ra,12(sp)
    2920:	00812403          	lw	s0,8(sp)
    2924:	00412483          	lw	s1,4(sp)
    2928:	00012903          	lw	s2,0(sp)
    292c:	01010113          	addi	sp,sp,16
    2930:	00008067          	ret
    2934:	00749493          	slli	s1,s1,0x7
    2938:	40940433          	sub	s0,s0,s1
    293c:	00241413          	slli	s0,s0,0x2
    2940:	01041413          	slli	s0,s0,0x10
    2944:	01045413          	srli	s0,s0,0x10
    2948:	008787b3          	add	a5,a5,s0
    294c:	0037c503          	lbu	a0,3(a5)
    2950:	0027c703          	lbu	a4,2(a5)
    2954:	01851513          	slli	a0,a0,0x18
    2958:	01071713          	slli	a4,a4,0x10
    295c:	00e50533          	add	a0,a0,a4
    2960:	0007c703          	lbu	a4,0(a5)
    2964:	0017c783          	lbu	a5,1(a5)
    2968:	00e50533          	add	a0,a0,a4
    296c:	00879793          	slli	a5,a5,0x8
    2970:	00f50533          	add	a0,a0,a5
    2974:	00451513          	slli	a0,a0,0x4
    2978:	00455513          	srli	a0,a0,0x4
    297c:	f00007b7          	lui	a5,0xf0000
    2980:	f89ff06f          	j	2908 <fatfs_find_next_cluster+0x8c>

00002984 <fatfs_sector_reader>:
    2984:	03052783          	lw	a5,48(a0)
    2988:	fe010113          	addi	sp,sp,-32
    298c:	00812c23          	sw	s0,24(sp)
    2990:	01212823          	sw	s2,16(sp)
    2994:	01512223          	sw	s5,4(sp)
    2998:	00112e23          	sw	ra,28(sp)
    299c:	00912a23          	sw	s1,20(sp)
    29a0:	01312623          	sw	s3,12(sp)
    29a4:	01412423          	sw	s4,8(sp)
    29a8:	01612023          	sw	s6,0(sp)
    29ac:	00f5e7b3          	or	a5,a1,a5
    29b0:	00050413          	mv	s0,a0
    29b4:	00060913          	mv	s2,a2
    29b8:	00068a93          	mv	s5,a3
    29bc:	08079063          	bnez	a5,2a3c <fatfs_sector_reader+0xb8>
    29c0:	01052783          	lw	a5,16(a0)
    29c4:	02f66863          	bltu	a2,a5,29f4 <fatfs_sector_reader+0x70>
    29c8:	00000513          	li	a0,0
    29cc:	01c12083          	lw	ra,28(sp)
    29d0:	01812403          	lw	s0,24(sp)
    29d4:	01412483          	lw	s1,20(sp)
    29d8:	01012903          	lw	s2,16(sp)
    29dc:	00c12983          	lw	s3,12(sp)
    29e0:	00812a03          	lw	s4,8(sp)
    29e4:	00412a83          	lw	s5,4(sp)
    29e8:	00012b03          	lw	s6,0(sp)
    29ec:	02010113          	addi	sp,sp,32
    29f0:	00008067          	ret
    29f4:	01c52503          	lw	a0,28(a0)
    29f8:	00c42783          	lw	a5,12(s0)
    29fc:	00f50533          	add	a0,a0,a5
    2a00:	01250533          	add	a0,a0,s2
    2a04:	0a0a8663          	beqz	s5,2ab0 <fatfs_sector_reader+0x12c>
    2a08:	03442783          	lw	a5,52(s0)
    2a0c:	00100613          	li	a2,1
    2a10:	000a8593          	mv	a1,s5
    2a14:	01812403          	lw	s0,24(sp)
    2a18:	01c12083          	lw	ra,28(sp)
    2a1c:	01412483          	lw	s1,20(sp)
    2a20:	01012903          	lw	s2,16(sp)
    2a24:	00c12983          	lw	s3,12(sp)
    2a28:	00812a03          	lw	s4,8(sp)
    2a2c:	00412a83          	lw	s5,4(sp)
    2a30:	00012b03          	lw	s6,0(sp)
    2a34:	02010113          	addi	sp,sp,32
    2a38:	00078067          	jr	a5 # f0000000 <__stacktop+0xefff0000>
    2a3c:	00054783          	lbu	a5,0(a0)
    2a40:	00058493          	mv	s1,a1
    2a44:	00060513          	mv	a0,a2
    2a48:	00078593          	mv	a1,a5
    2a4c:	00078a13          	mv	s4,a5
    2a50:	ffffe097          	auipc	ra,0xffffe
    2a54:	254080e7          	jalr	596(ra) # ca4 <__udivsi3>
    2a58:	00050b13          	mv	s6,a0
    2a5c:	00000993          	li	s3,0
    2a60:	03699a63          	bne	s3,s6,2a94 <fatfs_sector_reader+0x110>
    2a64:	fff00793          	li	a5,-1
    2a68:	f6f480e3          	beq	s1,a5,29c8 <fatfs_sector_reader+0x44>
    2a6c:	000a0593          	mv	a1,s4
    2a70:	00090513          	mv	a0,s2
    2a74:	ffffe097          	auipc	ra,0xffffe
    2a78:	278080e7          	jalr	632(ra) # cec <__umodsi3>
    2a7c:	00050913          	mv	s2,a0
    2a80:	00048593          	mv	a1,s1
    2a84:	00040513          	mv	a0,s0
    2a88:	fffff097          	auipc	ra,0xfffff
    2a8c:	d7c080e7          	jalr	-644(ra) # 1804 <fatfs_lba_of_cluster>
    2a90:	f71ff06f          	j	2a00 <fatfs_sector_reader+0x7c>
    2a94:	00048593          	mv	a1,s1
    2a98:	00040513          	mv	a0,s0
    2a9c:	00000097          	auipc	ra,0x0
    2aa0:	de0080e7          	jalr	-544(ra) # 287c <fatfs_find_next_cluster>
    2aa4:	00050493          	mv	s1,a0
    2aa8:	00198993          	addi	s3,s3,1
    2aac:	fb5ff06f          	j	2a60 <fatfs_sector_reader+0xdc>
    2ab0:	24442783          	lw	a5,580(s0)
    2ab4:	00a78c63          	beq	a5,a0,2acc <fatfs_sector_reader+0x148>
    2ab8:	03442783          	lw	a5,52(s0)
    2abc:	24a42223          	sw	a0,580(s0)
    2ac0:	00100613          	li	a2,1
    2ac4:	04440593          	addi	a1,s0,68
    2ac8:	f4dff06f          	j	2a14 <fatfs_sector_reader+0x90>
    2acc:	00100513          	li	a0,1
    2ad0:	efdff06f          	j	29cc <fatfs_sector_reader+0x48>

00002ad4 <fatfs_get_file_entry>:
    2ad4:	eb010113          	addi	sp,sp,-336
    2ad8:	14812423          	sw	s0,328(sp)
    2adc:	14912223          	sw	s1,324(sp)
    2ae0:	13312e23          	sw	s3,316(sp)
    2ae4:	13712623          	sw	s7,300(sp)
    2ae8:	13812423          	sw	s8,296(sp)
    2aec:	13912223          	sw	s9,292(sp)
    2af0:	14112623          	sw	ra,332(sp)
    2af4:	15212023          	sw	s2,320(sp)
    2af8:	13412c23          	sw	s4,312(sp)
    2afc:	13512a23          	sw	s5,308(sp)
    2b00:	13612823          	sw	s6,304(sp)
    2b04:	00050993          	mv	s3,a0
    2b08:	00058c93          	mv	s9,a1
    2b0c:	00060b93          	mv	s7,a2
    2b10:	00068c13          	mv	s8,a3
    2b14:	10010ea3          	sb	zero,285(sp)
    2b18:	01810413          	addi	s0,sp,24
    2b1c:	11c10493          	addi	s1,sp,284
    2b20:	00040513          	mv	a0,s0
    2b24:	00d00613          	li	a2,13
    2b28:	00000593          	li	a1,0
    2b2c:	00d40413          	addi	s0,s0,13
    2b30:	ffffe097          	auipc	ra,0xffffe
    2b34:	220080e7          	jalr	544(ra) # d50 <memset>
    2b38:	fe9414e3          	bne	s0,s1,2b20 <fatfs_get_file_entry+0x4c>
    2b3c:	00000493          	li	s1,0
    2b40:	24498a13          	addi	s4,s3,580
    2b44:	00810913          	addi	s2,sp,8
    2b48:	00800a93          	li	s5,8
    2b4c:	02e00b13          	li	s6,46
    2b50:	00000693          	li	a3,0
    2b54:	00048613          	mv	a2,s1
    2b58:	000c8593          	mv	a1,s9
    2b5c:	00098513          	mv	a0,s3
    2b60:	00000097          	auipc	ra,0x0
    2b64:	e24080e7          	jalr	-476(ra) # 2984 <fatfs_sector_reader>
    2b68:	08050c63          	beqz	a0,2c00 <fatfs_get_file_entry+0x12c>
    2b6c:	00148493          	addi	s1,s1,1
    2b70:	04498413          	addi	s0,s3,68
    2b74:	00040513          	mv	a0,s0
    2b78:	fffff097          	auipc	ra,0xfffff
    2b7c:	f34080e7          	jalr	-204(ra) # 1aac <fatfs_entry_lfn_text>
    2b80:	02050063          	beqz	a0,2ba0 <fatfs_get_file_entry+0xcc>
    2b84:	00040593          	mv	a1,s0
    2b88:	01810513          	addi	a0,sp,24
    2b8c:	fffff097          	auipc	ra,0xfffff
    2b90:	e18080e7          	jalr	-488(ra) # 19a4 <fatfs_lfn_cache_entry>
    2b94:	02040413          	addi	s0,s0,32
    2b98:	fd441ee3          	bne	s0,s4,2b74 <fatfs_get_file_entry+0xa0>
    2b9c:	fb5ff06f          	j	2b50 <fatfs_get_file_entry+0x7c>
    2ba0:	00040513          	mv	a0,s0
    2ba4:	fffff097          	auipc	ra,0xfffff
    2ba8:	f1c080e7          	jalr	-228(ra) # 1ac0 <fatfs_entry_lfn_invalid>
    2bac:	00050663          	beqz	a0,2bb8 <fatfs_get_file_entry+0xe4>
    2bb0:	10010ea3          	sb	zero,285(sp)
    2bb4:	fe1ff06f          	j	2b94 <fatfs_get_file_entry+0xc0>
    2bb8:	00040593          	mv	a1,s0
    2bbc:	01810513          	addi	a0,sp,24
    2bc0:	fffff097          	auipc	ra,0xfffff
    2bc4:	f34080e7          	jalr	-204(ra) # 1af4 <fatfs_entry_lfn_exists>
    2bc8:	06050663          	beqz	a0,2c34 <fatfs_get_file_entry+0x160>
    2bcc:	01810513          	addi	a0,sp,24
    2bd0:	fffff097          	auipc	ra,0xfffff
    2bd4:	ea0080e7          	jalr	-352(ra) # 1a70 <fatfs_lfn_cache_get>
    2bd8:	000b8593          	mv	a1,s7
    2bdc:	fffff097          	auipc	ra,0xfffff
    2be0:	6dc080e7          	jalr	1756(ra) # 22b8 <fatfs_compare_names>
    2be4:	fc0506e3          	beqz	a0,2bb0 <fatfs_get_file_entry+0xdc>
    2be8:	02000613          	li	a2,32
    2bec:	00040593          	mv	a1,s0
    2bf0:	000c0513          	mv	a0,s8
    2bf4:	ffffe097          	auipc	ra,0xffffe
    2bf8:	178080e7          	jalr	376(ra) # d6c <memcpy>
    2bfc:	00100513          	li	a0,1
    2c00:	14c12083          	lw	ra,332(sp)
    2c04:	14812403          	lw	s0,328(sp)
    2c08:	14412483          	lw	s1,324(sp)
    2c0c:	14012903          	lw	s2,320(sp)
    2c10:	13c12983          	lw	s3,316(sp)
    2c14:	13812a03          	lw	s4,312(sp)
    2c18:	13412a83          	lw	s5,308(sp)
    2c1c:	13012b03          	lw	s6,304(sp)
    2c20:	12c12b83          	lw	s7,300(sp)
    2c24:	12812c03          	lw	s8,296(sp)
    2c28:	12412c83          	lw	s9,292(sp)
    2c2c:	15010113          	addi	sp,sp,336
    2c30:	00008067          	ret
    2c34:	00040513          	mv	a0,s0
    2c38:	fffff097          	auipc	ra,0xfffff
    2c3c:	f0c080e7          	jalr	-244(ra) # 1b44 <fatfs_entry_sfn_only>
    2c40:	f4050ae3          	beqz	a0,2b94 <fatfs_get_file_entry+0xc0>
    2c44:	00d00613          	li	a2,13
    2c48:	00000593          	li	a1,0
    2c4c:	00090513          	mv	a0,s2
    2c50:	ffffe097          	auipc	ra,0xffffe
    2c54:	100080e7          	jalr	256(ra) # d50 <memset>
    2c58:	00000793          	li	a5,0
    2c5c:	00f406b3          	add	a3,s0,a5
    2c60:	0006c683          	lbu	a3,0(a3)
    2c64:	00f90733          	add	a4,s2,a5
    2c68:	00178793          	addi	a5,a5,1
    2c6c:	00d70023          	sb	a3,0(a4)
    2c70:	ff5796e3          	bne	a5,s5,2c5c <fatfs_get_file_entry+0x188>
    2c74:	00844703          	lbu	a4,8(s0)
    2c78:	00944783          	lbu	a5,9(s0)
    2c7c:	00a44683          	lbu	a3,10(s0)
    2c80:	00e108a3          	sb	a4,17(sp)
    2c84:	00f10923          	sb	a5,18(sp)
    2c88:	fe070713          	addi	a4,a4,-32
    2c8c:	fe078793          	addi	a5,a5,-32
    2c90:	00f037b3          	snez	a5,a5
    2c94:	00e03733          	snez	a4,a4
    2c98:	00d109a3          	sb	a3,19(sp)
    2c9c:	00e7e7b3          	or	a5,a5,a4
    2ca0:	00079863          	bnez	a5,2cb0 <fatfs_get_file_entry+0x1dc>
    2ca4:	fe068693          	addi	a3,a3,-32
    2ca8:	02000793          	li	a5,32
    2cac:	00068a63          	beqz	a3,2cc0 <fatfs_get_file_entry+0x1ec>
    2cb0:	00814703          	lbu	a4,8(sp)
    2cb4:	02e00793          	li	a5,46
    2cb8:	01671463          	bne	a4,s6,2cc0 <fatfs_get_file_entry+0x1ec>
    2cbc:	02000793          	li	a5,32
    2cc0:	00f10823          	sb	a5,16(sp)
    2cc4:	000b8593          	mv	a1,s7
    2cc8:	00090513          	mv	a0,s2
    2ccc:	f11ff06f          	j	2bdc <fatfs_get_file_entry+0x108>

00002cd0 <_open_directory>:
    2cd0:	eb010113          	addi	sp,sp,-336
    2cd4:	15212023          	sw	s2,320(sp)
    2cd8:	0000b937          	lui	s2,0xb
    2cdc:	cf090913          	addi	s2,s2,-784 # acf0 <_fs>
    2ce0:	14812423          	sw	s0,328(sp)
    2ce4:	00892403          	lw	s0,8(s2)
    2ce8:	14912223          	sw	s1,324(sp)
    2cec:	13312e23          	sw	s3,316(sp)
    2cf0:	13412c23          	sw	s4,312(sp)
    2cf4:	13512a23          	sw	s5,308(sp)
    2cf8:	13612823          	sw	s6,304(sp)
    2cfc:	14112623          	sw	ra,332(sp)
    2d00:	00050a13          	mv	s4,a0
    2d04:	00058a93          	mv	s5,a1
    2d08:	fffff097          	auipc	ra,0xfffff
    2d0c:	368080e7          	jalr	872(ra) # 2070 <fatfs_total_path_levels>
    2d10:	00050b13          	mv	s6,a0
    2d14:	00000493          	li	s1,0
    2d18:	fff00993          	li	s3,-1
    2d1c:	009b5863          	bge	s6,s1,2d2c <_open_directory+0x5c>
    2d20:	008aa023          	sw	s0,0(s5)
    2d24:	00100513          	li	a0,1
    2d28:	0240006f          	j	2d4c <_open_directory+0x7c>
    2d2c:	10400693          	li	a3,260
    2d30:	02c10613          	addi	a2,sp,44
    2d34:	00048593          	mv	a1,s1
    2d38:	000a0513          	mv	a0,s4
    2d3c:	fffff097          	auipc	ra,0xfffff
    2d40:	3a4080e7          	jalr	932(ra) # 20e0 <fatfs_get_substring>
    2d44:	03351863          	bne	a0,s3,2d74 <_open_directory+0xa4>
    2d48:	00000513          	li	a0,0
    2d4c:	14c12083          	lw	ra,332(sp)
    2d50:	14812403          	lw	s0,328(sp)
    2d54:	14412483          	lw	s1,324(sp)
    2d58:	14012903          	lw	s2,320(sp)
    2d5c:	13c12983          	lw	s3,316(sp)
    2d60:	13812a03          	lw	s4,312(sp)
    2d64:	13412a83          	lw	s5,308(sp)
    2d68:	13012b03          	lw	s6,304(sp)
    2d6c:	15010113          	addi	sp,sp,336
    2d70:	00008067          	ret
    2d74:	00c10693          	addi	a3,sp,12
    2d78:	02c10613          	addi	a2,sp,44
    2d7c:	00040593          	mv	a1,s0
    2d80:	00090513          	mv	a0,s2
    2d84:	00000097          	auipc	ra,0x0
    2d88:	d50080e7          	jalr	-688(ra) # 2ad4 <fatfs_get_file_entry>
    2d8c:	fa050ee3          	beqz	a0,2d48 <_open_directory+0x78>
    2d90:	01714783          	lbu	a5,23(sp)
    2d94:	0107f793          	andi	a5,a5,16
    2d98:	fa0788e3          	beqz	a5,2d48 <_open_directory+0x78>
    2d9c:	02015403          	lhu	s0,32(sp)
    2da0:	02615783          	lhu	a5,38(sp)
    2da4:	00148493          	addi	s1,s1,1
    2da8:	01041413          	slli	s0,s0,0x10
    2dac:	00f40433          	add	s0,s0,a5
    2db0:	f6dff06f          	j	2d1c <_open_directory+0x4c>

00002db4 <fl_opendir>:
    2db4:	fe010113          	addi	sp,sp,-32
    2db8:	fff00793          	li	a5,-1
    2dbc:	00f12623          	sw	a5,12(sp)
    2dc0:	000057b7          	lui	a5,0x5
    2dc4:	b6c7a783          	lw	a5,-1172(a5) # 4b6c <_filelib_init>
    2dc8:	00812c23          	sw	s0,24(sp)
    2dcc:	01212823          	sw	s2,16(sp)
    2dd0:	00112e23          	sw	ra,28(sp)
    2dd4:	00912a23          	sw	s1,20(sp)
    2dd8:	00050913          	mv	s2,a0
    2ddc:	00058413          	mv	s0,a1
    2de0:	00079663          	bnez	a5,2dec <fl_opendir+0x38>
    2de4:	fffff097          	auipc	ra,0xfffff
    2de8:	b50080e7          	jalr	-1200(ra) # 1934 <fl_init>
    2dec:	0000b4b7          	lui	s1,0xb
    2df0:	cf048493          	addi	s1,s1,-784 # acf0 <_fs>
    2df4:	03c4a783          	lw	a5,60(s1)
    2df8:	00078463          	beqz	a5,2e00 <fl_opendir+0x4c>
    2dfc:	000780e7          	jalr	a5
    2e00:	00090513          	mv	a0,s2
    2e04:	fffff097          	auipc	ra,0xfffff
    2e08:	26c080e7          	jalr	620(ra) # 2070 <fatfs_total_path_levels>
    2e0c:	fff00793          	li	a5,-1
    2e10:	02f51063          	bne	a0,a5,2e30 <fl_opendir+0x7c>
    2e14:	0084a783          	lw	a5,8(s1)
    2e18:	00f12623          	sw	a5,12(sp)
    2e1c:	00c12783          	lw	a5,12(sp)
    2e20:	00042023          	sw	zero,0(s0)
    2e24:	00040423          	sb	zero,8(s0)
    2e28:	00f42223          	sw	a5,4(s0)
    2e2c:	0180006f          	j	2e44 <fl_opendir+0x90>
    2e30:	00c10593          	addi	a1,sp,12
    2e34:	00090513          	mv	a0,s2
    2e38:	00000097          	auipc	ra,0x0
    2e3c:	e98080e7          	jalr	-360(ra) # 2cd0 <_open_directory>
    2e40:	fc051ee3          	bnez	a0,2e1c <fl_opendir+0x68>
    2e44:	0404a783          	lw	a5,64(s1)
    2e48:	00078463          	beqz	a5,2e50 <fl_opendir+0x9c>
    2e4c:	000780e7          	jalr	a5
    2e50:	00c12703          	lw	a4,12(sp)
    2e54:	fff00793          	li	a5,-1
    2e58:	00f71463          	bne	a4,a5,2e60 <fl_opendir+0xac>
    2e5c:	00000413          	li	s0,0
    2e60:	01c12083          	lw	ra,28(sp)
    2e64:	00040513          	mv	a0,s0
    2e68:	01812403          	lw	s0,24(sp)
    2e6c:	01412483          	lw	s1,20(sp)
    2e70:	01012903          	lw	s2,16(sp)
    2e74:	02010113          	addi	sp,sp,32
    2e78:	00008067          	ret

00002e7c <_open_file>:
    2e7c:	fc010113          	addi	sp,sp,-64
    2e80:	03312623          	sw	s3,44(sp)
    2e84:	02112e23          	sw	ra,60(sp)
    2e88:	02812c23          	sw	s0,56(sp)
    2e8c:	02912a23          	sw	s1,52(sp)
    2e90:	03212823          	sw	s2,48(sp)
    2e94:	00050993          	mv	s3,a0
    2e98:	fffff097          	auipc	ra,0xfffff
    2e9c:	8ac080e7          	jalr	-1876(ra) # 1744 <_allocate_file>
    2ea0:	06050463          	beqz	a0,2f08 <_open_file+0x8c>
    2ea4:	01450913          	addi	s2,a0,20
    2ea8:	00050413          	mv	s0,a0
    2eac:	10400613          	li	a2,260
    2eb0:	00000593          	li	a1,0
    2eb4:	00090513          	mv	a0,s2
    2eb8:	ffffe097          	auipc	ra,0xffffe
    2ebc:	e98080e7          	jalr	-360(ra) # d50 <memset>
    2ec0:	11840493          	addi	s1,s0,280
    2ec4:	10400613          	li	a2,260
    2ec8:	00000593          	li	a1,0
    2ecc:	00048513          	mv	a0,s1
    2ed0:	ffffe097          	auipc	ra,0xffffe
    2ed4:	e80080e7          	jalr	-384(ra) # d50 <memset>
    2ed8:	10400713          	li	a4,260
    2edc:	00048693          	mv	a3,s1
    2ee0:	00070613          	mv	a2,a4
    2ee4:	00090593          	mv	a1,s2
    2ee8:	00098513          	mv	a0,s3
    2eec:	fffff097          	auipc	ra,0xfffff
    2ef0:	2dc080e7          	jalr	732(ra) # 21c8 <fatfs_split_path>
    2ef4:	fff00793          	li	a5,-1
    2ef8:	02f51a63          	bne	a0,a5,2f2c <_open_file+0xb0>
    2efc:	00040513          	mv	a0,s0
    2f00:	fffff097          	auipc	ra,0xfffff
    2f04:	8bc080e7          	jalr	-1860(ra) # 17bc <_free_file>
    2f08:	00000413          	li	s0,0
    2f0c:	03c12083          	lw	ra,60(sp)
    2f10:	00040513          	mv	a0,s0
    2f14:	03812403          	lw	s0,56(sp)
    2f18:	03412483          	lw	s1,52(sp)
    2f1c:	03012903          	lw	s2,48(sp)
    2f20:	02c12983          	lw	s3,44(sp)
    2f24:	04010113          	addi	sp,sp,64
    2f28:	00008067          	ret
    2f2c:	00040513          	mv	a0,s0
    2f30:	fffff097          	auipc	ra,0xfffff
    2f34:	514080e7          	jalr	1300(ra) # 2444 <_check_file_open>
    2f38:	fc0512e3          	bnez	a0,2efc <_open_file+0x80>
    2f3c:	01444783          	lbu	a5,20(s0)
    2f40:	08079c63          	bnez	a5,2fd8 <_open_file+0x15c>
    2f44:	0000b7b7          	lui	a5,0xb
    2f48:	cf87a783          	lw	a5,-776(a5) # acf8 <_fs+0x8>
    2f4c:	00f42023          	sw	a5,0(s0)
    2f50:	00042583          	lw	a1,0(s0)
    2f54:	00048613          	mv	a2,s1
    2f58:	0000b4b7          	lui	s1,0xb
    2f5c:	00010693          	mv	a3,sp
    2f60:	cf048513          	addi	a0,s1,-784 # acf0 <_fs>
    2f64:	00000097          	auipc	ra,0x0
    2f68:	b70080e7          	jalr	-1168(ra) # 2ad4 <fatfs_get_file_entry>
    2f6c:	f80508e3          	beqz	a0,2efc <_open_file+0x80>
    2f70:	00b14783          	lbu	a5,11(sp)
    2f74:	0207f793          	andi	a5,a5,32
    2f78:	f80782e3          	beqz	a5,2efc <_open_file+0x80>
    2f7c:	00b00613          	li	a2,11
    2f80:	00010593          	mv	a1,sp
    2f84:	21c40513          	addi	a0,s0,540
    2f88:	ffffe097          	auipc	ra,0xffffe
    2f8c:	de4080e7          	jalr	-540(ra) # d6c <memcpy>
    2f90:	01c12783          	lw	a5,28(sp)
    2f94:	01a15703          	lhu	a4,26(sp)
    2f98:	00042423          	sw	zero,8(s0)
    2f9c:	00f42623          	sw	a5,12(s0)
    2fa0:	01415783          	lhu	a5,20(sp)
    2fa4:	42042a23          	sw	zero,1076(s0)
    2fa8:	00042823          	sw	zero,16(s0)
    2fac:	01079793          	slli	a5,a5,0x10
    2fb0:	00e787b3          	add	a5,a5,a4
    2fb4:	00f42223          	sw	a5,4(s0)
    2fb8:	fff00793          	li	a5,-1
    2fbc:	42f42823          	sw	a5,1072(s0)
    2fc0:	22f42423          	sw	a5,552(s0)
    2fc4:	22f42623          	sw	a5,556(s0)
    2fc8:	cf048513          	addi	a0,s1,-784
    2fcc:	00000097          	auipc	ra,0x0
    2fd0:	858080e7          	jalr	-1960(ra) # 2824 <fatfs_fat_purge>
    2fd4:	f39ff06f          	j	2f0c <_open_file+0x90>
    2fd8:	00040593          	mv	a1,s0
    2fdc:	00090513          	mv	a0,s2
    2fe0:	00000097          	auipc	ra,0x0
    2fe4:	cf0080e7          	jalr	-784(ra) # 2cd0 <_open_directory>
    2fe8:	f60514e3          	bnez	a0,2f50 <_open_file+0xd4>
    2fec:	f11ff06f          	j	2efc <_open_file+0x80>

00002ff0 <fatfs_sfn_exists>:
    2ff0:	fe010113          	addi	sp,sp,-32
    2ff4:	01212823          	sw	s2,16(sp)
    2ff8:	01312623          	sw	s3,12(sp)
    2ffc:	01412423          	sw	s4,8(sp)
    3000:	01512223          	sw	s5,4(sp)
    3004:	01612023          	sw	s6,0(sp)
    3008:	00112e23          	sw	ra,28(sp)
    300c:	00812c23          	sw	s0,24(sp)
    3010:	00912a23          	sw	s1,20(sp)
    3014:	00050993          	mv	s3,a0
    3018:	00058a93          	mv	s5,a1
    301c:	00060b13          	mv	s6,a2
    3020:	00000913          	li	s2,0
    3024:	24450a13          	addi	s4,a0,580
    3028:	00000693          	li	a3,0
    302c:	00090613          	mv	a2,s2
    3030:	000a8593          	mv	a1,s5
    3034:	00098513          	mv	a0,s3
    3038:	00000097          	auipc	ra,0x0
    303c:	94c080e7          	jalr	-1716(ra) # 2984 <fatfs_sector_reader>
    3040:	00050413          	mv	s0,a0
    3044:	06050263          	beqz	a0,30a8 <fatfs_sfn_exists+0xb8>
    3048:	00190913          	addi	s2,s2,1
    304c:	04498493          	addi	s1,s3,68
    3050:	00048513          	mv	a0,s1
    3054:	fffff097          	auipc	ra,0xfffff
    3058:	a58080e7          	jalr	-1448(ra) # 1aac <fatfs_entry_lfn_text>
    305c:	00050863          	beqz	a0,306c <fatfs_sfn_exists+0x7c>
    3060:	02048493          	addi	s1,s1,32
    3064:	ff4496e3          	bne	s1,s4,3050 <fatfs_sfn_exists+0x60>
    3068:	fc1ff06f          	j	3028 <fatfs_sfn_exists+0x38>
    306c:	00048513          	mv	a0,s1
    3070:	fffff097          	auipc	ra,0xfffff
    3074:	a50080e7          	jalr	-1456(ra) # 1ac0 <fatfs_entry_lfn_invalid>
    3078:	fe0514e3          	bnez	a0,3060 <fatfs_sfn_exists+0x70>
    307c:	00048513          	mv	a0,s1
    3080:	fffff097          	auipc	ra,0xfffff
    3084:	ac4080e7          	jalr	-1340(ra) # 1b44 <fatfs_entry_sfn_only>
    3088:	00050413          	mv	s0,a0
    308c:	fc050ae3          	beqz	a0,3060 <fatfs_sfn_exists+0x70>
    3090:	00b00613          	li	a2,11
    3094:	000b0593          	mv	a1,s6
    3098:	00048513          	mv	a0,s1
    309c:	ffffe097          	auipc	ra,0xffffe
    30a0:	d14080e7          	jalr	-748(ra) # db0 <strncmp>
    30a4:	fa051ee3          	bnez	a0,3060 <fatfs_sfn_exists+0x70>
    30a8:	01c12083          	lw	ra,28(sp)
    30ac:	00040513          	mv	a0,s0
    30b0:	01812403          	lw	s0,24(sp)
    30b4:	01412483          	lw	s1,20(sp)
    30b8:	01012903          	lw	s2,16(sp)
    30bc:	00c12983          	lw	s3,12(sp)
    30c0:	00812a03          	lw	s4,8(sp)
    30c4:	00412a83          	lw	s5,4(sp)
    30c8:	00012b03          	lw	s6,0(sp)
    30cc:	02010113          	addi	sp,sp,32
    30d0:	00008067          	ret

000030d4 <fatfs_update_file_length>:
    30d4:	03852783          	lw	a5,56(a0)
    30d8:	14078e63          	beqz	a5,3234 <fatfs_update_file_length+0x160>
    30dc:	fd010113          	addi	sp,sp,-48
    30e0:	02912223          	sw	s1,36(sp)
    30e4:	03212023          	sw	s2,32(sp)
    30e8:	01312e23          	sw	s3,28(sp)
    30ec:	01412c23          	sw	s4,24(sp)
    30f0:	01612823          	sw	s6,16(sp)
    30f4:	01712623          	sw	s7,12(sp)
    30f8:	02112623          	sw	ra,44(sp)
    30fc:	02812423          	sw	s0,40(sp)
    3100:	01512a23          	sw	s5,20(sp)
    3104:	00068913          	mv	s2,a3
    3108:	00060b93          	mv	s7,a2
    310c:	00058b13          	mv	s6,a1
    3110:	00050493          	mv	s1,a0
    3114:	00000993          	li	s3,0
    3118:	24450a13          	addi	s4,a0,580
    311c:	00000693          	li	a3,0
    3120:	00098613          	mv	a2,s3
    3124:	000b0593          	mv	a1,s6
    3128:	00048513          	mv	a0,s1
    312c:	00000097          	auipc	ra,0x0
    3130:	858080e7          	jalr	-1960(ra) # 2984 <fatfs_sector_reader>
    3134:	0c050863          	beqz	a0,3204 <fatfs_update_file_length+0x130>
    3138:	04448413          	addi	s0,s1,68
    313c:	00198993          	addi	s3,s3,1
    3140:	00040a93          	mv	s5,s0
    3144:	00040513          	mv	a0,s0
    3148:	fffff097          	auipc	ra,0xfffff
    314c:	964080e7          	jalr	-1692(ra) # 1aac <fatfs_entry_lfn_text>
    3150:	0a051463          	bnez	a0,31f8 <fatfs_update_file_length+0x124>
    3154:	00040513          	mv	a0,s0
    3158:	fffff097          	auipc	ra,0xfffff
    315c:	968080e7          	jalr	-1688(ra) # 1ac0 <fatfs_entry_lfn_invalid>
    3160:	08051c63          	bnez	a0,31f8 <fatfs_update_file_length+0x124>
    3164:	00040513          	mv	a0,s0
    3168:	fffff097          	auipc	ra,0xfffff
    316c:	9dc080e7          	jalr	-1572(ra) # 1b44 <fatfs_entry_sfn_only>
    3170:	08050463          	beqz	a0,31f8 <fatfs_update_file_length+0x124>
    3174:	00b00613          	li	a2,11
    3178:	000b8593          	mv	a1,s7
    317c:	00040513          	mv	a0,s0
    3180:	ffffe097          	auipc	ra,0xffffe
    3184:	c30080e7          	jalr	-976(ra) # db0 <strncmp>
    3188:	06051863          	bnez	a0,31f8 <fatfs_update_file_length+0x124>
    318c:	00895793          	srli	a5,s2,0x8
    3190:	01240e23          	sb	s2,28(s0)
    3194:	00f40ea3          	sb	a5,29(s0)
    3198:	01095793          	srli	a5,s2,0x10
    319c:	01895913          	srli	s2,s2,0x18
    31a0:	00f40f23          	sb	a5,30(s0)
    31a4:	01240fa3          	sb	s2,31(s0)
    31a8:	00040593          	mv	a1,s0
    31ac:	02000613          	li	a2,32
    31b0:	00040513          	mv	a0,s0
    31b4:	ffffe097          	auipc	ra,0xffffe
    31b8:	bb8080e7          	jalr	-1096(ra) # d6c <memcpy>
    31bc:	02812403          	lw	s0,40(sp)
    31c0:	0384a783          	lw	a5,56(s1)
    31c4:	2444a503          	lw	a0,580(s1)
    31c8:	02c12083          	lw	ra,44(sp)
    31cc:	02412483          	lw	s1,36(sp)
    31d0:	02012903          	lw	s2,32(sp)
    31d4:	01c12983          	lw	s3,28(sp)
    31d8:	01812a03          	lw	s4,24(sp)
    31dc:	01012b03          	lw	s6,16(sp)
    31e0:	00c12b83          	lw	s7,12(sp)
    31e4:	000a8593          	mv	a1,s5
    31e8:	01412a83          	lw	s5,20(sp)
    31ec:	00100613          	li	a2,1
    31f0:	03010113          	addi	sp,sp,48
    31f4:	00078067          	jr	a5
    31f8:	02040413          	addi	s0,s0,32
    31fc:	f54414e3          	bne	s0,s4,3144 <fatfs_update_file_length+0x70>
    3200:	f1dff06f          	j	311c <fatfs_update_file_length+0x48>
    3204:	02c12083          	lw	ra,44(sp)
    3208:	02812403          	lw	s0,40(sp)
    320c:	02412483          	lw	s1,36(sp)
    3210:	02012903          	lw	s2,32(sp)
    3214:	01c12983          	lw	s3,28(sp)
    3218:	01812a03          	lw	s4,24(sp)
    321c:	01412a83          	lw	s5,20(sp)
    3220:	01012b03          	lw	s6,16(sp)
    3224:	00c12b83          	lw	s7,12(sp)
    3228:	00000513          	li	a0,0
    322c:	03010113          	addi	sp,sp,48
    3230:	00008067          	ret
    3234:	00000513          	li	a0,0
    3238:	00008067          	ret

0000323c <fatfs_list_directory_next>:
    323c:	ec010113          	addi	sp,sp,-320
    3240:	13212823          	sw	s2,304(sp)
    3244:	13312623          	sw	s3,300(sp)
    3248:	13412423          	sw	s4,296(sp)
    324c:	13512223          	sw	s5,292(sp)
    3250:	13612023          	sw	s6,288(sp)
    3254:	12112e23          	sw	ra,316(sp)
    3258:	12812c23          	sw	s0,312(sp)
    325c:	12912a23          	sw	s1,308(sp)
    3260:	00050a13          	mv	s4,a0
    3264:	00058913          	mv	s2,a1
    3268:	00060993          	mv	s3,a2
    326c:	10010ea3          	sb	zero,285(sp)
    3270:	04450a93          	addi	s5,a0,68
    3274:	00f00b13          	li	s6,15
    3278:	00092603          	lw	a2,0(s2)
    327c:	00492583          	lw	a1,4(s2)
    3280:	00000693          	li	a3,0
    3284:	000a0513          	mv	a0,s4
    3288:	fffff097          	auipc	ra,0xfffff
    328c:	6fc080e7          	jalr	1788(ra) # 2984 <fatfs_sector_reader>
    3290:	10050c63          	beqz	a0,33a8 <fatfs_list_directory_next+0x16c>
    3294:	00894483          	lbu	s1,8(s2)
    3298:	00549413          	slli	s0,s1,0x5
    329c:	008a8433          	add	s0,s5,s0
    32a0:	009b7c63          	bgeu	s6,s1,32b8 <fatfs_list_directory_next+0x7c>
    32a4:	00092783          	lw	a5,0(s2)
    32a8:	00090423          	sb	zero,8(s2)
    32ac:	00178793          	addi	a5,a5,1
    32b0:	00f92023          	sw	a5,0(s2)
    32b4:	fc5ff06f          	j	3278 <fatfs_list_directory_next+0x3c>
    32b8:	00040513          	mv	a0,s0
    32bc:	ffffe097          	auipc	ra,0xffffe
    32c0:	7f0080e7          	jalr	2032(ra) # 1aac <fatfs_entry_lfn_text>
    32c4:	02050263          	beqz	a0,32e8 <fatfs_list_directory_next+0xac>
    32c8:	00040593          	mv	a1,s0
    32cc:	01810513          	addi	a0,sp,24
    32d0:	ffffe097          	auipc	ra,0xffffe
    32d4:	6d4080e7          	jalr	1748(ra) # 19a4 <fatfs_lfn_cache_entry>
    32d8:	00148493          	addi	s1,s1,1
    32dc:	0ff4f493          	zext.b	s1,s1
    32e0:	02040413          	addi	s0,s0,32
    32e4:	fbdff06f          	j	32a0 <fatfs_list_directory_next+0x64>
    32e8:	00040513          	mv	a0,s0
    32ec:	ffffe097          	auipc	ra,0xffffe
    32f0:	7d4080e7          	jalr	2004(ra) # 1ac0 <fatfs_entry_lfn_invalid>
    32f4:	00050663          	beqz	a0,3300 <fatfs_list_directory_next+0xc4>
    32f8:	10010ea3          	sb	zero,285(sp)
    32fc:	fddff06f          	j	32d8 <fatfs_list_directory_next+0x9c>
    3300:	00040593          	mv	a1,s0
    3304:	01810513          	addi	a0,sp,24
    3308:	ffffe097          	auipc	ra,0xffffe
    330c:	7ec080e7          	jalr	2028(ra) # 1af4 <fatfs_entry_lfn_exists>
    3310:	0c050063          	beqz	a0,33d0 <fatfs_list_directory_next+0x194>
    3314:	01810513          	addi	a0,sp,24
    3318:	ffffe097          	auipc	ra,0xffffe
    331c:	758080e7          	jalr	1880(ra) # 1a70 <fatfs_lfn_cache_get>
    3320:	00050593          	mv	a1,a0
    3324:	10300613          	li	a2,259
    3328:	00098513          	mv	a0,s3
    332c:	ffffe097          	auipc	ra,0xffffe
    3330:	ac4080e7          	jalr	-1340(ra) # df0 <strncpy>
    3334:	00040513          	mv	a0,s0
    3338:	fffff097          	auipc	ra,0xfffff
    333c:	84c080e7          	jalr	-1972(ra) # 1b84 <fatfs_entry_is_dir>
    3340:	10a98223          	sb	a0,260(s3)
    3344:	01d44783          	lbu	a5,29(s0)
    3348:	01c44703          	lbu	a4,28(s0)
    334c:	00148493          	addi	s1,s1,1
    3350:	00879793          	slli	a5,a5,0x8
    3354:	00e7e7b3          	or	a5,a5,a4
    3358:	01e44703          	lbu	a4,30(s0)
    335c:	00100513          	li	a0,1
    3360:	01071713          	slli	a4,a4,0x10
    3364:	00f76733          	or	a4,a4,a5
    3368:	01f44783          	lbu	a5,31(s0)
    336c:	01879793          	slli	a5,a5,0x18
    3370:	00e7e7b3          	or	a5,a5,a4
    3374:	10f9a623          	sw	a5,268(s3)
    3378:	01544783          	lbu	a5,21(s0)
    337c:	01444703          	lbu	a4,20(s0)
    3380:	01a44683          	lbu	a3,26(s0)
    3384:	00879793          	slli	a5,a5,0x8
    3388:	00e7e7b3          	or	a5,a5,a4
    338c:	01b44703          	lbu	a4,27(s0)
    3390:	01079793          	slli	a5,a5,0x10
    3394:	00871713          	slli	a4,a4,0x8
    3398:	00d76733          	or	a4,a4,a3
    339c:	00e7e7b3          	or	a5,a5,a4
    33a0:	10f9a423          	sw	a5,264(s3)
    33a4:	00990423          	sb	s1,8(s2)
    33a8:	13c12083          	lw	ra,316(sp)
    33ac:	13812403          	lw	s0,312(sp)
    33b0:	13412483          	lw	s1,308(sp)
    33b4:	13012903          	lw	s2,304(sp)
    33b8:	12c12983          	lw	s3,300(sp)
    33bc:	12812a03          	lw	s4,296(sp)
    33c0:	12412a83          	lw	s5,292(sp)
    33c4:	12012b03          	lw	s6,288(sp)
    33c8:	14010113          	addi	sp,sp,320
    33cc:	00008067          	ret
    33d0:	00040513          	mv	a0,s0
    33d4:	ffffe097          	auipc	ra,0xffffe
    33d8:	770080e7          	jalr	1904(ra) # 1b44 <fatfs_entry_sfn_only>
    33dc:	ee050ee3          	beqz	a0,32d8 <fatfs_list_directory_next+0x9c>
    33e0:	00810a13          	addi	s4,sp,8
    33e4:	00d00613          	li	a2,13
    33e8:	00000593          	li	a1,0
    33ec:	000a0513          	mv	a0,s4
    33f0:	10010ea3          	sb	zero,285(sp)
    33f4:	ffffe097          	auipc	ra,0xffffe
    33f8:	95c080e7          	jalr	-1700(ra) # d50 <memset>
    33fc:	00000793          	li	a5,0
    3400:	00800713          	li	a4,8
    3404:	00f40633          	add	a2,s0,a5
    3408:	00064603          	lbu	a2,0(a2)
    340c:	00fa06b3          	add	a3,s4,a5
    3410:	00178793          	addi	a5,a5,1
    3414:	00c68023          	sb	a2,0(a3)
    3418:	fee796e3          	bne	a5,a4,3404 <fatfs_list_directory_next+0x1c8>
    341c:	00844783          	lbu	a5,8(s0)
    3420:	00944703          	lbu	a4,9(s0)
    3424:	00a44683          	lbu	a3,10(s0)
    3428:	00f108a3          	sb	a5,17(sp)
    342c:	00e10923          	sb	a4,18(sp)
    3430:	fe078793          	addi	a5,a5,-32
    3434:	fe070713          	addi	a4,a4,-32
    3438:	00f037b3          	snez	a5,a5
    343c:	00e03733          	snez	a4,a4
    3440:	00d109a3          	sb	a3,19(sp)
    3444:	00e7e7b3          	or	a5,a5,a4
    3448:	00079863          	bnez	a5,3458 <fatfs_list_directory_next+0x21c>
    344c:	fe068693          	addi	a3,a3,-32
    3450:	02000793          	li	a5,32
    3454:	00068a63          	beqz	a3,3468 <fatfs_list_directory_next+0x22c>
    3458:	00814703          	lbu	a4,8(sp)
    345c:	02e00793          	li	a5,46
    3460:	00f71463          	bne	a4,a5,3468 <fatfs_list_directory_next+0x22c>
    3464:	02000793          	li	a5,32
    3468:	000a0593          	mv	a1,s4
    346c:	00098513          	mv	a0,s3
    3470:	00f10823          	sb	a5,16(sp)
    3474:	fffff097          	auipc	ra,0xfffff
    3478:	054080e7          	jalr	84(ra) # 24c8 <fatfs_get_sfn_display_name>
    347c:	eb9ff06f          	j	3334 <fatfs_list_directory_next+0xf8>

00003480 <fl_readdir>:
    3480:	000057b7          	lui	a5,0x5
    3484:	b6c7a783          	lw	a5,-1172(a5) # 4b6c <_filelib_init>
    3488:	fd010113          	addi	sp,sp,-48
    348c:	03212023          	sw	s2,32(sp)
    3490:	01312e23          	sw	s3,28(sp)
    3494:	02112623          	sw	ra,44(sp)
    3498:	02812423          	sw	s0,40(sp)
    349c:	02912223          	sw	s1,36(sp)
    34a0:	00050913          	mv	s2,a0
    34a4:	00058993          	mv	s3,a1
    34a8:	00079663          	bnez	a5,34b4 <fl_readdir+0x34>
    34ac:	ffffe097          	auipc	ra,0xffffe
    34b0:	488080e7          	jalr	1160(ra) # 1934 <fl_init>
    34b4:	0000b4b7          	lui	s1,0xb
    34b8:	cf048413          	addi	s0,s1,-784 # acf0 <_fs>
    34bc:	03c42783          	lw	a5,60(s0)
    34c0:	00078463          	beqz	a5,34c8 <fl_readdir+0x48>
    34c4:	000780e7          	jalr	a5
    34c8:	00098613          	mv	a2,s3
    34cc:	00090593          	mv	a1,s2
    34d0:	cf048513          	addi	a0,s1,-784
    34d4:	00000097          	auipc	ra,0x0
    34d8:	d68080e7          	jalr	-664(ra) # 323c <fatfs_list_directory_next>
    34dc:	04042783          	lw	a5,64(s0)
    34e0:	00078863          	beqz	a5,34f0 <fl_readdir+0x70>
    34e4:	00a12623          	sw	a0,12(sp)
    34e8:	000780e7          	jalr	a5
    34ec:	00c12503          	lw	a0,12(sp)
    34f0:	02c12083          	lw	ra,44(sp)
    34f4:	02812403          	lw	s0,40(sp)
    34f8:	00154513          	xori	a0,a0,1
    34fc:	02412483          	lw	s1,36(sp)
    3500:	02012903          	lw	s2,32(sp)
    3504:	01c12983          	lw	s3,28(sp)
    3508:	40a00533          	neg	a0,a0
    350c:	03010113          	addi	sp,sp,48
    3510:	00008067          	ret

00003514 <_read_sectors>:
    3514:	fd010113          	addi	sp,sp,-48
    3518:	01512a23          	sw	s5,20(sp)
    351c:	0000bab7          	lui	s5,0xb
    3520:	01312e23          	sw	s3,28(sp)
    3524:	cf0ac983          	lbu	s3,-784(s5) # acf0 <_fs>
    3528:	01612823          	sw	s6,16(sp)
    352c:	00058b13          	mv	s6,a1
    3530:	02912223          	sw	s1,36(sp)
    3534:	00098593          	mv	a1,s3
    3538:	00050493          	mv	s1,a0
    353c:	000b0513          	mv	a0,s6
    3540:	02112623          	sw	ra,44(sp)
    3544:	02812423          	sw	s0,40(sp)
    3548:	01412c23          	sw	s4,24(sp)
    354c:	00068413          	mv	s0,a3
    3550:	01712623          	sw	s7,12(sp)
    3554:	01812423          	sw	s8,8(sp)
    3558:	03212023          	sw	s2,32(sp)
    355c:	00060c13          	mv	s8,a2
    3560:	ffffd097          	auipc	ra,0xffffd
    3564:	744080e7          	jalr	1860(ra) # ca4 <__udivsi3>
    3568:	00050a13          	mv	s4,a0
    356c:	00098593          	mv	a1,s3
    3570:	000b0513          	mv	a0,s6
    3574:	ffffd097          	auipc	ra,0xffffd
    3578:	778080e7          	jalr	1912(ra) # cec <__umodsi3>
    357c:	00a407b3          	add	a5,s0,a0
    3580:	00050b93          	mv	s7,a0
    3584:	00f9fe63          	bgeu	s3,a5,35a0 <_read_sectors+0x8c>
    3588:	000a0593          	mv	a1,s4
    358c:	00098513          	mv	a0,s3
    3590:	ffffe097          	auipc	ra,0xffffe
    3594:	f10080e7          	jalr	-240(ra) # 14a0 <__mulsi3>
    3598:	416987b3          	sub	a5,s3,s6
    359c:	00f50433          	add	s0,a0,a5
    35a0:	2284a903          	lw	s2,552(s1)
    35a4:	07491863          	bne	s2,s4,3614 <_read_sectors+0x100>
    35a8:	22c4a583          	lw	a1,556(s1)
    35ac:	fff00793          	li	a5,-1
    35b0:	02f58663          	beq	a1,a5,35dc <_read_sectors+0xc8>
    35b4:	cf0a8513          	addi	a0,s5,-784
    35b8:	ffffe097          	auipc	ra,0xffffe
    35bc:	24c080e7          	jalr	588(ra) # 1804 <fatfs_lba_of_cluster>
    35c0:	017505b3          	add	a1,a0,s7
    35c4:	00040693          	mv	a3,s0
    35c8:	000c0613          	mv	a2,s8
    35cc:	cf0a8513          	addi	a0,s5,-784
    35d0:	ffffe097          	auipc	ra,0xffffe
    35d4:	280080e7          	jalr	640(ra) # 1850 <fatfs_sector_read>
    35d8:	00051463          	bnez	a0,35e0 <_read_sectors+0xcc>
    35dc:	00000413          	li	s0,0
    35e0:	02c12083          	lw	ra,44(sp)
    35e4:	00040513          	mv	a0,s0
    35e8:	02812403          	lw	s0,40(sp)
    35ec:	02412483          	lw	s1,36(sp)
    35f0:	02012903          	lw	s2,32(sp)
    35f4:	01c12983          	lw	s3,28(sp)
    35f8:	01812a03          	lw	s4,24(sp)
    35fc:	01412a83          	lw	s5,20(sp)
    3600:	01012b03          	lw	s6,16(sp)
    3604:	00c12b83          	lw	s7,12(sp)
    3608:	00812c03          	lw	s8,8(sp)
    360c:	03010113          	addi	sp,sp,48
    3610:	00008067          	ret
    3614:	033b6463          	bltu	s6,s3,363c <_read_sectors+0x128>
    3618:	00190793          	addi	a5,s2,1
    361c:	03479063          	bne	a5,s4,363c <_read_sectors+0x128>
    3620:	22c4a583          	lw	a1,556(s1)
    3624:	03496263          	bltu	s2,s4,3648 <_read_sectors+0x134>
    3628:	fff00793          	li	a5,-1
    362c:	faf588e3          	beq	a1,a5,35dc <_read_sectors+0xc8>
    3630:	22b4a623          	sw	a1,556(s1)
    3634:	2344a423          	sw	s4,552(s1)
    3638:	f7dff06f          	j	35b4 <_read_sectors+0xa0>
    363c:	0044a583          	lw	a1,4(s1)
    3640:	00000913          	li	s2,0
    3644:	fe1ff06f          	j	3624 <_read_sectors+0x110>
    3648:	cf0a8513          	addi	a0,s5,-784
    364c:	fffff097          	auipc	ra,0xfffff
    3650:	230080e7          	jalr	560(ra) # 287c <fatfs_find_next_cluster>
    3654:	00050593          	mv	a1,a0
    3658:	00190913          	addi	s2,s2,1
    365c:	fc9ff06f          	j	3624 <_read_sectors+0x110>

00003660 <fatfs_set_fs_info_next_free_cluster>:
    3660:	03052783          	lw	a5,48(a0)
    3664:	0a078463          	beqz	a5,370c <fatfs_set_fs_info_next_free_cluster+0xac>
    3668:	fe010113          	addi	sp,sp,-32
    366c:	01c52783          	lw	a5,28(a0)
    3670:	00912a23          	sw	s1,20(sp)
    3674:	00058493          	mv	s1,a1
    3678:	01855583          	lhu	a1,24(a0)
    367c:	00812c23          	sw	s0,24(sp)
    3680:	00112e23          	sw	ra,28(sp)
    3684:	00f585b3          	add	a1,a1,a5
    3688:	00050413          	mv	s0,a0
    368c:	ffffe097          	auipc	ra,0xffffe
    3690:	fcc080e7          	jalr	-52(ra) # 1658 <fatfs_fat_read_sector>
    3694:	00050593          	mv	a1,a0
    3698:	06050063          	beqz	a0,36f8 <fatfs_set_fs_info_next_free_cluster+0x98>
    369c:	20852783          	lw	a5,520(a0)
    36a0:	0084d713          	srli	a4,s1,0x8
    36a4:	00100613          	li	a2,1
    36a8:	1e978623          	sb	s1,492(a5)
    36ac:	20852783          	lw	a5,520(a0)
    36b0:	1ee786a3          	sb	a4,493(a5)
    36b4:	20852783          	lw	a5,520(a0)
    36b8:	0104d713          	srli	a4,s1,0x10
    36bc:	1ee78723          	sb	a4,494(a5)
    36c0:	20852783          	lw	a5,520(a0)
    36c4:	0184d713          	srli	a4,s1,0x18
    36c8:	1ee787a3          	sb	a4,495(a5)
    36cc:	03842783          	lw	a5,56(s0)
    36d0:	20c52223          	sw	a2,516(a0)
    36d4:	02942223          	sw	s1,36(s0)
    36d8:	00078a63          	beqz	a5,36ec <fatfs_set_fs_info_next_free_cluster+0x8c>
    36dc:	20052503          	lw	a0,512(a0)
    36e0:	00b12623          	sw	a1,12(sp)
    36e4:	000780e7          	jalr	a5
    36e8:	00c12583          	lw	a1,12(sp)
    36ec:	fff00793          	li	a5,-1
    36f0:	20f5a023          	sw	a5,512(a1)
    36f4:	2005a223          	sw	zero,516(a1)
    36f8:	01c12083          	lw	ra,28(sp)
    36fc:	01812403          	lw	s0,24(sp)
    3700:	01412483          	lw	s1,20(sp)
    3704:	02010113          	addi	sp,sp,32
    3708:	00008067          	ret
    370c:	00008067          	ret

00003710 <fatfs_find_blank_cluster>:
    3710:	fd010113          	addi	sp,sp,-48
    3714:	01312e23          	sw	s3,28(sp)
    3718:	100009b7          	lui	s3,0x10000
    371c:	02912223          	sw	s1,36(sp)
    3720:	03212023          	sw	s2,32(sp)
    3724:	02112623          	sw	ra,44(sp)
    3728:	02812423          	sw	s0,40(sp)
    372c:	00050913          	mv	s2,a0
    3730:	00058493          	mv	s1,a1
    3734:	fff98993          	addi	s3,s3,-1 # fffffff <__stacktop+0xffeffff>
    3738:	03092783          	lw	a5,48(s2)
    373c:	0074d413          	srli	s0,s1,0x7
    3740:	00079463          	bnez	a5,3748 <fatfs_find_blank_cluster+0x38>
    3744:	0084d413          	srli	s0,s1,0x8
    3748:	02092783          	lw	a5,32(s2)
    374c:	0cf47863          	bgeu	s0,a5,381c <fatfs_find_blank_cluster+0x10c>
    3750:	01492583          	lw	a1,20(s2)
    3754:	00090513          	mv	a0,s2
    3758:	00c12623          	sw	a2,12(sp)
    375c:	00b405b3          	add	a1,s0,a1
    3760:	ffffe097          	auipc	ra,0xffffe
    3764:	ef8080e7          	jalr	-264(ra) # 1658 <fatfs_fat_read_sector>
    3768:	0a050a63          	beqz	a0,381c <fatfs_find_blank_cluster+0x10c>
    376c:	03092783          	lw	a5,48(s2)
    3770:	20852703          	lw	a4,520(a0)
    3774:	00c12603          	lw	a2,12(sp)
    3778:	04079a63          	bnez	a5,37cc <fatfs_find_blank_cluster+0xbc>
    377c:	00841413          	slli	s0,s0,0x8
    3780:	40848433          	sub	s0,s1,s0
    3784:	00141413          	slli	s0,s0,0x1
    3788:	01041413          	slli	s0,s0,0x10
    378c:	01045413          	srli	s0,s0,0x10
    3790:	00870733          	add	a4,a4,s0
    3794:	00174783          	lbu	a5,1(a4)
    3798:	00074703          	lbu	a4,0(a4)
    379c:	00879793          	slli	a5,a5,0x8
    37a0:	00e787b3          	add	a5,a5,a4
    37a4:	06079863          	bnez	a5,3814 <fatfs_find_blank_cluster+0x104>
    37a8:	00962023          	sw	s1,0(a2)
    37ac:	00100513          	li	a0,1
    37b0:	02c12083          	lw	ra,44(sp)
    37b4:	02812403          	lw	s0,40(sp)
    37b8:	02412483          	lw	s1,36(sp)
    37bc:	02012903          	lw	s2,32(sp)
    37c0:	01c12983          	lw	s3,28(sp)
    37c4:	03010113          	addi	sp,sp,48
    37c8:	00008067          	ret
    37cc:	00741413          	slli	s0,s0,0x7
    37d0:	40848433          	sub	s0,s1,s0
    37d4:	00241413          	slli	s0,s0,0x2
    37d8:	01041413          	slli	s0,s0,0x10
    37dc:	01045413          	srli	s0,s0,0x10
    37e0:	00870733          	add	a4,a4,s0
    37e4:	00374783          	lbu	a5,3(a4)
    37e8:	00274683          	lbu	a3,2(a4)
    37ec:	01879793          	slli	a5,a5,0x18
    37f0:	01069693          	slli	a3,a3,0x10
    37f4:	00d787b3          	add	a5,a5,a3
    37f8:	00074683          	lbu	a3,0(a4)
    37fc:	00174703          	lbu	a4,1(a4)
    3800:	00d787b3          	add	a5,a5,a3
    3804:	00871713          	slli	a4,a4,0x8
    3808:	00e787b3          	add	a5,a5,a4
    380c:	0137f7b3          	and	a5,a5,s3
    3810:	f95ff06f          	j	37a4 <fatfs_find_blank_cluster+0x94>
    3814:	00148493          	addi	s1,s1,1
    3818:	f21ff06f          	j	3738 <fatfs_find_blank_cluster+0x28>
    381c:	00000513          	li	a0,0
    3820:	f91ff06f          	j	37b0 <fatfs_find_blank_cluster+0xa0>

00003824 <fatfs_fat_set_cluster>:
    3824:	03052783          	lw	a5,48(a0)
    3828:	fe010113          	addi	sp,sp,-32
    382c:	00812c23          	sw	s0,24(sp)
    3830:	00912a23          	sw	s1,20(sp)
    3834:	01212823          	sw	s2,16(sp)
    3838:	00112e23          	sw	ra,28(sp)
    383c:	00050913          	mv	s2,a0
    3840:	00058413          	mv	s0,a1
    3844:	0085d493          	srli	s1,a1,0x8
    3848:	00078463          	beqz	a5,3850 <fatfs_fat_set_cluster+0x2c>
    384c:	0075d493          	srli	s1,a1,0x7
    3850:	01492583          	lw	a1,20(s2)
    3854:	00090513          	mv	a0,s2
    3858:	00c12623          	sw	a2,12(sp)
    385c:	00b485b3          	add	a1,s1,a1
    3860:	ffffe097          	auipc	ra,0xffffe
    3864:	df8080e7          	jalr	-520(ra) # 1658 <fatfs_fat_read_sector>
    3868:	00050793          	mv	a5,a0
    386c:	00000513          	li	a0,0
    3870:	04078663          	beqz	a5,38bc <fatfs_fat_set_cluster+0x98>
    3874:	03092683          	lw	a3,48(s2)
    3878:	2087a703          	lw	a4,520(a5)
    387c:	00c12603          	lw	a2,12(sp)
    3880:	04069a63          	bnez	a3,38d4 <fatfs_fat_set_cluster+0xb0>
    3884:	00849493          	slli	s1,s1,0x8
    3888:	40940433          	sub	s0,s0,s1
    388c:	00141413          	slli	s0,s0,0x1
    3890:	01041413          	slli	s0,s0,0x10
    3894:	01045413          	srli	s0,s0,0x10
    3898:	00870733          	add	a4,a4,s0
    389c:	00c70023          	sb	a2,0(a4)
    38a0:	2087a703          	lw	a4,520(a5)
    38a4:	00865613          	srli	a2,a2,0x8
    38a8:	00870733          	add	a4,a4,s0
    38ac:	00c700a3          	sb	a2,1(a4)
    38b0:	00100713          	li	a4,1
    38b4:	20e7a223          	sw	a4,516(a5)
    38b8:	00100513          	li	a0,1
    38bc:	01c12083          	lw	ra,28(sp)
    38c0:	01812403          	lw	s0,24(sp)
    38c4:	01412483          	lw	s1,20(sp)
    38c8:	01012903          	lw	s2,16(sp)
    38cc:	02010113          	addi	sp,sp,32
    38d0:	00008067          	ret
    38d4:	00749493          	slli	s1,s1,0x7
    38d8:	40940433          	sub	s0,s0,s1
    38dc:	00241413          	slli	s0,s0,0x2
    38e0:	01041413          	slli	s0,s0,0x10
    38e4:	01045413          	srli	s0,s0,0x10
    38e8:	00870733          	add	a4,a4,s0
    38ec:	00c70023          	sb	a2,0(a4)
    38f0:	2087a703          	lw	a4,520(a5)
    38f4:	00865693          	srli	a3,a2,0x8
    38f8:	00870733          	add	a4,a4,s0
    38fc:	00d700a3          	sb	a3,1(a4)
    3900:	2087a703          	lw	a4,520(a5)
    3904:	01065693          	srli	a3,a2,0x10
    3908:	01865613          	srli	a2,a2,0x18
    390c:	00870733          	add	a4,a4,s0
    3910:	00d70123          	sb	a3,2(a4)
    3914:	2087a703          	lw	a4,520(a5)
    3918:	00870733          	add	a4,a4,s0
    391c:	00c701a3          	sb	a2,3(a4)
    3920:	f91ff06f          	j	38b0 <fatfs_fat_set_cluster+0x8c>

00003924 <fatfs_free_cluster_chain>:
    3924:	fe010113          	addi	sp,sp,-32
    3928:	00812c23          	sw	s0,24(sp)
    392c:	00912a23          	sw	s1,20(sp)
    3930:	00112e23          	sw	ra,28(sp)
    3934:	01212823          	sw	s2,16(sp)
    3938:	00050493          	mv	s1,a0
    393c:	ffd00413          	li	s0,-3
    3940:	fff58793          	addi	a5,a1,-1
    3944:	02f47063          	bgeu	s0,a5,3964 <fatfs_free_cluster_chain+0x40>
    3948:	01c12083          	lw	ra,28(sp)
    394c:	01812403          	lw	s0,24(sp)
    3950:	01412483          	lw	s1,20(sp)
    3954:	01012903          	lw	s2,16(sp)
    3958:	00100513          	li	a0,1
    395c:	02010113          	addi	sp,sp,32
    3960:	00008067          	ret
    3964:	00048513          	mv	a0,s1
    3968:	00b12623          	sw	a1,12(sp)
    396c:	fffff097          	auipc	ra,0xfffff
    3970:	f10080e7          	jalr	-240(ra) # 287c <fatfs_find_next_cluster>
    3974:	00c12583          	lw	a1,12(sp)
    3978:	00050913          	mv	s2,a0
    397c:	00000613          	li	a2,0
    3980:	00048513          	mv	a0,s1
    3984:	00000097          	auipc	ra,0x0
    3988:	ea0080e7          	jalr	-352(ra) # 3824 <fatfs_fat_set_cluster>
    398c:	00090593          	mv	a1,s2
    3990:	fb1ff06f          	j	3940 <fatfs_free_cluster_chain+0x1c>

00003994 <fatfs_fat_add_cluster_to_chain>:
    3994:	fd010113          	addi	sp,sp,-48
    3998:	02912223          	sw	s1,36(sp)
    399c:	02112623          	sw	ra,44(sp)
    39a0:	02812423          	sw	s0,40(sp)
    39a4:	03212023          	sw	s2,32(sp)
    39a8:	01312e23          	sw	s3,28(sp)
    39ac:	fff00493          	li	s1,-1
    39b0:	02959263          	bne	a1,s1,39d4 <fatfs_fat_add_cluster_to_chain+0x40>
    39b4:	00000513          	li	a0,0
    39b8:	02c12083          	lw	ra,44(sp)
    39bc:	02812403          	lw	s0,40(sp)
    39c0:	02412483          	lw	s1,36(sp)
    39c4:	02012903          	lw	s2,32(sp)
    39c8:	01c12983          	lw	s3,28(sp)
    39cc:	03010113          	addi	sp,sp,48
    39d0:	00008067          	ret
    39d4:	00050913          	mv	s2,a0
    39d8:	00058413          	mv	s0,a1
    39dc:	00060993          	mv	s3,a2
    39e0:	00040593          	mv	a1,s0
    39e4:	00090513          	mv	a0,s2
    39e8:	00812623          	sw	s0,12(sp)
    39ec:	fffff097          	auipc	ra,0xfffff
    39f0:	e90080e7          	jalr	-368(ra) # 287c <fatfs_find_next_cluster>
    39f4:	00050413          	mv	s0,a0
    39f8:	fa050ee3          	beqz	a0,39b4 <fatfs_fat_add_cluster_to_chain+0x20>
    39fc:	00c12583          	lw	a1,12(sp)
    3a00:	fe9510e3          	bne	a0,s1,39e0 <fatfs_fat_add_cluster_to_chain+0x4c>
    3a04:	00098613          	mv	a2,s3
    3a08:	00090513          	mv	a0,s2
    3a0c:	00000097          	auipc	ra,0x0
    3a10:	e18080e7          	jalr	-488(ra) # 3824 <fatfs_fat_set_cluster>
    3a14:	00040613          	mv	a2,s0
    3a18:	00098593          	mv	a1,s3
    3a1c:	00090513          	mv	a0,s2
    3a20:	00000097          	auipc	ra,0x0
    3a24:	e04080e7          	jalr	-508(ra) # 3824 <fatfs_fat_set_cluster>
    3a28:	00100513          	li	a0,1
    3a2c:	f8dff06f          	j	39b8 <fatfs_fat_add_cluster_to_chain+0x24>

00003a30 <fatfs_add_free_space>:
    3a30:	02452783          	lw	a5,36(a0)
    3a34:	fd010113          	addi	sp,sp,-48
    3a38:	02812423          	sw	s0,40(sp)
    3a3c:	01312e23          	sw	s3,28(sp)
    3a40:	01412c23          	sw	s4,24(sp)
    3a44:	0005a983          	lw	s3,0(a1)
    3a48:	01512a23          	sw	s5,20(sp)
    3a4c:	00058a13          	mv	s4,a1
    3a50:	02112623          	sw	ra,44(sp)
    3a54:	02912223          	sw	s1,36(sp)
    3a58:	03212023          	sw	s2,32(sp)
    3a5c:	fff00593          	li	a1,-1
    3a60:	00050413          	mv	s0,a0
    3a64:	00060a93          	mv	s5,a2
    3a68:	00b78663          	beq	a5,a1,3a74 <fatfs_add_free_space+0x44>
    3a6c:	00000097          	auipc	ra,0x0
    3a70:	bf4080e7          	jalr	-1036(ra) # 3660 <fatfs_set_fs_info_next_free_cluster>
    3a74:	00000493          	li	s1,0
    3a78:	03549663          	bne	s1,s5,3aa4 <fatfs_add_free_space+0x74>
    3a7c:	00100513          	li	a0,1
    3a80:	02c12083          	lw	ra,44(sp)
    3a84:	02812403          	lw	s0,40(sp)
    3a88:	02412483          	lw	s1,36(sp)
    3a8c:	02012903          	lw	s2,32(sp)
    3a90:	01c12983          	lw	s3,28(sp)
    3a94:	01812a03          	lw	s4,24(sp)
    3a98:	01412a83          	lw	s5,20(sp)
    3a9c:	03010113          	addi	sp,sp,48
    3aa0:	00008067          	ret
    3aa4:	00842583          	lw	a1,8(s0)
    3aa8:	00c10613          	addi	a2,sp,12
    3aac:	00040513          	mv	a0,s0
    3ab0:	00000097          	auipc	ra,0x0
    3ab4:	c60080e7          	jalr	-928(ra) # 3710 <fatfs_find_blank_cluster>
    3ab8:	fc0504e3          	beqz	a0,3a80 <fatfs_add_free_space+0x50>
    3abc:	00c12903          	lw	s2,12(sp)
    3ac0:	00098593          	mv	a1,s3
    3ac4:	00040513          	mv	a0,s0
    3ac8:	00090613          	mv	a2,s2
    3acc:	00000097          	auipc	ra,0x0
    3ad0:	d58080e7          	jalr	-680(ra) # 3824 <fatfs_fat_set_cluster>
    3ad4:	fff00613          	li	a2,-1
    3ad8:	00090593          	mv	a1,s2
    3adc:	00040513          	mv	a0,s0
    3ae0:	00000097          	auipc	ra,0x0
    3ae4:	d44080e7          	jalr	-700(ra) # 3824 <fatfs_fat_set_cluster>
    3ae8:	00049463          	bnez	s1,3af0 <fatfs_add_free_space+0xc0>
    3aec:	012a2023          	sw	s2,0(s4)
    3af0:	00148493          	addi	s1,s1,1
    3af4:	00090993          	mv	s3,s2
    3af8:	f81ff06f          	j	3a78 <fatfs_add_free_space+0x48>

00003afc <_write_sectors>:
    3afc:	fb010113          	addi	sp,sp,-80
    3b00:	03512a23          	sw	s5,52(sp)
    3b04:	0000bab7          	lui	s5,0xb
    3b08:	04112623          	sw	ra,76(sp)
    3b0c:	04812423          	sw	s0,72(sp)
    3b10:	04912223          	sw	s1,68(sp)
    3b14:	03412c23          	sw	s4,56(sp)
    3b18:	03612823          	sw	s6,48(sp)
    3b1c:	03712623          	sw	s7,44(sp)
    3b20:	03812423          	sw	s8,40(sp)
    3b24:	03912223          	sw	s9,36(sp)
    3b28:	03a12023          	sw	s10,32(sp)
    3b2c:	05212023          	sw	s2,64(sp)
    3b30:	03312e23          	sw	s3,60(sp)
    3b34:	cf0a8b93          	addi	s7,s5,-784 # acf0 <_fs>
    3b38:	000bc983          	lbu	s3,0(s7)
    3b3c:	00058b13          	mv	s6,a1
    3b40:	fff00793          	li	a5,-1
    3b44:	00098593          	mv	a1,s3
    3b48:	00050493          	mv	s1,a0
    3b4c:	000b0513          	mv	a0,s6
    3b50:	00068c13          	mv	s8,a3
    3b54:	00f12e23          	sw	a5,28(sp)
    3b58:	00060d13          	mv	s10,a2
    3b5c:	ffffd097          	auipc	ra,0xffffd
    3b60:	148080e7          	jalr	328(ra) # ca4 <__udivsi3>
    3b64:	00050a13          	mv	s4,a0
    3b68:	00098593          	mv	a1,s3
    3b6c:	000b0513          	mv	a0,s6
    3b70:	ffffd097          	auipc	ra,0xffffd
    3b74:	17c080e7          	jalr	380(ra) # cec <__umodsi3>
    3b78:	00ac07b3          	add	a5,s8,a0
    3b7c:	00050c93          	mv	s9,a0
    3b80:	000c0413          	mv	s0,s8
    3b84:	00f9fe63          	bgeu	s3,a5,3ba0 <_write_sectors+0xa4>
    3b88:	000a0593          	mv	a1,s4
    3b8c:	00098513          	mv	a0,s3
    3b90:	ffffe097          	auipc	ra,0xffffe
    3b94:	910080e7          	jalr	-1776(ra) # 14a0 <__mulsi3>
    3b98:	416987b3          	sub	a5,s3,s6
    3b9c:	00f50433          	add	s0,a0,a5
    3ba0:	2284a903          	lw	s2,552(s1)
    3ba4:	03491a63          	bne	s2,s4,3bd8 <_write_sectors+0xdc>
    3ba8:	22c4a583          	lw	a1,556(s1)
    3bac:	cf0a8513          	addi	a0,s5,-784
    3bb0:	ffffe097          	auipc	ra,0xffffe
    3bb4:	c54080e7          	jalr	-940(ra) # 1804 <fatfs_lba_of_cluster>
    3bb8:	019505b3          	add	a1,a0,s9
    3bbc:	00040693          	mv	a3,s0
    3bc0:	000d0613          	mv	a2,s10
    3bc4:	cf0a8513          	addi	a0,s5,-784
    3bc8:	ffffe097          	auipc	ra,0xffffe
    3bcc:	ca0080e7          	jalr	-864(ra) # 1868 <fatfs_sector_write>
    3bd0:	04050a63          	beqz	a0,3c24 <_write_sectors+0x128>
    3bd4:	0540006f          	j	3c28 <_write_sectors+0x12c>
    3bd8:	093b6663          	bltu	s6,s3,3c64 <_write_sectors+0x168>
    3bdc:	00190793          	addi	a5,s2,1
    3be0:	09479263          	bne	a5,s4,3c64 <_write_sectors+0x168>
    3be4:	22c4a583          	lw	a1,556(s1)
    3be8:	fff00b13          	li	s6,-1
    3bec:	09496263          	bltu	s2,s4,3c70 <_write_sectors+0x174>
    3bf0:	fff00793          	li	a5,-1
    3bf4:	0af59463          	bne	a1,a5,3c9c <_write_sectors+0x1a0>
    3bf8:	000bc583          	lbu	a1,0(s7)
    3bfc:	fff58513          	addi	a0,a1,-1
    3c00:	01850533          	add	a0,a0,s8
    3c04:	ffffd097          	auipc	ra,0xffffd
    3c08:	0a0080e7          	jalr	160(ra) # ca4 <__udivsi3>
    3c0c:	00050613          	mv	a2,a0
    3c10:	01c10593          	addi	a1,sp,28
    3c14:	000b8513          	mv	a0,s7
    3c18:	00000097          	auipc	ra,0x0
    3c1c:	e18080e7          	jalr	-488(ra) # 3a30 <fatfs_add_free_space>
    3c20:	06051c63          	bnez	a0,3c98 <_write_sectors+0x19c>
    3c24:	00000413          	li	s0,0
    3c28:	04c12083          	lw	ra,76(sp)
    3c2c:	00040513          	mv	a0,s0
    3c30:	04812403          	lw	s0,72(sp)
    3c34:	04412483          	lw	s1,68(sp)
    3c38:	04012903          	lw	s2,64(sp)
    3c3c:	03c12983          	lw	s3,60(sp)
    3c40:	03812a03          	lw	s4,56(sp)
    3c44:	03412a83          	lw	s5,52(sp)
    3c48:	03012b03          	lw	s6,48(sp)
    3c4c:	02c12b83          	lw	s7,44(sp)
    3c50:	02812c03          	lw	s8,40(sp)
    3c54:	02412c83          	lw	s9,36(sp)
    3c58:	02012d03          	lw	s10,32(sp)
    3c5c:	05010113          	addi	sp,sp,80
    3c60:	00008067          	ret
    3c64:	0044a583          	lw	a1,4(s1)
    3c68:	00000913          	li	s2,0
    3c6c:	f7dff06f          	j	3be8 <_write_sectors+0xec>
    3c70:	cf0a8513          	addi	a0,s5,-784
    3c74:	00b12623          	sw	a1,12(sp)
    3c78:	fffff097          	auipc	ra,0xfffff
    3c7c:	c04080e7          	jalr	-1020(ra) # 287c <fatfs_find_next_cluster>
    3c80:	00c12583          	lw	a1,12(sp)
    3c84:	00b12e23          	sw	a1,28(sp)
    3c88:	f76508e3          	beq	a0,s6,3bf8 <_write_sectors+0xfc>
    3c8c:	00190913          	addi	s2,s2,1
    3c90:	00050593          	mv	a1,a0
    3c94:	f59ff06f          	j	3bec <_write_sectors+0xf0>
    3c98:	01c12583          	lw	a1,28(sp)
    3c9c:	22b4a623          	sw	a1,556(s1)
    3ca0:	2344a423          	sw	s4,552(s1)
    3ca4:	f09ff06f          	j	3bac <_write_sectors+0xb0>

00003ca8 <fl_fflush>:
    3ca8:	000057b7          	lui	a5,0x5
    3cac:	b6c7a783          	lw	a5,-1172(a5) # 4b6c <_filelib_init>
    3cb0:	ff010113          	addi	sp,sp,-16
    3cb4:	00812423          	sw	s0,8(sp)
    3cb8:	00112623          	sw	ra,12(sp)
    3cbc:	00912223          	sw	s1,4(sp)
    3cc0:	00050413          	mv	s0,a0
    3cc4:	00079663          	bnez	a5,3cd0 <fl_fflush+0x28>
    3cc8:	ffffe097          	auipc	ra,0xffffe
    3ccc:	c6c080e7          	jalr	-916(ra) # 1934 <fl_init>
    3cd0:	04040663          	beqz	s0,3d1c <fl_fflush+0x74>
    3cd4:	0000b4b7          	lui	s1,0xb
    3cd8:	cf048493          	addi	s1,s1,-784 # acf0 <_fs>
    3cdc:	03c4a783          	lw	a5,60(s1)
    3ce0:	00078463          	beqz	a5,3ce8 <fl_fflush+0x40>
    3ce4:	000780e7          	jalr	a5
    3ce8:	43442783          	lw	a5,1076(s0)
    3cec:	02078263          	beqz	a5,3d10 <fl_fflush+0x68>
    3cf0:	43042583          	lw	a1,1072(s0)
    3cf4:	00100693          	li	a3,1
    3cf8:	23040613          	addi	a2,s0,560
    3cfc:	00040513          	mv	a0,s0
    3d00:	00000097          	auipc	ra,0x0
    3d04:	dfc080e7          	jalr	-516(ra) # 3afc <_write_sectors>
    3d08:	00050463          	beqz	a0,3d10 <fl_fflush+0x68>
    3d0c:	42042a23          	sw	zero,1076(s0)
    3d10:	0404a783          	lw	a5,64(s1)
    3d14:	00078463          	beqz	a5,3d1c <fl_fflush+0x74>
    3d18:	000780e7          	jalr	a5
    3d1c:	00c12083          	lw	ra,12(sp)
    3d20:	00812403          	lw	s0,8(sp)
    3d24:	00412483          	lw	s1,4(sp)
    3d28:	00000513          	li	a0,0
    3d2c:	01010113          	addi	sp,sp,16
    3d30:	00008067          	ret

00003d34 <fl_fclose>:
    3d34:	000057b7          	lui	a5,0x5
    3d38:	b6c7a783          	lw	a5,-1172(a5) # 4b6c <_filelib_init>
    3d3c:	ff010113          	addi	sp,sp,-16
    3d40:	00812423          	sw	s0,8(sp)
    3d44:	00112623          	sw	ra,12(sp)
    3d48:	00912223          	sw	s1,4(sp)
    3d4c:	01212023          	sw	s2,0(sp)
    3d50:	00050413          	mv	s0,a0
    3d54:	00079663          	bnez	a5,3d60 <fl_fclose+0x2c>
    3d58:	ffffe097          	auipc	ra,0xffffe
    3d5c:	bdc080e7          	jalr	-1060(ra) # 1934 <fl_init>
    3d60:	08040c63          	beqz	s0,3df8 <fl_fclose+0xc4>
    3d64:	0000b4b7          	lui	s1,0xb
    3d68:	cf048913          	addi	s2,s1,-784 # acf0 <_fs>
    3d6c:	03c92783          	lw	a5,60(s2)
    3d70:	00078463          	beqz	a5,3d78 <fl_fclose+0x44>
    3d74:	000780e7          	jalr	a5
    3d78:	00040513          	mv	a0,s0
    3d7c:	00000097          	auipc	ra,0x0
    3d80:	f2c080e7          	jalr	-212(ra) # 3ca8 <fl_fflush>
    3d84:	01042783          	lw	a5,16(s0)
    3d88:	00078e63          	beqz	a5,3da4 <fl_fclose+0x70>
    3d8c:	00c42683          	lw	a3,12(s0)
    3d90:	00042583          	lw	a1,0(s0)
    3d94:	21c40613          	addi	a2,s0,540
    3d98:	cf048513          	addi	a0,s1,-784
    3d9c:	fffff097          	auipc	ra,0xfffff
    3da0:	338080e7          	jalr	824(ra) # 30d4 <fatfs_update_file_length>
    3da4:	fff00793          	li	a5,-1
    3da8:	42f42823          	sw	a5,1072(s0)
    3dac:	00040513          	mv	a0,s0
    3db0:	00042423          	sw	zero,8(s0)
    3db4:	00042623          	sw	zero,12(s0)
    3db8:	00042223          	sw	zero,4(s0)
    3dbc:	42042a23          	sw	zero,1076(s0)
    3dc0:	00042823          	sw	zero,16(s0)
    3dc4:	ffffe097          	auipc	ra,0xffffe
    3dc8:	9f8080e7          	jalr	-1544(ra) # 17bc <_free_file>
    3dcc:	cf048513          	addi	a0,s1,-784
    3dd0:	fffff097          	auipc	ra,0xfffff
    3dd4:	a54080e7          	jalr	-1452(ra) # 2824 <fatfs_fat_purge>
    3dd8:	04092783          	lw	a5,64(s2)
    3ddc:	00078e63          	beqz	a5,3df8 <fl_fclose+0xc4>
    3de0:	00812403          	lw	s0,8(sp)
    3de4:	00c12083          	lw	ra,12(sp)
    3de8:	00412483          	lw	s1,4(sp)
    3dec:	00012903          	lw	s2,0(sp)
    3df0:	01010113          	addi	sp,sp,16
    3df4:	00078067          	jr	a5
    3df8:	00c12083          	lw	ra,12(sp)
    3dfc:	00812403          	lw	s0,8(sp)
    3e00:	00412483          	lw	s1,4(sp)
    3e04:	00012903          	lw	s2,0(sp)
    3e08:	01010113          	addi	sp,sp,16
    3e0c:	00008067          	ret

00003e10 <fl_fread>:
    3e10:	000057b7          	lui	a5,0x5
    3e14:	b6c7a783          	lw	a5,-1172(a5) # 4b6c <_filelib_init>
    3e18:	fc010113          	addi	sp,sp,-64
    3e1c:	02812c23          	sw	s0,56(sp)
    3e20:	03512223          	sw	s5,36(sp)
    3e24:	02112e23          	sw	ra,60(sp)
    3e28:	02912a23          	sw	s1,52(sp)
    3e2c:	03212823          	sw	s2,48(sp)
    3e30:	03312623          	sw	s3,44(sp)
    3e34:	03412423          	sw	s4,40(sp)
    3e38:	03612023          	sw	s6,32(sp)
    3e3c:	01712e23          	sw	s7,28(sp)
    3e40:	01812c23          	sw	s8,24(sp)
    3e44:	01912a23          	sw	s9,20(sp)
    3e48:	00050a93          	mv	s5,a0
    3e4c:	00068413          	mv	s0,a3
    3e50:	00058513          	mv	a0,a1
    3e54:	00079e63          	bnez	a5,3e70 <fl_fread+0x60>
    3e58:	00c12623          	sw	a2,12(sp)
    3e5c:	00b12423          	sw	a1,8(sp)
    3e60:	ffffe097          	auipc	ra,0xffffe
    3e64:	ad4080e7          	jalr	-1324(ra) # 1934 <fl_init>
    3e68:	00c12603          	lw	a2,12(sp)
    3e6c:	00812503          	lw	a0,8(sp)
    3e70:	14040e63          	beqz	s0,3fcc <fl_fread+0x1bc>
    3e74:	140a8c63          	beqz	s5,3fcc <fl_fread+0x1bc>
    3e78:	43844783          	lbu	a5,1080(s0)
    3e7c:	fff00493          	li	s1,-1
    3e80:	0017f793          	andi	a5,a5,1
    3e84:	04078863          	beqz	a5,3ed4 <fl_fread+0xc4>
    3e88:	00060593          	mv	a1,a2
    3e8c:	ffffd097          	auipc	ra,0xffffd
    3e90:	614080e7          	jalr	1556(ra) # 14a0 <__mulsi3>
    3e94:	00050493          	mv	s1,a0
    3e98:	02050e63          	beqz	a0,3ed4 <fl_fread+0xc4>
    3e9c:	00842583          	lw	a1,8(s0)
    3ea0:	00c42783          	lw	a5,12(s0)
    3ea4:	12f5f463          	bgeu	a1,a5,3fcc <fl_fread+0x1bc>
    3ea8:	00b50733          	add	a4,a0,a1
    3eac:	00e7f463          	bgeu	a5,a4,3eb4 <fl_fread+0xa4>
    3eb0:	40b784b3          	sub	s1,a5,a1
    3eb4:	0095da13          	srli	s4,a1,0x9
    3eb8:	1ff5f913          	andi	s2,a1,511
    3ebc:	00000993          	li	s3,0
    3ec0:	23040b13          	addi	s6,s0,560
    3ec4:	20000b93          	li	s7,512
    3ec8:	1ff00c13          	li	s8,511
    3ecc:	0499c063          	blt	s3,s1,3f0c <fl_fread+0xfc>
    3ed0:	00098493          	mv	s1,s3
    3ed4:	03c12083          	lw	ra,60(sp)
    3ed8:	03812403          	lw	s0,56(sp)
    3edc:	03012903          	lw	s2,48(sp)
    3ee0:	02c12983          	lw	s3,44(sp)
    3ee4:	02812a03          	lw	s4,40(sp)
    3ee8:	02412a83          	lw	s5,36(sp)
    3eec:	02012b03          	lw	s6,32(sp)
    3ef0:	01c12b83          	lw	s7,28(sp)
    3ef4:	01812c03          	lw	s8,24(sp)
    3ef8:	01412c83          	lw	s9,20(sp)
    3efc:	00048513          	mv	a0,s1
    3f00:	03412483          	lw	s1,52(sp)
    3f04:	04010113          	addi	sp,sp,64
    3f08:	00008067          	ret
    3f0c:	04091663          	bnez	s2,3f58 <fl_fread+0x148>
    3f10:	413486b3          	sub	a3,s1,s3
    3f14:	04dc5263          	bge	s8,a3,3f58 <fl_fread+0x148>
    3f18:	4096d693          	srai	a3,a3,0x9
    3f1c:	013a8633          	add	a2,s5,s3
    3f20:	000a0593          	mv	a1,s4
    3f24:	00040513          	mv	a0,s0
    3f28:	fffff097          	auipc	ra,0xfffff
    3f2c:	5ec080e7          	jalr	1516(ra) # 3514 <_read_sectors>
    3f30:	fa0500e3          	beqz	a0,3ed0 <fl_fread+0xc0>
    3f34:	00951c93          	slli	s9,a0,0x9
    3f38:	000c8613          	mv	a2,s9
    3f3c:	00aa0a33          	add	s4,s4,a0
    3f40:	00842783          	lw	a5,8(s0)
    3f44:	00c989b3          	add	s3,s3,a2
    3f48:	00000913          	li	s2,0
    3f4c:	019787b3          	add	a5,a5,s9
    3f50:	00f42423          	sw	a5,8(s0)
    3f54:	f79ff06f          	j	3ecc <fl_fread+0xbc>
    3f58:	43042783          	lw	a5,1072(s0)
    3f5c:	03478e63          	beq	a5,s4,3f98 <fl_fread+0x188>
    3f60:	43442783          	lw	a5,1076(s0)
    3f64:	00078863          	beqz	a5,3f74 <fl_fread+0x164>
    3f68:	00040513          	mv	a0,s0
    3f6c:	00000097          	auipc	ra,0x0
    3f70:	d3c080e7          	jalr	-708(ra) # 3ca8 <fl_fflush>
    3f74:	00100693          	li	a3,1
    3f78:	000b0613          	mv	a2,s6
    3f7c:	000a0593          	mv	a1,s4
    3f80:	00040513          	mv	a0,s0
    3f84:	fffff097          	auipc	ra,0xfffff
    3f88:	590080e7          	jalr	1424(ra) # 3514 <_read_sectors>
    3f8c:	f40502e3          	beqz	a0,3ed0 <fl_fread+0xc0>
    3f90:	43442823          	sw	s4,1072(s0)
    3f94:	42042a23          	sw	zero,1076(s0)
    3f98:	412b87b3          	sub	a5,s7,s2
    3f9c:	41348633          	sub	a2,s1,s3
    3fa0:	00c7d463          	bge	a5,a2,3fa8 <fl_fread+0x198>
    3fa4:	00078613          	mv	a2,a5
    3fa8:	012b05b3          	add	a1,s6,s2
    3fac:	013a8533          	add	a0,s5,s3
    3fb0:	00060c93          	mv	s9,a2
    3fb4:	00c12423          	sw	a2,8(sp)
    3fb8:	ffffd097          	auipc	ra,0xffffd
    3fbc:	db4080e7          	jalr	-588(ra) # d6c <memcpy>
    3fc0:	00812603          	lw	a2,8(sp)
    3fc4:	001a0a13          	addi	s4,s4,1
    3fc8:	f79ff06f          	j	3f40 <fl_fread+0x130>
    3fcc:	fff00493          	li	s1,-1
    3fd0:	f05ff06f          	j	3ed4 <fl_fread+0xc4>

00003fd4 <fatfs_allocate_free_space>:
    3fd4:	fd010113          	addi	sp,sp,-48
    3fd8:	02112623          	sw	ra,44(sp)
    3fdc:	02812423          	sw	s0,40(sp)
    3fe0:	02912223          	sw	s1,36(sp)
    3fe4:	03212023          	sw	s2,32(sp)
    3fe8:	01312e23          	sw	s3,28(sp)
    3fec:	01412c23          	sw	s4,24(sp)
    3ff0:	01512a23          	sw	s5,20(sp)
    3ff4:	02069863          	bnez	a3,4024 <fatfs_allocate_free_space+0x50>
    3ff8:	00000413          	li	s0,0
    3ffc:	02c12083          	lw	ra,44(sp)
    4000:	00040513          	mv	a0,s0
    4004:	02812403          	lw	s0,40(sp)
    4008:	02412483          	lw	s1,36(sp)
    400c:	02012903          	lw	s2,32(sp)
    4010:	01c12983          	lw	s3,28(sp)
    4014:	01812a03          	lw	s4,24(sp)
    4018:	01412a83          	lw	s5,20(sp)
    401c:	03010113          	addi	sp,sp,48
    4020:	00008067          	ret
    4024:	02452783          	lw	a5,36(a0)
    4028:	00058a13          	mv	s4,a1
    402c:	fff00593          	li	a1,-1
    4030:	00050493          	mv	s1,a0
    4034:	00068913          	mv	s2,a3
    4038:	00060993          	mv	s3,a2
    403c:	00b78663          	beq	a5,a1,4048 <fatfs_allocate_free_space+0x74>
    4040:	fffff097          	auipc	ra,0xfffff
    4044:	620080e7          	jalr	1568(ra) # 3660 <fatfs_set_fs_info_next_free_cluster>
    4048:	0004c783          	lbu	a5,0(s1)
    404c:	00090513          	mv	a0,s2
    4050:	00979a93          	slli	s5,a5,0x9
    4054:	000a8593          	mv	a1,s5
    4058:	ffffd097          	auipc	ra,0xffffd
    405c:	c4c080e7          	jalr	-948(ra) # ca4 <__udivsi3>
    4060:	00050413          	mv	s0,a0
    4064:	00050593          	mv	a1,a0
    4068:	000a8513          	mv	a0,s5
    406c:	ffffd097          	auipc	ra,0xffffd
    4070:	434080e7          	jalr	1076(ra) # 14a0 <__mulsi3>
    4074:	41250533          	sub	a0,a0,s2
    4078:	00a03533          	snez	a0,a0
    407c:	00a40933          	add	s2,s0,a0
    4080:	040a0463          	beqz	s4,40c8 <fatfs_allocate_free_space+0xf4>
    4084:	0084a583          	lw	a1,8(s1)
    4088:	00c10613          	addi	a2,sp,12
    408c:	00048513          	mv	a0,s1
    4090:	fffff097          	auipc	ra,0xfffff
    4094:	680080e7          	jalr	1664(ra) # 3710 <fatfs_find_blank_cluster>
    4098:	00050413          	mv	s0,a0
    409c:	f4050ee3          	beqz	a0,3ff8 <fatfs_allocate_free_space+0x24>
    40a0:	00100793          	li	a5,1
    40a4:	02f91663          	bne	s2,a5,40d0 <fatfs_allocate_free_space+0xfc>
    40a8:	00c12903          	lw	s2,12(sp)
    40ac:	fff00613          	li	a2,-1
    40b0:	00048513          	mv	a0,s1
    40b4:	00090593          	mv	a1,s2
    40b8:	fffff097          	auipc	ra,0xfffff
    40bc:	76c080e7          	jalr	1900(ra) # 3824 <fatfs_fat_set_cluster>
    40c0:	0129a023          	sw	s2,0(s3)
    40c4:	f39ff06f          	j	3ffc <fatfs_allocate_free_space+0x28>
    40c8:	0009a783          	lw	a5,0(s3)
    40cc:	00f12623          	sw	a5,12(sp)
    40d0:	00090613          	mv	a2,s2
    40d4:	00c10593          	addi	a1,sp,12
    40d8:	00048513          	mv	a0,s1
    40dc:	00000097          	auipc	ra,0x0
    40e0:	954080e7          	jalr	-1708(ra) # 3a30 <fatfs_add_free_space>
    40e4:	00050413          	mv	s0,a0
    40e8:	f15ff06f          	j	3ffc <fatfs_allocate_free_space+0x28>

000040ec <fatfs_add_file_entry>:
    40ec:	03852883          	lw	a7,56(a0)
    40f0:	30088e63          	beqz	a7,440c <fatfs_add_file_entry+0x320>
    40f4:	f8010113          	addi	sp,sp,-128
    40f8:	06812c23          	sw	s0,120(sp)
    40fc:	00050413          	mv	s0,a0
    4100:	00060513          	mv	a0,a2
    4104:	06912a23          	sw	s1,116(sp)
    4108:	07512223          	sw	s5,100(sp)
    410c:	00f12c23          	sw	a5,24(sp)
    4110:	00e12a23          	sw	a4,20(sp)
    4114:	06112e23          	sw	ra,124(sp)
    4118:	07212823          	sw	s2,112(sp)
    411c:	07312623          	sw	s3,108(sp)
    4120:	07412423          	sw	s4,104(sp)
    4124:	07612023          	sw	s6,96(sp)
    4128:	05712e23          	sw	s7,92(sp)
    412c:	05812c23          	sw	s8,88(sp)
    4130:	05912a23          	sw	s9,84(sp)
    4134:	05a12823          	sw	s10,80(sp)
    4138:	05b12623          	sw	s11,76(sp)
    413c:	01012e23          	sw	a6,28(sp)
    4140:	00068a93          	mv	s5,a3
    4144:	00c12823          	sw	a2,16(sp)
    4148:	00b12423          	sw	a1,8(sp)
    414c:	ffffe097          	auipc	ra,0xffffe
    4150:	a48080e7          	jalr	-1464(ra) # 1b94 <fatfs_lfn_entries_required>
    4154:	00150713          	addi	a4,a0,1
    4158:	00100793          	li	a5,1
    415c:	00050493          	mv	s1,a0
    4160:	2ae7f263          	bgeu	a5,a4,4404 <fatfs_add_file_entry+0x318>
    4164:	00000a13          	li	s4,0
    4168:	00000993          	li	s3,0
    416c:	00000913          	li	s2,0
    4170:	00000c93          	li	s9,0
    4174:	00000b13          	li	s6,0
    4178:	01000c13          	li	s8,16
    417c:	00812583          	lw	a1,8(sp)
    4180:	00000693          	li	a3,0
    4184:	000b0613          	mv	a2,s6
    4188:	00040513          	mv	a0,s0
    418c:	000b0b93          	mv	s7,s6
    4190:	ffffe097          	auipc	ra,0xffffe
    4194:	7f4080e7          	jalr	2036(ra) # 2984 <fatfs_sector_reader>
    4198:	18050463          	beqz	a0,4320 <fatfs_add_file_entry+0x234>
    419c:	001b0b13          	addi	s6,s6,1
    41a0:	04440793          	addi	a5,s0,68
    41a4:	000c8d13          	mv	s10,s9
    41a8:	00000d93          	li	s11,0
    41ac:	00078513          	mv	a0,a5
    41b0:	00f12623          	sw	a5,12(sp)
    41b4:	ffffe097          	auipc	ra,0xffffe
    41b8:	8f8080e7          	jalr	-1800(ra) # 1aac <fatfs_entry_lfn_text>
    41bc:	00c12783          	lw	a5,12(sp)
    41c0:	00050c93          	mv	s9,a0
    41c4:	02050c63          	beqz	a0,41fc <fatfs_add_file_entry+0x110>
    41c8:	020d0463          	beqz	s10,41f0 <fatfs_add_file_entry+0x104>
    41cc:	00090c93          	mv	s9,s2
    41d0:	000c8913          	mv	s2,s9
    41d4:	001d0c93          	addi	s9,s10,1
    41d8:	001d8d93          	addi	s11,s11,1
    41dc:	0ffdfd93          	zext.b	s11,s11
    41e0:	02078793          	addi	a5,a5,32
    41e4:	f98d8ce3          	beq	s11,s8,417c <fatfs_add_file_entry+0x90>
    41e8:	000c8d13          	mv	s10,s9
    41ec:	fc1ff06f          	j	41ac <fatfs_add_file_entry+0xc0>
    41f0:	000d8a13          	mv	s4,s11
    41f4:	000b8993          	mv	s3,s7
    41f8:	fd9ff06f          	j	41d0 <fatfs_add_file_entry+0xe4>
    41fc:	0007c683          	lbu	a3,0(a5)
    4200:	0e500713          	li	a4,229
    4204:	10e69863          	bne	a3,a4,4314 <fatfs_add_file_entry+0x228>
    4208:	000d1863          	bnez	s10,4218 <fatfs_add_file_entry+0x12c>
    420c:	000d8a13          	mv	s4,s11
    4210:	000b8993          	mv	s3,s7
    4214:	00100913          	li	s2,1
    4218:	fa9d4ee3          	blt	s10,s1,41d4 <fatfs_add_file_entry+0xe8>
    421c:	00ba8693          	addi	a3,s5,11
    4220:	000a8713          	mv	a4,s5
    4224:	00000913          	li	s2,0
    4228:	00074603          	lbu	a2,0(a4)
    422c:	00195793          	srli	a5,s2,0x1
    4230:	00791913          	slli	s2,s2,0x7
    4234:	012787b3          	add	a5,a5,s2
    4238:	00170713          	addi	a4,a4,1
    423c:	00c787b3          	add	a5,a5,a2
    4240:	0ff7f913          	zext.b	s2,a5
    4244:	fed712e3          	bne	a4,a3,4228 <fatfs_add_file_entry+0x13c>
    4248:	00098b13          	mv	s6,s3
    424c:	00000d13          	li	s10,0
    4250:	01000b93          	li	s7,16
    4254:	00812583          	lw	a1,8(sp)
    4258:	00000693          	li	a3,0
    425c:	000b0613          	mv	a2,s6
    4260:	00040513          	mv	a0,s0
    4264:	ffffe097          	auipc	ra,0xffffe
    4268:	720080e7          	jalr	1824(ra) # 2984 <fatfs_sector_reader>
    426c:	18050c63          	beqz	a0,4404 <fatfs_add_file_entry+0x318>
    4270:	04440c93          	addi	s9,s0,68
    4274:	413b0db3          	sub	s11,s6,s3
    4278:	00000793          	li	a5,0
    427c:	00000c13          	li	s8,0
    4280:	01912623          	sw	s9,12(sp)
    4284:	000d1663          	bnez	s10,4290 <fatfs_add_file_entry+0x1a4>
    4288:	154c1863          	bne	s8,s4,43d8 <fatfs_add_file_entry+0x2ec>
    428c:	140d9663          	bnez	s11,43d8 <fatfs_add_file_entry+0x2ec>
    4290:	12049263          	bnez	s1,43b4 <fatfs_add_file_entry+0x2c8>
    4294:	01c12703          	lw	a4,28(sp)
    4298:	01412603          	lw	a2,20(sp)
    429c:	01812583          	lw	a1,24(sp)
    42a0:	02010693          	addi	a3,sp,32
    42a4:	000a8513          	mv	a0,s5
    42a8:	ffffe097          	auipc	ra,0xffffe
    42ac:	a30080e7          	jalr	-1488(ra) # 1cd8 <fatfs_sfn_create_entry>
    42b0:	02000613          	li	a2,32
    42b4:	00c105b3          	add	a1,sp,a2
    42b8:	000c8513          	mv	a0,s9
    42bc:	ffffd097          	auipc	ra,0xffffd
    42c0:	ab0080e7          	jalr	-1360(ra) # d6c <memcpy>
    42c4:	03842783          	lw	a5,56(s0)
    42c8:	00c12583          	lw	a1,12(sp)
    42cc:	24442503          	lw	a0,580(s0)
    42d0:	00100613          	li	a2,1
    42d4:	000780e7          	jalr	a5
    42d8:	07c12083          	lw	ra,124(sp)
    42dc:	07812403          	lw	s0,120(sp)
    42e0:	07412483          	lw	s1,116(sp)
    42e4:	07012903          	lw	s2,112(sp)
    42e8:	06c12983          	lw	s3,108(sp)
    42ec:	06812a03          	lw	s4,104(sp)
    42f0:	06412a83          	lw	s5,100(sp)
    42f4:	06012b03          	lw	s6,96(sp)
    42f8:	05c12b83          	lw	s7,92(sp)
    42fc:	05812c03          	lw	s8,88(sp)
    4300:	05412c83          	lw	s9,84(sp)
    4304:	05012d03          	lw	s10,80(sp)
    4308:	04c12d83          	lw	s11,76(sp)
    430c:	08010113          	addi	sp,sp,128
    4310:	00008067          	ret
    4314:	ee068ae3          	beqz	a3,4208 <fatfs_add_file_entry+0x11c>
    4318:	00000913          	li	s2,0
    431c:	ebdff06f          	j	41d8 <fatfs_add_file_entry+0xec>
    4320:	00842583          	lw	a1,8(s0)
    4324:	02010613          	addi	a2,sp,32
    4328:	00040513          	mv	a0,s0
    432c:	fffff097          	auipc	ra,0xfffff
    4330:	3e4080e7          	jalr	996(ra) # 3710 <fatfs_find_blank_cluster>
    4334:	0c050863          	beqz	a0,4404 <fatfs_add_file_entry+0x318>
    4338:	02012b83          	lw	s7,32(sp)
    433c:	00812583          	lw	a1,8(sp)
    4340:	00040513          	mv	a0,s0
    4344:	000b8613          	mv	a2,s7
    4348:	fffff097          	auipc	ra,0xfffff
    434c:	64c080e7          	jalr	1612(ra) # 3994 <fatfs_fat_add_cluster_to_chain>
    4350:	0a050a63          	beqz	a0,4404 <fatfs_add_file_entry+0x318>
    4354:	20000613          	li	a2,512
    4358:	00000593          	li	a1,0
    435c:	04440513          	addi	a0,s0,68
    4360:	ffffd097          	auipc	ra,0xffffd
    4364:	9f0080e7          	jalr	-1552(ra) # d50 <memset>
    4368:	00000c13          	li	s8,0
    436c:	00044783          	lbu	a5,0(s0)
    4370:	00fc6a63          	bltu	s8,a5,4384 <fatfs_add_file_entry+0x298>
    4374:	ea0914e3          	bnez	s2,421c <fatfs_add_file_entry+0x130>
    4378:	000b0993          	mv	s3,s6
    437c:	00000a13          	li	s4,0
    4380:	e9dff06f          	j	421c <fatfs_add_file_entry+0x130>
    4384:	00000693          	li	a3,0
    4388:	000c0613          	mv	a2,s8
    438c:	000b8593          	mv	a1,s7
    4390:	00040513          	mv	a0,s0
    4394:	ffffd097          	auipc	ra,0xffffd
    4398:	4ec080e7          	jalr	1260(ra) # 1880 <fatfs_write_sector>
    439c:	06050463          	beqz	a0,4404 <fatfs_add_file_entry+0x318>
    43a0:	001c0c13          	addi	s8,s8,1
    43a4:	0ffc7c13          	zext.b	s8,s8
    43a8:	fc5ff06f          	j	436c <fatfs_add_file_entry+0x280>
    43ac:	001b0b13          	addi	s6,s6,1
    43b0:	ea5ff06f          	j	4254 <fatfs_add_file_entry+0x168>
    43b4:	01012503          	lw	a0,16(sp)
    43b8:	fff48493          	addi	s1,s1,-1
    43bc:	00090693          	mv	a3,s2
    43c0:	00048613          	mv	a2,s1
    43c4:	000c8593          	mv	a1,s9
    43c8:	ffffd097          	auipc	ra,0xffffd
    43cc:	7fc080e7          	jalr	2044(ra) # 1bc4 <fatfs_filename_to_lfn>
    43d0:	00100d13          	li	s10,1
    43d4:	000d0793          	mv	a5,s10
    43d8:	001c0c13          	addi	s8,s8,1
    43dc:	0ffc7c13          	zext.b	s8,s8
    43e0:	020c8c93          	addi	s9,s9,32
    43e4:	eb7c10e3          	bne	s8,s7,4284 <fatfs_add_file_entry+0x198>
    43e8:	fc0782e3          	beqz	a5,43ac <fatfs_add_file_entry+0x2c0>
    43ec:	03842783          	lw	a5,56(s0)
    43f0:	00c12583          	lw	a1,12(sp)
    43f4:	24442503          	lw	a0,580(s0)
    43f8:	00100613          	li	a2,1
    43fc:	000780e7          	jalr	a5
    4400:	fa0516e3          	bnez	a0,43ac <fatfs_add_file_entry+0x2c0>
    4404:	00000513          	li	a0,0
    4408:	ed1ff06f          	j	42d8 <fatfs_add_file_entry+0x1ec>
    440c:	00000513          	li	a0,0
    4410:	00008067          	ret

00004414 <fl_fopen>:
    4414:	000057b7          	lui	a5,0x5
    4418:	b6c7a783          	lw	a5,-1172(a5) # 4b6c <_filelib_init>
    441c:	fa010113          	addi	sp,sp,-96
    4420:	05212823          	sw	s2,80(sp)
    4424:	03a12823          	sw	s10,48(sp)
    4428:	04112e23          	sw	ra,92(sp)
    442c:	04812c23          	sw	s0,88(sp)
    4430:	04912a23          	sw	s1,84(sp)
    4434:	05312623          	sw	s3,76(sp)
    4438:	05412423          	sw	s4,72(sp)
    443c:	05512223          	sw	s5,68(sp)
    4440:	05612023          	sw	s6,64(sp)
    4444:	03712e23          	sw	s7,60(sp)
    4448:	03812c23          	sw	s8,56(sp)
    444c:	03912a23          	sw	s9,52(sp)
    4450:	00050d13          	mv	s10,a0
    4454:	00058913          	mv	s2,a1
    4458:	00079663          	bnez	a5,4464 <fl_fopen+0x50>
    445c:	ffffd097          	auipc	ra,0xffffd
    4460:	4d8080e7          	jalr	1240(ra) # 1934 <fl_init>
    4464:	000057b7          	lui	a5,0x5
    4468:	b687a783          	lw	a5,-1176(a5) # 4b68 <_filelib_valid>
    446c:	00193713          	seqz	a4,s2
    4470:	0017b793          	seqz	a5,a5
    4474:	00e7e7b3          	or	a5,a5,a4
    4478:	36079e63          	bnez	a5,47f4 <fl_fopen+0x3e0>
    447c:	360d0c63          	beqz	s10,47f4 <fl_fopen+0x3e0>
    4480:	00000493          	li	s1,0
    4484:	00000413          	li	s0,0
    4488:	05700993          	li	s3,87
    448c:	07200a13          	li	s4,114
    4490:	07700b13          	li	s6,119
    4494:	06100b93          	li	s7,97
    4498:	06200c13          	li	s8,98
    449c:	04100a93          	li	s5,65
    44a0:	04200c93          	li	s9,66
    44a4:	00090513          	mv	a0,s2
    44a8:	ffffd097          	auipc	ra,0xffffd
    44ac:	8e8080e7          	jalr	-1816(ra) # d90 <strlen>
    44b0:	10a44a63          	blt	s0,a0,45c4 <fl_fopen+0x1b0>
    44b4:	0000b9b7          	lui	s3,0xb
    44b8:	cf098a13          	addi	s4,s3,-784 # acf0 <_fs>
    44bc:	038a2783          	lw	a5,56(s4)
    44c0:	00079463          	bnez	a5,44c8 <fl_fopen+0xb4>
    44c4:	fd94f493          	andi	s1,s1,-39
    44c8:	03ca2783          	lw	a5,60(s4)
    44cc:	00078463          	beqz	a5,44d4 <fl_fopen+0xc0>
    44d0:	000780e7          	jalr	a5
    44d4:	0014f793          	andi	a5,s1,1
    44d8:	18079263          	bnez	a5,465c <fl_fopen+0x248>
    44dc:	0204f793          	andi	a5,s1,32
    44e0:	08078c63          	beqz	a5,4578 <fl_fopen+0x164>
    44e4:	038a2783          	lw	a5,56(s4)
    44e8:	06078a63          	beqz	a5,455c <fl_fopen+0x148>
    44ec:	ffffd097          	auipc	ra,0xffffd
    44f0:	258080e7          	jalr	600(ra) # 1744 <_allocate_file>
    44f4:	00050413          	mv	s0,a0
    44f8:	06050263          	beqz	a0,455c <fl_fopen+0x148>
    44fc:	01450a93          	addi	s5,a0,20
    4500:	10400613          	li	a2,260
    4504:	00000593          	li	a1,0
    4508:	000a8513          	mv	a0,s5
    450c:	ffffd097          	auipc	ra,0xffffd
    4510:	844080e7          	jalr	-1980(ra) # d50 <memset>
    4514:	11840b13          	addi	s6,s0,280
    4518:	10400613          	li	a2,260
    451c:	00000593          	li	a1,0
    4520:	000b0513          	mv	a0,s6
    4524:	ffffd097          	auipc	ra,0xffffd
    4528:	82c080e7          	jalr	-2004(ra) # d50 <memset>
    452c:	10400713          	li	a4,260
    4530:	000b0693          	mv	a3,s6
    4534:	00070613          	mv	a2,a4
    4538:	000a8593          	mv	a1,s5
    453c:	000d0513          	mv	a0,s10
    4540:	ffffe097          	auipc	ra,0xffffe
    4544:	c88080e7          	jalr	-888(ra) # 21c8 <fatfs_split_path>
    4548:	fff00793          	li	a5,-1
    454c:	12f51663          	bne	a0,a5,4678 <fl_fopen+0x264>
    4550:	00040513          	mv	a0,s0
    4554:	ffffd097          	auipc	ra,0xffffd
    4558:	268080e7          	jalr	616(ra) # 17bc <_free_file>
    455c:	00000413          	li	s0,0
    4560:	0214f793          	andi	a5,s1,33
    4564:	02000713          	li	a4,32
    4568:	28e79263          	bne	a5,a4,47ec <fl_fopen+0x3d8>
    456c:	10041263          	bnez	s0,4670 <fl_fopen+0x25c>
    4570:	0064f793          	andi	a5,s1,6
    4574:	26079463          	bnez	a5,47dc <fl_fopen+0x3c8>
    4578:	00000413          	li	s0,0
    457c:	040a2783          	lw	a5,64(s4)
    4580:	00078463          	beqz	a5,4588 <fl_fopen+0x174>
    4584:	000780e7          	jalr	a5
    4588:	05c12083          	lw	ra,92(sp)
    458c:	00040513          	mv	a0,s0
    4590:	05812403          	lw	s0,88(sp)
    4594:	05412483          	lw	s1,84(sp)
    4598:	05012903          	lw	s2,80(sp)
    459c:	04c12983          	lw	s3,76(sp)
    45a0:	04812a03          	lw	s4,72(sp)
    45a4:	04412a83          	lw	s5,68(sp)
    45a8:	04012b03          	lw	s6,64(sp)
    45ac:	03c12b83          	lw	s7,60(sp)
    45b0:	03812c03          	lw	s8,56(sp)
    45b4:	03412c83          	lw	s9,52(sp)
    45b8:	03012d03          	lw	s10,48(sp)
    45bc:	06010113          	addi	sp,sp,96
    45c0:	00008067          	ret
    45c4:	008907b3          	add	a5,s2,s0
    45c8:	0007c783          	lbu	a5,0(a5)
    45cc:	05378863          	beq	a5,s3,461c <fl_fopen+0x208>
    45d0:	02f9e863          	bltu	s3,a5,4600 <fl_fopen+0x1ec>
    45d4:	05578863          	beq	a5,s5,4624 <fl_fopen+0x210>
    45d8:	00faea63          	bltu	s5,a5,45ec <fl_fopen+0x1d8>
    45dc:	02b00713          	li	a4,43
    45e0:	04e78663          	beq	a5,a4,462c <fl_fopen+0x218>
    45e4:	00140413          	addi	s0,s0,1
    45e8:	ebdff06f          	j	44a4 <fl_fopen+0x90>
    45ec:	03978263          	beq	a5,s9,4610 <fl_fopen+0x1fc>
    45f0:	05200713          	li	a4,82
    45f4:	fee798e3          	bne	a5,a4,45e4 <fl_fopen+0x1d0>
    45f8:	0014e493          	ori	s1,s1,1
    45fc:	fe9ff06f          	j	45e4 <fl_fopen+0x1d0>
    4600:	ff478ce3          	beq	a5,s4,45f8 <fl_fopen+0x1e4>
    4604:	00fa6a63          	bltu	s4,a5,4618 <fl_fopen+0x204>
    4608:	01778e63          	beq	a5,s7,4624 <fl_fopen+0x210>
    460c:	fd879ce3          	bne	a5,s8,45e4 <fl_fopen+0x1d0>
    4610:	0084e493          	ori	s1,s1,8
    4614:	fd1ff06f          	j	45e4 <fl_fopen+0x1d0>
    4618:	fd6796e3          	bne	a5,s6,45e4 <fl_fopen+0x1d0>
    461c:	0324e493          	ori	s1,s1,50
    4620:	fc5ff06f          	j	45e4 <fl_fopen+0x1d0>
    4624:	0264e493          	ori	s1,s1,38
    4628:	fbdff06f          	j	45e4 <fl_fopen+0x1d0>
    462c:	0014f793          	andi	a5,s1,1
    4630:	00078663          	beqz	a5,463c <fl_fopen+0x228>
    4634:	0024e493          	ori	s1,s1,2
    4638:	fadff06f          	j	45e4 <fl_fopen+0x1d0>
    463c:	0024f793          	andi	a5,s1,2
    4640:	00078663          	beqz	a5,464c <fl_fopen+0x238>
    4644:	0314e493          	ori	s1,s1,49
    4648:	f9dff06f          	j	45e4 <fl_fopen+0x1d0>
    464c:	0044f793          	andi	a5,s1,4
    4650:	f8078ae3          	beqz	a5,45e4 <fl_fopen+0x1d0>
    4654:	0274e493          	ori	s1,s1,39
    4658:	f8dff06f          	j	45e4 <fl_fopen+0x1d0>
    465c:	000d0513          	mv	a0,s10
    4660:	fffff097          	auipc	ra,0xfffff
    4664:	81c080e7          	jalr	-2020(ra) # 2e7c <_open_file>
    4668:	00050413          	mv	s0,a0
    466c:	e60508e3          	beqz	a0,44dc <fl_fopen+0xc8>
    4670:	42940c23          	sb	s1,1080(s0)
    4674:	f09ff06f          	j	457c <fl_fopen+0x168>
    4678:	00040513          	mv	a0,s0
    467c:	ffffe097          	auipc	ra,0xffffe
    4680:	dc8080e7          	jalr	-568(ra) # 2444 <_check_file_open>
    4684:	00050913          	mv	s2,a0
    4688:	ec0514e3          	bnez	a0,4550 <fl_fopen+0x13c>
    468c:	01444783          	lbu	a5,20(s0)
    4690:	0e079663          	bnez	a5,477c <fl_fopen+0x368>
    4694:	008a2783          	lw	a5,8(s4)
    4698:	00f42023          	sw	a5,0(s0)
    469c:	00042583          	lw	a1,0(s0)
    46a0:	01010693          	addi	a3,sp,16
    46a4:	000b0613          	mv	a2,s6
    46a8:	cf098513          	addi	a0,s3,-784
    46ac:	ffffe097          	auipc	ra,0xffffe
    46b0:	428080e7          	jalr	1064(ra) # 2ad4 <fatfs_get_file_entry>
    46b4:	00100693          	li	a3,1
    46b8:	e8d50ce3          	beq	a0,a3,4550 <fl_fopen+0x13c>
    46bc:	00042223          	sw	zero,4(s0)
    46c0:	00440613          	addi	a2,s0,4
    46c4:	00068593          	mv	a1,a3
    46c8:	cf098513          	addi	a0,s3,-784
    46cc:	00000097          	auipc	ra,0x0
    46d0:	908080e7          	jalr	-1784(ra) # 3fd4 <fatfs_allocate_free_space>
    46d4:	e6050ee3          	beqz	a0,4550 <fl_fopen+0x13c>
    46d8:	00002ab7          	lui	s5,0x2
    46dc:	21c40b93          	addi	s7,s0,540
    46e0:	cf098c13          	addi	s8,s3,-784
    46e4:	70fa8a93          	addi	s5,s5,1807 # 270f <fatfs_init+0x193>
    46e8:	000b0593          	mv	a1,s6
    46ec:	00410513          	addi	a0,sp,4
    46f0:	ffffd097          	auipc	ra,0xffffd
    46f4:	68c080e7          	jalr	1676(ra) # 1d7c <fatfs_lfn_create_sfn>
    46f8:	08090e63          	beqz	s2,4794 <fl_fopen+0x380>
    46fc:	00090613          	mv	a2,s2
    4700:	00410593          	addi	a1,sp,4
    4704:	000b8513          	mv	a0,s7
    4708:	ffffd097          	auipc	ra,0xffffd
    470c:	7f0080e7          	jalr	2032(ra) # 1ef8 <fatfs_lfn_generate_tail>
    4710:	00042583          	lw	a1,0(s0)
    4714:	000b8613          	mv	a2,s7
    4718:	000c0513          	mv	a0,s8
    471c:	fffff097          	auipc	ra,0xfffff
    4720:	8d4080e7          	jalr	-1836(ra) # 2ff0 <fatfs_sfn_exists>
    4724:	00050663          	beqz	a0,4730 <fl_fopen+0x31c>
    4728:	00190913          	addi	s2,s2,1
    472c:	fb591ee3          	bne	s2,s5,46e8 <fl_fopen+0x2d4>
    4730:	00442703          	lw	a4,4(s0)
    4734:	000027b7          	lui	a5,0x2
    4738:	70f78793          	addi	a5,a5,1807 # 270f <fatfs_init+0x193>
    473c:	00070593          	mv	a1,a4
    4740:	02f90663          	beq	s2,a5,476c <fl_fopen+0x358>
    4744:	00042583          	lw	a1,0(s0)
    4748:	00000813          	li	a6,0
    474c:	00000793          	li	a5,0
    4750:	000b8693          	mv	a3,s7
    4754:	000b0613          	mv	a2,s6
    4758:	cf098513          	addi	a0,s3,-784
    475c:	00000097          	auipc	ra,0x0
    4760:	990080e7          	jalr	-1648(ra) # 40ec <fatfs_add_file_entry>
    4764:	04051463          	bnez	a0,47ac <fl_fopen+0x398>
    4768:	00442583          	lw	a1,4(s0)
    476c:	cf098513          	addi	a0,s3,-784
    4770:	fffff097          	auipc	ra,0xfffff
    4774:	1b4080e7          	jalr	436(ra) # 3924 <fatfs_free_cluster_chain>
    4778:	dd9ff06f          	j	4550 <fl_fopen+0x13c>
    477c:	00040593          	mv	a1,s0
    4780:	000a8513          	mv	a0,s5
    4784:	ffffe097          	auipc	ra,0xffffe
    4788:	54c080e7          	jalr	1356(ra) # 2cd0 <_open_directory>
    478c:	f00518e3          	bnez	a0,469c <fl_fopen+0x288>
    4790:	dc1ff06f          	j	4550 <fl_fopen+0x13c>
    4794:	00b00613          	li	a2,11
    4798:	00410593          	addi	a1,sp,4
    479c:	000b8513          	mv	a0,s7
    47a0:	ffffc097          	auipc	ra,0xffffc
    47a4:	5cc080e7          	jalr	1484(ra) # d6c <memcpy>
    47a8:	f69ff06f          	j	4710 <fl_fopen+0x2fc>
    47ac:	fff00793          	li	a5,-1
    47b0:	00042623          	sw	zero,12(s0)
    47b4:	00042423          	sw	zero,8(s0)
    47b8:	42f42823          	sw	a5,1072(s0)
    47bc:	42042a23          	sw	zero,1076(s0)
    47c0:	00042823          	sw	zero,16(s0)
    47c4:	22f42423          	sw	a5,552(s0)
    47c8:	22f42623          	sw	a5,556(s0)
    47cc:	cf098513          	addi	a0,s3,-784
    47d0:	ffffe097          	auipc	ra,0xffffe
    47d4:	054080e7          	jalr	84(ra) # 2824 <fatfs_fat_purge>
    47d8:	d89ff06f          	j	4560 <fl_fopen+0x14c>
    47dc:	000d0513          	mv	a0,s10
    47e0:	ffffe097          	auipc	ra,0xffffe
    47e4:	69c080e7          	jalr	1692(ra) # 2e7c <_open_file>
    47e8:	00050413          	mv	s0,a0
    47ec:	e80412e3          	bnez	s0,4670 <fl_fopen+0x25c>
    47f0:	d89ff06f          	j	4578 <fl_fopen+0x164>
    47f4:	00000413          	li	s0,0
    47f8:	d91ff06f          	j	4588 <fl_fopen+0x174>

000047fc <cmd16>:
    47fc:	02000050 00001500                       P.......

00004804 <acmd41>:
    4804:	00004069 00000100                       i@......

0000480c <cmd55>:
    480c:	00000077 00000100                       w.......

00004814 <cmd8>:
    4814:	01000048 000087aa                       H.......

0000481c <cmd0>:
    481c:	00000040 00009500                       @.......

00004824 <AUDIO>:
    4824:	00018000                                ....

00004828 <BUTTONS>:
    4828:	00010100                                ....

0000482c <SDCARD>:
    482c:	00010080                                ....

00004830 <OLED_RST>:
    4830:	00010010                                ....

00004834 <OLED>:
    4834:	00010008                                ....

00004838 <LEDS>:
    4838:	00010004 0000002f 00006272 00000000     ..../...rb......
    4848:	756f532f 2f73646e 63696c63 61722e6b     /Sounds/click.ra
    4858:	00000077 74696e69 2e2e2e20 00000020     w...init ... ...
    4868:	656e6f64 000a2e31 20202020 3d3d3d3d     done1...    ====
    4878:	6966203d 2073656c 3d3d3d3d 2020203d     = files =====   
    4888:	000a0a20 0a207325 00000000 676d692e      ...%s ......img
    4898:	00000000 0a2e7325 00000000 2e676d69     ....%s......img.
    48a8:	20776172 20746f6e 6e756f66 000a2e64     raw not found...
    48b8:	67616d69 6f662065 2e646e75 0000000a     image found.....
    48c8:	79616c70 20676e69 0a2e2e2e 00000000     playing ........
    48d8:	656e6f64 45454545 00000a2e 33323130     doneEEEE....0123
    48e8:	37363534 42413938 46454443 00000000     456789ABCDEF....
    48f8:	5f544146 203a5346 6f727245 6f632072     FAT_FS: Error co
    4908:	20646c75 20746f6e 64616f6c 54414620     uld not load FAT
    4918:	74656420 736c6961 64252820 0a0d2129      details (%d)!..
    4928:	00000000                                ....

0000492c <font>:
    492c:	00000000 00002f00 00030000 14000003     ...../..........
    493c:	143e143e 3a2b6a2e 08122600 171c3224     >.>..j+:.&..$2..
    494c:	03003415 00000000 0000211e 001e2100     .4.......!...!..
    495c:	08220000 0822081c 0000081c 00002040     .."...".....@ ..
    496c:	00080800 00200000 20000000 02040810     ...... .... ....
    497c:	3f21213f 003f0100 253d0000 25002725     ?!!?..?...=%%'.%
    498c:	003f2525 3f040407 25252700 253f003d     %%?....?.'%%=.?%
    499c:	01003d25 00030539 3f25253f 25252700     %=..9...?%%?.'%%
    49ac:	0028003f 40000000 00000028 00110a04     ?.(....@(.......
    49bc:	00141400 0a110000 01000004 0007052d     ............-...
    49cc:	253d213f 09093f1f 253f003f 3f003c27     ?!=%.?..?.?%'<.?
    49dc:	00212121 1e21213f 25253f00 053f0025     !!!.?!!..?%%%.?.
    49ec:	3f000505 003d2521 3f04043f 213f2100     ...?!%=.?..?.!?!
    49fc:	20380000 3f013f21 003b0404 2020203f     ..8 !?.?..;.?   
    4a0c:	3f013f00 023f3f01 3f003f04 003f2121     .?.?.??..?.?!!?.
    4a1c:	0f09093f 31213f00 093f003f 27002f39     ?....?!1?.?.9/.'
    4a2c:	003d2525 013f0101 20203f01 100f003f     %%=...?..?  ?...
    4a3c:	3f001f30 3f203f20 3b04043b 38080f00     0..? ? ?;..;...8
    4a4c:	2931000f 3f002325 00000021 04081020     ..1)%#.?!... ...
    4a5c:	003f2102 01020000 20000201 00000020     .!?........  ...
    4a6c:	00000201 24243800 243f003c 3c003c24     .....8$$<.?$$<.<
    4a7c:	00242424 3f24243c 2c2c3c00 3f04002c     $$$.<$$?.<,,,..?
    4a8c:	bc000005 00fca4a4 3c04043f 00003d00     ........?..<.=..
    4a9c:	fd800000 3f000000 00340808 0000003f     .......?..4.?...
    4aac:	3c043c00 043c3c04 3c003c04 003c2424     .<.<.<<..<.<$$<.
    4abc:	3c2424fc 24243c00 083c00fc 2c000004     .$$<.<$$..<....,
    4acc:	003c2c2c 00243f04 20203c00 100c003c     ,,<..?$..<  <...
    4adc:	3c001c30 3c203c20 34080834 a0a0bc00     0..< < <4..4....
    4aec:	342400fc 0400242c 0000213f 0000003f     ..$4,$..?!..?...
    4afc:	043f2100 02010000 00000102 00000000     .!?.............
    4b0c:	00000001 00000003 00000005 00000007     ................
    4b1c:	00000009 0000000e 00000010 00000012     ................
    4b2c:	00000014 00000016 00000018 0000001c     ................
    4b3c:	0000001e                                ....

00004b40 <file_count>:
    4b40:	00000000                                ....

00004b44 <sdcard_while_loading_callback>:
    4b44:	00000000                                ....

00004b48 <back_color>:
	...

00004b49 <front_color>:
    4b49:	                                         ...

00004b4c <cursor_y>:
    4b4c:	00000000                                ....

00004b50 <cursor_x>:
    4b50:	00000000                                ....

00004b54 <f_putchar>:
    4b54:	00000000                                ....

00004b58 <_free_file_list>:
	...

00004b60 <_open_file_list>:
	...

00004b68 <_filelib_valid>:
    4b68:	00000000                                ....

00004b6c <_filelib_init>:
    4b6c:	00000000                                ....
