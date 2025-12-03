
code.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <_start>:
       0:	00010137          	lui	sp,0x10
       4:	00000097          	auipc	ra,0x0
       8:	2bc080e7          	jalr	700(ra) # 2c0 <main>
       c:	00000317          	auipc	t1,0x0
      10:	00830067          	jr	8(t1) # 14 <exit>

00000014 <exit>:
      14:	00000000          	.word	0x00000000
      18:	00008067          	ret

0000001c <scan_files>:
      1c:	ed010113          	addi	sp,sp,-304 # fed0 <_files+0x4c8c>
      20:	00005537          	lui	a0,0x5
      24:	12812423          	sw	s0,296(sp)
      28:	00410593          	addi	a1,sp,4
      2c:	00005437          	lui	s0,0x5
      30:	91c50513          	addi	a0,a0,-1764 # 491c <LEDS+0x4>
      34:	12112623          	sw	ra,300(sp)
      38:	12912223          	sw	s1,292(sp)
      3c:	c2042623          	sw	zero,-980(s0) # 4c2c <file_count>
      40:	00003097          	auipc	ra,0x3
      44:	e54080e7          	jalr	-428(ra) # 2e94 <fl_opendir>
      48:	02050a63          	beqz	a0,7c <scan_files+0x60>
      4c:	01010593          	addi	a1,sp,16
      50:	01f00493          	li	s1,31
      54:	00410513          	addi	a0,sp,4
      58:	00003097          	auipc	ra,0x3
      5c:	508080e7          	jalr	1288(ra) # 3560 <fl_readdir>
      60:	00051863          	bnez	a0,70 <scan_files+0x54>
      64:	c2c42703          	lw	a4,-980(s0)
      68:	01010593          	addi	a1,sp,16
      6c:	02e4d263          	bge	s1,a4,90 <scan_files+0x74>
      70:	00410513          	addi	a0,sp,4
      74:	00002097          	auipc	ra,0x2
      78:	a08080e7          	jalr	-1528(ra) # 1a7c <fl_closedir>
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
      a8:	c5c78793          	addi	a5,a5,-932 # 4c5c <files>
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
      d8:	c2e42623          	sw	a4,-980(s0)
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
     100:	9047a403          	lw	s0,-1788(a5) # 4904 <AUDIO>
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
     13c:	cf8080e7          	jalr	-776(ra) # e30 <memset>
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
     17c:	92058593          	addi	a1,a1,-1760 # 4920 <LEDS+0x8>
     180:	92850513          	addi	a0,a0,-1752 # 4928 <LEDS+0x10>
     184:	00112e23          	sw	ra,28(sp)
     188:	00812c23          	sw	s0,24(sp)
     18c:	00912a23          	sw	s1,20(sp)
     190:	01212823          	sw	s2,16(sp)
     194:	00004097          	auipc	ra,0x4
     198:	360080e7          	jalr	864(ra) # 44f4 <fl_fopen>
     19c:	06050263          	beqz	a0,200 <click_sound+0x90>
     1a0:	000057b7          	lui	a5,0x5
     1a4:	9047a903          	lw	s2,-1788(a5) # 4904 <AUDIO>
     1a8:	00050693          	mv	a3,a0
     1ac:	1ff00493          	li	s1,511
     1b0:	00092403          	lw	s0,0(s2)
     1b4:	20000613          	li	a2,512
     1b8:	00100593          	li	a1,1
     1bc:	00040513          	mv	a0,s0
     1c0:	00d12623          	sw	a3,12(sp)
     1c4:	00004097          	auipc	ra,0x4
     1c8:	d2c080e7          	jalr	-724(ra) # 3ef0 <fl_fread>
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
     1fc:	c1c30067          	jr	-996(t1) # 3e14 <fl_fclose>
     200:	01c12083          	lw	ra,28(sp)
     204:	01812403          	lw	s0,24(sp)
     208:	01412483          	lw	s1,20(sp)
     20c:	01012903          	lw	s2,16(sp)
     210:	02010113          	addi	sp,sp,32
     214:	00008067          	ret

00000218 <startup_sound>:
     218:	000055b7          	lui	a1,0x5
     21c:	00005537          	lui	a0,0x5
     220:	fe010113          	addi	sp,sp,-32
     224:	92058593          	addi	a1,a1,-1760 # 4920 <LEDS+0x8>
     228:	93c50513          	addi	a0,a0,-1732 # 493c <LEDS+0x24>
     22c:	00112e23          	sw	ra,28(sp)
     230:	00812c23          	sw	s0,24(sp)
     234:	00912a23          	sw	s1,20(sp)
     238:	01212823          	sw	s2,16(sp)
     23c:	00004097          	auipc	ra,0x4
     240:	2b8080e7          	jalr	696(ra) # 44f4 <fl_fopen>
     244:	06050263          	beqz	a0,2a8 <startup_sound+0x90>
     248:	000057b7          	lui	a5,0x5
     24c:	9047a903          	lw	s2,-1788(a5) # 4904 <AUDIO>
     250:	00050693          	mv	a3,a0
     254:	1ff00493          	li	s1,511
     258:	00092403          	lw	s0,0(s2)
     25c:	20000613          	li	a2,512
     260:	00100593          	li	a1,1
     264:	00040513          	mv	a0,s0
     268:	00d12623          	sw	a3,12(sp)
     26c:	00004097          	auipc	ra,0x4
     270:	c84080e7          	jalr	-892(ra) # 3ef0 <fl_fread>
     274:	00c12683          	lw	a3,12(sp)
     278:	00a05863          	blez	a0,288 <startup_sound+0x70>
     27c:	00092783          	lw	a5,0(s2)
     280:	fef40ee3          	beq	s0,a5,27c <startup_sound+0x64>
     284:	fca4cae3          	blt	s1,a0,258 <startup_sound+0x40>
     288:	01812403          	lw	s0,24(sp)
     28c:	01c12083          	lw	ra,28(sp)
     290:	01412483          	lw	s1,20(sp)
     294:	01012903          	lw	s2,16(sp)
     298:	00068513          	mv	a0,a3
     29c:	02010113          	addi	sp,sp,32
     2a0:	00004317          	auipc	t1,0x4
     2a4:	b7430067          	jr	-1164(t1) # 3e14 <fl_fclose>
     2a8:	01c12083          	lw	ra,28(sp)
     2ac:	01812403          	lw	s0,24(sp)
     2b0:	01412483          	lw	s1,20(sp)
     2b4:	01012903          	lw	s2,16(sp)
     2b8:	02010113          	addi	sp,sp,32
     2bc:	00008067          	ret

000002c0 <main>:
     2c0:	000017b7          	lui	a5,0x1
     2c4:	fc010113          	addi	sp,sp,-64
     2c8:	00005737          	lui	a4,0x5
     2cc:	13478793          	addi	a5,a5,308 # 1134 <display_putchar>
     2d0:	02112e23          	sw	ra,60(sp)
     2d4:	c4f72023          	sw	a5,-960(a4) # 4c40 <f_putchar>
     2d8:	02812c23          	sw	s0,56(sp)
     2dc:	02912a23          	sw	s1,52(sp)
     2e0:	03212823          	sw	s2,48(sp)
     2e4:	03312623          	sw	s3,44(sp)
     2e8:	03412423          	sw	s4,40(sp)
     2ec:	03512223          	sw	s5,36(sp)
     2f0:	03612023          	sw	s6,32(sp)
     2f4:	01712e23          	sw	s7,28(sp)
     2f8:	01812c23          	sw	s8,24(sp)
     2fc:	01912a23          	sw	s9,20(sp)
     300:	01a12823          	sw	s10,16(sp)
     304:	01b12623          	sw	s11,12(sp)
     308:	00001097          	auipc	ra,0x1
     30c:	d34080e7          	jalr	-716(ra) # 103c <oled_init>
     310:	00001097          	auipc	ra,0x1
     314:	d38080e7          	jalr	-712(ra) # 1048 <oled_fullscreen>
     318:	00001097          	auipc	ra,0x1
     31c:	de8080e7          	jalr	-536(ra) # 1100 <display_framebuffer>
     320:	00004637          	lui	a2,0x4
     324:	00000593          	li	a1,0
     328:	00001097          	auipc	ra,0x1
     32c:	b08080e7          	jalr	-1272(ra) # e30 <memset>
     330:	00001097          	auipc	ra,0x1
     334:	f1c080e7          	jalr	-228(ra) # 124c <display_refresh>
     338:	00000593          	li	a1,0
     33c:	00000513          	li	a0,0
     340:	00001097          	auipc	ra,0x1
     344:	dcc080e7          	jalr	-564(ra) # 110c <display_set_cursor>
     348:	00000593          	li	a1,0
     34c:	0ff00513          	li	a0,255
     350:	00001097          	auipc	ra,0x1
     354:	dd0080e7          	jalr	-560(ra) # 1120 <display_set_front_back_color>
     358:	00005537          	lui	a0,0x5
     35c:	95050513          	addi	a0,a0,-1712 # 4950 <LEDS+0x38>
     360:	00001097          	auipc	ra,0x1
     364:	0e4080e7          	jalr	228(ra) # 1444 <printf>
     368:	000014b7          	lui	s1,0x1
     36c:	00001437          	lui	s0,0x1
     370:	00001097          	auipc	ra,0x1
     374:	edc080e7          	jalr	-292(ra) # 124c <display_refresh>
     378:	d7448493          	addi	s1,s1,-652 # d74 <sdcard_writesector>
     37c:	00001097          	auipc	ra,0x1
     380:	854080e7          	jalr	-1964(ra) # bd0 <sdcard_init>
     384:	d2040413          	addi	s0,s0,-736 # d20 <sdcard_readsector>
     388:	00001097          	auipc	ra,0x1
     38c:	68c080e7          	jalr	1676(ra) # 1a14 <fl_init>
     390:	00048593          	mv	a1,s1
     394:	00040513          	mv	a0,s0
     398:	00002097          	auipc	ra,0x2
     39c:	4e4080e7          	jalr	1252(ra) # 287c <fl_attach_media>
     3a0:	fe0518e3          	bnez	a0,390 <main+0xd0>
     3a4:	00005537          	lui	a0,0x5
     3a8:	95c50513          	addi	a0,a0,-1700 # 495c <LEDS+0x44>
     3ac:	00001097          	auipc	ra,0x1
     3b0:	098080e7          	jalr	152(ra) # 1444 <printf>
     3b4:	00001097          	auipc	ra,0x1
     3b8:	e98080e7          	jalr	-360(ra) # 124c <display_refresh>
     3bc:	00000097          	auipc	ra,0x0
     3c0:	e5c080e7          	jalr	-420(ra) # 218 <startup_sound>
     3c4:	000057b7          	lui	a5,0x5
     3c8:	96478d93          	addi	s11,a5,-1692 # 4964 <LEDS+0x4c>
     3cc:	000057b7          	lui	a5,0x5
     3d0:	9087a903          	lw	s2,-1784(a5) # 4908 <BUTTONS>
     3d4:	000057b7          	lui	a5,0x5
     3d8:	9187a983          	lw	s3,-1768(a5) # 4918 <LEDS>
     3dc:	000057b7          	lui	a5,0x5
     3e0:	9047ad03          	lw	s10,-1788(a5) # 4904 <AUDIO>
     3e4:	00005a37          	lui	s4,0x5
     3e8:	00000097          	auipc	ra,0x0
     3ec:	d0c080e7          	jalr	-756(ra) # f4 <clear_audio>
     3f0:	00000c13          	li	s8,0
     3f4:	00000097          	auipc	ra,0x0
     3f8:	c28080e7          	jalr	-984(ra) # 1c <scan_files>
     3fc:	00000413          	li	s0,0
     400:	00005bb7          	lui	s7,0x5
     404:	00005ab7          	lui	s5,0x5
     408:	980a0a13          	addi	s4,s4,-1664 # 4980 <LEDS+0x68>
     40c:	00000593          	li	a1,0
     410:	00000513          	li	a0,0
     414:	00001097          	auipc	ra,0x1
     418:	cf8080e7          	jalr	-776(ra) # 110c <display_set_cursor>
     41c:	0ff00593          	li	a1,255
     420:	00000513          	li	a0,0
     424:	00001097          	auipc	ra,0x1
     428:	cfc080e7          	jalr	-772(ra) # 1120 <display_set_front_back_color>
     42c:	000d8513          	mv	a0,s11
     430:	00001097          	auipc	ra,0x1
     434:	014080e7          	jalr	20(ra) # 1444 <printf>
     438:	c5cb8c93          	addi	s9,s7,-932 # 4c5c <files>
     43c:	00001097          	auipc	ra,0x1
     440:	e10080e7          	jalr	-496(ra) # 124c <display_refresh>
     444:	00000493          	li	s1,0
     448:	000c8b13          	mv	s6,s9
     44c:	c2caa783          	lw	a5,-980(s5) # 4c2c <file_count>
     450:	18f4ce63          	blt	s1,a5,5ec <main+0x32c>
     454:	00001097          	auipc	ra,0x1
     458:	df8080e7          	jalr	-520(ra) # 124c <display_refresh>
     45c:	00092483          	lw	s1,0(s2)
     460:	0104f793          	andi	a5,s1,16
     464:	00078c63          	beqz	a5,47c <main+0x1bc>
     468:	010c7793          	andi	a5,s8,16
     46c:	00079863          	bnez	a5,47c <main+0x1bc>
     470:	00140413          	addi	s0,s0,1
     474:	00000097          	auipc	ra,0x0
     478:	cfc080e7          	jalr	-772(ra) # 170 <click_sound>
     47c:	0084f793          	andi	a5,s1,8
     480:	00078c63          	beqz	a5,498 <main+0x1d8>
     484:	008c7c13          	andi	s8,s8,8
     488:	000c1863          	bnez	s8,498 <main+0x1d8>
     48c:	fff40413          	addi	s0,s0,-1
     490:	00000097          	auipc	ra,0x0
     494:	ce0080e7          	jalr	-800(ra) # 170 <click_sound>
     498:	c2caa783          	lw	a5,-980(s5)
     49c:	18045663          	bgez	s0,628 <main+0x368>
     4a0:	fff78413          	addi	s0,a5,-1
     4a4:	0044f693          	andi	a3,s1,4
     4a8:	c0002673          	rdcycle	a2
     4ac:	0000c7b7          	lui	a5,0xc
     4b0:	34f78793          	addi	a5,a5,847 # c34f <_files+0x110b>
     4b4:	c0002773          	rdcycle	a4
     4b8:	40c70733          	sub	a4,a4,a2
     4bc:	fee7fce3          	bgeu	a5,a4,4b4 <main+0x1f4>
     4c0:	12068263          	beqz	a3,5e4 <main+0x324>
     4c4:	00007ab7          	lui	s5,0x7
     4c8:	00005cb7          	lui	s9,0x5
     4cc:	00007c37          	lui	s8,0x7
     4d0:	91cc8593          	addi	a1,s9,-1764 # 491c <LEDS+0x4>
     4d4:	d5ca8513          	addi	a0,s5,-676 # 6d5c <tmp>
     4d8:	d40a8e23          	sb	zero,-676(s5)
     4dc:	cc0c0e23          	sb	zero,-804(s8) # 6cdc <tmp1>
     4e0:	00001097          	auipc	ra,0x1
     4e4:	a14080e7          	jalr	-1516(ra) # ef4 <strcat>
     4e8:	00641793          	slli	a5,s0,0x6
     4ec:	00878433          	add	s0,a5,s0
     4f0:	00241413          	slli	s0,s0,0x2
     4f4:	008b0433          	add	s0,s6,s0
     4f8:	00040593          	mv	a1,s0
     4fc:	d5ca8513          	addi	a0,s5,-676
     500:	00001097          	auipc	ra,0x1
     504:	9f4080e7          	jalr	-1548(ra) # ef4 <strcat>
     508:	91cc8593          	addi	a1,s9,-1764
     50c:	cdcc0513          	addi	a0,s8,-804
     510:	00001097          	auipc	ra,0x1
     514:	9e4080e7          	jalr	-1564(ra) # ef4 <strcat>
     518:	00040593          	mv	a1,s0
     51c:	cdcc0513          	addi	a0,s8,-804
     520:	00001097          	auipc	ra,0x1
     524:	9d4080e7          	jalr	-1580(ra) # ef4 <strcat>
     528:	000055b7          	lui	a1,0x5
     52c:	98858593          	addi	a1,a1,-1656 # 4988 <LEDS+0x70>
     530:	cdcc0513          	addi	a0,s8,-804
     534:	00001097          	auipc	ra,0x1
     538:	9c0080e7          	jalr	-1600(ra) # ef4 <strcat>
     53c:	00001097          	auipc	ra,0x1
     540:	d10080e7          	jalr	-752(ra) # 124c <display_refresh>
     544:	c00026f3          	rdcycle	a3
     548:	008957b7          	lui	a5,0x895
     54c:	43f78793          	addi	a5,a5,1087 # 89543f <__stacktop+0x88543f>
     550:	c0002773          	rdcycle	a4
     554:	40d70733          	sub	a4,a4,a3
     558:	fee7fce3          	bgeu	a5,a4,550 <main+0x290>
     55c:	00005b37          	lui	s6,0x5
     560:	920b0593          	addi	a1,s6,-1760 # 4920 <LEDS+0x8>
     564:	cdcc0513          	addi	a0,s8,-804
     568:	00004097          	auipc	ra,0x4
     56c:	f8c080e7          	jalr	-116(ra) # 44f4 <fl_fopen>
     570:	00050a13          	mv	s4,a0
     574:	0c051263          	bnez	a0,638 <main+0x378>
     578:	00005537          	lui	a0,0x5
     57c:	99050513          	addi	a0,a0,-1648 # 4990 <LEDS+0x78>
     580:	00001097          	auipc	ra,0x1
     584:	ec4080e7          	jalr	-316(ra) # 1444 <printf>
     588:	00001097          	auipc	ra,0x1
     58c:	cc4080e7          	jalr	-828(ra) # 124c <display_refresh>
     590:	0009a023          	sw	zero,0(s3)
     594:	00001097          	auipc	ra,0x1
     598:	cb8080e7          	jalr	-840(ra) # 124c <display_refresh>
     59c:	920b0593          	addi	a1,s6,-1760
     5a0:	d5ca8513          	addi	a0,s5,-676
     5a4:	00004097          	auipc	ra,0x4
     5a8:	f50080e7          	jalr	-176(ra) # 44f4 <fl_fopen>
     5ac:	00050c93          	mv	s9,a0
     5b0:	0c051a63          	bnez	a0,684 <main+0x3c4>
     5b4:	00040513          	mv	a0,s0
     5b8:	00001097          	auipc	ra,0x1
     5bc:	e8c080e7          	jalr	-372(ra) # 1444 <printf>
     5c0:	00001097          	auipc	ra,0x1
     5c4:	c8c080e7          	jalr	-884(ra) # 124c <display_refresh>
     5c8:	00005537          	lui	a0,0x5
     5cc:	9c450513          	addi	a0,a0,-1596 # 49c4 <LEDS+0xac>
     5d0:	00001097          	auipc	ra,0x1
     5d4:	e74080e7          	jalr	-396(ra) # 1444 <printf>
     5d8:	00001097          	auipc	ra,0x1
     5dc:	c74080e7          	jalr	-908(ra) # 124c <display_refresh>
     5e0:	e05ff06f          	j	3e4 <main+0x124>
     5e4:	00048c13          	mv	s8,s1
     5e8:	e25ff06f          	j	40c <main+0x14c>
     5ec:	02849863          	bne	s1,s0,61c <main+0x35c>
     5f0:	0ff00593          	li	a1,255
     5f4:	00000513          	li	a0,0
     5f8:	00001097          	auipc	ra,0x1
     5fc:	b28080e7          	jalr	-1240(ra) # 1120 <display_set_front_back_color>
     600:	000c8593          	mv	a1,s9
     604:	000a0513          	mv	a0,s4
     608:	00001097          	auipc	ra,0x1
     60c:	e3c080e7          	jalr	-452(ra) # 1444 <printf>
     610:	00148493          	addi	s1,s1,1
     614:	104c8c93          	addi	s9,s9,260
     618:	e35ff06f          	j	44c <main+0x18c>
     61c:	00000593          	li	a1,0
     620:	0ff00513          	li	a0,255
     624:	fd5ff06f          	j	5f8 <main+0x338>
     628:	00f427b3          	slt	a5,s0,a5
     62c:	40f007b3          	neg	a5,a5
     630:	00f47433          	and	s0,s0,a5
     634:	e71ff06f          	j	4a4 <main+0x1e4>
     638:	00005537          	lui	a0,0x5
     63c:	9a450513          	addi	a0,a0,-1628 # 49a4 <LEDS+0x8c>
     640:	00001097          	auipc	ra,0x1
     644:	e04080e7          	jalr	-508(ra) # 1444 <printf>
     648:	00001097          	auipc	ra,0x1
     64c:	c04080e7          	jalr	-1020(ra) # 124c <display_refresh>
     650:	00001097          	auipc	ra,0x1
     654:	ab0080e7          	jalr	-1360(ra) # 1100 <display_framebuffer>
     658:	000a0693          	mv	a3,s4
     65c:	00004637          	lui	a2,0x4
     660:	00100593          	li	a1,1
     664:	00004097          	auipc	ra,0x4
     668:	88c080e7          	jalr	-1908(ra) # 3ef0 <fl_fread>
     66c:	00001097          	auipc	ra,0x1
     670:	be0080e7          	jalr	-1056(ra) # 124c <display_refresh>
     674:	000a0513          	mv	a0,s4
     678:	00003097          	auipc	ra,0x3
     67c:	79c080e7          	jalr	1948(ra) # 3e14 <fl_fclose>
     680:	f11ff06f          	j	590 <main+0x2d0>
     684:	00005537          	lui	a0,0x5
     688:	9b450513          	addi	a0,a0,-1612 # 49b4 <LEDS+0x9c>
     68c:	00001097          	auipc	ra,0x1
     690:	db8080e7          	jalr	-584(ra) # 1444 <printf>
     694:	00001097          	auipc	ra,0x1
     698:	bb8080e7          	jalr	-1096(ra) # 124c <display_refresh>
     69c:	00000a13          	li	s4,0
     6a0:	00100413          	li	s0,1
     6a4:	1ff00b13          	li	s6,511
     6a8:	00092783          	lw	a5,0(s2)
     6ac:	000d2a83          	lw	s5,0(s10)
     6b0:	000c8693          	mv	a3,s9
     6b4:	20000613          	li	a2,512
     6b8:	00100593          	li	a1,1
     6bc:	000a8513          	mv	a0,s5
     6c0:	00004097          	auipc	ra,0x4
     6c4:	830080e7          	jalr	-2000(ra) # 3ef0 <fl_fread>
     6c8:	00050b93          	mv	s7,a0
     6cc:	0ca04463          	bgtz	a0,794 <main+0x4d4>
     6d0:	000c8513          	mv	a0,s9
     6d4:	00003097          	auipc	ra,0x3
     6d8:	740080e7          	jalr	1856(ra) # 3e14 <fl_fclose>
     6dc:	eedff06f          	j	5c8 <main+0x308>
     6e0:	f8040793          	addi	a5,s0,-128
     6e4:	fff40713          	addi	a4,s0,-1
     6e8:	0017b793          	seqz	a5,a5
     6ec:	00173713          	seqz	a4,a4
     6f0:	00092c03          	lw	s8,0(s2)
     6f4:	00e7e7b3          	or	a5,a5,a4
     6f8:	04fa0a63          	beq	s4,a5,74c <main+0x48c>
     6fc:	00141413          	slli	s0,s0,0x1
     700:	0089a023          	sw	s0,0(s3)
     704:	002c7713          	andi	a4,s8,2
     708:	04070663          	beqz	a4,754 <main+0x494>
     70c:	0024f713          	andi	a4,s1,2
     710:	04071263          	bnez	a4,754 <main+0x494>
     714:	00000097          	auipc	ra,0x0
     718:	a5c080e7          	jalr	-1444(ra) # 170 <click_sound>
     71c:	000c8513          	mv	a0,s9
     720:	00003097          	auipc	ra,0x3
     724:	6f4080e7          	jalr	1780(ra) # 3e14 <fl_fclose>
     728:	00001097          	auipc	ra,0x1
     72c:	9d8080e7          	jalr	-1576(ra) # 1100 <display_framebuffer>
     730:	00004637          	lui	a2,0x4
     734:	00000593          	li	a1,0
     738:	00000097          	auipc	ra,0x0
     73c:	6f8080e7          	jalr	1784(ra) # e30 <memset>
     740:	00001097          	auipc	ra,0x1
     744:	b0c080e7          	jalr	-1268(ra) # 124c <display_refresh>
     748:	f89ff06f          	j	6d0 <main+0x410>
     74c:	40145413          	srai	s0,s0,0x1
     750:	fb1ff06f          	j	700 <main+0x440>
     754:	00fa4a33          	xor	s4,s4,a5
     758:	020c7793          	andi	a5,s8,32
     75c:	02078a63          	beqz	a5,790 <main+0x4d0>
     760:	0204f793          	andi	a5,s1,32
     764:	02079663          	bnez	a5,790 <main+0x4d0>
     768:	00000097          	auipc	ra,0x0
     76c:	a08080e7          	jalr	-1528(ra) # 170 <click_sound>
     770:	00048793          	mv	a5,s1
     774:	00092483          	lw	s1,0(s2)
     778:	0204f713          	andi	a4,s1,32
     77c:	fe070ae3          	beqz	a4,770 <main+0x4b0>
     780:	0207f793          	andi	a5,a5,32
     784:	fe0796e3          	bnez	a5,770 <main+0x4b0>
     788:	00000097          	auipc	ra,0x0
     78c:	9e8080e7          	jalr	-1560(ra) # 170 <click_sound>
     790:	000c0493          	mv	s1,s8
     794:	000d2783          	lw	a5,0(s10)
     798:	f4fa84e3          	beq	s5,a5,6e0 <main+0x420>
     79c:	f17b46e3          	blt	s6,s7,6a8 <main+0x3e8>
     7a0:	f31ff06f          	j	6d0 <main+0x410>

000007a4 <pause>:
     7a4:	c0002773          	rdcycle	a4
     7a8:	c00027f3          	rdcycle	a5
     7ac:	40e787b3          	sub	a5,a5,a4
     7b0:	fea7ece3          	bltu	a5,a0,7a8 <pause+0x4>
     7b4:	00008067          	ret

000007b8 <sdcard_idle>:
     7b8:	00008067          	ret

000007bc <sdcard_select>:
     7bc:	000057b7          	lui	a5,0x5
     7c0:	90c7a783          	lw	a5,-1780(a5) # 490c <SDCARD>
     7c4:	00200713          	li	a4,2
     7c8:	00e7a023          	sw	a4,0(a5)
     7cc:	00008067          	ret

000007d0 <sdcard_ponder>:
     7d0:	000056b7          	lui	a3,0x5
     7d4:	90c6a683          	lw	a3,-1780(a3) # 490c <SDCARD>
     7d8:	01000793          	li	a5,16
     7dc:	00000713          	li	a4,0
     7e0:	00676613          	ori	a2,a4,6
     7e4:	00c6a023          	sw	a2,0(a3)
     7e8:	00174713          	xori	a4,a4,1
     7ec:	00000013          	nop
     7f0:	fff78793          	addi	a5,a5,-1
     7f4:	fe0796e3          	bnez	a5,7e0 <sdcard_ponder+0x10>
     7f8:	00008067          	ret

000007fc <sdcard_unselect>:
     7fc:	000057b7          	lui	a5,0x5
     800:	90c7a783          	lw	a5,-1780(a5) # 490c <SDCARD>
     804:	00600713          	li	a4,6
     808:	00e7a023          	sw	a4,0(a5)
     80c:	00008067          	ret

00000810 <sdcard_send>:
     810:	000057b7          	lui	a5,0x5
     814:	90c7a783          	lw	a5,-1780(a5) # 490c <SDCARD>
     818:	00655713          	srli	a4,a0,0x6
     81c:	00277713          	andi	a4,a4,2
     820:	00e7a023          	sw	a4,0(a5)
     824:	00176713          	ori	a4,a4,1
     828:	00e7a023          	sw	a4,0(a5)
     82c:	00555713          	srli	a4,a0,0x5
     830:	00277713          	andi	a4,a4,2
     834:	00e7a023          	sw	a4,0(a5)
     838:	00176713          	ori	a4,a4,1
     83c:	00e7a023          	sw	a4,0(a5)
     840:	00455713          	srli	a4,a0,0x4
     844:	00277713          	andi	a4,a4,2
     848:	00e7a023          	sw	a4,0(a5)
     84c:	00176713          	ori	a4,a4,1
     850:	00e7a023          	sw	a4,0(a5)
     854:	00355713          	srli	a4,a0,0x3
     858:	00277713          	andi	a4,a4,2
     85c:	00e7a023          	sw	a4,0(a5)
     860:	00176713          	ori	a4,a4,1
     864:	00e7a023          	sw	a4,0(a5)
     868:	00255713          	srli	a4,a0,0x2
     86c:	00277713          	andi	a4,a4,2
     870:	00e7a023          	sw	a4,0(a5)
     874:	00176713          	ori	a4,a4,1
     878:	00e7a023          	sw	a4,0(a5)
     87c:	00155713          	srli	a4,a0,0x1
     880:	00277713          	andi	a4,a4,2
     884:	00e7a023          	sw	a4,0(a5)
     888:	00176713          	ori	a4,a4,1
     88c:	00e7a023          	sw	a4,0(a5)
     890:	00257713          	andi	a4,a0,2
     894:	00e7a023          	sw	a4,0(a5)
     898:	00151513          	slli	a0,a0,0x1
     89c:	00176713          	ori	a4,a4,1
     8a0:	00e7a023          	sw	a4,0(a5)
     8a4:	00257513          	andi	a0,a0,2
     8a8:	00a7a023          	sw	a0,0(a5)
     8ac:	00156513          	ori	a0,a0,1
     8b0:	00a7a023          	sw	a0,0(a5)
     8b4:	00200713          	li	a4,2
     8b8:	00e7a023          	sw	a4,0(a5)
     8bc:	000057b7          	lui	a5,0x5
     8c0:	c307a783          	lw	a5,-976(a5) # 4c30 <sdcard_while_loading_callback>
     8c4:	00078067          	jr	a5

000008c8 <sdcard_read>:
     8c8:	fd010113          	addi	sp,sp,-48
     8cc:	fff50793          	addi	a5,a0,-1
     8d0:	03212023          	sw	s2,32(sp)
     8d4:	00100913          	li	s2,1
     8d8:	00f91933          	sll	s2,s2,a5
     8dc:	000057b7          	lui	a5,0x5
     8e0:	01312e23          	sw	s3,28(sp)
     8e4:	90c7a983          	lw	s3,-1780(a5) # 490c <SDCARD>
     8e8:	02812423          	sw	s0,40(sp)
     8ec:	02912223          	sw	s1,36(sp)
     8f0:	01412c23          	sw	s4,24(sp)
     8f4:	01512a23          	sw	s5,20(sp)
     8f8:	01612823          	sw	s6,16(sp)
     8fc:	02112623          	sw	ra,44(sp)
     900:	0ff00413          	li	s0,255
     904:	00000493          	li	s1,0
     908:	00300a13          	li	s4,3
     90c:	00200a93          	li	s5,2
     910:	00005b37          	lui	s6,0x5
     914:	02058c63          	beqz	a1,94c <sdcard_read+0x84>
     918:	012477b3          	and	a5,s0,s2
     91c:	02079a63          	bnez	a5,950 <sdcard_read+0x88>
     920:	02c12083          	lw	ra,44(sp)
     924:	0ff47513          	zext.b	a0,s0
     928:	02812403          	lw	s0,40(sp)
     92c:	02412483          	lw	s1,36(sp)
     930:	02012903          	lw	s2,32(sp)
     934:	01c12983          	lw	s3,28(sp)
     938:	01812a03          	lw	s4,24(sp)
     93c:	01412a83          	lw	s5,20(sp)
     940:	01012b03          	lw	s6,16(sp)
     944:	03010113          	addi	sp,sp,48
     948:	00008067          	ret
     94c:	fca4dae3          	bge	s1,a0,920 <sdcard_read+0x58>
     950:	0149a023          	sw	s4,0(s3)
     954:	0159a023          	sw	s5,0(s3)
     958:	0009a783          	lw	a5,0(s3)
     95c:	00141413          	slli	s0,s0,0x1
     960:	00b12623          	sw	a1,12(sp)
     964:	00f46433          	or	s0,s0,a5
     968:	c30b2783          	lw	a5,-976(s6) # 4c30 <sdcard_while_loading_callback>
     96c:	00a12423          	sw	a0,8(sp)
     970:	00148493          	addi	s1,s1,1
     974:	000780e7          	jalr	a5
     978:	00c12583          	lw	a1,12(sp)
     97c:	00812503          	lw	a0,8(sp)
     980:	f95ff06f          	j	914 <sdcard_read+0x4c>

00000984 <sdcard_get>:
     984:	fe010113          	addi	sp,sp,-32
     988:	00112e23          	sw	ra,28(sp)
     98c:	00812c23          	sw	s0,24(sp)
     990:	00912a23          	sw	s1,20(sp)
     994:	00050413          	mv	s0,a0
     998:	00b12623          	sw	a1,12(sp)
     99c:	00000097          	auipc	ra,0x0
     9a0:	e20080e7          	jalr	-480(ra) # 7bc <sdcard_select>
     9a4:	00c12583          	lw	a1,12(sp)
     9a8:	00040513          	mv	a0,s0
     9ac:	00100493          	li	s1,1
     9b0:	00000097          	auipc	ra,0x0
     9b4:	f18080e7          	jalr	-232(ra) # 8c8 <sdcard_read>
     9b8:	00345413          	srli	s0,s0,0x3
     9bc:	0284c463          	blt	s1,s0,9e4 <sdcard_get+0x60>
     9c0:	00a12623          	sw	a0,12(sp)
     9c4:	00000097          	auipc	ra,0x0
     9c8:	e38080e7          	jalr	-456(ra) # 7fc <sdcard_unselect>
     9cc:	01c12083          	lw	ra,28(sp)
     9d0:	01812403          	lw	s0,24(sp)
     9d4:	00c12503          	lw	a0,12(sp)
     9d8:	01412483          	lw	s1,20(sp)
     9dc:	02010113          	addi	sp,sp,32
     9e0:	00008067          	ret
     9e4:	00000593          	li	a1,0
     9e8:	00800513          	li	a0,8
     9ec:	00000097          	auipc	ra,0x0
     9f0:	edc080e7          	jalr	-292(ra) # 8c8 <sdcard_read>
     9f4:	00148493          	addi	s1,s1,1
     9f8:	fc5ff06f          	j	9bc <sdcard_get+0x38>

000009fc <sdcard_cmd>:
     9fc:	ff010113          	addi	sp,sp,-16
     a00:	00812423          	sw	s0,8(sp)
     a04:	00912223          	sw	s1,4(sp)
     a08:	01212023          	sw	s2,0(sp)
     a0c:	00112623          	sw	ra,12(sp)
     a10:	00050913          	mv	s2,a0
     a14:	00000413          	li	s0,0
     a18:	00000097          	auipc	ra,0x0
     a1c:	da4080e7          	jalr	-604(ra) # 7bc <sdcard_select>
     a20:	00600493          	li	s1,6
     a24:	008907b3          	add	a5,s2,s0
     a28:	0007c503          	lbu	a0,0(a5)
     a2c:	00140413          	addi	s0,s0,1
     a30:	00000097          	auipc	ra,0x0
     a34:	de0080e7          	jalr	-544(ra) # 810 <sdcard_send>
     a38:	fe9416e3          	bne	s0,s1,a24 <sdcard_cmd+0x28>
     a3c:	00812403          	lw	s0,8(sp)
     a40:	00c12083          	lw	ra,12(sp)
     a44:	00412483          	lw	s1,4(sp)
     a48:	00012903          	lw	s2,0(sp)
     a4c:	01010113          	addi	sp,sp,16
     a50:	00000317          	auipc	t1,0x0
     a54:	dac30067          	jr	-596(t1) # 7fc <sdcard_unselect>

00000a58 <sdcard_start_sector>:
     a58:	ff010113          	addi	sp,sp,-16
     a5c:	00112623          	sw	ra,12(sp)
     a60:	00812423          	sw	s0,8(sp)
     a64:	00050413          	mv	s0,a0
     a68:	00000097          	auipc	ra,0x0
     a6c:	d54080e7          	jalr	-684(ra) # 7bc <sdcard_select>
     a70:	05100513          	li	a0,81
     a74:	00000097          	auipc	ra,0x0
     a78:	d9c080e7          	jalr	-612(ra) # 810 <sdcard_send>
     a7c:	01845513          	srli	a0,s0,0x18
     a80:	00000097          	auipc	ra,0x0
     a84:	d90080e7          	jalr	-624(ra) # 810 <sdcard_send>
     a88:	41045513          	srai	a0,s0,0x10
     a8c:	0ff57513          	zext.b	a0,a0
     a90:	00000097          	auipc	ra,0x0
     a94:	d80080e7          	jalr	-640(ra) # 810 <sdcard_send>
     a98:	40845513          	srai	a0,s0,0x8
     a9c:	0ff57513          	zext.b	a0,a0
     aa0:	00000097          	auipc	ra,0x0
     aa4:	d70080e7          	jalr	-656(ra) # 810 <sdcard_send>
     aa8:	0ff47513          	zext.b	a0,s0
     aac:	00000097          	auipc	ra,0x0
     ab0:	d64080e7          	jalr	-668(ra) # 810 <sdcard_send>
     ab4:	05500513          	li	a0,85
     ab8:	00000097          	auipc	ra,0x0
     abc:	d58080e7          	jalr	-680(ra) # 810 <sdcard_send>
     ac0:	00000097          	auipc	ra,0x0
     ac4:	d3c080e7          	jalr	-708(ra) # 7fc <sdcard_unselect>
     ac8:	00812403          	lw	s0,8(sp)
     acc:	00c12083          	lw	ra,12(sp)
     ad0:	00100593          	li	a1,1
     ad4:	00800513          	li	a0,8
     ad8:	01010113          	addi	sp,sp,16
     adc:	00000317          	auipc	t1,0x0
     ae0:	ea830067          	jr	-344(t1) # 984 <sdcard_get>

00000ae4 <sdcard_read_sector>:
     ae4:	ff010113          	addi	sp,sp,-16
     ae8:	00812423          	sw	s0,8(sp)
     aec:	00112623          	sw	ra,12(sp)
     af0:	00912223          	sw	s1,4(sp)
     af4:	01212023          	sw	s2,0(sp)
     af8:	00058413          	mv	s0,a1
     afc:	00000097          	auipc	ra,0x0
     b00:	f5c080e7          	jalr	-164(ra) # a58 <sdcard_start_sector>
     b04:	04051863          	bnez	a0,b54 <sdcard_read_sector+0x70>
     b08:	00100593          	li	a1,1
     b0c:	00058513          	mv	a0,a1
     b10:	00000097          	auipc	ra,0x0
     b14:	e74080e7          	jalr	-396(ra) # 984 <sdcard_get>
     b18:	00000493          	li	s1,0
     b1c:	20000913          	li	s2,512
     b20:	00000593          	li	a1,0
     b24:	00800513          	li	a0,8
     b28:	00000097          	auipc	ra,0x0
     b2c:	e5c080e7          	jalr	-420(ra) # 984 <sdcard_get>
     b30:	009407b3          	add	a5,s0,s1
     b34:	00a78023          	sb	a0,0(a5)
     b38:	00148493          	addi	s1,s1,1
     b3c:	ff2492e3          	bne	s1,s2,b20 <sdcard_read_sector+0x3c>
     b40:	00100593          	li	a1,1
     b44:	01000513          	li	a0,16
     b48:	20040413          	addi	s0,s0,512
     b4c:	00000097          	auipc	ra,0x0
     b50:	e38080e7          	jalr	-456(ra) # 984 <sdcard_get>
     b54:	00c12083          	lw	ra,12(sp)
     b58:	00040513          	mv	a0,s0
     b5c:	00812403          	lw	s0,8(sp)
     b60:	00412483          	lw	s1,4(sp)
     b64:	00012903          	lw	s2,0(sp)
     b68:	01010113          	addi	sp,sp,16
     b6c:	00008067          	ret

00000b70 <sdcard_preinit>:
     b70:	ff010113          	addi	sp,sp,-16
     b74:	000057b7          	lui	a5,0x5
     b78:	00812423          	sw	s0,8(sp)
     b7c:	90c7a403          	lw	s0,-1780(a5) # 490c <SDCARD>
     b80:	00112623          	sw	ra,12(sp)
     b84:	00600793          	li	a5,6
     b88:	01313537          	lui	a0,0x1313
     b8c:	00f42023          	sw	a5,0(s0)
     b90:	d0050513          	addi	a0,a0,-768 # 1312d00 <__stacktop+0x1302d00>
     b94:	00000097          	auipc	ra,0x0
     b98:	c10080e7          	jalr	-1008(ra) # 7a4 <pause>
     b9c:	0a000793          	li	a5,160
     ba0:	00000713          	li	a4,0
     ba4:	00676693          	ori	a3,a4,6
     ba8:	00d42023          	sw	a3,0(s0)
     bac:	fff78793          	addi	a5,a5,-1
     bb0:	00174713          	xori	a4,a4,1
     bb4:	fe0798e3          	bnez	a5,ba4 <sdcard_preinit+0x34>
     bb8:	00600793          	li	a5,6
     bbc:	00c12083          	lw	ra,12(sp)
     bc0:	00f42023          	sw	a5,0(s0)
     bc4:	00812403          	lw	s0,8(sp)
     bc8:	01010113          	addi	sp,sp,16
     bcc:	00008067          	ret

00000bd0 <sdcard_init>:
     bd0:	000007b7          	lui	a5,0x0
     bd4:	7b878793          	addi	a5,a5,1976 # 7b8 <sdcard_idle>
     bd8:	00005737          	lui	a4,0x5
     bdc:	fe010113          	addi	sp,sp,-32
     be0:	c2f72823          	sw	a5,-976(a4) # 4c30 <sdcard_while_loading_callback>
     be4:	000057b7          	lui	a5,0x5
     be8:	00812c23          	sw	s0,24(sp)
     bec:	00912a23          	sw	s1,20(sp)
     bf0:	00112e23          	sw	ra,28(sp)
     bf4:	8fc78493          	addi	s1,a5,-1796 # 48fc <cmd0>
     bf8:	0ff00413          	li	s0,255
     bfc:	00000097          	auipc	ra,0x0
     c00:	f74080e7          	jalr	-140(ra) # b70 <sdcard_preinit>
     c04:	00048513          	mv	a0,s1
     c08:	00000097          	auipc	ra,0x0
     c0c:	df4080e7          	jalr	-524(ra) # 9fc <sdcard_cmd>
     c10:	00100593          	li	a1,1
     c14:	00800513          	li	a0,8
     c18:	00000097          	auipc	ra,0x0
     c1c:	d6c080e7          	jalr	-660(ra) # 984 <sdcard_get>
     c20:	00a12623          	sw	a0,12(sp)
     c24:	00000097          	auipc	ra,0x0
     c28:	bac080e7          	jalr	-1108(ra) # 7d0 <sdcard_ponder>
     c2c:	00c12503          	lw	a0,12(sp)
     c30:	00851c63          	bne	a0,s0,c48 <sdcard_init+0x78>
     c34:	01313537          	lui	a0,0x1313
     c38:	d0050513          	addi	a0,a0,-768 # 1312d00 <__stacktop+0x1302d00>
     c3c:	00000097          	auipc	ra,0x0
     c40:	b68080e7          	jalr	-1176(ra) # 7a4 <pause>
     c44:	fb9ff06f          	j	bfc <sdcard_init+0x2c>
     c48:	00005537          	lui	a0,0x5
     c4c:	8f450513          	addi	a0,a0,-1804 # 48f4 <cmd8>
     c50:	00000097          	auipc	ra,0x0
     c54:	dac080e7          	jalr	-596(ra) # 9fc <sdcard_cmd>
     c58:	00100593          	li	a1,1
     c5c:	02800513          	li	a0,40
     c60:	00000097          	auipc	ra,0x0
     c64:	d24080e7          	jalr	-732(ra) # 984 <sdcard_get>
     c68:	00000097          	auipc	ra,0x0
     c6c:	b68080e7          	jalr	-1176(ra) # 7d0 <sdcard_ponder>
     c70:	000057b7          	lui	a5,0x5
     c74:	8ec78413          	addi	s0,a5,-1812 # 48ec <cmd55>
     c78:	000057b7          	lui	a5,0x5
     c7c:	8e478493          	addi	s1,a5,-1820 # 48e4 <acmd41>
     c80:	00040513          	mv	a0,s0
     c84:	00000097          	auipc	ra,0x0
     c88:	d78080e7          	jalr	-648(ra) # 9fc <sdcard_cmd>
     c8c:	00100593          	li	a1,1
     c90:	00800513          	li	a0,8
     c94:	00000097          	auipc	ra,0x0
     c98:	cf0080e7          	jalr	-784(ra) # 984 <sdcard_get>
     c9c:	00000097          	auipc	ra,0x0
     ca0:	b34080e7          	jalr	-1228(ra) # 7d0 <sdcard_ponder>
     ca4:	00048513          	mv	a0,s1
     ca8:	00000097          	auipc	ra,0x0
     cac:	d54080e7          	jalr	-684(ra) # 9fc <sdcard_cmd>
     cb0:	00100593          	li	a1,1
     cb4:	00800513          	li	a0,8
     cb8:	00000097          	auipc	ra,0x0
     cbc:	ccc080e7          	jalr	-820(ra) # 984 <sdcard_get>
     cc0:	00a12623          	sw	a0,12(sp)
     cc4:	00000097          	auipc	ra,0x0
     cc8:	b0c080e7          	jalr	-1268(ra) # 7d0 <sdcard_ponder>
     ccc:	00c12503          	lw	a0,12(sp)
     cd0:	00050c63          	beqz	a0,ce8 <sdcard_init+0x118>
     cd4:	001e8537          	lui	a0,0x1e8
     cd8:	48050513          	addi	a0,a0,1152 # 1e8480 <__stacktop+0x1d8480>
     cdc:	00000097          	auipc	ra,0x0
     ce0:	ac8080e7          	jalr	-1336(ra) # 7a4 <pause>
     ce4:	f9dff06f          	j	c80 <sdcard_init+0xb0>
     ce8:	00005537          	lui	a0,0x5
     cec:	8dc50513          	addi	a0,a0,-1828 # 48dc <cmd16>
     cf0:	00000097          	auipc	ra,0x0
     cf4:	d0c080e7          	jalr	-756(ra) # 9fc <sdcard_cmd>
     cf8:	00100593          	li	a1,1
     cfc:	00800513          	li	a0,8
     d00:	00000097          	auipc	ra,0x0
     d04:	c84080e7          	jalr	-892(ra) # 984 <sdcard_get>
     d08:	01812403          	lw	s0,24(sp)
     d0c:	01c12083          	lw	ra,28(sp)
     d10:	01412483          	lw	s1,20(sp)
     d14:	02010113          	addi	sp,sp,32
     d18:	00000317          	auipc	t1,0x0
     d1c:	ab830067          	jr	-1352(t1) # 7d0 <sdcard_ponder>

00000d20 <sdcard_readsector>:
     d20:	04060663          	beqz	a2,d6c <sdcard_readsector+0x4c>
     d24:	ff010113          	addi	sp,sp,-16
     d28:	00812423          	sw	s0,8(sp)
     d2c:	00912223          	sw	s1,4(sp)
     d30:	00112623          	sw	ra,12(sp)
     d34:	00050413          	mv	s0,a0
     d38:	00a604b3          	add	s1,a2,a0
     d3c:	00040513          	mv	a0,s0
     d40:	00000097          	auipc	ra,0x0
     d44:	da4080e7          	jalr	-604(ra) # ae4 <sdcard_read_sector>
     d48:	00140413          	addi	s0,s0,1
     d4c:	00050593          	mv	a1,a0
     d50:	fe9416e3          	bne	s0,s1,d3c <sdcard_readsector+0x1c>
     d54:	00c12083          	lw	ra,12(sp)
     d58:	00812403          	lw	s0,8(sp)
     d5c:	00412483          	lw	s1,4(sp)
     d60:	00100513          	li	a0,1
     d64:	01010113          	addi	sp,sp,16
     d68:	00008067          	ret
     d6c:	00000513          	li	a0,0
     d70:	00008067          	ret

00000d74 <sdcard_writesector>:
     d74:	00000513          	li	a0,0
     d78:	00008067          	ret

00000d7c <__divsi3>:
     d7c:	06054063          	bltz	a0,ddc <__umodsi3+0x10>
     d80:	0605c663          	bltz	a1,dec <__umodsi3+0x20>

00000d84 <__udivsi3>:
     d84:	00058613          	mv	a2,a1
     d88:	00050593          	mv	a1,a0
     d8c:	fff00513          	li	a0,-1
     d90:	02060c63          	beqz	a2,dc8 <__udivsi3+0x44>
     d94:	00100693          	li	a3,1
     d98:	00b67a63          	bgeu	a2,a1,dac <__udivsi3+0x28>
     d9c:	00c05863          	blez	a2,dac <__udivsi3+0x28>
     da0:	00161613          	slli	a2,a2,0x1
     da4:	00169693          	slli	a3,a3,0x1
     da8:	feb66ae3          	bltu	a2,a1,d9c <__udivsi3+0x18>
     dac:	00000513          	li	a0,0
     db0:	00c5e663          	bltu	a1,a2,dbc <__udivsi3+0x38>
     db4:	40c585b3          	sub	a1,a1,a2
     db8:	00d56533          	or	a0,a0,a3
     dbc:	0016d693          	srli	a3,a3,0x1
     dc0:	00165613          	srli	a2,a2,0x1
     dc4:	fe0696e3          	bnez	a3,db0 <__udivsi3+0x2c>
     dc8:	00008067          	ret

00000dcc <__umodsi3>:
     dcc:	00008293          	mv	t0,ra
     dd0:	fb5ff0ef          	jal	d84 <__udivsi3>
     dd4:	00058513          	mv	a0,a1
     dd8:	00028067          	jr	t0
     ddc:	40a00533          	neg	a0,a0
     de0:	0005d863          	bgez	a1,df0 <__umodsi3+0x24>
     de4:	40b005b3          	neg	a1,a1
     de8:	f95ff06f          	j	d7c <__divsi3>
     dec:	40b005b3          	neg	a1,a1
     df0:	00008293          	mv	t0,ra
     df4:	f89ff0ef          	jal	d7c <__divsi3>
     df8:	40a00533          	neg	a0,a0
     dfc:	00028067          	jr	t0

00000e00 <__modsi3>:
     e00:	00008293          	mv	t0,ra
     e04:	0005ca63          	bltz	a1,e18 <__modsi3+0x18>
     e08:	00054c63          	bltz	a0,e20 <__modsi3+0x20>
     e0c:	f79ff0ef          	jal	d84 <__udivsi3>
     e10:	00058513          	mv	a0,a1
     e14:	00028067          	jr	t0
     e18:	40b005b3          	neg	a1,a1
     e1c:	fe0558e3          	bgez	a0,e0c <__modsi3+0xc>
     e20:	40a00533          	neg	a0,a0
     e24:	f61ff0ef          	jal	d84 <__udivsi3>
     e28:	40b00533          	neg	a0,a1
     e2c:	00028067          	jr	t0

00000e30 <memset>:
     e30:	00c50633          	add	a2,a0,a2
     e34:	00050793          	mv	a5,a0
     e38:	00c79463          	bne	a5,a2,e40 <memset+0x10>
     e3c:	00008067          	ret
     e40:	00178793          	addi	a5,a5,1
     e44:	feb78fa3          	sb	a1,-1(a5)
     e48:	ff1ff06f          	j	e38 <memset+0x8>

00000e4c <memcpy>:
     e4c:	00000793          	li	a5,0
     e50:	00c79463          	bne	a5,a2,e58 <memcpy+0xc>
     e54:	00008067          	ret
     e58:	00f58733          	add	a4,a1,a5
     e5c:	00074683          	lbu	a3,0(a4)
     e60:	00f50733          	add	a4,a0,a5
     e64:	00178793          	addi	a5,a5,1
     e68:	00d70023          	sb	a3,0(a4)
     e6c:	fe5ff06f          	j	e50 <memcpy+0x4>

00000e70 <strlen>:
     e70:	00000793          	li	a5,0
     e74:	00f50733          	add	a4,a0,a5
     e78:	00074703          	lbu	a4,0(a4)
     e7c:	00071663          	bnez	a4,e88 <strlen+0x18>
     e80:	00078513          	mv	a0,a5
     e84:	00008067          	ret
     e88:	00178793          	addi	a5,a5,1
     e8c:	fe9ff06f          	j	e74 <strlen+0x4>

00000e90 <strncmp>:
     e90:	00000793          	li	a5,0
     e94:	00c79663          	bne	a5,a2,ea0 <strncmp+0x10>
     e98:	00000513          	li	a0,0
     e9c:	00008067          	ret
     ea0:	00f50733          	add	a4,a0,a5
     ea4:	00074683          	lbu	a3,0(a4)
     ea8:	00f58733          	add	a4,a1,a5
     eac:	00074703          	lbu	a4,0(a4)
     eb0:	00e6e863          	bltu	a3,a4,ec0 <strncmp+0x30>
     eb4:	00d76a63          	bltu	a4,a3,ec8 <strncmp+0x38>
     eb8:	00178793          	addi	a5,a5,1
     ebc:	fd9ff06f          	j	e94 <strncmp+0x4>
     ec0:	fff00513          	li	a0,-1
     ec4:	00008067          	ret
     ec8:	00100513          	li	a0,1
     ecc:	00008067          	ret

00000ed0 <strncpy>:
     ed0:	00000793          	li	a5,0
     ed4:	00c79463          	bne	a5,a2,edc <strncpy+0xc>
     ed8:	00008067          	ret
     edc:	00f58733          	add	a4,a1,a5
     ee0:	00074683          	lbu	a3,0(a4)
     ee4:	00f50733          	add	a4,a0,a5
     ee8:	00178793          	addi	a5,a5,1
     eec:	00d70023          	sb	a3,0(a4)
     ef0:	fe5ff06f          	j	ed4 <strncpy+0x4>

00000ef4 <strcat>:
     ef4:	00050793          	mv	a5,a0
     ef8:	0007c683          	lbu	a3,0(a5)
     efc:	00078713          	mv	a4,a5
     f00:	00178793          	addi	a5,a5,1
     f04:	fe069ae3          	bnez	a3,ef8 <strcat+0x4>
     f08:	0005c783          	lbu	a5,0(a1)
     f0c:	00158593          	addi	a1,a1,1
     f10:	00170713          	addi	a4,a4,1
     f14:	fef70fa3          	sb	a5,-1(a4)
     f18:	fe0798e3          	bnez	a5,f08 <strcat+0x14>
     f1c:	00008067          	ret

00000f20 <oled_wait>:
     f20:	00000013          	nop
     f24:	00000013          	nop
     f28:	00000013          	nop
     f2c:	00000013          	nop
     f30:	00000013          	nop
     f34:	00000013          	nop
     f38:	00000013          	nop
     f3c:	00008067          	ret

00000f40 <oled_init_mode>:
     f40:	000057b7          	lui	a5,0x5
     f44:	9107a703          	lw	a4,-1776(a5) # 4910 <OLED_RST>
     f48:	fe010113          	addi	sp,sp,-32
     f4c:	00112e23          	sw	ra,28(sp)
     f50:	00812c23          	sw	s0,24(sp)
     f54:	00072023          	sw	zero,0(a4)
     f58:	00040737          	lui	a4,0x40
     f5c:	00000013          	nop
     f60:	fff70713          	addi	a4,a4,-1 # 3ffff <__stacktop+0x2ffff>
     f64:	fe071ce3          	bnez	a4,f5c <oled_init_mode+0x1c>
     f68:	9107a703          	lw	a4,-1776(a5)
     f6c:	00100693          	li	a3,1
     f70:	00d72023          	sw	a3,0(a4)
     f74:	00040737          	lui	a4,0x40
     f78:	00000013          	nop
     f7c:	fff70713          	addi	a4,a4,-1 # 3ffff <__stacktop+0x2ffff>
     f80:	fe071ce3          	bnez	a4,f78 <oled_init_mode+0x38>
     f84:	9107a783          	lw	a5,-1776(a5)
     f88:	0007a023          	sw	zero,0(a5)
     f8c:	000407b7          	lui	a5,0x40
     f90:	00000013          	nop
     f94:	fff78793          	addi	a5,a5,-1 # 3ffff <__stacktop+0x2ffff>
     f98:	fe079ce3          	bnez	a5,f90 <oled_init_mode+0x50>
     f9c:	00005737          	lui	a4,0x5
     fa0:	91472783          	lw	a5,-1772(a4) # 4914 <OLED>
     fa4:	2af00693          	li	a3,687
     fa8:	00d7a023          	sw	a3,0(a5)
     fac:	000407b7          	lui	a5,0x40
     fb0:	00000013          	nop
     fb4:	fff78793          	addi	a5,a5,-1 # 3ffff <__stacktop+0x2ffff>
     fb8:	fe079ce3          	bnez	a5,fb0 <oled_init_mode+0x70>
     fbc:	91472403          	lw	s0,-1772(a4)
     fc0:	2a000793          	li	a5,672
     fc4:	00a12623          	sw	a0,12(sp)
     fc8:	00f42023          	sw	a5,0(s0)
     fcc:	00000097          	auipc	ra,0x0
     fd0:	f54080e7          	jalr	-172(ra) # f20 <oled_wait>
     fd4:	00c12503          	lw	a0,12(sp)
     fd8:	4a000793          	li	a5,1184
     fdc:	00050463          	beqz	a0,fe4 <oled_init_mode+0xa4>
     fe0:	42000793          	li	a5,1056
     fe4:	00f42023          	sw	a5,0(s0)
     fe8:	00000097          	auipc	ra,0x0
     fec:	f38080e7          	jalr	-200(ra) # f20 <oled_wait>
     ff0:	2fd00793          	li	a5,765
     ff4:	00f42023          	sw	a5,0(s0)
     ff8:	00000097          	auipc	ra,0x0
     ffc:	f28080e7          	jalr	-216(ra) # f20 <oled_wait>
    1000:	4b100793          	li	a5,1201
    1004:	00f42023          	sw	a5,0(s0)
    1008:	00000097          	auipc	ra,0x0
    100c:	f18080e7          	jalr	-232(ra) # f20 <oled_wait>
    1010:	2a200793          	li	a5,674
    1014:	00f42023          	sw	a5,0(s0)
    1018:	00000097          	auipc	ra,0x0
    101c:	f08080e7          	jalr	-248(ra) # f20 <oled_wait>
    1020:	40000793          	li	a5,1024
    1024:	00f42023          	sw	a5,0(s0)
    1028:	01812403          	lw	s0,24(sp)
    102c:	01c12083          	lw	ra,28(sp)
    1030:	02010113          	addi	sp,sp,32
    1034:	00000317          	auipc	t1,0x0
    1038:	eec30067          	jr	-276(t1) # f20 <oled_wait>

0000103c <oled_init>:
    103c:	00000513          	li	a0,0
    1040:	00000317          	auipc	t1,0x0
    1044:	f0030067          	jr	-256(t1) # f40 <oled_init_mode>

00001048 <oled_fullscreen>:
    1048:	ff010113          	addi	sp,sp,-16
    104c:	000057b7          	lui	a5,0x5
    1050:	00812423          	sw	s0,8(sp)
    1054:	9147a403          	lw	s0,-1772(a5) # 4914 <OLED>
    1058:	00112623          	sw	ra,12(sp)
    105c:	00912223          	sw	s1,4(sp)
    1060:	01212023          	sw	s2,0(sp)
    1064:	21500793          	li	a5,533
    1068:	00f42023          	sw	a5,0(s0)
    106c:	40000913          	li	s2,1024
    1070:	00000097          	auipc	ra,0x0
    1074:	eb0080e7          	jalr	-336(ra) # f20 <oled_wait>
    1078:	47f00493          	li	s1,1151
    107c:	01242023          	sw	s2,0(s0)
    1080:	00000097          	auipc	ra,0x0
    1084:	ea0080e7          	jalr	-352(ra) # f20 <oled_wait>
    1088:	00942023          	sw	s1,0(s0)
    108c:	00000097          	auipc	ra,0x0
    1090:	e94080e7          	jalr	-364(ra) # f20 <oled_wait>
    1094:	27500793          	li	a5,629
    1098:	00f42023          	sw	a5,0(s0)
    109c:	00000097          	auipc	ra,0x0
    10a0:	e84080e7          	jalr	-380(ra) # f20 <oled_wait>
    10a4:	01242023          	sw	s2,0(s0)
    10a8:	00000097          	auipc	ra,0x0
    10ac:	e78080e7          	jalr	-392(ra) # f20 <oled_wait>
    10b0:	00942023          	sw	s1,0(s0)
    10b4:	00000097          	auipc	ra,0x0
    10b8:	e6c080e7          	jalr	-404(ra) # f20 <oled_wait>
    10bc:	25c00793          	li	a5,604
    10c0:	00f42023          	sw	a5,0(s0)
    10c4:	00812403          	lw	s0,8(sp)
    10c8:	00c12083          	lw	ra,12(sp)
    10cc:	00412483          	lw	s1,4(sp)
    10d0:	00012903          	lw	s2,0(sp)
    10d4:	01010113          	addi	sp,sp,16
    10d8:	00000317          	auipc	t1,0x0
    10dc:	e4830067          	jr	-440(t1) # f20 <oled_wait>

000010e0 <oled_wait>:
    10e0:	00000013          	nop
    10e4:	00000013          	nop
    10e8:	00000013          	nop
    10ec:	00000013          	nop
    10f0:	00000013          	nop
    10f4:	00000013          	nop
    10f8:	00000013          	nop
    10fc:	00008067          	ret

00001100 <display_framebuffer>:
    1100:	00007537          	lui	a0,0x7
    1104:	ddc50513          	addi	a0,a0,-548 # 6ddc <framebuffer>
    1108:	00008067          	ret

0000110c <display_set_cursor>:
    110c:	000057b7          	lui	a5,0x5
    1110:	c2a7ae23          	sw	a0,-964(a5) # 4c3c <cursor_x>
    1114:	000057b7          	lui	a5,0x5
    1118:	c2b7ac23          	sw	a1,-968(a5) # 4c38 <cursor_y>
    111c:	00008067          	ret

00001120 <display_set_front_back_color>:
    1120:	000057b7          	lui	a5,0x5
    1124:	c2a78aa3          	sb	a0,-971(a5) # 4c35 <front_color>
    1128:	000057b7          	lui	a5,0x5
    112c:	c2b78a23          	sb	a1,-972(a5) # 4c34 <back_color>
    1130:	00008067          	ret

00001134 <display_putchar>:
    1134:	00a00793          	li	a5,10
    1138:	000055b7          	lui	a1,0x5
    113c:	02f51663          	bne	a0,a5,1168 <display_putchar+0x34>
    1140:	00005737          	lui	a4,0x5
    1144:	c3872783          	lw	a5,-968(a4) # 4c38 <cursor_y>
    1148:	c205ae23          	sw	zero,-964(a1) # 4c3c <cursor_x>
    114c:	00878793          	addi	a5,a5,8
    1150:	c2f72c23          	sw	a5,-968(a4)
    1154:	07f00713          	li	a4,127
    1158:	00f75663          	bge	a4,a5,1164 <display_putchar+0x30>
    115c:	000057b7          	lui	a5,0x5
    1160:	c207ac23          	sw	zero,-968(a5) # 4c38 <cursor_y>
    1164:	00008067          	ret
    1168:	ff010113          	addi	sp,sp,-16
    116c:	00812623          	sw	s0,12(sp)
    1170:	01f00713          	li	a4,31
    1174:	c3c5a783          	lw	a5,-964(a1)
    1178:	08a75a63          	bge	a4,a0,120c <display_putchar+0xd8>
    117c:	00005737          	lui	a4,0x5
    1180:	c3474f83          	lbu	t6,-972(a4) # 4c34 <back_color>
    1184:	00005737          	lui	a4,0x5
    1188:	c3574283          	lbu	t0,-971(a4) # 4c35 <front_color>
    118c:	000056b7          	lui	a3,0x5
    1190:	00251713          	slli	a4,a0,0x2
    1194:	a1868693          	addi	a3,a3,-1512 # 4a18 <font>
    1198:	00a70733          	add	a4,a4,a0
    119c:	00d70733          	add	a4,a4,a3
    11a0:	000056b7          	lui	a3,0x5
    11a4:	c386a683          	lw	a3,-968(a3) # 4c38 <cursor_y>
    11a8:	00007637          	lui	a2,0x7
    11ac:	ddc60613          	addi	a2,a2,-548 # 6ddc <framebuffer>
    11b0:	00c686b3          	add	a3,a3,a2
    11b4:	00779613          	slli	a2,a5,0x7
    11b8:	00c686b3          	add	a3,a3,a2
    11bc:	00100f13          	li	t5,1
    11c0:	00000613          	li	a2,0
    11c4:	00500393          	li	t2,5
    11c8:	00800413          	li	s0,8
    11cc:	00cf1eb3          	sll	t4,t5,a2
    11d0:	00d608b3          	add	a7,a2,a3
    11d4:	00070813          	mv	a6,a4
    11d8:	00000513          	li	a0,0
    11dc:	f6084303          	lbu	t1,-160(a6)
    11e0:	00028e13          	mv	t3,t0
    11e4:	01d37333          	and	t1,t1,t4
    11e8:	00031463          	bnez	t1,11f0 <display_putchar+0xbc>
    11ec:	000f8e13          	mv	t3,t6
    11f0:	01c88023          	sb	t3,0(a7)
    11f4:	00150513          	addi	a0,a0,1
    11f8:	00180813          	addi	a6,a6,1
    11fc:	08088893          	addi	a7,a7,128
    1200:	fc751ee3          	bne	a0,t2,11dc <display_putchar+0xa8>
    1204:	00160613          	addi	a2,a2,1
    1208:	fc8612e3          	bne	a2,s0,11cc <display_putchar+0x98>
    120c:	00578793          	addi	a5,a5,5
    1210:	07f00713          	li	a4,127
    1214:	00f74663          	blt	a4,a5,1220 <display_putchar+0xec>
    1218:	c2f5ae23          	sw	a5,-964(a1)
    121c:	0240006f          	j	1240 <display_putchar+0x10c>
    1220:	000056b7          	lui	a3,0x5
    1224:	c386a783          	lw	a5,-968(a3) # 4c38 <cursor_y>
    1228:	c205ae23          	sw	zero,-964(a1)
    122c:	00878793          	addi	a5,a5,8
    1230:	c2f6ac23          	sw	a5,-968(a3)
    1234:	00f75663          	bge	a4,a5,1240 <display_putchar+0x10c>
    1238:	000057b7          	lui	a5,0x5
    123c:	c207ac23          	sw	zero,-968(a5) # 4c38 <cursor_y>
    1240:	00c12403          	lw	s0,12(sp)
    1244:	01010113          	addi	sp,sp,16
    1248:	00008067          	ret

0000124c <display_refresh>:
    124c:	fe010113          	addi	sp,sp,-32
    1250:	000057b7          	lui	a5,0x5
    1254:	01212823          	sw	s2,16(sp)
    1258:	9147a903          	lw	s2,-1772(a5) # 4914 <OLED>
    125c:	01312623          	sw	s3,12(sp)
    1260:	000079b7          	lui	s3,0x7
    1264:	00912a23          	sw	s1,20(sp)
    1268:	01412423          	sw	s4,8(sp)
    126c:	00112e23          	sw	ra,28(sp)
    1270:	00812c23          	sw	s0,24(sp)
    1274:	00000493          	li	s1,0
    1278:	ddc98993          	addi	s3,s3,-548 # 6ddc <framebuffer>
    127c:	00004a37          	lui	s4,0x4
    1280:	013487b3          	add	a5,s1,s3
    1284:	0007c403          	lbu	s0,0(a5)
    1288:	00148493          	addi	s1,s1,1
    128c:	00245413          	srli	s0,s0,0x2
    1290:	40046413          	ori	s0,s0,1024
    1294:	00892023          	sw	s0,0(s2)
    1298:	00000097          	auipc	ra,0x0
    129c:	e48080e7          	jalr	-440(ra) # 10e0 <oled_wait>
    12a0:	00892023          	sw	s0,0(s2)
    12a4:	00000097          	auipc	ra,0x0
    12a8:	e3c080e7          	jalr	-452(ra) # 10e0 <oled_wait>
    12ac:	00892023          	sw	s0,0(s2)
    12b0:	00000097          	auipc	ra,0x0
    12b4:	e30080e7          	jalr	-464(ra) # 10e0 <oled_wait>
    12b8:	fd4494e3          	bne	s1,s4,1280 <display_refresh+0x34>
    12bc:	01c12083          	lw	ra,28(sp)
    12c0:	01812403          	lw	s0,24(sp)
    12c4:	01412483          	lw	s1,20(sp)
    12c8:	01012903          	lw	s2,16(sp)
    12cc:	00c12983          	lw	s3,12(sp)
    12d0:	00812a03          	lw	s4,8(sp)
    12d4:	02010113          	addi	sp,sp,32
    12d8:	00008067          	ret

000012dc <print_string>:
    12dc:	ff010113          	addi	sp,sp,-16
    12e0:	00812423          	sw	s0,8(sp)
    12e4:	00912223          	sw	s1,4(sp)
    12e8:	00112623          	sw	ra,12(sp)
    12ec:	00050413          	mv	s0,a0
    12f0:	000054b7          	lui	s1,0x5
    12f4:	00044503          	lbu	a0,0(s0)
    12f8:	00051c63          	bnez	a0,1310 <print_string+0x34>
    12fc:	00c12083          	lw	ra,12(sp)
    1300:	00812403          	lw	s0,8(sp)
    1304:	00412483          	lw	s1,4(sp)
    1308:	01010113          	addi	sp,sp,16
    130c:	00008067          	ret
    1310:	c404a783          	lw	a5,-960(s1) # 4c40 <f_putchar>
    1314:	00140413          	addi	s0,s0,1
    1318:	000780e7          	jalr	a5
    131c:	fd9ff06f          	j	12f4 <print_string+0x18>

00001320 <print_dec>:
    1320:	ef010113          	addi	sp,sp,-272
    1324:	10812423          	sw	s0,264(sp)
    1328:	10912223          	sw	s1,260(sp)
    132c:	10112623          	sw	ra,268(sp)
    1330:	11212023          	sw	s2,256(sp)
    1334:	00050413          	mv	s0,a0
    1338:	000054b7          	lui	s1,0x5
    133c:	08045063          	bgez	s0,13bc <print_dec+0x9c>
    1340:	c404a783          	lw	a5,-960(s1) # 4c40 <f_putchar>
    1344:	02d00513          	li	a0,45
    1348:	40800433          	neg	s0,s0
    134c:	000780e7          	jalr	a5
    1350:	fedff06f          	j	133c <print_dec+0x1c>
    1354:	00040513          	mv	a0,s0
    1358:	00a00593          	li	a1,10
    135c:	00000097          	auipc	ra,0x0
    1360:	a20080e7          	jalr	-1504(ra) # d7c <__divsi3>
    1364:	00251793          	slli	a5,a0,0x2
    1368:	00f507b3          	add	a5,a0,a5
    136c:	00179793          	slli	a5,a5,0x1
    1370:	40f40433          	sub	s0,s0,a5
    1374:	00148493          	addi	s1,s1,1
    1378:	fe848fa3          	sb	s0,-1(s1)
    137c:	00050413          	mv	s0,a0
    1380:	fc041ae3          	bnez	s0,1354 <print_dec+0x34>
    1384:	fd2488e3          	beq	s1,s2,1354 <print_dec+0x34>
    1388:	00005437          	lui	s0,0x5
    138c:	fff4c503          	lbu	a0,-1(s1)
    1390:	c4042783          	lw	a5,-960(s0) # 4c40 <f_putchar>
    1394:	fff48493          	addi	s1,s1,-1
    1398:	03050513          	addi	a0,a0,48
    139c:	000780e7          	jalr	a5
    13a0:	ff2496e3          	bne	s1,s2,138c <print_dec+0x6c>
    13a4:	10c12083          	lw	ra,268(sp)
    13a8:	10812403          	lw	s0,264(sp)
    13ac:	10412483          	lw	s1,260(sp)
    13b0:	10012903          	lw	s2,256(sp)
    13b4:	11010113          	addi	sp,sp,272
    13b8:	00008067          	ret
    13bc:	00010493          	mv	s1,sp
    13c0:	00010913          	mv	s2,sp
    13c4:	fbdff06f          	j	1380 <print_dec+0x60>

000013c8 <print_hex_digits>:
    13c8:	fe010113          	addi	sp,sp,-32
    13cc:	00812c23          	sw	s0,24(sp)
    13d0:	00912a23          	sw	s1,20(sp)
    13d4:	fff58413          	addi	s0,a1,-1
    13d8:	000054b7          	lui	s1,0x5
    13dc:	01212823          	sw	s2,16(sp)
    13e0:	01312623          	sw	s3,12(sp)
    13e4:	00112e23          	sw	ra,28(sp)
    13e8:	00050993          	mv	s3,a0
    13ec:	00241413          	slli	s0,s0,0x2
    13f0:	9d048493          	addi	s1,s1,-1584 # 49d0 <LEDS+0xb8>
    13f4:	00005937          	lui	s2,0x5
    13f8:	02045063          	bgez	s0,1418 <print_hex_digits+0x50>
    13fc:	01c12083          	lw	ra,28(sp)
    1400:	01812403          	lw	s0,24(sp)
    1404:	01412483          	lw	s1,20(sp)
    1408:	01012903          	lw	s2,16(sp)
    140c:	00c12983          	lw	s3,12(sp)
    1410:	02010113          	addi	sp,sp,32
    1414:	00008067          	ret
    1418:	0089d7b3          	srl	a5,s3,s0
    141c:	00f7f793          	andi	a5,a5,15
    1420:	00f487b3          	add	a5,s1,a5
    1424:	c4092703          	lw	a4,-960(s2) # 4c40 <f_putchar>
    1428:	0007c503          	lbu	a0,0(a5)
    142c:	ffc40413          	addi	s0,s0,-4
    1430:	000700e7          	jalr	a4
    1434:	fc5ff06f          	j	13f8 <print_hex_digits+0x30>

00001438 <print_hex>:
    1438:	00800593          	li	a1,8
    143c:	00000317          	auipc	t1,0x0
    1440:	f8c30067          	jr	-116(t1) # 13c8 <print_hex_digits>

00001444 <printf>:
    1444:	fa010113          	addi	sp,sp,-96
    1448:	04f12a23          	sw	a5,84(sp)
    144c:	04410793          	addi	a5,sp,68
    1450:	02812c23          	sw	s0,56(sp)
    1454:	02912a23          	sw	s1,52(sp)
    1458:	03212823          	sw	s2,48(sp)
    145c:	03312623          	sw	s3,44(sp)
    1460:	03412423          	sw	s4,40(sp)
    1464:	03512223          	sw	s5,36(sp)
    1468:	03612023          	sw	s6,32(sp)
    146c:	02112e23          	sw	ra,60(sp)
    1470:	01712e23          	sw	s7,28(sp)
    1474:	00050413          	mv	s0,a0
    1478:	04b12223          	sw	a1,68(sp)
    147c:	04c12423          	sw	a2,72(sp)
    1480:	04d12623          	sw	a3,76(sp)
    1484:	04e12823          	sw	a4,80(sp)
    1488:	05012c23          	sw	a6,88(sp)
    148c:	05112e23          	sw	a7,92(sp)
    1490:	00f12623          	sw	a5,12(sp)
    1494:	02500913          	li	s2,37
    1498:	000054b7          	lui	s1,0x5
    149c:	07300993          	li	s3,115
    14a0:	07800a13          	li	s4,120
    14a4:	06400a93          	li	s5,100
    14a8:	06300b13          	li	s6,99
    14ac:	00044503          	lbu	a0,0(s0)
    14b0:	02051863          	bnez	a0,14e0 <printf+0x9c>
    14b4:	03c12083          	lw	ra,60(sp)
    14b8:	03812403          	lw	s0,56(sp)
    14bc:	03412483          	lw	s1,52(sp)
    14c0:	03012903          	lw	s2,48(sp)
    14c4:	02c12983          	lw	s3,44(sp)
    14c8:	02812a03          	lw	s4,40(sp)
    14cc:	02412a83          	lw	s5,36(sp)
    14d0:	02012b03          	lw	s6,32(sp)
    14d4:	01c12b83          	lw	s7,28(sp)
    14d8:	06010113          	addi	sp,sp,96
    14dc:	00008067          	ret
    14e0:	09251a63          	bne	a0,s2,1574 <printf+0x130>
    14e4:	00144503          	lbu	a0,1(s0)
    14e8:	00140b93          	addi	s7,s0,1
    14ec:	03351463          	bne	a0,s3,1514 <printf+0xd0>
    14f0:	00c12783          	lw	a5,12(sp)
    14f4:	0007a503          	lw	a0,0(a5)
    14f8:	00478713          	addi	a4,a5,4
    14fc:	00e12623          	sw	a4,12(sp)
    1500:	00000097          	auipc	ra,0x0
    1504:	ddc080e7          	jalr	-548(ra) # 12dc <print_string>
    1508:	000b8413          	mv	s0,s7
    150c:	00140413          	addi	s0,s0,1
    1510:	f9dff06f          	j	14ac <printf+0x68>
    1514:	03451063          	bne	a0,s4,1534 <printf+0xf0>
    1518:	00c12783          	lw	a5,12(sp)
    151c:	0007a503          	lw	a0,0(a5)
    1520:	00478713          	addi	a4,a5,4
    1524:	00e12623          	sw	a4,12(sp)
    1528:	00000097          	auipc	ra,0x0
    152c:	f10080e7          	jalr	-240(ra) # 1438 <print_hex>
    1530:	fd9ff06f          	j	1508 <printf+0xc4>
    1534:	03551063          	bne	a0,s5,1554 <printf+0x110>
    1538:	00c12783          	lw	a5,12(sp)
    153c:	0007a503          	lw	a0,0(a5)
    1540:	00478713          	addi	a4,a5,4
    1544:	00e12623          	sw	a4,12(sp)
    1548:	00000097          	auipc	ra,0x0
    154c:	dd8080e7          	jalr	-552(ra) # 1320 <print_dec>
    1550:	fb9ff06f          	j	1508 <printf+0xc4>
    1554:	c404a783          	lw	a5,-960(s1) # 4c40 <f_putchar>
    1558:	01651a63          	bne	a0,s6,156c <printf+0x128>
    155c:	00c12703          	lw	a4,12(sp)
    1560:	00072503          	lw	a0,0(a4)
    1564:	00470693          	addi	a3,a4,4
    1568:	00d12623          	sw	a3,12(sp)
    156c:	000780e7          	jalr	a5
    1570:	f99ff06f          	j	1508 <printf+0xc4>
    1574:	c404a783          	lw	a5,-960(s1)
    1578:	000780e7          	jalr	a5
    157c:	f91ff06f          	j	150c <printf+0xc8>

00001580 <__mulsi3>:
    1580:	00050793          	mv	a5,a0
    1584:	00000513          	li	a0,0
    1588:	00079463          	bnez	a5,1590 <__mulsi3+0x10>
    158c:	00008067          	ret
    1590:	01f79693          	slli	a3,a5,0x1f
    1594:	41f6d713          	srai	a4,a3,0x1f
    1598:	00b77733          	and	a4,a4,a1
    159c:	00e50533          	add	a0,a0,a4
    15a0:	0017d793          	srli	a5,a5,0x1
    15a4:	00159593          	slli	a1,a1,0x1
    15a8:	fe1ff06f          	j	1588 <__mulsi3+0x8>

000015ac <fat_list_insert_last>:
    15ac:	00452783          	lw	a5,4(a0)
    15b0:	04079263          	bnez	a5,15f4 <fat_list_insert_last+0x48>
    15b4:	00052783          	lw	a5,0(a0)
    15b8:	00079c63          	bnez	a5,15d0 <fat_list_insert_last+0x24>
    15bc:	00b52023          	sw	a1,0(a0)
    15c0:	00b52223          	sw	a1,4(a0)
    15c4:	0005a023          	sw	zero,0(a1)
    15c8:	0005a223          	sw	zero,4(a1)
    15cc:	00008067          	ret
    15d0:	0007a703          	lw	a4,0(a5)
    15d4:	00f5a223          	sw	a5,4(a1)
    15d8:	00e5a023          	sw	a4,0(a1)
    15dc:	00071863          	bnez	a4,15ec <fat_list_insert_last+0x40>
    15e0:	00b52023          	sw	a1,0(a0)
    15e4:	00b7a023          	sw	a1,0(a5)
    15e8:	00008067          	ret
    15ec:	00b72223          	sw	a1,4(a4)
    15f0:	ff5ff06f          	j	15e4 <fat_list_insert_last+0x38>
    15f4:	0047a703          	lw	a4,4(a5)
    15f8:	00f5a023          	sw	a5,0(a1)
    15fc:	00e5a223          	sw	a4,4(a1)
    1600:	00071863          	bnez	a4,1610 <fat_list_insert_last+0x64>
    1604:	00b52223          	sw	a1,4(a0)
    1608:	00b7a223          	sw	a1,4(a5)
    160c:	00008067          	ret
    1610:	00b72023          	sw	a1,0(a4)
    1614:	ff5ff06f          	j	1608 <fat_list_insert_last+0x5c>

00001618 <FileString_StrCmpNoCase>:
    1618:	00050e93          	mv	t4,a0
    161c:	00000793          	li	a5,0
    1620:	01900e13          	li	t3,25
    1624:	00c79663          	bne	a5,a2,1630 <FileString_StrCmpNoCase+0x18>
    1628:	00000513          	li	a0,0
    162c:	00008067          	ret
    1630:	00fe8733          	add	a4,t4,a5
    1634:	00074803          	lbu	a6,0(a4)
    1638:	00f58733          	add	a4,a1,a5
    163c:	00074883          	lbu	a7,0(a4)
    1640:	fbf80713          	addi	a4,a6,-65
    1644:	0ff77713          	zext.b	a4,a4
    1648:	00080693          	mv	a3,a6
    164c:	00ee6663          	bltu	t3,a4,1658 <FileString_StrCmpNoCase+0x40>
    1650:	02080693          	addi	a3,a6,32
    1654:	0ff6f693          	zext.b	a3,a3
    1658:	fbf88313          	addi	t1,a7,-65
    165c:	0ff37313          	zext.b	t1,t1
    1660:	00088713          	mv	a4,a7
    1664:	006e6663          	bltu	t3,t1,1670 <FileString_StrCmpNoCase+0x58>
    1668:	02088713          	addi	a4,a7,32
    166c:	0ff77713          	zext.b	a4,a4
    1670:	40e68533          	sub	a0,a3,a4
    1674:	00e69863          	bne	a3,a4,1684 <FileString_StrCmpNoCase+0x6c>
    1678:	00178793          	addi	a5,a5,1
    167c:	00088463          	beqz	a7,1684 <FileString_StrCmpNoCase+0x6c>
    1680:	fa0812e3          	bnez	a6,1624 <FileString_StrCmpNoCase+0xc>
    1684:	00008067          	ret

00001688 <FileString_GetExtension>:
    1688:	00050793          	mv	a5,a0
    168c:	fff00713          	li	a4,-1
    1690:	02e00613          	li	a2,46
    1694:	0007c683          	lbu	a3,0(a5)
    1698:	00069663          	bnez	a3,16a4 <FileString_GetExtension+0x1c>
    169c:	00070513          	mv	a0,a4
    16a0:	00008067          	ret
    16a4:	00c69463          	bne	a3,a2,16ac <FileString_GetExtension+0x24>
    16a8:	40a78733          	sub	a4,a5,a0
    16ac:	00178793          	addi	a5,a5,1
    16b0:	fe5ff06f          	j	1694 <FileString_GetExtension+0xc>

000016b4 <fatfs_fat_writeback>:
    16b4:	00059e63          	bnez	a1,16d0 <fatfs_fat_writeback+0x1c>
    16b8:	00000513          	li	a0,0
    16bc:	00008067          	ret
    16c0:	00000513          	li	a0,0
    16c4:	01c12083          	lw	ra,28(sp)
    16c8:	02010113          	addi	sp,sp,32
    16cc:	00008067          	ret
    16d0:	2045a783          	lw	a5,516(a1)
    16d4:	04078e63          	beqz	a5,1730 <fatfs_fat_writeback+0x7c>
    16d8:	03852683          	lw	a3,56(a0)
    16dc:	00050793          	mv	a5,a0
    16e0:	04068663          	beqz	a3,172c <fatfs_fat_writeback+0x78>
    16e4:	0147a703          	lw	a4,20(a5)
    16e8:	2005a503          	lw	a0,512(a1)
    16ec:	0207a803          	lw	a6,32(a5)
    16f0:	00100613          	li	a2,1
    16f4:	fe010113          	addi	sp,sp,-32
    16f8:	40e607b3          	sub	a5,a2,a4
    16fc:	00112e23          	sw	ra,28(sp)
    1700:	00a787b3          	add	a5,a5,a0
    1704:	00f87663          	bgeu	a6,a5,1710 <fatfs_fat_writeback+0x5c>
    1708:	01070733          	add	a4,a4,a6
    170c:	40a70633          	sub	a2,a4,a0
    1710:	00b12623          	sw	a1,12(sp)
    1714:	000680e7          	jalr	a3
    1718:	fa0504e3          	beqz	a0,16c0 <fatfs_fat_writeback+0xc>
    171c:	00c12583          	lw	a1,12(sp)
    1720:	00100513          	li	a0,1
    1724:	2005a223          	sw	zero,516(a1)
    1728:	f9dff06f          	j	16c4 <fatfs_fat_writeback+0x10>
    172c:	2005a223          	sw	zero,516(a1)
    1730:	00100513          	li	a0,1
    1734:	00008067          	ret

00001738 <fatfs_fat_read_sector>:
    1738:	fe010113          	addi	sp,sp,-32
    173c:	01212823          	sw	s2,16(sp)
    1740:	25452903          	lw	s2,596(a0)
    1744:	00812c23          	sw	s0,24(sp)
    1748:	00112e23          	sw	ra,28(sp)
    174c:	00912a23          	sw	s1,20(sp)
    1750:	01312623          	sw	s3,12(sp)
    1754:	00000413          	li	s0,0
    1758:	04091463          	bnez	s2,17a0 <fatfs_fat_read_sector+0x68>
    175c:	25452783          	lw	a5,596(a0)
    1760:	00058493          	mv	s1,a1
    1764:	00050993          	mv	s3,a0
    1768:	20f42623          	sw	a5,524(s0)
    176c:	20442783          	lw	a5,516(s0)
    1770:	24852a23          	sw	s0,596(a0)
    1774:	08079863          	bnez	a5,1804 <fatfs_fat_read_sector+0xcc>
    1778:	0349a783          	lw	a5,52(s3)
    177c:	20942023          	sw	s1,512(s0)
    1780:	00100613          	li	a2,1
    1784:	00040593          	mv	a1,s0
    1788:	00048513          	mv	a0,s1
    178c:	000780e7          	jalr	a5
    1790:	08051463          	bnez	a0,1818 <fatfs_fat_read_sector+0xe0>
    1794:	fff00793          	li	a5,-1
    1798:	20f42023          	sw	a5,512(s0)
    179c:	0480006f          	j	17e4 <fatfs_fat_read_sector+0xac>
    17a0:	20092783          	lw	a5,512(s2)
    17a4:	00f5e663          	bltu	a1,a5,17b0 <fatfs_fat_read_sector+0x78>
    17a8:	00178713          	addi	a4,a5,1
    17ac:	02e5e463          	bltu	a1,a4,17d4 <fatfs_fat_read_sector+0x9c>
    17b0:	20c92783          	lw	a5,524(s2)
    17b4:	00079663          	bnez	a5,17c0 <fatfs_fat_read_sector+0x88>
    17b8:	00040a63          	beqz	s0,17cc <fatfs_fat_read_sector+0x94>
    17bc:	20042623          	sw	zero,524(s0)
    17c0:	00090413          	mv	s0,s2
    17c4:	20c92903          	lw	s2,524(s2)
    17c8:	f91ff06f          	j	1758 <fatfs_fat_read_sector+0x20>
    17cc:	24052a23          	sw	zero,596(a0)
    17d0:	ff1ff06f          	j	17c0 <fatfs_fat_read_sector+0x88>
    17d4:	40f585b3          	sub	a1,a1,a5
    17d8:	00959593          	slli	a1,a1,0x9
    17dc:	00b905b3          	add	a1,s2,a1
    17e0:	20b92423          	sw	a1,520(s2)
    17e4:	01c12083          	lw	ra,28(sp)
    17e8:	01812403          	lw	s0,24(sp)
    17ec:	01412483          	lw	s1,20(sp)
    17f0:	00c12983          	lw	s3,12(sp)
    17f4:	00090513          	mv	a0,s2
    17f8:	01012903          	lw	s2,16(sp)
    17fc:	02010113          	addi	sp,sp,32
    1800:	00008067          	ret
    1804:	00040593          	mv	a1,s0
    1808:	00000097          	auipc	ra,0x0
    180c:	eac080e7          	jalr	-340(ra) # 16b4 <fatfs_fat_writeback>
    1810:	f60514e3          	bnez	a0,1778 <fatfs_fat_read_sector+0x40>
    1814:	fd1ff06f          	j	17e4 <fatfs_fat_read_sector+0xac>
    1818:	20842423          	sw	s0,520(s0)
    181c:	00040913          	mv	s2,s0
    1820:	fc5ff06f          	j	17e4 <fatfs_fat_read_sector+0xac>

00001824 <_allocate_file>:
    1824:	000057b7          	lui	a5,0x5
    1828:	c4478793          	addi	a5,a5,-956 # 4c44 <_free_file_list>
    182c:	0007a583          	lw	a1,0(a5)
    1830:	06058263          	beqz	a1,1894 <_allocate_file+0x70>
    1834:	0005a703          	lw	a4,0(a1)
    1838:	fe010113          	addi	sp,sp,-32
    183c:	00112e23          	sw	ra,28(sp)
    1840:	0045a683          	lw	a3,4(a1)
    1844:	04071063          	bnez	a4,1884 <_allocate_file+0x60>
    1848:	00d7a023          	sw	a3,0(a5)
    184c:	0045a683          	lw	a3,4(a1)
    1850:	02069e63          	bnez	a3,188c <_allocate_file+0x68>
    1854:	00e7a223          	sw	a4,4(a5)
    1858:	00005537          	lui	a0,0x5
    185c:	c4c50513          	addi	a0,a0,-948 # 4c4c <_open_file_list>
    1860:	00b12623          	sw	a1,12(sp)
    1864:	00000097          	auipc	ra,0x0
    1868:	d48080e7          	jalr	-696(ra) # 15ac <fat_list_insert_last>
    186c:	00c12583          	lw	a1,12(sp)
    1870:	01c12083          	lw	ra,28(sp)
    1874:	bc458593          	addi	a1,a1,-1084
    1878:	00058513          	mv	a0,a1
    187c:	02010113          	addi	sp,sp,32
    1880:	00008067          	ret
    1884:	00d72223          	sw	a3,4(a4)
    1888:	fc5ff06f          	j	184c <_allocate_file+0x28>
    188c:	00e6a023          	sw	a4,0(a3)
    1890:	fc9ff06f          	j	1858 <_allocate_file+0x34>
    1894:	00058513          	mv	a0,a1
    1898:	00008067          	ret

0000189c <_free_file>:
    189c:	43c52783          	lw	a5,1084(a0)
    18a0:	44052703          	lw	a4,1088(a0)
    18a4:	43c50593          	addi	a1,a0,1084
    18a8:	02079663          	bnez	a5,18d4 <_free_file+0x38>
    18ac:	000056b7          	lui	a3,0x5
    18b0:	c4e6a623          	sw	a4,-948(a3) # 4c4c <_open_file_list>
    18b4:	44052703          	lw	a4,1088(a0)
    18b8:	02071263          	bnez	a4,18dc <_free_file+0x40>
    18bc:	00005737          	lui	a4,0x5
    18c0:	c4f72823          	sw	a5,-944(a4) # 4c50 <_open_file_list+0x4>
    18c4:	00005537          	lui	a0,0x5
    18c8:	c4450513          	addi	a0,a0,-956 # 4c44 <_free_file_list>
    18cc:	00000317          	auipc	t1,0x0
    18d0:	ce030067          	jr	-800(t1) # 15ac <fat_list_insert_last>
    18d4:	00e7a223          	sw	a4,4(a5)
    18d8:	fddff06f          	j	18b4 <_free_file+0x18>
    18dc:	00f72023          	sw	a5,0(a4)
    18e0:	fe5ff06f          	j	18c4 <_free_file+0x28>

000018e4 <fatfs_lba_of_cluster>:
    18e4:	ff010113          	addi	sp,sp,-16
    18e8:	00812423          	sw	s0,8(sp)
    18ec:	00112623          	sw	ra,12(sp)
    18f0:	00050413          	mv	s0,a0
    18f4:	ffe58513          	addi	a0,a1,-2
    18f8:	00044583          	lbu	a1,0(s0)
    18fc:	00000097          	auipc	ra,0x0
    1900:	c84080e7          	jalr	-892(ra) # 1580 <__mulsi3>
    1904:	00442783          	lw	a5,4(s0)
    1908:	00f50533          	add	a0,a0,a5
    190c:	03042783          	lw	a5,48(s0)
    1910:	00079863          	bnez	a5,1920 <fatfs_lba_of_cluster+0x3c>
    1914:	02845783          	lhu	a5,40(s0)
    1918:	4047d793          	srai	a5,a5,0x4
    191c:	00f50533          	add	a0,a0,a5
    1920:	00c12083          	lw	ra,12(sp)
    1924:	00812403          	lw	s0,8(sp)
    1928:	01010113          	addi	sp,sp,16
    192c:	00008067          	ret

00001930 <fatfs_sector_read>:
    1930:	03452783          	lw	a5,52(a0)
    1934:	00058713          	mv	a4,a1
    1938:	00070513          	mv	a0,a4
    193c:	00060593          	mv	a1,a2
    1940:	00068613          	mv	a2,a3
    1944:	00078067          	jr	a5

00001948 <fatfs_sector_write>:
    1948:	03852783          	lw	a5,56(a0)
    194c:	00058713          	mv	a4,a1
    1950:	00070513          	mv	a0,a4
    1954:	00060593          	mv	a1,a2
    1958:	00068613          	mv	a2,a3
    195c:	00078067          	jr	a5

00001960 <fatfs_write_sector>:
    1960:	03852703          	lw	a4,56(a0)
    1964:	0a070463          	beqz	a4,1a0c <fatfs_write_sector+0xac>
    1968:	03052883          	lw	a7,48(a0)
    196c:	00050793          	mv	a5,a0
    1970:	0115e833          	or	a6,a1,a7
    1974:	02081e63          	bnez	a6,19b0 <fatfs_write_sector+0x50>
    1978:	01052583          	lw	a1,16(a0)
    197c:	08b67863          	bgeu	a2,a1,1a0c <fatfs_write_sector+0xac>
    1980:	01c52503          	lw	a0,28(a0)
    1984:	00c7a583          	lw	a1,12(a5)
    1988:	00b50533          	add	a0,a0,a1
    198c:	00c50533          	add	a0,a0,a2
    1990:	00068863          	beqz	a3,19a0 <fatfs_write_sector+0x40>
    1994:	00100613          	li	a2,1
    1998:	00068593          	mv	a1,a3
    199c:	00070067          	jr	a4
    19a0:	24a7a223          	sw	a0,580(a5)
    19a4:	00100613          	li	a2,1
    19a8:	04478593          	addi	a1,a5,68
    19ac:	ff1ff06f          	j	199c <fatfs_write_sector+0x3c>
    19b0:	fe010113          	addi	sp,sp,-32
    19b4:	00e12623          	sw	a4,12(sp)
    19b8:	00d12423          	sw	a3,8(sp)
    19bc:	00c12223          	sw	a2,4(sp)
    19c0:	00112e23          	sw	ra,28(sp)
    19c4:	00a12023          	sw	a0,0(sp)
    19c8:	00000097          	auipc	ra,0x0
    19cc:	f1c080e7          	jalr	-228(ra) # 18e4 <fatfs_lba_of_cluster>
    19d0:	00412603          	lw	a2,4(sp)
    19d4:	00812683          	lw	a3,8(sp)
    19d8:	00012783          	lw	a5,0(sp)
    19dc:	00c12703          	lw	a4,12(sp)
    19e0:	00a60533          	add	a0,a2,a0
    19e4:	00068c63          	beqz	a3,19fc <fatfs_write_sector+0x9c>
    19e8:	00100613          	li	a2,1
    19ec:	00068593          	mv	a1,a3
    19f0:	01c12083          	lw	ra,28(sp)
    19f4:	02010113          	addi	sp,sp,32
    19f8:	fa5ff06f          	j	199c <fatfs_write_sector+0x3c>
    19fc:	24a7a223          	sw	a0,580(a5)
    1a00:	00100613          	li	a2,1
    1a04:	04478593          	addi	a1,a5,68
    1a08:	fe9ff06f          	j	19f0 <fatfs_write_sector+0x90>
    1a0c:	00000513          	li	a0,0
    1a10:	00008067          	ret

00001a14 <fl_init>:
    1a14:	ff010113          	addi	sp,sp,-16
    1a18:	00005537          	lui	a0,0x5
    1a1c:	000057b7          	lui	a5,0x5
    1a20:	0000b5b7          	lui	a1,0xb
    1a24:	00112623          	sw	ra,12(sp)
    1a28:	c4450513          	addi	a0,a0,-956 # 4c44 <_free_file_list>
    1a2c:	c4c78793          	addi	a5,a5,-948 # 4c4c <_open_file_list>
    1a30:	68058593          	addi	a1,a1,1664 # b680 <_files+0x43c>
    1a34:	00052223          	sw	zero,4(a0)
    1a38:	00052023          	sw	zero,0(a0)
    1a3c:	0007a223          	sw	zero,4(a5)
    1a40:	0007a023          	sw	zero,0(a5)
    1a44:	00000097          	auipc	ra,0x0
    1a48:	b68080e7          	jalr	-1176(ra) # 15ac <fat_list_insert_last>
    1a4c:	000057b7          	lui	a5,0x5
    1a50:	0000c5b7          	lui	a1,0xc
    1a54:	c4478513          	addi	a0,a5,-956 # 4c44 <_free_file_list>
    1a58:	ac458593          	addi	a1,a1,-1340 # bac4 <_files+0x880>
    1a5c:	00000097          	auipc	ra,0x0
    1a60:	b50080e7          	jalr	-1200(ra) # 15ac <fat_list_insert_last>
    1a64:	00c12083          	lw	ra,12(sp)
    1a68:	000057b7          	lui	a5,0x5
    1a6c:	00100713          	li	a4,1
    1a70:	c4e7ac23          	sw	a4,-936(a5) # 4c58 <_filelib_init>
    1a74:	01010113          	addi	sp,sp,16
    1a78:	00008067          	ret

00001a7c <fl_closedir>:
    1a7c:	00000513          	li	a0,0
    1a80:	00008067          	ret

00001a84 <fatfs_lfn_cache_entry>:
    1a84:	0005c783          	lbu	a5,0(a1)
    1a88:	01300693          	li	a3,19
    1a8c:	01f7f793          	andi	a5,a5,31
    1a90:	fff78713          	addi	a4,a5,-1
    1a94:	0ff77613          	zext.b	a2,a4
    1a98:	0ac6ea63          	bltu	a3,a2,1b4c <fatfs_lfn_cache_entry+0xc8>
    1a9c:	10554683          	lbu	a3,261(a0)
    1aa0:	00069463          	bnez	a3,1aa8 <fatfs_lfn_cache_entry+0x24>
    1aa4:	10f502a3          	sb	a5,261(a0)
    1aa8:	00171793          	slli	a5,a4,0x1
    1aac:	00e787b3          	add	a5,a5,a4
    1ab0:	0015c683          	lbu	a3,1(a1)
    1ab4:	00279793          	slli	a5,a5,0x2
    1ab8:	00e787b3          	add	a5,a5,a4
    1abc:	00f50533          	add	a0,a0,a5
    1ac0:	00d50023          	sb	a3,0(a0)
    1ac4:	0035c783          	lbu	a5,3(a1)
    1ac8:	0ff00713          	li	a4,255
    1acc:	02000693          	li	a3,32
    1ad0:	00f500a3          	sb	a5,1(a0)
    1ad4:	0055c783          	lbu	a5,5(a1)
    1ad8:	00f50123          	sb	a5,2(a0)
    1adc:	0075c783          	lbu	a5,7(a1)
    1ae0:	00f501a3          	sb	a5,3(a0)
    1ae4:	0095c783          	lbu	a5,9(a1)
    1ae8:	00f50223          	sb	a5,4(a0)
    1aec:	00e5c783          	lbu	a5,14(a1)
    1af0:	00f502a3          	sb	a5,5(a0)
    1af4:	0105c783          	lbu	a5,16(a1)
    1af8:	00f50323          	sb	a5,6(a0)
    1afc:	0125c783          	lbu	a5,18(a1)
    1b00:	00f503a3          	sb	a5,7(a0)
    1b04:	0145c783          	lbu	a5,20(a1)
    1b08:	00f50423          	sb	a5,8(a0)
    1b0c:	0165c783          	lbu	a5,22(a1)
    1b10:	00f504a3          	sb	a5,9(a0)
    1b14:	0185c783          	lbu	a5,24(a1)
    1b18:	00f50523          	sb	a5,10(a0)
    1b1c:	01c5c783          	lbu	a5,28(a1)
    1b20:	00f505a3          	sb	a5,11(a0)
    1b24:	01e5c783          	lbu	a5,30(a1)
    1b28:	00f50623          	sb	a5,12(a0)
    1b2c:	00d00793          	li	a5,13
    1b30:	00054603          	lbu	a2,0(a0)
    1b34:	00e61463          	bne	a2,a4,1b3c <fatfs_lfn_cache_entry+0xb8>
    1b38:	00d50023          	sb	a3,0(a0)
    1b3c:	fff78793          	addi	a5,a5,-1
    1b40:	0ff7f793          	zext.b	a5,a5
    1b44:	00150513          	addi	a0,a0,1
    1b48:	fe0794e3          	bnez	a5,1b30 <fatfs_lfn_cache_entry+0xac>
    1b4c:	00008067          	ret

00001b50 <fatfs_lfn_cache_get>:
    1b50:	10554703          	lbu	a4,261(a0)
    1b54:	01400793          	li	a5,20
    1b58:	00f71663          	bne	a4,a5,1b64 <fatfs_lfn_cache_get+0x14>
    1b5c:	10050223          	sb	zero,260(a0)
    1b60:	00008067          	ret
    1b64:	02070063          	beqz	a4,1b84 <fatfs_lfn_cache_get+0x34>
    1b68:	00171793          	slli	a5,a4,0x1
    1b6c:	00e787b3          	add	a5,a5,a4
    1b70:	00279793          	slli	a5,a5,0x2
    1b74:	00e787b3          	add	a5,a5,a4
    1b78:	00f507b3          	add	a5,a0,a5
    1b7c:	00078023          	sb	zero,0(a5)
    1b80:	00008067          	ret
    1b84:	00050023          	sb	zero,0(a0)
    1b88:	00008067          	ret

00001b8c <fatfs_entry_lfn_text>:
    1b8c:	00b54503          	lbu	a0,11(a0)
    1b90:	00f57513          	andi	a0,a0,15
    1b94:	ff150513          	addi	a0,a0,-15
    1b98:	00153513          	seqz	a0,a0
    1b9c:	00008067          	ret

00001ba0 <fatfs_entry_lfn_invalid>:
    1ba0:	00054783          	lbu	a5,0(a0)
    1ba4:	f1b78713          	addi	a4,a5,-229
    1ba8:	02070263          	beqz	a4,1bcc <fatfs_entry_lfn_invalid+0x2c>
    1bac:	02078063          	beqz	a5,1bcc <fatfs_entry_lfn_invalid+0x2c>
    1bb0:	00b54783          	lbu	a5,11(a0)
    1bb4:	00800713          	li	a4,8
    1bb8:	00100513          	li	a0,1
    1bbc:	00e78a63          	beq	a5,a4,1bd0 <fatfs_entry_lfn_invalid+0x30>
    1bc0:	0067f793          	andi	a5,a5,6
    1bc4:	00f03533          	snez	a0,a5
    1bc8:	00008067          	ret
    1bcc:	00100513          	li	a0,1
    1bd0:	00008067          	ret

00001bd4 <fatfs_entry_lfn_exists>:
    1bd4:	00b5c783          	lbu	a5,11(a1)
    1bd8:	00f00713          	li	a4,15
    1bdc:	04e78063          	beq	a5,a4,1c1c <fatfs_entry_lfn_exists+0x48>
    1be0:	0005c683          	lbu	a3,0(a1)
    1be4:	f1b68713          	addi	a4,a3,-229
    1be8:	00e03733          	snez	a4,a4
    1bec:	00d036b3          	snez	a3,a3
    1bf0:	00d77733          	and	a4,a4,a3
    1bf4:	02070463          	beqz	a4,1c1c <fatfs_entry_lfn_exists+0x48>
    1bf8:	ff878713          	addi	a4,a5,-8
    1bfc:	02070063          	beqz	a4,1c1c <fatfs_entry_lfn_exists+0x48>
    1c00:	0067f713          	andi	a4,a5,6
    1c04:	00000793          	li	a5,0
    1c08:	00071663          	bnez	a4,1c14 <fatfs_entry_lfn_exists+0x40>
    1c0c:	10554783          	lbu	a5,261(a0)
    1c10:	00f037b3          	snez	a5,a5
    1c14:	00078513          	mv	a0,a5
    1c18:	00008067          	ret
    1c1c:	00000793          	li	a5,0
    1c20:	ff5ff06f          	j	1c14 <fatfs_entry_lfn_exists+0x40>

00001c24 <fatfs_entry_sfn_only>:
    1c24:	00b54783          	lbu	a5,11(a0)
    1c28:	00f00713          	li	a4,15
    1c2c:	02e78863          	beq	a5,a4,1c5c <fatfs_entry_sfn_only+0x38>
    1c30:	00054683          	lbu	a3,0(a0)
    1c34:	f1b68713          	addi	a4,a3,-229
    1c38:	00e03733          	snez	a4,a4
    1c3c:	00d036b3          	snez	a3,a3
    1c40:	00d77733          	and	a4,a4,a3
    1c44:	00070c63          	beqz	a4,1c5c <fatfs_entry_sfn_only+0x38>
    1c48:	ff878713          	addi	a4,a5,-8
    1c4c:	00070863          	beqz	a4,1c5c <fatfs_entry_sfn_only+0x38>
    1c50:	0067f513          	andi	a0,a5,6
    1c54:	00153513          	seqz	a0,a0
    1c58:	00008067          	ret
    1c5c:	00000513          	li	a0,0
    1c60:	00008067          	ret

00001c64 <fatfs_entry_is_dir>:
    1c64:	00b54503          	lbu	a0,11(a0)
    1c68:	00455513          	srli	a0,a0,0x4
    1c6c:	00157513          	andi	a0,a0,1
    1c70:	00008067          	ret

00001c74 <fatfs_lfn_entries_required>:
    1c74:	ff010113          	addi	sp,sp,-16
    1c78:	00112623          	sw	ra,12(sp)
    1c7c:	fffff097          	auipc	ra,0xfffff
    1c80:	1f4080e7          	jalr	500(ra) # e70 <strlen>
    1c84:	00050a63          	beqz	a0,1c98 <fatfs_lfn_entries_required+0x24>
    1c88:	00d00593          	li	a1,13
    1c8c:	00c50513          	addi	a0,a0,12
    1c90:	fffff097          	auipc	ra,0xfffff
    1c94:	0ec080e7          	jalr	236(ra) # d7c <__divsi3>
    1c98:	00c12083          	lw	ra,12(sp)
    1c9c:	01010113          	addi	sp,sp,16
    1ca0:	00008067          	ret

00001ca4 <fatfs_filename_to_lfn>:
    1ca4:	f9010113          	addi	sp,sp,-112
    1ca8:	06812423          	sw	s0,104(sp)
    1cac:	00058413          	mv	s0,a1
    1cb0:	000055b7          	lui	a1,0x5
    1cb4:	bf858593          	addi	a1,a1,-1032 # 4bf8 <font+0x1e0>
    1cb8:	06912223          	sw	s1,100(sp)
    1cbc:	05312e23          	sw	s3,92(sp)
    1cc0:	00060493          	mv	s1,a2
    1cc4:	00050993          	mv	s3,a0
    1cc8:	03400613          	li	a2,52
    1ccc:	01c10513          	addi	a0,sp,28
    1cd0:	00d12623          	sw	a3,12(sp)
    1cd4:	06112623          	sw	ra,108(sp)
    1cd8:	07212023          	sw	s2,96(sp)
    1cdc:	05412c23          	sw	s4,88(sp)
    1ce0:	fffff097          	auipc	ra,0xfffff
    1ce4:	16c080e7          	jalr	364(ra) # e4c <memcpy>
    1ce8:	00098513          	mv	a0,s3
    1cec:	fffff097          	auipc	ra,0xfffff
    1cf0:	184080e7          	jalr	388(ra) # e70 <strlen>
    1cf4:	00050913          	mv	s2,a0
    1cf8:	00098513          	mv	a0,s3
    1cfc:	00000097          	auipc	ra,0x0
    1d00:	f78080e7          	jalr	-136(ra) # 1c74 <fatfs_lfn_entries_required>
    1d04:	00050a13          	mv	s4,a0
    1d08:	02000613          	li	a2,32
    1d0c:	00000593          	li	a1,0
    1d10:	00040513          	mv	a0,s0
    1d14:	fffff097          	auipc	ra,0xfffff
    1d18:	11c080e7          	jalr	284(ra) # e30 <memset>
    1d1c:	fffa0713          	addi	a4,s4,-1 # 3fff <fl_fread+0x10f>
    1d20:	00c12683          	lw	a3,12(sp)
    1d24:	00148793          	addi	a5,s1,1
    1d28:	00971463          	bne	a4,s1,1d30 <fatfs_filename_to_lfn+0x8c>
    1d2c:	0407e793          	ori	a5,a5,64
    1d30:	00149613          	slli	a2,s1,0x1
    1d34:	00960633          	add	a2,a2,s1
    1d38:	00f40023          	sb	a5,0(s0)
    1d3c:	00261613          	slli	a2,a2,0x2
    1d40:	00f00793          	li	a5,15
    1d44:	00f405a3          	sb	a5,11(s0)
    1d48:	00d406a3          	sb	a3,13(s0)
    1d4c:	01c10793          	addi	a5,sp,28
    1d50:	00960633          	add	a2,a2,s1
    1d54:	fff00693          	li	a3,-1
    1d58:	0007a703          	lw	a4,0(a5)
    1d5c:	00e40733          	add	a4,s0,a4
    1d60:	05265063          	bge	a2,s2,1da0 <fatfs_filename_to_lfn+0xfc>
    1d64:	00c985b3          	add	a1,s3,a2
    1d68:	0005c583          	lbu	a1,0(a1)
    1d6c:	00b70023          	sb	a1,0(a4)
    1d70:	00478793          	addi	a5,a5,4
    1d74:	05010713          	addi	a4,sp,80
    1d78:	00160613          	addi	a2,a2,1
    1d7c:	fce79ee3          	bne	a5,a4,1d58 <fatfs_filename_to_lfn+0xb4>
    1d80:	06c12083          	lw	ra,108(sp)
    1d84:	06812403          	lw	s0,104(sp)
    1d88:	06412483          	lw	s1,100(sp)
    1d8c:	06012903          	lw	s2,96(sp)
    1d90:	05c12983          	lw	s3,92(sp)
    1d94:	05812a03          	lw	s4,88(sp)
    1d98:	07010113          	addi	sp,sp,112
    1d9c:	00008067          	ret
    1da0:	01261663          	bne	a2,s2,1dac <fatfs_filename_to_lfn+0x108>
    1da4:	00070023          	sb	zero,0(a4)
    1da8:	fc9ff06f          	j	1d70 <fatfs_filename_to_lfn+0xcc>
    1dac:	00d70023          	sb	a3,0(a4)
    1db0:	00d700a3          	sb	a3,1(a4)
    1db4:	fbdff06f          	j	1d70 <fatfs_filename_to_lfn+0xcc>

00001db8 <fatfs_sfn_create_entry>:
    1db8:	00000793          	li	a5,0
    1dbc:	00b00813          	li	a6,11
    1dc0:	00f508b3          	add	a7,a0,a5
    1dc4:	0008c303          	lbu	t1,0(a7)
    1dc8:	00f688b3          	add	a7,a3,a5
    1dcc:	00178793          	addi	a5,a5,1
    1dd0:	00688023          	sb	t1,0(a7)
    1dd4:	ff0796e3          	bne	a5,a6,1dc0 <fatfs_sfn_create_entry+0x8>
    1dd8:	00e03733          	snez	a4,a4
    1ddc:	40e00733          	neg	a4,a4
    1de0:	02000793          	li	a5,32
    1de4:	ff077713          	andi	a4,a4,-16
    1de8:	00f70733          	add	a4,a4,a5
    1dec:	00f68823          	sb	a5,16(a3)
    1df0:	00f68923          	sb	a5,18(a3)
    1df4:	00f68c23          	sb	a5,24(a3)
    1df8:	01065793          	srli	a5,a2,0x10
    1dfc:	00f68a23          	sb	a5,20(a3)
    1e00:	01865793          	srli	a5,a2,0x18
    1e04:	00f68aa3          	sb	a5,21(a3)
    1e08:	0085d793          	srli	a5,a1,0x8
    1e0c:	00c68d23          	sb	a2,26(a3)
    1e10:	00b68e23          	sb	a1,28(a3)
    1e14:	00865613          	srli	a2,a2,0x8
    1e18:	00f68ea3          	sb	a5,29(a3)
    1e1c:	0105d793          	srli	a5,a1,0x10
    1e20:	0185d593          	srli	a1,a1,0x18
    1e24:	000686a3          	sb	zero,13(a3)
    1e28:	00068723          	sb	zero,14(a3)
    1e2c:	000687a3          	sb	zero,15(a3)
    1e30:	000688a3          	sb	zero,17(a3)
    1e34:	000689a3          	sb	zero,19(a3)
    1e38:	00068b23          	sb	zero,22(a3)
    1e3c:	00068ba3          	sb	zero,23(a3)
    1e40:	00068ca3          	sb	zero,25(a3)
    1e44:	00e685a3          	sb	a4,11(a3)
    1e48:	00068623          	sb	zero,12(a3)
    1e4c:	00c68da3          	sb	a2,27(a3)
    1e50:	00f68f23          	sb	a5,30(a3)
    1e54:	00b68fa3          	sb	a1,31(a3)
    1e58:	00008067          	ret

00001e5c <fatfs_lfn_create_sfn>:
    1e5c:	fd010113          	addi	sp,sp,-48
    1e60:	02912223          	sw	s1,36(sp)
    1e64:	00050493          	mv	s1,a0
    1e68:	00058513          	mv	a0,a1
    1e6c:	02812423          	sw	s0,40(sp)
    1e70:	01312e23          	sw	s3,28(sp)
    1e74:	00058413          	mv	s0,a1
    1e78:	02112623          	sw	ra,44(sp)
    1e7c:	03212023          	sw	s2,32(sp)
    1e80:	fffff097          	auipc	ra,0xfffff
    1e84:	ff0080e7          	jalr	-16(ra) # e70 <strlen>
    1e88:	00044783          	lbu	a5,0(s0)
    1e8c:	02e00993          	li	s3,46
    1e90:	15378063          	beq	a5,s3,1fd0 <fatfs_lfn_create_sfn+0x174>
    1e94:	00b00613          	li	a2,11
    1e98:	02000593          	li	a1,32
    1e9c:	00050913          	mv	s2,a0
    1ea0:	00048513          	mv	a0,s1
    1ea4:	fffff097          	auipc	ra,0xfffff
    1ea8:	f8c080e7          	jalr	-116(ra) # e30 <memset>
    1eac:	00300613          	li	a2,3
    1eb0:	02000593          	li	a1,32
    1eb4:	00c10513          	addi	a0,sp,12
    1eb8:	fffff097          	auipc	ra,0xfffff
    1ebc:	f78080e7          	jalr	-136(ra) # e30 <memset>
    1ec0:	fff00793          	li	a5,-1
    1ec4:	00000713          	li	a4,0
    1ec8:	0d274263          	blt	a4,s2,1f8c <fatfs_lfn_create_sfn+0x130>
    1ecc:	fff00713          	li	a4,-1
    1ed0:	0ee78863          	beq	a5,a4,1fc0 <fatfs_lfn_create_sfn+0x164>
    1ed4:	00178713          	addi	a4,a5,1
    1ed8:	00c10693          	addi	a3,sp,12
    1edc:	00478613          	addi	a2,a5,4
    1ee0:	0ce61263          	bne	a2,a4,1fa4 <fatfs_lfn_create_sfn+0x148>
    1ee4:	00000613          	li	a2,0
    1ee8:	00000693          	li	a3,0
    1eec:	01900813          	li	a6,25
    1ef0:	00800893          	li	a7,8
    1ef4:	02f6de63          	bge	a3,a5,1f30 <fatfs_lfn_create_sfn+0xd4>
    1ef8:	00d40733          	add	a4,s0,a3
    1efc:	00074703          	lbu	a4,0(a4)
    1f00:	fe070513          	addi	a0,a4,-32
    1f04:	0c050263          	beqz	a0,1fc8 <fatfs_lfn_create_sfn+0x16c>
    1f08:	fd270593          	addi	a1,a4,-46
    1f0c:	0a058e63          	beqz	a1,1fc8 <fatfs_lfn_create_sfn+0x16c>
    1f10:	f9f70593          	addi	a1,a4,-97
    1f14:	0ff5f593          	zext.b	a1,a1
    1f18:	00c48333          	add	t1,s1,a2
    1f1c:	00160613          	addi	a2,a2,1
    1f20:	00b86463          	bltu	a6,a1,1f28 <fatfs_lfn_create_sfn+0xcc>
    1f24:	0ff57713          	zext.b	a4,a0
    1f28:	00e30023          	sb	a4,0(t1)
    1f2c:	09161e63          	bne	a2,a7,1fc8 <fatfs_lfn_create_sfn+0x16c>
    1f30:	00c10793          	addi	a5,sp,12
    1f34:	00800693          	li	a3,8
    1f38:	01900513          	li	a0,25
    1f3c:	00b00593          	li	a1,11
    1f40:	0007c703          	lbu	a4,0(a5)
    1f44:	f9f70613          	addi	a2,a4,-97
    1f48:	0ff67613          	zext.b	a2,a2
    1f4c:	00c56663          	bltu	a0,a2,1f58 <fatfs_lfn_create_sfn+0xfc>
    1f50:	fe070713          	addi	a4,a4,-32
    1f54:	0ff77713          	zext.b	a4,a4
    1f58:	00d48633          	add	a2,s1,a3
    1f5c:	00e60023          	sb	a4,0(a2)
    1f60:	00168693          	addi	a3,a3,1
    1f64:	00178793          	addi	a5,a5,1
    1f68:	fcb69ce3          	bne	a3,a1,1f40 <fatfs_lfn_create_sfn+0xe4>
    1f6c:	00100513          	li	a0,1
    1f70:	02c12083          	lw	ra,44(sp)
    1f74:	02812403          	lw	s0,40(sp)
    1f78:	02412483          	lw	s1,36(sp)
    1f7c:	02012903          	lw	s2,32(sp)
    1f80:	01c12983          	lw	s3,28(sp)
    1f84:	03010113          	addi	sp,sp,48
    1f88:	00008067          	ret
    1f8c:	00e406b3          	add	a3,s0,a4
    1f90:	0006c683          	lbu	a3,0(a3)
    1f94:	01369463          	bne	a3,s3,1f9c <fatfs_lfn_create_sfn+0x140>
    1f98:	00070793          	mv	a5,a4
    1f9c:	00170713          	addi	a4,a4,1
    1fa0:	f29ff06f          	j	1ec8 <fatfs_lfn_create_sfn+0x6c>
    1fa4:	01275863          	bge	a4,s2,1fb4 <fatfs_lfn_create_sfn+0x158>
    1fa8:	00e405b3          	add	a1,s0,a4
    1fac:	0005c583          	lbu	a1,0(a1)
    1fb0:	00b68023          	sb	a1,0(a3)
    1fb4:	00170713          	addi	a4,a4,1
    1fb8:	00168693          	addi	a3,a3,1
    1fbc:	f25ff06f          	j	1ee0 <fatfs_lfn_create_sfn+0x84>
    1fc0:	00090793          	mv	a5,s2
    1fc4:	f21ff06f          	j	1ee4 <fatfs_lfn_create_sfn+0x88>
    1fc8:	00168693          	addi	a3,a3,1
    1fcc:	f29ff06f          	j	1ef4 <fatfs_lfn_create_sfn+0x98>
    1fd0:	00000513          	li	a0,0
    1fd4:	f9dff06f          	j	1f70 <fatfs_lfn_create_sfn+0x114>

00001fd8 <fatfs_lfn_generate_tail>:
    1fd8:	000187b7          	lui	a5,0x18
    1fdc:	69f78793          	addi	a5,a5,1695 # 1869f <__stacktop+0x869f>
    1fe0:	16c7e463          	bltu	a5,a2,2148 <fatfs_lfn_generate_tail+0x170>
    1fe4:	fa010113          	addi	sp,sp,-96
    1fe8:	04812c23          	sw	s0,88(sp)
    1fec:	04912a23          	sw	s1,84(sp)
    1ff0:	03712e23          	sw	s7,60(sp)
    1ff4:	00060413          	mv	s0,a2
    1ff8:	00058b93          	mv	s7,a1
    1ffc:	00c00613          	li	a2,12
    2000:	00000593          	li	a1,0
    2004:	00050493          	mv	s1,a0
    2008:	00410513          	addi	a0,sp,4
    200c:	04112e23          	sw	ra,92(sp)
    2010:	05312623          	sw	s3,76(sp)
    2014:	05412423          	sw	s4,72(sp)
    2018:	05612023          	sw	s6,64(sp)
    201c:	05212823          	sw	s2,80(sp)
    2020:	05512223          	sw	s5,68(sp)
    2024:	fffff097          	auipc	ra,0xfffff
    2028:	e0c080e7          	jalr	-500(ra) # e30 <memset>
    202c:	000055b7          	lui	a1,0x5
    2030:	07e00793          	li	a5,126
    2034:	01100613          	li	a2,17
    2038:	9d058593          	addi	a1,a1,-1584 # 49d0 <LEDS+0xb8>
    203c:	01c10513          	addi	a0,sp,28
    2040:	01010993          	addi	s3,sp,16
    2044:	00f10223          	sb	a5,4(sp)
    2048:	00098a13          	mv	s4,s3
    204c:	fffff097          	auipc	ra,0xfffff
    2050:	e00080e7          	jalr	-512(ra) # e4c <memcpy>
    2054:	00900b13          	li	s6,9
    2058:	00a00593          	li	a1,10
    205c:	00040513          	mv	a0,s0
    2060:	fffff097          	auipc	ra,0xfffff
    2064:	d6c080e7          	jalr	-660(ra) # dcc <__umodsi3>
    2068:	03050793          	addi	a5,a0,48
    206c:	00278533          	add	a0,a5,sp
    2070:	fec54783          	lbu	a5,-20(a0)
    2074:	00098913          	mv	s2,s3
    2078:	00040513          	mv	a0,s0
    207c:	00a00593          	li	a1,10
    2080:	00f98023          	sb	a5,0(s3)
    2084:	00040a93          	mv	s5,s0
    2088:	fffff097          	auipc	ra,0xfffff
    208c:	cfc080e7          	jalr	-772(ra) # d84 <__udivsi3>
    2090:	00198993          	addi	s3,s3,1
    2094:	00050413          	mv	s0,a0
    2098:	fd5b60e3          	bltu	s6,s5,2058 <fatfs_lfn_generate_tail+0x80>
    209c:	00098023          	sb	zero,0(s3)
    20a0:	00410713          	addi	a4,sp,4
    20a4:	00090793          	mv	a5,s2
    20a8:	0947f663          	bgeu	a5,s4,2134 <fatfs_lfn_generate_tail+0x15c>
    20ac:	00f10713          	addi	a4,sp,15
    20b0:	00000793          	li	a5,0
    20b4:	00e96663          	bltu	s2,a4,20c0 <fatfs_lfn_generate_tail+0xe8>
    20b8:	41490933          	sub	s2,s2,s4
    20bc:	00190793          	addi	a5,s2,1
    20c0:	03078793          	addi	a5,a5,48
    20c4:	002787b3          	add	a5,a5,sp
    20c8:	000b8593          	mv	a1,s7
    20cc:	fc078aa3          	sb	zero,-43(a5)
    20d0:	00b00613          	li	a2,11
    20d4:	00048513          	mv	a0,s1
    20d8:	fffff097          	auipc	ra,0xfffff
    20dc:	d74080e7          	jalr	-652(ra) # e4c <memcpy>
    20e0:	00410513          	addi	a0,sp,4
    20e4:	fffff097          	auipc	ra,0xfffff
    20e8:	d8c080e7          	jalr	-628(ra) # e70 <strlen>
    20ec:	40a484b3          	sub	s1,s1,a0
    20f0:	00050613          	mv	a2,a0
    20f4:	00410593          	addi	a1,sp,4
    20f8:	00848513          	addi	a0,s1,8
    20fc:	fffff097          	auipc	ra,0xfffff
    2100:	d50080e7          	jalr	-688(ra) # e4c <memcpy>
    2104:	05c12083          	lw	ra,92(sp)
    2108:	05812403          	lw	s0,88(sp)
    210c:	05412483          	lw	s1,84(sp)
    2110:	05012903          	lw	s2,80(sp)
    2114:	04c12983          	lw	s3,76(sp)
    2118:	04812a03          	lw	s4,72(sp)
    211c:	04412a83          	lw	s5,68(sp)
    2120:	04012b03          	lw	s6,64(sp)
    2124:	03c12b83          	lw	s7,60(sp)
    2128:	00100513          	li	a0,1
    212c:	06010113          	addi	sp,sp,96
    2130:	00008067          	ret
    2134:	0007c683          	lbu	a3,0(a5)
    2138:	00170713          	addi	a4,a4,1
    213c:	fff78793          	addi	a5,a5,-1
    2140:	00d70023          	sb	a3,0(a4)
    2144:	f65ff06f          	j	20a8 <fatfs_lfn_generate_tail+0xd0>
    2148:	00000513          	li	a0,0
    214c:	00008067          	ret

00002150 <fatfs_total_path_levels>:
    2150:	fff00793          	li	a5,-1
    2154:	06050263          	beqz	a0,21b8 <fatfs_total_path_levels+0x68>
    2158:	00054703          	lbu	a4,0(a0)
    215c:	02f00793          	li	a5,47
    2160:	00f71863          	bne	a4,a5,2170 <fatfs_total_path_levels+0x20>
    2164:	00150513          	addi	a0,a0,1
    2168:	00000793          	li	a5,0
    216c:	0400006f          	j	21ac <fatfs_total_path_levels+0x5c>
    2170:	00154703          	lbu	a4,1(a0)
    2174:	03a00793          	li	a5,58
    2178:	00f70a63          	beq	a4,a5,218c <fatfs_total_path_levels+0x3c>
    217c:	00254683          	lbu	a3,2(a0)
    2180:	05c00713          	li	a4,92
    2184:	fff00793          	li	a5,-1
    2188:	02e69863          	bne	a3,a4,21b8 <fatfs_total_path_levels+0x68>
    218c:	00350513          	addi	a0,a0,3
    2190:	05c00713          	li	a4,92
    2194:	fd5ff06f          	j	2168 <fatfs_total_path_levels+0x18>
    2198:	00150513          	addi	a0,a0,1
    219c:	00e68663          	beq	a3,a4,21a8 <fatfs_total_path_levels+0x58>
    21a0:	00054683          	lbu	a3,0(a0)
    21a4:	fe069ae3          	bnez	a3,2198 <fatfs_total_path_levels+0x48>
    21a8:	00178793          	addi	a5,a5,1
    21ac:	00054683          	lbu	a3,0(a0)
    21b0:	fe0698e3          	bnez	a3,21a0 <fatfs_total_path_levels+0x50>
    21b4:	fff78793          	addi	a5,a5,-1
    21b8:	00078513          	mv	a0,a5
    21bc:	00008067          	ret

000021c0 <fatfs_get_substring>:
    21c0:	0cd05e63          	blez	a3,229c <fatfs_get_substring+0xdc>
    21c4:	0c050c63          	beqz	a0,229c <fatfs_get_substring+0xdc>
    21c8:	fe010113          	addi	sp,sp,-32
    21cc:	00812c23          	sw	s0,24(sp)
    21d0:	00112e23          	sw	ra,28(sp)
    21d4:	00912a23          	sw	s1,20(sp)
    21d8:	00054483          	lbu	s1,0(a0)
    21dc:	02f00793          	li	a5,47
    21e0:	00150413          	addi	s0,a0,1
    21e4:	02f48463          	beq	s1,a5,220c <fatfs_get_substring+0x4c>
    21e8:	00154703          	lbu	a4,1(a0)
    21ec:	03a00793          	li	a5,58
    21f0:	00f70a63          	beq	a4,a5,2204 <fatfs_get_substring+0x44>
    21f4:	00254803          	lbu	a6,2(a0)
    21f8:	05c00713          	li	a4,92
    21fc:	fff00793          	li	a5,-1
    2200:	04e81c63          	bne	a6,a4,2258 <fatfs_get_substring+0x98>
    2204:	00350413          	addi	s0,a0,3
    2208:	05c00493          	li	s1,92
    220c:	00040513          	mv	a0,s0
    2210:	00d12623          	sw	a3,12(sp)
    2214:	00c12423          	sw	a2,8(sp)
    2218:	00b12223          	sw	a1,4(sp)
    221c:	fffff097          	auipc	ra,0xfffff
    2220:	c54080e7          	jalr	-940(ra) # e70 <strlen>
    2224:	00c12683          	lw	a3,12(sp)
    2228:	00412583          	lw	a1,4(sp)
    222c:	00812603          	lw	a2,8(sp)
    2230:	00000713          	li	a4,0
    2234:	00000813          	li	a6,0
    2238:	00000793          	li	a5,0
    223c:	fff68693          	addi	a3,a3,-1
    2240:	00e608b3          	add	a7,a2,a4
    2244:	02a7c663          	blt	a5,a0,2270 <fatfs_get_substring+0xb0>
    2248:	00088023          	sb	zero,0(a7)
    224c:	00064783          	lbu	a5,0(a2)
    2250:	0017b793          	seqz	a5,a5
    2254:	40f007b3          	neg	a5,a5
    2258:	01c12083          	lw	ra,28(sp)
    225c:	01812403          	lw	s0,24(sp)
    2260:	01412483          	lw	s1,20(sp)
    2264:	00078513          	mv	a0,a5
    2268:	02010113          	addi	sp,sp,32
    226c:	00008067          	ret
    2270:	00f40333          	add	t1,s0,a5
    2274:	00034303          	lbu	t1,0(t1)
    2278:	00931863          	bne	t1,s1,2288 <fatfs_get_substring+0xc8>
    227c:	00180813          	addi	a6,a6,1
    2280:	00178793          	addi	a5,a5,1
    2284:	fbdff06f          	j	2240 <fatfs_get_substring+0x80>
    2288:	feb81ce3          	bne	a6,a1,2280 <fatfs_get_substring+0xc0>
    228c:	fed75ae3          	bge	a4,a3,2280 <fatfs_get_substring+0xc0>
    2290:	00170713          	addi	a4,a4,1
    2294:	00688023          	sb	t1,0(a7)
    2298:	fe9ff06f          	j	2280 <fatfs_get_substring+0xc0>
    229c:	fff00793          	li	a5,-1
    22a0:	00078513          	mv	a0,a5
    22a4:	00008067          	ret

000022a8 <fatfs_split_path>:
    22a8:	fd010113          	addi	sp,sp,-48
    22ac:	02912223          	sw	s1,36(sp)
    22b0:	03212023          	sw	s2,32(sp)
    22b4:	01312e23          	sw	s3,28(sp)
    22b8:	01412c23          	sw	s4,24(sp)
    22bc:	02112623          	sw	ra,44(sp)
    22c0:	02812423          	sw	s0,40(sp)
    22c4:	01512a23          	sw	s5,20(sp)
    22c8:	00050993          	mv	s3,a0
    22cc:	00058493          	mv	s1,a1
    22d0:	00060913          	mv	s2,a2
    22d4:	00068a13          	mv	s4,a3
    22d8:	00e12623          	sw	a4,12(sp)
    22dc:	00000097          	auipc	ra,0x0
    22e0:	e74080e7          	jalr	-396(ra) # 2150 <fatfs_total_path_levels>
    22e4:	fff00793          	li	a5,-1
    22e8:	02f51863          	bne	a0,a5,2318 <fatfs_split_path+0x70>
    22ec:	fff00413          	li	s0,-1
    22f0:	02c12083          	lw	ra,44(sp)
    22f4:	00040513          	mv	a0,s0
    22f8:	02812403          	lw	s0,40(sp)
    22fc:	02412483          	lw	s1,36(sp)
    2300:	02012903          	lw	s2,32(sp)
    2304:	01c12983          	lw	s3,28(sp)
    2308:	01812a03          	lw	s4,24(sp)
    230c:	01412a83          	lw	s5,20(sp)
    2310:	03010113          	addi	sp,sp,48
    2314:	00008067          	ret
    2318:	00c12683          	lw	a3,12(sp)
    231c:	00050593          	mv	a1,a0
    2320:	00a12623          	sw	a0,12(sp)
    2324:	000a0613          	mv	a2,s4
    2328:	00098513          	mv	a0,s3
    232c:	00000097          	auipc	ra,0x0
    2330:	e94080e7          	jalr	-364(ra) # 21c0 <fatfs_get_substring>
    2334:	00050413          	mv	s0,a0
    2338:	fa051ae3          	bnez	a0,22ec <fatfs_split_path+0x44>
    233c:	00c12583          	lw	a1,12(sp)
    2340:	00059663          	bnez	a1,234c <fatfs_split_path+0xa4>
    2344:	00048023          	sb	zero,0(s1)
    2348:	fa9ff06f          	j	22f0 <fatfs_split_path+0x48>
    234c:	00098513          	mv	a0,s3
    2350:	fffff097          	auipc	ra,0xfffff
    2354:	b20080e7          	jalr	-1248(ra) # e70 <strlen>
    2358:	00050a93          	mv	s5,a0
    235c:	000a0513          	mv	a0,s4
    2360:	fffff097          	auipc	ra,0xfffff
    2364:	b10080e7          	jalr	-1264(ra) # e70 <strlen>
    2368:	40aa8633          	sub	a2,s5,a0
    236c:	00c95463          	bge	s2,a2,2374 <fatfs_split_path+0xcc>
    2370:	00090613          	mv	a2,s2
    2374:	00048513          	mv	a0,s1
    2378:	00098593          	mv	a1,s3
    237c:	00c12623          	sw	a2,12(sp)
    2380:	fffff097          	auipc	ra,0xfffff
    2384:	acc080e7          	jalr	-1332(ra) # e4c <memcpy>
    2388:	00c12603          	lw	a2,12(sp)
    238c:	00c484b3          	add	s1,s1,a2
    2390:	fe048fa3          	sb	zero,-1(s1)
    2394:	f5dff06f          	j	22f0 <fatfs_split_path+0x48>

00002398 <fatfs_compare_names>:
    2398:	fd010113          	addi	sp,sp,-48
    239c:	02112623          	sw	ra,44(sp)
    23a0:	03212023          	sw	s2,32(sp)
    23a4:	01312e23          	sw	s3,28(sp)
    23a8:	01412c23          	sw	s4,24(sp)
    23ac:	01512a23          	sw	s5,20(sp)
    23b0:	00058a13          	mv	s4,a1
    23b4:	02812423          	sw	s0,40(sp)
    23b8:	02912223          	sw	s1,36(sp)
    23bc:	01612823          	sw	s6,16(sp)
    23c0:	01712623          	sw	s7,12(sp)
    23c4:	01812423          	sw	s8,8(sp)
    23c8:	00050a93          	mv	s5,a0
    23cc:	fffff097          	auipc	ra,0xfffff
    23d0:	2bc080e7          	jalr	700(ra) # 1688 <FileString_GetExtension>
    23d4:	00050993          	mv	s3,a0
    23d8:	000a0513          	mv	a0,s4
    23dc:	fffff097          	auipc	ra,0xfffff
    23e0:	2ac080e7          	jalr	684(ra) # 1688 <FileString_GetExtension>
    23e4:	fff00793          	li	a5,-1
    23e8:	00050913          	mv	s2,a0
    23ec:	02f99e63          	bne	s3,a5,2428 <fatfs_compare_names+0x90>
    23f0:	0f350063          	beq	a0,s3,24d0 <fatfs_compare_names+0x138>
    23f4:	00000513          	li	a0,0
    23f8:	02c12083          	lw	ra,44(sp)
    23fc:	02812403          	lw	s0,40(sp)
    2400:	02412483          	lw	s1,36(sp)
    2404:	02012903          	lw	s2,32(sp)
    2408:	01c12983          	lw	s3,28(sp)
    240c:	01812a03          	lw	s4,24(sp)
    2410:	01412a83          	lw	s5,20(sp)
    2414:	01012b03          	lw	s6,16(sp)
    2418:	00c12b83          	lw	s7,12(sp)
    241c:	00812c03          	lw	s8,8(sp)
    2420:	03010113          	addi	sp,sp,48
    2424:	00008067          	ret
    2428:	fcf506e3          	beq	a0,a5,23f4 <fatfs_compare_names+0x5c>
    242c:	00198793          	addi	a5,s3,1
    2430:	00fa8b33          	add	s6,s5,a5
    2434:	00050413          	mv	s0,a0
    2438:	00150793          	addi	a5,a0,1
    243c:	000b0513          	mv	a0,s6
    2440:	00fa0bb3          	add	s7,s4,a5
    2444:	fffff097          	auipc	ra,0xfffff
    2448:	a2c080e7          	jalr	-1492(ra) # e70 <strlen>
    244c:	00050c13          	mv	s8,a0
    2450:	000b8513          	mv	a0,s7
    2454:	00098493          	mv	s1,s3
    2458:	fffff097          	auipc	ra,0xfffff
    245c:	a18080e7          	jalr	-1512(ra) # e70 <strlen>
    2460:	f8ac1ae3          	bne	s8,a0,23f4 <fatfs_compare_names+0x5c>
    2464:	000b0513          	mv	a0,s6
    2468:	fffff097          	auipc	ra,0xfffff
    246c:	a08080e7          	jalr	-1528(ra) # e70 <strlen>
    2470:	00050613          	mv	a2,a0
    2474:	000b8593          	mv	a1,s7
    2478:	000b0513          	mv	a0,s6
    247c:	fffff097          	auipc	ra,0xfffff
    2480:	19c080e7          	jalr	412(ra) # 1618 <FileString_StrCmpNoCase>
    2484:	f60518e3          	bnez	a0,23f4 <fatfs_compare_names+0x5c>
    2488:	fff48793          	addi	a5,s1,-1
    248c:	00fa87b3          	add	a5,s5,a5
    2490:	41378733          	sub	a4,a5,s3
    2494:	02000693          	li	a3,32
    2498:	06e79263          	bne	a5,a4,24fc <fatfs_compare_names+0x164>
    249c:	fff40793          	addi	a5,s0,-1
    24a0:	00fa07b3          	add	a5,s4,a5
    24a4:	41278733          	sub	a4,a5,s2
    24a8:	02000693          	li	a3,32
    24ac:	06e79263          	bne	a5,a4,2510 <fatfs_compare_names+0x178>
    24b0:	f53912e3          	bne	s2,s3,23f4 <fatfs_compare_names+0x5c>
    24b4:	00090613          	mv	a2,s2
    24b8:	000a0593          	mv	a1,s4
    24bc:	000a8513          	mv	a0,s5
    24c0:	fffff097          	auipc	ra,0xfffff
    24c4:	158080e7          	jalr	344(ra) # 1618 <FileString_StrCmpNoCase>
    24c8:	00153513          	seqz	a0,a0
    24cc:	f2dff06f          	j	23f8 <fatfs_compare_names+0x60>
    24d0:	000a8513          	mv	a0,s5
    24d4:	fffff097          	auipc	ra,0xfffff
    24d8:	99c080e7          	jalr	-1636(ra) # e70 <strlen>
    24dc:	00050493          	mv	s1,a0
    24e0:	00050993          	mv	s3,a0
    24e4:	000a0513          	mv	a0,s4
    24e8:	fffff097          	auipc	ra,0xfffff
    24ec:	988080e7          	jalr	-1656(ra) # e70 <strlen>
    24f0:	00050413          	mv	s0,a0
    24f4:	00050913          	mv	s2,a0
    24f8:	f91ff06f          	j	2488 <fatfs_compare_names+0xf0>
    24fc:	0007c603          	lbu	a2,0(a5)
    2500:	f8d61ee3          	bne	a2,a3,249c <fatfs_compare_names+0x104>
    2504:	415789b3          	sub	s3,a5,s5
    2508:	fff78793          	addi	a5,a5,-1
    250c:	f8dff06f          	j	2498 <fatfs_compare_names+0x100>
    2510:	0007c603          	lbu	a2,0(a5)
    2514:	f8d61ee3          	bne	a2,a3,24b0 <fatfs_compare_names+0x118>
    2518:	41478933          	sub	s2,a5,s4
    251c:	fff78793          	addi	a5,a5,-1
    2520:	f8dff06f          	j	24ac <fatfs_compare_names+0x114>

00002524 <_check_file_open>:
    2524:	fe010113          	addi	sp,sp,-32
    2528:	000057b7          	lui	a5,0x5
    252c:	00812c23          	sw	s0,24(sp)
    2530:	c4c7a403          	lw	s0,-948(a5) # 4c4c <_open_file_list>
    2534:	00912a23          	sw	s1,20(sp)
    2538:	00112e23          	sw	ra,28(sp)
    253c:	01212823          	sw	s2,16(sp)
    2540:	01312623          	sw	s3,12(sp)
    2544:	00050493          	mv	s1,a0
    2548:	00041663          	bnez	s0,2554 <_check_file_open+0x30>
    254c:	00000513          	li	a0,0
    2550:	03c0006f          	j	258c <_check_file_open+0x68>
    2554:	bc440793          	addi	a5,s0,-1084
    2558:	00f49663          	bne	s1,a5,2564 <_check_file_open+0x40>
    255c:	00442403          	lw	s0,4(s0)
    2560:	fe9ff06f          	j	2548 <_check_file_open+0x24>
    2564:	01448593          	addi	a1,s1,20
    2568:	bd840513          	addi	a0,s0,-1064
    256c:	00000097          	auipc	ra,0x0
    2570:	e2c080e7          	jalr	-468(ra) # 2398 <fatfs_compare_names>
    2574:	fe0504e3          	beqz	a0,255c <_check_file_open+0x38>
    2578:	11848593          	addi	a1,s1,280
    257c:	cdc40513          	addi	a0,s0,-804
    2580:	00000097          	auipc	ra,0x0
    2584:	e18080e7          	jalr	-488(ra) # 2398 <fatfs_compare_names>
    2588:	fc050ae3          	beqz	a0,255c <_check_file_open+0x38>
    258c:	01c12083          	lw	ra,28(sp)
    2590:	01812403          	lw	s0,24(sp)
    2594:	01412483          	lw	s1,20(sp)
    2598:	01012903          	lw	s2,16(sp)
    259c:	00c12983          	lw	s3,12(sp)
    25a0:	02010113          	addi	sp,sp,32
    25a4:	00008067          	ret

000025a8 <fatfs_get_sfn_display_name>:
    25a8:	00000713          	li	a4,0
    25ac:	02000613          	li	a2,32
    25b0:	01900813          	li	a6,25
    25b4:	0005c783          	lbu	a5,0(a1)
    25b8:	00078663          	beqz	a5,25c4 <fatfs_get_sfn_display_name+0x1c>
    25bc:	ff470693          	addi	a3,a4,-12
    25c0:	00069863          	bnez	a3,25d0 <fatfs_get_sfn_display_name+0x28>
    25c4:	00050023          	sb	zero,0(a0)
    25c8:	00100513          	li	a0,1
    25cc:	00008067          	ret
    25d0:	00158593          	addi	a1,a1,1
    25d4:	fec780e3          	beq	a5,a2,25b4 <fatfs_get_sfn_display_name+0xc>
    25d8:	fbf78693          	addi	a3,a5,-65
    25dc:	0ff6f693          	zext.b	a3,a3
    25e0:	00d86663          	bltu	a6,a3,25ec <fatfs_get_sfn_display_name+0x44>
    25e4:	02078793          	addi	a5,a5,32
    25e8:	0ff7f793          	zext.b	a5,a5
    25ec:	00f50023          	sb	a5,0(a0)
    25f0:	00170713          	addi	a4,a4,1
    25f4:	00150513          	addi	a0,a0,1
    25f8:	fbdff06f          	j	25b4 <fatfs_get_sfn_display_name+0xc>

000025fc <fatfs_fat_init>:
    25fc:	ff010113          	addi	sp,sp,-16
    2600:	00812423          	sw	s0,8(sp)
    2604:	00912223          	sw	s1,4(sp)
    2608:	00112623          	sw	ra,12(sp)
    260c:	fff00793          	li	a5,-1
    2610:	25850493          	addi	s1,a0,600
    2614:	00050413          	mv	s0,a0
    2618:	44f52c23          	sw	a5,1112(a0)
    261c:	24052a23          	sw	zero,596(a0)
    2620:	44052e23          	sw	zero,1116(a0)
    2624:	20000613          	li	a2,512
    2628:	00048513          	mv	a0,s1
    262c:	00000593          	li	a1,0
    2630:	fffff097          	auipc	ra,0xfffff
    2634:	800080e7          	jalr	-2048(ra) # e30 <memset>
    2638:	25442783          	lw	a5,596(s0)
    263c:	00c12083          	lw	ra,12(sp)
    2640:	24942a23          	sw	s1,596(s0)
    2644:	46042023          	sw	zero,1120(s0)
    2648:	46f42223          	sw	a5,1124(s0)
    264c:	00812403          	lw	s0,8(sp)
    2650:	00412483          	lw	s1,4(sp)
    2654:	01010113          	addi	sp,sp,16
    2658:	00008067          	ret

0000265c <fatfs_init>:
    265c:	fd010113          	addi	sp,sp,-48
    2660:	02812423          	sw	s0,40(sp)
    2664:	02112623          	sw	ra,44(sp)
    2668:	02912223          	sw	s1,36(sp)
    266c:	03212023          	sw	s2,32(sp)
    2670:	01312e23          	sw	s3,28(sp)
    2674:	fff00793          	li	a5,-1
    2678:	24f52223          	sw	a5,580(a0)
    267c:	24052423          	sw	zero,584(a0)
    2680:	02052223          	sw	zero,36(a0)
    2684:	00050413          	mv	s0,a0
    2688:	00000097          	auipc	ra,0x0
    268c:	f74080e7          	jalr	-140(ra) # 25fc <fatfs_fat_init>
    2690:	03442783          	lw	a5,52(s0)
    2694:	02079463          	bnez	a5,26bc <fatfs_init+0x60>
    2698:	fff00713          	li	a4,-1
    269c:	02c12083          	lw	ra,44(sp)
    26a0:	02812403          	lw	s0,40(sp)
    26a4:	02412483          	lw	s1,36(sp)
    26a8:	02012903          	lw	s2,32(sp)
    26ac:	01c12983          	lw	s3,28(sp)
    26b0:	00070513          	mv	a0,a4
    26b4:	03010113          	addi	sp,sp,48
    26b8:	00008067          	ret
    26bc:	04440593          	addi	a1,s0,68
    26c0:	00100613          	li	a2,1
    26c4:	00000513          	li	a0,0
    26c8:	00b12623          	sw	a1,12(sp)
    26cc:	000780e7          	jalr	a5
    26d0:	fc0504e3          	beqz	a0,2698 <fatfs_init+0x3c>
    26d4:	24244703          	lbu	a4,578(s0)
    26d8:	05500793          	li	a5,85
    26dc:	00c12583          	lw	a1,12(sp)
    26e0:	00f70663          	beq	a4,a5,26ec <fatfs_init+0x90>
    26e4:	ffd00713          	li	a4,-3
    26e8:	fb5ff06f          	j	269c <fatfs_init+0x40>
    26ec:	24344703          	lbu	a4,579(s0)
    26f0:	0aa00793          	li	a5,170
    26f4:	fef718e3          	bne	a4,a5,26e4 <fatfs_init+0x88>
    26f8:	20644783          	lbu	a5,518(s0)
    26fc:	00600713          	li	a4,6
    2700:	02f76463          	bltu	a4,a5,2728 <fatfs_init+0xcc>
    2704:	00400713          	li	a4,4
    2708:	00f76663          	bltu	a4,a5,2714 <fatfs_init+0xb8>
    270c:	00000513          	li	a0,0
    2710:	02078663          	beqz	a5,273c <fatfs_init+0xe0>
    2714:	20c45503          	lhu	a0,524(s0)
    2718:	20a45783          	lhu	a5,522(s0)
    271c:	01051513          	slli	a0,a0,0x10
    2720:	00f56533          	or	a0,a0,a5
    2724:	0180006f          	j	273c <fatfs_init+0xe0>
    2728:	00c00713          	li	a4,12
    272c:	12f76663          	bltu	a4,a5,2858 <fatfs_init+0x1fc>
    2730:	00a00713          	li	a4,10
    2734:	00000513          	li	a0,0
    2738:	fcf76ee3          	bltu	a4,a5,2714 <fatfs_init+0xb8>
    273c:	03442783          	lw	a5,52(s0)
    2740:	00a42e23          	sw	a0,28(s0)
    2744:	00100613          	li	a2,1
    2748:	000780e7          	jalr	a5
    274c:	f40506e3          	beqz	a0,2698 <fatfs_init+0x3c>
    2750:	05044783          	lbu	a5,80(s0)
    2754:	04f44703          	lbu	a4,79(s0)
    2758:	20000693          	li	a3,512
    275c:	00879793          	slli	a5,a5,0x8
    2760:	00e7e7b3          	or	a5,a5,a4
    2764:	ffe00713          	li	a4,-2
    2768:	f2d79ae3          	bne	a5,a3,269c <fatfs_init+0x40>
    276c:	05644483          	lbu	s1,86(s0)
    2770:	05544783          	lbu	a5,85(s0)
    2774:	05144983          	lbu	s3,81(s0)
    2778:	00849493          	slli	s1,s1,0x8
    277c:	05a45583          	lhu	a1,90(s0)
    2780:	00f4e4b3          	or	s1,s1,a5
    2784:	01340023          	sb	s3,0(s0)
    2788:	02941423          	sh	s1,40(s0)
    278c:	05245903          	lhu	s2,82(s0)
    2790:	05444503          	lbu	a0,84(s0)
    2794:	00059463          	bnez	a1,279c <fatfs_init+0x140>
    2798:	06842583          	lw	a1,104(s0)
    279c:	07042783          	lw	a5,112(s0)
    27a0:	02b42023          	sw	a1,32(s0)
    27a4:	00549493          	slli	s1,s1,0x5
    27a8:	00f42423          	sw	a5,8(s0)
    27ac:	07445783          	lhu	a5,116(s0)
    27b0:	1ff48493          	addi	s1,s1,511
    27b4:	4094d493          	srai	s1,s1,0x9
    27b8:	00f41c23          	sh	a5,24(s0)
    27bc:	fffff097          	auipc	ra,0xfffff
    27c0:	dc4080e7          	jalr	-572(ra) # 1580 <__mulsi3>
    27c4:	00a907b3          	add	a5,s2,a0
    27c8:	00f42623          	sw	a5,12(s0)
    27cc:	01c42783          	lw	a5,28(s0)
    27d0:	24245703          	lhu	a4,578(s0)
    27d4:	00942823          	sw	s1,16(s0)
    27d8:	00f907b3          	add	a5,s2,a5
    27dc:	00f42a23          	sw	a5,20(s0)
    27e0:	00f507b3          	add	a5,a0,a5
    27e4:	00f42223          	sw	a5,4(s0)
    27e8:	0000b7b7          	lui	a5,0xb
    27ec:	a5578793          	addi	a5,a5,-1451 # aa55 <framebuffer+0x3c79>
    27f0:	eef71ae3          	bne	a4,a5,26e4 <fatfs_init+0x88>
    27f4:	05844783          	lbu	a5,88(s0)
    27f8:	05744703          	lbu	a4,87(s0)
    27fc:	00879793          	slli	a5,a5,0x8
    2800:	00e7e7b3          	or	a5,a5,a4
    2804:	00079463          	bnez	a5,280c <fatfs_init+0x1b0>
    2808:	06442783          	lw	a5,100(s0)
    280c:	ffb00713          	li	a4,-5
    2810:	e80986e3          	beqz	s3,269c <fatfs_init+0x40>
    2814:	00990933          	add	s2,s2,s1
    2818:	00a90533          	add	a0,s2,a0
    281c:	40a78533          	sub	a0,a5,a0
    2820:	00098593          	mv	a1,s3
    2824:	ffffe097          	auipc	ra,0xffffe
    2828:	560080e7          	jalr	1376(ra) # d84 <__udivsi3>
    282c:	000017b7          	lui	a5,0x1
    2830:	ff478793          	addi	a5,a5,-12 # ff4 <oled_init_mode+0xb4>
    2834:	ffb00713          	li	a4,-5
    2838:	e6a7f2e3          	bgeu	a5,a0,269c <fatfs_init+0x40>
    283c:	000107b7          	lui	a5,0x10
    2840:	ff478793          	addi	a5,a5,-12 # fff4 <_files+0x4db0>
    2844:	02a7e663          	bltu	a5,a0,2870 <fatfs_init+0x214>
    2848:	00042423          	sw	zero,8(s0)
    284c:	02042823          	sw	zero,48(s0)
    2850:	00000713          	li	a4,0
    2854:	e49ff06f          	j	269c <fatfs_init+0x40>
    2858:	ff278793          	addi	a5,a5,-14
    285c:	0ff7f793          	zext.b	a5,a5
    2860:	00100713          	li	a4,1
    2864:	00000513          	li	a0,0
    2868:	eaf776e3          	bgeu	a4,a5,2714 <fatfs_init+0xb8>
    286c:	ed1ff06f          	j	273c <fatfs_init+0xe0>
    2870:	00100793          	li	a5,1
    2874:	02f42823          	sw	a5,48(s0)
    2878:	fd9ff06f          	j	2850 <fatfs_init+0x1f4>

0000287c <fl_attach_media>:
    287c:	000057b7          	lui	a5,0x5
    2880:	c587a783          	lw	a5,-936(a5) # 4c58 <_filelib_init>
    2884:	fe010113          	addi	sp,sp,-32
    2888:	00812c23          	sw	s0,24(sp)
    288c:	00112e23          	sw	ra,28(sp)
    2890:	00050413          	mv	s0,a0
    2894:	00079a63          	bnez	a5,28a8 <fl_attach_media+0x2c>
    2898:	00b12623          	sw	a1,12(sp)
    289c:	fffff097          	auipc	ra,0xfffff
    28a0:	178080e7          	jalr	376(ra) # 1a14 <fl_init>
    28a4:	00c12583          	lw	a1,12(sp)
    28a8:	0000b7b7          	lui	a5,0xb
    28ac:	ddc78513          	addi	a0,a5,-548 # addc <_fs>
    28b0:	02b52c23          	sw	a1,56(a0)
    28b4:	02852a23          	sw	s0,52(a0)
    28b8:	00000097          	auipc	ra,0x0
    28bc:	da4080e7          	jalr	-604(ra) # 265c <fatfs_init>
    28c0:	00050593          	mv	a1,a0
    28c4:	02050863          	beqz	a0,28f4 <fl_attach_media+0x78>
    28c8:	00a12623          	sw	a0,12(sp)
    28cc:	00005537          	lui	a0,0x5
    28d0:	9e450513          	addi	a0,a0,-1564 # 49e4 <LEDS+0xcc>
    28d4:	fffff097          	auipc	ra,0xfffff
    28d8:	b70080e7          	jalr	-1168(ra) # 1444 <printf>
    28dc:	00c12583          	lw	a1,12(sp)
    28e0:	01c12083          	lw	ra,28(sp)
    28e4:	01812403          	lw	s0,24(sp)
    28e8:	00058513          	mv	a0,a1
    28ec:	02010113          	addi	sp,sp,32
    28f0:	00008067          	ret
    28f4:	000057b7          	lui	a5,0x5
    28f8:	00100713          	li	a4,1
    28fc:	c4e7aa23          	sw	a4,-940(a5) # 4c54 <_filelib_valid>
    2900:	fe1ff06f          	j	28e0 <fl_attach_media+0x64>

00002904 <fatfs_fat_purge>:
    2904:	25452583          	lw	a1,596(a0)
    2908:	fe010113          	addi	sp,sp,-32
    290c:	00812c23          	sw	s0,24(sp)
    2910:	00112e23          	sw	ra,28(sp)
    2914:	00050413          	mv	s0,a0
    2918:	00059663          	bnez	a1,2924 <fatfs_fat_purge+0x20>
    291c:	00100513          	li	a0,1
    2920:	02c0006f          	j	294c <fatfs_fat_purge+0x48>
    2924:	2045a783          	lw	a5,516(a1)
    2928:	00079663          	bnez	a5,2934 <fatfs_fat_purge+0x30>
    292c:	20c5a583          	lw	a1,524(a1)
    2930:	fe9ff06f          	j	2918 <fatfs_fat_purge+0x14>
    2934:	00040513          	mv	a0,s0
    2938:	00b12623          	sw	a1,12(sp)
    293c:	fffff097          	auipc	ra,0xfffff
    2940:	d78080e7          	jalr	-648(ra) # 16b4 <fatfs_fat_writeback>
    2944:	00c12583          	lw	a1,12(sp)
    2948:	fe0512e3          	bnez	a0,292c <fatfs_fat_purge+0x28>
    294c:	01c12083          	lw	ra,28(sp)
    2950:	01812403          	lw	s0,24(sp)
    2954:	02010113          	addi	sp,sp,32
    2958:	00008067          	ret

0000295c <fatfs_find_next_cluster>:
    295c:	ff010113          	addi	sp,sp,-16
    2960:	00812423          	sw	s0,8(sp)
    2964:	01212023          	sw	s2,0(sp)
    2968:	00112623          	sw	ra,12(sp)
    296c:	00912223          	sw	s1,4(sp)
    2970:	00050913          	mv	s2,a0
    2974:	00200413          	li	s0,2
    2978:	00058463          	beqz	a1,2980 <fatfs_find_next_cluster+0x24>
    297c:	00058413          	mv	s0,a1
    2980:	03092783          	lw	a5,48(s2)
    2984:	00745493          	srli	s1,s0,0x7
    2988:	00079463          	bnez	a5,2990 <fatfs_find_next_cluster+0x34>
    298c:	00845493          	srli	s1,s0,0x8
    2990:	01492583          	lw	a1,20(s2)
    2994:	00090513          	mv	a0,s2
    2998:	00b485b3          	add	a1,s1,a1
    299c:	fffff097          	auipc	ra,0xfffff
    29a0:	d9c080e7          	jalr	-612(ra) # 1738 <fatfs_fat_read_sector>
    29a4:	00050793          	mv	a5,a0
    29a8:	fff00513          	li	a0,-1
    29ac:	04078863          	beqz	a5,29fc <fatfs_find_next_cluster+0xa0>
    29b0:	03092703          	lw	a4,48(s2)
    29b4:	2087a783          	lw	a5,520(a5)
    29b8:	04071e63          	bnez	a4,2a14 <fatfs_find_next_cluster+0xb8>
    29bc:	00849493          	slli	s1,s1,0x8
    29c0:	40940433          	sub	s0,s0,s1
    29c4:	00141413          	slli	s0,s0,0x1
    29c8:	01041413          	slli	s0,s0,0x10
    29cc:	01045413          	srli	s0,s0,0x10
    29d0:	008787b3          	add	a5,a5,s0
    29d4:	0017c503          	lbu	a0,1(a5)
    29d8:	0007c783          	lbu	a5,0(a5)
    29dc:	00851513          	slli	a0,a0,0x8
    29e0:	00f50533          	add	a0,a0,a5
    29e4:	ffff07b7          	lui	a5,0xffff0
    29e8:	00878793          	addi	a5,a5,8 # ffff0008 <__stacktop+0xfffe0008>
    29ec:	00f507b3          	add	a5,a0,a5
    29f0:	00700713          	li	a4,7
    29f4:	00f76463          	bltu	a4,a5,29fc <fatfs_find_next_cluster+0xa0>
    29f8:	fff00513          	li	a0,-1
    29fc:	00c12083          	lw	ra,12(sp)
    2a00:	00812403          	lw	s0,8(sp)
    2a04:	00412483          	lw	s1,4(sp)
    2a08:	00012903          	lw	s2,0(sp)
    2a0c:	01010113          	addi	sp,sp,16
    2a10:	00008067          	ret
    2a14:	00749493          	slli	s1,s1,0x7
    2a18:	40940433          	sub	s0,s0,s1
    2a1c:	00241413          	slli	s0,s0,0x2
    2a20:	01041413          	slli	s0,s0,0x10
    2a24:	01045413          	srli	s0,s0,0x10
    2a28:	008787b3          	add	a5,a5,s0
    2a2c:	0037c503          	lbu	a0,3(a5)
    2a30:	0027c703          	lbu	a4,2(a5)
    2a34:	01851513          	slli	a0,a0,0x18
    2a38:	01071713          	slli	a4,a4,0x10
    2a3c:	00e50533          	add	a0,a0,a4
    2a40:	0007c703          	lbu	a4,0(a5)
    2a44:	0017c783          	lbu	a5,1(a5)
    2a48:	00e50533          	add	a0,a0,a4
    2a4c:	00879793          	slli	a5,a5,0x8
    2a50:	00f50533          	add	a0,a0,a5
    2a54:	00451513          	slli	a0,a0,0x4
    2a58:	00455513          	srli	a0,a0,0x4
    2a5c:	f00007b7          	lui	a5,0xf0000
    2a60:	f89ff06f          	j	29e8 <fatfs_find_next_cluster+0x8c>

00002a64 <fatfs_sector_reader>:
    2a64:	03052783          	lw	a5,48(a0)
    2a68:	fe010113          	addi	sp,sp,-32
    2a6c:	00812c23          	sw	s0,24(sp)
    2a70:	01212823          	sw	s2,16(sp)
    2a74:	01512223          	sw	s5,4(sp)
    2a78:	00112e23          	sw	ra,28(sp)
    2a7c:	00912a23          	sw	s1,20(sp)
    2a80:	01312623          	sw	s3,12(sp)
    2a84:	01412423          	sw	s4,8(sp)
    2a88:	01612023          	sw	s6,0(sp)
    2a8c:	00f5e7b3          	or	a5,a1,a5
    2a90:	00050413          	mv	s0,a0
    2a94:	00060913          	mv	s2,a2
    2a98:	00068a93          	mv	s5,a3
    2a9c:	08079063          	bnez	a5,2b1c <fatfs_sector_reader+0xb8>
    2aa0:	01052783          	lw	a5,16(a0)
    2aa4:	02f66863          	bltu	a2,a5,2ad4 <fatfs_sector_reader+0x70>
    2aa8:	00000513          	li	a0,0
    2aac:	01c12083          	lw	ra,28(sp)
    2ab0:	01812403          	lw	s0,24(sp)
    2ab4:	01412483          	lw	s1,20(sp)
    2ab8:	01012903          	lw	s2,16(sp)
    2abc:	00c12983          	lw	s3,12(sp)
    2ac0:	00812a03          	lw	s4,8(sp)
    2ac4:	00412a83          	lw	s5,4(sp)
    2ac8:	00012b03          	lw	s6,0(sp)
    2acc:	02010113          	addi	sp,sp,32
    2ad0:	00008067          	ret
    2ad4:	01c52503          	lw	a0,28(a0)
    2ad8:	00c42783          	lw	a5,12(s0)
    2adc:	00f50533          	add	a0,a0,a5
    2ae0:	01250533          	add	a0,a0,s2
    2ae4:	0a0a8663          	beqz	s5,2b90 <fatfs_sector_reader+0x12c>
    2ae8:	03442783          	lw	a5,52(s0)
    2aec:	00100613          	li	a2,1
    2af0:	000a8593          	mv	a1,s5
    2af4:	01812403          	lw	s0,24(sp)
    2af8:	01c12083          	lw	ra,28(sp)
    2afc:	01412483          	lw	s1,20(sp)
    2b00:	01012903          	lw	s2,16(sp)
    2b04:	00c12983          	lw	s3,12(sp)
    2b08:	00812a03          	lw	s4,8(sp)
    2b0c:	00412a83          	lw	s5,4(sp)
    2b10:	00012b03          	lw	s6,0(sp)
    2b14:	02010113          	addi	sp,sp,32
    2b18:	00078067          	jr	a5 # f0000000 <__stacktop+0xefff0000>
    2b1c:	00054783          	lbu	a5,0(a0)
    2b20:	00058493          	mv	s1,a1
    2b24:	00060513          	mv	a0,a2
    2b28:	00078593          	mv	a1,a5
    2b2c:	00078a13          	mv	s4,a5
    2b30:	ffffe097          	auipc	ra,0xffffe
    2b34:	254080e7          	jalr	596(ra) # d84 <__udivsi3>
    2b38:	00050b13          	mv	s6,a0
    2b3c:	00000993          	li	s3,0
    2b40:	03699a63          	bne	s3,s6,2b74 <fatfs_sector_reader+0x110>
    2b44:	fff00793          	li	a5,-1
    2b48:	f6f480e3          	beq	s1,a5,2aa8 <fatfs_sector_reader+0x44>
    2b4c:	000a0593          	mv	a1,s4
    2b50:	00090513          	mv	a0,s2
    2b54:	ffffe097          	auipc	ra,0xffffe
    2b58:	278080e7          	jalr	632(ra) # dcc <__umodsi3>
    2b5c:	00050913          	mv	s2,a0
    2b60:	00048593          	mv	a1,s1
    2b64:	00040513          	mv	a0,s0
    2b68:	fffff097          	auipc	ra,0xfffff
    2b6c:	d7c080e7          	jalr	-644(ra) # 18e4 <fatfs_lba_of_cluster>
    2b70:	f71ff06f          	j	2ae0 <fatfs_sector_reader+0x7c>
    2b74:	00048593          	mv	a1,s1
    2b78:	00040513          	mv	a0,s0
    2b7c:	00000097          	auipc	ra,0x0
    2b80:	de0080e7          	jalr	-544(ra) # 295c <fatfs_find_next_cluster>
    2b84:	00050493          	mv	s1,a0
    2b88:	00198993          	addi	s3,s3,1
    2b8c:	fb5ff06f          	j	2b40 <fatfs_sector_reader+0xdc>
    2b90:	24442783          	lw	a5,580(s0)
    2b94:	00a78c63          	beq	a5,a0,2bac <fatfs_sector_reader+0x148>
    2b98:	03442783          	lw	a5,52(s0)
    2b9c:	24a42223          	sw	a0,580(s0)
    2ba0:	00100613          	li	a2,1
    2ba4:	04440593          	addi	a1,s0,68
    2ba8:	f4dff06f          	j	2af4 <fatfs_sector_reader+0x90>
    2bac:	00100513          	li	a0,1
    2bb0:	efdff06f          	j	2aac <fatfs_sector_reader+0x48>

00002bb4 <fatfs_get_file_entry>:
    2bb4:	eb010113          	addi	sp,sp,-336
    2bb8:	14812423          	sw	s0,328(sp)
    2bbc:	14912223          	sw	s1,324(sp)
    2bc0:	13312e23          	sw	s3,316(sp)
    2bc4:	13712623          	sw	s7,300(sp)
    2bc8:	13812423          	sw	s8,296(sp)
    2bcc:	13912223          	sw	s9,292(sp)
    2bd0:	14112623          	sw	ra,332(sp)
    2bd4:	15212023          	sw	s2,320(sp)
    2bd8:	13412c23          	sw	s4,312(sp)
    2bdc:	13512a23          	sw	s5,308(sp)
    2be0:	13612823          	sw	s6,304(sp)
    2be4:	00050993          	mv	s3,a0
    2be8:	00058c93          	mv	s9,a1
    2bec:	00060b93          	mv	s7,a2
    2bf0:	00068c13          	mv	s8,a3
    2bf4:	10010ea3          	sb	zero,285(sp)
    2bf8:	01810413          	addi	s0,sp,24
    2bfc:	11c10493          	addi	s1,sp,284
    2c00:	00040513          	mv	a0,s0
    2c04:	00d00613          	li	a2,13
    2c08:	00000593          	li	a1,0
    2c0c:	00d40413          	addi	s0,s0,13
    2c10:	ffffe097          	auipc	ra,0xffffe
    2c14:	220080e7          	jalr	544(ra) # e30 <memset>
    2c18:	fe9414e3          	bne	s0,s1,2c00 <fatfs_get_file_entry+0x4c>
    2c1c:	00000493          	li	s1,0
    2c20:	24498a13          	addi	s4,s3,580
    2c24:	00810913          	addi	s2,sp,8
    2c28:	00800a93          	li	s5,8
    2c2c:	02e00b13          	li	s6,46
    2c30:	00000693          	li	a3,0
    2c34:	00048613          	mv	a2,s1
    2c38:	000c8593          	mv	a1,s9
    2c3c:	00098513          	mv	a0,s3
    2c40:	00000097          	auipc	ra,0x0
    2c44:	e24080e7          	jalr	-476(ra) # 2a64 <fatfs_sector_reader>
    2c48:	08050c63          	beqz	a0,2ce0 <fatfs_get_file_entry+0x12c>
    2c4c:	00148493          	addi	s1,s1,1
    2c50:	04498413          	addi	s0,s3,68
    2c54:	00040513          	mv	a0,s0
    2c58:	fffff097          	auipc	ra,0xfffff
    2c5c:	f34080e7          	jalr	-204(ra) # 1b8c <fatfs_entry_lfn_text>
    2c60:	02050063          	beqz	a0,2c80 <fatfs_get_file_entry+0xcc>
    2c64:	00040593          	mv	a1,s0
    2c68:	01810513          	addi	a0,sp,24
    2c6c:	fffff097          	auipc	ra,0xfffff
    2c70:	e18080e7          	jalr	-488(ra) # 1a84 <fatfs_lfn_cache_entry>
    2c74:	02040413          	addi	s0,s0,32
    2c78:	fd441ee3          	bne	s0,s4,2c54 <fatfs_get_file_entry+0xa0>
    2c7c:	fb5ff06f          	j	2c30 <fatfs_get_file_entry+0x7c>
    2c80:	00040513          	mv	a0,s0
    2c84:	fffff097          	auipc	ra,0xfffff
    2c88:	f1c080e7          	jalr	-228(ra) # 1ba0 <fatfs_entry_lfn_invalid>
    2c8c:	00050663          	beqz	a0,2c98 <fatfs_get_file_entry+0xe4>
    2c90:	10010ea3          	sb	zero,285(sp)
    2c94:	fe1ff06f          	j	2c74 <fatfs_get_file_entry+0xc0>
    2c98:	00040593          	mv	a1,s0
    2c9c:	01810513          	addi	a0,sp,24
    2ca0:	fffff097          	auipc	ra,0xfffff
    2ca4:	f34080e7          	jalr	-204(ra) # 1bd4 <fatfs_entry_lfn_exists>
    2ca8:	06050663          	beqz	a0,2d14 <fatfs_get_file_entry+0x160>
    2cac:	01810513          	addi	a0,sp,24
    2cb0:	fffff097          	auipc	ra,0xfffff
    2cb4:	ea0080e7          	jalr	-352(ra) # 1b50 <fatfs_lfn_cache_get>
    2cb8:	000b8593          	mv	a1,s7
    2cbc:	fffff097          	auipc	ra,0xfffff
    2cc0:	6dc080e7          	jalr	1756(ra) # 2398 <fatfs_compare_names>
    2cc4:	fc0506e3          	beqz	a0,2c90 <fatfs_get_file_entry+0xdc>
    2cc8:	02000613          	li	a2,32
    2ccc:	00040593          	mv	a1,s0
    2cd0:	000c0513          	mv	a0,s8
    2cd4:	ffffe097          	auipc	ra,0xffffe
    2cd8:	178080e7          	jalr	376(ra) # e4c <memcpy>
    2cdc:	00100513          	li	a0,1
    2ce0:	14c12083          	lw	ra,332(sp)
    2ce4:	14812403          	lw	s0,328(sp)
    2ce8:	14412483          	lw	s1,324(sp)
    2cec:	14012903          	lw	s2,320(sp)
    2cf0:	13c12983          	lw	s3,316(sp)
    2cf4:	13812a03          	lw	s4,312(sp)
    2cf8:	13412a83          	lw	s5,308(sp)
    2cfc:	13012b03          	lw	s6,304(sp)
    2d00:	12c12b83          	lw	s7,300(sp)
    2d04:	12812c03          	lw	s8,296(sp)
    2d08:	12412c83          	lw	s9,292(sp)
    2d0c:	15010113          	addi	sp,sp,336
    2d10:	00008067          	ret
    2d14:	00040513          	mv	a0,s0
    2d18:	fffff097          	auipc	ra,0xfffff
    2d1c:	f0c080e7          	jalr	-244(ra) # 1c24 <fatfs_entry_sfn_only>
    2d20:	f4050ae3          	beqz	a0,2c74 <fatfs_get_file_entry+0xc0>
    2d24:	00d00613          	li	a2,13
    2d28:	00000593          	li	a1,0
    2d2c:	00090513          	mv	a0,s2
    2d30:	ffffe097          	auipc	ra,0xffffe
    2d34:	100080e7          	jalr	256(ra) # e30 <memset>
    2d38:	00000793          	li	a5,0
    2d3c:	00f406b3          	add	a3,s0,a5
    2d40:	0006c683          	lbu	a3,0(a3)
    2d44:	00f90733          	add	a4,s2,a5
    2d48:	00178793          	addi	a5,a5,1
    2d4c:	00d70023          	sb	a3,0(a4)
    2d50:	ff5796e3          	bne	a5,s5,2d3c <fatfs_get_file_entry+0x188>
    2d54:	00844703          	lbu	a4,8(s0)
    2d58:	00944783          	lbu	a5,9(s0)
    2d5c:	00a44683          	lbu	a3,10(s0)
    2d60:	00e108a3          	sb	a4,17(sp)
    2d64:	00f10923          	sb	a5,18(sp)
    2d68:	fe070713          	addi	a4,a4,-32
    2d6c:	fe078793          	addi	a5,a5,-32
    2d70:	00f037b3          	snez	a5,a5
    2d74:	00e03733          	snez	a4,a4
    2d78:	00d109a3          	sb	a3,19(sp)
    2d7c:	00e7e7b3          	or	a5,a5,a4
    2d80:	00079863          	bnez	a5,2d90 <fatfs_get_file_entry+0x1dc>
    2d84:	fe068693          	addi	a3,a3,-32
    2d88:	02000793          	li	a5,32
    2d8c:	00068a63          	beqz	a3,2da0 <fatfs_get_file_entry+0x1ec>
    2d90:	00814703          	lbu	a4,8(sp)
    2d94:	02e00793          	li	a5,46
    2d98:	01671463          	bne	a4,s6,2da0 <fatfs_get_file_entry+0x1ec>
    2d9c:	02000793          	li	a5,32
    2da0:	00f10823          	sb	a5,16(sp)
    2da4:	000b8593          	mv	a1,s7
    2da8:	00090513          	mv	a0,s2
    2dac:	f11ff06f          	j	2cbc <fatfs_get_file_entry+0x108>

00002db0 <_open_directory>:
    2db0:	eb010113          	addi	sp,sp,-336
    2db4:	15212023          	sw	s2,320(sp)
    2db8:	0000b937          	lui	s2,0xb
    2dbc:	ddc90913          	addi	s2,s2,-548 # addc <_fs>
    2dc0:	14812423          	sw	s0,328(sp)
    2dc4:	00892403          	lw	s0,8(s2)
    2dc8:	14912223          	sw	s1,324(sp)
    2dcc:	13312e23          	sw	s3,316(sp)
    2dd0:	13412c23          	sw	s4,312(sp)
    2dd4:	13512a23          	sw	s5,308(sp)
    2dd8:	13612823          	sw	s6,304(sp)
    2ddc:	14112623          	sw	ra,332(sp)
    2de0:	00050a13          	mv	s4,a0
    2de4:	00058a93          	mv	s5,a1
    2de8:	fffff097          	auipc	ra,0xfffff
    2dec:	368080e7          	jalr	872(ra) # 2150 <fatfs_total_path_levels>
    2df0:	00050b13          	mv	s6,a0
    2df4:	00000493          	li	s1,0
    2df8:	fff00993          	li	s3,-1
    2dfc:	009b5863          	bge	s6,s1,2e0c <_open_directory+0x5c>
    2e00:	008aa023          	sw	s0,0(s5)
    2e04:	00100513          	li	a0,1
    2e08:	0240006f          	j	2e2c <_open_directory+0x7c>
    2e0c:	10400693          	li	a3,260
    2e10:	02c10613          	addi	a2,sp,44
    2e14:	00048593          	mv	a1,s1
    2e18:	000a0513          	mv	a0,s4
    2e1c:	fffff097          	auipc	ra,0xfffff
    2e20:	3a4080e7          	jalr	932(ra) # 21c0 <fatfs_get_substring>
    2e24:	03351863          	bne	a0,s3,2e54 <_open_directory+0xa4>
    2e28:	00000513          	li	a0,0
    2e2c:	14c12083          	lw	ra,332(sp)
    2e30:	14812403          	lw	s0,328(sp)
    2e34:	14412483          	lw	s1,324(sp)
    2e38:	14012903          	lw	s2,320(sp)
    2e3c:	13c12983          	lw	s3,316(sp)
    2e40:	13812a03          	lw	s4,312(sp)
    2e44:	13412a83          	lw	s5,308(sp)
    2e48:	13012b03          	lw	s6,304(sp)
    2e4c:	15010113          	addi	sp,sp,336
    2e50:	00008067          	ret
    2e54:	00c10693          	addi	a3,sp,12
    2e58:	02c10613          	addi	a2,sp,44
    2e5c:	00040593          	mv	a1,s0
    2e60:	00090513          	mv	a0,s2
    2e64:	00000097          	auipc	ra,0x0
    2e68:	d50080e7          	jalr	-688(ra) # 2bb4 <fatfs_get_file_entry>
    2e6c:	fa050ee3          	beqz	a0,2e28 <_open_directory+0x78>
    2e70:	01714783          	lbu	a5,23(sp)
    2e74:	0107f793          	andi	a5,a5,16
    2e78:	fa0788e3          	beqz	a5,2e28 <_open_directory+0x78>
    2e7c:	02015403          	lhu	s0,32(sp)
    2e80:	02615783          	lhu	a5,38(sp)
    2e84:	00148493          	addi	s1,s1,1
    2e88:	01041413          	slli	s0,s0,0x10
    2e8c:	00f40433          	add	s0,s0,a5
    2e90:	f6dff06f          	j	2dfc <_open_directory+0x4c>

00002e94 <fl_opendir>:
    2e94:	fe010113          	addi	sp,sp,-32
    2e98:	fff00793          	li	a5,-1
    2e9c:	00f12623          	sw	a5,12(sp)
    2ea0:	000057b7          	lui	a5,0x5
    2ea4:	c587a783          	lw	a5,-936(a5) # 4c58 <_filelib_init>
    2ea8:	00812c23          	sw	s0,24(sp)
    2eac:	01212823          	sw	s2,16(sp)
    2eb0:	00112e23          	sw	ra,28(sp)
    2eb4:	00912a23          	sw	s1,20(sp)
    2eb8:	00050913          	mv	s2,a0
    2ebc:	00058413          	mv	s0,a1
    2ec0:	00079663          	bnez	a5,2ecc <fl_opendir+0x38>
    2ec4:	fffff097          	auipc	ra,0xfffff
    2ec8:	b50080e7          	jalr	-1200(ra) # 1a14 <fl_init>
    2ecc:	0000b4b7          	lui	s1,0xb
    2ed0:	ddc48493          	addi	s1,s1,-548 # addc <_fs>
    2ed4:	03c4a783          	lw	a5,60(s1)
    2ed8:	00078463          	beqz	a5,2ee0 <fl_opendir+0x4c>
    2edc:	000780e7          	jalr	a5
    2ee0:	00090513          	mv	a0,s2
    2ee4:	fffff097          	auipc	ra,0xfffff
    2ee8:	26c080e7          	jalr	620(ra) # 2150 <fatfs_total_path_levels>
    2eec:	fff00793          	li	a5,-1
    2ef0:	02f51063          	bne	a0,a5,2f10 <fl_opendir+0x7c>
    2ef4:	0084a783          	lw	a5,8(s1)
    2ef8:	00f12623          	sw	a5,12(sp)
    2efc:	00c12783          	lw	a5,12(sp)
    2f00:	00042023          	sw	zero,0(s0)
    2f04:	00040423          	sb	zero,8(s0)
    2f08:	00f42223          	sw	a5,4(s0)
    2f0c:	0180006f          	j	2f24 <fl_opendir+0x90>
    2f10:	00c10593          	addi	a1,sp,12
    2f14:	00090513          	mv	a0,s2
    2f18:	00000097          	auipc	ra,0x0
    2f1c:	e98080e7          	jalr	-360(ra) # 2db0 <_open_directory>
    2f20:	fc051ee3          	bnez	a0,2efc <fl_opendir+0x68>
    2f24:	0404a783          	lw	a5,64(s1)
    2f28:	00078463          	beqz	a5,2f30 <fl_opendir+0x9c>
    2f2c:	000780e7          	jalr	a5
    2f30:	00c12703          	lw	a4,12(sp)
    2f34:	fff00793          	li	a5,-1
    2f38:	00f71463          	bne	a4,a5,2f40 <fl_opendir+0xac>
    2f3c:	00000413          	li	s0,0
    2f40:	01c12083          	lw	ra,28(sp)
    2f44:	00040513          	mv	a0,s0
    2f48:	01812403          	lw	s0,24(sp)
    2f4c:	01412483          	lw	s1,20(sp)
    2f50:	01012903          	lw	s2,16(sp)
    2f54:	02010113          	addi	sp,sp,32
    2f58:	00008067          	ret

00002f5c <_open_file>:
    2f5c:	fc010113          	addi	sp,sp,-64
    2f60:	03312623          	sw	s3,44(sp)
    2f64:	02112e23          	sw	ra,60(sp)
    2f68:	02812c23          	sw	s0,56(sp)
    2f6c:	02912a23          	sw	s1,52(sp)
    2f70:	03212823          	sw	s2,48(sp)
    2f74:	00050993          	mv	s3,a0
    2f78:	fffff097          	auipc	ra,0xfffff
    2f7c:	8ac080e7          	jalr	-1876(ra) # 1824 <_allocate_file>
    2f80:	06050463          	beqz	a0,2fe8 <_open_file+0x8c>
    2f84:	01450913          	addi	s2,a0,20
    2f88:	00050413          	mv	s0,a0
    2f8c:	10400613          	li	a2,260
    2f90:	00000593          	li	a1,0
    2f94:	00090513          	mv	a0,s2
    2f98:	ffffe097          	auipc	ra,0xffffe
    2f9c:	e98080e7          	jalr	-360(ra) # e30 <memset>
    2fa0:	11840493          	addi	s1,s0,280
    2fa4:	10400613          	li	a2,260
    2fa8:	00000593          	li	a1,0
    2fac:	00048513          	mv	a0,s1
    2fb0:	ffffe097          	auipc	ra,0xffffe
    2fb4:	e80080e7          	jalr	-384(ra) # e30 <memset>
    2fb8:	10400713          	li	a4,260
    2fbc:	00048693          	mv	a3,s1
    2fc0:	00070613          	mv	a2,a4
    2fc4:	00090593          	mv	a1,s2
    2fc8:	00098513          	mv	a0,s3
    2fcc:	fffff097          	auipc	ra,0xfffff
    2fd0:	2dc080e7          	jalr	732(ra) # 22a8 <fatfs_split_path>
    2fd4:	fff00793          	li	a5,-1
    2fd8:	02f51a63          	bne	a0,a5,300c <_open_file+0xb0>
    2fdc:	00040513          	mv	a0,s0
    2fe0:	fffff097          	auipc	ra,0xfffff
    2fe4:	8bc080e7          	jalr	-1860(ra) # 189c <_free_file>
    2fe8:	00000413          	li	s0,0
    2fec:	03c12083          	lw	ra,60(sp)
    2ff0:	00040513          	mv	a0,s0
    2ff4:	03812403          	lw	s0,56(sp)
    2ff8:	03412483          	lw	s1,52(sp)
    2ffc:	03012903          	lw	s2,48(sp)
    3000:	02c12983          	lw	s3,44(sp)
    3004:	04010113          	addi	sp,sp,64
    3008:	00008067          	ret
    300c:	00040513          	mv	a0,s0
    3010:	fffff097          	auipc	ra,0xfffff
    3014:	514080e7          	jalr	1300(ra) # 2524 <_check_file_open>
    3018:	fc0512e3          	bnez	a0,2fdc <_open_file+0x80>
    301c:	01444783          	lbu	a5,20(s0)
    3020:	08079c63          	bnez	a5,30b8 <_open_file+0x15c>
    3024:	0000b7b7          	lui	a5,0xb
    3028:	de47a783          	lw	a5,-540(a5) # ade4 <_fs+0x8>
    302c:	00f42023          	sw	a5,0(s0)
    3030:	00042583          	lw	a1,0(s0)
    3034:	00048613          	mv	a2,s1
    3038:	0000b4b7          	lui	s1,0xb
    303c:	00010693          	mv	a3,sp
    3040:	ddc48513          	addi	a0,s1,-548 # addc <_fs>
    3044:	00000097          	auipc	ra,0x0
    3048:	b70080e7          	jalr	-1168(ra) # 2bb4 <fatfs_get_file_entry>
    304c:	f80508e3          	beqz	a0,2fdc <_open_file+0x80>
    3050:	00b14783          	lbu	a5,11(sp)
    3054:	0207f793          	andi	a5,a5,32
    3058:	f80782e3          	beqz	a5,2fdc <_open_file+0x80>
    305c:	00b00613          	li	a2,11
    3060:	00010593          	mv	a1,sp
    3064:	21c40513          	addi	a0,s0,540
    3068:	ffffe097          	auipc	ra,0xffffe
    306c:	de4080e7          	jalr	-540(ra) # e4c <memcpy>
    3070:	01c12783          	lw	a5,28(sp)
    3074:	01a15703          	lhu	a4,26(sp)
    3078:	00042423          	sw	zero,8(s0)
    307c:	00f42623          	sw	a5,12(s0)
    3080:	01415783          	lhu	a5,20(sp)
    3084:	42042a23          	sw	zero,1076(s0)
    3088:	00042823          	sw	zero,16(s0)
    308c:	01079793          	slli	a5,a5,0x10
    3090:	00e787b3          	add	a5,a5,a4
    3094:	00f42223          	sw	a5,4(s0)
    3098:	fff00793          	li	a5,-1
    309c:	42f42823          	sw	a5,1072(s0)
    30a0:	22f42423          	sw	a5,552(s0)
    30a4:	22f42623          	sw	a5,556(s0)
    30a8:	ddc48513          	addi	a0,s1,-548
    30ac:	00000097          	auipc	ra,0x0
    30b0:	858080e7          	jalr	-1960(ra) # 2904 <fatfs_fat_purge>
    30b4:	f39ff06f          	j	2fec <_open_file+0x90>
    30b8:	00040593          	mv	a1,s0
    30bc:	00090513          	mv	a0,s2
    30c0:	00000097          	auipc	ra,0x0
    30c4:	cf0080e7          	jalr	-784(ra) # 2db0 <_open_directory>
    30c8:	f60514e3          	bnez	a0,3030 <_open_file+0xd4>
    30cc:	f11ff06f          	j	2fdc <_open_file+0x80>

000030d0 <fatfs_sfn_exists>:
    30d0:	fe010113          	addi	sp,sp,-32
    30d4:	01212823          	sw	s2,16(sp)
    30d8:	01312623          	sw	s3,12(sp)
    30dc:	01412423          	sw	s4,8(sp)
    30e0:	01512223          	sw	s5,4(sp)
    30e4:	01612023          	sw	s6,0(sp)
    30e8:	00112e23          	sw	ra,28(sp)
    30ec:	00812c23          	sw	s0,24(sp)
    30f0:	00912a23          	sw	s1,20(sp)
    30f4:	00050993          	mv	s3,a0
    30f8:	00058a93          	mv	s5,a1
    30fc:	00060b13          	mv	s6,a2
    3100:	00000913          	li	s2,0
    3104:	24450a13          	addi	s4,a0,580
    3108:	00000693          	li	a3,0
    310c:	00090613          	mv	a2,s2
    3110:	000a8593          	mv	a1,s5
    3114:	00098513          	mv	a0,s3
    3118:	00000097          	auipc	ra,0x0
    311c:	94c080e7          	jalr	-1716(ra) # 2a64 <fatfs_sector_reader>
    3120:	00050413          	mv	s0,a0
    3124:	06050263          	beqz	a0,3188 <fatfs_sfn_exists+0xb8>
    3128:	00190913          	addi	s2,s2,1
    312c:	04498493          	addi	s1,s3,68
    3130:	00048513          	mv	a0,s1
    3134:	fffff097          	auipc	ra,0xfffff
    3138:	a58080e7          	jalr	-1448(ra) # 1b8c <fatfs_entry_lfn_text>
    313c:	00050863          	beqz	a0,314c <fatfs_sfn_exists+0x7c>
    3140:	02048493          	addi	s1,s1,32
    3144:	ff4496e3          	bne	s1,s4,3130 <fatfs_sfn_exists+0x60>
    3148:	fc1ff06f          	j	3108 <fatfs_sfn_exists+0x38>
    314c:	00048513          	mv	a0,s1
    3150:	fffff097          	auipc	ra,0xfffff
    3154:	a50080e7          	jalr	-1456(ra) # 1ba0 <fatfs_entry_lfn_invalid>
    3158:	fe0514e3          	bnez	a0,3140 <fatfs_sfn_exists+0x70>
    315c:	00048513          	mv	a0,s1
    3160:	fffff097          	auipc	ra,0xfffff
    3164:	ac4080e7          	jalr	-1340(ra) # 1c24 <fatfs_entry_sfn_only>
    3168:	00050413          	mv	s0,a0
    316c:	fc050ae3          	beqz	a0,3140 <fatfs_sfn_exists+0x70>
    3170:	00b00613          	li	a2,11
    3174:	000b0593          	mv	a1,s6
    3178:	00048513          	mv	a0,s1
    317c:	ffffe097          	auipc	ra,0xffffe
    3180:	d14080e7          	jalr	-748(ra) # e90 <strncmp>
    3184:	fa051ee3          	bnez	a0,3140 <fatfs_sfn_exists+0x70>
    3188:	01c12083          	lw	ra,28(sp)
    318c:	00040513          	mv	a0,s0
    3190:	01812403          	lw	s0,24(sp)
    3194:	01412483          	lw	s1,20(sp)
    3198:	01012903          	lw	s2,16(sp)
    319c:	00c12983          	lw	s3,12(sp)
    31a0:	00812a03          	lw	s4,8(sp)
    31a4:	00412a83          	lw	s5,4(sp)
    31a8:	00012b03          	lw	s6,0(sp)
    31ac:	02010113          	addi	sp,sp,32
    31b0:	00008067          	ret

000031b4 <fatfs_update_file_length>:
    31b4:	03852783          	lw	a5,56(a0)
    31b8:	14078e63          	beqz	a5,3314 <fatfs_update_file_length+0x160>
    31bc:	fd010113          	addi	sp,sp,-48
    31c0:	02912223          	sw	s1,36(sp)
    31c4:	03212023          	sw	s2,32(sp)
    31c8:	01312e23          	sw	s3,28(sp)
    31cc:	01412c23          	sw	s4,24(sp)
    31d0:	01612823          	sw	s6,16(sp)
    31d4:	01712623          	sw	s7,12(sp)
    31d8:	02112623          	sw	ra,44(sp)
    31dc:	02812423          	sw	s0,40(sp)
    31e0:	01512a23          	sw	s5,20(sp)
    31e4:	00068913          	mv	s2,a3
    31e8:	00060b93          	mv	s7,a2
    31ec:	00058b13          	mv	s6,a1
    31f0:	00050493          	mv	s1,a0
    31f4:	00000993          	li	s3,0
    31f8:	24450a13          	addi	s4,a0,580
    31fc:	00000693          	li	a3,0
    3200:	00098613          	mv	a2,s3
    3204:	000b0593          	mv	a1,s6
    3208:	00048513          	mv	a0,s1
    320c:	00000097          	auipc	ra,0x0
    3210:	858080e7          	jalr	-1960(ra) # 2a64 <fatfs_sector_reader>
    3214:	0c050863          	beqz	a0,32e4 <fatfs_update_file_length+0x130>
    3218:	04448413          	addi	s0,s1,68
    321c:	00198993          	addi	s3,s3,1
    3220:	00040a93          	mv	s5,s0
    3224:	00040513          	mv	a0,s0
    3228:	fffff097          	auipc	ra,0xfffff
    322c:	964080e7          	jalr	-1692(ra) # 1b8c <fatfs_entry_lfn_text>
    3230:	0a051463          	bnez	a0,32d8 <fatfs_update_file_length+0x124>
    3234:	00040513          	mv	a0,s0
    3238:	fffff097          	auipc	ra,0xfffff
    323c:	968080e7          	jalr	-1688(ra) # 1ba0 <fatfs_entry_lfn_invalid>
    3240:	08051c63          	bnez	a0,32d8 <fatfs_update_file_length+0x124>
    3244:	00040513          	mv	a0,s0
    3248:	fffff097          	auipc	ra,0xfffff
    324c:	9dc080e7          	jalr	-1572(ra) # 1c24 <fatfs_entry_sfn_only>
    3250:	08050463          	beqz	a0,32d8 <fatfs_update_file_length+0x124>
    3254:	00b00613          	li	a2,11
    3258:	000b8593          	mv	a1,s7
    325c:	00040513          	mv	a0,s0
    3260:	ffffe097          	auipc	ra,0xffffe
    3264:	c30080e7          	jalr	-976(ra) # e90 <strncmp>
    3268:	06051863          	bnez	a0,32d8 <fatfs_update_file_length+0x124>
    326c:	00895793          	srli	a5,s2,0x8
    3270:	01240e23          	sb	s2,28(s0)
    3274:	00f40ea3          	sb	a5,29(s0)
    3278:	01095793          	srli	a5,s2,0x10
    327c:	01895913          	srli	s2,s2,0x18
    3280:	00f40f23          	sb	a5,30(s0)
    3284:	01240fa3          	sb	s2,31(s0)
    3288:	00040593          	mv	a1,s0
    328c:	02000613          	li	a2,32
    3290:	00040513          	mv	a0,s0
    3294:	ffffe097          	auipc	ra,0xffffe
    3298:	bb8080e7          	jalr	-1096(ra) # e4c <memcpy>
    329c:	02812403          	lw	s0,40(sp)
    32a0:	0384a783          	lw	a5,56(s1)
    32a4:	2444a503          	lw	a0,580(s1)
    32a8:	02c12083          	lw	ra,44(sp)
    32ac:	02412483          	lw	s1,36(sp)
    32b0:	02012903          	lw	s2,32(sp)
    32b4:	01c12983          	lw	s3,28(sp)
    32b8:	01812a03          	lw	s4,24(sp)
    32bc:	01012b03          	lw	s6,16(sp)
    32c0:	00c12b83          	lw	s7,12(sp)
    32c4:	000a8593          	mv	a1,s5
    32c8:	01412a83          	lw	s5,20(sp)
    32cc:	00100613          	li	a2,1
    32d0:	03010113          	addi	sp,sp,48
    32d4:	00078067          	jr	a5
    32d8:	02040413          	addi	s0,s0,32
    32dc:	f54414e3          	bne	s0,s4,3224 <fatfs_update_file_length+0x70>
    32e0:	f1dff06f          	j	31fc <fatfs_update_file_length+0x48>
    32e4:	02c12083          	lw	ra,44(sp)
    32e8:	02812403          	lw	s0,40(sp)
    32ec:	02412483          	lw	s1,36(sp)
    32f0:	02012903          	lw	s2,32(sp)
    32f4:	01c12983          	lw	s3,28(sp)
    32f8:	01812a03          	lw	s4,24(sp)
    32fc:	01412a83          	lw	s5,20(sp)
    3300:	01012b03          	lw	s6,16(sp)
    3304:	00c12b83          	lw	s7,12(sp)
    3308:	00000513          	li	a0,0
    330c:	03010113          	addi	sp,sp,48
    3310:	00008067          	ret
    3314:	00000513          	li	a0,0
    3318:	00008067          	ret

0000331c <fatfs_list_directory_next>:
    331c:	ec010113          	addi	sp,sp,-320
    3320:	13212823          	sw	s2,304(sp)
    3324:	13312623          	sw	s3,300(sp)
    3328:	13412423          	sw	s4,296(sp)
    332c:	13512223          	sw	s5,292(sp)
    3330:	13612023          	sw	s6,288(sp)
    3334:	12112e23          	sw	ra,316(sp)
    3338:	12812c23          	sw	s0,312(sp)
    333c:	12912a23          	sw	s1,308(sp)
    3340:	00050a13          	mv	s4,a0
    3344:	00058913          	mv	s2,a1
    3348:	00060993          	mv	s3,a2
    334c:	10010ea3          	sb	zero,285(sp)
    3350:	04450a93          	addi	s5,a0,68
    3354:	00f00b13          	li	s6,15
    3358:	00092603          	lw	a2,0(s2)
    335c:	00492583          	lw	a1,4(s2)
    3360:	00000693          	li	a3,0
    3364:	000a0513          	mv	a0,s4
    3368:	fffff097          	auipc	ra,0xfffff
    336c:	6fc080e7          	jalr	1788(ra) # 2a64 <fatfs_sector_reader>
    3370:	10050c63          	beqz	a0,3488 <fatfs_list_directory_next+0x16c>
    3374:	00894483          	lbu	s1,8(s2)
    3378:	00549413          	slli	s0,s1,0x5
    337c:	008a8433          	add	s0,s5,s0
    3380:	009b7c63          	bgeu	s6,s1,3398 <fatfs_list_directory_next+0x7c>
    3384:	00092783          	lw	a5,0(s2)
    3388:	00090423          	sb	zero,8(s2)
    338c:	00178793          	addi	a5,a5,1
    3390:	00f92023          	sw	a5,0(s2)
    3394:	fc5ff06f          	j	3358 <fatfs_list_directory_next+0x3c>
    3398:	00040513          	mv	a0,s0
    339c:	ffffe097          	auipc	ra,0xffffe
    33a0:	7f0080e7          	jalr	2032(ra) # 1b8c <fatfs_entry_lfn_text>
    33a4:	02050263          	beqz	a0,33c8 <fatfs_list_directory_next+0xac>
    33a8:	00040593          	mv	a1,s0
    33ac:	01810513          	addi	a0,sp,24
    33b0:	ffffe097          	auipc	ra,0xffffe
    33b4:	6d4080e7          	jalr	1748(ra) # 1a84 <fatfs_lfn_cache_entry>
    33b8:	00148493          	addi	s1,s1,1
    33bc:	0ff4f493          	zext.b	s1,s1
    33c0:	02040413          	addi	s0,s0,32
    33c4:	fbdff06f          	j	3380 <fatfs_list_directory_next+0x64>
    33c8:	00040513          	mv	a0,s0
    33cc:	ffffe097          	auipc	ra,0xffffe
    33d0:	7d4080e7          	jalr	2004(ra) # 1ba0 <fatfs_entry_lfn_invalid>
    33d4:	00050663          	beqz	a0,33e0 <fatfs_list_directory_next+0xc4>
    33d8:	10010ea3          	sb	zero,285(sp)
    33dc:	fddff06f          	j	33b8 <fatfs_list_directory_next+0x9c>
    33e0:	00040593          	mv	a1,s0
    33e4:	01810513          	addi	a0,sp,24
    33e8:	ffffe097          	auipc	ra,0xffffe
    33ec:	7ec080e7          	jalr	2028(ra) # 1bd4 <fatfs_entry_lfn_exists>
    33f0:	0c050063          	beqz	a0,34b0 <fatfs_list_directory_next+0x194>
    33f4:	01810513          	addi	a0,sp,24
    33f8:	ffffe097          	auipc	ra,0xffffe
    33fc:	758080e7          	jalr	1880(ra) # 1b50 <fatfs_lfn_cache_get>
    3400:	00050593          	mv	a1,a0
    3404:	10300613          	li	a2,259
    3408:	00098513          	mv	a0,s3
    340c:	ffffe097          	auipc	ra,0xffffe
    3410:	ac4080e7          	jalr	-1340(ra) # ed0 <strncpy>
    3414:	00040513          	mv	a0,s0
    3418:	fffff097          	auipc	ra,0xfffff
    341c:	84c080e7          	jalr	-1972(ra) # 1c64 <fatfs_entry_is_dir>
    3420:	10a98223          	sb	a0,260(s3)
    3424:	01d44783          	lbu	a5,29(s0)
    3428:	01c44703          	lbu	a4,28(s0)
    342c:	00148493          	addi	s1,s1,1
    3430:	00879793          	slli	a5,a5,0x8
    3434:	00e7e7b3          	or	a5,a5,a4
    3438:	01e44703          	lbu	a4,30(s0)
    343c:	00100513          	li	a0,1
    3440:	01071713          	slli	a4,a4,0x10
    3444:	00f76733          	or	a4,a4,a5
    3448:	01f44783          	lbu	a5,31(s0)
    344c:	01879793          	slli	a5,a5,0x18
    3450:	00e7e7b3          	or	a5,a5,a4
    3454:	10f9a623          	sw	a5,268(s3)
    3458:	01544783          	lbu	a5,21(s0)
    345c:	01444703          	lbu	a4,20(s0)
    3460:	01a44683          	lbu	a3,26(s0)
    3464:	00879793          	slli	a5,a5,0x8
    3468:	00e7e7b3          	or	a5,a5,a4
    346c:	01b44703          	lbu	a4,27(s0)
    3470:	01079793          	slli	a5,a5,0x10
    3474:	00871713          	slli	a4,a4,0x8
    3478:	00d76733          	or	a4,a4,a3
    347c:	00e7e7b3          	or	a5,a5,a4
    3480:	10f9a423          	sw	a5,264(s3)
    3484:	00990423          	sb	s1,8(s2)
    3488:	13c12083          	lw	ra,316(sp)
    348c:	13812403          	lw	s0,312(sp)
    3490:	13412483          	lw	s1,308(sp)
    3494:	13012903          	lw	s2,304(sp)
    3498:	12c12983          	lw	s3,300(sp)
    349c:	12812a03          	lw	s4,296(sp)
    34a0:	12412a83          	lw	s5,292(sp)
    34a4:	12012b03          	lw	s6,288(sp)
    34a8:	14010113          	addi	sp,sp,320
    34ac:	00008067          	ret
    34b0:	00040513          	mv	a0,s0
    34b4:	ffffe097          	auipc	ra,0xffffe
    34b8:	770080e7          	jalr	1904(ra) # 1c24 <fatfs_entry_sfn_only>
    34bc:	ee050ee3          	beqz	a0,33b8 <fatfs_list_directory_next+0x9c>
    34c0:	00810a13          	addi	s4,sp,8
    34c4:	00d00613          	li	a2,13
    34c8:	00000593          	li	a1,0
    34cc:	000a0513          	mv	a0,s4
    34d0:	10010ea3          	sb	zero,285(sp)
    34d4:	ffffe097          	auipc	ra,0xffffe
    34d8:	95c080e7          	jalr	-1700(ra) # e30 <memset>
    34dc:	00000793          	li	a5,0
    34e0:	00800713          	li	a4,8
    34e4:	00f40633          	add	a2,s0,a5
    34e8:	00064603          	lbu	a2,0(a2)
    34ec:	00fa06b3          	add	a3,s4,a5
    34f0:	00178793          	addi	a5,a5,1
    34f4:	00c68023          	sb	a2,0(a3)
    34f8:	fee796e3          	bne	a5,a4,34e4 <fatfs_list_directory_next+0x1c8>
    34fc:	00844783          	lbu	a5,8(s0)
    3500:	00944703          	lbu	a4,9(s0)
    3504:	00a44683          	lbu	a3,10(s0)
    3508:	00f108a3          	sb	a5,17(sp)
    350c:	00e10923          	sb	a4,18(sp)
    3510:	fe078793          	addi	a5,a5,-32
    3514:	fe070713          	addi	a4,a4,-32
    3518:	00f037b3          	snez	a5,a5
    351c:	00e03733          	snez	a4,a4
    3520:	00d109a3          	sb	a3,19(sp)
    3524:	00e7e7b3          	or	a5,a5,a4
    3528:	00079863          	bnez	a5,3538 <fatfs_list_directory_next+0x21c>
    352c:	fe068693          	addi	a3,a3,-32
    3530:	02000793          	li	a5,32
    3534:	00068a63          	beqz	a3,3548 <fatfs_list_directory_next+0x22c>
    3538:	00814703          	lbu	a4,8(sp)
    353c:	02e00793          	li	a5,46
    3540:	00f71463          	bne	a4,a5,3548 <fatfs_list_directory_next+0x22c>
    3544:	02000793          	li	a5,32
    3548:	000a0593          	mv	a1,s4
    354c:	00098513          	mv	a0,s3
    3550:	00f10823          	sb	a5,16(sp)
    3554:	fffff097          	auipc	ra,0xfffff
    3558:	054080e7          	jalr	84(ra) # 25a8 <fatfs_get_sfn_display_name>
    355c:	eb9ff06f          	j	3414 <fatfs_list_directory_next+0xf8>

00003560 <fl_readdir>:
    3560:	000057b7          	lui	a5,0x5
    3564:	c587a783          	lw	a5,-936(a5) # 4c58 <_filelib_init>
    3568:	fd010113          	addi	sp,sp,-48
    356c:	03212023          	sw	s2,32(sp)
    3570:	01312e23          	sw	s3,28(sp)
    3574:	02112623          	sw	ra,44(sp)
    3578:	02812423          	sw	s0,40(sp)
    357c:	02912223          	sw	s1,36(sp)
    3580:	00050913          	mv	s2,a0
    3584:	00058993          	mv	s3,a1
    3588:	00079663          	bnez	a5,3594 <fl_readdir+0x34>
    358c:	ffffe097          	auipc	ra,0xffffe
    3590:	488080e7          	jalr	1160(ra) # 1a14 <fl_init>
    3594:	0000b4b7          	lui	s1,0xb
    3598:	ddc48413          	addi	s0,s1,-548 # addc <_fs>
    359c:	03c42783          	lw	a5,60(s0)
    35a0:	00078463          	beqz	a5,35a8 <fl_readdir+0x48>
    35a4:	000780e7          	jalr	a5
    35a8:	00098613          	mv	a2,s3
    35ac:	00090593          	mv	a1,s2
    35b0:	ddc48513          	addi	a0,s1,-548
    35b4:	00000097          	auipc	ra,0x0
    35b8:	d68080e7          	jalr	-664(ra) # 331c <fatfs_list_directory_next>
    35bc:	04042783          	lw	a5,64(s0)
    35c0:	00078863          	beqz	a5,35d0 <fl_readdir+0x70>
    35c4:	00a12623          	sw	a0,12(sp)
    35c8:	000780e7          	jalr	a5
    35cc:	00c12503          	lw	a0,12(sp)
    35d0:	02c12083          	lw	ra,44(sp)
    35d4:	02812403          	lw	s0,40(sp)
    35d8:	00154513          	xori	a0,a0,1
    35dc:	02412483          	lw	s1,36(sp)
    35e0:	02012903          	lw	s2,32(sp)
    35e4:	01c12983          	lw	s3,28(sp)
    35e8:	40a00533          	neg	a0,a0
    35ec:	03010113          	addi	sp,sp,48
    35f0:	00008067          	ret

000035f4 <_read_sectors>:
    35f4:	fd010113          	addi	sp,sp,-48
    35f8:	01512a23          	sw	s5,20(sp)
    35fc:	0000bab7          	lui	s5,0xb
    3600:	01312e23          	sw	s3,28(sp)
    3604:	ddcac983          	lbu	s3,-548(s5) # addc <_fs>
    3608:	01612823          	sw	s6,16(sp)
    360c:	00058b13          	mv	s6,a1
    3610:	02912223          	sw	s1,36(sp)
    3614:	00098593          	mv	a1,s3
    3618:	00050493          	mv	s1,a0
    361c:	000b0513          	mv	a0,s6
    3620:	02112623          	sw	ra,44(sp)
    3624:	02812423          	sw	s0,40(sp)
    3628:	01412c23          	sw	s4,24(sp)
    362c:	00068413          	mv	s0,a3
    3630:	01712623          	sw	s7,12(sp)
    3634:	01812423          	sw	s8,8(sp)
    3638:	03212023          	sw	s2,32(sp)
    363c:	00060c13          	mv	s8,a2
    3640:	ffffd097          	auipc	ra,0xffffd
    3644:	744080e7          	jalr	1860(ra) # d84 <__udivsi3>
    3648:	00050a13          	mv	s4,a0
    364c:	00098593          	mv	a1,s3
    3650:	000b0513          	mv	a0,s6
    3654:	ffffd097          	auipc	ra,0xffffd
    3658:	778080e7          	jalr	1912(ra) # dcc <__umodsi3>
    365c:	00a407b3          	add	a5,s0,a0
    3660:	00050b93          	mv	s7,a0
    3664:	00f9fe63          	bgeu	s3,a5,3680 <_read_sectors+0x8c>
    3668:	000a0593          	mv	a1,s4
    366c:	00098513          	mv	a0,s3
    3670:	ffffe097          	auipc	ra,0xffffe
    3674:	f10080e7          	jalr	-240(ra) # 1580 <__mulsi3>
    3678:	416987b3          	sub	a5,s3,s6
    367c:	00f50433          	add	s0,a0,a5
    3680:	2284a903          	lw	s2,552(s1)
    3684:	07491863          	bne	s2,s4,36f4 <_read_sectors+0x100>
    3688:	22c4a583          	lw	a1,556(s1)
    368c:	fff00793          	li	a5,-1
    3690:	02f58663          	beq	a1,a5,36bc <_read_sectors+0xc8>
    3694:	ddca8513          	addi	a0,s5,-548
    3698:	ffffe097          	auipc	ra,0xffffe
    369c:	24c080e7          	jalr	588(ra) # 18e4 <fatfs_lba_of_cluster>
    36a0:	017505b3          	add	a1,a0,s7
    36a4:	00040693          	mv	a3,s0
    36a8:	000c0613          	mv	a2,s8
    36ac:	ddca8513          	addi	a0,s5,-548
    36b0:	ffffe097          	auipc	ra,0xffffe
    36b4:	280080e7          	jalr	640(ra) # 1930 <fatfs_sector_read>
    36b8:	00051463          	bnez	a0,36c0 <_read_sectors+0xcc>
    36bc:	00000413          	li	s0,0
    36c0:	02c12083          	lw	ra,44(sp)
    36c4:	00040513          	mv	a0,s0
    36c8:	02812403          	lw	s0,40(sp)
    36cc:	02412483          	lw	s1,36(sp)
    36d0:	02012903          	lw	s2,32(sp)
    36d4:	01c12983          	lw	s3,28(sp)
    36d8:	01812a03          	lw	s4,24(sp)
    36dc:	01412a83          	lw	s5,20(sp)
    36e0:	01012b03          	lw	s6,16(sp)
    36e4:	00c12b83          	lw	s7,12(sp)
    36e8:	00812c03          	lw	s8,8(sp)
    36ec:	03010113          	addi	sp,sp,48
    36f0:	00008067          	ret
    36f4:	033b6463          	bltu	s6,s3,371c <_read_sectors+0x128>
    36f8:	00190793          	addi	a5,s2,1
    36fc:	03479063          	bne	a5,s4,371c <_read_sectors+0x128>
    3700:	22c4a583          	lw	a1,556(s1)
    3704:	03496263          	bltu	s2,s4,3728 <_read_sectors+0x134>
    3708:	fff00793          	li	a5,-1
    370c:	faf588e3          	beq	a1,a5,36bc <_read_sectors+0xc8>
    3710:	22b4a623          	sw	a1,556(s1)
    3714:	2344a423          	sw	s4,552(s1)
    3718:	f7dff06f          	j	3694 <_read_sectors+0xa0>
    371c:	0044a583          	lw	a1,4(s1)
    3720:	00000913          	li	s2,0
    3724:	fe1ff06f          	j	3704 <_read_sectors+0x110>
    3728:	ddca8513          	addi	a0,s5,-548
    372c:	fffff097          	auipc	ra,0xfffff
    3730:	230080e7          	jalr	560(ra) # 295c <fatfs_find_next_cluster>
    3734:	00050593          	mv	a1,a0
    3738:	00190913          	addi	s2,s2,1
    373c:	fc9ff06f          	j	3704 <_read_sectors+0x110>

00003740 <fatfs_set_fs_info_next_free_cluster>:
    3740:	03052783          	lw	a5,48(a0)
    3744:	0a078463          	beqz	a5,37ec <fatfs_set_fs_info_next_free_cluster+0xac>
    3748:	fe010113          	addi	sp,sp,-32
    374c:	01c52783          	lw	a5,28(a0)
    3750:	00912a23          	sw	s1,20(sp)
    3754:	00058493          	mv	s1,a1
    3758:	01855583          	lhu	a1,24(a0)
    375c:	00812c23          	sw	s0,24(sp)
    3760:	00112e23          	sw	ra,28(sp)
    3764:	00f585b3          	add	a1,a1,a5
    3768:	00050413          	mv	s0,a0
    376c:	ffffe097          	auipc	ra,0xffffe
    3770:	fcc080e7          	jalr	-52(ra) # 1738 <fatfs_fat_read_sector>
    3774:	00050593          	mv	a1,a0
    3778:	06050063          	beqz	a0,37d8 <fatfs_set_fs_info_next_free_cluster+0x98>
    377c:	20852783          	lw	a5,520(a0)
    3780:	0084d713          	srli	a4,s1,0x8
    3784:	00100613          	li	a2,1
    3788:	1e978623          	sb	s1,492(a5)
    378c:	20852783          	lw	a5,520(a0)
    3790:	1ee786a3          	sb	a4,493(a5)
    3794:	20852783          	lw	a5,520(a0)
    3798:	0104d713          	srli	a4,s1,0x10
    379c:	1ee78723          	sb	a4,494(a5)
    37a0:	20852783          	lw	a5,520(a0)
    37a4:	0184d713          	srli	a4,s1,0x18
    37a8:	1ee787a3          	sb	a4,495(a5)
    37ac:	03842783          	lw	a5,56(s0)
    37b0:	20c52223          	sw	a2,516(a0)
    37b4:	02942223          	sw	s1,36(s0)
    37b8:	00078a63          	beqz	a5,37cc <fatfs_set_fs_info_next_free_cluster+0x8c>
    37bc:	20052503          	lw	a0,512(a0)
    37c0:	00b12623          	sw	a1,12(sp)
    37c4:	000780e7          	jalr	a5
    37c8:	00c12583          	lw	a1,12(sp)
    37cc:	fff00793          	li	a5,-1
    37d0:	20f5a023          	sw	a5,512(a1)
    37d4:	2005a223          	sw	zero,516(a1)
    37d8:	01c12083          	lw	ra,28(sp)
    37dc:	01812403          	lw	s0,24(sp)
    37e0:	01412483          	lw	s1,20(sp)
    37e4:	02010113          	addi	sp,sp,32
    37e8:	00008067          	ret
    37ec:	00008067          	ret

000037f0 <fatfs_find_blank_cluster>:
    37f0:	fd010113          	addi	sp,sp,-48
    37f4:	01312e23          	sw	s3,28(sp)
    37f8:	100009b7          	lui	s3,0x10000
    37fc:	02912223          	sw	s1,36(sp)
    3800:	03212023          	sw	s2,32(sp)
    3804:	02112623          	sw	ra,44(sp)
    3808:	02812423          	sw	s0,40(sp)
    380c:	00050913          	mv	s2,a0
    3810:	00058493          	mv	s1,a1
    3814:	fff98993          	addi	s3,s3,-1 # fffffff <__stacktop+0xffeffff>
    3818:	03092783          	lw	a5,48(s2)
    381c:	0074d413          	srli	s0,s1,0x7
    3820:	00079463          	bnez	a5,3828 <fatfs_find_blank_cluster+0x38>
    3824:	0084d413          	srli	s0,s1,0x8
    3828:	02092783          	lw	a5,32(s2)
    382c:	0cf47863          	bgeu	s0,a5,38fc <fatfs_find_blank_cluster+0x10c>
    3830:	01492583          	lw	a1,20(s2)
    3834:	00090513          	mv	a0,s2
    3838:	00c12623          	sw	a2,12(sp)
    383c:	00b405b3          	add	a1,s0,a1
    3840:	ffffe097          	auipc	ra,0xffffe
    3844:	ef8080e7          	jalr	-264(ra) # 1738 <fatfs_fat_read_sector>
    3848:	0a050a63          	beqz	a0,38fc <fatfs_find_blank_cluster+0x10c>
    384c:	03092783          	lw	a5,48(s2)
    3850:	20852703          	lw	a4,520(a0)
    3854:	00c12603          	lw	a2,12(sp)
    3858:	04079a63          	bnez	a5,38ac <fatfs_find_blank_cluster+0xbc>
    385c:	00841413          	slli	s0,s0,0x8
    3860:	40848433          	sub	s0,s1,s0
    3864:	00141413          	slli	s0,s0,0x1
    3868:	01041413          	slli	s0,s0,0x10
    386c:	01045413          	srli	s0,s0,0x10
    3870:	00870733          	add	a4,a4,s0
    3874:	00174783          	lbu	a5,1(a4)
    3878:	00074703          	lbu	a4,0(a4)
    387c:	00879793          	slli	a5,a5,0x8
    3880:	00e787b3          	add	a5,a5,a4
    3884:	06079863          	bnez	a5,38f4 <fatfs_find_blank_cluster+0x104>
    3888:	00962023          	sw	s1,0(a2)
    388c:	00100513          	li	a0,1
    3890:	02c12083          	lw	ra,44(sp)
    3894:	02812403          	lw	s0,40(sp)
    3898:	02412483          	lw	s1,36(sp)
    389c:	02012903          	lw	s2,32(sp)
    38a0:	01c12983          	lw	s3,28(sp)
    38a4:	03010113          	addi	sp,sp,48
    38a8:	00008067          	ret
    38ac:	00741413          	slli	s0,s0,0x7
    38b0:	40848433          	sub	s0,s1,s0
    38b4:	00241413          	slli	s0,s0,0x2
    38b8:	01041413          	slli	s0,s0,0x10
    38bc:	01045413          	srli	s0,s0,0x10
    38c0:	00870733          	add	a4,a4,s0
    38c4:	00374783          	lbu	a5,3(a4)
    38c8:	00274683          	lbu	a3,2(a4)
    38cc:	01879793          	slli	a5,a5,0x18
    38d0:	01069693          	slli	a3,a3,0x10
    38d4:	00d787b3          	add	a5,a5,a3
    38d8:	00074683          	lbu	a3,0(a4)
    38dc:	00174703          	lbu	a4,1(a4)
    38e0:	00d787b3          	add	a5,a5,a3
    38e4:	00871713          	slli	a4,a4,0x8
    38e8:	00e787b3          	add	a5,a5,a4
    38ec:	0137f7b3          	and	a5,a5,s3
    38f0:	f95ff06f          	j	3884 <fatfs_find_blank_cluster+0x94>
    38f4:	00148493          	addi	s1,s1,1
    38f8:	f21ff06f          	j	3818 <fatfs_find_blank_cluster+0x28>
    38fc:	00000513          	li	a0,0
    3900:	f91ff06f          	j	3890 <fatfs_find_blank_cluster+0xa0>

00003904 <fatfs_fat_set_cluster>:
    3904:	03052783          	lw	a5,48(a0)
    3908:	fe010113          	addi	sp,sp,-32
    390c:	00812c23          	sw	s0,24(sp)
    3910:	00912a23          	sw	s1,20(sp)
    3914:	01212823          	sw	s2,16(sp)
    3918:	00112e23          	sw	ra,28(sp)
    391c:	00050913          	mv	s2,a0
    3920:	00058413          	mv	s0,a1
    3924:	0085d493          	srli	s1,a1,0x8
    3928:	00078463          	beqz	a5,3930 <fatfs_fat_set_cluster+0x2c>
    392c:	0075d493          	srli	s1,a1,0x7
    3930:	01492583          	lw	a1,20(s2)
    3934:	00090513          	mv	a0,s2
    3938:	00c12623          	sw	a2,12(sp)
    393c:	00b485b3          	add	a1,s1,a1
    3940:	ffffe097          	auipc	ra,0xffffe
    3944:	df8080e7          	jalr	-520(ra) # 1738 <fatfs_fat_read_sector>
    3948:	00050793          	mv	a5,a0
    394c:	00000513          	li	a0,0
    3950:	04078663          	beqz	a5,399c <fatfs_fat_set_cluster+0x98>
    3954:	03092683          	lw	a3,48(s2)
    3958:	2087a703          	lw	a4,520(a5)
    395c:	00c12603          	lw	a2,12(sp)
    3960:	04069a63          	bnez	a3,39b4 <fatfs_fat_set_cluster+0xb0>
    3964:	00849493          	slli	s1,s1,0x8
    3968:	40940433          	sub	s0,s0,s1
    396c:	00141413          	slli	s0,s0,0x1
    3970:	01041413          	slli	s0,s0,0x10
    3974:	01045413          	srli	s0,s0,0x10
    3978:	00870733          	add	a4,a4,s0
    397c:	00c70023          	sb	a2,0(a4)
    3980:	2087a703          	lw	a4,520(a5)
    3984:	00865613          	srli	a2,a2,0x8
    3988:	00870733          	add	a4,a4,s0
    398c:	00c700a3          	sb	a2,1(a4)
    3990:	00100713          	li	a4,1
    3994:	20e7a223          	sw	a4,516(a5)
    3998:	00100513          	li	a0,1
    399c:	01c12083          	lw	ra,28(sp)
    39a0:	01812403          	lw	s0,24(sp)
    39a4:	01412483          	lw	s1,20(sp)
    39a8:	01012903          	lw	s2,16(sp)
    39ac:	02010113          	addi	sp,sp,32
    39b0:	00008067          	ret
    39b4:	00749493          	slli	s1,s1,0x7
    39b8:	40940433          	sub	s0,s0,s1
    39bc:	00241413          	slli	s0,s0,0x2
    39c0:	01041413          	slli	s0,s0,0x10
    39c4:	01045413          	srli	s0,s0,0x10
    39c8:	00870733          	add	a4,a4,s0
    39cc:	00c70023          	sb	a2,0(a4)
    39d0:	2087a703          	lw	a4,520(a5)
    39d4:	00865693          	srli	a3,a2,0x8
    39d8:	00870733          	add	a4,a4,s0
    39dc:	00d700a3          	sb	a3,1(a4)
    39e0:	2087a703          	lw	a4,520(a5)
    39e4:	01065693          	srli	a3,a2,0x10
    39e8:	01865613          	srli	a2,a2,0x18
    39ec:	00870733          	add	a4,a4,s0
    39f0:	00d70123          	sb	a3,2(a4)
    39f4:	2087a703          	lw	a4,520(a5)
    39f8:	00870733          	add	a4,a4,s0
    39fc:	00c701a3          	sb	a2,3(a4)
    3a00:	f91ff06f          	j	3990 <fatfs_fat_set_cluster+0x8c>

00003a04 <fatfs_free_cluster_chain>:
    3a04:	fe010113          	addi	sp,sp,-32
    3a08:	00812c23          	sw	s0,24(sp)
    3a0c:	00912a23          	sw	s1,20(sp)
    3a10:	00112e23          	sw	ra,28(sp)
    3a14:	01212823          	sw	s2,16(sp)
    3a18:	00050493          	mv	s1,a0
    3a1c:	ffd00413          	li	s0,-3
    3a20:	fff58793          	addi	a5,a1,-1
    3a24:	02f47063          	bgeu	s0,a5,3a44 <fatfs_free_cluster_chain+0x40>
    3a28:	01c12083          	lw	ra,28(sp)
    3a2c:	01812403          	lw	s0,24(sp)
    3a30:	01412483          	lw	s1,20(sp)
    3a34:	01012903          	lw	s2,16(sp)
    3a38:	00100513          	li	a0,1
    3a3c:	02010113          	addi	sp,sp,32
    3a40:	00008067          	ret
    3a44:	00048513          	mv	a0,s1
    3a48:	00b12623          	sw	a1,12(sp)
    3a4c:	fffff097          	auipc	ra,0xfffff
    3a50:	f10080e7          	jalr	-240(ra) # 295c <fatfs_find_next_cluster>
    3a54:	00c12583          	lw	a1,12(sp)
    3a58:	00050913          	mv	s2,a0
    3a5c:	00000613          	li	a2,0
    3a60:	00048513          	mv	a0,s1
    3a64:	00000097          	auipc	ra,0x0
    3a68:	ea0080e7          	jalr	-352(ra) # 3904 <fatfs_fat_set_cluster>
    3a6c:	00090593          	mv	a1,s2
    3a70:	fb1ff06f          	j	3a20 <fatfs_free_cluster_chain+0x1c>

00003a74 <fatfs_fat_add_cluster_to_chain>:
    3a74:	fd010113          	addi	sp,sp,-48
    3a78:	02912223          	sw	s1,36(sp)
    3a7c:	02112623          	sw	ra,44(sp)
    3a80:	02812423          	sw	s0,40(sp)
    3a84:	03212023          	sw	s2,32(sp)
    3a88:	01312e23          	sw	s3,28(sp)
    3a8c:	fff00493          	li	s1,-1
    3a90:	02959263          	bne	a1,s1,3ab4 <fatfs_fat_add_cluster_to_chain+0x40>
    3a94:	00000513          	li	a0,0
    3a98:	02c12083          	lw	ra,44(sp)
    3a9c:	02812403          	lw	s0,40(sp)
    3aa0:	02412483          	lw	s1,36(sp)
    3aa4:	02012903          	lw	s2,32(sp)
    3aa8:	01c12983          	lw	s3,28(sp)
    3aac:	03010113          	addi	sp,sp,48
    3ab0:	00008067          	ret
    3ab4:	00050913          	mv	s2,a0
    3ab8:	00058413          	mv	s0,a1
    3abc:	00060993          	mv	s3,a2
    3ac0:	00040593          	mv	a1,s0
    3ac4:	00090513          	mv	a0,s2
    3ac8:	00812623          	sw	s0,12(sp)
    3acc:	fffff097          	auipc	ra,0xfffff
    3ad0:	e90080e7          	jalr	-368(ra) # 295c <fatfs_find_next_cluster>
    3ad4:	00050413          	mv	s0,a0
    3ad8:	fa050ee3          	beqz	a0,3a94 <fatfs_fat_add_cluster_to_chain+0x20>
    3adc:	00c12583          	lw	a1,12(sp)
    3ae0:	fe9510e3          	bne	a0,s1,3ac0 <fatfs_fat_add_cluster_to_chain+0x4c>
    3ae4:	00098613          	mv	a2,s3
    3ae8:	00090513          	mv	a0,s2
    3aec:	00000097          	auipc	ra,0x0
    3af0:	e18080e7          	jalr	-488(ra) # 3904 <fatfs_fat_set_cluster>
    3af4:	00040613          	mv	a2,s0
    3af8:	00098593          	mv	a1,s3
    3afc:	00090513          	mv	a0,s2
    3b00:	00000097          	auipc	ra,0x0
    3b04:	e04080e7          	jalr	-508(ra) # 3904 <fatfs_fat_set_cluster>
    3b08:	00100513          	li	a0,1
    3b0c:	f8dff06f          	j	3a98 <fatfs_fat_add_cluster_to_chain+0x24>

00003b10 <fatfs_add_free_space>:
    3b10:	02452783          	lw	a5,36(a0)
    3b14:	fd010113          	addi	sp,sp,-48
    3b18:	02812423          	sw	s0,40(sp)
    3b1c:	01312e23          	sw	s3,28(sp)
    3b20:	01412c23          	sw	s4,24(sp)
    3b24:	0005a983          	lw	s3,0(a1)
    3b28:	01512a23          	sw	s5,20(sp)
    3b2c:	00058a13          	mv	s4,a1
    3b30:	02112623          	sw	ra,44(sp)
    3b34:	02912223          	sw	s1,36(sp)
    3b38:	03212023          	sw	s2,32(sp)
    3b3c:	fff00593          	li	a1,-1
    3b40:	00050413          	mv	s0,a0
    3b44:	00060a93          	mv	s5,a2
    3b48:	00b78663          	beq	a5,a1,3b54 <fatfs_add_free_space+0x44>
    3b4c:	00000097          	auipc	ra,0x0
    3b50:	bf4080e7          	jalr	-1036(ra) # 3740 <fatfs_set_fs_info_next_free_cluster>
    3b54:	00000493          	li	s1,0
    3b58:	03549663          	bne	s1,s5,3b84 <fatfs_add_free_space+0x74>
    3b5c:	00100513          	li	a0,1
    3b60:	02c12083          	lw	ra,44(sp)
    3b64:	02812403          	lw	s0,40(sp)
    3b68:	02412483          	lw	s1,36(sp)
    3b6c:	02012903          	lw	s2,32(sp)
    3b70:	01c12983          	lw	s3,28(sp)
    3b74:	01812a03          	lw	s4,24(sp)
    3b78:	01412a83          	lw	s5,20(sp)
    3b7c:	03010113          	addi	sp,sp,48
    3b80:	00008067          	ret
    3b84:	00842583          	lw	a1,8(s0)
    3b88:	00c10613          	addi	a2,sp,12
    3b8c:	00040513          	mv	a0,s0
    3b90:	00000097          	auipc	ra,0x0
    3b94:	c60080e7          	jalr	-928(ra) # 37f0 <fatfs_find_blank_cluster>
    3b98:	fc0504e3          	beqz	a0,3b60 <fatfs_add_free_space+0x50>
    3b9c:	00c12903          	lw	s2,12(sp)
    3ba0:	00098593          	mv	a1,s3
    3ba4:	00040513          	mv	a0,s0
    3ba8:	00090613          	mv	a2,s2
    3bac:	00000097          	auipc	ra,0x0
    3bb0:	d58080e7          	jalr	-680(ra) # 3904 <fatfs_fat_set_cluster>
    3bb4:	fff00613          	li	a2,-1
    3bb8:	00090593          	mv	a1,s2
    3bbc:	00040513          	mv	a0,s0
    3bc0:	00000097          	auipc	ra,0x0
    3bc4:	d44080e7          	jalr	-700(ra) # 3904 <fatfs_fat_set_cluster>
    3bc8:	00049463          	bnez	s1,3bd0 <fatfs_add_free_space+0xc0>
    3bcc:	012a2023          	sw	s2,0(s4)
    3bd0:	00148493          	addi	s1,s1,1
    3bd4:	00090993          	mv	s3,s2
    3bd8:	f81ff06f          	j	3b58 <fatfs_add_free_space+0x48>

00003bdc <_write_sectors>:
    3bdc:	fb010113          	addi	sp,sp,-80
    3be0:	03512a23          	sw	s5,52(sp)
    3be4:	0000bab7          	lui	s5,0xb
    3be8:	04112623          	sw	ra,76(sp)
    3bec:	04812423          	sw	s0,72(sp)
    3bf0:	04912223          	sw	s1,68(sp)
    3bf4:	03412c23          	sw	s4,56(sp)
    3bf8:	03612823          	sw	s6,48(sp)
    3bfc:	03712623          	sw	s7,44(sp)
    3c00:	03812423          	sw	s8,40(sp)
    3c04:	03912223          	sw	s9,36(sp)
    3c08:	03a12023          	sw	s10,32(sp)
    3c0c:	05212023          	sw	s2,64(sp)
    3c10:	03312e23          	sw	s3,60(sp)
    3c14:	ddca8b93          	addi	s7,s5,-548 # addc <_fs>
    3c18:	000bc983          	lbu	s3,0(s7)
    3c1c:	00058b13          	mv	s6,a1
    3c20:	fff00793          	li	a5,-1
    3c24:	00098593          	mv	a1,s3
    3c28:	00050493          	mv	s1,a0
    3c2c:	000b0513          	mv	a0,s6
    3c30:	00068c13          	mv	s8,a3
    3c34:	00f12e23          	sw	a5,28(sp)
    3c38:	00060d13          	mv	s10,a2
    3c3c:	ffffd097          	auipc	ra,0xffffd
    3c40:	148080e7          	jalr	328(ra) # d84 <__udivsi3>
    3c44:	00050a13          	mv	s4,a0
    3c48:	00098593          	mv	a1,s3
    3c4c:	000b0513          	mv	a0,s6
    3c50:	ffffd097          	auipc	ra,0xffffd
    3c54:	17c080e7          	jalr	380(ra) # dcc <__umodsi3>
    3c58:	00ac07b3          	add	a5,s8,a0
    3c5c:	00050c93          	mv	s9,a0
    3c60:	000c0413          	mv	s0,s8
    3c64:	00f9fe63          	bgeu	s3,a5,3c80 <_write_sectors+0xa4>
    3c68:	000a0593          	mv	a1,s4
    3c6c:	00098513          	mv	a0,s3
    3c70:	ffffe097          	auipc	ra,0xffffe
    3c74:	910080e7          	jalr	-1776(ra) # 1580 <__mulsi3>
    3c78:	416987b3          	sub	a5,s3,s6
    3c7c:	00f50433          	add	s0,a0,a5
    3c80:	2284a903          	lw	s2,552(s1)
    3c84:	03491a63          	bne	s2,s4,3cb8 <_write_sectors+0xdc>
    3c88:	22c4a583          	lw	a1,556(s1)
    3c8c:	ddca8513          	addi	a0,s5,-548
    3c90:	ffffe097          	auipc	ra,0xffffe
    3c94:	c54080e7          	jalr	-940(ra) # 18e4 <fatfs_lba_of_cluster>
    3c98:	019505b3          	add	a1,a0,s9
    3c9c:	00040693          	mv	a3,s0
    3ca0:	000d0613          	mv	a2,s10
    3ca4:	ddca8513          	addi	a0,s5,-548
    3ca8:	ffffe097          	auipc	ra,0xffffe
    3cac:	ca0080e7          	jalr	-864(ra) # 1948 <fatfs_sector_write>
    3cb0:	04050a63          	beqz	a0,3d04 <_write_sectors+0x128>
    3cb4:	0540006f          	j	3d08 <_write_sectors+0x12c>
    3cb8:	093b6663          	bltu	s6,s3,3d44 <_write_sectors+0x168>
    3cbc:	00190793          	addi	a5,s2,1
    3cc0:	09479263          	bne	a5,s4,3d44 <_write_sectors+0x168>
    3cc4:	22c4a583          	lw	a1,556(s1)
    3cc8:	fff00b13          	li	s6,-1
    3ccc:	09496263          	bltu	s2,s4,3d50 <_write_sectors+0x174>
    3cd0:	fff00793          	li	a5,-1
    3cd4:	0af59463          	bne	a1,a5,3d7c <_write_sectors+0x1a0>
    3cd8:	000bc583          	lbu	a1,0(s7)
    3cdc:	fff58513          	addi	a0,a1,-1
    3ce0:	01850533          	add	a0,a0,s8
    3ce4:	ffffd097          	auipc	ra,0xffffd
    3ce8:	0a0080e7          	jalr	160(ra) # d84 <__udivsi3>
    3cec:	00050613          	mv	a2,a0
    3cf0:	01c10593          	addi	a1,sp,28
    3cf4:	000b8513          	mv	a0,s7
    3cf8:	00000097          	auipc	ra,0x0
    3cfc:	e18080e7          	jalr	-488(ra) # 3b10 <fatfs_add_free_space>
    3d00:	06051c63          	bnez	a0,3d78 <_write_sectors+0x19c>
    3d04:	00000413          	li	s0,0
    3d08:	04c12083          	lw	ra,76(sp)
    3d0c:	00040513          	mv	a0,s0
    3d10:	04812403          	lw	s0,72(sp)
    3d14:	04412483          	lw	s1,68(sp)
    3d18:	04012903          	lw	s2,64(sp)
    3d1c:	03c12983          	lw	s3,60(sp)
    3d20:	03812a03          	lw	s4,56(sp)
    3d24:	03412a83          	lw	s5,52(sp)
    3d28:	03012b03          	lw	s6,48(sp)
    3d2c:	02c12b83          	lw	s7,44(sp)
    3d30:	02812c03          	lw	s8,40(sp)
    3d34:	02412c83          	lw	s9,36(sp)
    3d38:	02012d03          	lw	s10,32(sp)
    3d3c:	05010113          	addi	sp,sp,80
    3d40:	00008067          	ret
    3d44:	0044a583          	lw	a1,4(s1)
    3d48:	00000913          	li	s2,0
    3d4c:	f7dff06f          	j	3cc8 <_write_sectors+0xec>
    3d50:	ddca8513          	addi	a0,s5,-548
    3d54:	00b12623          	sw	a1,12(sp)
    3d58:	fffff097          	auipc	ra,0xfffff
    3d5c:	c04080e7          	jalr	-1020(ra) # 295c <fatfs_find_next_cluster>
    3d60:	00c12583          	lw	a1,12(sp)
    3d64:	00b12e23          	sw	a1,28(sp)
    3d68:	f76508e3          	beq	a0,s6,3cd8 <_write_sectors+0xfc>
    3d6c:	00190913          	addi	s2,s2,1
    3d70:	00050593          	mv	a1,a0
    3d74:	f59ff06f          	j	3ccc <_write_sectors+0xf0>
    3d78:	01c12583          	lw	a1,28(sp)
    3d7c:	22b4a623          	sw	a1,556(s1)
    3d80:	2344a423          	sw	s4,552(s1)
    3d84:	f09ff06f          	j	3c8c <_write_sectors+0xb0>

00003d88 <fl_fflush>:
    3d88:	000057b7          	lui	a5,0x5
    3d8c:	c587a783          	lw	a5,-936(a5) # 4c58 <_filelib_init>
    3d90:	ff010113          	addi	sp,sp,-16
    3d94:	00812423          	sw	s0,8(sp)
    3d98:	00112623          	sw	ra,12(sp)
    3d9c:	00912223          	sw	s1,4(sp)
    3da0:	00050413          	mv	s0,a0
    3da4:	00079663          	bnez	a5,3db0 <fl_fflush+0x28>
    3da8:	ffffe097          	auipc	ra,0xffffe
    3dac:	c6c080e7          	jalr	-916(ra) # 1a14 <fl_init>
    3db0:	04040663          	beqz	s0,3dfc <fl_fflush+0x74>
    3db4:	0000b4b7          	lui	s1,0xb
    3db8:	ddc48493          	addi	s1,s1,-548 # addc <_fs>
    3dbc:	03c4a783          	lw	a5,60(s1)
    3dc0:	00078463          	beqz	a5,3dc8 <fl_fflush+0x40>
    3dc4:	000780e7          	jalr	a5
    3dc8:	43442783          	lw	a5,1076(s0)
    3dcc:	02078263          	beqz	a5,3df0 <fl_fflush+0x68>
    3dd0:	43042583          	lw	a1,1072(s0)
    3dd4:	00100693          	li	a3,1
    3dd8:	23040613          	addi	a2,s0,560
    3ddc:	00040513          	mv	a0,s0
    3de0:	00000097          	auipc	ra,0x0
    3de4:	dfc080e7          	jalr	-516(ra) # 3bdc <_write_sectors>
    3de8:	00050463          	beqz	a0,3df0 <fl_fflush+0x68>
    3dec:	42042a23          	sw	zero,1076(s0)
    3df0:	0404a783          	lw	a5,64(s1)
    3df4:	00078463          	beqz	a5,3dfc <fl_fflush+0x74>
    3df8:	000780e7          	jalr	a5
    3dfc:	00c12083          	lw	ra,12(sp)
    3e00:	00812403          	lw	s0,8(sp)
    3e04:	00412483          	lw	s1,4(sp)
    3e08:	00000513          	li	a0,0
    3e0c:	01010113          	addi	sp,sp,16
    3e10:	00008067          	ret

00003e14 <fl_fclose>:
    3e14:	000057b7          	lui	a5,0x5
    3e18:	c587a783          	lw	a5,-936(a5) # 4c58 <_filelib_init>
    3e1c:	ff010113          	addi	sp,sp,-16
    3e20:	00812423          	sw	s0,8(sp)
    3e24:	00112623          	sw	ra,12(sp)
    3e28:	00912223          	sw	s1,4(sp)
    3e2c:	01212023          	sw	s2,0(sp)
    3e30:	00050413          	mv	s0,a0
    3e34:	00079663          	bnez	a5,3e40 <fl_fclose+0x2c>
    3e38:	ffffe097          	auipc	ra,0xffffe
    3e3c:	bdc080e7          	jalr	-1060(ra) # 1a14 <fl_init>
    3e40:	08040c63          	beqz	s0,3ed8 <fl_fclose+0xc4>
    3e44:	0000b4b7          	lui	s1,0xb
    3e48:	ddc48913          	addi	s2,s1,-548 # addc <_fs>
    3e4c:	03c92783          	lw	a5,60(s2)
    3e50:	00078463          	beqz	a5,3e58 <fl_fclose+0x44>
    3e54:	000780e7          	jalr	a5
    3e58:	00040513          	mv	a0,s0
    3e5c:	00000097          	auipc	ra,0x0
    3e60:	f2c080e7          	jalr	-212(ra) # 3d88 <fl_fflush>
    3e64:	01042783          	lw	a5,16(s0)
    3e68:	00078e63          	beqz	a5,3e84 <fl_fclose+0x70>
    3e6c:	00c42683          	lw	a3,12(s0)
    3e70:	00042583          	lw	a1,0(s0)
    3e74:	21c40613          	addi	a2,s0,540
    3e78:	ddc48513          	addi	a0,s1,-548
    3e7c:	fffff097          	auipc	ra,0xfffff
    3e80:	338080e7          	jalr	824(ra) # 31b4 <fatfs_update_file_length>
    3e84:	fff00793          	li	a5,-1
    3e88:	42f42823          	sw	a5,1072(s0)
    3e8c:	00040513          	mv	a0,s0
    3e90:	00042423          	sw	zero,8(s0)
    3e94:	00042623          	sw	zero,12(s0)
    3e98:	00042223          	sw	zero,4(s0)
    3e9c:	42042a23          	sw	zero,1076(s0)
    3ea0:	00042823          	sw	zero,16(s0)
    3ea4:	ffffe097          	auipc	ra,0xffffe
    3ea8:	9f8080e7          	jalr	-1544(ra) # 189c <_free_file>
    3eac:	ddc48513          	addi	a0,s1,-548
    3eb0:	fffff097          	auipc	ra,0xfffff
    3eb4:	a54080e7          	jalr	-1452(ra) # 2904 <fatfs_fat_purge>
    3eb8:	04092783          	lw	a5,64(s2)
    3ebc:	00078e63          	beqz	a5,3ed8 <fl_fclose+0xc4>
    3ec0:	00812403          	lw	s0,8(sp)
    3ec4:	00c12083          	lw	ra,12(sp)
    3ec8:	00412483          	lw	s1,4(sp)
    3ecc:	00012903          	lw	s2,0(sp)
    3ed0:	01010113          	addi	sp,sp,16
    3ed4:	00078067          	jr	a5
    3ed8:	00c12083          	lw	ra,12(sp)
    3edc:	00812403          	lw	s0,8(sp)
    3ee0:	00412483          	lw	s1,4(sp)
    3ee4:	00012903          	lw	s2,0(sp)
    3ee8:	01010113          	addi	sp,sp,16
    3eec:	00008067          	ret

00003ef0 <fl_fread>:
    3ef0:	000057b7          	lui	a5,0x5
    3ef4:	c587a783          	lw	a5,-936(a5) # 4c58 <_filelib_init>
    3ef8:	fc010113          	addi	sp,sp,-64
    3efc:	02812c23          	sw	s0,56(sp)
    3f00:	03512223          	sw	s5,36(sp)
    3f04:	02112e23          	sw	ra,60(sp)
    3f08:	02912a23          	sw	s1,52(sp)
    3f0c:	03212823          	sw	s2,48(sp)
    3f10:	03312623          	sw	s3,44(sp)
    3f14:	03412423          	sw	s4,40(sp)
    3f18:	03612023          	sw	s6,32(sp)
    3f1c:	01712e23          	sw	s7,28(sp)
    3f20:	01812c23          	sw	s8,24(sp)
    3f24:	01912a23          	sw	s9,20(sp)
    3f28:	00050a93          	mv	s5,a0
    3f2c:	00068413          	mv	s0,a3
    3f30:	00058513          	mv	a0,a1
    3f34:	00079e63          	bnez	a5,3f50 <fl_fread+0x60>
    3f38:	00c12623          	sw	a2,12(sp)
    3f3c:	00b12423          	sw	a1,8(sp)
    3f40:	ffffe097          	auipc	ra,0xffffe
    3f44:	ad4080e7          	jalr	-1324(ra) # 1a14 <fl_init>
    3f48:	00c12603          	lw	a2,12(sp)
    3f4c:	00812503          	lw	a0,8(sp)
    3f50:	14040e63          	beqz	s0,40ac <fl_fread+0x1bc>
    3f54:	140a8c63          	beqz	s5,40ac <fl_fread+0x1bc>
    3f58:	43844783          	lbu	a5,1080(s0)
    3f5c:	fff00493          	li	s1,-1
    3f60:	0017f793          	andi	a5,a5,1
    3f64:	04078863          	beqz	a5,3fb4 <fl_fread+0xc4>
    3f68:	00060593          	mv	a1,a2
    3f6c:	ffffd097          	auipc	ra,0xffffd
    3f70:	614080e7          	jalr	1556(ra) # 1580 <__mulsi3>
    3f74:	00050493          	mv	s1,a0
    3f78:	02050e63          	beqz	a0,3fb4 <fl_fread+0xc4>
    3f7c:	00842583          	lw	a1,8(s0)
    3f80:	00c42783          	lw	a5,12(s0)
    3f84:	12f5f463          	bgeu	a1,a5,40ac <fl_fread+0x1bc>
    3f88:	00b50733          	add	a4,a0,a1
    3f8c:	00e7f463          	bgeu	a5,a4,3f94 <fl_fread+0xa4>
    3f90:	40b784b3          	sub	s1,a5,a1
    3f94:	0095da13          	srli	s4,a1,0x9
    3f98:	1ff5f913          	andi	s2,a1,511
    3f9c:	00000993          	li	s3,0
    3fa0:	23040b13          	addi	s6,s0,560
    3fa4:	20000b93          	li	s7,512
    3fa8:	1ff00c13          	li	s8,511
    3fac:	0499c063          	blt	s3,s1,3fec <fl_fread+0xfc>
    3fb0:	00098493          	mv	s1,s3
    3fb4:	03c12083          	lw	ra,60(sp)
    3fb8:	03812403          	lw	s0,56(sp)
    3fbc:	03012903          	lw	s2,48(sp)
    3fc0:	02c12983          	lw	s3,44(sp)
    3fc4:	02812a03          	lw	s4,40(sp)
    3fc8:	02412a83          	lw	s5,36(sp)
    3fcc:	02012b03          	lw	s6,32(sp)
    3fd0:	01c12b83          	lw	s7,28(sp)
    3fd4:	01812c03          	lw	s8,24(sp)
    3fd8:	01412c83          	lw	s9,20(sp)
    3fdc:	00048513          	mv	a0,s1
    3fe0:	03412483          	lw	s1,52(sp)
    3fe4:	04010113          	addi	sp,sp,64
    3fe8:	00008067          	ret
    3fec:	04091663          	bnez	s2,4038 <fl_fread+0x148>
    3ff0:	413486b3          	sub	a3,s1,s3
    3ff4:	04dc5263          	bge	s8,a3,4038 <fl_fread+0x148>
    3ff8:	4096d693          	srai	a3,a3,0x9
    3ffc:	013a8633          	add	a2,s5,s3
    4000:	000a0593          	mv	a1,s4
    4004:	00040513          	mv	a0,s0
    4008:	fffff097          	auipc	ra,0xfffff
    400c:	5ec080e7          	jalr	1516(ra) # 35f4 <_read_sectors>
    4010:	fa0500e3          	beqz	a0,3fb0 <fl_fread+0xc0>
    4014:	00951c93          	slli	s9,a0,0x9
    4018:	000c8613          	mv	a2,s9
    401c:	00aa0a33          	add	s4,s4,a0
    4020:	00842783          	lw	a5,8(s0)
    4024:	00c989b3          	add	s3,s3,a2
    4028:	00000913          	li	s2,0
    402c:	019787b3          	add	a5,a5,s9
    4030:	00f42423          	sw	a5,8(s0)
    4034:	f79ff06f          	j	3fac <fl_fread+0xbc>
    4038:	43042783          	lw	a5,1072(s0)
    403c:	03478e63          	beq	a5,s4,4078 <fl_fread+0x188>
    4040:	43442783          	lw	a5,1076(s0)
    4044:	00078863          	beqz	a5,4054 <fl_fread+0x164>
    4048:	00040513          	mv	a0,s0
    404c:	00000097          	auipc	ra,0x0
    4050:	d3c080e7          	jalr	-708(ra) # 3d88 <fl_fflush>
    4054:	00100693          	li	a3,1
    4058:	000b0613          	mv	a2,s6
    405c:	000a0593          	mv	a1,s4
    4060:	00040513          	mv	a0,s0
    4064:	fffff097          	auipc	ra,0xfffff
    4068:	590080e7          	jalr	1424(ra) # 35f4 <_read_sectors>
    406c:	f40502e3          	beqz	a0,3fb0 <fl_fread+0xc0>
    4070:	43442823          	sw	s4,1072(s0)
    4074:	42042a23          	sw	zero,1076(s0)
    4078:	412b87b3          	sub	a5,s7,s2
    407c:	41348633          	sub	a2,s1,s3
    4080:	00c7d463          	bge	a5,a2,4088 <fl_fread+0x198>
    4084:	00078613          	mv	a2,a5
    4088:	012b05b3          	add	a1,s6,s2
    408c:	013a8533          	add	a0,s5,s3
    4090:	00060c93          	mv	s9,a2
    4094:	00c12423          	sw	a2,8(sp)
    4098:	ffffd097          	auipc	ra,0xffffd
    409c:	db4080e7          	jalr	-588(ra) # e4c <memcpy>
    40a0:	00812603          	lw	a2,8(sp)
    40a4:	001a0a13          	addi	s4,s4,1
    40a8:	f79ff06f          	j	4020 <fl_fread+0x130>
    40ac:	fff00493          	li	s1,-1
    40b0:	f05ff06f          	j	3fb4 <fl_fread+0xc4>

000040b4 <fatfs_allocate_free_space>:
    40b4:	fd010113          	addi	sp,sp,-48
    40b8:	02112623          	sw	ra,44(sp)
    40bc:	02812423          	sw	s0,40(sp)
    40c0:	02912223          	sw	s1,36(sp)
    40c4:	03212023          	sw	s2,32(sp)
    40c8:	01312e23          	sw	s3,28(sp)
    40cc:	01412c23          	sw	s4,24(sp)
    40d0:	01512a23          	sw	s5,20(sp)
    40d4:	02069863          	bnez	a3,4104 <fatfs_allocate_free_space+0x50>
    40d8:	00000413          	li	s0,0
    40dc:	02c12083          	lw	ra,44(sp)
    40e0:	00040513          	mv	a0,s0
    40e4:	02812403          	lw	s0,40(sp)
    40e8:	02412483          	lw	s1,36(sp)
    40ec:	02012903          	lw	s2,32(sp)
    40f0:	01c12983          	lw	s3,28(sp)
    40f4:	01812a03          	lw	s4,24(sp)
    40f8:	01412a83          	lw	s5,20(sp)
    40fc:	03010113          	addi	sp,sp,48
    4100:	00008067          	ret
    4104:	02452783          	lw	a5,36(a0)
    4108:	00058a13          	mv	s4,a1
    410c:	fff00593          	li	a1,-1
    4110:	00050493          	mv	s1,a0
    4114:	00068913          	mv	s2,a3
    4118:	00060993          	mv	s3,a2
    411c:	00b78663          	beq	a5,a1,4128 <fatfs_allocate_free_space+0x74>
    4120:	fffff097          	auipc	ra,0xfffff
    4124:	620080e7          	jalr	1568(ra) # 3740 <fatfs_set_fs_info_next_free_cluster>
    4128:	0004c783          	lbu	a5,0(s1)
    412c:	00090513          	mv	a0,s2
    4130:	00979a93          	slli	s5,a5,0x9
    4134:	000a8593          	mv	a1,s5
    4138:	ffffd097          	auipc	ra,0xffffd
    413c:	c4c080e7          	jalr	-948(ra) # d84 <__udivsi3>
    4140:	00050413          	mv	s0,a0
    4144:	00050593          	mv	a1,a0
    4148:	000a8513          	mv	a0,s5
    414c:	ffffd097          	auipc	ra,0xffffd
    4150:	434080e7          	jalr	1076(ra) # 1580 <__mulsi3>
    4154:	41250533          	sub	a0,a0,s2
    4158:	00a03533          	snez	a0,a0
    415c:	00a40933          	add	s2,s0,a0
    4160:	040a0463          	beqz	s4,41a8 <fatfs_allocate_free_space+0xf4>
    4164:	0084a583          	lw	a1,8(s1)
    4168:	00c10613          	addi	a2,sp,12
    416c:	00048513          	mv	a0,s1
    4170:	fffff097          	auipc	ra,0xfffff
    4174:	680080e7          	jalr	1664(ra) # 37f0 <fatfs_find_blank_cluster>
    4178:	00050413          	mv	s0,a0
    417c:	f4050ee3          	beqz	a0,40d8 <fatfs_allocate_free_space+0x24>
    4180:	00100793          	li	a5,1
    4184:	02f91663          	bne	s2,a5,41b0 <fatfs_allocate_free_space+0xfc>
    4188:	00c12903          	lw	s2,12(sp)
    418c:	fff00613          	li	a2,-1
    4190:	00048513          	mv	a0,s1
    4194:	00090593          	mv	a1,s2
    4198:	fffff097          	auipc	ra,0xfffff
    419c:	76c080e7          	jalr	1900(ra) # 3904 <fatfs_fat_set_cluster>
    41a0:	0129a023          	sw	s2,0(s3)
    41a4:	f39ff06f          	j	40dc <fatfs_allocate_free_space+0x28>
    41a8:	0009a783          	lw	a5,0(s3)
    41ac:	00f12623          	sw	a5,12(sp)
    41b0:	00090613          	mv	a2,s2
    41b4:	00c10593          	addi	a1,sp,12
    41b8:	00048513          	mv	a0,s1
    41bc:	00000097          	auipc	ra,0x0
    41c0:	954080e7          	jalr	-1708(ra) # 3b10 <fatfs_add_free_space>
    41c4:	00050413          	mv	s0,a0
    41c8:	f15ff06f          	j	40dc <fatfs_allocate_free_space+0x28>

000041cc <fatfs_add_file_entry>:
    41cc:	03852883          	lw	a7,56(a0)
    41d0:	30088e63          	beqz	a7,44ec <fatfs_add_file_entry+0x320>
    41d4:	f8010113          	addi	sp,sp,-128
    41d8:	06812c23          	sw	s0,120(sp)
    41dc:	00050413          	mv	s0,a0
    41e0:	00060513          	mv	a0,a2
    41e4:	06912a23          	sw	s1,116(sp)
    41e8:	07512223          	sw	s5,100(sp)
    41ec:	00f12c23          	sw	a5,24(sp)
    41f0:	00e12a23          	sw	a4,20(sp)
    41f4:	06112e23          	sw	ra,124(sp)
    41f8:	07212823          	sw	s2,112(sp)
    41fc:	07312623          	sw	s3,108(sp)
    4200:	07412423          	sw	s4,104(sp)
    4204:	07612023          	sw	s6,96(sp)
    4208:	05712e23          	sw	s7,92(sp)
    420c:	05812c23          	sw	s8,88(sp)
    4210:	05912a23          	sw	s9,84(sp)
    4214:	05a12823          	sw	s10,80(sp)
    4218:	05b12623          	sw	s11,76(sp)
    421c:	01012e23          	sw	a6,28(sp)
    4220:	00068a93          	mv	s5,a3
    4224:	00c12823          	sw	a2,16(sp)
    4228:	00b12423          	sw	a1,8(sp)
    422c:	ffffe097          	auipc	ra,0xffffe
    4230:	a48080e7          	jalr	-1464(ra) # 1c74 <fatfs_lfn_entries_required>
    4234:	00150713          	addi	a4,a0,1
    4238:	00100793          	li	a5,1
    423c:	00050493          	mv	s1,a0
    4240:	2ae7f263          	bgeu	a5,a4,44e4 <fatfs_add_file_entry+0x318>
    4244:	00000a13          	li	s4,0
    4248:	00000993          	li	s3,0
    424c:	00000913          	li	s2,0
    4250:	00000c93          	li	s9,0
    4254:	00000b13          	li	s6,0
    4258:	01000c13          	li	s8,16
    425c:	00812583          	lw	a1,8(sp)
    4260:	00000693          	li	a3,0
    4264:	000b0613          	mv	a2,s6
    4268:	00040513          	mv	a0,s0
    426c:	000b0b93          	mv	s7,s6
    4270:	ffffe097          	auipc	ra,0xffffe
    4274:	7f4080e7          	jalr	2036(ra) # 2a64 <fatfs_sector_reader>
    4278:	18050463          	beqz	a0,4400 <fatfs_add_file_entry+0x234>
    427c:	001b0b13          	addi	s6,s6,1
    4280:	04440793          	addi	a5,s0,68
    4284:	000c8d13          	mv	s10,s9
    4288:	00000d93          	li	s11,0
    428c:	00078513          	mv	a0,a5
    4290:	00f12623          	sw	a5,12(sp)
    4294:	ffffe097          	auipc	ra,0xffffe
    4298:	8f8080e7          	jalr	-1800(ra) # 1b8c <fatfs_entry_lfn_text>
    429c:	00c12783          	lw	a5,12(sp)
    42a0:	00050c93          	mv	s9,a0
    42a4:	02050c63          	beqz	a0,42dc <fatfs_add_file_entry+0x110>
    42a8:	020d0463          	beqz	s10,42d0 <fatfs_add_file_entry+0x104>
    42ac:	00090c93          	mv	s9,s2
    42b0:	000c8913          	mv	s2,s9
    42b4:	001d0c93          	addi	s9,s10,1
    42b8:	001d8d93          	addi	s11,s11,1
    42bc:	0ffdfd93          	zext.b	s11,s11
    42c0:	02078793          	addi	a5,a5,32
    42c4:	f98d8ce3          	beq	s11,s8,425c <fatfs_add_file_entry+0x90>
    42c8:	000c8d13          	mv	s10,s9
    42cc:	fc1ff06f          	j	428c <fatfs_add_file_entry+0xc0>
    42d0:	000d8a13          	mv	s4,s11
    42d4:	000b8993          	mv	s3,s7
    42d8:	fd9ff06f          	j	42b0 <fatfs_add_file_entry+0xe4>
    42dc:	0007c683          	lbu	a3,0(a5)
    42e0:	0e500713          	li	a4,229
    42e4:	10e69863          	bne	a3,a4,43f4 <fatfs_add_file_entry+0x228>
    42e8:	000d1863          	bnez	s10,42f8 <fatfs_add_file_entry+0x12c>
    42ec:	000d8a13          	mv	s4,s11
    42f0:	000b8993          	mv	s3,s7
    42f4:	00100913          	li	s2,1
    42f8:	fa9d4ee3          	blt	s10,s1,42b4 <fatfs_add_file_entry+0xe8>
    42fc:	00ba8693          	addi	a3,s5,11
    4300:	000a8713          	mv	a4,s5
    4304:	00000913          	li	s2,0
    4308:	00074603          	lbu	a2,0(a4)
    430c:	00195793          	srli	a5,s2,0x1
    4310:	00791913          	slli	s2,s2,0x7
    4314:	012787b3          	add	a5,a5,s2
    4318:	00170713          	addi	a4,a4,1
    431c:	00c787b3          	add	a5,a5,a2
    4320:	0ff7f913          	zext.b	s2,a5
    4324:	fed712e3          	bne	a4,a3,4308 <fatfs_add_file_entry+0x13c>
    4328:	00098b13          	mv	s6,s3
    432c:	00000d13          	li	s10,0
    4330:	01000b93          	li	s7,16
    4334:	00812583          	lw	a1,8(sp)
    4338:	00000693          	li	a3,0
    433c:	000b0613          	mv	a2,s6
    4340:	00040513          	mv	a0,s0
    4344:	ffffe097          	auipc	ra,0xffffe
    4348:	720080e7          	jalr	1824(ra) # 2a64 <fatfs_sector_reader>
    434c:	18050c63          	beqz	a0,44e4 <fatfs_add_file_entry+0x318>
    4350:	04440c93          	addi	s9,s0,68
    4354:	413b0db3          	sub	s11,s6,s3
    4358:	00000793          	li	a5,0
    435c:	00000c13          	li	s8,0
    4360:	01912623          	sw	s9,12(sp)
    4364:	000d1663          	bnez	s10,4370 <fatfs_add_file_entry+0x1a4>
    4368:	154c1863          	bne	s8,s4,44b8 <fatfs_add_file_entry+0x2ec>
    436c:	140d9663          	bnez	s11,44b8 <fatfs_add_file_entry+0x2ec>
    4370:	12049263          	bnez	s1,4494 <fatfs_add_file_entry+0x2c8>
    4374:	01c12703          	lw	a4,28(sp)
    4378:	01412603          	lw	a2,20(sp)
    437c:	01812583          	lw	a1,24(sp)
    4380:	02010693          	addi	a3,sp,32
    4384:	000a8513          	mv	a0,s5
    4388:	ffffe097          	auipc	ra,0xffffe
    438c:	a30080e7          	jalr	-1488(ra) # 1db8 <fatfs_sfn_create_entry>
    4390:	02000613          	li	a2,32
    4394:	00c105b3          	add	a1,sp,a2
    4398:	000c8513          	mv	a0,s9
    439c:	ffffd097          	auipc	ra,0xffffd
    43a0:	ab0080e7          	jalr	-1360(ra) # e4c <memcpy>
    43a4:	03842783          	lw	a5,56(s0)
    43a8:	00c12583          	lw	a1,12(sp)
    43ac:	24442503          	lw	a0,580(s0)
    43b0:	00100613          	li	a2,1
    43b4:	000780e7          	jalr	a5
    43b8:	07c12083          	lw	ra,124(sp)
    43bc:	07812403          	lw	s0,120(sp)
    43c0:	07412483          	lw	s1,116(sp)
    43c4:	07012903          	lw	s2,112(sp)
    43c8:	06c12983          	lw	s3,108(sp)
    43cc:	06812a03          	lw	s4,104(sp)
    43d0:	06412a83          	lw	s5,100(sp)
    43d4:	06012b03          	lw	s6,96(sp)
    43d8:	05c12b83          	lw	s7,92(sp)
    43dc:	05812c03          	lw	s8,88(sp)
    43e0:	05412c83          	lw	s9,84(sp)
    43e4:	05012d03          	lw	s10,80(sp)
    43e8:	04c12d83          	lw	s11,76(sp)
    43ec:	08010113          	addi	sp,sp,128
    43f0:	00008067          	ret
    43f4:	ee068ae3          	beqz	a3,42e8 <fatfs_add_file_entry+0x11c>
    43f8:	00000913          	li	s2,0
    43fc:	ebdff06f          	j	42b8 <fatfs_add_file_entry+0xec>
    4400:	00842583          	lw	a1,8(s0)
    4404:	02010613          	addi	a2,sp,32
    4408:	00040513          	mv	a0,s0
    440c:	fffff097          	auipc	ra,0xfffff
    4410:	3e4080e7          	jalr	996(ra) # 37f0 <fatfs_find_blank_cluster>
    4414:	0c050863          	beqz	a0,44e4 <fatfs_add_file_entry+0x318>
    4418:	02012b83          	lw	s7,32(sp)
    441c:	00812583          	lw	a1,8(sp)
    4420:	00040513          	mv	a0,s0
    4424:	000b8613          	mv	a2,s7
    4428:	fffff097          	auipc	ra,0xfffff
    442c:	64c080e7          	jalr	1612(ra) # 3a74 <fatfs_fat_add_cluster_to_chain>
    4430:	0a050a63          	beqz	a0,44e4 <fatfs_add_file_entry+0x318>
    4434:	20000613          	li	a2,512
    4438:	00000593          	li	a1,0
    443c:	04440513          	addi	a0,s0,68
    4440:	ffffd097          	auipc	ra,0xffffd
    4444:	9f0080e7          	jalr	-1552(ra) # e30 <memset>
    4448:	00000c13          	li	s8,0
    444c:	00044783          	lbu	a5,0(s0)
    4450:	00fc6a63          	bltu	s8,a5,4464 <fatfs_add_file_entry+0x298>
    4454:	ea0914e3          	bnez	s2,42fc <fatfs_add_file_entry+0x130>
    4458:	000b0993          	mv	s3,s6
    445c:	00000a13          	li	s4,0
    4460:	e9dff06f          	j	42fc <fatfs_add_file_entry+0x130>
    4464:	00000693          	li	a3,0
    4468:	000c0613          	mv	a2,s8
    446c:	000b8593          	mv	a1,s7
    4470:	00040513          	mv	a0,s0
    4474:	ffffd097          	auipc	ra,0xffffd
    4478:	4ec080e7          	jalr	1260(ra) # 1960 <fatfs_write_sector>
    447c:	06050463          	beqz	a0,44e4 <fatfs_add_file_entry+0x318>
    4480:	001c0c13          	addi	s8,s8,1
    4484:	0ffc7c13          	zext.b	s8,s8
    4488:	fc5ff06f          	j	444c <fatfs_add_file_entry+0x280>
    448c:	001b0b13          	addi	s6,s6,1
    4490:	ea5ff06f          	j	4334 <fatfs_add_file_entry+0x168>
    4494:	01012503          	lw	a0,16(sp)
    4498:	fff48493          	addi	s1,s1,-1
    449c:	00090693          	mv	a3,s2
    44a0:	00048613          	mv	a2,s1
    44a4:	000c8593          	mv	a1,s9
    44a8:	ffffd097          	auipc	ra,0xffffd
    44ac:	7fc080e7          	jalr	2044(ra) # 1ca4 <fatfs_filename_to_lfn>
    44b0:	00100d13          	li	s10,1
    44b4:	000d0793          	mv	a5,s10
    44b8:	001c0c13          	addi	s8,s8,1
    44bc:	0ffc7c13          	zext.b	s8,s8
    44c0:	020c8c93          	addi	s9,s9,32
    44c4:	eb7c10e3          	bne	s8,s7,4364 <fatfs_add_file_entry+0x198>
    44c8:	fc0782e3          	beqz	a5,448c <fatfs_add_file_entry+0x2c0>
    44cc:	03842783          	lw	a5,56(s0)
    44d0:	00c12583          	lw	a1,12(sp)
    44d4:	24442503          	lw	a0,580(s0)
    44d8:	00100613          	li	a2,1
    44dc:	000780e7          	jalr	a5
    44e0:	fa0516e3          	bnez	a0,448c <fatfs_add_file_entry+0x2c0>
    44e4:	00000513          	li	a0,0
    44e8:	ed1ff06f          	j	43b8 <fatfs_add_file_entry+0x1ec>
    44ec:	00000513          	li	a0,0
    44f0:	00008067          	ret

000044f4 <fl_fopen>:
    44f4:	000057b7          	lui	a5,0x5
    44f8:	c587a783          	lw	a5,-936(a5) # 4c58 <_filelib_init>
    44fc:	fa010113          	addi	sp,sp,-96
    4500:	05212823          	sw	s2,80(sp)
    4504:	03a12823          	sw	s10,48(sp)
    4508:	04112e23          	sw	ra,92(sp)
    450c:	04812c23          	sw	s0,88(sp)
    4510:	04912a23          	sw	s1,84(sp)
    4514:	05312623          	sw	s3,76(sp)
    4518:	05412423          	sw	s4,72(sp)
    451c:	05512223          	sw	s5,68(sp)
    4520:	05612023          	sw	s6,64(sp)
    4524:	03712e23          	sw	s7,60(sp)
    4528:	03812c23          	sw	s8,56(sp)
    452c:	03912a23          	sw	s9,52(sp)
    4530:	00050d13          	mv	s10,a0
    4534:	00058913          	mv	s2,a1
    4538:	00079663          	bnez	a5,4544 <fl_fopen+0x50>
    453c:	ffffd097          	auipc	ra,0xffffd
    4540:	4d8080e7          	jalr	1240(ra) # 1a14 <fl_init>
    4544:	000057b7          	lui	a5,0x5
    4548:	c547a783          	lw	a5,-940(a5) # 4c54 <_filelib_valid>
    454c:	00193713          	seqz	a4,s2
    4550:	0017b793          	seqz	a5,a5
    4554:	00e7e7b3          	or	a5,a5,a4
    4558:	36079e63          	bnez	a5,48d4 <fl_fopen+0x3e0>
    455c:	360d0c63          	beqz	s10,48d4 <fl_fopen+0x3e0>
    4560:	00000493          	li	s1,0
    4564:	00000413          	li	s0,0
    4568:	05700993          	li	s3,87
    456c:	07200a13          	li	s4,114
    4570:	07700b13          	li	s6,119
    4574:	06100b93          	li	s7,97
    4578:	06200c13          	li	s8,98
    457c:	04100a93          	li	s5,65
    4580:	04200c93          	li	s9,66
    4584:	00090513          	mv	a0,s2
    4588:	ffffd097          	auipc	ra,0xffffd
    458c:	8e8080e7          	jalr	-1816(ra) # e70 <strlen>
    4590:	10a44a63          	blt	s0,a0,46a4 <fl_fopen+0x1b0>
    4594:	0000b9b7          	lui	s3,0xb
    4598:	ddc98a13          	addi	s4,s3,-548 # addc <_fs>
    459c:	038a2783          	lw	a5,56(s4)
    45a0:	00079463          	bnez	a5,45a8 <fl_fopen+0xb4>
    45a4:	fd94f493          	andi	s1,s1,-39
    45a8:	03ca2783          	lw	a5,60(s4)
    45ac:	00078463          	beqz	a5,45b4 <fl_fopen+0xc0>
    45b0:	000780e7          	jalr	a5
    45b4:	0014f793          	andi	a5,s1,1
    45b8:	18079263          	bnez	a5,473c <fl_fopen+0x248>
    45bc:	0204f793          	andi	a5,s1,32
    45c0:	08078c63          	beqz	a5,4658 <fl_fopen+0x164>
    45c4:	038a2783          	lw	a5,56(s4)
    45c8:	06078a63          	beqz	a5,463c <fl_fopen+0x148>
    45cc:	ffffd097          	auipc	ra,0xffffd
    45d0:	258080e7          	jalr	600(ra) # 1824 <_allocate_file>
    45d4:	00050413          	mv	s0,a0
    45d8:	06050263          	beqz	a0,463c <fl_fopen+0x148>
    45dc:	01450a93          	addi	s5,a0,20
    45e0:	10400613          	li	a2,260
    45e4:	00000593          	li	a1,0
    45e8:	000a8513          	mv	a0,s5
    45ec:	ffffd097          	auipc	ra,0xffffd
    45f0:	844080e7          	jalr	-1980(ra) # e30 <memset>
    45f4:	11840b13          	addi	s6,s0,280
    45f8:	10400613          	li	a2,260
    45fc:	00000593          	li	a1,0
    4600:	000b0513          	mv	a0,s6
    4604:	ffffd097          	auipc	ra,0xffffd
    4608:	82c080e7          	jalr	-2004(ra) # e30 <memset>
    460c:	10400713          	li	a4,260
    4610:	000b0693          	mv	a3,s6
    4614:	00070613          	mv	a2,a4
    4618:	000a8593          	mv	a1,s5
    461c:	000d0513          	mv	a0,s10
    4620:	ffffe097          	auipc	ra,0xffffe
    4624:	c88080e7          	jalr	-888(ra) # 22a8 <fatfs_split_path>
    4628:	fff00793          	li	a5,-1
    462c:	12f51663          	bne	a0,a5,4758 <fl_fopen+0x264>
    4630:	00040513          	mv	a0,s0
    4634:	ffffd097          	auipc	ra,0xffffd
    4638:	268080e7          	jalr	616(ra) # 189c <_free_file>
    463c:	00000413          	li	s0,0
    4640:	0214f793          	andi	a5,s1,33
    4644:	02000713          	li	a4,32
    4648:	28e79263          	bne	a5,a4,48cc <fl_fopen+0x3d8>
    464c:	10041263          	bnez	s0,4750 <fl_fopen+0x25c>
    4650:	0064f793          	andi	a5,s1,6
    4654:	26079463          	bnez	a5,48bc <fl_fopen+0x3c8>
    4658:	00000413          	li	s0,0
    465c:	040a2783          	lw	a5,64(s4)
    4660:	00078463          	beqz	a5,4668 <fl_fopen+0x174>
    4664:	000780e7          	jalr	a5
    4668:	05c12083          	lw	ra,92(sp)
    466c:	00040513          	mv	a0,s0
    4670:	05812403          	lw	s0,88(sp)
    4674:	05412483          	lw	s1,84(sp)
    4678:	05012903          	lw	s2,80(sp)
    467c:	04c12983          	lw	s3,76(sp)
    4680:	04812a03          	lw	s4,72(sp)
    4684:	04412a83          	lw	s5,68(sp)
    4688:	04012b03          	lw	s6,64(sp)
    468c:	03c12b83          	lw	s7,60(sp)
    4690:	03812c03          	lw	s8,56(sp)
    4694:	03412c83          	lw	s9,52(sp)
    4698:	03012d03          	lw	s10,48(sp)
    469c:	06010113          	addi	sp,sp,96
    46a0:	00008067          	ret
    46a4:	008907b3          	add	a5,s2,s0
    46a8:	0007c783          	lbu	a5,0(a5)
    46ac:	05378863          	beq	a5,s3,46fc <fl_fopen+0x208>
    46b0:	02f9e863          	bltu	s3,a5,46e0 <fl_fopen+0x1ec>
    46b4:	05578863          	beq	a5,s5,4704 <fl_fopen+0x210>
    46b8:	00faea63          	bltu	s5,a5,46cc <fl_fopen+0x1d8>
    46bc:	02b00713          	li	a4,43
    46c0:	04e78663          	beq	a5,a4,470c <fl_fopen+0x218>
    46c4:	00140413          	addi	s0,s0,1
    46c8:	ebdff06f          	j	4584 <fl_fopen+0x90>
    46cc:	03978263          	beq	a5,s9,46f0 <fl_fopen+0x1fc>
    46d0:	05200713          	li	a4,82
    46d4:	fee798e3          	bne	a5,a4,46c4 <fl_fopen+0x1d0>
    46d8:	0014e493          	ori	s1,s1,1
    46dc:	fe9ff06f          	j	46c4 <fl_fopen+0x1d0>
    46e0:	ff478ce3          	beq	a5,s4,46d8 <fl_fopen+0x1e4>
    46e4:	00fa6a63          	bltu	s4,a5,46f8 <fl_fopen+0x204>
    46e8:	01778e63          	beq	a5,s7,4704 <fl_fopen+0x210>
    46ec:	fd879ce3          	bne	a5,s8,46c4 <fl_fopen+0x1d0>
    46f0:	0084e493          	ori	s1,s1,8
    46f4:	fd1ff06f          	j	46c4 <fl_fopen+0x1d0>
    46f8:	fd6796e3          	bne	a5,s6,46c4 <fl_fopen+0x1d0>
    46fc:	0324e493          	ori	s1,s1,50
    4700:	fc5ff06f          	j	46c4 <fl_fopen+0x1d0>
    4704:	0264e493          	ori	s1,s1,38
    4708:	fbdff06f          	j	46c4 <fl_fopen+0x1d0>
    470c:	0014f793          	andi	a5,s1,1
    4710:	00078663          	beqz	a5,471c <fl_fopen+0x228>
    4714:	0024e493          	ori	s1,s1,2
    4718:	fadff06f          	j	46c4 <fl_fopen+0x1d0>
    471c:	0024f793          	andi	a5,s1,2
    4720:	00078663          	beqz	a5,472c <fl_fopen+0x238>
    4724:	0314e493          	ori	s1,s1,49
    4728:	f9dff06f          	j	46c4 <fl_fopen+0x1d0>
    472c:	0044f793          	andi	a5,s1,4
    4730:	f8078ae3          	beqz	a5,46c4 <fl_fopen+0x1d0>
    4734:	0274e493          	ori	s1,s1,39
    4738:	f8dff06f          	j	46c4 <fl_fopen+0x1d0>
    473c:	000d0513          	mv	a0,s10
    4740:	fffff097          	auipc	ra,0xfffff
    4744:	81c080e7          	jalr	-2020(ra) # 2f5c <_open_file>
    4748:	00050413          	mv	s0,a0
    474c:	e60508e3          	beqz	a0,45bc <fl_fopen+0xc8>
    4750:	42940c23          	sb	s1,1080(s0)
    4754:	f09ff06f          	j	465c <fl_fopen+0x168>
    4758:	00040513          	mv	a0,s0
    475c:	ffffe097          	auipc	ra,0xffffe
    4760:	dc8080e7          	jalr	-568(ra) # 2524 <_check_file_open>
    4764:	00050913          	mv	s2,a0
    4768:	ec0514e3          	bnez	a0,4630 <fl_fopen+0x13c>
    476c:	01444783          	lbu	a5,20(s0)
    4770:	0e079663          	bnez	a5,485c <fl_fopen+0x368>
    4774:	008a2783          	lw	a5,8(s4)
    4778:	00f42023          	sw	a5,0(s0)
    477c:	00042583          	lw	a1,0(s0)
    4780:	01010693          	addi	a3,sp,16
    4784:	000b0613          	mv	a2,s6
    4788:	ddc98513          	addi	a0,s3,-548
    478c:	ffffe097          	auipc	ra,0xffffe
    4790:	428080e7          	jalr	1064(ra) # 2bb4 <fatfs_get_file_entry>
    4794:	00100693          	li	a3,1
    4798:	e8d50ce3          	beq	a0,a3,4630 <fl_fopen+0x13c>
    479c:	00042223          	sw	zero,4(s0)
    47a0:	00440613          	addi	a2,s0,4
    47a4:	00068593          	mv	a1,a3
    47a8:	ddc98513          	addi	a0,s3,-548
    47ac:	00000097          	auipc	ra,0x0
    47b0:	908080e7          	jalr	-1784(ra) # 40b4 <fatfs_allocate_free_space>
    47b4:	e6050ee3          	beqz	a0,4630 <fl_fopen+0x13c>
    47b8:	00002ab7          	lui	s5,0x2
    47bc:	21c40b93          	addi	s7,s0,540
    47c0:	ddc98c13          	addi	s8,s3,-548
    47c4:	70fa8a93          	addi	s5,s5,1807 # 270f <fatfs_init+0xb3>
    47c8:	000b0593          	mv	a1,s6
    47cc:	00410513          	addi	a0,sp,4
    47d0:	ffffd097          	auipc	ra,0xffffd
    47d4:	68c080e7          	jalr	1676(ra) # 1e5c <fatfs_lfn_create_sfn>
    47d8:	08090e63          	beqz	s2,4874 <fl_fopen+0x380>
    47dc:	00090613          	mv	a2,s2
    47e0:	00410593          	addi	a1,sp,4
    47e4:	000b8513          	mv	a0,s7
    47e8:	ffffd097          	auipc	ra,0xffffd
    47ec:	7f0080e7          	jalr	2032(ra) # 1fd8 <fatfs_lfn_generate_tail>
    47f0:	00042583          	lw	a1,0(s0)
    47f4:	000b8613          	mv	a2,s7
    47f8:	000c0513          	mv	a0,s8
    47fc:	fffff097          	auipc	ra,0xfffff
    4800:	8d4080e7          	jalr	-1836(ra) # 30d0 <fatfs_sfn_exists>
    4804:	00050663          	beqz	a0,4810 <fl_fopen+0x31c>
    4808:	00190913          	addi	s2,s2,1
    480c:	fb591ee3          	bne	s2,s5,47c8 <fl_fopen+0x2d4>
    4810:	00442703          	lw	a4,4(s0)
    4814:	000027b7          	lui	a5,0x2
    4818:	70f78793          	addi	a5,a5,1807 # 270f <fatfs_init+0xb3>
    481c:	00070593          	mv	a1,a4
    4820:	02f90663          	beq	s2,a5,484c <fl_fopen+0x358>
    4824:	00042583          	lw	a1,0(s0)
    4828:	00000813          	li	a6,0
    482c:	00000793          	li	a5,0
    4830:	000b8693          	mv	a3,s7
    4834:	000b0613          	mv	a2,s6
    4838:	ddc98513          	addi	a0,s3,-548
    483c:	00000097          	auipc	ra,0x0
    4840:	990080e7          	jalr	-1648(ra) # 41cc <fatfs_add_file_entry>
    4844:	04051463          	bnez	a0,488c <fl_fopen+0x398>
    4848:	00442583          	lw	a1,4(s0)
    484c:	ddc98513          	addi	a0,s3,-548
    4850:	fffff097          	auipc	ra,0xfffff
    4854:	1b4080e7          	jalr	436(ra) # 3a04 <fatfs_free_cluster_chain>
    4858:	dd9ff06f          	j	4630 <fl_fopen+0x13c>
    485c:	00040593          	mv	a1,s0
    4860:	000a8513          	mv	a0,s5
    4864:	ffffe097          	auipc	ra,0xffffe
    4868:	54c080e7          	jalr	1356(ra) # 2db0 <_open_directory>
    486c:	f00518e3          	bnez	a0,477c <fl_fopen+0x288>
    4870:	dc1ff06f          	j	4630 <fl_fopen+0x13c>
    4874:	00b00613          	li	a2,11
    4878:	00410593          	addi	a1,sp,4
    487c:	000b8513          	mv	a0,s7
    4880:	ffffc097          	auipc	ra,0xffffc
    4884:	5cc080e7          	jalr	1484(ra) # e4c <memcpy>
    4888:	f69ff06f          	j	47f0 <fl_fopen+0x2fc>
    488c:	fff00793          	li	a5,-1
    4890:	00042623          	sw	zero,12(s0)
    4894:	00042423          	sw	zero,8(s0)
    4898:	42f42823          	sw	a5,1072(s0)
    489c:	42042a23          	sw	zero,1076(s0)
    48a0:	00042823          	sw	zero,16(s0)
    48a4:	22f42423          	sw	a5,552(s0)
    48a8:	22f42623          	sw	a5,556(s0)
    48ac:	ddc98513          	addi	a0,s3,-548
    48b0:	ffffe097          	auipc	ra,0xffffe
    48b4:	054080e7          	jalr	84(ra) # 2904 <fatfs_fat_purge>
    48b8:	d89ff06f          	j	4640 <fl_fopen+0x14c>
    48bc:	000d0513          	mv	a0,s10
    48c0:	ffffe097          	auipc	ra,0xffffe
    48c4:	69c080e7          	jalr	1692(ra) # 2f5c <_open_file>
    48c8:	00050413          	mv	s0,a0
    48cc:	e80412e3          	bnez	s0,4750 <fl_fopen+0x25c>
    48d0:	d89ff06f          	j	4658 <fl_fopen+0x164>
    48d4:	00000413          	li	s0,0
    48d8:	d91ff06f          	j	4668 <fl_fopen+0x174>

000048dc <cmd16>:
    48dc:	02000050 00001500                       P.......

000048e4 <acmd41>:
    48e4:	00004069 00000100                       i@......

000048ec <cmd55>:
    48ec:	00000077 00000100                       w.......

000048f4 <cmd8>:
    48f4:	01000048 000087aa                       H.......

000048fc <cmd0>:
    48fc:	00000040 00009500                       @.......

00004904 <AUDIO>:
    4904:	00018000                                ....

00004908 <BUTTONS>:
    4908:	00010100                                ....

0000490c <SDCARD>:
    490c:	00010080                                ....

00004910 <OLED_RST>:
    4910:	00010010                                ....

00004914 <OLED>:
    4914:	00010008                                ....

00004918 <LEDS>:
    4918:	00010004 0000002f 00006272 00000000     ..../...rb......
    4928:	756f532f 2f73646e 63696c63 61722e6b     /Sounds/click.ra
    4938:	00000077 756f532f 2f73646e 72617473     w.../Sounds/star
    4948:	2e707574 00776172 74696e69 2e2e2e20     tup.raw.init ...
    4958:	00000020 656e6f64 000a2e31 20202020      ...done1...    
    4968:	203d3d3d 6e69614d 6e654d20 3d3d2075     === Main Menu ==
    4978:	2020203d 000a0a20 0a207325 00000000     =    ...%s .....
    4988:	676d692e 00000000 2e676d69 20776172     .img....img.raw 
    4998:	20746f6e 6e756f66 000a2e64 67616d69     not found...imag
    49a8:	6f662065 2e646e75 0000000a 79616c70     e found.....play
    49b8:	20676e69 0a2e2e2e 00000000 656e6f64     ing ........done
    49c8:	45454545 00000a2e 33323130 37363534     EEEE....01234567
    49d8:	42413938 46454443 00000000 5f544146     89ABCDEF....FAT_
    49e8:	203a5346 6f727245 6f632072 20646c75     FS: Error could 
    49f8:	20746f6e 64616f6c 54414620 74656420     not load FAT det
    4a08:	736c6961 64252820 0a0d2129 00000000     ails (%d)!......

00004a18 <font>:
    4a18:	00000000 00002f00 00030000 14000003     ...../..........
    4a28:	143e143e 3a2b6a2e 08122600 171c3224     >.>..j+:.&..$2..
    4a38:	03003415 00000000 0000211e 001e2100     .4.......!...!..
    4a48:	08220000 0822081c 0000081c 00002040     .."...".....@ ..
    4a58:	00080800 00200000 20000000 02040810     ...... .... ....
    4a68:	3f21213f 003f0100 253d0000 25002725     ?!!?..?...=%%'.%
    4a78:	003f2525 3f040407 25252700 253f003d     %%?....?.'%%=.?%
    4a88:	01003d25 00030539 3f25253f 25252700     %=..9...?%%?.'%%
    4a98:	0028003f 40000000 00000028 00110a04     ?.(....@(.......
    4aa8:	00141400 0a110000 01000004 0007052d     ............-...
    4ab8:	253d213f 09093f1f 253f003f 3f003c27     ?!=%.?..?.?%'<.?
    4ac8:	00212121 1e21213f 25253f00 053f0025     !!!.?!!..?%%%.?.
    4ad8:	3f000505 003d2521 3f04043f 213f2100     ...?!%=.?..?.!?!
    4ae8:	20380000 3f013f21 003b0404 2020203f     ..8 !?.?..;.?   
    4af8:	3f013f00 023f3f01 3f003f04 003f2121     .?.?.??..?.?!!?.
    4b08:	0f09093f 31213f00 093f003f 27002f39     ?....?!1?.?.9/.'
    4b18:	003d2525 013f0101 20203f01 100f003f     %%=...?..?  ?...
    4b28:	3f001f30 3f203f20 3b04043b 38080f00     0..? ? ?;..;...8
    4b38:	2931000f 3f002325 00000021 04081020     ..1)%#.?!... ...
    4b48:	003f2102 01020000 20000201 00000020     .!?........  ...
    4b58:	00000201 24243800 243f003c 3c003c24     .....8$$<.?$$<.<
    4b68:	00242424 3f24243c 2c2c3c00 3f04002c     $$$.<$$?.<,,,..?
    4b78:	bc000005 00fca4a4 3c04043f 00003d00     ........?..<.=..
    4b88:	fd800000 3f000000 00340808 0000003f     .......?..4.?...
    4b98:	3c043c00 043c3c04 3c003c04 003c2424     .<.<.<<..<.<$$<.
    4ba8:	3c2424fc 24243c00 083c00fc 2c000004     .$$<.<$$..<....,
    4bb8:	003c2c2c 00243f04 20203c00 100c003c     ,,<..?$..<  <...
    4bc8:	3c001c30 3c203c20 34080834 a0a0bc00     0..< < <4..4....
    4bd8:	342400fc 0400242c 0000213f 0000003f     ..$4,$..?!..?...
    4be8:	043f2100 02010000 00000102 00000000     .!?.............
    4bf8:	00000001 00000003 00000005 00000007     ................
    4c08:	00000009 0000000e 00000010 00000012     ................
    4c18:	00000014 00000016 00000018 0000001c     ................
    4c28:	0000001e                                ....

00004c2c <file_count>:
    4c2c:	00000000                                ....

00004c30 <sdcard_while_loading_callback>:
    4c30:	00000000                                ....

00004c34 <back_color>:
	...

00004c35 <front_color>:
    4c35:	                                         ...

00004c38 <cursor_y>:
    4c38:	00000000                                ....

00004c3c <cursor_x>:
    4c3c:	00000000                                ....

00004c40 <f_putchar>:
    4c40:	00000000                                ....

00004c44 <_free_file_list>:
	...

00004c4c <_open_file_list>:
	...

00004c54 <_filelib_valid>:
    4c54:	00000000                                ....

00004c58 <_filelib_init>:
    4c58:	00000000                                ....
