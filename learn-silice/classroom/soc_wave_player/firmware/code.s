
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
      1c:	ed010113          	addi	sp,sp,-304 # fed0 <_files+0x4c94>
      20:	00005537          	lui	a0,0x5
      24:	12812423          	sw	s0,296(sp)
      28:	00410593          	addi	a1,sp,4
      2c:	00005437          	lui	s0,0x5
      30:	91450513          	addi	a0,a0,-1772 # 4914 <LEDS+0x4>
      34:	12112623          	sw	ra,300(sp)
      38:	12912223          	sw	s1,292(sp)
      3c:	c2042223          	sw	zero,-988(s0) # 4c24 <file_count>
      40:	00003097          	auipc	ra,0x3
      44:	e4c080e7          	jalr	-436(ra) # 2e8c <fl_opendir>
      48:	02050a63          	beqz	a0,7c <scan_files+0x60>
      4c:	01010593          	addi	a1,sp,16
      50:	01f00493          	li	s1,31
      54:	00410513          	addi	a0,sp,4
      58:	00003097          	auipc	ra,0x3
      5c:	500080e7          	jalr	1280(ra) # 3558 <fl_readdir>
      60:	00051863          	bnez	a0,70 <scan_files+0x54>
      64:	c2442703          	lw	a4,-988(s0)
      68:	01010593          	addi	a1,sp,16
      6c:	02e4d263          	bge	s1,a4,90 <scan_files+0x74>
      70:	00410513          	addi	a0,sp,4
      74:	00002097          	auipc	ra,0x2
      78:	a00080e7          	jalr	-1536(ra) # 1a74 <fl_closedir>
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
      a8:	c5478793          	addi	a5,a5,-940 # 4c54 <files>
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
      d8:	c2e42223          	sw	a4,-988(s0)
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
     100:	8fc7a403          	lw	s0,-1796(a5) # 48fc <AUDIO>
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
     13c:	cf0080e7          	jalr	-784(ra) # e28 <memset>
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
     17c:	91858593          	addi	a1,a1,-1768 # 4918 <LEDS+0x8>
     180:	92050513          	addi	a0,a0,-1760 # 4920 <LEDS+0x10>
     184:	00112e23          	sw	ra,28(sp)
     188:	00812c23          	sw	s0,24(sp)
     18c:	00912a23          	sw	s1,20(sp)
     190:	01212823          	sw	s2,16(sp)
     194:	00004097          	auipc	ra,0x4
     198:	358080e7          	jalr	856(ra) # 44ec <fl_fopen>
     19c:	06050263          	beqz	a0,200 <click_sound+0x90>
     1a0:	000057b7          	lui	a5,0x5
     1a4:	8fc7a903          	lw	s2,-1796(a5) # 48fc <AUDIO>
     1a8:	00050693          	mv	a3,a0
     1ac:	1ff00493          	li	s1,511
     1b0:	00092403          	lw	s0,0(s2)
     1b4:	20000613          	li	a2,512
     1b8:	00100593          	li	a1,1
     1bc:	00040513          	mv	a0,s0
     1c0:	00d12623          	sw	a3,12(sp)
     1c4:	00004097          	auipc	ra,0x4
     1c8:	d24080e7          	jalr	-732(ra) # 3ee8 <fl_fread>
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
     1fc:	c1430067          	jr	-1004(t1) # 3e0c <fl_fclose>
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
     224:	91858593          	addi	a1,a1,-1768 # 4918 <LEDS+0x8>
     228:	93450513          	addi	a0,a0,-1740 # 4934 <LEDS+0x24>
     22c:	00112e23          	sw	ra,28(sp)
     230:	00812c23          	sw	s0,24(sp)
     234:	00912a23          	sw	s1,20(sp)
     238:	01212823          	sw	s2,16(sp)
     23c:	00004097          	auipc	ra,0x4
     240:	2b0080e7          	jalr	688(ra) # 44ec <fl_fopen>
     244:	06050263          	beqz	a0,2a8 <startup_sound+0x90>
     248:	000057b7          	lui	a5,0x5
     24c:	8fc7a903          	lw	s2,-1796(a5) # 48fc <AUDIO>
     250:	00050693          	mv	a3,a0
     254:	1ff00493          	li	s1,511
     258:	00092403          	lw	s0,0(s2)
     25c:	20000613          	li	a2,512
     260:	00100593          	li	a1,1
     264:	00040513          	mv	a0,s0
     268:	00d12623          	sw	a3,12(sp)
     26c:	00004097          	auipc	ra,0x4
     270:	c7c080e7          	jalr	-900(ra) # 3ee8 <fl_fread>
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
     2a4:	b6c30067          	jr	-1172(t1) # 3e0c <fl_fclose>
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
     2cc:	12c78793          	addi	a5,a5,300 # 112c <display_putchar>
     2d0:	02112e23          	sw	ra,60(sp)
     2d4:	c2f72c23          	sw	a5,-968(a4) # 4c38 <f_putchar>
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
     30c:	d2c080e7          	jalr	-724(ra) # 1034 <oled_init>
     310:	00001097          	auipc	ra,0x1
     314:	d30080e7          	jalr	-720(ra) # 1040 <oled_fullscreen>
     318:	00001097          	auipc	ra,0x1
     31c:	de0080e7          	jalr	-544(ra) # 10f8 <display_framebuffer>
     320:	00004637          	lui	a2,0x4
     324:	00000593          	li	a1,0
     328:	00001097          	auipc	ra,0x1
     32c:	b00080e7          	jalr	-1280(ra) # e28 <memset>
     330:	00001097          	auipc	ra,0x1
     334:	f14080e7          	jalr	-236(ra) # 1244 <display_refresh>
     338:	00000593          	li	a1,0
     33c:	00000513          	li	a0,0
     340:	00001097          	auipc	ra,0x1
     344:	dc4080e7          	jalr	-572(ra) # 1104 <display_set_cursor>
     348:	00000593          	li	a1,0
     34c:	0ff00513          	li	a0,255
     350:	00001097          	auipc	ra,0x1
     354:	dc8080e7          	jalr	-568(ra) # 1118 <display_set_front_back_color>
     358:	00005537          	lui	a0,0x5
     35c:	94850513          	addi	a0,a0,-1720 # 4948 <LEDS+0x38>
     360:	00001097          	auipc	ra,0x1
     364:	0dc080e7          	jalr	220(ra) # 143c <printf>
     368:	000014b7          	lui	s1,0x1
     36c:	00001437          	lui	s0,0x1
     370:	00001097          	auipc	ra,0x1
     374:	ed4080e7          	jalr	-300(ra) # 1244 <display_refresh>
     378:	d6c48493          	addi	s1,s1,-660 # d6c <sdcard_writesector>
     37c:	00001097          	auipc	ra,0x1
     380:	84c080e7          	jalr	-1972(ra) # bc8 <sdcard_init>
     384:	d1840413          	addi	s0,s0,-744 # d18 <sdcard_readsector>
     388:	00001097          	auipc	ra,0x1
     38c:	684080e7          	jalr	1668(ra) # 1a0c <fl_init>
     390:	00048593          	mv	a1,s1
     394:	00040513          	mv	a0,s0
     398:	00002097          	auipc	ra,0x2
     39c:	4dc080e7          	jalr	1244(ra) # 2874 <fl_attach_media>
     3a0:	fe0518e3          	bnez	a0,390 <main+0xd0>
     3a4:	00005537          	lui	a0,0x5
     3a8:	95450513          	addi	a0,a0,-1708 # 4954 <LEDS+0x44>
     3ac:	00001097          	auipc	ra,0x1
     3b0:	090080e7          	jalr	144(ra) # 143c <printf>
     3b4:	00001097          	auipc	ra,0x1
     3b8:	e90080e7          	jalr	-368(ra) # 1244 <display_refresh>
     3bc:	00000097          	auipc	ra,0x0
     3c0:	e5c080e7          	jalr	-420(ra) # 218 <startup_sound>
     3c4:	000057b7          	lui	a5,0x5
     3c8:	95c78d93          	addi	s11,a5,-1700 # 495c <LEDS+0x4c>
     3cc:	000057b7          	lui	a5,0x5
     3d0:	9007a903          	lw	s2,-1792(a5) # 4900 <BUTTONS>
     3d4:	000057b7          	lui	a5,0x5
     3d8:	9107a983          	lw	s3,-1776(a5) # 4910 <LEDS>
     3dc:	000057b7          	lui	a5,0x5
     3e0:	8fc7ad03          	lw	s10,-1796(a5) # 48fc <AUDIO>
     3e4:	00005a37          	lui	s4,0x5
     3e8:	00000097          	auipc	ra,0x0
     3ec:	d0c080e7          	jalr	-756(ra) # f4 <clear_audio>
     3f0:	00000c13          	li	s8,0
     3f4:	00000097          	auipc	ra,0x0
     3f8:	c28080e7          	jalr	-984(ra) # 1c <scan_files>
     3fc:	00000413          	li	s0,0
     400:	00005bb7          	lui	s7,0x5
     404:	00005ab7          	lui	s5,0x5
     408:	978a0a13          	addi	s4,s4,-1672 # 4978 <LEDS+0x68>
     40c:	00000593          	li	a1,0
     410:	00000513          	li	a0,0
     414:	00001097          	auipc	ra,0x1
     418:	cf0080e7          	jalr	-784(ra) # 1104 <display_set_cursor>
     41c:	0ff00593          	li	a1,255
     420:	00000513          	li	a0,0
     424:	00001097          	auipc	ra,0x1
     428:	cf4080e7          	jalr	-780(ra) # 1118 <display_set_front_back_color>
     42c:	000d8513          	mv	a0,s11
     430:	00001097          	auipc	ra,0x1
     434:	00c080e7          	jalr	12(ra) # 143c <printf>
     438:	c54b8c93          	addi	s9,s7,-940 # 4c54 <files>
     43c:	00001097          	auipc	ra,0x1
     440:	e08080e7          	jalr	-504(ra) # 1244 <display_refresh>
     444:	00000493          	li	s1,0
     448:	000c8b13          	mv	s6,s9
     44c:	c24aa783          	lw	a5,-988(s5) # 4c24 <file_count>
     450:	1af4ca63          	blt	s1,a5,604 <main+0x344>
     454:	00001097          	auipc	ra,0x1
     458:	df0080e7          	jalr	-528(ra) # 1244 <display_refresh>
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
     498:	c24aa783          	lw	a5,-988(s5)
     49c:	1a045263          	bgez	s0,640 <main+0x380>
     4a0:	fff78413          	addi	s0,a5,-1
     4a4:	0044f693          	andi	a3,s1,4
     4a8:	c0002673          	rdcycle	a2
     4ac:	0000c7b7          	lui	a5,0xc
     4b0:	34f78793          	addi	a5,a5,847 # c34f <_files+0x1113>
     4b4:	c0002773          	rdcycle	a4
     4b8:	40c70733          	sub	a4,a4,a2
     4bc:	fee7fce3          	bgeu	a5,a4,4b4 <main+0x1f4>
     4c0:	12068e63          	beqz	a3,5fc <main+0x33c>
     4c4:	00007ab7          	lui	s5,0x7
     4c8:	00005cb7          	lui	s9,0x5
     4cc:	00007c37          	lui	s8,0x7
     4d0:	914c8593          	addi	a1,s9,-1772 # 4914 <LEDS+0x4>
     4d4:	d54a8513          	addi	a0,s5,-684 # 6d54 <tmp>
     4d8:	d40a8a23          	sb	zero,-684(s5)
     4dc:	cc0c0a23          	sb	zero,-812(s8) # 6cd4 <tmp1>
     4e0:	00001097          	auipc	ra,0x1
     4e4:	a0c080e7          	jalr	-1524(ra) # eec <strcat>
     4e8:	00641793          	slli	a5,s0,0x6
     4ec:	00878433          	add	s0,a5,s0
     4f0:	00241413          	slli	s0,s0,0x2
     4f4:	008b0433          	add	s0,s6,s0
     4f8:	00040593          	mv	a1,s0
     4fc:	d54a8513          	addi	a0,s5,-684
     500:	00001097          	auipc	ra,0x1
     504:	9ec080e7          	jalr	-1556(ra) # eec <strcat>
     508:	914c8593          	addi	a1,s9,-1772
     50c:	cd4c0513          	addi	a0,s8,-812
     510:	00001097          	auipc	ra,0x1
     514:	9dc080e7          	jalr	-1572(ra) # eec <strcat>
     518:	00040593          	mv	a1,s0
     51c:	cd4c0513          	addi	a0,s8,-812
     520:	00001097          	auipc	ra,0x1
     524:	9cc080e7          	jalr	-1588(ra) # eec <strcat>
     528:	000055b7          	lui	a1,0x5
     52c:	98058593          	addi	a1,a1,-1664 # 4980 <LEDS+0x70>
     530:	cd4c0513          	addi	a0,s8,-812
     534:	00001097          	auipc	ra,0x1
     538:	9b8080e7          	jalr	-1608(ra) # eec <strcat>
     53c:	00001097          	auipc	ra,0x1
     540:	d08080e7          	jalr	-760(ra) # 1244 <display_refresh>
     544:	c00026f3          	rdcycle	a3
     548:	008957b7          	lui	a5,0x895
     54c:	43f78793          	addi	a5,a5,1087 # 89543f <__stacktop+0x88543f>
     550:	c0002773          	rdcycle	a4
     554:	40d70733          	sub	a4,a4,a3
     558:	fee7fce3          	bgeu	a5,a4,550 <main+0x290>
     55c:	00005b37          	lui	s6,0x5
     560:	918b0593          	addi	a1,s6,-1768 # 4918 <LEDS+0x8>
     564:	cd4c0513          	addi	a0,s8,-812
     568:	00004097          	auipc	ra,0x4
     56c:	f84080e7          	jalr	-124(ra) # 44ec <fl_fopen>
     570:	00050a13          	mv	s4,a0
     574:	0c051e63          	bnez	a0,650 <main+0x390>
     578:	00005537          	lui	a0,0x5
     57c:	98850513          	addi	a0,a0,-1656 # 4988 <LEDS+0x78>
     580:	00001097          	auipc	ra,0x1
     584:	ebc080e7          	jalr	-324(ra) # 143c <printf>
     588:	00001097          	auipc	ra,0x1
     58c:	cbc080e7          	jalr	-836(ra) # 1244 <display_refresh>
     590:	0009a023          	sw	zero,0(s3)
     594:	00001097          	auipc	ra,0x1
     598:	cb0080e7          	jalr	-848(ra) # 1244 <display_refresh>
     59c:	918b0593          	addi	a1,s6,-1768
     5a0:	d54a8513          	addi	a0,s5,-684
     5a4:	00004097          	auipc	ra,0x4
     5a8:	f48080e7          	jalr	-184(ra) # 44ec <fl_fopen>
     5ac:	00050c93          	mv	s9,a0
     5b0:	0e051663          	bnez	a0,69c <main+0x3dc>
     5b4:	00040513          	mv	a0,s0
     5b8:	00001097          	auipc	ra,0x1
     5bc:	e84080e7          	jalr	-380(ra) # 143c <printf>
     5c0:	00001097          	auipc	ra,0x1
     5c4:	c84080e7          	jalr	-892(ra) # 1244 <display_refresh>
     5c8:	00005537          	lui	a0,0x5
     5cc:	9bc50513          	addi	a0,a0,-1604 # 49bc <LEDS+0xac>
     5d0:	00001097          	auipc	ra,0x1
     5d4:	e6c080e7          	jalr	-404(ra) # 143c <printf>
     5d8:	00001097          	auipc	ra,0x1
     5dc:	b20080e7          	jalr	-1248(ra) # 10f8 <display_framebuffer>
     5e0:	00004637          	lui	a2,0x4
     5e4:	00000593          	li	a1,0
     5e8:	00001097          	auipc	ra,0x1
     5ec:	840080e7          	jalr	-1984(ra) # e28 <memset>
     5f0:	00001097          	auipc	ra,0x1
     5f4:	c54080e7          	jalr	-940(ra) # 1244 <display_refresh>
     5f8:	dedff06f          	j	3e4 <main+0x124>
     5fc:	00048c13          	mv	s8,s1
     600:	e0dff06f          	j	40c <main+0x14c>
     604:	02849863          	bne	s1,s0,634 <main+0x374>
     608:	0ff00593          	li	a1,255
     60c:	00000513          	li	a0,0
     610:	00001097          	auipc	ra,0x1
     614:	b08080e7          	jalr	-1272(ra) # 1118 <display_set_front_back_color>
     618:	000c8593          	mv	a1,s9
     61c:	000a0513          	mv	a0,s4
     620:	00001097          	auipc	ra,0x1
     624:	e1c080e7          	jalr	-484(ra) # 143c <printf>
     628:	00148493          	addi	s1,s1,1
     62c:	104c8c93          	addi	s9,s9,260
     630:	e1dff06f          	j	44c <main+0x18c>
     634:	00000593          	li	a1,0
     638:	0ff00513          	li	a0,255
     63c:	fd5ff06f          	j	610 <main+0x350>
     640:	00f427b3          	slt	a5,s0,a5
     644:	40f007b3          	neg	a5,a5
     648:	00f47433          	and	s0,s0,a5
     64c:	e59ff06f          	j	4a4 <main+0x1e4>
     650:	00005537          	lui	a0,0x5
     654:	99c50513          	addi	a0,a0,-1636 # 499c <LEDS+0x8c>
     658:	00001097          	auipc	ra,0x1
     65c:	de4080e7          	jalr	-540(ra) # 143c <printf>
     660:	00001097          	auipc	ra,0x1
     664:	be4080e7          	jalr	-1052(ra) # 1244 <display_refresh>
     668:	00001097          	auipc	ra,0x1
     66c:	a90080e7          	jalr	-1392(ra) # 10f8 <display_framebuffer>
     670:	000a0693          	mv	a3,s4
     674:	00004637          	lui	a2,0x4
     678:	00100593          	li	a1,1
     67c:	00004097          	auipc	ra,0x4
     680:	86c080e7          	jalr	-1940(ra) # 3ee8 <fl_fread>
     684:	00001097          	auipc	ra,0x1
     688:	bc0080e7          	jalr	-1088(ra) # 1244 <display_refresh>
     68c:	000a0513          	mv	a0,s4
     690:	00003097          	auipc	ra,0x3
     694:	77c080e7          	jalr	1916(ra) # 3e0c <fl_fclose>
     698:	ef9ff06f          	j	590 <main+0x2d0>
     69c:	00005537          	lui	a0,0x5
     6a0:	9ac50513          	addi	a0,a0,-1620 # 49ac <LEDS+0x9c>
     6a4:	00001097          	auipc	ra,0x1
     6a8:	d98080e7          	jalr	-616(ra) # 143c <printf>
     6ac:	00001097          	auipc	ra,0x1
     6b0:	b98080e7          	jalr	-1128(ra) # 1244 <display_refresh>
     6b4:	00000a13          	li	s4,0
     6b8:	00100413          	li	s0,1
     6bc:	1ff00b13          	li	s6,511
     6c0:	00092783          	lw	a5,0(s2)
     6c4:	000d2a83          	lw	s5,0(s10)
     6c8:	000c8693          	mv	a3,s9
     6cc:	20000613          	li	a2,512
     6d0:	00100593          	li	a1,1
     6d4:	000a8513          	mv	a0,s5
     6d8:	00004097          	auipc	ra,0x4
     6dc:	810080e7          	jalr	-2032(ra) # 3ee8 <fl_fread>
     6e0:	00050b93          	mv	s7,a0
     6e4:	0aa04463          	bgtz	a0,78c <main+0x4cc>
     6e8:	000c8513          	mv	a0,s9
     6ec:	00003097          	auipc	ra,0x3
     6f0:	720080e7          	jalr	1824(ra) # 3e0c <fl_fclose>
     6f4:	ed5ff06f          	j	5c8 <main+0x308>
     6f8:	f8040793          	addi	a5,s0,-128
     6fc:	fff40713          	addi	a4,s0,-1
     700:	0017b793          	seqz	a5,a5
     704:	00173713          	seqz	a4,a4
     708:	00092c03          	lw	s8,0(s2)
     70c:	00e7e7b3          	or	a5,a5,a4
     710:	02fa0a63          	beq	s4,a5,744 <main+0x484>
     714:	00141413          	slli	s0,s0,0x1
     718:	0089a023          	sw	s0,0(s3)
     71c:	002c7713          	andi	a4,s8,2
     720:	02070663          	beqz	a4,74c <main+0x48c>
     724:	0024f713          	andi	a4,s1,2
     728:	02071263          	bnez	a4,74c <main+0x48c>
     72c:	00000097          	auipc	ra,0x0
     730:	a44080e7          	jalr	-1468(ra) # 170 <click_sound>
     734:	000c8513          	mv	a0,s9
     738:	00003097          	auipc	ra,0x3
     73c:	6d4080e7          	jalr	1748(ra) # 3e0c <fl_fclose>
     740:	fa9ff06f          	j	6e8 <main+0x428>
     744:	40145413          	srai	s0,s0,0x1
     748:	fd1ff06f          	j	718 <main+0x458>
     74c:	00fa4a33          	xor	s4,s4,a5
     750:	020c7793          	andi	a5,s8,32
     754:	02078a63          	beqz	a5,788 <main+0x4c8>
     758:	0204f793          	andi	a5,s1,32
     75c:	02079663          	bnez	a5,788 <main+0x4c8>
     760:	00000097          	auipc	ra,0x0
     764:	a10080e7          	jalr	-1520(ra) # 170 <click_sound>
     768:	00048793          	mv	a5,s1
     76c:	00092483          	lw	s1,0(s2)
     770:	0204f713          	andi	a4,s1,32
     774:	fe070ae3          	beqz	a4,768 <main+0x4a8>
     778:	0207f793          	andi	a5,a5,32
     77c:	fe0796e3          	bnez	a5,768 <main+0x4a8>
     780:	00000097          	auipc	ra,0x0
     784:	9f0080e7          	jalr	-1552(ra) # 170 <click_sound>
     788:	000c0493          	mv	s1,s8
     78c:	000d2783          	lw	a5,0(s10)
     790:	f6fa84e3          	beq	s5,a5,6f8 <main+0x438>
     794:	f37b46e3          	blt	s6,s7,6c0 <main+0x400>
     798:	f51ff06f          	j	6e8 <main+0x428>

0000079c <pause>:
     79c:	c0002773          	rdcycle	a4
     7a0:	c00027f3          	rdcycle	a5
     7a4:	40e787b3          	sub	a5,a5,a4
     7a8:	fea7ece3          	bltu	a5,a0,7a0 <pause+0x4>
     7ac:	00008067          	ret

000007b0 <sdcard_idle>:
     7b0:	00008067          	ret

000007b4 <sdcard_select>:
     7b4:	000057b7          	lui	a5,0x5
     7b8:	9047a783          	lw	a5,-1788(a5) # 4904 <SDCARD>
     7bc:	00200713          	li	a4,2
     7c0:	00e7a023          	sw	a4,0(a5)
     7c4:	00008067          	ret

000007c8 <sdcard_ponder>:
     7c8:	000056b7          	lui	a3,0x5
     7cc:	9046a683          	lw	a3,-1788(a3) # 4904 <SDCARD>
     7d0:	01000793          	li	a5,16
     7d4:	00000713          	li	a4,0
     7d8:	00676613          	ori	a2,a4,6
     7dc:	00c6a023          	sw	a2,0(a3)
     7e0:	00174713          	xori	a4,a4,1
     7e4:	00000013          	nop
     7e8:	fff78793          	addi	a5,a5,-1
     7ec:	fe0796e3          	bnez	a5,7d8 <sdcard_ponder+0x10>
     7f0:	00008067          	ret

000007f4 <sdcard_unselect>:
     7f4:	000057b7          	lui	a5,0x5
     7f8:	9047a783          	lw	a5,-1788(a5) # 4904 <SDCARD>
     7fc:	00600713          	li	a4,6
     800:	00e7a023          	sw	a4,0(a5)
     804:	00008067          	ret

00000808 <sdcard_send>:
     808:	000057b7          	lui	a5,0x5
     80c:	9047a783          	lw	a5,-1788(a5) # 4904 <SDCARD>
     810:	00655713          	srli	a4,a0,0x6
     814:	00277713          	andi	a4,a4,2
     818:	00e7a023          	sw	a4,0(a5)
     81c:	00176713          	ori	a4,a4,1
     820:	00e7a023          	sw	a4,0(a5)
     824:	00555713          	srli	a4,a0,0x5
     828:	00277713          	andi	a4,a4,2
     82c:	00e7a023          	sw	a4,0(a5)
     830:	00176713          	ori	a4,a4,1
     834:	00e7a023          	sw	a4,0(a5)
     838:	00455713          	srli	a4,a0,0x4
     83c:	00277713          	andi	a4,a4,2
     840:	00e7a023          	sw	a4,0(a5)
     844:	00176713          	ori	a4,a4,1
     848:	00e7a023          	sw	a4,0(a5)
     84c:	00355713          	srli	a4,a0,0x3
     850:	00277713          	andi	a4,a4,2
     854:	00e7a023          	sw	a4,0(a5)
     858:	00176713          	ori	a4,a4,1
     85c:	00e7a023          	sw	a4,0(a5)
     860:	00255713          	srli	a4,a0,0x2
     864:	00277713          	andi	a4,a4,2
     868:	00e7a023          	sw	a4,0(a5)
     86c:	00176713          	ori	a4,a4,1
     870:	00e7a023          	sw	a4,0(a5)
     874:	00155713          	srli	a4,a0,0x1
     878:	00277713          	andi	a4,a4,2
     87c:	00e7a023          	sw	a4,0(a5)
     880:	00176713          	ori	a4,a4,1
     884:	00e7a023          	sw	a4,0(a5)
     888:	00257713          	andi	a4,a0,2
     88c:	00e7a023          	sw	a4,0(a5)
     890:	00151513          	slli	a0,a0,0x1
     894:	00176713          	ori	a4,a4,1
     898:	00e7a023          	sw	a4,0(a5)
     89c:	00257513          	andi	a0,a0,2
     8a0:	00a7a023          	sw	a0,0(a5)
     8a4:	00156513          	ori	a0,a0,1
     8a8:	00a7a023          	sw	a0,0(a5)
     8ac:	00200713          	li	a4,2
     8b0:	00e7a023          	sw	a4,0(a5)
     8b4:	000057b7          	lui	a5,0x5
     8b8:	c287a783          	lw	a5,-984(a5) # 4c28 <sdcard_while_loading_callback>
     8bc:	00078067          	jr	a5

000008c0 <sdcard_read>:
     8c0:	fd010113          	addi	sp,sp,-48
     8c4:	fff50793          	addi	a5,a0,-1
     8c8:	03212023          	sw	s2,32(sp)
     8cc:	00100913          	li	s2,1
     8d0:	00f91933          	sll	s2,s2,a5
     8d4:	000057b7          	lui	a5,0x5
     8d8:	01312e23          	sw	s3,28(sp)
     8dc:	9047a983          	lw	s3,-1788(a5) # 4904 <SDCARD>
     8e0:	02812423          	sw	s0,40(sp)
     8e4:	02912223          	sw	s1,36(sp)
     8e8:	01412c23          	sw	s4,24(sp)
     8ec:	01512a23          	sw	s5,20(sp)
     8f0:	01612823          	sw	s6,16(sp)
     8f4:	02112623          	sw	ra,44(sp)
     8f8:	0ff00413          	li	s0,255
     8fc:	00000493          	li	s1,0
     900:	00300a13          	li	s4,3
     904:	00200a93          	li	s5,2
     908:	00005b37          	lui	s6,0x5
     90c:	02058c63          	beqz	a1,944 <sdcard_read+0x84>
     910:	012477b3          	and	a5,s0,s2
     914:	02079a63          	bnez	a5,948 <sdcard_read+0x88>
     918:	02c12083          	lw	ra,44(sp)
     91c:	0ff47513          	zext.b	a0,s0
     920:	02812403          	lw	s0,40(sp)
     924:	02412483          	lw	s1,36(sp)
     928:	02012903          	lw	s2,32(sp)
     92c:	01c12983          	lw	s3,28(sp)
     930:	01812a03          	lw	s4,24(sp)
     934:	01412a83          	lw	s5,20(sp)
     938:	01012b03          	lw	s6,16(sp)
     93c:	03010113          	addi	sp,sp,48
     940:	00008067          	ret
     944:	fca4dae3          	bge	s1,a0,918 <sdcard_read+0x58>
     948:	0149a023          	sw	s4,0(s3)
     94c:	0159a023          	sw	s5,0(s3)
     950:	0009a783          	lw	a5,0(s3)
     954:	00141413          	slli	s0,s0,0x1
     958:	00b12623          	sw	a1,12(sp)
     95c:	00f46433          	or	s0,s0,a5
     960:	c28b2783          	lw	a5,-984(s6) # 4c28 <sdcard_while_loading_callback>
     964:	00a12423          	sw	a0,8(sp)
     968:	00148493          	addi	s1,s1,1
     96c:	000780e7          	jalr	a5
     970:	00c12583          	lw	a1,12(sp)
     974:	00812503          	lw	a0,8(sp)
     978:	f95ff06f          	j	90c <sdcard_read+0x4c>

0000097c <sdcard_get>:
     97c:	fe010113          	addi	sp,sp,-32
     980:	00112e23          	sw	ra,28(sp)
     984:	00812c23          	sw	s0,24(sp)
     988:	00912a23          	sw	s1,20(sp)
     98c:	00050413          	mv	s0,a0
     990:	00b12623          	sw	a1,12(sp)
     994:	00000097          	auipc	ra,0x0
     998:	e20080e7          	jalr	-480(ra) # 7b4 <sdcard_select>
     99c:	00c12583          	lw	a1,12(sp)
     9a0:	00040513          	mv	a0,s0
     9a4:	00100493          	li	s1,1
     9a8:	00000097          	auipc	ra,0x0
     9ac:	f18080e7          	jalr	-232(ra) # 8c0 <sdcard_read>
     9b0:	00345413          	srli	s0,s0,0x3
     9b4:	0284c463          	blt	s1,s0,9dc <sdcard_get+0x60>
     9b8:	00a12623          	sw	a0,12(sp)
     9bc:	00000097          	auipc	ra,0x0
     9c0:	e38080e7          	jalr	-456(ra) # 7f4 <sdcard_unselect>
     9c4:	01c12083          	lw	ra,28(sp)
     9c8:	01812403          	lw	s0,24(sp)
     9cc:	00c12503          	lw	a0,12(sp)
     9d0:	01412483          	lw	s1,20(sp)
     9d4:	02010113          	addi	sp,sp,32
     9d8:	00008067          	ret
     9dc:	00000593          	li	a1,0
     9e0:	00800513          	li	a0,8
     9e4:	00000097          	auipc	ra,0x0
     9e8:	edc080e7          	jalr	-292(ra) # 8c0 <sdcard_read>
     9ec:	00148493          	addi	s1,s1,1
     9f0:	fc5ff06f          	j	9b4 <sdcard_get+0x38>

000009f4 <sdcard_cmd>:
     9f4:	ff010113          	addi	sp,sp,-16
     9f8:	00812423          	sw	s0,8(sp)
     9fc:	00912223          	sw	s1,4(sp)
     a00:	01212023          	sw	s2,0(sp)
     a04:	00112623          	sw	ra,12(sp)
     a08:	00050913          	mv	s2,a0
     a0c:	00000413          	li	s0,0
     a10:	00000097          	auipc	ra,0x0
     a14:	da4080e7          	jalr	-604(ra) # 7b4 <sdcard_select>
     a18:	00600493          	li	s1,6
     a1c:	008907b3          	add	a5,s2,s0
     a20:	0007c503          	lbu	a0,0(a5)
     a24:	00140413          	addi	s0,s0,1
     a28:	00000097          	auipc	ra,0x0
     a2c:	de0080e7          	jalr	-544(ra) # 808 <sdcard_send>
     a30:	fe9416e3          	bne	s0,s1,a1c <sdcard_cmd+0x28>
     a34:	00812403          	lw	s0,8(sp)
     a38:	00c12083          	lw	ra,12(sp)
     a3c:	00412483          	lw	s1,4(sp)
     a40:	00012903          	lw	s2,0(sp)
     a44:	01010113          	addi	sp,sp,16
     a48:	00000317          	auipc	t1,0x0
     a4c:	dac30067          	jr	-596(t1) # 7f4 <sdcard_unselect>

00000a50 <sdcard_start_sector>:
     a50:	ff010113          	addi	sp,sp,-16
     a54:	00112623          	sw	ra,12(sp)
     a58:	00812423          	sw	s0,8(sp)
     a5c:	00050413          	mv	s0,a0
     a60:	00000097          	auipc	ra,0x0
     a64:	d54080e7          	jalr	-684(ra) # 7b4 <sdcard_select>
     a68:	05100513          	li	a0,81
     a6c:	00000097          	auipc	ra,0x0
     a70:	d9c080e7          	jalr	-612(ra) # 808 <sdcard_send>
     a74:	01845513          	srli	a0,s0,0x18
     a78:	00000097          	auipc	ra,0x0
     a7c:	d90080e7          	jalr	-624(ra) # 808 <sdcard_send>
     a80:	41045513          	srai	a0,s0,0x10
     a84:	0ff57513          	zext.b	a0,a0
     a88:	00000097          	auipc	ra,0x0
     a8c:	d80080e7          	jalr	-640(ra) # 808 <sdcard_send>
     a90:	40845513          	srai	a0,s0,0x8
     a94:	0ff57513          	zext.b	a0,a0
     a98:	00000097          	auipc	ra,0x0
     a9c:	d70080e7          	jalr	-656(ra) # 808 <sdcard_send>
     aa0:	0ff47513          	zext.b	a0,s0
     aa4:	00000097          	auipc	ra,0x0
     aa8:	d64080e7          	jalr	-668(ra) # 808 <sdcard_send>
     aac:	05500513          	li	a0,85
     ab0:	00000097          	auipc	ra,0x0
     ab4:	d58080e7          	jalr	-680(ra) # 808 <sdcard_send>
     ab8:	00000097          	auipc	ra,0x0
     abc:	d3c080e7          	jalr	-708(ra) # 7f4 <sdcard_unselect>
     ac0:	00812403          	lw	s0,8(sp)
     ac4:	00c12083          	lw	ra,12(sp)
     ac8:	00100593          	li	a1,1
     acc:	00800513          	li	a0,8
     ad0:	01010113          	addi	sp,sp,16
     ad4:	00000317          	auipc	t1,0x0
     ad8:	ea830067          	jr	-344(t1) # 97c <sdcard_get>

00000adc <sdcard_read_sector>:
     adc:	ff010113          	addi	sp,sp,-16
     ae0:	00812423          	sw	s0,8(sp)
     ae4:	00112623          	sw	ra,12(sp)
     ae8:	00912223          	sw	s1,4(sp)
     aec:	01212023          	sw	s2,0(sp)
     af0:	00058413          	mv	s0,a1
     af4:	00000097          	auipc	ra,0x0
     af8:	f5c080e7          	jalr	-164(ra) # a50 <sdcard_start_sector>
     afc:	04051863          	bnez	a0,b4c <sdcard_read_sector+0x70>
     b00:	00100593          	li	a1,1
     b04:	00058513          	mv	a0,a1
     b08:	00000097          	auipc	ra,0x0
     b0c:	e74080e7          	jalr	-396(ra) # 97c <sdcard_get>
     b10:	00000493          	li	s1,0
     b14:	20000913          	li	s2,512
     b18:	00000593          	li	a1,0
     b1c:	00800513          	li	a0,8
     b20:	00000097          	auipc	ra,0x0
     b24:	e5c080e7          	jalr	-420(ra) # 97c <sdcard_get>
     b28:	009407b3          	add	a5,s0,s1
     b2c:	00a78023          	sb	a0,0(a5)
     b30:	00148493          	addi	s1,s1,1
     b34:	ff2492e3          	bne	s1,s2,b18 <sdcard_read_sector+0x3c>
     b38:	00100593          	li	a1,1
     b3c:	01000513          	li	a0,16
     b40:	20040413          	addi	s0,s0,512
     b44:	00000097          	auipc	ra,0x0
     b48:	e38080e7          	jalr	-456(ra) # 97c <sdcard_get>
     b4c:	00c12083          	lw	ra,12(sp)
     b50:	00040513          	mv	a0,s0
     b54:	00812403          	lw	s0,8(sp)
     b58:	00412483          	lw	s1,4(sp)
     b5c:	00012903          	lw	s2,0(sp)
     b60:	01010113          	addi	sp,sp,16
     b64:	00008067          	ret

00000b68 <sdcard_preinit>:
     b68:	ff010113          	addi	sp,sp,-16
     b6c:	000057b7          	lui	a5,0x5
     b70:	00812423          	sw	s0,8(sp)
     b74:	9047a403          	lw	s0,-1788(a5) # 4904 <SDCARD>
     b78:	00112623          	sw	ra,12(sp)
     b7c:	00600793          	li	a5,6
     b80:	01313537          	lui	a0,0x1313
     b84:	00f42023          	sw	a5,0(s0)
     b88:	d0050513          	addi	a0,a0,-768 # 1312d00 <__stacktop+0x1302d00>
     b8c:	00000097          	auipc	ra,0x0
     b90:	c10080e7          	jalr	-1008(ra) # 79c <pause>
     b94:	0a000793          	li	a5,160
     b98:	00000713          	li	a4,0
     b9c:	00676693          	ori	a3,a4,6
     ba0:	00d42023          	sw	a3,0(s0)
     ba4:	fff78793          	addi	a5,a5,-1
     ba8:	00174713          	xori	a4,a4,1
     bac:	fe0798e3          	bnez	a5,b9c <sdcard_preinit+0x34>
     bb0:	00600793          	li	a5,6
     bb4:	00c12083          	lw	ra,12(sp)
     bb8:	00f42023          	sw	a5,0(s0)
     bbc:	00812403          	lw	s0,8(sp)
     bc0:	01010113          	addi	sp,sp,16
     bc4:	00008067          	ret

00000bc8 <sdcard_init>:
     bc8:	000007b7          	lui	a5,0x0
     bcc:	7b078793          	addi	a5,a5,1968 # 7b0 <sdcard_idle>
     bd0:	00005737          	lui	a4,0x5
     bd4:	fe010113          	addi	sp,sp,-32
     bd8:	c2f72423          	sw	a5,-984(a4) # 4c28 <sdcard_while_loading_callback>
     bdc:	000057b7          	lui	a5,0x5
     be0:	00812c23          	sw	s0,24(sp)
     be4:	00912a23          	sw	s1,20(sp)
     be8:	00112e23          	sw	ra,28(sp)
     bec:	8f478493          	addi	s1,a5,-1804 # 48f4 <cmd0>
     bf0:	0ff00413          	li	s0,255
     bf4:	00000097          	auipc	ra,0x0
     bf8:	f74080e7          	jalr	-140(ra) # b68 <sdcard_preinit>
     bfc:	00048513          	mv	a0,s1
     c00:	00000097          	auipc	ra,0x0
     c04:	df4080e7          	jalr	-524(ra) # 9f4 <sdcard_cmd>
     c08:	00100593          	li	a1,1
     c0c:	00800513          	li	a0,8
     c10:	00000097          	auipc	ra,0x0
     c14:	d6c080e7          	jalr	-660(ra) # 97c <sdcard_get>
     c18:	00a12623          	sw	a0,12(sp)
     c1c:	00000097          	auipc	ra,0x0
     c20:	bac080e7          	jalr	-1108(ra) # 7c8 <sdcard_ponder>
     c24:	00c12503          	lw	a0,12(sp)
     c28:	00851c63          	bne	a0,s0,c40 <sdcard_init+0x78>
     c2c:	01313537          	lui	a0,0x1313
     c30:	d0050513          	addi	a0,a0,-768 # 1312d00 <__stacktop+0x1302d00>
     c34:	00000097          	auipc	ra,0x0
     c38:	b68080e7          	jalr	-1176(ra) # 79c <pause>
     c3c:	fb9ff06f          	j	bf4 <sdcard_init+0x2c>
     c40:	00005537          	lui	a0,0x5
     c44:	8ec50513          	addi	a0,a0,-1812 # 48ec <cmd8>
     c48:	00000097          	auipc	ra,0x0
     c4c:	dac080e7          	jalr	-596(ra) # 9f4 <sdcard_cmd>
     c50:	00100593          	li	a1,1
     c54:	02800513          	li	a0,40
     c58:	00000097          	auipc	ra,0x0
     c5c:	d24080e7          	jalr	-732(ra) # 97c <sdcard_get>
     c60:	00000097          	auipc	ra,0x0
     c64:	b68080e7          	jalr	-1176(ra) # 7c8 <sdcard_ponder>
     c68:	000057b7          	lui	a5,0x5
     c6c:	8e478413          	addi	s0,a5,-1820 # 48e4 <cmd55>
     c70:	000057b7          	lui	a5,0x5
     c74:	8dc78493          	addi	s1,a5,-1828 # 48dc <acmd41>
     c78:	00040513          	mv	a0,s0
     c7c:	00000097          	auipc	ra,0x0
     c80:	d78080e7          	jalr	-648(ra) # 9f4 <sdcard_cmd>
     c84:	00100593          	li	a1,1
     c88:	00800513          	li	a0,8
     c8c:	00000097          	auipc	ra,0x0
     c90:	cf0080e7          	jalr	-784(ra) # 97c <sdcard_get>
     c94:	00000097          	auipc	ra,0x0
     c98:	b34080e7          	jalr	-1228(ra) # 7c8 <sdcard_ponder>
     c9c:	00048513          	mv	a0,s1
     ca0:	00000097          	auipc	ra,0x0
     ca4:	d54080e7          	jalr	-684(ra) # 9f4 <sdcard_cmd>
     ca8:	00100593          	li	a1,1
     cac:	00800513          	li	a0,8
     cb0:	00000097          	auipc	ra,0x0
     cb4:	ccc080e7          	jalr	-820(ra) # 97c <sdcard_get>
     cb8:	00a12623          	sw	a0,12(sp)
     cbc:	00000097          	auipc	ra,0x0
     cc0:	b0c080e7          	jalr	-1268(ra) # 7c8 <sdcard_ponder>
     cc4:	00c12503          	lw	a0,12(sp)
     cc8:	00050c63          	beqz	a0,ce0 <sdcard_init+0x118>
     ccc:	001e8537          	lui	a0,0x1e8
     cd0:	48050513          	addi	a0,a0,1152 # 1e8480 <__stacktop+0x1d8480>
     cd4:	00000097          	auipc	ra,0x0
     cd8:	ac8080e7          	jalr	-1336(ra) # 79c <pause>
     cdc:	f9dff06f          	j	c78 <sdcard_init+0xb0>
     ce0:	00005537          	lui	a0,0x5
     ce4:	8d450513          	addi	a0,a0,-1836 # 48d4 <cmd16>
     ce8:	00000097          	auipc	ra,0x0
     cec:	d0c080e7          	jalr	-756(ra) # 9f4 <sdcard_cmd>
     cf0:	00100593          	li	a1,1
     cf4:	00800513          	li	a0,8
     cf8:	00000097          	auipc	ra,0x0
     cfc:	c84080e7          	jalr	-892(ra) # 97c <sdcard_get>
     d00:	01812403          	lw	s0,24(sp)
     d04:	01c12083          	lw	ra,28(sp)
     d08:	01412483          	lw	s1,20(sp)
     d0c:	02010113          	addi	sp,sp,32
     d10:	00000317          	auipc	t1,0x0
     d14:	ab830067          	jr	-1352(t1) # 7c8 <sdcard_ponder>

00000d18 <sdcard_readsector>:
     d18:	04060663          	beqz	a2,d64 <sdcard_readsector+0x4c>
     d1c:	ff010113          	addi	sp,sp,-16
     d20:	00812423          	sw	s0,8(sp)
     d24:	00912223          	sw	s1,4(sp)
     d28:	00112623          	sw	ra,12(sp)
     d2c:	00050413          	mv	s0,a0
     d30:	00a604b3          	add	s1,a2,a0
     d34:	00040513          	mv	a0,s0
     d38:	00000097          	auipc	ra,0x0
     d3c:	da4080e7          	jalr	-604(ra) # adc <sdcard_read_sector>
     d40:	00140413          	addi	s0,s0,1
     d44:	00050593          	mv	a1,a0
     d48:	fe9416e3          	bne	s0,s1,d34 <sdcard_readsector+0x1c>
     d4c:	00c12083          	lw	ra,12(sp)
     d50:	00812403          	lw	s0,8(sp)
     d54:	00412483          	lw	s1,4(sp)
     d58:	00100513          	li	a0,1
     d5c:	01010113          	addi	sp,sp,16
     d60:	00008067          	ret
     d64:	00000513          	li	a0,0
     d68:	00008067          	ret

00000d6c <sdcard_writesector>:
     d6c:	00000513          	li	a0,0
     d70:	00008067          	ret

00000d74 <__divsi3>:
     d74:	06054063          	bltz	a0,dd4 <__umodsi3+0x10>
     d78:	0605c663          	bltz	a1,de4 <__umodsi3+0x20>

00000d7c <__udivsi3>:
     d7c:	00058613          	mv	a2,a1
     d80:	00050593          	mv	a1,a0
     d84:	fff00513          	li	a0,-1
     d88:	02060c63          	beqz	a2,dc0 <__udivsi3+0x44>
     d8c:	00100693          	li	a3,1
     d90:	00b67a63          	bgeu	a2,a1,da4 <__udivsi3+0x28>
     d94:	00c05863          	blez	a2,da4 <__udivsi3+0x28>
     d98:	00161613          	slli	a2,a2,0x1
     d9c:	00169693          	slli	a3,a3,0x1
     da0:	feb66ae3          	bltu	a2,a1,d94 <__udivsi3+0x18>
     da4:	00000513          	li	a0,0
     da8:	00c5e663          	bltu	a1,a2,db4 <__udivsi3+0x38>
     dac:	40c585b3          	sub	a1,a1,a2
     db0:	00d56533          	or	a0,a0,a3
     db4:	0016d693          	srli	a3,a3,0x1
     db8:	00165613          	srli	a2,a2,0x1
     dbc:	fe0696e3          	bnez	a3,da8 <__udivsi3+0x2c>
     dc0:	00008067          	ret

00000dc4 <__umodsi3>:
     dc4:	00008293          	mv	t0,ra
     dc8:	fb5ff0ef          	jal	d7c <__udivsi3>
     dcc:	00058513          	mv	a0,a1
     dd0:	00028067          	jr	t0
     dd4:	40a00533          	neg	a0,a0
     dd8:	0005d863          	bgez	a1,de8 <__umodsi3+0x24>
     ddc:	40b005b3          	neg	a1,a1
     de0:	f95ff06f          	j	d74 <__divsi3>
     de4:	40b005b3          	neg	a1,a1
     de8:	00008293          	mv	t0,ra
     dec:	f89ff0ef          	jal	d74 <__divsi3>
     df0:	40a00533          	neg	a0,a0
     df4:	00028067          	jr	t0

00000df8 <__modsi3>:
     df8:	00008293          	mv	t0,ra
     dfc:	0005ca63          	bltz	a1,e10 <__modsi3+0x18>
     e00:	00054c63          	bltz	a0,e18 <__modsi3+0x20>
     e04:	f79ff0ef          	jal	d7c <__udivsi3>
     e08:	00058513          	mv	a0,a1
     e0c:	00028067          	jr	t0
     e10:	40b005b3          	neg	a1,a1
     e14:	fe0558e3          	bgez	a0,e04 <__modsi3+0xc>
     e18:	40a00533          	neg	a0,a0
     e1c:	f61ff0ef          	jal	d7c <__udivsi3>
     e20:	40b00533          	neg	a0,a1
     e24:	00028067          	jr	t0

00000e28 <memset>:
     e28:	00c50633          	add	a2,a0,a2
     e2c:	00050793          	mv	a5,a0
     e30:	00c79463          	bne	a5,a2,e38 <memset+0x10>
     e34:	00008067          	ret
     e38:	00178793          	addi	a5,a5,1
     e3c:	feb78fa3          	sb	a1,-1(a5)
     e40:	ff1ff06f          	j	e30 <memset+0x8>

00000e44 <memcpy>:
     e44:	00000793          	li	a5,0
     e48:	00c79463          	bne	a5,a2,e50 <memcpy+0xc>
     e4c:	00008067          	ret
     e50:	00f58733          	add	a4,a1,a5
     e54:	00074683          	lbu	a3,0(a4)
     e58:	00f50733          	add	a4,a0,a5
     e5c:	00178793          	addi	a5,a5,1
     e60:	00d70023          	sb	a3,0(a4)
     e64:	fe5ff06f          	j	e48 <memcpy+0x4>

00000e68 <strlen>:
     e68:	00000793          	li	a5,0
     e6c:	00f50733          	add	a4,a0,a5
     e70:	00074703          	lbu	a4,0(a4)
     e74:	00071663          	bnez	a4,e80 <strlen+0x18>
     e78:	00078513          	mv	a0,a5
     e7c:	00008067          	ret
     e80:	00178793          	addi	a5,a5,1
     e84:	fe9ff06f          	j	e6c <strlen+0x4>

00000e88 <strncmp>:
     e88:	00000793          	li	a5,0
     e8c:	00c79663          	bne	a5,a2,e98 <strncmp+0x10>
     e90:	00000513          	li	a0,0
     e94:	00008067          	ret
     e98:	00f50733          	add	a4,a0,a5
     e9c:	00074683          	lbu	a3,0(a4)
     ea0:	00f58733          	add	a4,a1,a5
     ea4:	00074703          	lbu	a4,0(a4)
     ea8:	00e6e863          	bltu	a3,a4,eb8 <strncmp+0x30>
     eac:	00d76a63          	bltu	a4,a3,ec0 <strncmp+0x38>
     eb0:	00178793          	addi	a5,a5,1
     eb4:	fd9ff06f          	j	e8c <strncmp+0x4>
     eb8:	fff00513          	li	a0,-1
     ebc:	00008067          	ret
     ec0:	00100513          	li	a0,1
     ec4:	00008067          	ret

00000ec8 <strncpy>:
     ec8:	00000793          	li	a5,0
     ecc:	00c79463          	bne	a5,a2,ed4 <strncpy+0xc>
     ed0:	00008067          	ret
     ed4:	00f58733          	add	a4,a1,a5
     ed8:	00074683          	lbu	a3,0(a4)
     edc:	00f50733          	add	a4,a0,a5
     ee0:	00178793          	addi	a5,a5,1
     ee4:	00d70023          	sb	a3,0(a4)
     ee8:	fe5ff06f          	j	ecc <strncpy+0x4>

00000eec <strcat>:
     eec:	00050793          	mv	a5,a0
     ef0:	0007c683          	lbu	a3,0(a5)
     ef4:	00078713          	mv	a4,a5
     ef8:	00178793          	addi	a5,a5,1
     efc:	fe069ae3          	bnez	a3,ef0 <strcat+0x4>
     f00:	0005c783          	lbu	a5,0(a1)
     f04:	00158593          	addi	a1,a1,1
     f08:	00170713          	addi	a4,a4,1
     f0c:	fef70fa3          	sb	a5,-1(a4)
     f10:	fe0798e3          	bnez	a5,f00 <strcat+0x14>
     f14:	00008067          	ret

00000f18 <oled_wait>:
     f18:	00000013          	nop
     f1c:	00000013          	nop
     f20:	00000013          	nop
     f24:	00000013          	nop
     f28:	00000013          	nop
     f2c:	00000013          	nop
     f30:	00000013          	nop
     f34:	00008067          	ret

00000f38 <oled_init_mode>:
     f38:	000057b7          	lui	a5,0x5
     f3c:	9087a703          	lw	a4,-1784(a5) # 4908 <OLED_RST>
     f40:	fe010113          	addi	sp,sp,-32
     f44:	00112e23          	sw	ra,28(sp)
     f48:	00812c23          	sw	s0,24(sp)
     f4c:	00072023          	sw	zero,0(a4)
     f50:	00040737          	lui	a4,0x40
     f54:	00000013          	nop
     f58:	fff70713          	addi	a4,a4,-1 # 3ffff <__stacktop+0x2ffff>
     f5c:	fe071ce3          	bnez	a4,f54 <oled_init_mode+0x1c>
     f60:	9087a703          	lw	a4,-1784(a5)
     f64:	00100693          	li	a3,1
     f68:	00d72023          	sw	a3,0(a4)
     f6c:	00040737          	lui	a4,0x40
     f70:	00000013          	nop
     f74:	fff70713          	addi	a4,a4,-1 # 3ffff <__stacktop+0x2ffff>
     f78:	fe071ce3          	bnez	a4,f70 <oled_init_mode+0x38>
     f7c:	9087a783          	lw	a5,-1784(a5)
     f80:	0007a023          	sw	zero,0(a5)
     f84:	000407b7          	lui	a5,0x40
     f88:	00000013          	nop
     f8c:	fff78793          	addi	a5,a5,-1 # 3ffff <__stacktop+0x2ffff>
     f90:	fe079ce3          	bnez	a5,f88 <oled_init_mode+0x50>
     f94:	00005737          	lui	a4,0x5
     f98:	90c72783          	lw	a5,-1780(a4) # 490c <OLED>
     f9c:	2af00693          	li	a3,687
     fa0:	00d7a023          	sw	a3,0(a5)
     fa4:	000407b7          	lui	a5,0x40
     fa8:	00000013          	nop
     fac:	fff78793          	addi	a5,a5,-1 # 3ffff <__stacktop+0x2ffff>
     fb0:	fe079ce3          	bnez	a5,fa8 <oled_init_mode+0x70>
     fb4:	90c72403          	lw	s0,-1780(a4)
     fb8:	2a000793          	li	a5,672
     fbc:	00a12623          	sw	a0,12(sp)
     fc0:	00f42023          	sw	a5,0(s0)
     fc4:	00000097          	auipc	ra,0x0
     fc8:	f54080e7          	jalr	-172(ra) # f18 <oled_wait>
     fcc:	00c12503          	lw	a0,12(sp)
     fd0:	4a000793          	li	a5,1184
     fd4:	00050463          	beqz	a0,fdc <oled_init_mode+0xa4>
     fd8:	42000793          	li	a5,1056
     fdc:	00f42023          	sw	a5,0(s0)
     fe0:	00000097          	auipc	ra,0x0
     fe4:	f38080e7          	jalr	-200(ra) # f18 <oled_wait>
     fe8:	2fd00793          	li	a5,765
     fec:	00f42023          	sw	a5,0(s0)
     ff0:	00000097          	auipc	ra,0x0
     ff4:	f28080e7          	jalr	-216(ra) # f18 <oled_wait>
     ff8:	4b100793          	li	a5,1201
     ffc:	00f42023          	sw	a5,0(s0)
    1000:	00000097          	auipc	ra,0x0
    1004:	f18080e7          	jalr	-232(ra) # f18 <oled_wait>
    1008:	2a200793          	li	a5,674
    100c:	00f42023          	sw	a5,0(s0)
    1010:	00000097          	auipc	ra,0x0
    1014:	f08080e7          	jalr	-248(ra) # f18 <oled_wait>
    1018:	40000793          	li	a5,1024
    101c:	00f42023          	sw	a5,0(s0)
    1020:	01812403          	lw	s0,24(sp)
    1024:	01c12083          	lw	ra,28(sp)
    1028:	02010113          	addi	sp,sp,32
    102c:	00000317          	auipc	t1,0x0
    1030:	eec30067          	jr	-276(t1) # f18 <oled_wait>

00001034 <oled_init>:
    1034:	00000513          	li	a0,0
    1038:	00000317          	auipc	t1,0x0
    103c:	f0030067          	jr	-256(t1) # f38 <oled_init_mode>

00001040 <oled_fullscreen>:
    1040:	ff010113          	addi	sp,sp,-16
    1044:	000057b7          	lui	a5,0x5
    1048:	00812423          	sw	s0,8(sp)
    104c:	90c7a403          	lw	s0,-1780(a5) # 490c <OLED>
    1050:	00112623          	sw	ra,12(sp)
    1054:	00912223          	sw	s1,4(sp)
    1058:	01212023          	sw	s2,0(sp)
    105c:	21500793          	li	a5,533
    1060:	00f42023          	sw	a5,0(s0)
    1064:	40000913          	li	s2,1024
    1068:	00000097          	auipc	ra,0x0
    106c:	eb0080e7          	jalr	-336(ra) # f18 <oled_wait>
    1070:	47f00493          	li	s1,1151
    1074:	01242023          	sw	s2,0(s0)
    1078:	00000097          	auipc	ra,0x0
    107c:	ea0080e7          	jalr	-352(ra) # f18 <oled_wait>
    1080:	00942023          	sw	s1,0(s0)
    1084:	00000097          	auipc	ra,0x0
    1088:	e94080e7          	jalr	-364(ra) # f18 <oled_wait>
    108c:	27500793          	li	a5,629
    1090:	00f42023          	sw	a5,0(s0)
    1094:	00000097          	auipc	ra,0x0
    1098:	e84080e7          	jalr	-380(ra) # f18 <oled_wait>
    109c:	01242023          	sw	s2,0(s0)
    10a0:	00000097          	auipc	ra,0x0
    10a4:	e78080e7          	jalr	-392(ra) # f18 <oled_wait>
    10a8:	00942023          	sw	s1,0(s0)
    10ac:	00000097          	auipc	ra,0x0
    10b0:	e6c080e7          	jalr	-404(ra) # f18 <oled_wait>
    10b4:	25c00793          	li	a5,604
    10b8:	00f42023          	sw	a5,0(s0)
    10bc:	00812403          	lw	s0,8(sp)
    10c0:	00c12083          	lw	ra,12(sp)
    10c4:	00412483          	lw	s1,4(sp)
    10c8:	00012903          	lw	s2,0(sp)
    10cc:	01010113          	addi	sp,sp,16
    10d0:	00000317          	auipc	t1,0x0
    10d4:	e4830067          	jr	-440(t1) # f18 <oled_wait>

000010d8 <oled_wait>:
    10d8:	00000013          	nop
    10dc:	00000013          	nop
    10e0:	00000013          	nop
    10e4:	00000013          	nop
    10e8:	00000013          	nop
    10ec:	00000013          	nop
    10f0:	00000013          	nop
    10f4:	00008067          	ret

000010f8 <display_framebuffer>:
    10f8:	00007537          	lui	a0,0x7
    10fc:	dd450513          	addi	a0,a0,-556 # 6dd4 <framebuffer>
    1100:	00008067          	ret

00001104 <display_set_cursor>:
    1104:	000057b7          	lui	a5,0x5
    1108:	c2a7aa23          	sw	a0,-972(a5) # 4c34 <cursor_x>
    110c:	000057b7          	lui	a5,0x5
    1110:	c2b7a823          	sw	a1,-976(a5) # 4c30 <cursor_y>
    1114:	00008067          	ret

00001118 <display_set_front_back_color>:
    1118:	000057b7          	lui	a5,0x5
    111c:	c2a786a3          	sb	a0,-979(a5) # 4c2d <front_color>
    1120:	000057b7          	lui	a5,0x5
    1124:	c2b78623          	sb	a1,-980(a5) # 4c2c <back_color>
    1128:	00008067          	ret

0000112c <display_putchar>:
    112c:	00a00793          	li	a5,10
    1130:	000055b7          	lui	a1,0x5
    1134:	02f51663          	bne	a0,a5,1160 <display_putchar+0x34>
    1138:	00005737          	lui	a4,0x5
    113c:	c3072783          	lw	a5,-976(a4) # 4c30 <cursor_y>
    1140:	c205aa23          	sw	zero,-972(a1) # 4c34 <cursor_x>
    1144:	00878793          	addi	a5,a5,8
    1148:	c2f72823          	sw	a5,-976(a4)
    114c:	07f00713          	li	a4,127
    1150:	00f75663          	bge	a4,a5,115c <display_putchar+0x30>
    1154:	000057b7          	lui	a5,0x5
    1158:	c207a823          	sw	zero,-976(a5) # 4c30 <cursor_y>
    115c:	00008067          	ret
    1160:	ff010113          	addi	sp,sp,-16
    1164:	00812623          	sw	s0,12(sp)
    1168:	01f00713          	li	a4,31
    116c:	c345a783          	lw	a5,-972(a1)
    1170:	08a75a63          	bge	a4,a0,1204 <display_putchar+0xd8>
    1174:	00005737          	lui	a4,0x5
    1178:	c2c74f83          	lbu	t6,-980(a4) # 4c2c <back_color>
    117c:	00005737          	lui	a4,0x5
    1180:	c2d74283          	lbu	t0,-979(a4) # 4c2d <front_color>
    1184:	000056b7          	lui	a3,0x5
    1188:	00251713          	slli	a4,a0,0x2
    118c:	a1068693          	addi	a3,a3,-1520 # 4a10 <font>
    1190:	00a70733          	add	a4,a4,a0
    1194:	00d70733          	add	a4,a4,a3
    1198:	000056b7          	lui	a3,0x5
    119c:	c306a683          	lw	a3,-976(a3) # 4c30 <cursor_y>
    11a0:	00007637          	lui	a2,0x7
    11a4:	dd460613          	addi	a2,a2,-556 # 6dd4 <framebuffer>
    11a8:	00c686b3          	add	a3,a3,a2
    11ac:	00779613          	slli	a2,a5,0x7
    11b0:	00c686b3          	add	a3,a3,a2
    11b4:	00100f13          	li	t5,1
    11b8:	00000613          	li	a2,0
    11bc:	00500393          	li	t2,5
    11c0:	00800413          	li	s0,8
    11c4:	00cf1eb3          	sll	t4,t5,a2
    11c8:	00d608b3          	add	a7,a2,a3
    11cc:	00070813          	mv	a6,a4
    11d0:	00000513          	li	a0,0
    11d4:	f6084303          	lbu	t1,-160(a6)
    11d8:	00028e13          	mv	t3,t0
    11dc:	01d37333          	and	t1,t1,t4
    11e0:	00031463          	bnez	t1,11e8 <display_putchar+0xbc>
    11e4:	000f8e13          	mv	t3,t6
    11e8:	01c88023          	sb	t3,0(a7)
    11ec:	00150513          	addi	a0,a0,1
    11f0:	00180813          	addi	a6,a6,1
    11f4:	08088893          	addi	a7,a7,128
    11f8:	fc751ee3          	bne	a0,t2,11d4 <display_putchar+0xa8>
    11fc:	00160613          	addi	a2,a2,1
    1200:	fc8612e3          	bne	a2,s0,11c4 <display_putchar+0x98>
    1204:	00578793          	addi	a5,a5,5
    1208:	07f00713          	li	a4,127
    120c:	00f74663          	blt	a4,a5,1218 <display_putchar+0xec>
    1210:	c2f5aa23          	sw	a5,-972(a1)
    1214:	0240006f          	j	1238 <display_putchar+0x10c>
    1218:	000056b7          	lui	a3,0x5
    121c:	c306a783          	lw	a5,-976(a3) # 4c30 <cursor_y>
    1220:	c205aa23          	sw	zero,-972(a1)
    1224:	00878793          	addi	a5,a5,8
    1228:	c2f6a823          	sw	a5,-976(a3)
    122c:	00f75663          	bge	a4,a5,1238 <display_putchar+0x10c>
    1230:	000057b7          	lui	a5,0x5
    1234:	c207a823          	sw	zero,-976(a5) # 4c30 <cursor_y>
    1238:	00c12403          	lw	s0,12(sp)
    123c:	01010113          	addi	sp,sp,16
    1240:	00008067          	ret

00001244 <display_refresh>:
    1244:	fe010113          	addi	sp,sp,-32
    1248:	000057b7          	lui	a5,0x5
    124c:	01212823          	sw	s2,16(sp)
    1250:	90c7a903          	lw	s2,-1780(a5) # 490c <OLED>
    1254:	01312623          	sw	s3,12(sp)
    1258:	000079b7          	lui	s3,0x7
    125c:	00912a23          	sw	s1,20(sp)
    1260:	01412423          	sw	s4,8(sp)
    1264:	00112e23          	sw	ra,28(sp)
    1268:	00812c23          	sw	s0,24(sp)
    126c:	00000493          	li	s1,0
    1270:	dd498993          	addi	s3,s3,-556 # 6dd4 <framebuffer>
    1274:	00004a37          	lui	s4,0x4
    1278:	013487b3          	add	a5,s1,s3
    127c:	0007c403          	lbu	s0,0(a5)
    1280:	00148493          	addi	s1,s1,1
    1284:	00245413          	srli	s0,s0,0x2
    1288:	40046413          	ori	s0,s0,1024
    128c:	00892023          	sw	s0,0(s2)
    1290:	00000097          	auipc	ra,0x0
    1294:	e48080e7          	jalr	-440(ra) # 10d8 <oled_wait>
    1298:	00892023          	sw	s0,0(s2)
    129c:	00000097          	auipc	ra,0x0
    12a0:	e3c080e7          	jalr	-452(ra) # 10d8 <oled_wait>
    12a4:	00892023          	sw	s0,0(s2)
    12a8:	00000097          	auipc	ra,0x0
    12ac:	e30080e7          	jalr	-464(ra) # 10d8 <oled_wait>
    12b0:	fd4494e3          	bne	s1,s4,1278 <display_refresh+0x34>
    12b4:	01c12083          	lw	ra,28(sp)
    12b8:	01812403          	lw	s0,24(sp)
    12bc:	01412483          	lw	s1,20(sp)
    12c0:	01012903          	lw	s2,16(sp)
    12c4:	00c12983          	lw	s3,12(sp)
    12c8:	00812a03          	lw	s4,8(sp)
    12cc:	02010113          	addi	sp,sp,32
    12d0:	00008067          	ret

000012d4 <print_string>:
    12d4:	ff010113          	addi	sp,sp,-16
    12d8:	00812423          	sw	s0,8(sp)
    12dc:	00912223          	sw	s1,4(sp)
    12e0:	00112623          	sw	ra,12(sp)
    12e4:	00050413          	mv	s0,a0
    12e8:	000054b7          	lui	s1,0x5
    12ec:	00044503          	lbu	a0,0(s0)
    12f0:	00051c63          	bnez	a0,1308 <print_string+0x34>
    12f4:	00c12083          	lw	ra,12(sp)
    12f8:	00812403          	lw	s0,8(sp)
    12fc:	00412483          	lw	s1,4(sp)
    1300:	01010113          	addi	sp,sp,16
    1304:	00008067          	ret
    1308:	c384a783          	lw	a5,-968(s1) # 4c38 <f_putchar>
    130c:	00140413          	addi	s0,s0,1
    1310:	000780e7          	jalr	a5
    1314:	fd9ff06f          	j	12ec <print_string+0x18>

00001318 <print_dec>:
    1318:	ef010113          	addi	sp,sp,-272
    131c:	10812423          	sw	s0,264(sp)
    1320:	10912223          	sw	s1,260(sp)
    1324:	10112623          	sw	ra,268(sp)
    1328:	11212023          	sw	s2,256(sp)
    132c:	00050413          	mv	s0,a0
    1330:	000054b7          	lui	s1,0x5
    1334:	08045063          	bgez	s0,13b4 <print_dec+0x9c>
    1338:	c384a783          	lw	a5,-968(s1) # 4c38 <f_putchar>
    133c:	02d00513          	li	a0,45
    1340:	40800433          	neg	s0,s0
    1344:	000780e7          	jalr	a5
    1348:	fedff06f          	j	1334 <print_dec+0x1c>
    134c:	00040513          	mv	a0,s0
    1350:	00a00593          	li	a1,10
    1354:	00000097          	auipc	ra,0x0
    1358:	a20080e7          	jalr	-1504(ra) # d74 <__divsi3>
    135c:	00251793          	slli	a5,a0,0x2
    1360:	00f507b3          	add	a5,a0,a5
    1364:	00179793          	slli	a5,a5,0x1
    1368:	40f40433          	sub	s0,s0,a5
    136c:	00148493          	addi	s1,s1,1
    1370:	fe848fa3          	sb	s0,-1(s1)
    1374:	00050413          	mv	s0,a0
    1378:	fc041ae3          	bnez	s0,134c <print_dec+0x34>
    137c:	fd2488e3          	beq	s1,s2,134c <print_dec+0x34>
    1380:	00005437          	lui	s0,0x5
    1384:	fff4c503          	lbu	a0,-1(s1)
    1388:	c3842783          	lw	a5,-968(s0) # 4c38 <f_putchar>
    138c:	fff48493          	addi	s1,s1,-1
    1390:	03050513          	addi	a0,a0,48
    1394:	000780e7          	jalr	a5
    1398:	ff2496e3          	bne	s1,s2,1384 <print_dec+0x6c>
    139c:	10c12083          	lw	ra,268(sp)
    13a0:	10812403          	lw	s0,264(sp)
    13a4:	10412483          	lw	s1,260(sp)
    13a8:	10012903          	lw	s2,256(sp)
    13ac:	11010113          	addi	sp,sp,272
    13b0:	00008067          	ret
    13b4:	00010493          	mv	s1,sp
    13b8:	00010913          	mv	s2,sp
    13bc:	fbdff06f          	j	1378 <print_dec+0x60>

000013c0 <print_hex_digits>:
    13c0:	fe010113          	addi	sp,sp,-32
    13c4:	00812c23          	sw	s0,24(sp)
    13c8:	00912a23          	sw	s1,20(sp)
    13cc:	fff58413          	addi	s0,a1,-1
    13d0:	000054b7          	lui	s1,0x5
    13d4:	01212823          	sw	s2,16(sp)
    13d8:	01312623          	sw	s3,12(sp)
    13dc:	00112e23          	sw	ra,28(sp)
    13e0:	00050993          	mv	s3,a0
    13e4:	00241413          	slli	s0,s0,0x2
    13e8:	9c848493          	addi	s1,s1,-1592 # 49c8 <LEDS+0xb8>
    13ec:	00005937          	lui	s2,0x5
    13f0:	02045063          	bgez	s0,1410 <print_hex_digits+0x50>
    13f4:	01c12083          	lw	ra,28(sp)
    13f8:	01812403          	lw	s0,24(sp)
    13fc:	01412483          	lw	s1,20(sp)
    1400:	01012903          	lw	s2,16(sp)
    1404:	00c12983          	lw	s3,12(sp)
    1408:	02010113          	addi	sp,sp,32
    140c:	00008067          	ret
    1410:	0089d7b3          	srl	a5,s3,s0
    1414:	00f7f793          	andi	a5,a5,15
    1418:	00f487b3          	add	a5,s1,a5
    141c:	c3892703          	lw	a4,-968(s2) # 4c38 <f_putchar>
    1420:	0007c503          	lbu	a0,0(a5)
    1424:	ffc40413          	addi	s0,s0,-4
    1428:	000700e7          	jalr	a4
    142c:	fc5ff06f          	j	13f0 <print_hex_digits+0x30>

00001430 <print_hex>:
    1430:	00800593          	li	a1,8
    1434:	00000317          	auipc	t1,0x0
    1438:	f8c30067          	jr	-116(t1) # 13c0 <print_hex_digits>

0000143c <printf>:
    143c:	fa010113          	addi	sp,sp,-96
    1440:	04f12a23          	sw	a5,84(sp)
    1444:	04410793          	addi	a5,sp,68
    1448:	02812c23          	sw	s0,56(sp)
    144c:	02912a23          	sw	s1,52(sp)
    1450:	03212823          	sw	s2,48(sp)
    1454:	03312623          	sw	s3,44(sp)
    1458:	03412423          	sw	s4,40(sp)
    145c:	03512223          	sw	s5,36(sp)
    1460:	03612023          	sw	s6,32(sp)
    1464:	02112e23          	sw	ra,60(sp)
    1468:	01712e23          	sw	s7,28(sp)
    146c:	00050413          	mv	s0,a0
    1470:	04b12223          	sw	a1,68(sp)
    1474:	04c12423          	sw	a2,72(sp)
    1478:	04d12623          	sw	a3,76(sp)
    147c:	04e12823          	sw	a4,80(sp)
    1480:	05012c23          	sw	a6,88(sp)
    1484:	05112e23          	sw	a7,92(sp)
    1488:	00f12623          	sw	a5,12(sp)
    148c:	02500913          	li	s2,37
    1490:	000054b7          	lui	s1,0x5
    1494:	07300993          	li	s3,115
    1498:	07800a13          	li	s4,120
    149c:	06400a93          	li	s5,100
    14a0:	06300b13          	li	s6,99
    14a4:	00044503          	lbu	a0,0(s0)
    14a8:	02051863          	bnez	a0,14d8 <printf+0x9c>
    14ac:	03c12083          	lw	ra,60(sp)
    14b0:	03812403          	lw	s0,56(sp)
    14b4:	03412483          	lw	s1,52(sp)
    14b8:	03012903          	lw	s2,48(sp)
    14bc:	02c12983          	lw	s3,44(sp)
    14c0:	02812a03          	lw	s4,40(sp)
    14c4:	02412a83          	lw	s5,36(sp)
    14c8:	02012b03          	lw	s6,32(sp)
    14cc:	01c12b83          	lw	s7,28(sp)
    14d0:	06010113          	addi	sp,sp,96
    14d4:	00008067          	ret
    14d8:	09251a63          	bne	a0,s2,156c <printf+0x130>
    14dc:	00144503          	lbu	a0,1(s0)
    14e0:	00140b93          	addi	s7,s0,1
    14e4:	03351463          	bne	a0,s3,150c <printf+0xd0>
    14e8:	00c12783          	lw	a5,12(sp)
    14ec:	0007a503          	lw	a0,0(a5)
    14f0:	00478713          	addi	a4,a5,4
    14f4:	00e12623          	sw	a4,12(sp)
    14f8:	00000097          	auipc	ra,0x0
    14fc:	ddc080e7          	jalr	-548(ra) # 12d4 <print_string>
    1500:	000b8413          	mv	s0,s7
    1504:	00140413          	addi	s0,s0,1
    1508:	f9dff06f          	j	14a4 <printf+0x68>
    150c:	03451063          	bne	a0,s4,152c <printf+0xf0>
    1510:	00c12783          	lw	a5,12(sp)
    1514:	0007a503          	lw	a0,0(a5)
    1518:	00478713          	addi	a4,a5,4
    151c:	00e12623          	sw	a4,12(sp)
    1520:	00000097          	auipc	ra,0x0
    1524:	f10080e7          	jalr	-240(ra) # 1430 <print_hex>
    1528:	fd9ff06f          	j	1500 <printf+0xc4>
    152c:	03551063          	bne	a0,s5,154c <printf+0x110>
    1530:	00c12783          	lw	a5,12(sp)
    1534:	0007a503          	lw	a0,0(a5)
    1538:	00478713          	addi	a4,a5,4
    153c:	00e12623          	sw	a4,12(sp)
    1540:	00000097          	auipc	ra,0x0
    1544:	dd8080e7          	jalr	-552(ra) # 1318 <print_dec>
    1548:	fb9ff06f          	j	1500 <printf+0xc4>
    154c:	c384a783          	lw	a5,-968(s1) # 4c38 <f_putchar>
    1550:	01651a63          	bne	a0,s6,1564 <printf+0x128>
    1554:	00c12703          	lw	a4,12(sp)
    1558:	00072503          	lw	a0,0(a4)
    155c:	00470693          	addi	a3,a4,4
    1560:	00d12623          	sw	a3,12(sp)
    1564:	000780e7          	jalr	a5
    1568:	f99ff06f          	j	1500 <printf+0xc4>
    156c:	c384a783          	lw	a5,-968(s1)
    1570:	000780e7          	jalr	a5
    1574:	f91ff06f          	j	1504 <printf+0xc8>

00001578 <__mulsi3>:
    1578:	00050793          	mv	a5,a0
    157c:	00000513          	li	a0,0
    1580:	00079463          	bnez	a5,1588 <__mulsi3+0x10>
    1584:	00008067          	ret
    1588:	01f79693          	slli	a3,a5,0x1f
    158c:	41f6d713          	srai	a4,a3,0x1f
    1590:	00b77733          	and	a4,a4,a1
    1594:	00e50533          	add	a0,a0,a4
    1598:	0017d793          	srli	a5,a5,0x1
    159c:	00159593          	slli	a1,a1,0x1
    15a0:	fe1ff06f          	j	1580 <__mulsi3+0x8>

000015a4 <fat_list_insert_last>:
    15a4:	00452783          	lw	a5,4(a0)
    15a8:	04079263          	bnez	a5,15ec <fat_list_insert_last+0x48>
    15ac:	00052783          	lw	a5,0(a0)
    15b0:	00079c63          	bnez	a5,15c8 <fat_list_insert_last+0x24>
    15b4:	00b52023          	sw	a1,0(a0)
    15b8:	00b52223          	sw	a1,4(a0)
    15bc:	0005a023          	sw	zero,0(a1)
    15c0:	0005a223          	sw	zero,4(a1)
    15c4:	00008067          	ret
    15c8:	0007a703          	lw	a4,0(a5)
    15cc:	00f5a223          	sw	a5,4(a1)
    15d0:	00e5a023          	sw	a4,0(a1)
    15d4:	00071863          	bnez	a4,15e4 <fat_list_insert_last+0x40>
    15d8:	00b52023          	sw	a1,0(a0)
    15dc:	00b7a023          	sw	a1,0(a5)
    15e0:	00008067          	ret
    15e4:	00b72223          	sw	a1,4(a4)
    15e8:	ff5ff06f          	j	15dc <fat_list_insert_last+0x38>
    15ec:	0047a703          	lw	a4,4(a5)
    15f0:	00f5a023          	sw	a5,0(a1)
    15f4:	00e5a223          	sw	a4,4(a1)
    15f8:	00071863          	bnez	a4,1608 <fat_list_insert_last+0x64>
    15fc:	00b52223          	sw	a1,4(a0)
    1600:	00b7a223          	sw	a1,4(a5)
    1604:	00008067          	ret
    1608:	00b72023          	sw	a1,0(a4)
    160c:	ff5ff06f          	j	1600 <fat_list_insert_last+0x5c>

00001610 <FileString_StrCmpNoCase>:
    1610:	00050e93          	mv	t4,a0
    1614:	00000793          	li	a5,0
    1618:	01900e13          	li	t3,25
    161c:	00c79663          	bne	a5,a2,1628 <FileString_StrCmpNoCase+0x18>
    1620:	00000513          	li	a0,0
    1624:	00008067          	ret
    1628:	00fe8733          	add	a4,t4,a5
    162c:	00074803          	lbu	a6,0(a4)
    1630:	00f58733          	add	a4,a1,a5
    1634:	00074883          	lbu	a7,0(a4)
    1638:	fbf80713          	addi	a4,a6,-65
    163c:	0ff77713          	zext.b	a4,a4
    1640:	00080693          	mv	a3,a6
    1644:	00ee6663          	bltu	t3,a4,1650 <FileString_StrCmpNoCase+0x40>
    1648:	02080693          	addi	a3,a6,32
    164c:	0ff6f693          	zext.b	a3,a3
    1650:	fbf88313          	addi	t1,a7,-65
    1654:	0ff37313          	zext.b	t1,t1
    1658:	00088713          	mv	a4,a7
    165c:	006e6663          	bltu	t3,t1,1668 <FileString_StrCmpNoCase+0x58>
    1660:	02088713          	addi	a4,a7,32
    1664:	0ff77713          	zext.b	a4,a4
    1668:	40e68533          	sub	a0,a3,a4
    166c:	00e69863          	bne	a3,a4,167c <FileString_StrCmpNoCase+0x6c>
    1670:	00178793          	addi	a5,a5,1
    1674:	00088463          	beqz	a7,167c <FileString_StrCmpNoCase+0x6c>
    1678:	fa0812e3          	bnez	a6,161c <FileString_StrCmpNoCase+0xc>
    167c:	00008067          	ret

00001680 <FileString_GetExtension>:
    1680:	00050793          	mv	a5,a0
    1684:	fff00713          	li	a4,-1
    1688:	02e00613          	li	a2,46
    168c:	0007c683          	lbu	a3,0(a5)
    1690:	00069663          	bnez	a3,169c <FileString_GetExtension+0x1c>
    1694:	00070513          	mv	a0,a4
    1698:	00008067          	ret
    169c:	00c69463          	bne	a3,a2,16a4 <FileString_GetExtension+0x24>
    16a0:	40a78733          	sub	a4,a5,a0
    16a4:	00178793          	addi	a5,a5,1
    16a8:	fe5ff06f          	j	168c <FileString_GetExtension+0xc>

000016ac <fatfs_fat_writeback>:
    16ac:	00059e63          	bnez	a1,16c8 <fatfs_fat_writeback+0x1c>
    16b0:	00000513          	li	a0,0
    16b4:	00008067          	ret
    16b8:	00000513          	li	a0,0
    16bc:	01c12083          	lw	ra,28(sp)
    16c0:	02010113          	addi	sp,sp,32
    16c4:	00008067          	ret
    16c8:	2045a783          	lw	a5,516(a1)
    16cc:	04078e63          	beqz	a5,1728 <fatfs_fat_writeback+0x7c>
    16d0:	03852683          	lw	a3,56(a0)
    16d4:	00050793          	mv	a5,a0
    16d8:	04068663          	beqz	a3,1724 <fatfs_fat_writeback+0x78>
    16dc:	0147a703          	lw	a4,20(a5)
    16e0:	2005a503          	lw	a0,512(a1)
    16e4:	0207a803          	lw	a6,32(a5)
    16e8:	00100613          	li	a2,1
    16ec:	fe010113          	addi	sp,sp,-32
    16f0:	40e607b3          	sub	a5,a2,a4
    16f4:	00112e23          	sw	ra,28(sp)
    16f8:	00a787b3          	add	a5,a5,a0
    16fc:	00f87663          	bgeu	a6,a5,1708 <fatfs_fat_writeback+0x5c>
    1700:	01070733          	add	a4,a4,a6
    1704:	40a70633          	sub	a2,a4,a0
    1708:	00b12623          	sw	a1,12(sp)
    170c:	000680e7          	jalr	a3
    1710:	fa0504e3          	beqz	a0,16b8 <fatfs_fat_writeback+0xc>
    1714:	00c12583          	lw	a1,12(sp)
    1718:	00100513          	li	a0,1
    171c:	2005a223          	sw	zero,516(a1)
    1720:	f9dff06f          	j	16bc <fatfs_fat_writeback+0x10>
    1724:	2005a223          	sw	zero,516(a1)
    1728:	00100513          	li	a0,1
    172c:	00008067          	ret

00001730 <fatfs_fat_read_sector>:
    1730:	fe010113          	addi	sp,sp,-32
    1734:	01212823          	sw	s2,16(sp)
    1738:	25452903          	lw	s2,596(a0)
    173c:	00812c23          	sw	s0,24(sp)
    1740:	00112e23          	sw	ra,28(sp)
    1744:	00912a23          	sw	s1,20(sp)
    1748:	01312623          	sw	s3,12(sp)
    174c:	00000413          	li	s0,0
    1750:	04091463          	bnez	s2,1798 <fatfs_fat_read_sector+0x68>
    1754:	25452783          	lw	a5,596(a0)
    1758:	00058493          	mv	s1,a1
    175c:	00050993          	mv	s3,a0
    1760:	20f42623          	sw	a5,524(s0)
    1764:	20442783          	lw	a5,516(s0)
    1768:	24852a23          	sw	s0,596(a0)
    176c:	08079863          	bnez	a5,17fc <fatfs_fat_read_sector+0xcc>
    1770:	0349a783          	lw	a5,52(s3)
    1774:	20942023          	sw	s1,512(s0)
    1778:	00100613          	li	a2,1
    177c:	00040593          	mv	a1,s0
    1780:	00048513          	mv	a0,s1
    1784:	000780e7          	jalr	a5
    1788:	08051463          	bnez	a0,1810 <fatfs_fat_read_sector+0xe0>
    178c:	fff00793          	li	a5,-1
    1790:	20f42023          	sw	a5,512(s0)
    1794:	0480006f          	j	17dc <fatfs_fat_read_sector+0xac>
    1798:	20092783          	lw	a5,512(s2)
    179c:	00f5e663          	bltu	a1,a5,17a8 <fatfs_fat_read_sector+0x78>
    17a0:	00178713          	addi	a4,a5,1
    17a4:	02e5e463          	bltu	a1,a4,17cc <fatfs_fat_read_sector+0x9c>
    17a8:	20c92783          	lw	a5,524(s2)
    17ac:	00079663          	bnez	a5,17b8 <fatfs_fat_read_sector+0x88>
    17b0:	00040a63          	beqz	s0,17c4 <fatfs_fat_read_sector+0x94>
    17b4:	20042623          	sw	zero,524(s0)
    17b8:	00090413          	mv	s0,s2
    17bc:	20c92903          	lw	s2,524(s2)
    17c0:	f91ff06f          	j	1750 <fatfs_fat_read_sector+0x20>
    17c4:	24052a23          	sw	zero,596(a0)
    17c8:	ff1ff06f          	j	17b8 <fatfs_fat_read_sector+0x88>
    17cc:	40f585b3          	sub	a1,a1,a5
    17d0:	00959593          	slli	a1,a1,0x9
    17d4:	00b905b3          	add	a1,s2,a1
    17d8:	20b92423          	sw	a1,520(s2)
    17dc:	01c12083          	lw	ra,28(sp)
    17e0:	01812403          	lw	s0,24(sp)
    17e4:	01412483          	lw	s1,20(sp)
    17e8:	00c12983          	lw	s3,12(sp)
    17ec:	00090513          	mv	a0,s2
    17f0:	01012903          	lw	s2,16(sp)
    17f4:	02010113          	addi	sp,sp,32
    17f8:	00008067          	ret
    17fc:	00040593          	mv	a1,s0
    1800:	00000097          	auipc	ra,0x0
    1804:	eac080e7          	jalr	-340(ra) # 16ac <fatfs_fat_writeback>
    1808:	f60514e3          	bnez	a0,1770 <fatfs_fat_read_sector+0x40>
    180c:	fd1ff06f          	j	17dc <fatfs_fat_read_sector+0xac>
    1810:	20842423          	sw	s0,520(s0)
    1814:	00040913          	mv	s2,s0
    1818:	fc5ff06f          	j	17dc <fatfs_fat_read_sector+0xac>

0000181c <_allocate_file>:
    181c:	000057b7          	lui	a5,0x5
    1820:	c3c78793          	addi	a5,a5,-964 # 4c3c <_free_file_list>
    1824:	0007a583          	lw	a1,0(a5)
    1828:	06058263          	beqz	a1,188c <_allocate_file+0x70>
    182c:	0005a703          	lw	a4,0(a1)
    1830:	fe010113          	addi	sp,sp,-32
    1834:	00112e23          	sw	ra,28(sp)
    1838:	0045a683          	lw	a3,4(a1)
    183c:	04071063          	bnez	a4,187c <_allocate_file+0x60>
    1840:	00d7a023          	sw	a3,0(a5)
    1844:	0045a683          	lw	a3,4(a1)
    1848:	02069e63          	bnez	a3,1884 <_allocate_file+0x68>
    184c:	00e7a223          	sw	a4,4(a5)
    1850:	00005537          	lui	a0,0x5
    1854:	c4450513          	addi	a0,a0,-956 # 4c44 <_open_file_list>
    1858:	00b12623          	sw	a1,12(sp)
    185c:	00000097          	auipc	ra,0x0
    1860:	d48080e7          	jalr	-696(ra) # 15a4 <fat_list_insert_last>
    1864:	00c12583          	lw	a1,12(sp)
    1868:	01c12083          	lw	ra,28(sp)
    186c:	bc458593          	addi	a1,a1,-1084
    1870:	00058513          	mv	a0,a1
    1874:	02010113          	addi	sp,sp,32
    1878:	00008067          	ret
    187c:	00d72223          	sw	a3,4(a4)
    1880:	fc5ff06f          	j	1844 <_allocate_file+0x28>
    1884:	00e6a023          	sw	a4,0(a3)
    1888:	fc9ff06f          	j	1850 <_allocate_file+0x34>
    188c:	00058513          	mv	a0,a1
    1890:	00008067          	ret

00001894 <_free_file>:
    1894:	43c52783          	lw	a5,1084(a0)
    1898:	44052703          	lw	a4,1088(a0)
    189c:	43c50593          	addi	a1,a0,1084
    18a0:	02079663          	bnez	a5,18cc <_free_file+0x38>
    18a4:	000056b7          	lui	a3,0x5
    18a8:	c4e6a223          	sw	a4,-956(a3) # 4c44 <_open_file_list>
    18ac:	44052703          	lw	a4,1088(a0)
    18b0:	02071263          	bnez	a4,18d4 <_free_file+0x40>
    18b4:	00005737          	lui	a4,0x5
    18b8:	c4f72423          	sw	a5,-952(a4) # 4c48 <_open_file_list+0x4>
    18bc:	00005537          	lui	a0,0x5
    18c0:	c3c50513          	addi	a0,a0,-964 # 4c3c <_free_file_list>
    18c4:	00000317          	auipc	t1,0x0
    18c8:	ce030067          	jr	-800(t1) # 15a4 <fat_list_insert_last>
    18cc:	00e7a223          	sw	a4,4(a5)
    18d0:	fddff06f          	j	18ac <_free_file+0x18>
    18d4:	00f72023          	sw	a5,0(a4)
    18d8:	fe5ff06f          	j	18bc <_free_file+0x28>

000018dc <fatfs_lba_of_cluster>:
    18dc:	ff010113          	addi	sp,sp,-16
    18e0:	00812423          	sw	s0,8(sp)
    18e4:	00112623          	sw	ra,12(sp)
    18e8:	00050413          	mv	s0,a0
    18ec:	ffe58513          	addi	a0,a1,-2
    18f0:	00044583          	lbu	a1,0(s0)
    18f4:	00000097          	auipc	ra,0x0
    18f8:	c84080e7          	jalr	-892(ra) # 1578 <__mulsi3>
    18fc:	00442783          	lw	a5,4(s0)
    1900:	00f50533          	add	a0,a0,a5
    1904:	03042783          	lw	a5,48(s0)
    1908:	00079863          	bnez	a5,1918 <fatfs_lba_of_cluster+0x3c>
    190c:	02845783          	lhu	a5,40(s0)
    1910:	4047d793          	srai	a5,a5,0x4
    1914:	00f50533          	add	a0,a0,a5
    1918:	00c12083          	lw	ra,12(sp)
    191c:	00812403          	lw	s0,8(sp)
    1920:	01010113          	addi	sp,sp,16
    1924:	00008067          	ret

00001928 <fatfs_sector_read>:
    1928:	03452783          	lw	a5,52(a0)
    192c:	00058713          	mv	a4,a1
    1930:	00070513          	mv	a0,a4
    1934:	00060593          	mv	a1,a2
    1938:	00068613          	mv	a2,a3
    193c:	00078067          	jr	a5

00001940 <fatfs_sector_write>:
    1940:	03852783          	lw	a5,56(a0)
    1944:	00058713          	mv	a4,a1
    1948:	00070513          	mv	a0,a4
    194c:	00060593          	mv	a1,a2
    1950:	00068613          	mv	a2,a3
    1954:	00078067          	jr	a5

00001958 <fatfs_write_sector>:
    1958:	03852703          	lw	a4,56(a0)
    195c:	0a070463          	beqz	a4,1a04 <fatfs_write_sector+0xac>
    1960:	03052883          	lw	a7,48(a0)
    1964:	00050793          	mv	a5,a0
    1968:	0115e833          	or	a6,a1,a7
    196c:	02081e63          	bnez	a6,19a8 <fatfs_write_sector+0x50>
    1970:	01052583          	lw	a1,16(a0)
    1974:	08b67863          	bgeu	a2,a1,1a04 <fatfs_write_sector+0xac>
    1978:	01c52503          	lw	a0,28(a0)
    197c:	00c7a583          	lw	a1,12(a5)
    1980:	00b50533          	add	a0,a0,a1
    1984:	00c50533          	add	a0,a0,a2
    1988:	00068863          	beqz	a3,1998 <fatfs_write_sector+0x40>
    198c:	00100613          	li	a2,1
    1990:	00068593          	mv	a1,a3
    1994:	00070067          	jr	a4
    1998:	24a7a223          	sw	a0,580(a5)
    199c:	00100613          	li	a2,1
    19a0:	04478593          	addi	a1,a5,68
    19a4:	ff1ff06f          	j	1994 <fatfs_write_sector+0x3c>
    19a8:	fe010113          	addi	sp,sp,-32
    19ac:	00e12623          	sw	a4,12(sp)
    19b0:	00d12423          	sw	a3,8(sp)
    19b4:	00c12223          	sw	a2,4(sp)
    19b8:	00112e23          	sw	ra,28(sp)
    19bc:	00a12023          	sw	a0,0(sp)
    19c0:	00000097          	auipc	ra,0x0
    19c4:	f1c080e7          	jalr	-228(ra) # 18dc <fatfs_lba_of_cluster>
    19c8:	00412603          	lw	a2,4(sp)
    19cc:	00812683          	lw	a3,8(sp)
    19d0:	00012783          	lw	a5,0(sp)
    19d4:	00c12703          	lw	a4,12(sp)
    19d8:	00a60533          	add	a0,a2,a0
    19dc:	00068c63          	beqz	a3,19f4 <fatfs_write_sector+0x9c>
    19e0:	00100613          	li	a2,1
    19e4:	00068593          	mv	a1,a3
    19e8:	01c12083          	lw	ra,28(sp)
    19ec:	02010113          	addi	sp,sp,32
    19f0:	fa5ff06f          	j	1994 <fatfs_write_sector+0x3c>
    19f4:	24a7a223          	sw	a0,580(a5)
    19f8:	00100613          	li	a2,1
    19fc:	04478593          	addi	a1,a5,68
    1a00:	fe9ff06f          	j	19e8 <fatfs_write_sector+0x90>
    1a04:	00000513          	li	a0,0
    1a08:	00008067          	ret

00001a0c <fl_init>:
    1a0c:	ff010113          	addi	sp,sp,-16
    1a10:	00005537          	lui	a0,0x5
    1a14:	000057b7          	lui	a5,0x5
    1a18:	0000b5b7          	lui	a1,0xb
    1a1c:	00112623          	sw	ra,12(sp)
    1a20:	c3c50513          	addi	a0,a0,-964 # 4c3c <_free_file_list>
    1a24:	c4478793          	addi	a5,a5,-956 # 4c44 <_open_file_list>
    1a28:	67858593          	addi	a1,a1,1656 # b678 <_files+0x43c>
    1a2c:	00052223          	sw	zero,4(a0)
    1a30:	00052023          	sw	zero,0(a0)
    1a34:	0007a223          	sw	zero,4(a5)
    1a38:	0007a023          	sw	zero,0(a5)
    1a3c:	00000097          	auipc	ra,0x0
    1a40:	b68080e7          	jalr	-1176(ra) # 15a4 <fat_list_insert_last>
    1a44:	000057b7          	lui	a5,0x5
    1a48:	0000c5b7          	lui	a1,0xc
    1a4c:	c3c78513          	addi	a0,a5,-964 # 4c3c <_free_file_list>
    1a50:	abc58593          	addi	a1,a1,-1348 # babc <_files+0x880>
    1a54:	00000097          	auipc	ra,0x0
    1a58:	b50080e7          	jalr	-1200(ra) # 15a4 <fat_list_insert_last>
    1a5c:	00c12083          	lw	ra,12(sp)
    1a60:	000057b7          	lui	a5,0x5
    1a64:	00100713          	li	a4,1
    1a68:	c4e7a823          	sw	a4,-944(a5) # 4c50 <_filelib_init>
    1a6c:	01010113          	addi	sp,sp,16
    1a70:	00008067          	ret

00001a74 <fl_closedir>:
    1a74:	00000513          	li	a0,0
    1a78:	00008067          	ret

00001a7c <fatfs_lfn_cache_entry>:
    1a7c:	0005c783          	lbu	a5,0(a1)
    1a80:	01300693          	li	a3,19
    1a84:	01f7f793          	andi	a5,a5,31
    1a88:	fff78713          	addi	a4,a5,-1
    1a8c:	0ff77613          	zext.b	a2,a4
    1a90:	0ac6ea63          	bltu	a3,a2,1b44 <fatfs_lfn_cache_entry+0xc8>
    1a94:	10554683          	lbu	a3,261(a0)
    1a98:	00069463          	bnez	a3,1aa0 <fatfs_lfn_cache_entry+0x24>
    1a9c:	10f502a3          	sb	a5,261(a0)
    1aa0:	00171793          	slli	a5,a4,0x1
    1aa4:	00e787b3          	add	a5,a5,a4
    1aa8:	0015c683          	lbu	a3,1(a1)
    1aac:	00279793          	slli	a5,a5,0x2
    1ab0:	00e787b3          	add	a5,a5,a4
    1ab4:	00f50533          	add	a0,a0,a5
    1ab8:	00d50023          	sb	a3,0(a0)
    1abc:	0035c783          	lbu	a5,3(a1)
    1ac0:	0ff00713          	li	a4,255
    1ac4:	02000693          	li	a3,32
    1ac8:	00f500a3          	sb	a5,1(a0)
    1acc:	0055c783          	lbu	a5,5(a1)
    1ad0:	00f50123          	sb	a5,2(a0)
    1ad4:	0075c783          	lbu	a5,7(a1)
    1ad8:	00f501a3          	sb	a5,3(a0)
    1adc:	0095c783          	lbu	a5,9(a1)
    1ae0:	00f50223          	sb	a5,4(a0)
    1ae4:	00e5c783          	lbu	a5,14(a1)
    1ae8:	00f502a3          	sb	a5,5(a0)
    1aec:	0105c783          	lbu	a5,16(a1)
    1af0:	00f50323          	sb	a5,6(a0)
    1af4:	0125c783          	lbu	a5,18(a1)
    1af8:	00f503a3          	sb	a5,7(a0)
    1afc:	0145c783          	lbu	a5,20(a1)
    1b00:	00f50423          	sb	a5,8(a0)
    1b04:	0165c783          	lbu	a5,22(a1)
    1b08:	00f504a3          	sb	a5,9(a0)
    1b0c:	0185c783          	lbu	a5,24(a1)
    1b10:	00f50523          	sb	a5,10(a0)
    1b14:	01c5c783          	lbu	a5,28(a1)
    1b18:	00f505a3          	sb	a5,11(a0)
    1b1c:	01e5c783          	lbu	a5,30(a1)
    1b20:	00f50623          	sb	a5,12(a0)
    1b24:	00d00793          	li	a5,13
    1b28:	00054603          	lbu	a2,0(a0)
    1b2c:	00e61463          	bne	a2,a4,1b34 <fatfs_lfn_cache_entry+0xb8>
    1b30:	00d50023          	sb	a3,0(a0)
    1b34:	fff78793          	addi	a5,a5,-1
    1b38:	0ff7f793          	zext.b	a5,a5
    1b3c:	00150513          	addi	a0,a0,1
    1b40:	fe0794e3          	bnez	a5,1b28 <fatfs_lfn_cache_entry+0xac>
    1b44:	00008067          	ret

00001b48 <fatfs_lfn_cache_get>:
    1b48:	10554703          	lbu	a4,261(a0)
    1b4c:	01400793          	li	a5,20
    1b50:	00f71663          	bne	a4,a5,1b5c <fatfs_lfn_cache_get+0x14>
    1b54:	10050223          	sb	zero,260(a0)
    1b58:	00008067          	ret
    1b5c:	02070063          	beqz	a4,1b7c <fatfs_lfn_cache_get+0x34>
    1b60:	00171793          	slli	a5,a4,0x1
    1b64:	00e787b3          	add	a5,a5,a4
    1b68:	00279793          	slli	a5,a5,0x2
    1b6c:	00e787b3          	add	a5,a5,a4
    1b70:	00f507b3          	add	a5,a0,a5
    1b74:	00078023          	sb	zero,0(a5)
    1b78:	00008067          	ret
    1b7c:	00050023          	sb	zero,0(a0)
    1b80:	00008067          	ret

00001b84 <fatfs_entry_lfn_text>:
    1b84:	00b54503          	lbu	a0,11(a0)
    1b88:	00f57513          	andi	a0,a0,15
    1b8c:	ff150513          	addi	a0,a0,-15
    1b90:	00153513          	seqz	a0,a0
    1b94:	00008067          	ret

00001b98 <fatfs_entry_lfn_invalid>:
    1b98:	00054783          	lbu	a5,0(a0)
    1b9c:	f1b78713          	addi	a4,a5,-229
    1ba0:	02070263          	beqz	a4,1bc4 <fatfs_entry_lfn_invalid+0x2c>
    1ba4:	02078063          	beqz	a5,1bc4 <fatfs_entry_lfn_invalid+0x2c>
    1ba8:	00b54783          	lbu	a5,11(a0)
    1bac:	00800713          	li	a4,8
    1bb0:	00100513          	li	a0,1
    1bb4:	00e78a63          	beq	a5,a4,1bc8 <fatfs_entry_lfn_invalid+0x30>
    1bb8:	0067f793          	andi	a5,a5,6
    1bbc:	00f03533          	snez	a0,a5
    1bc0:	00008067          	ret
    1bc4:	00100513          	li	a0,1
    1bc8:	00008067          	ret

00001bcc <fatfs_entry_lfn_exists>:
    1bcc:	00b5c783          	lbu	a5,11(a1)
    1bd0:	00f00713          	li	a4,15
    1bd4:	04e78063          	beq	a5,a4,1c14 <fatfs_entry_lfn_exists+0x48>
    1bd8:	0005c683          	lbu	a3,0(a1)
    1bdc:	f1b68713          	addi	a4,a3,-229
    1be0:	00e03733          	snez	a4,a4
    1be4:	00d036b3          	snez	a3,a3
    1be8:	00d77733          	and	a4,a4,a3
    1bec:	02070463          	beqz	a4,1c14 <fatfs_entry_lfn_exists+0x48>
    1bf0:	ff878713          	addi	a4,a5,-8
    1bf4:	02070063          	beqz	a4,1c14 <fatfs_entry_lfn_exists+0x48>
    1bf8:	0067f713          	andi	a4,a5,6
    1bfc:	00000793          	li	a5,0
    1c00:	00071663          	bnez	a4,1c0c <fatfs_entry_lfn_exists+0x40>
    1c04:	10554783          	lbu	a5,261(a0)
    1c08:	00f037b3          	snez	a5,a5
    1c0c:	00078513          	mv	a0,a5
    1c10:	00008067          	ret
    1c14:	00000793          	li	a5,0
    1c18:	ff5ff06f          	j	1c0c <fatfs_entry_lfn_exists+0x40>

00001c1c <fatfs_entry_sfn_only>:
    1c1c:	00b54783          	lbu	a5,11(a0)
    1c20:	00f00713          	li	a4,15
    1c24:	02e78863          	beq	a5,a4,1c54 <fatfs_entry_sfn_only+0x38>
    1c28:	00054683          	lbu	a3,0(a0)
    1c2c:	f1b68713          	addi	a4,a3,-229
    1c30:	00e03733          	snez	a4,a4
    1c34:	00d036b3          	snez	a3,a3
    1c38:	00d77733          	and	a4,a4,a3
    1c3c:	00070c63          	beqz	a4,1c54 <fatfs_entry_sfn_only+0x38>
    1c40:	ff878713          	addi	a4,a5,-8
    1c44:	00070863          	beqz	a4,1c54 <fatfs_entry_sfn_only+0x38>
    1c48:	0067f513          	andi	a0,a5,6
    1c4c:	00153513          	seqz	a0,a0
    1c50:	00008067          	ret
    1c54:	00000513          	li	a0,0
    1c58:	00008067          	ret

00001c5c <fatfs_entry_is_dir>:
    1c5c:	00b54503          	lbu	a0,11(a0)
    1c60:	00455513          	srli	a0,a0,0x4
    1c64:	00157513          	andi	a0,a0,1
    1c68:	00008067          	ret

00001c6c <fatfs_lfn_entries_required>:
    1c6c:	ff010113          	addi	sp,sp,-16
    1c70:	00112623          	sw	ra,12(sp)
    1c74:	fffff097          	auipc	ra,0xfffff
    1c78:	1f4080e7          	jalr	500(ra) # e68 <strlen>
    1c7c:	00050a63          	beqz	a0,1c90 <fatfs_lfn_entries_required+0x24>
    1c80:	00d00593          	li	a1,13
    1c84:	00c50513          	addi	a0,a0,12
    1c88:	fffff097          	auipc	ra,0xfffff
    1c8c:	0ec080e7          	jalr	236(ra) # d74 <__divsi3>
    1c90:	00c12083          	lw	ra,12(sp)
    1c94:	01010113          	addi	sp,sp,16
    1c98:	00008067          	ret

00001c9c <fatfs_filename_to_lfn>:
    1c9c:	f9010113          	addi	sp,sp,-112
    1ca0:	06812423          	sw	s0,104(sp)
    1ca4:	00058413          	mv	s0,a1
    1ca8:	000055b7          	lui	a1,0x5
    1cac:	bf058593          	addi	a1,a1,-1040 # 4bf0 <font+0x1e0>
    1cb0:	06912223          	sw	s1,100(sp)
    1cb4:	05312e23          	sw	s3,92(sp)
    1cb8:	00060493          	mv	s1,a2
    1cbc:	00050993          	mv	s3,a0
    1cc0:	03400613          	li	a2,52
    1cc4:	01c10513          	addi	a0,sp,28
    1cc8:	00d12623          	sw	a3,12(sp)
    1ccc:	06112623          	sw	ra,108(sp)
    1cd0:	07212023          	sw	s2,96(sp)
    1cd4:	05412c23          	sw	s4,88(sp)
    1cd8:	fffff097          	auipc	ra,0xfffff
    1cdc:	16c080e7          	jalr	364(ra) # e44 <memcpy>
    1ce0:	00098513          	mv	a0,s3
    1ce4:	fffff097          	auipc	ra,0xfffff
    1ce8:	184080e7          	jalr	388(ra) # e68 <strlen>
    1cec:	00050913          	mv	s2,a0
    1cf0:	00098513          	mv	a0,s3
    1cf4:	00000097          	auipc	ra,0x0
    1cf8:	f78080e7          	jalr	-136(ra) # 1c6c <fatfs_lfn_entries_required>
    1cfc:	00050a13          	mv	s4,a0
    1d00:	02000613          	li	a2,32
    1d04:	00000593          	li	a1,0
    1d08:	00040513          	mv	a0,s0
    1d0c:	fffff097          	auipc	ra,0xfffff
    1d10:	11c080e7          	jalr	284(ra) # e28 <memset>
    1d14:	fffa0713          	addi	a4,s4,-1 # 3fff <fl_fread+0x117>
    1d18:	00c12683          	lw	a3,12(sp)
    1d1c:	00148793          	addi	a5,s1,1
    1d20:	00971463          	bne	a4,s1,1d28 <fatfs_filename_to_lfn+0x8c>
    1d24:	0407e793          	ori	a5,a5,64
    1d28:	00149613          	slli	a2,s1,0x1
    1d2c:	00960633          	add	a2,a2,s1
    1d30:	00f40023          	sb	a5,0(s0)
    1d34:	00261613          	slli	a2,a2,0x2
    1d38:	00f00793          	li	a5,15
    1d3c:	00f405a3          	sb	a5,11(s0)
    1d40:	00d406a3          	sb	a3,13(s0)
    1d44:	01c10793          	addi	a5,sp,28
    1d48:	00960633          	add	a2,a2,s1
    1d4c:	fff00693          	li	a3,-1
    1d50:	0007a703          	lw	a4,0(a5)
    1d54:	00e40733          	add	a4,s0,a4
    1d58:	05265063          	bge	a2,s2,1d98 <fatfs_filename_to_lfn+0xfc>
    1d5c:	00c985b3          	add	a1,s3,a2
    1d60:	0005c583          	lbu	a1,0(a1)
    1d64:	00b70023          	sb	a1,0(a4)
    1d68:	00478793          	addi	a5,a5,4
    1d6c:	05010713          	addi	a4,sp,80
    1d70:	00160613          	addi	a2,a2,1
    1d74:	fce79ee3          	bne	a5,a4,1d50 <fatfs_filename_to_lfn+0xb4>
    1d78:	06c12083          	lw	ra,108(sp)
    1d7c:	06812403          	lw	s0,104(sp)
    1d80:	06412483          	lw	s1,100(sp)
    1d84:	06012903          	lw	s2,96(sp)
    1d88:	05c12983          	lw	s3,92(sp)
    1d8c:	05812a03          	lw	s4,88(sp)
    1d90:	07010113          	addi	sp,sp,112
    1d94:	00008067          	ret
    1d98:	01261663          	bne	a2,s2,1da4 <fatfs_filename_to_lfn+0x108>
    1d9c:	00070023          	sb	zero,0(a4)
    1da0:	fc9ff06f          	j	1d68 <fatfs_filename_to_lfn+0xcc>
    1da4:	00d70023          	sb	a3,0(a4)
    1da8:	00d700a3          	sb	a3,1(a4)
    1dac:	fbdff06f          	j	1d68 <fatfs_filename_to_lfn+0xcc>

00001db0 <fatfs_sfn_create_entry>:
    1db0:	00000793          	li	a5,0
    1db4:	00b00813          	li	a6,11
    1db8:	00f508b3          	add	a7,a0,a5
    1dbc:	0008c303          	lbu	t1,0(a7)
    1dc0:	00f688b3          	add	a7,a3,a5
    1dc4:	00178793          	addi	a5,a5,1
    1dc8:	00688023          	sb	t1,0(a7)
    1dcc:	ff0796e3          	bne	a5,a6,1db8 <fatfs_sfn_create_entry+0x8>
    1dd0:	00e03733          	snez	a4,a4
    1dd4:	40e00733          	neg	a4,a4
    1dd8:	02000793          	li	a5,32
    1ddc:	ff077713          	andi	a4,a4,-16
    1de0:	00f70733          	add	a4,a4,a5
    1de4:	00f68823          	sb	a5,16(a3)
    1de8:	00f68923          	sb	a5,18(a3)
    1dec:	00f68c23          	sb	a5,24(a3)
    1df0:	01065793          	srli	a5,a2,0x10
    1df4:	00f68a23          	sb	a5,20(a3)
    1df8:	01865793          	srli	a5,a2,0x18
    1dfc:	00f68aa3          	sb	a5,21(a3)
    1e00:	0085d793          	srli	a5,a1,0x8
    1e04:	00c68d23          	sb	a2,26(a3)
    1e08:	00b68e23          	sb	a1,28(a3)
    1e0c:	00865613          	srli	a2,a2,0x8
    1e10:	00f68ea3          	sb	a5,29(a3)
    1e14:	0105d793          	srli	a5,a1,0x10
    1e18:	0185d593          	srli	a1,a1,0x18
    1e1c:	000686a3          	sb	zero,13(a3)
    1e20:	00068723          	sb	zero,14(a3)
    1e24:	000687a3          	sb	zero,15(a3)
    1e28:	000688a3          	sb	zero,17(a3)
    1e2c:	000689a3          	sb	zero,19(a3)
    1e30:	00068b23          	sb	zero,22(a3)
    1e34:	00068ba3          	sb	zero,23(a3)
    1e38:	00068ca3          	sb	zero,25(a3)
    1e3c:	00e685a3          	sb	a4,11(a3)
    1e40:	00068623          	sb	zero,12(a3)
    1e44:	00c68da3          	sb	a2,27(a3)
    1e48:	00f68f23          	sb	a5,30(a3)
    1e4c:	00b68fa3          	sb	a1,31(a3)
    1e50:	00008067          	ret

00001e54 <fatfs_lfn_create_sfn>:
    1e54:	fd010113          	addi	sp,sp,-48
    1e58:	02912223          	sw	s1,36(sp)
    1e5c:	00050493          	mv	s1,a0
    1e60:	00058513          	mv	a0,a1
    1e64:	02812423          	sw	s0,40(sp)
    1e68:	01312e23          	sw	s3,28(sp)
    1e6c:	00058413          	mv	s0,a1
    1e70:	02112623          	sw	ra,44(sp)
    1e74:	03212023          	sw	s2,32(sp)
    1e78:	fffff097          	auipc	ra,0xfffff
    1e7c:	ff0080e7          	jalr	-16(ra) # e68 <strlen>
    1e80:	00044783          	lbu	a5,0(s0)
    1e84:	02e00993          	li	s3,46
    1e88:	15378063          	beq	a5,s3,1fc8 <fatfs_lfn_create_sfn+0x174>
    1e8c:	00b00613          	li	a2,11
    1e90:	02000593          	li	a1,32
    1e94:	00050913          	mv	s2,a0
    1e98:	00048513          	mv	a0,s1
    1e9c:	fffff097          	auipc	ra,0xfffff
    1ea0:	f8c080e7          	jalr	-116(ra) # e28 <memset>
    1ea4:	00300613          	li	a2,3
    1ea8:	02000593          	li	a1,32
    1eac:	00c10513          	addi	a0,sp,12
    1eb0:	fffff097          	auipc	ra,0xfffff
    1eb4:	f78080e7          	jalr	-136(ra) # e28 <memset>
    1eb8:	fff00793          	li	a5,-1
    1ebc:	00000713          	li	a4,0
    1ec0:	0d274263          	blt	a4,s2,1f84 <fatfs_lfn_create_sfn+0x130>
    1ec4:	fff00713          	li	a4,-1
    1ec8:	0ee78863          	beq	a5,a4,1fb8 <fatfs_lfn_create_sfn+0x164>
    1ecc:	00178713          	addi	a4,a5,1
    1ed0:	00c10693          	addi	a3,sp,12
    1ed4:	00478613          	addi	a2,a5,4
    1ed8:	0ce61263          	bne	a2,a4,1f9c <fatfs_lfn_create_sfn+0x148>
    1edc:	00000613          	li	a2,0
    1ee0:	00000693          	li	a3,0
    1ee4:	01900813          	li	a6,25
    1ee8:	00800893          	li	a7,8
    1eec:	02f6de63          	bge	a3,a5,1f28 <fatfs_lfn_create_sfn+0xd4>
    1ef0:	00d40733          	add	a4,s0,a3
    1ef4:	00074703          	lbu	a4,0(a4)
    1ef8:	fe070513          	addi	a0,a4,-32
    1efc:	0c050263          	beqz	a0,1fc0 <fatfs_lfn_create_sfn+0x16c>
    1f00:	fd270593          	addi	a1,a4,-46
    1f04:	0a058e63          	beqz	a1,1fc0 <fatfs_lfn_create_sfn+0x16c>
    1f08:	f9f70593          	addi	a1,a4,-97
    1f0c:	0ff5f593          	zext.b	a1,a1
    1f10:	00c48333          	add	t1,s1,a2
    1f14:	00160613          	addi	a2,a2,1
    1f18:	00b86463          	bltu	a6,a1,1f20 <fatfs_lfn_create_sfn+0xcc>
    1f1c:	0ff57713          	zext.b	a4,a0
    1f20:	00e30023          	sb	a4,0(t1)
    1f24:	09161e63          	bne	a2,a7,1fc0 <fatfs_lfn_create_sfn+0x16c>
    1f28:	00c10793          	addi	a5,sp,12
    1f2c:	00800693          	li	a3,8
    1f30:	01900513          	li	a0,25
    1f34:	00b00593          	li	a1,11
    1f38:	0007c703          	lbu	a4,0(a5)
    1f3c:	f9f70613          	addi	a2,a4,-97
    1f40:	0ff67613          	zext.b	a2,a2
    1f44:	00c56663          	bltu	a0,a2,1f50 <fatfs_lfn_create_sfn+0xfc>
    1f48:	fe070713          	addi	a4,a4,-32
    1f4c:	0ff77713          	zext.b	a4,a4
    1f50:	00d48633          	add	a2,s1,a3
    1f54:	00e60023          	sb	a4,0(a2)
    1f58:	00168693          	addi	a3,a3,1
    1f5c:	00178793          	addi	a5,a5,1
    1f60:	fcb69ce3          	bne	a3,a1,1f38 <fatfs_lfn_create_sfn+0xe4>
    1f64:	00100513          	li	a0,1
    1f68:	02c12083          	lw	ra,44(sp)
    1f6c:	02812403          	lw	s0,40(sp)
    1f70:	02412483          	lw	s1,36(sp)
    1f74:	02012903          	lw	s2,32(sp)
    1f78:	01c12983          	lw	s3,28(sp)
    1f7c:	03010113          	addi	sp,sp,48
    1f80:	00008067          	ret
    1f84:	00e406b3          	add	a3,s0,a4
    1f88:	0006c683          	lbu	a3,0(a3)
    1f8c:	01369463          	bne	a3,s3,1f94 <fatfs_lfn_create_sfn+0x140>
    1f90:	00070793          	mv	a5,a4
    1f94:	00170713          	addi	a4,a4,1
    1f98:	f29ff06f          	j	1ec0 <fatfs_lfn_create_sfn+0x6c>
    1f9c:	01275863          	bge	a4,s2,1fac <fatfs_lfn_create_sfn+0x158>
    1fa0:	00e405b3          	add	a1,s0,a4
    1fa4:	0005c583          	lbu	a1,0(a1)
    1fa8:	00b68023          	sb	a1,0(a3)
    1fac:	00170713          	addi	a4,a4,1
    1fb0:	00168693          	addi	a3,a3,1
    1fb4:	f25ff06f          	j	1ed8 <fatfs_lfn_create_sfn+0x84>
    1fb8:	00090793          	mv	a5,s2
    1fbc:	f21ff06f          	j	1edc <fatfs_lfn_create_sfn+0x88>
    1fc0:	00168693          	addi	a3,a3,1
    1fc4:	f29ff06f          	j	1eec <fatfs_lfn_create_sfn+0x98>
    1fc8:	00000513          	li	a0,0
    1fcc:	f9dff06f          	j	1f68 <fatfs_lfn_create_sfn+0x114>

00001fd0 <fatfs_lfn_generate_tail>:
    1fd0:	000187b7          	lui	a5,0x18
    1fd4:	69f78793          	addi	a5,a5,1695 # 1869f <__stacktop+0x869f>
    1fd8:	16c7e463          	bltu	a5,a2,2140 <fatfs_lfn_generate_tail+0x170>
    1fdc:	fa010113          	addi	sp,sp,-96
    1fe0:	04812c23          	sw	s0,88(sp)
    1fe4:	04912a23          	sw	s1,84(sp)
    1fe8:	03712e23          	sw	s7,60(sp)
    1fec:	00060413          	mv	s0,a2
    1ff0:	00058b93          	mv	s7,a1
    1ff4:	00c00613          	li	a2,12
    1ff8:	00000593          	li	a1,0
    1ffc:	00050493          	mv	s1,a0
    2000:	00410513          	addi	a0,sp,4
    2004:	04112e23          	sw	ra,92(sp)
    2008:	05312623          	sw	s3,76(sp)
    200c:	05412423          	sw	s4,72(sp)
    2010:	05612023          	sw	s6,64(sp)
    2014:	05212823          	sw	s2,80(sp)
    2018:	05512223          	sw	s5,68(sp)
    201c:	fffff097          	auipc	ra,0xfffff
    2020:	e0c080e7          	jalr	-500(ra) # e28 <memset>
    2024:	000055b7          	lui	a1,0x5
    2028:	07e00793          	li	a5,126
    202c:	01100613          	li	a2,17
    2030:	9c858593          	addi	a1,a1,-1592 # 49c8 <LEDS+0xb8>
    2034:	01c10513          	addi	a0,sp,28
    2038:	01010993          	addi	s3,sp,16
    203c:	00f10223          	sb	a5,4(sp)
    2040:	00098a13          	mv	s4,s3
    2044:	fffff097          	auipc	ra,0xfffff
    2048:	e00080e7          	jalr	-512(ra) # e44 <memcpy>
    204c:	00900b13          	li	s6,9
    2050:	00a00593          	li	a1,10
    2054:	00040513          	mv	a0,s0
    2058:	fffff097          	auipc	ra,0xfffff
    205c:	d6c080e7          	jalr	-660(ra) # dc4 <__umodsi3>
    2060:	03050793          	addi	a5,a0,48
    2064:	00278533          	add	a0,a5,sp
    2068:	fec54783          	lbu	a5,-20(a0)
    206c:	00098913          	mv	s2,s3
    2070:	00040513          	mv	a0,s0
    2074:	00a00593          	li	a1,10
    2078:	00f98023          	sb	a5,0(s3)
    207c:	00040a93          	mv	s5,s0
    2080:	fffff097          	auipc	ra,0xfffff
    2084:	cfc080e7          	jalr	-772(ra) # d7c <__udivsi3>
    2088:	00198993          	addi	s3,s3,1
    208c:	00050413          	mv	s0,a0
    2090:	fd5b60e3          	bltu	s6,s5,2050 <fatfs_lfn_generate_tail+0x80>
    2094:	00098023          	sb	zero,0(s3)
    2098:	00410713          	addi	a4,sp,4
    209c:	00090793          	mv	a5,s2
    20a0:	0947f663          	bgeu	a5,s4,212c <fatfs_lfn_generate_tail+0x15c>
    20a4:	00f10713          	addi	a4,sp,15
    20a8:	00000793          	li	a5,0
    20ac:	00e96663          	bltu	s2,a4,20b8 <fatfs_lfn_generate_tail+0xe8>
    20b0:	41490933          	sub	s2,s2,s4
    20b4:	00190793          	addi	a5,s2,1
    20b8:	03078793          	addi	a5,a5,48
    20bc:	002787b3          	add	a5,a5,sp
    20c0:	000b8593          	mv	a1,s7
    20c4:	fc078aa3          	sb	zero,-43(a5)
    20c8:	00b00613          	li	a2,11
    20cc:	00048513          	mv	a0,s1
    20d0:	fffff097          	auipc	ra,0xfffff
    20d4:	d74080e7          	jalr	-652(ra) # e44 <memcpy>
    20d8:	00410513          	addi	a0,sp,4
    20dc:	fffff097          	auipc	ra,0xfffff
    20e0:	d8c080e7          	jalr	-628(ra) # e68 <strlen>
    20e4:	40a484b3          	sub	s1,s1,a0
    20e8:	00050613          	mv	a2,a0
    20ec:	00410593          	addi	a1,sp,4
    20f0:	00848513          	addi	a0,s1,8
    20f4:	fffff097          	auipc	ra,0xfffff
    20f8:	d50080e7          	jalr	-688(ra) # e44 <memcpy>
    20fc:	05c12083          	lw	ra,92(sp)
    2100:	05812403          	lw	s0,88(sp)
    2104:	05412483          	lw	s1,84(sp)
    2108:	05012903          	lw	s2,80(sp)
    210c:	04c12983          	lw	s3,76(sp)
    2110:	04812a03          	lw	s4,72(sp)
    2114:	04412a83          	lw	s5,68(sp)
    2118:	04012b03          	lw	s6,64(sp)
    211c:	03c12b83          	lw	s7,60(sp)
    2120:	00100513          	li	a0,1
    2124:	06010113          	addi	sp,sp,96
    2128:	00008067          	ret
    212c:	0007c683          	lbu	a3,0(a5)
    2130:	00170713          	addi	a4,a4,1
    2134:	fff78793          	addi	a5,a5,-1
    2138:	00d70023          	sb	a3,0(a4)
    213c:	f65ff06f          	j	20a0 <fatfs_lfn_generate_tail+0xd0>
    2140:	00000513          	li	a0,0
    2144:	00008067          	ret

00002148 <fatfs_total_path_levels>:
    2148:	fff00793          	li	a5,-1
    214c:	06050263          	beqz	a0,21b0 <fatfs_total_path_levels+0x68>
    2150:	00054703          	lbu	a4,0(a0)
    2154:	02f00793          	li	a5,47
    2158:	00f71863          	bne	a4,a5,2168 <fatfs_total_path_levels+0x20>
    215c:	00150513          	addi	a0,a0,1
    2160:	00000793          	li	a5,0
    2164:	0400006f          	j	21a4 <fatfs_total_path_levels+0x5c>
    2168:	00154703          	lbu	a4,1(a0)
    216c:	03a00793          	li	a5,58
    2170:	00f70a63          	beq	a4,a5,2184 <fatfs_total_path_levels+0x3c>
    2174:	00254683          	lbu	a3,2(a0)
    2178:	05c00713          	li	a4,92
    217c:	fff00793          	li	a5,-1
    2180:	02e69863          	bne	a3,a4,21b0 <fatfs_total_path_levels+0x68>
    2184:	00350513          	addi	a0,a0,3
    2188:	05c00713          	li	a4,92
    218c:	fd5ff06f          	j	2160 <fatfs_total_path_levels+0x18>
    2190:	00150513          	addi	a0,a0,1
    2194:	00e68663          	beq	a3,a4,21a0 <fatfs_total_path_levels+0x58>
    2198:	00054683          	lbu	a3,0(a0)
    219c:	fe069ae3          	bnez	a3,2190 <fatfs_total_path_levels+0x48>
    21a0:	00178793          	addi	a5,a5,1
    21a4:	00054683          	lbu	a3,0(a0)
    21a8:	fe0698e3          	bnez	a3,2198 <fatfs_total_path_levels+0x50>
    21ac:	fff78793          	addi	a5,a5,-1
    21b0:	00078513          	mv	a0,a5
    21b4:	00008067          	ret

000021b8 <fatfs_get_substring>:
    21b8:	0cd05e63          	blez	a3,2294 <fatfs_get_substring+0xdc>
    21bc:	0c050c63          	beqz	a0,2294 <fatfs_get_substring+0xdc>
    21c0:	fe010113          	addi	sp,sp,-32
    21c4:	00812c23          	sw	s0,24(sp)
    21c8:	00112e23          	sw	ra,28(sp)
    21cc:	00912a23          	sw	s1,20(sp)
    21d0:	00054483          	lbu	s1,0(a0)
    21d4:	02f00793          	li	a5,47
    21d8:	00150413          	addi	s0,a0,1
    21dc:	02f48463          	beq	s1,a5,2204 <fatfs_get_substring+0x4c>
    21e0:	00154703          	lbu	a4,1(a0)
    21e4:	03a00793          	li	a5,58
    21e8:	00f70a63          	beq	a4,a5,21fc <fatfs_get_substring+0x44>
    21ec:	00254803          	lbu	a6,2(a0)
    21f0:	05c00713          	li	a4,92
    21f4:	fff00793          	li	a5,-1
    21f8:	04e81c63          	bne	a6,a4,2250 <fatfs_get_substring+0x98>
    21fc:	00350413          	addi	s0,a0,3
    2200:	05c00493          	li	s1,92
    2204:	00040513          	mv	a0,s0
    2208:	00d12623          	sw	a3,12(sp)
    220c:	00c12423          	sw	a2,8(sp)
    2210:	00b12223          	sw	a1,4(sp)
    2214:	fffff097          	auipc	ra,0xfffff
    2218:	c54080e7          	jalr	-940(ra) # e68 <strlen>
    221c:	00c12683          	lw	a3,12(sp)
    2220:	00412583          	lw	a1,4(sp)
    2224:	00812603          	lw	a2,8(sp)
    2228:	00000713          	li	a4,0
    222c:	00000813          	li	a6,0
    2230:	00000793          	li	a5,0
    2234:	fff68693          	addi	a3,a3,-1
    2238:	00e608b3          	add	a7,a2,a4
    223c:	02a7c663          	blt	a5,a0,2268 <fatfs_get_substring+0xb0>
    2240:	00088023          	sb	zero,0(a7)
    2244:	00064783          	lbu	a5,0(a2)
    2248:	0017b793          	seqz	a5,a5
    224c:	40f007b3          	neg	a5,a5
    2250:	01c12083          	lw	ra,28(sp)
    2254:	01812403          	lw	s0,24(sp)
    2258:	01412483          	lw	s1,20(sp)
    225c:	00078513          	mv	a0,a5
    2260:	02010113          	addi	sp,sp,32
    2264:	00008067          	ret
    2268:	00f40333          	add	t1,s0,a5
    226c:	00034303          	lbu	t1,0(t1)
    2270:	00931863          	bne	t1,s1,2280 <fatfs_get_substring+0xc8>
    2274:	00180813          	addi	a6,a6,1
    2278:	00178793          	addi	a5,a5,1
    227c:	fbdff06f          	j	2238 <fatfs_get_substring+0x80>
    2280:	feb81ce3          	bne	a6,a1,2278 <fatfs_get_substring+0xc0>
    2284:	fed75ae3          	bge	a4,a3,2278 <fatfs_get_substring+0xc0>
    2288:	00170713          	addi	a4,a4,1
    228c:	00688023          	sb	t1,0(a7)
    2290:	fe9ff06f          	j	2278 <fatfs_get_substring+0xc0>
    2294:	fff00793          	li	a5,-1
    2298:	00078513          	mv	a0,a5
    229c:	00008067          	ret

000022a0 <fatfs_split_path>:
    22a0:	fd010113          	addi	sp,sp,-48
    22a4:	02912223          	sw	s1,36(sp)
    22a8:	03212023          	sw	s2,32(sp)
    22ac:	01312e23          	sw	s3,28(sp)
    22b0:	01412c23          	sw	s4,24(sp)
    22b4:	02112623          	sw	ra,44(sp)
    22b8:	02812423          	sw	s0,40(sp)
    22bc:	01512a23          	sw	s5,20(sp)
    22c0:	00050993          	mv	s3,a0
    22c4:	00058493          	mv	s1,a1
    22c8:	00060913          	mv	s2,a2
    22cc:	00068a13          	mv	s4,a3
    22d0:	00e12623          	sw	a4,12(sp)
    22d4:	00000097          	auipc	ra,0x0
    22d8:	e74080e7          	jalr	-396(ra) # 2148 <fatfs_total_path_levels>
    22dc:	fff00793          	li	a5,-1
    22e0:	02f51863          	bne	a0,a5,2310 <fatfs_split_path+0x70>
    22e4:	fff00413          	li	s0,-1
    22e8:	02c12083          	lw	ra,44(sp)
    22ec:	00040513          	mv	a0,s0
    22f0:	02812403          	lw	s0,40(sp)
    22f4:	02412483          	lw	s1,36(sp)
    22f8:	02012903          	lw	s2,32(sp)
    22fc:	01c12983          	lw	s3,28(sp)
    2300:	01812a03          	lw	s4,24(sp)
    2304:	01412a83          	lw	s5,20(sp)
    2308:	03010113          	addi	sp,sp,48
    230c:	00008067          	ret
    2310:	00c12683          	lw	a3,12(sp)
    2314:	00050593          	mv	a1,a0
    2318:	00a12623          	sw	a0,12(sp)
    231c:	000a0613          	mv	a2,s4
    2320:	00098513          	mv	a0,s3
    2324:	00000097          	auipc	ra,0x0
    2328:	e94080e7          	jalr	-364(ra) # 21b8 <fatfs_get_substring>
    232c:	00050413          	mv	s0,a0
    2330:	fa051ae3          	bnez	a0,22e4 <fatfs_split_path+0x44>
    2334:	00c12583          	lw	a1,12(sp)
    2338:	00059663          	bnez	a1,2344 <fatfs_split_path+0xa4>
    233c:	00048023          	sb	zero,0(s1)
    2340:	fa9ff06f          	j	22e8 <fatfs_split_path+0x48>
    2344:	00098513          	mv	a0,s3
    2348:	fffff097          	auipc	ra,0xfffff
    234c:	b20080e7          	jalr	-1248(ra) # e68 <strlen>
    2350:	00050a93          	mv	s5,a0
    2354:	000a0513          	mv	a0,s4
    2358:	fffff097          	auipc	ra,0xfffff
    235c:	b10080e7          	jalr	-1264(ra) # e68 <strlen>
    2360:	40aa8633          	sub	a2,s5,a0
    2364:	00c95463          	bge	s2,a2,236c <fatfs_split_path+0xcc>
    2368:	00090613          	mv	a2,s2
    236c:	00048513          	mv	a0,s1
    2370:	00098593          	mv	a1,s3
    2374:	00c12623          	sw	a2,12(sp)
    2378:	fffff097          	auipc	ra,0xfffff
    237c:	acc080e7          	jalr	-1332(ra) # e44 <memcpy>
    2380:	00c12603          	lw	a2,12(sp)
    2384:	00c484b3          	add	s1,s1,a2
    2388:	fe048fa3          	sb	zero,-1(s1)
    238c:	f5dff06f          	j	22e8 <fatfs_split_path+0x48>

00002390 <fatfs_compare_names>:
    2390:	fd010113          	addi	sp,sp,-48
    2394:	02112623          	sw	ra,44(sp)
    2398:	03212023          	sw	s2,32(sp)
    239c:	01312e23          	sw	s3,28(sp)
    23a0:	01412c23          	sw	s4,24(sp)
    23a4:	01512a23          	sw	s5,20(sp)
    23a8:	00058a13          	mv	s4,a1
    23ac:	02812423          	sw	s0,40(sp)
    23b0:	02912223          	sw	s1,36(sp)
    23b4:	01612823          	sw	s6,16(sp)
    23b8:	01712623          	sw	s7,12(sp)
    23bc:	01812423          	sw	s8,8(sp)
    23c0:	00050a93          	mv	s5,a0
    23c4:	fffff097          	auipc	ra,0xfffff
    23c8:	2bc080e7          	jalr	700(ra) # 1680 <FileString_GetExtension>
    23cc:	00050993          	mv	s3,a0
    23d0:	000a0513          	mv	a0,s4
    23d4:	fffff097          	auipc	ra,0xfffff
    23d8:	2ac080e7          	jalr	684(ra) # 1680 <FileString_GetExtension>
    23dc:	fff00793          	li	a5,-1
    23e0:	00050913          	mv	s2,a0
    23e4:	02f99e63          	bne	s3,a5,2420 <fatfs_compare_names+0x90>
    23e8:	0f350063          	beq	a0,s3,24c8 <fatfs_compare_names+0x138>
    23ec:	00000513          	li	a0,0
    23f0:	02c12083          	lw	ra,44(sp)
    23f4:	02812403          	lw	s0,40(sp)
    23f8:	02412483          	lw	s1,36(sp)
    23fc:	02012903          	lw	s2,32(sp)
    2400:	01c12983          	lw	s3,28(sp)
    2404:	01812a03          	lw	s4,24(sp)
    2408:	01412a83          	lw	s5,20(sp)
    240c:	01012b03          	lw	s6,16(sp)
    2410:	00c12b83          	lw	s7,12(sp)
    2414:	00812c03          	lw	s8,8(sp)
    2418:	03010113          	addi	sp,sp,48
    241c:	00008067          	ret
    2420:	fcf506e3          	beq	a0,a5,23ec <fatfs_compare_names+0x5c>
    2424:	00198793          	addi	a5,s3,1
    2428:	00fa8b33          	add	s6,s5,a5
    242c:	00050413          	mv	s0,a0
    2430:	00150793          	addi	a5,a0,1
    2434:	000b0513          	mv	a0,s6
    2438:	00fa0bb3          	add	s7,s4,a5
    243c:	fffff097          	auipc	ra,0xfffff
    2440:	a2c080e7          	jalr	-1492(ra) # e68 <strlen>
    2444:	00050c13          	mv	s8,a0
    2448:	000b8513          	mv	a0,s7
    244c:	00098493          	mv	s1,s3
    2450:	fffff097          	auipc	ra,0xfffff
    2454:	a18080e7          	jalr	-1512(ra) # e68 <strlen>
    2458:	f8ac1ae3          	bne	s8,a0,23ec <fatfs_compare_names+0x5c>
    245c:	000b0513          	mv	a0,s6
    2460:	fffff097          	auipc	ra,0xfffff
    2464:	a08080e7          	jalr	-1528(ra) # e68 <strlen>
    2468:	00050613          	mv	a2,a0
    246c:	000b8593          	mv	a1,s7
    2470:	000b0513          	mv	a0,s6
    2474:	fffff097          	auipc	ra,0xfffff
    2478:	19c080e7          	jalr	412(ra) # 1610 <FileString_StrCmpNoCase>
    247c:	f60518e3          	bnez	a0,23ec <fatfs_compare_names+0x5c>
    2480:	fff48793          	addi	a5,s1,-1
    2484:	00fa87b3          	add	a5,s5,a5
    2488:	41378733          	sub	a4,a5,s3
    248c:	02000693          	li	a3,32
    2490:	06e79263          	bne	a5,a4,24f4 <fatfs_compare_names+0x164>
    2494:	fff40793          	addi	a5,s0,-1
    2498:	00fa07b3          	add	a5,s4,a5
    249c:	41278733          	sub	a4,a5,s2
    24a0:	02000693          	li	a3,32
    24a4:	06e79263          	bne	a5,a4,2508 <fatfs_compare_names+0x178>
    24a8:	f53912e3          	bne	s2,s3,23ec <fatfs_compare_names+0x5c>
    24ac:	00090613          	mv	a2,s2
    24b0:	000a0593          	mv	a1,s4
    24b4:	000a8513          	mv	a0,s5
    24b8:	fffff097          	auipc	ra,0xfffff
    24bc:	158080e7          	jalr	344(ra) # 1610 <FileString_StrCmpNoCase>
    24c0:	00153513          	seqz	a0,a0
    24c4:	f2dff06f          	j	23f0 <fatfs_compare_names+0x60>
    24c8:	000a8513          	mv	a0,s5
    24cc:	fffff097          	auipc	ra,0xfffff
    24d0:	99c080e7          	jalr	-1636(ra) # e68 <strlen>
    24d4:	00050493          	mv	s1,a0
    24d8:	00050993          	mv	s3,a0
    24dc:	000a0513          	mv	a0,s4
    24e0:	fffff097          	auipc	ra,0xfffff
    24e4:	988080e7          	jalr	-1656(ra) # e68 <strlen>
    24e8:	00050413          	mv	s0,a0
    24ec:	00050913          	mv	s2,a0
    24f0:	f91ff06f          	j	2480 <fatfs_compare_names+0xf0>
    24f4:	0007c603          	lbu	a2,0(a5)
    24f8:	f8d61ee3          	bne	a2,a3,2494 <fatfs_compare_names+0x104>
    24fc:	415789b3          	sub	s3,a5,s5
    2500:	fff78793          	addi	a5,a5,-1
    2504:	f8dff06f          	j	2490 <fatfs_compare_names+0x100>
    2508:	0007c603          	lbu	a2,0(a5)
    250c:	f8d61ee3          	bne	a2,a3,24a8 <fatfs_compare_names+0x118>
    2510:	41478933          	sub	s2,a5,s4
    2514:	fff78793          	addi	a5,a5,-1
    2518:	f8dff06f          	j	24a4 <fatfs_compare_names+0x114>

0000251c <_check_file_open>:
    251c:	fe010113          	addi	sp,sp,-32
    2520:	000057b7          	lui	a5,0x5
    2524:	00812c23          	sw	s0,24(sp)
    2528:	c447a403          	lw	s0,-956(a5) # 4c44 <_open_file_list>
    252c:	00912a23          	sw	s1,20(sp)
    2530:	00112e23          	sw	ra,28(sp)
    2534:	01212823          	sw	s2,16(sp)
    2538:	01312623          	sw	s3,12(sp)
    253c:	00050493          	mv	s1,a0
    2540:	00041663          	bnez	s0,254c <_check_file_open+0x30>
    2544:	00000513          	li	a0,0
    2548:	03c0006f          	j	2584 <_check_file_open+0x68>
    254c:	bc440793          	addi	a5,s0,-1084
    2550:	00f49663          	bne	s1,a5,255c <_check_file_open+0x40>
    2554:	00442403          	lw	s0,4(s0)
    2558:	fe9ff06f          	j	2540 <_check_file_open+0x24>
    255c:	01448593          	addi	a1,s1,20
    2560:	bd840513          	addi	a0,s0,-1064
    2564:	00000097          	auipc	ra,0x0
    2568:	e2c080e7          	jalr	-468(ra) # 2390 <fatfs_compare_names>
    256c:	fe0504e3          	beqz	a0,2554 <_check_file_open+0x38>
    2570:	11848593          	addi	a1,s1,280
    2574:	cdc40513          	addi	a0,s0,-804
    2578:	00000097          	auipc	ra,0x0
    257c:	e18080e7          	jalr	-488(ra) # 2390 <fatfs_compare_names>
    2580:	fc050ae3          	beqz	a0,2554 <_check_file_open+0x38>
    2584:	01c12083          	lw	ra,28(sp)
    2588:	01812403          	lw	s0,24(sp)
    258c:	01412483          	lw	s1,20(sp)
    2590:	01012903          	lw	s2,16(sp)
    2594:	00c12983          	lw	s3,12(sp)
    2598:	02010113          	addi	sp,sp,32
    259c:	00008067          	ret

000025a0 <fatfs_get_sfn_display_name>:
    25a0:	00000713          	li	a4,0
    25a4:	02000613          	li	a2,32
    25a8:	01900813          	li	a6,25
    25ac:	0005c783          	lbu	a5,0(a1)
    25b0:	00078663          	beqz	a5,25bc <fatfs_get_sfn_display_name+0x1c>
    25b4:	ff470693          	addi	a3,a4,-12
    25b8:	00069863          	bnez	a3,25c8 <fatfs_get_sfn_display_name+0x28>
    25bc:	00050023          	sb	zero,0(a0)
    25c0:	00100513          	li	a0,1
    25c4:	00008067          	ret
    25c8:	00158593          	addi	a1,a1,1
    25cc:	fec780e3          	beq	a5,a2,25ac <fatfs_get_sfn_display_name+0xc>
    25d0:	fbf78693          	addi	a3,a5,-65
    25d4:	0ff6f693          	zext.b	a3,a3
    25d8:	00d86663          	bltu	a6,a3,25e4 <fatfs_get_sfn_display_name+0x44>
    25dc:	02078793          	addi	a5,a5,32
    25e0:	0ff7f793          	zext.b	a5,a5
    25e4:	00f50023          	sb	a5,0(a0)
    25e8:	00170713          	addi	a4,a4,1
    25ec:	00150513          	addi	a0,a0,1
    25f0:	fbdff06f          	j	25ac <fatfs_get_sfn_display_name+0xc>

000025f4 <fatfs_fat_init>:
    25f4:	ff010113          	addi	sp,sp,-16
    25f8:	00812423          	sw	s0,8(sp)
    25fc:	00912223          	sw	s1,4(sp)
    2600:	00112623          	sw	ra,12(sp)
    2604:	fff00793          	li	a5,-1
    2608:	25850493          	addi	s1,a0,600
    260c:	00050413          	mv	s0,a0
    2610:	44f52c23          	sw	a5,1112(a0)
    2614:	24052a23          	sw	zero,596(a0)
    2618:	44052e23          	sw	zero,1116(a0)
    261c:	20000613          	li	a2,512
    2620:	00048513          	mv	a0,s1
    2624:	00000593          	li	a1,0
    2628:	fffff097          	auipc	ra,0xfffff
    262c:	800080e7          	jalr	-2048(ra) # e28 <memset>
    2630:	25442783          	lw	a5,596(s0)
    2634:	00c12083          	lw	ra,12(sp)
    2638:	24942a23          	sw	s1,596(s0)
    263c:	46042023          	sw	zero,1120(s0)
    2640:	46f42223          	sw	a5,1124(s0)
    2644:	00812403          	lw	s0,8(sp)
    2648:	00412483          	lw	s1,4(sp)
    264c:	01010113          	addi	sp,sp,16
    2650:	00008067          	ret

00002654 <fatfs_init>:
    2654:	fd010113          	addi	sp,sp,-48
    2658:	02812423          	sw	s0,40(sp)
    265c:	02112623          	sw	ra,44(sp)
    2660:	02912223          	sw	s1,36(sp)
    2664:	03212023          	sw	s2,32(sp)
    2668:	01312e23          	sw	s3,28(sp)
    266c:	fff00793          	li	a5,-1
    2670:	24f52223          	sw	a5,580(a0)
    2674:	24052423          	sw	zero,584(a0)
    2678:	02052223          	sw	zero,36(a0)
    267c:	00050413          	mv	s0,a0
    2680:	00000097          	auipc	ra,0x0
    2684:	f74080e7          	jalr	-140(ra) # 25f4 <fatfs_fat_init>
    2688:	03442783          	lw	a5,52(s0)
    268c:	02079463          	bnez	a5,26b4 <fatfs_init+0x60>
    2690:	fff00713          	li	a4,-1
    2694:	02c12083          	lw	ra,44(sp)
    2698:	02812403          	lw	s0,40(sp)
    269c:	02412483          	lw	s1,36(sp)
    26a0:	02012903          	lw	s2,32(sp)
    26a4:	01c12983          	lw	s3,28(sp)
    26a8:	00070513          	mv	a0,a4
    26ac:	03010113          	addi	sp,sp,48
    26b0:	00008067          	ret
    26b4:	04440593          	addi	a1,s0,68
    26b8:	00100613          	li	a2,1
    26bc:	00000513          	li	a0,0
    26c0:	00b12623          	sw	a1,12(sp)
    26c4:	000780e7          	jalr	a5
    26c8:	fc0504e3          	beqz	a0,2690 <fatfs_init+0x3c>
    26cc:	24244703          	lbu	a4,578(s0)
    26d0:	05500793          	li	a5,85
    26d4:	00c12583          	lw	a1,12(sp)
    26d8:	00f70663          	beq	a4,a5,26e4 <fatfs_init+0x90>
    26dc:	ffd00713          	li	a4,-3
    26e0:	fb5ff06f          	j	2694 <fatfs_init+0x40>
    26e4:	24344703          	lbu	a4,579(s0)
    26e8:	0aa00793          	li	a5,170
    26ec:	fef718e3          	bne	a4,a5,26dc <fatfs_init+0x88>
    26f0:	20644783          	lbu	a5,518(s0)
    26f4:	00600713          	li	a4,6
    26f8:	02f76463          	bltu	a4,a5,2720 <fatfs_init+0xcc>
    26fc:	00400713          	li	a4,4
    2700:	00f76663          	bltu	a4,a5,270c <fatfs_init+0xb8>
    2704:	00000513          	li	a0,0
    2708:	02078663          	beqz	a5,2734 <fatfs_init+0xe0>
    270c:	20c45503          	lhu	a0,524(s0)
    2710:	20a45783          	lhu	a5,522(s0)
    2714:	01051513          	slli	a0,a0,0x10
    2718:	00f56533          	or	a0,a0,a5
    271c:	0180006f          	j	2734 <fatfs_init+0xe0>
    2720:	00c00713          	li	a4,12
    2724:	12f76663          	bltu	a4,a5,2850 <fatfs_init+0x1fc>
    2728:	00a00713          	li	a4,10
    272c:	00000513          	li	a0,0
    2730:	fcf76ee3          	bltu	a4,a5,270c <fatfs_init+0xb8>
    2734:	03442783          	lw	a5,52(s0)
    2738:	00a42e23          	sw	a0,28(s0)
    273c:	00100613          	li	a2,1
    2740:	000780e7          	jalr	a5
    2744:	f40506e3          	beqz	a0,2690 <fatfs_init+0x3c>
    2748:	05044783          	lbu	a5,80(s0)
    274c:	04f44703          	lbu	a4,79(s0)
    2750:	20000693          	li	a3,512
    2754:	00879793          	slli	a5,a5,0x8
    2758:	00e7e7b3          	or	a5,a5,a4
    275c:	ffe00713          	li	a4,-2
    2760:	f2d79ae3          	bne	a5,a3,2694 <fatfs_init+0x40>
    2764:	05644483          	lbu	s1,86(s0)
    2768:	05544783          	lbu	a5,85(s0)
    276c:	05144983          	lbu	s3,81(s0)
    2770:	00849493          	slli	s1,s1,0x8
    2774:	05a45583          	lhu	a1,90(s0)
    2778:	00f4e4b3          	or	s1,s1,a5
    277c:	01340023          	sb	s3,0(s0)
    2780:	02941423          	sh	s1,40(s0)
    2784:	05245903          	lhu	s2,82(s0)
    2788:	05444503          	lbu	a0,84(s0)
    278c:	00059463          	bnez	a1,2794 <fatfs_init+0x140>
    2790:	06842583          	lw	a1,104(s0)
    2794:	07042783          	lw	a5,112(s0)
    2798:	02b42023          	sw	a1,32(s0)
    279c:	00549493          	slli	s1,s1,0x5
    27a0:	00f42423          	sw	a5,8(s0)
    27a4:	07445783          	lhu	a5,116(s0)
    27a8:	1ff48493          	addi	s1,s1,511
    27ac:	4094d493          	srai	s1,s1,0x9
    27b0:	00f41c23          	sh	a5,24(s0)
    27b4:	fffff097          	auipc	ra,0xfffff
    27b8:	dc4080e7          	jalr	-572(ra) # 1578 <__mulsi3>
    27bc:	00a907b3          	add	a5,s2,a0
    27c0:	00f42623          	sw	a5,12(s0)
    27c4:	01c42783          	lw	a5,28(s0)
    27c8:	24245703          	lhu	a4,578(s0)
    27cc:	00942823          	sw	s1,16(s0)
    27d0:	00f907b3          	add	a5,s2,a5
    27d4:	00f42a23          	sw	a5,20(s0)
    27d8:	00f507b3          	add	a5,a0,a5
    27dc:	00f42223          	sw	a5,4(s0)
    27e0:	0000b7b7          	lui	a5,0xb
    27e4:	a5578793          	addi	a5,a5,-1451 # aa55 <framebuffer+0x3c81>
    27e8:	eef71ae3          	bne	a4,a5,26dc <fatfs_init+0x88>
    27ec:	05844783          	lbu	a5,88(s0)
    27f0:	05744703          	lbu	a4,87(s0)
    27f4:	00879793          	slli	a5,a5,0x8
    27f8:	00e7e7b3          	or	a5,a5,a4
    27fc:	00079463          	bnez	a5,2804 <fatfs_init+0x1b0>
    2800:	06442783          	lw	a5,100(s0)
    2804:	ffb00713          	li	a4,-5
    2808:	e80986e3          	beqz	s3,2694 <fatfs_init+0x40>
    280c:	00990933          	add	s2,s2,s1
    2810:	00a90533          	add	a0,s2,a0
    2814:	40a78533          	sub	a0,a5,a0
    2818:	00098593          	mv	a1,s3
    281c:	ffffe097          	auipc	ra,0xffffe
    2820:	560080e7          	jalr	1376(ra) # d7c <__udivsi3>
    2824:	000017b7          	lui	a5,0x1
    2828:	ff478793          	addi	a5,a5,-12 # ff4 <oled_init_mode+0xbc>
    282c:	ffb00713          	li	a4,-5
    2830:	e6a7f2e3          	bgeu	a5,a0,2694 <fatfs_init+0x40>
    2834:	000107b7          	lui	a5,0x10
    2838:	ff478793          	addi	a5,a5,-12 # fff4 <_files+0x4db8>
    283c:	02a7e663          	bltu	a5,a0,2868 <fatfs_init+0x214>
    2840:	00042423          	sw	zero,8(s0)
    2844:	02042823          	sw	zero,48(s0)
    2848:	00000713          	li	a4,0
    284c:	e49ff06f          	j	2694 <fatfs_init+0x40>
    2850:	ff278793          	addi	a5,a5,-14
    2854:	0ff7f793          	zext.b	a5,a5
    2858:	00100713          	li	a4,1
    285c:	00000513          	li	a0,0
    2860:	eaf776e3          	bgeu	a4,a5,270c <fatfs_init+0xb8>
    2864:	ed1ff06f          	j	2734 <fatfs_init+0xe0>
    2868:	00100793          	li	a5,1
    286c:	02f42823          	sw	a5,48(s0)
    2870:	fd9ff06f          	j	2848 <fatfs_init+0x1f4>

00002874 <fl_attach_media>:
    2874:	000057b7          	lui	a5,0x5
    2878:	c507a783          	lw	a5,-944(a5) # 4c50 <_filelib_init>
    287c:	fe010113          	addi	sp,sp,-32
    2880:	00812c23          	sw	s0,24(sp)
    2884:	00112e23          	sw	ra,28(sp)
    2888:	00050413          	mv	s0,a0
    288c:	00079a63          	bnez	a5,28a0 <fl_attach_media+0x2c>
    2890:	00b12623          	sw	a1,12(sp)
    2894:	fffff097          	auipc	ra,0xfffff
    2898:	178080e7          	jalr	376(ra) # 1a0c <fl_init>
    289c:	00c12583          	lw	a1,12(sp)
    28a0:	0000b7b7          	lui	a5,0xb
    28a4:	dd478513          	addi	a0,a5,-556 # add4 <_fs>
    28a8:	02b52c23          	sw	a1,56(a0)
    28ac:	02852a23          	sw	s0,52(a0)
    28b0:	00000097          	auipc	ra,0x0
    28b4:	da4080e7          	jalr	-604(ra) # 2654 <fatfs_init>
    28b8:	00050593          	mv	a1,a0
    28bc:	02050863          	beqz	a0,28ec <fl_attach_media+0x78>
    28c0:	00a12623          	sw	a0,12(sp)
    28c4:	00005537          	lui	a0,0x5
    28c8:	9dc50513          	addi	a0,a0,-1572 # 49dc <LEDS+0xcc>
    28cc:	fffff097          	auipc	ra,0xfffff
    28d0:	b70080e7          	jalr	-1168(ra) # 143c <printf>
    28d4:	00c12583          	lw	a1,12(sp)
    28d8:	01c12083          	lw	ra,28(sp)
    28dc:	01812403          	lw	s0,24(sp)
    28e0:	00058513          	mv	a0,a1
    28e4:	02010113          	addi	sp,sp,32
    28e8:	00008067          	ret
    28ec:	000057b7          	lui	a5,0x5
    28f0:	00100713          	li	a4,1
    28f4:	c4e7a623          	sw	a4,-948(a5) # 4c4c <_filelib_valid>
    28f8:	fe1ff06f          	j	28d8 <fl_attach_media+0x64>

000028fc <fatfs_fat_purge>:
    28fc:	25452583          	lw	a1,596(a0)
    2900:	fe010113          	addi	sp,sp,-32
    2904:	00812c23          	sw	s0,24(sp)
    2908:	00112e23          	sw	ra,28(sp)
    290c:	00050413          	mv	s0,a0
    2910:	00059663          	bnez	a1,291c <fatfs_fat_purge+0x20>
    2914:	00100513          	li	a0,1
    2918:	02c0006f          	j	2944 <fatfs_fat_purge+0x48>
    291c:	2045a783          	lw	a5,516(a1)
    2920:	00079663          	bnez	a5,292c <fatfs_fat_purge+0x30>
    2924:	20c5a583          	lw	a1,524(a1)
    2928:	fe9ff06f          	j	2910 <fatfs_fat_purge+0x14>
    292c:	00040513          	mv	a0,s0
    2930:	00b12623          	sw	a1,12(sp)
    2934:	fffff097          	auipc	ra,0xfffff
    2938:	d78080e7          	jalr	-648(ra) # 16ac <fatfs_fat_writeback>
    293c:	00c12583          	lw	a1,12(sp)
    2940:	fe0512e3          	bnez	a0,2924 <fatfs_fat_purge+0x28>
    2944:	01c12083          	lw	ra,28(sp)
    2948:	01812403          	lw	s0,24(sp)
    294c:	02010113          	addi	sp,sp,32
    2950:	00008067          	ret

00002954 <fatfs_find_next_cluster>:
    2954:	ff010113          	addi	sp,sp,-16
    2958:	00812423          	sw	s0,8(sp)
    295c:	01212023          	sw	s2,0(sp)
    2960:	00112623          	sw	ra,12(sp)
    2964:	00912223          	sw	s1,4(sp)
    2968:	00050913          	mv	s2,a0
    296c:	00200413          	li	s0,2
    2970:	00058463          	beqz	a1,2978 <fatfs_find_next_cluster+0x24>
    2974:	00058413          	mv	s0,a1
    2978:	03092783          	lw	a5,48(s2)
    297c:	00745493          	srli	s1,s0,0x7
    2980:	00079463          	bnez	a5,2988 <fatfs_find_next_cluster+0x34>
    2984:	00845493          	srli	s1,s0,0x8
    2988:	01492583          	lw	a1,20(s2)
    298c:	00090513          	mv	a0,s2
    2990:	00b485b3          	add	a1,s1,a1
    2994:	fffff097          	auipc	ra,0xfffff
    2998:	d9c080e7          	jalr	-612(ra) # 1730 <fatfs_fat_read_sector>
    299c:	00050793          	mv	a5,a0
    29a0:	fff00513          	li	a0,-1
    29a4:	04078863          	beqz	a5,29f4 <fatfs_find_next_cluster+0xa0>
    29a8:	03092703          	lw	a4,48(s2)
    29ac:	2087a783          	lw	a5,520(a5)
    29b0:	04071e63          	bnez	a4,2a0c <fatfs_find_next_cluster+0xb8>
    29b4:	00849493          	slli	s1,s1,0x8
    29b8:	40940433          	sub	s0,s0,s1
    29bc:	00141413          	slli	s0,s0,0x1
    29c0:	01041413          	slli	s0,s0,0x10
    29c4:	01045413          	srli	s0,s0,0x10
    29c8:	008787b3          	add	a5,a5,s0
    29cc:	0017c503          	lbu	a0,1(a5)
    29d0:	0007c783          	lbu	a5,0(a5)
    29d4:	00851513          	slli	a0,a0,0x8
    29d8:	00f50533          	add	a0,a0,a5
    29dc:	ffff07b7          	lui	a5,0xffff0
    29e0:	00878793          	addi	a5,a5,8 # ffff0008 <__stacktop+0xfffe0008>
    29e4:	00f507b3          	add	a5,a0,a5
    29e8:	00700713          	li	a4,7
    29ec:	00f76463          	bltu	a4,a5,29f4 <fatfs_find_next_cluster+0xa0>
    29f0:	fff00513          	li	a0,-1
    29f4:	00c12083          	lw	ra,12(sp)
    29f8:	00812403          	lw	s0,8(sp)
    29fc:	00412483          	lw	s1,4(sp)
    2a00:	00012903          	lw	s2,0(sp)
    2a04:	01010113          	addi	sp,sp,16
    2a08:	00008067          	ret
    2a0c:	00749493          	slli	s1,s1,0x7
    2a10:	40940433          	sub	s0,s0,s1
    2a14:	00241413          	slli	s0,s0,0x2
    2a18:	01041413          	slli	s0,s0,0x10
    2a1c:	01045413          	srli	s0,s0,0x10
    2a20:	008787b3          	add	a5,a5,s0
    2a24:	0037c503          	lbu	a0,3(a5)
    2a28:	0027c703          	lbu	a4,2(a5)
    2a2c:	01851513          	slli	a0,a0,0x18
    2a30:	01071713          	slli	a4,a4,0x10
    2a34:	00e50533          	add	a0,a0,a4
    2a38:	0007c703          	lbu	a4,0(a5)
    2a3c:	0017c783          	lbu	a5,1(a5)
    2a40:	00e50533          	add	a0,a0,a4
    2a44:	00879793          	slli	a5,a5,0x8
    2a48:	00f50533          	add	a0,a0,a5
    2a4c:	00451513          	slli	a0,a0,0x4
    2a50:	00455513          	srli	a0,a0,0x4
    2a54:	f00007b7          	lui	a5,0xf0000
    2a58:	f89ff06f          	j	29e0 <fatfs_find_next_cluster+0x8c>

00002a5c <fatfs_sector_reader>:
    2a5c:	03052783          	lw	a5,48(a0)
    2a60:	fe010113          	addi	sp,sp,-32
    2a64:	00812c23          	sw	s0,24(sp)
    2a68:	01212823          	sw	s2,16(sp)
    2a6c:	01512223          	sw	s5,4(sp)
    2a70:	00112e23          	sw	ra,28(sp)
    2a74:	00912a23          	sw	s1,20(sp)
    2a78:	01312623          	sw	s3,12(sp)
    2a7c:	01412423          	sw	s4,8(sp)
    2a80:	01612023          	sw	s6,0(sp)
    2a84:	00f5e7b3          	or	a5,a1,a5
    2a88:	00050413          	mv	s0,a0
    2a8c:	00060913          	mv	s2,a2
    2a90:	00068a93          	mv	s5,a3
    2a94:	08079063          	bnez	a5,2b14 <fatfs_sector_reader+0xb8>
    2a98:	01052783          	lw	a5,16(a0)
    2a9c:	02f66863          	bltu	a2,a5,2acc <fatfs_sector_reader+0x70>
    2aa0:	00000513          	li	a0,0
    2aa4:	01c12083          	lw	ra,28(sp)
    2aa8:	01812403          	lw	s0,24(sp)
    2aac:	01412483          	lw	s1,20(sp)
    2ab0:	01012903          	lw	s2,16(sp)
    2ab4:	00c12983          	lw	s3,12(sp)
    2ab8:	00812a03          	lw	s4,8(sp)
    2abc:	00412a83          	lw	s5,4(sp)
    2ac0:	00012b03          	lw	s6,0(sp)
    2ac4:	02010113          	addi	sp,sp,32
    2ac8:	00008067          	ret
    2acc:	01c52503          	lw	a0,28(a0)
    2ad0:	00c42783          	lw	a5,12(s0)
    2ad4:	00f50533          	add	a0,a0,a5
    2ad8:	01250533          	add	a0,a0,s2
    2adc:	0a0a8663          	beqz	s5,2b88 <fatfs_sector_reader+0x12c>
    2ae0:	03442783          	lw	a5,52(s0)
    2ae4:	00100613          	li	a2,1
    2ae8:	000a8593          	mv	a1,s5
    2aec:	01812403          	lw	s0,24(sp)
    2af0:	01c12083          	lw	ra,28(sp)
    2af4:	01412483          	lw	s1,20(sp)
    2af8:	01012903          	lw	s2,16(sp)
    2afc:	00c12983          	lw	s3,12(sp)
    2b00:	00812a03          	lw	s4,8(sp)
    2b04:	00412a83          	lw	s5,4(sp)
    2b08:	00012b03          	lw	s6,0(sp)
    2b0c:	02010113          	addi	sp,sp,32
    2b10:	00078067          	jr	a5 # f0000000 <__stacktop+0xefff0000>
    2b14:	00054783          	lbu	a5,0(a0)
    2b18:	00058493          	mv	s1,a1
    2b1c:	00060513          	mv	a0,a2
    2b20:	00078593          	mv	a1,a5
    2b24:	00078a13          	mv	s4,a5
    2b28:	ffffe097          	auipc	ra,0xffffe
    2b2c:	254080e7          	jalr	596(ra) # d7c <__udivsi3>
    2b30:	00050b13          	mv	s6,a0
    2b34:	00000993          	li	s3,0
    2b38:	03699a63          	bne	s3,s6,2b6c <fatfs_sector_reader+0x110>
    2b3c:	fff00793          	li	a5,-1
    2b40:	f6f480e3          	beq	s1,a5,2aa0 <fatfs_sector_reader+0x44>
    2b44:	000a0593          	mv	a1,s4
    2b48:	00090513          	mv	a0,s2
    2b4c:	ffffe097          	auipc	ra,0xffffe
    2b50:	278080e7          	jalr	632(ra) # dc4 <__umodsi3>
    2b54:	00050913          	mv	s2,a0
    2b58:	00048593          	mv	a1,s1
    2b5c:	00040513          	mv	a0,s0
    2b60:	fffff097          	auipc	ra,0xfffff
    2b64:	d7c080e7          	jalr	-644(ra) # 18dc <fatfs_lba_of_cluster>
    2b68:	f71ff06f          	j	2ad8 <fatfs_sector_reader+0x7c>
    2b6c:	00048593          	mv	a1,s1
    2b70:	00040513          	mv	a0,s0
    2b74:	00000097          	auipc	ra,0x0
    2b78:	de0080e7          	jalr	-544(ra) # 2954 <fatfs_find_next_cluster>
    2b7c:	00050493          	mv	s1,a0
    2b80:	00198993          	addi	s3,s3,1
    2b84:	fb5ff06f          	j	2b38 <fatfs_sector_reader+0xdc>
    2b88:	24442783          	lw	a5,580(s0)
    2b8c:	00a78c63          	beq	a5,a0,2ba4 <fatfs_sector_reader+0x148>
    2b90:	03442783          	lw	a5,52(s0)
    2b94:	24a42223          	sw	a0,580(s0)
    2b98:	00100613          	li	a2,1
    2b9c:	04440593          	addi	a1,s0,68
    2ba0:	f4dff06f          	j	2aec <fatfs_sector_reader+0x90>
    2ba4:	00100513          	li	a0,1
    2ba8:	efdff06f          	j	2aa4 <fatfs_sector_reader+0x48>

00002bac <fatfs_get_file_entry>:
    2bac:	eb010113          	addi	sp,sp,-336
    2bb0:	14812423          	sw	s0,328(sp)
    2bb4:	14912223          	sw	s1,324(sp)
    2bb8:	13312e23          	sw	s3,316(sp)
    2bbc:	13712623          	sw	s7,300(sp)
    2bc0:	13812423          	sw	s8,296(sp)
    2bc4:	13912223          	sw	s9,292(sp)
    2bc8:	14112623          	sw	ra,332(sp)
    2bcc:	15212023          	sw	s2,320(sp)
    2bd0:	13412c23          	sw	s4,312(sp)
    2bd4:	13512a23          	sw	s5,308(sp)
    2bd8:	13612823          	sw	s6,304(sp)
    2bdc:	00050993          	mv	s3,a0
    2be0:	00058c93          	mv	s9,a1
    2be4:	00060b93          	mv	s7,a2
    2be8:	00068c13          	mv	s8,a3
    2bec:	10010ea3          	sb	zero,285(sp)
    2bf0:	01810413          	addi	s0,sp,24
    2bf4:	11c10493          	addi	s1,sp,284
    2bf8:	00040513          	mv	a0,s0
    2bfc:	00d00613          	li	a2,13
    2c00:	00000593          	li	a1,0
    2c04:	00d40413          	addi	s0,s0,13
    2c08:	ffffe097          	auipc	ra,0xffffe
    2c0c:	220080e7          	jalr	544(ra) # e28 <memset>
    2c10:	fe9414e3          	bne	s0,s1,2bf8 <fatfs_get_file_entry+0x4c>
    2c14:	00000493          	li	s1,0
    2c18:	24498a13          	addi	s4,s3,580
    2c1c:	00810913          	addi	s2,sp,8
    2c20:	00800a93          	li	s5,8
    2c24:	02e00b13          	li	s6,46
    2c28:	00000693          	li	a3,0
    2c2c:	00048613          	mv	a2,s1
    2c30:	000c8593          	mv	a1,s9
    2c34:	00098513          	mv	a0,s3
    2c38:	00000097          	auipc	ra,0x0
    2c3c:	e24080e7          	jalr	-476(ra) # 2a5c <fatfs_sector_reader>
    2c40:	08050c63          	beqz	a0,2cd8 <fatfs_get_file_entry+0x12c>
    2c44:	00148493          	addi	s1,s1,1
    2c48:	04498413          	addi	s0,s3,68
    2c4c:	00040513          	mv	a0,s0
    2c50:	fffff097          	auipc	ra,0xfffff
    2c54:	f34080e7          	jalr	-204(ra) # 1b84 <fatfs_entry_lfn_text>
    2c58:	02050063          	beqz	a0,2c78 <fatfs_get_file_entry+0xcc>
    2c5c:	00040593          	mv	a1,s0
    2c60:	01810513          	addi	a0,sp,24
    2c64:	fffff097          	auipc	ra,0xfffff
    2c68:	e18080e7          	jalr	-488(ra) # 1a7c <fatfs_lfn_cache_entry>
    2c6c:	02040413          	addi	s0,s0,32
    2c70:	fd441ee3          	bne	s0,s4,2c4c <fatfs_get_file_entry+0xa0>
    2c74:	fb5ff06f          	j	2c28 <fatfs_get_file_entry+0x7c>
    2c78:	00040513          	mv	a0,s0
    2c7c:	fffff097          	auipc	ra,0xfffff
    2c80:	f1c080e7          	jalr	-228(ra) # 1b98 <fatfs_entry_lfn_invalid>
    2c84:	00050663          	beqz	a0,2c90 <fatfs_get_file_entry+0xe4>
    2c88:	10010ea3          	sb	zero,285(sp)
    2c8c:	fe1ff06f          	j	2c6c <fatfs_get_file_entry+0xc0>
    2c90:	00040593          	mv	a1,s0
    2c94:	01810513          	addi	a0,sp,24
    2c98:	fffff097          	auipc	ra,0xfffff
    2c9c:	f34080e7          	jalr	-204(ra) # 1bcc <fatfs_entry_lfn_exists>
    2ca0:	06050663          	beqz	a0,2d0c <fatfs_get_file_entry+0x160>
    2ca4:	01810513          	addi	a0,sp,24
    2ca8:	fffff097          	auipc	ra,0xfffff
    2cac:	ea0080e7          	jalr	-352(ra) # 1b48 <fatfs_lfn_cache_get>
    2cb0:	000b8593          	mv	a1,s7
    2cb4:	fffff097          	auipc	ra,0xfffff
    2cb8:	6dc080e7          	jalr	1756(ra) # 2390 <fatfs_compare_names>
    2cbc:	fc0506e3          	beqz	a0,2c88 <fatfs_get_file_entry+0xdc>
    2cc0:	02000613          	li	a2,32
    2cc4:	00040593          	mv	a1,s0
    2cc8:	000c0513          	mv	a0,s8
    2ccc:	ffffe097          	auipc	ra,0xffffe
    2cd0:	178080e7          	jalr	376(ra) # e44 <memcpy>
    2cd4:	00100513          	li	a0,1
    2cd8:	14c12083          	lw	ra,332(sp)
    2cdc:	14812403          	lw	s0,328(sp)
    2ce0:	14412483          	lw	s1,324(sp)
    2ce4:	14012903          	lw	s2,320(sp)
    2ce8:	13c12983          	lw	s3,316(sp)
    2cec:	13812a03          	lw	s4,312(sp)
    2cf0:	13412a83          	lw	s5,308(sp)
    2cf4:	13012b03          	lw	s6,304(sp)
    2cf8:	12c12b83          	lw	s7,300(sp)
    2cfc:	12812c03          	lw	s8,296(sp)
    2d00:	12412c83          	lw	s9,292(sp)
    2d04:	15010113          	addi	sp,sp,336
    2d08:	00008067          	ret
    2d0c:	00040513          	mv	a0,s0
    2d10:	fffff097          	auipc	ra,0xfffff
    2d14:	f0c080e7          	jalr	-244(ra) # 1c1c <fatfs_entry_sfn_only>
    2d18:	f4050ae3          	beqz	a0,2c6c <fatfs_get_file_entry+0xc0>
    2d1c:	00d00613          	li	a2,13
    2d20:	00000593          	li	a1,0
    2d24:	00090513          	mv	a0,s2
    2d28:	ffffe097          	auipc	ra,0xffffe
    2d2c:	100080e7          	jalr	256(ra) # e28 <memset>
    2d30:	00000793          	li	a5,0
    2d34:	00f406b3          	add	a3,s0,a5
    2d38:	0006c683          	lbu	a3,0(a3)
    2d3c:	00f90733          	add	a4,s2,a5
    2d40:	00178793          	addi	a5,a5,1
    2d44:	00d70023          	sb	a3,0(a4)
    2d48:	ff5796e3          	bne	a5,s5,2d34 <fatfs_get_file_entry+0x188>
    2d4c:	00844703          	lbu	a4,8(s0)
    2d50:	00944783          	lbu	a5,9(s0)
    2d54:	00a44683          	lbu	a3,10(s0)
    2d58:	00e108a3          	sb	a4,17(sp)
    2d5c:	00f10923          	sb	a5,18(sp)
    2d60:	fe070713          	addi	a4,a4,-32
    2d64:	fe078793          	addi	a5,a5,-32
    2d68:	00f037b3          	snez	a5,a5
    2d6c:	00e03733          	snez	a4,a4
    2d70:	00d109a3          	sb	a3,19(sp)
    2d74:	00e7e7b3          	or	a5,a5,a4
    2d78:	00079863          	bnez	a5,2d88 <fatfs_get_file_entry+0x1dc>
    2d7c:	fe068693          	addi	a3,a3,-32
    2d80:	02000793          	li	a5,32
    2d84:	00068a63          	beqz	a3,2d98 <fatfs_get_file_entry+0x1ec>
    2d88:	00814703          	lbu	a4,8(sp)
    2d8c:	02e00793          	li	a5,46
    2d90:	01671463          	bne	a4,s6,2d98 <fatfs_get_file_entry+0x1ec>
    2d94:	02000793          	li	a5,32
    2d98:	00f10823          	sb	a5,16(sp)
    2d9c:	000b8593          	mv	a1,s7
    2da0:	00090513          	mv	a0,s2
    2da4:	f11ff06f          	j	2cb4 <fatfs_get_file_entry+0x108>

00002da8 <_open_directory>:
    2da8:	eb010113          	addi	sp,sp,-336
    2dac:	15212023          	sw	s2,320(sp)
    2db0:	0000b937          	lui	s2,0xb
    2db4:	dd490913          	addi	s2,s2,-556 # add4 <_fs>
    2db8:	14812423          	sw	s0,328(sp)
    2dbc:	00892403          	lw	s0,8(s2)
    2dc0:	14912223          	sw	s1,324(sp)
    2dc4:	13312e23          	sw	s3,316(sp)
    2dc8:	13412c23          	sw	s4,312(sp)
    2dcc:	13512a23          	sw	s5,308(sp)
    2dd0:	13612823          	sw	s6,304(sp)
    2dd4:	14112623          	sw	ra,332(sp)
    2dd8:	00050a13          	mv	s4,a0
    2ddc:	00058a93          	mv	s5,a1
    2de0:	fffff097          	auipc	ra,0xfffff
    2de4:	368080e7          	jalr	872(ra) # 2148 <fatfs_total_path_levels>
    2de8:	00050b13          	mv	s6,a0
    2dec:	00000493          	li	s1,0
    2df0:	fff00993          	li	s3,-1
    2df4:	009b5863          	bge	s6,s1,2e04 <_open_directory+0x5c>
    2df8:	008aa023          	sw	s0,0(s5)
    2dfc:	00100513          	li	a0,1
    2e00:	0240006f          	j	2e24 <_open_directory+0x7c>
    2e04:	10400693          	li	a3,260
    2e08:	02c10613          	addi	a2,sp,44
    2e0c:	00048593          	mv	a1,s1
    2e10:	000a0513          	mv	a0,s4
    2e14:	fffff097          	auipc	ra,0xfffff
    2e18:	3a4080e7          	jalr	932(ra) # 21b8 <fatfs_get_substring>
    2e1c:	03351863          	bne	a0,s3,2e4c <_open_directory+0xa4>
    2e20:	00000513          	li	a0,0
    2e24:	14c12083          	lw	ra,332(sp)
    2e28:	14812403          	lw	s0,328(sp)
    2e2c:	14412483          	lw	s1,324(sp)
    2e30:	14012903          	lw	s2,320(sp)
    2e34:	13c12983          	lw	s3,316(sp)
    2e38:	13812a03          	lw	s4,312(sp)
    2e3c:	13412a83          	lw	s5,308(sp)
    2e40:	13012b03          	lw	s6,304(sp)
    2e44:	15010113          	addi	sp,sp,336
    2e48:	00008067          	ret
    2e4c:	00c10693          	addi	a3,sp,12
    2e50:	02c10613          	addi	a2,sp,44
    2e54:	00040593          	mv	a1,s0
    2e58:	00090513          	mv	a0,s2
    2e5c:	00000097          	auipc	ra,0x0
    2e60:	d50080e7          	jalr	-688(ra) # 2bac <fatfs_get_file_entry>
    2e64:	fa050ee3          	beqz	a0,2e20 <_open_directory+0x78>
    2e68:	01714783          	lbu	a5,23(sp)
    2e6c:	0107f793          	andi	a5,a5,16
    2e70:	fa0788e3          	beqz	a5,2e20 <_open_directory+0x78>
    2e74:	02015403          	lhu	s0,32(sp)
    2e78:	02615783          	lhu	a5,38(sp)
    2e7c:	00148493          	addi	s1,s1,1
    2e80:	01041413          	slli	s0,s0,0x10
    2e84:	00f40433          	add	s0,s0,a5
    2e88:	f6dff06f          	j	2df4 <_open_directory+0x4c>

00002e8c <fl_opendir>:
    2e8c:	fe010113          	addi	sp,sp,-32
    2e90:	fff00793          	li	a5,-1
    2e94:	00f12623          	sw	a5,12(sp)
    2e98:	000057b7          	lui	a5,0x5
    2e9c:	c507a783          	lw	a5,-944(a5) # 4c50 <_filelib_init>
    2ea0:	00812c23          	sw	s0,24(sp)
    2ea4:	01212823          	sw	s2,16(sp)
    2ea8:	00112e23          	sw	ra,28(sp)
    2eac:	00912a23          	sw	s1,20(sp)
    2eb0:	00050913          	mv	s2,a0
    2eb4:	00058413          	mv	s0,a1
    2eb8:	00079663          	bnez	a5,2ec4 <fl_opendir+0x38>
    2ebc:	fffff097          	auipc	ra,0xfffff
    2ec0:	b50080e7          	jalr	-1200(ra) # 1a0c <fl_init>
    2ec4:	0000b4b7          	lui	s1,0xb
    2ec8:	dd448493          	addi	s1,s1,-556 # add4 <_fs>
    2ecc:	03c4a783          	lw	a5,60(s1)
    2ed0:	00078463          	beqz	a5,2ed8 <fl_opendir+0x4c>
    2ed4:	000780e7          	jalr	a5
    2ed8:	00090513          	mv	a0,s2
    2edc:	fffff097          	auipc	ra,0xfffff
    2ee0:	26c080e7          	jalr	620(ra) # 2148 <fatfs_total_path_levels>
    2ee4:	fff00793          	li	a5,-1
    2ee8:	02f51063          	bne	a0,a5,2f08 <fl_opendir+0x7c>
    2eec:	0084a783          	lw	a5,8(s1)
    2ef0:	00f12623          	sw	a5,12(sp)
    2ef4:	00c12783          	lw	a5,12(sp)
    2ef8:	00042023          	sw	zero,0(s0)
    2efc:	00040423          	sb	zero,8(s0)
    2f00:	00f42223          	sw	a5,4(s0)
    2f04:	0180006f          	j	2f1c <fl_opendir+0x90>
    2f08:	00c10593          	addi	a1,sp,12
    2f0c:	00090513          	mv	a0,s2
    2f10:	00000097          	auipc	ra,0x0
    2f14:	e98080e7          	jalr	-360(ra) # 2da8 <_open_directory>
    2f18:	fc051ee3          	bnez	a0,2ef4 <fl_opendir+0x68>
    2f1c:	0404a783          	lw	a5,64(s1)
    2f20:	00078463          	beqz	a5,2f28 <fl_opendir+0x9c>
    2f24:	000780e7          	jalr	a5
    2f28:	00c12703          	lw	a4,12(sp)
    2f2c:	fff00793          	li	a5,-1
    2f30:	00f71463          	bne	a4,a5,2f38 <fl_opendir+0xac>
    2f34:	00000413          	li	s0,0
    2f38:	01c12083          	lw	ra,28(sp)
    2f3c:	00040513          	mv	a0,s0
    2f40:	01812403          	lw	s0,24(sp)
    2f44:	01412483          	lw	s1,20(sp)
    2f48:	01012903          	lw	s2,16(sp)
    2f4c:	02010113          	addi	sp,sp,32
    2f50:	00008067          	ret

00002f54 <_open_file>:
    2f54:	fc010113          	addi	sp,sp,-64
    2f58:	03312623          	sw	s3,44(sp)
    2f5c:	02112e23          	sw	ra,60(sp)
    2f60:	02812c23          	sw	s0,56(sp)
    2f64:	02912a23          	sw	s1,52(sp)
    2f68:	03212823          	sw	s2,48(sp)
    2f6c:	00050993          	mv	s3,a0
    2f70:	fffff097          	auipc	ra,0xfffff
    2f74:	8ac080e7          	jalr	-1876(ra) # 181c <_allocate_file>
    2f78:	06050463          	beqz	a0,2fe0 <_open_file+0x8c>
    2f7c:	01450913          	addi	s2,a0,20
    2f80:	00050413          	mv	s0,a0
    2f84:	10400613          	li	a2,260
    2f88:	00000593          	li	a1,0
    2f8c:	00090513          	mv	a0,s2
    2f90:	ffffe097          	auipc	ra,0xffffe
    2f94:	e98080e7          	jalr	-360(ra) # e28 <memset>
    2f98:	11840493          	addi	s1,s0,280
    2f9c:	10400613          	li	a2,260
    2fa0:	00000593          	li	a1,0
    2fa4:	00048513          	mv	a0,s1
    2fa8:	ffffe097          	auipc	ra,0xffffe
    2fac:	e80080e7          	jalr	-384(ra) # e28 <memset>
    2fb0:	10400713          	li	a4,260
    2fb4:	00048693          	mv	a3,s1
    2fb8:	00070613          	mv	a2,a4
    2fbc:	00090593          	mv	a1,s2
    2fc0:	00098513          	mv	a0,s3
    2fc4:	fffff097          	auipc	ra,0xfffff
    2fc8:	2dc080e7          	jalr	732(ra) # 22a0 <fatfs_split_path>
    2fcc:	fff00793          	li	a5,-1
    2fd0:	02f51a63          	bne	a0,a5,3004 <_open_file+0xb0>
    2fd4:	00040513          	mv	a0,s0
    2fd8:	fffff097          	auipc	ra,0xfffff
    2fdc:	8bc080e7          	jalr	-1860(ra) # 1894 <_free_file>
    2fe0:	00000413          	li	s0,0
    2fe4:	03c12083          	lw	ra,60(sp)
    2fe8:	00040513          	mv	a0,s0
    2fec:	03812403          	lw	s0,56(sp)
    2ff0:	03412483          	lw	s1,52(sp)
    2ff4:	03012903          	lw	s2,48(sp)
    2ff8:	02c12983          	lw	s3,44(sp)
    2ffc:	04010113          	addi	sp,sp,64
    3000:	00008067          	ret
    3004:	00040513          	mv	a0,s0
    3008:	fffff097          	auipc	ra,0xfffff
    300c:	514080e7          	jalr	1300(ra) # 251c <_check_file_open>
    3010:	fc0512e3          	bnez	a0,2fd4 <_open_file+0x80>
    3014:	01444783          	lbu	a5,20(s0)
    3018:	08079c63          	bnez	a5,30b0 <_open_file+0x15c>
    301c:	0000b7b7          	lui	a5,0xb
    3020:	ddc7a783          	lw	a5,-548(a5) # addc <_fs+0x8>
    3024:	00f42023          	sw	a5,0(s0)
    3028:	00042583          	lw	a1,0(s0)
    302c:	00048613          	mv	a2,s1
    3030:	0000b4b7          	lui	s1,0xb
    3034:	00010693          	mv	a3,sp
    3038:	dd448513          	addi	a0,s1,-556 # add4 <_fs>
    303c:	00000097          	auipc	ra,0x0
    3040:	b70080e7          	jalr	-1168(ra) # 2bac <fatfs_get_file_entry>
    3044:	f80508e3          	beqz	a0,2fd4 <_open_file+0x80>
    3048:	00b14783          	lbu	a5,11(sp)
    304c:	0207f793          	andi	a5,a5,32
    3050:	f80782e3          	beqz	a5,2fd4 <_open_file+0x80>
    3054:	00b00613          	li	a2,11
    3058:	00010593          	mv	a1,sp
    305c:	21c40513          	addi	a0,s0,540
    3060:	ffffe097          	auipc	ra,0xffffe
    3064:	de4080e7          	jalr	-540(ra) # e44 <memcpy>
    3068:	01c12783          	lw	a5,28(sp)
    306c:	01a15703          	lhu	a4,26(sp)
    3070:	00042423          	sw	zero,8(s0)
    3074:	00f42623          	sw	a5,12(s0)
    3078:	01415783          	lhu	a5,20(sp)
    307c:	42042a23          	sw	zero,1076(s0)
    3080:	00042823          	sw	zero,16(s0)
    3084:	01079793          	slli	a5,a5,0x10
    3088:	00e787b3          	add	a5,a5,a4
    308c:	00f42223          	sw	a5,4(s0)
    3090:	fff00793          	li	a5,-1
    3094:	42f42823          	sw	a5,1072(s0)
    3098:	22f42423          	sw	a5,552(s0)
    309c:	22f42623          	sw	a5,556(s0)
    30a0:	dd448513          	addi	a0,s1,-556
    30a4:	00000097          	auipc	ra,0x0
    30a8:	858080e7          	jalr	-1960(ra) # 28fc <fatfs_fat_purge>
    30ac:	f39ff06f          	j	2fe4 <_open_file+0x90>
    30b0:	00040593          	mv	a1,s0
    30b4:	00090513          	mv	a0,s2
    30b8:	00000097          	auipc	ra,0x0
    30bc:	cf0080e7          	jalr	-784(ra) # 2da8 <_open_directory>
    30c0:	f60514e3          	bnez	a0,3028 <_open_file+0xd4>
    30c4:	f11ff06f          	j	2fd4 <_open_file+0x80>

000030c8 <fatfs_sfn_exists>:
    30c8:	fe010113          	addi	sp,sp,-32
    30cc:	01212823          	sw	s2,16(sp)
    30d0:	01312623          	sw	s3,12(sp)
    30d4:	01412423          	sw	s4,8(sp)
    30d8:	01512223          	sw	s5,4(sp)
    30dc:	01612023          	sw	s6,0(sp)
    30e0:	00112e23          	sw	ra,28(sp)
    30e4:	00812c23          	sw	s0,24(sp)
    30e8:	00912a23          	sw	s1,20(sp)
    30ec:	00050993          	mv	s3,a0
    30f0:	00058a93          	mv	s5,a1
    30f4:	00060b13          	mv	s6,a2
    30f8:	00000913          	li	s2,0
    30fc:	24450a13          	addi	s4,a0,580
    3100:	00000693          	li	a3,0
    3104:	00090613          	mv	a2,s2
    3108:	000a8593          	mv	a1,s5
    310c:	00098513          	mv	a0,s3
    3110:	00000097          	auipc	ra,0x0
    3114:	94c080e7          	jalr	-1716(ra) # 2a5c <fatfs_sector_reader>
    3118:	00050413          	mv	s0,a0
    311c:	06050263          	beqz	a0,3180 <fatfs_sfn_exists+0xb8>
    3120:	00190913          	addi	s2,s2,1
    3124:	04498493          	addi	s1,s3,68
    3128:	00048513          	mv	a0,s1
    312c:	fffff097          	auipc	ra,0xfffff
    3130:	a58080e7          	jalr	-1448(ra) # 1b84 <fatfs_entry_lfn_text>
    3134:	00050863          	beqz	a0,3144 <fatfs_sfn_exists+0x7c>
    3138:	02048493          	addi	s1,s1,32
    313c:	ff4496e3          	bne	s1,s4,3128 <fatfs_sfn_exists+0x60>
    3140:	fc1ff06f          	j	3100 <fatfs_sfn_exists+0x38>
    3144:	00048513          	mv	a0,s1
    3148:	fffff097          	auipc	ra,0xfffff
    314c:	a50080e7          	jalr	-1456(ra) # 1b98 <fatfs_entry_lfn_invalid>
    3150:	fe0514e3          	bnez	a0,3138 <fatfs_sfn_exists+0x70>
    3154:	00048513          	mv	a0,s1
    3158:	fffff097          	auipc	ra,0xfffff
    315c:	ac4080e7          	jalr	-1340(ra) # 1c1c <fatfs_entry_sfn_only>
    3160:	00050413          	mv	s0,a0
    3164:	fc050ae3          	beqz	a0,3138 <fatfs_sfn_exists+0x70>
    3168:	00b00613          	li	a2,11
    316c:	000b0593          	mv	a1,s6
    3170:	00048513          	mv	a0,s1
    3174:	ffffe097          	auipc	ra,0xffffe
    3178:	d14080e7          	jalr	-748(ra) # e88 <strncmp>
    317c:	fa051ee3          	bnez	a0,3138 <fatfs_sfn_exists+0x70>
    3180:	01c12083          	lw	ra,28(sp)
    3184:	00040513          	mv	a0,s0
    3188:	01812403          	lw	s0,24(sp)
    318c:	01412483          	lw	s1,20(sp)
    3190:	01012903          	lw	s2,16(sp)
    3194:	00c12983          	lw	s3,12(sp)
    3198:	00812a03          	lw	s4,8(sp)
    319c:	00412a83          	lw	s5,4(sp)
    31a0:	00012b03          	lw	s6,0(sp)
    31a4:	02010113          	addi	sp,sp,32
    31a8:	00008067          	ret

000031ac <fatfs_update_file_length>:
    31ac:	03852783          	lw	a5,56(a0)
    31b0:	14078e63          	beqz	a5,330c <fatfs_update_file_length+0x160>
    31b4:	fd010113          	addi	sp,sp,-48
    31b8:	02912223          	sw	s1,36(sp)
    31bc:	03212023          	sw	s2,32(sp)
    31c0:	01312e23          	sw	s3,28(sp)
    31c4:	01412c23          	sw	s4,24(sp)
    31c8:	01612823          	sw	s6,16(sp)
    31cc:	01712623          	sw	s7,12(sp)
    31d0:	02112623          	sw	ra,44(sp)
    31d4:	02812423          	sw	s0,40(sp)
    31d8:	01512a23          	sw	s5,20(sp)
    31dc:	00068913          	mv	s2,a3
    31e0:	00060b93          	mv	s7,a2
    31e4:	00058b13          	mv	s6,a1
    31e8:	00050493          	mv	s1,a0
    31ec:	00000993          	li	s3,0
    31f0:	24450a13          	addi	s4,a0,580
    31f4:	00000693          	li	a3,0
    31f8:	00098613          	mv	a2,s3
    31fc:	000b0593          	mv	a1,s6
    3200:	00048513          	mv	a0,s1
    3204:	00000097          	auipc	ra,0x0
    3208:	858080e7          	jalr	-1960(ra) # 2a5c <fatfs_sector_reader>
    320c:	0c050863          	beqz	a0,32dc <fatfs_update_file_length+0x130>
    3210:	04448413          	addi	s0,s1,68
    3214:	00198993          	addi	s3,s3,1
    3218:	00040a93          	mv	s5,s0
    321c:	00040513          	mv	a0,s0
    3220:	fffff097          	auipc	ra,0xfffff
    3224:	964080e7          	jalr	-1692(ra) # 1b84 <fatfs_entry_lfn_text>
    3228:	0a051463          	bnez	a0,32d0 <fatfs_update_file_length+0x124>
    322c:	00040513          	mv	a0,s0
    3230:	fffff097          	auipc	ra,0xfffff
    3234:	968080e7          	jalr	-1688(ra) # 1b98 <fatfs_entry_lfn_invalid>
    3238:	08051c63          	bnez	a0,32d0 <fatfs_update_file_length+0x124>
    323c:	00040513          	mv	a0,s0
    3240:	fffff097          	auipc	ra,0xfffff
    3244:	9dc080e7          	jalr	-1572(ra) # 1c1c <fatfs_entry_sfn_only>
    3248:	08050463          	beqz	a0,32d0 <fatfs_update_file_length+0x124>
    324c:	00b00613          	li	a2,11
    3250:	000b8593          	mv	a1,s7
    3254:	00040513          	mv	a0,s0
    3258:	ffffe097          	auipc	ra,0xffffe
    325c:	c30080e7          	jalr	-976(ra) # e88 <strncmp>
    3260:	06051863          	bnez	a0,32d0 <fatfs_update_file_length+0x124>
    3264:	00895793          	srli	a5,s2,0x8
    3268:	01240e23          	sb	s2,28(s0)
    326c:	00f40ea3          	sb	a5,29(s0)
    3270:	01095793          	srli	a5,s2,0x10
    3274:	01895913          	srli	s2,s2,0x18
    3278:	00f40f23          	sb	a5,30(s0)
    327c:	01240fa3          	sb	s2,31(s0)
    3280:	00040593          	mv	a1,s0
    3284:	02000613          	li	a2,32
    3288:	00040513          	mv	a0,s0
    328c:	ffffe097          	auipc	ra,0xffffe
    3290:	bb8080e7          	jalr	-1096(ra) # e44 <memcpy>
    3294:	02812403          	lw	s0,40(sp)
    3298:	0384a783          	lw	a5,56(s1)
    329c:	2444a503          	lw	a0,580(s1)
    32a0:	02c12083          	lw	ra,44(sp)
    32a4:	02412483          	lw	s1,36(sp)
    32a8:	02012903          	lw	s2,32(sp)
    32ac:	01c12983          	lw	s3,28(sp)
    32b0:	01812a03          	lw	s4,24(sp)
    32b4:	01012b03          	lw	s6,16(sp)
    32b8:	00c12b83          	lw	s7,12(sp)
    32bc:	000a8593          	mv	a1,s5
    32c0:	01412a83          	lw	s5,20(sp)
    32c4:	00100613          	li	a2,1
    32c8:	03010113          	addi	sp,sp,48
    32cc:	00078067          	jr	a5
    32d0:	02040413          	addi	s0,s0,32
    32d4:	f54414e3          	bne	s0,s4,321c <fatfs_update_file_length+0x70>
    32d8:	f1dff06f          	j	31f4 <fatfs_update_file_length+0x48>
    32dc:	02c12083          	lw	ra,44(sp)
    32e0:	02812403          	lw	s0,40(sp)
    32e4:	02412483          	lw	s1,36(sp)
    32e8:	02012903          	lw	s2,32(sp)
    32ec:	01c12983          	lw	s3,28(sp)
    32f0:	01812a03          	lw	s4,24(sp)
    32f4:	01412a83          	lw	s5,20(sp)
    32f8:	01012b03          	lw	s6,16(sp)
    32fc:	00c12b83          	lw	s7,12(sp)
    3300:	00000513          	li	a0,0
    3304:	03010113          	addi	sp,sp,48
    3308:	00008067          	ret
    330c:	00000513          	li	a0,0
    3310:	00008067          	ret

00003314 <fatfs_list_directory_next>:
    3314:	ec010113          	addi	sp,sp,-320
    3318:	13212823          	sw	s2,304(sp)
    331c:	13312623          	sw	s3,300(sp)
    3320:	13412423          	sw	s4,296(sp)
    3324:	13512223          	sw	s5,292(sp)
    3328:	13612023          	sw	s6,288(sp)
    332c:	12112e23          	sw	ra,316(sp)
    3330:	12812c23          	sw	s0,312(sp)
    3334:	12912a23          	sw	s1,308(sp)
    3338:	00050a13          	mv	s4,a0
    333c:	00058913          	mv	s2,a1
    3340:	00060993          	mv	s3,a2
    3344:	10010ea3          	sb	zero,285(sp)
    3348:	04450a93          	addi	s5,a0,68
    334c:	00f00b13          	li	s6,15
    3350:	00092603          	lw	a2,0(s2)
    3354:	00492583          	lw	a1,4(s2)
    3358:	00000693          	li	a3,0
    335c:	000a0513          	mv	a0,s4
    3360:	fffff097          	auipc	ra,0xfffff
    3364:	6fc080e7          	jalr	1788(ra) # 2a5c <fatfs_sector_reader>
    3368:	10050c63          	beqz	a0,3480 <fatfs_list_directory_next+0x16c>
    336c:	00894483          	lbu	s1,8(s2)
    3370:	00549413          	slli	s0,s1,0x5
    3374:	008a8433          	add	s0,s5,s0
    3378:	009b7c63          	bgeu	s6,s1,3390 <fatfs_list_directory_next+0x7c>
    337c:	00092783          	lw	a5,0(s2)
    3380:	00090423          	sb	zero,8(s2)
    3384:	00178793          	addi	a5,a5,1
    3388:	00f92023          	sw	a5,0(s2)
    338c:	fc5ff06f          	j	3350 <fatfs_list_directory_next+0x3c>
    3390:	00040513          	mv	a0,s0
    3394:	ffffe097          	auipc	ra,0xffffe
    3398:	7f0080e7          	jalr	2032(ra) # 1b84 <fatfs_entry_lfn_text>
    339c:	02050263          	beqz	a0,33c0 <fatfs_list_directory_next+0xac>
    33a0:	00040593          	mv	a1,s0
    33a4:	01810513          	addi	a0,sp,24
    33a8:	ffffe097          	auipc	ra,0xffffe
    33ac:	6d4080e7          	jalr	1748(ra) # 1a7c <fatfs_lfn_cache_entry>
    33b0:	00148493          	addi	s1,s1,1
    33b4:	0ff4f493          	zext.b	s1,s1
    33b8:	02040413          	addi	s0,s0,32
    33bc:	fbdff06f          	j	3378 <fatfs_list_directory_next+0x64>
    33c0:	00040513          	mv	a0,s0
    33c4:	ffffe097          	auipc	ra,0xffffe
    33c8:	7d4080e7          	jalr	2004(ra) # 1b98 <fatfs_entry_lfn_invalid>
    33cc:	00050663          	beqz	a0,33d8 <fatfs_list_directory_next+0xc4>
    33d0:	10010ea3          	sb	zero,285(sp)
    33d4:	fddff06f          	j	33b0 <fatfs_list_directory_next+0x9c>
    33d8:	00040593          	mv	a1,s0
    33dc:	01810513          	addi	a0,sp,24
    33e0:	ffffe097          	auipc	ra,0xffffe
    33e4:	7ec080e7          	jalr	2028(ra) # 1bcc <fatfs_entry_lfn_exists>
    33e8:	0c050063          	beqz	a0,34a8 <fatfs_list_directory_next+0x194>
    33ec:	01810513          	addi	a0,sp,24
    33f0:	ffffe097          	auipc	ra,0xffffe
    33f4:	758080e7          	jalr	1880(ra) # 1b48 <fatfs_lfn_cache_get>
    33f8:	00050593          	mv	a1,a0
    33fc:	10300613          	li	a2,259
    3400:	00098513          	mv	a0,s3
    3404:	ffffe097          	auipc	ra,0xffffe
    3408:	ac4080e7          	jalr	-1340(ra) # ec8 <strncpy>
    340c:	00040513          	mv	a0,s0
    3410:	fffff097          	auipc	ra,0xfffff
    3414:	84c080e7          	jalr	-1972(ra) # 1c5c <fatfs_entry_is_dir>
    3418:	10a98223          	sb	a0,260(s3)
    341c:	01d44783          	lbu	a5,29(s0)
    3420:	01c44703          	lbu	a4,28(s0)
    3424:	00148493          	addi	s1,s1,1
    3428:	00879793          	slli	a5,a5,0x8
    342c:	00e7e7b3          	or	a5,a5,a4
    3430:	01e44703          	lbu	a4,30(s0)
    3434:	00100513          	li	a0,1
    3438:	01071713          	slli	a4,a4,0x10
    343c:	00f76733          	or	a4,a4,a5
    3440:	01f44783          	lbu	a5,31(s0)
    3444:	01879793          	slli	a5,a5,0x18
    3448:	00e7e7b3          	or	a5,a5,a4
    344c:	10f9a623          	sw	a5,268(s3)
    3450:	01544783          	lbu	a5,21(s0)
    3454:	01444703          	lbu	a4,20(s0)
    3458:	01a44683          	lbu	a3,26(s0)
    345c:	00879793          	slli	a5,a5,0x8
    3460:	00e7e7b3          	or	a5,a5,a4
    3464:	01b44703          	lbu	a4,27(s0)
    3468:	01079793          	slli	a5,a5,0x10
    346c:	00871713          	slli	a4,a4,0x8
    3470:	00d76733          	or	a4,a4,a3
    3474:	00e7e7b3          	or	a5,a5,a4
    3478:	10f9a423          	sw	a5,264(s3)
    347c:	00990423          	sb	s1,8(s2)
    3480:	13c12083          	lw	ra,316(sp)
    3484:	13812403          	lw	s0,312(sp)
    3488:	13412483          	lw	s1,308(sp)
    348c:	13012903          	lw	s2,304(sp)
    3490:	12c12983          	lw	s3,300(sp)
    3494:	12812a03          	lw	s4,296(sp)
    3498:	12412a83          	lw	s5,292(sp)
    349c:	12012b03          	lw	s6,288(sp)
    34a0:	14010113          	addi	sp,sp,320
    34a4:	00008067          	ret
    34a8:	00040513          	mv	a0,s0
    34ac:	ffffe097          	auipc	ra,0xffffe
    34b0:	770080e7          	jalr	1904(ra) # 1c1c <fatfs_entry_sfn_only>
    34b4:	ee050ee3          	beqz	a0,33b0 <fatfs_list_directory_next+0x9c>
    34b8:	00810a13          	addi	s4,sp,8
    34bc:	00d00613          	li	a2,13
    34c0:	00000593          	li	a1,0
    34c4:	000a0513          	mv	a0,s4
    34c8:	10010ea3          	sb	zero,285(sp)
    34cc:	ffffe097          	auipc	ra,0xffffe
    34d0:	95c080e7          	jalr	-1700(ra) # e28 <memset>
    34d4:	00000793          	li	a5,0
    34d8:	00800713          	li	a4,8
    34dc:	00f40633          	add	a2,s0,a5
    34e0:	00064603          	lbu	a2,0(a2)
    34e4:	00fa06b3          	add	a3,s4,a5
    34e8:	00178793          	addi	a5,a5,1
    34ec:	00c68023          	sb	a2,0(a3)
    34f0:	fee796e3          	bne	a5,a4,34dc <fatfs_list_directory_next+0x1c8>
    34f4:	00844783          	lbu	a5,8(s0)
    34f8:	00944703          	lbu	a4,9(s0)
    34fc:	00a44683          	lbu	a3,10(s0)
    3500:	00f108a3          	sb	a5,17(sp)
    3504:	00e10923          	sb	a4,18(sp)
    3508:	fe078793          	addi	a5,a5,-32
    350c:	fe070713          	addi	a4,a4,-32
    3510:	00f037b3          	snez	a5,a5
    3514:	00e03733          	snez	a4,a4
    3518:	00d109a3          	sb	a3,19(sp)
    351c:	00e7e7b3          	or	a5,a5,a4
    3520:	00079863          	bnez	a5,3530 <fatfs_list_directory_next+0x21c>
    3524:	fe068693          	addi	a3,a3,-32
    3528:	02000793          	li	a5,32
    352c:	00068a63          	beqz	a3,3540 <fatfs_list_directory_next+0x22c>
    3530:	00814703          	lbu	a4,8(sp)
    3534:	02e00793          	li	a5,46
    3538:	00f71463          	bne	a4,a5,3540 <fatfs_list_directory_next+0x22c>
    353c:	02000793          	li	a5,32
    3540:	000a0593          	mv	a1,s4
    3544:	00098513          	mv	a0,s3
    3548:	00f10823          	sb	a5,16(sp)
    354c:	fffff097          	auipc	ra,0xfffff
    3550:	054080e7          	jalr	84(ra) # 25a0 <fatfs_get_sfn_display_name>
    3554:	eb9ff06f          	j	340c <fatfs_list_directory_next+0xf8>

00003558 <fl_readdir>:
    3558:	000057b7          	lui	a5,0x5
    355c:	c507a783          	lw	a5,-944(a5) # 4c50 <_filelib_init>
    3560:	fd010113          	addi	sp,sp,-48
    3564:	03212023          	sw	s2,32(sp)
    3568:	01312e23          	sw	s3,28(sp)
    356c:	02112623          	sw	ra,44(sp)
    3570:	02812423          	sw	s0,40(sp)
    3574:	02912223          	sw	s1,36(sp)
    3578:	00050913          	mv	s2,a0
    357c:	00058993          	mv	s3,a1
    3580:	00079663          	bnez	a5,358c <fl_readdir+0x34>
    3584:	ffffe097          	auipc	ra,0xffffe
    3588:	488080e7          	jalr	1160(ra) # 1a0c <fl_init>
    358c:	0000b4b7          	lui	s1,0xb
    3590:	dd448413          	addi	s0,s1,-556 # add4 <_fs>
    3594:	03c42783          	lw	a5,60(s0)
    3598:	00078463          	beqz	a5,35a0 <fl_readdir+0x48>
    359c:	000780e7          	jalr	a5
    35a0:	00098613          	mv	a2,s3
    35a4:	00090593          	mv	a1,s2
    35a8:	dd448513          	addi	a0,s1,-556
    35ac:	00000097          	auipc	ra,0x0
    35b0:	d68080e7          	jalr	-664(ra) # 3314 <fatfs_list_directory_next>
    35b4:	04042783          	lw	a5,64(s0)
    35b8:	00078863          	beqz	a5,35c8 <fl_readdir+0x70>
    35bc:	00a12623          	sw	a0,12(sp)
    35c0:	000780e7          	jalr	a5
    35c4:	00c12503          	lw	a0,12(sp)
    35c8:	02c12083          	lw	ra,44(sp)
    35cc:	02812403          	lw	s0,40(sp)
    35d0:	00154513          	xori	a0,a0,1
    35d4:	02412483          	lw	s1,36(sp)
    35d8:	02012903          	lw	s2,32(sp)
    35dc:	01c12983          	lw	s3,28(sp)
    35e0:	40a00533          	neg	a0,a0
    35e4:	03010113          	addi	sp,sp,48
    35e8:	00008067          	ret

000035ec <_read_sectors>:
    35ec:	fd010113          	addi	sp,sp,-48
    35f0:	01512a23          	sw	s5,20(sp)
    35f4:	0000bab7          	lui	s5,0xb
    35f8:	01312e23          	sw	s3,28(sp)
    35fc:	dd4ac983          	lbu	s3,-556(s5) # add4 <_fs>
    3600:	01612823          	sw	s6,16(sp)
    3604:	00058b13          	mv	s6,a1
    3608:	02912223          	sw	s1,36(sp)
    360c:	00098593          	mv	a1,s3
    3610:	00050493          	mv	s1,a0
    3614:	000b0513          	mv	a0,s6
    3618:	02112623          	sw	ra,44(sp)
    361c:	02812423          	sw	s0,40(sp)
    3620:	01412c23          	sw	s4,24(sp)
    3624:	00068413          	mv	s0,a3
    3628:	01712623          	sw	s7,12(sp)
    362c:	01812423          	sw	s8,8(sp)
    3630:	03212023          	sw	s2,32(sp)
    3634:	00060c13          	mv	s8,a2
    3638:	ffffd097          	auipc	ra,0xffffd
    363c:	744080e7          	jalr	1860(ra) # d7c <__udivsi3>
    3640:	00050a13          	mv	s4,a0
    3644:	00098593          	mv	a1,s3
    3648:	000b0513          	mv	a0,s6
    364c:	ffffd097          	auipc	ra,0xffffd
    3650:	778080e7          	jalr	1912(ra) # dc4 <__umodsi3>
    3654:	00a407b3          	add	a5,s0,a0
    3658:	00050b93          	mv	s7,a0
    365c:	00f9fe63          	bgeu	s3,a5,3678 <_read_sectors+0x8c>
    3660:	000a0593          	mv	a1,s4
    3664:	00098513          	mv	a0,s3
    3668:	ffffe097          	auipc	ra,0xffffe
    366c:	f10080e7          	jalr	-240(ra) # 1578 <__mulsi3>
    3670:	416987b3          	sub	a5,s3,s6
    3674:	00f50433          	add	s0,a0,a5
    3678:	2284a903          	lw	s2,552(s1)
    367c:	07491863          	bne	s2,s4,36ec <_read_sectors+0x100>
    3680:	22c4a583          	lw	a1,556(s1)
    3684:	fff00793          	li	a5,-1
    3688:	02f58663          	beq	a1,a5,36b4 <_read_sectors+0xc8>
    368c:	dd4a8513          	addi	a0,s5,-556
    3690:	ffffe097          	auipc	ra,0xffffe
    3694:	24c080e7          	jalr	588(ra) # 18dc <fatfs_lba_of_cluster>
    3698:	017505b3          	add	a1,a0,s7
    369c:	00040693          	mv	a3,s0
    36a0:	000c0613          	mv	a2,s8
    36a4:	dd4a8513          	addi	a0,s5,-556
    36a8:	ffffe097          	auipc	ra,0xffffe
    36ac:	280080e7          	jalr	640(ra) # 1928 <fatfs_sector_read>
    36b0:	00051463          	bnez	a0,36b8 <_read_sectors+0xcc>
    36b4:	00000413          	li	s0,0
    36b8:	02c12083          	lw	ra,44(sp)
    36bc:	00040513          	mv	a0,s0
    36c0:	02812403          	lw	s0,40(sp)
    36c4:	02412483          	lw	s1,36(sp)
    36c8:	02012903          	lw	s2,32(sp)
    36cc:	01c12983          	lw	s3,28(sp)
    36d0:	01812a03          	lw	s4,24(sp)
    36d4:	01412a83          	lw	s5,20(sp)
    36d8:	01012b03          	lw	s6,16(sp)
    36dc:	00c12b83          	lw	s7,12(sp)
    36e0:	00812c03          	lw	s8,8(sp)
    36e4:	03010113          	addi	sp,sp,48
    36e8:	00008067          	ret
    36ec:	033b6463          	bltu	s6,s3,3714 <_read_sectors+0x128>
    36f0:	00190793          	addi	a5,s2,1
    36f4:	03479063          	bne	a5,s4,3714 <_read_sectors+0x128>
    36f8:	22c4a583          	lw	a1,556(s1)
    36fc:	03496263          	bltu	s2,s4,3720 <_read_sectors+0x134>
    3700:	fff00793          	li	a5,-1
    3704:	faf588e3          	beq	a1,a5,36b4 <_read_sectors+0xc8>
    3708:	22b4a623          	sw	a1,556(s1)
    370c:	2344a423          	sw	s4,552(s1)
    3710:	f7dff06f          	j	368c <_read_sectors+0xa0>
    3714:	0044a583          	lw	a1,4(s1)
    3718:	00000913          	li	s2,0
    371c:	fe1ff06f          	j	36fc <_read_sectors+0x110>
    3720:	dd4a8513          	addi	a0,s5,-556
    3724:	fffff097          	auipc	ra,0xfffff
    3728:	230080e7          	jalr	560(ra) # 2954 <fatfs_find_next_cluster>
    372c:	00050593          	mv	a1,a0
    3730:	00190913          	addi	s2,s2,1
    3734:	fc9ff06f          	j	36fc <_read_sectors+0x110>

00003738 <fatfs_set_fs_info_next_free_cluster>:
    3738:	03052783          	lw	a5,48(a0)
    373c:	0a078463          	beqz	a5,37e4 <fatfs_set_fs_info_next_free_cluster+0xac>
    3740:	fe010113          	addi	sp,sp,-32
    3744:	01c52783          	lw	a5,28(a0)
    3748:	00912a23          	sw	s1,20(sp)
    374c:	00058493          	mv	s1,a1
    3750:	01855583          	lhu	a1,24(a0)
    3754:	00812c23          	sw	s0,24(sp)
    3758:	00112e23          	sw	ra,28(sp)
    375c:	00f585b3          	add	a1,a1,a5
    3760:	00050413          	mv	s0,a0
    3764:	ffffe097          	auipc	ra,0xffffe
    3768:	fcc080e7          	jalr	-52(ra) # 1730 <fatfs_fat_read_sector>
    376c:	00050593          	mv	a1,a0
    3770:	06050063          	beqz	a0,37d0 <fatfs_set_fs_info_next_free_cluster+0x98>
    3774:	20852783          	lw	a5,520(a0)
    3778:	0084d713          	srli	a4,s1,0x8
    377c:	00100613          	li	a2,1
    3780:	1e978623          	sb	s1,492(a5)
    3784:	20852783          	lw	a5,520(a0)
    3788:	1ee786a3          	sb	a4,493(a5)
    378c:	20852783          	lw	a5,520(a0)
    3790:	0104d713          	srli	a4,s1,0x10
    3794:	1ee78723          	sb	a4,494(a5)
    3798:	20852783          	lw	a5,520(a0)
    379c:	0184d713          	srli	a4,s1,0x18
    37a0:	1ee787a3          	sb	a4,495(a5)
    37a4:	03842783          	lw	a5,56(s0)
    37a8:	20c52223          	sw	a2,516(a0)
    37ac:	02942223          	sw	s1,36(s0)
    37b0:	00078a63          	beqz	a5,37c4 <fatfs_set_fs_info_next_free_cluster+0x8c>
    37b4:	20052503          	lw	a0,512(a0)
    37b8:	00b12623          	sw	a1,12(sp)
    37bc:	000780e7          	jalr	a5
    37c0:	00c12583          	lw	a1,12(sp)
    37c4:	fff00793          	li	a5,-1
    37c8:	20f5a023          	sw	a5,512(a1)
    37cc:	2005a223          	sw	zero,516(a1)
    37d0:	01c12083          	lw	ra,28(sp)
    37d4:	01812403          	lw	s0,24(sp)
    37d8:	01412483          	lw	s1,20(sp)
    37dc:	02010113          	addi	sp,sp,32
    37e0:	00008067          	ret
    37e4:	00008067          	ret

000037e8 <fatfs_find_blank_cluster>:
    37e8:	fd010113          	addi	sp,sp,-48
    37ec:	01312e23          	sw	s3,28(sp)
    37f0:	100009b7          	lui	s3,0x10000
    37f4:	02912223          	sw	s1,36(sp)
    37f8:	03212023          	sw	s2,32(sp)
    37fc:	02112623          	sw	ra,44(sp)
    3800:	02812423          	sw	s0,40(sp)
    3804:	00050913          	mv	s2,a0
    3808:	00058493          	mv	s1,a1
    380c:	fff98993          	addi	s3,s3,-1 # fffffff <__stacktop+0xffeffff>
    3810:	03092783          	lw	a5,48(s2)
    3814:	0074d413          	srli	s0,s1,0x7
    3818:	00079463          	bnez	a5,3820 <fatfs_find_blank_cluster+0x38>
    381c:	0084d413          	srli	s0,s1,0x8
    3820:	02092783          	lw	a5,32(s2)
    3824:	0cf47863          	bgeu	s0,a5,38f4 <fatfs_find_blank_cluster+0x10c>
    3828:	01492583          	lw	a1,20(s2)
    382c:	00090513          	mv	a0,s2
    3830:	00c12623          	sw	a2,12(sp)
    3834:	00b405b3          	add	a1,s0,a1
    3838:	ffffe097          	auipc	ra,0xffffe
    383c:	ef8080e7          	jalr	-264(ra) # 1730 <fatfs_fat_read_sector>
    3840:	0a050a63          	beqz	a0,38f4 <fatfs_find_blank_cluster+0x10c>
    3844:	03092783          	lw	a5,48(s2)
    3848:	20852703          	lw	a4,520(a0)
    384c:	00c12603          	lw	a2,12(sp)
    3850:	04079a63          	bnez	a5,38a4 <fatfs_find_blank_cluster+0xbc>
    3854:	00841413          	slli	s0,s0,0x8
    3858:	40848433          	sub	s0,s1,s0
    385c:	00141413          	slli	s0,s0,0x1
    3860:	01041413          	slli	s0,s0,0x10
    3864:	01045413          	srli	s0,s0,0x10
    3868:	00870733          	add	a4,a4,s0
    386c:	00174783          	lbu	a5,1(a4)
    3870:	00074703          	lbu	a4,0(a4)
    3874:	00879793          	slli	a5,a5,0x8
    3878:	00e787b3          	add	a5,a5,a4
    387c:	06079863          	bnez	a5,38ec <fatfs_find_blank_cluster+0x104>
    3880:	00962023          	sw	s1,0(a2)
    3884:	00100513          	li	a0,1
    3888:	02c12083          	lw	ra,44(sp)
    388c:	02812403          	lw	s0,40(sp)
    3890:	02412483          	lw	s1,36(sp)
    3894:	02012903          	lw	s2,32(sp)
    3898:	01c12983          	lw	s3,28(sp)
    389c:	03010113          	addi	sp,sp,48
    38a0:	00008067          	ret
    38a4:	00741413          	slli	s0,s0,0x7
    38a8:	40848433          	sub	s0,s1,s0
    38ac:	00241413          	slli	s0,s0,0x2
    38b0:	01041413          	slli	s0,s0,0x10
    38b4:	01045413          	srli	s0,s0,0x10
    38b8:	00870733          	add	a4,a4,s0
    38bc:	00374783          	lbu	a5,3(a4)
    38c0:	00274683          	lbu	a3,2(a4)
    38c4:	01879793          	slli	a5,a5,0x18
    38c8:	01069693          	slli	a3,a3,0x10
    38cc:	00d787b3          	add	a5,a5,a3
    38d0:	00074683          	lbu	a3,0(a4)
    38d4:	00174703          	lbu	a4,1(a4)
    38d8:	00d787b3          	add	a5,a5,a3
    38dc:	00871713          	slli	a4,a4,0x8
    38e0:	00e787b3          	add	a5,a5,a4
    38e4:	0137f7b3          	and	a5,a5,s3
    38e8:	f95ff06f          	j	387c <fatfs_find_blank_cluster+0x94>
    38ec:	00148493          	addi	s1,s1,1
    38f0:	f21ff06f          	j	3810 <fatfs_find_blank_cluster+0x28>
    38f4:	00000513          	li	a0,0
    38f8:	f91ff06f          	j	3888 <fatfs_find_blank_cluster+0xa0>

000038fc <fatfs_fat_set_cluster>:
    38fc:	03052783          	lw	a5,48(a0)
    3900:	fe010113          	addi	sp,sp,-32
    3904:	00812c23          	sw	s0,24(sp)
    3908:	00912a23          	sw	s1,20(sp)
    390c:	01212823          	sw	s2,16(sp)
    3910:	00112e23          	sw	ra,28(sp)
    3914:	00050913          	mv	s2,a0
    3918:	00058413          	mv	s0,a1
    391c:	0085d493          	srli	s1,a1,0x8
    3920:	00078463          	beqz	a5,3928 <fatfs_fat_set_cluster+0x2c>
    3924:	0075d493          	srli	s1,a1,0x7
    3928:	01492583          	lw	a1,20(s2)
    392c:	00090513          	mv	a0,s2
    3930:	00c12623          	sw	a2,12(sp)
    3934:	00b485b3          	add	a1,s1,a1
    3938:	ffffe097          	auipc	ra,0xffffe
    393c:	df8080e7          	jalr	-520(ra) # 1730 <fatfs_fat_read_sector>
    3940:	00050793          	mv	a5,a0
    3944:	00000513          	li	a0,0
    3948:	04078663          	beqz	a5,3994 <fatfs_fat_set_cluster+0x98>
    394c:	03092683          	lw	a3,48(s2)
    3950:	2087a703          	lw	a4,520(a5)
    3954:	00c12603          	lw	a2,12(sp)
    3958:	04069a63          	bnez	a3,39ac <fatfs_fat_set_cluster+0xb0>
    395c:	00849493          	slli	s1,s1,0x8
    3960:	40940433          	sub	s0,s0,s1
    3964:	00141413          	slli	s0,s0,0x1
    3968:	01041413          	slli	s0,s0,0x10
    396c:	01045413          	srli	s0,s0,0x10
    3970:	00870733          	add	a4,a4,s0
    3974:	00c70023          	sb	a2,0(a4)
    3978:	2087a703          	lw	a4,520(a5)
    397c:	00865613          	srli	a2,a2,0x8
    3980:	00870733          	add	a4,a4,s0
    3984:	00c700a3          	sb	a2,1(a4)
    3988:	00100713          	li	a4,1
    398c:	20e7a223          	sw	a4,516(a5)
    3990:	00100513          	li	a0,1
    3994:	01c12083          	lw	ra,28(sp)
    3998:	01812403          	lw	s0,24(sp)
    399c:	01412483          	lw	s1,20(sp)
    39a0:	01012903          	lw	s2,16(sp)
    39a4:	02010113          	addi	sp,sp,32
    39a8:	00008067          	ret
    39ac:	00749493          	slli	s1,s1,0x7
    39b0:	40940433          	sub	s0,s0,s1
    39b4:	00241413          	slli	s0,s0,0x2
    39b8:	01041413          	slli	s0,s0,0x10
    39bc:	01045413          	srli	s0,s0,0x10
    39c0:	00870733          	add	a4,a4,s0
    39c4:	00c70023          	sb	a2,0(a4)
    39c8:	2087a703          	lw	a4,520(a5)
    39cc:	00865693          	srli	a3,a2,0x8
    39d0:	00870733          	add	a4,a4,s0
    39d4:	00d700a3          	sb	a3,1(a4)
    39d8:	2087a703          	lw	a4,520(a5)
    39dc:	01065693          	srli	a3,a2,0x10
    39e0:	01865613          	srli	a2,a2,0x18
    39e4:	00870733          	add	a4,a4,s0
    39e8:	00d70123          	sb	a3,2(a4)
    39ec:	2087a703          	lw	a4,520(a5)
    39f0:	00870733          	add	a4,a4,s0
    39f4:	00c701a3          	sb	a2,3(a4)
    39f8:	f91ff06f          	j	3988 <fatfs_fat_set_cluster+0x8c>

000039fc <fatfs_free_cluster_chain>:
    39fc:	fe010113          	addi	sp,sp,-32
    3a00:	00812c23          	sw	s0,24(sp)
    3a04:	00912a23          	sw	s1,20(sp)
    3a08:	00112e23          	sw	ra,28(sp)
    3a0c:	01212823          	sw	s2,16(sp)
    3a10:	00050493          	mv	s1,a0
    3a14:	ffd00413          	li	s0,-3
    3a18:	fff58793          	addi	a5,a1,-1
    3a1c:	02f47063          	bgeu	s0,a5,3a3c <fatfs_free_cluster_chain+0x40>
    3a20:	01c12083          	lw	ra,28(sp)
    3a24:	01812403          	lw	s0,24(sp)
    3a28:	01412483          	lw	s1,20(sp)
    3a2c:	01012903          	lw	s2,16(sp)
    3a30:	00100513          	li	a0,1
    3a34:	02010113          	addi	sp,sp,32
    3a38:	00008067          	ret
    3a3c:	00048513          	mv	a0,s1
    3a40:	00b12623          	sw	a1,12(sp)
    3a44:	fffff097          	auipc	ra,0xfffff
    3a48:	f10080e7          	jalr	-240(ra) # 2954 <fatfs_find_next_cluster>
    3a4c:	00c12583          	lw	a1,12(sp)
    3a50:	00050913          	mv	s2,a0
    3a54:	00000613          	li	a2,0
    3a58:	00048513          	mv	a0,s1
    3a5c:	00000097          	auipc	ra,0x0
    3a60:	ea0080e7          	jalr	-352(ra) # 38fc <fatfs_fat_set_cluster>
    3a64:	00090593          	mv	a1,s2
    3a68:	fb1ff06f          	j	3a18 <fatfs_free_cluster_chain+0x1c>

00003a6c <fatfs_fat_add_cluster_to_chain>:
    3a6c:	fd010113          	addi	sp,sp,-48
    3a70:	02912223          	sw	s1,36(sp)
    3a74:	02112623          	sw	ra,44(sp)
    3a78:	02812423          	sw	s0,40(sp)
    3a7c:	03212023          	sw	s2,32(sp)
    3a80:	01312e23          	sw	s3,28(sp)
    3a84:	fff00493          	li	s1,-1
    3a88:	02959263          	bne	a1,s1,3aac <fatfs_fat_add_cluster_to_chain+0x40>
    3a8c:	00000513          	li	a0,0
    3a90:	02c12083          	lw	ra,44(sp)
    3a94:	02812403          	lw	s0,40(sp)
    3a98:	02412483          	lw	s1,36(sp)
    3a9c:	02012903          	lw	s2,32(sp)
    3aa0:	01c12983          	lw	s3,28(sp)
    3aa4:	03010113          	addi	sp,sp,48
    3aa8:	00008067          	ret
    3aac:	00050913          	mv	s2,a0
    3ab0:	00058413          	mv	s0,a1
    3ab4:	00060993          	mv	s3,a2
    3ab8:	00040593          	mv	a1,s0
    3abc:	00090513          	mv	a0,s2
    3ac0:	00812623          	sw	s0,12(sp)
    3ac4:	fffff097          	auipc	ra,0xfffff
    3ac8:	e90080e7          	jalr	-368(ra) # 2954 <fatfs_find_next_cluster>
    3acc:	00050413          	mv	s0,a0
    3ad0:	fa050ee3          	beqz	a0,3a8c <fatfs_fat_add_cluster_to_chain+0x20>
    3ad4:	00c12583          	lw	a1,12(sp)
    3ad8:	fe9510e3          	bne	a0,s1,3ab8 <fatfs_fat_add_cluster_to_chain+0x4c>
    3adc:	00098613          	mv	a2,s3
    3ae0:	00090513          	mv	a0,s2
    3ae4:	00000097          	auipc	ra,0x0
    3ae8:	e18080e7          	jalr	-488(ra) # 38fc <fatfs_fat_set_cluster>
    3aec:	00040613          	mv	a2,s0
    3af0:	00098593          	mv	a1,s3
    3af4:	00090513          	mv	a0,s2
    3af8:	00000097          	auipc	ra,0x0
    3afc:	e04080e7          	jalr	-508(ra) # 38fc <fatfs_fat_set_cluster>
    3b00:	00100513          	li	a0,1
    3b04:	f8dff06f          	j	3a90 <fatfs_fat_add_cluster_to_chain+0x24>

00003b08 <fatfs_add_free_space>:
    3b08:	02452783          	lw	a5,36(a0)
    3b0c:	fd010113          	addi	sp,sp,-48
    3b10:	02812423          	sw	s0,40(sp)
    3b14:	01312e23          	sw	s3,28(sp)
    3b18:	01412c23          	sw	s4,24(sp)
    3b1c:	0005a983          	lw	s3,0(a1)
    3b20:	01512a23          	sw	s5,20(sp)
    3b24:	00058a13          	mv	s4,a1
    3b28:	02112623          	sw	ra,44(sp)
    3b2c:	02912223          	sw	s1,36(sp)
    3b30:	03212023          	sw	s2,32(sp)
    3b34:	fff00593          	li	a1,-1
    3b38:	00050413          	mv	s0,a0
    3b3c:	00060a93          	mv	s5,a2
    3b40:	00b78663          	beq	a5,a1,3b4c <fatfs_add_free_space+0x44>
    3b44:	00000097          	auipc	ra,0x0
    3b48:	bf4080e7          	jalr	-1036(ra) # 3738 <fatfs_set_fs_info_next_free_cluster>
    3b4c:	00000493          	li	s1,0
    3b50:	03549663          	bne	s1,s5,3b7c <fatfs_add_free_space+0x74>
    3b54:	00100513          	li	a0,1
    3b58:	02c12083          	lw	ra,44(sp)
    3b5c:	02812403          	lw	s0,40(sp)
    3b60:	02412483          	lw	s1,36(sp)
    3b64:	02012903          	lw	s2,32(sp)
    3b68:	01c12983          	lw	s3,28(sp)
    3b6c:	01812a03          	lw	s4,24(sp)
    3b70:	01412a83          	lw	s5,20(sp)
    3b74:	03010113          	addi	sp,sp,48
    3b78:	00008067          	ret
    3b7c:	00842583          	lw	a1,8(s0)
    3b80:	00c10613          	addi	a2,sp,12
    3b84:	00040513          	mv	a0,s0
    3b88:	00000097          	auipc	ra,0x0
    3b8c:	c60080e7          	jalr	-928(ra) # 37e8 <fatfs_find_blank_cluster>
    3b90:	fc0504e3          	beqz	a0,3b58 <fatfs_add_free_space+0x50>
    3b94:	00c12903          	lw	s2,12(sp)
    3b98:	00098593          	mv	a1,s3
    3b9c:	00040513          	mv	a0,s0
    3ba0:	00090613          	mv	a2,s2
    3ba4:	00000097          	auipc	ra,0x0
    3ba8:	d58080e7          	jalr	-680(ra) # 38fc <fatfs_fat_set_cluster>
    3bac:	fff00613          	li	a2,-1
    3bb0:	00090593          	mv	a1,s2
    3bb4:	00040513          	mv	a0,s0
    3bb8:	00000097          	auipc	ra,0x0
    3bbc:	d44080e7          	jalr	-700(ra) # 38fc <fatfs_fat_set_cluster>
    3bc0:	00049463          	bnez	s1,3bc8 <fatfs_add_free_space+0xc0>
    3bc4:	012a2023          	sw	s2,0(s4)
    3bc8:	00148493          	addi	s1,s1,1
    3bcc:	00090993          	mv	s3,s2
    3bd0:	f81ff06f          	j	3b50 <fatfs_add_free_space+0x48>

00003bd4 <_write_sectors>:
    3bd4:	fb010113          	addi	sp,sp,-80
    3bd8:	03512a23          	sw	s5,52(sp)
    3bdc:	0000bab7          	lui	s5,0xb
    3be0:	04112623          	sw	ra,76(sp)
    3be4:	04812423          	sw	s0,72(sp)
    3be8:	04912223          	sw	s1,68(sp)
    3bec:	03412c23          	sw	s4,56(sp)
    3bf0:	03612823          	sw	s6,48(sp)
    3bf4:	03712623          	sw	s7,44(sp)
    3bf8:	03812423          	sw	s8,40(sp)
    3bfc:	03912223          	sw	s9,36(sp)
    3c00:	03a12023          	sw	s10,32(sp)
    3c04:	05212023          	sw	s2,64(sp)
    3c08:	03312e23          	sw	s3,60(sp)
    3c0c:	dd4a8b93          	addi	s7,s5,-556 # add4 <_fs>
    3c10:	000bc983          	lbu	s3,0(s7)
    3c14:	00058b13          	mv	s6,a1
    3c18:	fff00793          	li	a5,-1
    3c1c:	00098593          	mv	a1,s3
    3c20:	00050493          	mv	s1,a0
    3c24:	000b0513          	mv	a0,s6
    3c28:	00068c13          	mv	s8,a3
    3c2c:	00f12e23          	sw	a5,28(sp)
    3c30:	00060d13          	mv	s10,a2
    3c34:	ffffd097          	auipc	ra,0xffffd
    3c38:	148080e7          	jalr	328(ra) # d7c <__udivsi3>
    3c3c:	00050a13          	mv	s4,a0
    3c40:	00098593          	mv	a1,s3
    3c44:	000b0513          	mv	a0,s6
    3c48:	ffffd097          	auipc	ra,0xffffd
    3c4c:	17c080e7          	jalr	380(ra) # dc4 <__umodsi3>
    3c50:	00ac07b3          	add	a5,s8,a0
    3c54:	00050c93          	mv	s9,a0
    3c58:	000c0413          	mv	s0,s8
    3c5c:	00f9fe63          	bgeu	s3,a5,3c78 <_write_sectors+0xa4>
    3c60:	000a0593          	mv	a1,s4
    3c64:	00098513          	mv	a0,s3
    3c68:	ffffe097          	auipc	ra,0xffffe
    3c6c:	910080e7          	jalr	-1776(ra) # 1578 <__mulsi3>
    3c70:	416987b3          	sub	a5,s3,s6
    3c74:	00f50433          	add	s0,a0,a5
    3c78:	2284a903          	lw	s2,552(s1)
    3c7c:	03491a63          	bne	s2,s4,3cb0 <_write_sectors+0xdc>
    3c80:	22c4a583          	lw	a1,556(s1)
    3c84:	dd4a8513          	addi	a0,s5,-556
    3c88:	ffffe097          	auipc	ra,0xffffe
    3c8c:	c54080e7          	jalr	-940(ra) # 18dc <fatfs_lba_of_cluster>
    3c90:	019505b3          	add	a1,a0,s9
    3c94:	00040693          	mv	a3,s0
    3c98:	000d0613          	mv	a2,s10
    3c9c:	dd4a8513          	addi	a0,s5,-556
    3ca0:	ffffe097          	auipc	ra,0xffffe
    3ca4:	ca0080e7          	jalr	-864(ra) # 1940 <fatfs_sector_write>
    3ca8:	04050a63          	beqz	a0,3cfc <_write_sectors+0x128>
    3cac:	0540006f          	j	3d00 <_write_sectors+0x12c>
    3cb0:	093b6663          	bltu	s6,s3,3d3c <_write_sectors+0x168>
    3cb4:	00190793          	addi	a5,s2,1
    3cb8:	09479263          	bne	a5,s4,3d3c <_write_sectors+0x168>
    3cbc:	22c4a583          	lw	a1,556(s1)
    3cc0:	fff00b13          	li	s6,-1
    3cc4:	09496263          	bltu	s2,s4,3d48 <_write_sectors+0x174>
    3cc8:	fff00793          	li	a5,-1
    3ccc:	0af59463          	bne	a1,a5,3d74 <_write_sectors+0x1a0>
    3cd0:	000bc583          	lbu	a1,0(s7)
    3cd4:	fff58513          	addi	a0,a1,-1
    3cd8:	01850533          	add	a0,a0,s8
    3cdc:	ffffd097          	auipc	ra,0xffffd
    3ce0:	0a0080e7          	jalr	160(ra) # d7c <__udivsi3>
    3ce4:	00050613          	mv	a2,a0
    3ce8:	01c10593          	addi	a1,sp,28
    3cec:	000b8513          	mv	a0,s7
    3cf0:	00000097          	auipc	ra,0x0
    3cf4:	e18080e7          	jalr	-488(ra) # 3b08 <fatfs_add_free_space>
    3cf8:	06051c63          	bnez	a0,3d70 <_write_sectors+0x19c>
    3cfc:	00000413          	li	s0,0
    3d00:	04c12083          	lw	ra,76(sp)
    3d04:	00040513          	mv	a0,s0
    3d08:	04812403          	lw	s0,72(sp)
    3d0c:	04412483          	lw	s1,68(sp)
    3d10:	04012903          	lw	s2,64(sp)
    3d14:	03c12983          	lw	s3,60(sp)
    3d18:	03812a03          	lw	s4,56(sp)
    3d1c:	03412a83          	lw	s5,52(sp)
    3d20:	03012b03          	lw	s6,48(sp)
    3d24:	02c12b83          	lw	s7,44(sp)
    3d28:	02812c03          	lw	s8,40(sp)
    3d2c:	02412c83          	lw	s9,36(sp)
    3d30:	02012d03          	lw	s10,32(sp)
    3d34:	05010113          	addi	sp,sp,80
    3d38:	00008067          	ret
    3d3c:	0044a583          	lw	a1,4(s1)
    3d40:	00000913          	li	s2,0
    3d44:	f7dff06f          	j	3cc0 <_write_sectors+0xec>
    3d48:	dd4a8513          	addi	a0,s5,-556
    3d4c:	00b12623          	sw	a1,12(sp)
    3d50:	fffff097          	auipc	ra,0xfffff
    3d54:	c04080e7          	jalr	-1020(ra) # 2954 <fatfs_find_next_cluster>
    3d58:	00c12583          	lw	a1,12(sp)
    3d5c:	00b12e23          	sw	a1,28(sp)
    3d60:	f76508e3          	beq	a0,s6,3cd0 <_write_sectors+0xfc>
    3d64:	00190913          	addi	s2,s2,1
    3d68:	00050593          	mv	a1,a0
    3d6c:	f59ff06f          	j	3cc4 <_write_sectors+0xf0>
    3d70:	01c12583          	lw	a1,28(sp)
    3d74:	22b4a623          	sw	a1,556(s1)
    3d78:	2344a423          	sw	s4,552(s1)
    3d7c:	f09ff06f          	j	3c84 <_write_sectors+0xb0>

00003d80 <fl_fflush>:
    3d80:	000057b7          	lui	a5,0x5
    3d84:	c507a783          	lw	a5,-944(a5) # 4c50 <_filelib_init>
    3d88:	ff010113          	addi	sp,sp,-16
    3d8c:	00812423          	sw	s0,8(sp)
    3d90:	00112623          	sw	ra,12(sp)
    3d94:	00912223          	sw	s1,4(sp)
    3d98:	00050413          	mv	s0,a0
    3d9c:	00079663          	bnez	a5,3da8 <fl_fflush+0x28>
    3da0:	ffffe097          	auipc	ra,0xffffe
    3da4:	c6c080e7          	jalr	-916(ra) # 1a0c <fl_init>
    3da8:	04040663          	beqz	s0,3df4 <fl_fflush+0x74>
    3dac:	0000b4b7          	lui	s1,0xb
    3db0:	dd448493          	addi	s1,s1,-556 # add4 <_fs>
    3db4:	03c4a783          	lw	a5,60(s1)
    3db8:	00078463          	beqz	a5,3dc0 <fl_fflush+0x40>
    3dbc:	000780e7          	jalr	a5
    3dc0:	43442783          	lw	a5,1076(s0)
    3dc4:	02078263          	beqz	a5,3de8 <fl_fflush+0x68>
    3dc8:	43042583          	lw	a1,1072(s0)
    3dcc:	00100693          	li	a3,1
    3dd0:	23040613          	addi	a2,s0,560
    3dd4:	00040513          	mv	a0,s0
    3dd8:	00000097          	auipc	ra,0x0
    3ddc:	dfc080e7          	jalr	-516(ra) # 3bd4 <_write_sectors>
    3de0:	00050463          	beqz	a0,3de8 <fl_fflush+0x68>
    3de4:	42042a23          	sw	zero,1076(s0)
    3de8:	0404a783          	lw	a5,64(s1)
    3dec:	00078463          	beqz	a5,3df4 <fl_fflush+0x74>
    3df0:	000780e7          	jalr	a5
    3df4:	00c12083          	lw	ra,12(sp)
    3df8:	00812403          	lw	s0,8(sp)
    3dfc:	00412483          	lw	s1,4(sp)
    3e00:	00000513          	li	a0,0
    3e04:	01010113          	addi	sp,sp,16
    3e08:	00008067          	ret

00003e0c <fl_fclose>:
    3e0c:	000057b7          	lui	a5,0x5
    3e10:	c507a783          	lw	a5,-944(a5) # 4c50 <_filelib_init>
    3e14:	ff010113          	addi	sp,sp,-16
    3e18:	00812423          	sw	s0,8(sp)
    3e1c:	00112623          	sw	ra,12(sp)
    3e20:	00912223          	sw	s1,4(sp)
    3e24:	01212023          	sw	s2,0(sp)
    3e28:	00050413          	mv	s0,a0
    3e2c:	00079663          	bnez	a5,3e38 <fl_fclose+0x2c>
    3e30:	ffffe097          	auipc	ra,0xffffe
    3e34:	bdc080e7          	jalr	-1060(ra) # 1a0c <fl_init>
    3e38:	08040c63          	beqz	s0,3ed0 <fl_fclose+0xc4>
    3e3c:	0000b4b7          	lui	s1,0xb
    3e40:	dd448913          	addi	s2,s1,-556 # add4 <_fs>
    3e44:	03c92783          	lw	a5,60(s2)
    3e48:	00078463          	beqz	a5,3e50 <fl_fclose+0x44>
    3e4c:	000780e7          	jalr	a5
    3e50:	00040513          	mv	a0,s0
    3e54:	00000097          	auipc	ra,0x0
    3e58:	f2c080e7          	jalr	-212(ra) # 3d80 <fl_fflush>
    3e5c:	01042783          	lw	a5,16(s0)
    3e60:	00078e63          	beqz	a5,3e7c <fl_fclose+0x70>
    3e64:	00c42683          	lw	a3,12(s0)
    3e68:	00042583          	lw	a1,0(s0)
    3e6c:	21c40613          	addi	a2,s0,540
    3e70:	dd448513          	addi	a0,s1,-556
    3e74:	fffff097          	auipc	ra,0xfffff
    3e78:	338080e7          	jalr	824(ra) # 31ac <fatfs_update_file_length>
    3e7c:	fff00793          	li	a5,-1
    3e80:	42f42823          	sw	a5,1072(s0)
    3e84:	00040513          	mv	a0,s0
    3e88:	00042423          	sw	zero,8(s0)
    3e8c:	00042623          	sw	zero,12(s0)
    3e90:	00042223          	sw	zero,4(s0)
    3e94:	42042a23          	sw	zero,1076(s0)
    3e98:	00042823          	sw	zero,16(s0)
    3e9c:	ffffe097          	auipc	ra,0xffffe
    3ea0:	9f8080e7          	jalr	-1544(ra) # 1894 <_free_file>
    3ea4:	dd448513          	addi	a0,s1,-556
    3ea8:	fffff097          	auipc	ra,0xfffff
    3eac:	a54080e7          	jalr	-1452(ra) # 28fc <fatfs_fat_purge>
    3eb0:	04092783          	lw	a5,64(s2)
    3eb4:	00078e63          	beqz	a5,3ed0 <fl_fclose+0xc4>
    3eb8:	00812403          	lw	s0,8(sp)
    3ebc:	00c12083          	lw	ra,12(sp)
    3ec0:	00412483          	lw	s1,4(sp)
    3ec4:	00012903          	lw	s2,0(sp)
    3ec8:	01010113          	addi	sp,sp,16
    3ecc:	00078067          	jr	a5
    3ed0:	00c12083          	lw	ra,12(sp)
    3ed4:	00812403          	lw	s0,8(sp)
    3ed8:	00412483          	lw	s1,4(sp)
    3edc:	00012903          	lw	s2,0(sp)
    3ee0:	01010113          	addi	sp,sp,16
    3ee4:	00008067          	ret

00003ee8 <fl_fread>:
    3ee8:	000057b7          	lui	a5,0x5
    3eec:	c507a783          	lw	a5,-944(a5) # 4c50 <_filelib_init>
    3ef0:	fc010113          	addi	sp,sp,-64
    3ef4:	02812c23          	sw	s0,56(sp)
    3ef8:	03512223          	sw	s5,36(sp)
    3efc:	02112e23          	sw	ra,60(sp)
    3f00:	02912a23          	sw	s1,52(sp)
    3f04:	03212823          	sw	s2,48(sp)
    3f08:	03312623          	sw	s3,44(sp)
    3f0c:	03412423          	sw	s4,40(sp)
    3f10:	03612023          	sw	s6,32(sp)
    3f14:	01712e23          	sw	s7,28(sp)
    3f18:	01812c23          	sw	s8,24(sp)
    3f1c:	01912a23          	sw	s9,20(sp)
    3f20:	00050a93          	mv	s5,a0
    3f24:	00068413          	mv	s0,a3
    3f28:	00058513          	mv	a0,a1
    3f2c:	00079e63          	bnez	a5,3f48 <fl_fread+0x60>
    3f30:	00c12623          	sw	a2,12(sp)
    3f34:	00b12423          	sw	a1,8(sp)
    3f38:	ffffe097          	auipc	ra,0xffffe
    3f3c:	ad4080e7          	jalr	-1324(ra) # 1a0c <fl_init>
    3f40:	00c12603          	lw	a2,12(sp)
    3f44:	00812503          	lw	a0,8(sp)
    3f48:	14040e63          	beqz	s0,40a4 <fl_fread+0x1bc>
    3f4c:	140a8c63          	beqz	s5,40a4 <fl_fread+0x1bc>
    3f50:	43844783          	lbu	a5,1080(s0)
    3f54:	fff00493          	li	s1,-1
    3f58:	0017f793          	andi	a5,a5,1
    3f5c:	04078863          	beqz	a5,3fac <fl_fread+0xc4>
    3f60:	00060593          	mv	a1,a2
    3f64:	ffffd097          	auipc	ra,0xffffd
    3f68:	614080e7          	jalr	1556(ra) # 1578 <__mulsi3>
    3f6c:	00050493          	mv	s1,a0
    3f70:	02050e63          	beqz	a0,3fac <fl_fread+0xc4>
    3f74:	00842583          	lw	a1,8(s0)
    3f78:	00c42783          	lw	a5,12(s0)
    3f7c:	12f5f463          	bgeu	a1,a5,40a4 <fl_fread+0x1bc>
    3f80:	00b50733          	add	a4,a0,a1
    3f84:	00e7f463          	bgeu	a5,a4,3f8c <fl_fread+0xa4>
    3f88:	40b784b3          	sub	s1,a5,a1
    3f8c:	0095da13          	srli	s4,a1,0x9
    3f90:	1ff5f913          	andi	s2,a1,511
    3f94:	00000993          	li	s3,0
    3f98:	23040b13          	addi	s6,s0,560
    3f9c:	20000b93          	li	s7,512
    3fa0:	1ff00c13          	li	s8,511
    3fa4:	0499c063          	blt	s3,s1,3fe4 <fl_fread+0xfc>
    3fa8:	00098493          	mv	s1,s3
    3fac:	03c12083          	lw	ra,60(sp)
    3fb0:	03812403          	lw	s0,56(sp)
    3fb4:	03012903          	lw	s2,48(sp)
    3fb8:	02c12983          	lw	s3,44(sp)
    3fbc:	02812a03          	lw	s4,40(sp)
    3fc0:	02412a83          	lw	s5,36(sp)
    3fc4:	02012b03          	lw	s6,32(sp)
    3fc8:	01c12b83          	lw	s7,28(sp)
    3fcc:	01812c03          	lw	s8,24(sp)
    3fd0:	01412c83          	lw	s9,20(sp)
    3fd4:	00048513          	mv	a0,s1
    3fd8:	03412483          	lw	s1,52(sp)
    3fdc:	04010113          	addi	sp,sp,64
    3fe0:	00008067          	ret
    3fe4:	04091663          	bnez	s2,4030 <fl_fread+0x148>
    3fe8:	413486b3          	sub	a3,s1,s3
    3fec:	04dc5263          	bge	s8,a3,4030 <fl_fread+0x148>
    3ff0:	4096d693          	srai	a3,a3,0x9
    3ff4:	013a8633          	add	a2,s5,s3
    3ff8:	000a0593          	mv	a1,s4
    3ffc:	00040513          	mv	a0,s0
    4000:	fffff097          	auipc	ra,0xfffff
    4004:	5ec080e7          	jalr	1516(ra) # 35ec <_read_sectors>
    4008:	fa0500e3          	beqz	a0,3fa8 <fl_fread+0xc0>
    400c:	00951c93          	slli	s9,a0,0x9
    4010:	000c8613          	mv	a2,s9
    4014:	00aa0a33          	add	s4,s4,a0
    4018:	00842783          	lw	a5,8(s0)
    401c:	00c989b3          	add	s3,s3,a2
    4020:	00000913          	li	s2,0
    4024:	019787b3          	add	a5,a5,s9
    4028:	00f42423          	sw	a5,8(s0)
    402c:	f79ff06f          	j	3fa4 <fl_fread+0xbc>
    4030:	43042783          	lw	a5,1072(s0)
    4034:	03478e63          	beq	a5,s4,4070 <fl_fread+0x188>
    4038:	43442783          	lw	a5,1076(s0)
    403c:	00078863          	beqz	a5,404c <fl_fread+0x164>
    4040:	00040513          	mv	a0,s0
    4044:	00000097          	auipc	ra,0x0
    4048:	d3c080e7          	jalr	-708(ra) # 3d80 <fl_fflush>
    404c:	00100693          	li	a3,1
    4050:	000b0613          	mv	a2,s6
    4054:	000a0593          	mv	a1,s4
    4058:	00040513          	mv	a0,s0
    405c:	fffff097          	auipc	ra,0xfffff
    4060:	590080e7          	jalr	1424(ra) # 35ec <_read_sectors>
    4064:	f40502e3          	beqz	a0,3fa8 <fl_fread+0xc0>
    4068:	43442823          	sw	s4,1072(s0)
    406c:	42042a23          	sw	zero,1076(s0)
    4070:	412b87b3          	sub	a5,s7,s2
    4074:	41348633          	sub	a2,s1,s3
    4078:	00c7d463          	bge	a5,a2,4080 <fl_fread+0x198>
    407c:	00078613          	mv	a2,a5
    4080:	012b05b3          	add	a1,s6,s2
    4084:	013a8533          	add	a0,s5,s3
    4088:	00060c93          	mv	s9,a2
    408c:	00c12423          	sw	a2,8(sp)
    4090:	ffffd097          	auipc	ra,0xffffd
    4094:	db4080e7          	jalr	-588(ra) # e44 <memcpy>
    4098:	00812603          	lw	a2,8(sp)
    409c:	001a0a13          	addi	s4,s4,1
    40a0:	f79ff06f          	j	4018 <fl_fread+0x130>
    40a4:	fff00493          	li	s1,-1
    40a8:	f05ff06f          	j	3fac <fl_fread+0xc4>

000040ac <fatfs_allocate_free_space>:
    40ac:	fd010113          	addi	sp,sp,-48
    40b0:	02112623          	sw	ra,44(sp)
    40b4:	02812423          	sw	s0,40(sp)
    40b8:	02912223          	sw	s1,36(sp)
    40bc:	03212023          	sw	s2,32(sp)
    40c0:	01312e23          	sw	s3,28(sp)
    40c4:	01412c23          	sw	s4,24(sp)
    40c8:	01512a23          	sw	s5,20(sp)
    40cc:	02069863          	bnez	a3,40fc <fatfs_allocate_free_space+0x50>
    40d0:	00000413          	li	s0,0
    40d4:	02c12083          	lw	ra,44(sp)
    40d8:	00040513          	mv	a0,s0
    40dc:	02812403          	lw	s0,40(sp)
    40e0:	02412483          	lw	s1,36(sp)
    40e4:	02012903          	lw	s2,32(sp)
    40e8:	01c12983          	lw	s3,28(sp)
    40ec:	01812a03          	lw	s4,24(sp)
    40f0:	01412a83          	lw	s5,20(sp)
    40f4:	03010113          	addi	sp,sp,48
    40f8:	00008067          	ret
    40fc:	02452783          	lw	a5,36(a0)
    4100:	00058a13          	mv	s4,a1
    4104:	fff00593          	li	a1,-1
    4108:	00050493          	mv	s1,a0
    410c:	00068913          	mv	s2,a3
    4110:	00060993          	mv	s3,a2
    4114:	00b78663          	beq	a5,a1,4120 <fatfs_allocate_free_space+0x74>
    4118:	fffff097          	auipc	ra,0xfffff
    411c:	620080e7          	jalr	1568(ra) # 3738 <fatfs_set_fs_info_next_free_cluster>
    4120:	0004c783          	lbu	a5,0(s1)
    4124:	00090513          	mv	a0,s2
    4128:	00979a93          	slli	s5,a5,0x9
    412c:	000a8593          	mv	a1,s5
    4130:	ffffd097          	auipc	ra,0xffffd
    4134:	c4c080e7          	jalr	-948(ra) # d7c <__udivsi3>
    4138:	00050413          	mv	s0,a0
    413c:	00050593          	mv	a1,a0
    4140:	000a8513          	mv	a0,s5
    4144:	ffffd097          	auipc	ra,0xffffd
    4148:	434080e7          	jalr	1076(ra) # 1578 <__mulsi3>
    414c:	41250533          	sub	a0,a0,s2
    4150:	00a03533          	snez	a0,a0
    4154:	00a40933          	add	s2,s0,a0
    4158:	040a0463          	beqz	s4,41a0 <fatfs_allocate_free_space+0xf4>
    415c:	0084a583          	lw	a1,8(s1)
    4160:	00c10613          	addi	a2,sp,12
    4164:	00048513          	mv	a0,s1
    4168:	fffff097          	auipc	ra,0xfffff
    416c:	680080e7          	jalr	1664(ra) # 37e8 <fatfs_find_blank_cluster>
    4170:	00050413          	mv	s0,a0
    4174:	f4050ee3          	beqz	a0,40d0 <fatfs_allocate_free_space+0x24>
    4178:	00100793          	li	a5,1
    417c:	02f91663          	bne	s2,a5,41a8 <fatfs_allocate_free_space+0xfc>
    4180:	00c12903          	lw	s2,12(sp)
    4184:	fff00613          	li	a2,-1
    4188:	00048513          	mv	a0,s1
    418c:	00090593          	mv	a1,s2
    4190:	fffff097          	auipc	ra,0xfffff
    4194:	76c080e7          	jalr	1900(ra) # 38fc <fatfs_fat_set_cluster>
    4198:	0129a023          	sw	s2,0(s3)
    419c:	f39ff06f          	j	40d4 <fatfs_allocate_free_space+0x28>
    41a0:	0009a783          	lw	a5,0(s3)
    41a4:	00f12623          	sw	a5,12(sp)
    41a8:	00090613          	mv	a2,s2
    41ac:	00c10593          	addi	a1,sp,12
    41b0:	00048513          	mv	a0,s1
    41b4:	00000097          	auipc	ra,0x0
    41b8:	954080e7          	jalr	-1708(ra) # 3b08 <fatfs_add_free_space>
    41bc:	00050413          	mv	s0,a0
    41c0:	f15ff06f          	j	40d4 <fatfs_allocate_free_space+0x28>

000041c4 <fatfs_add_file_entry>:
    41c4:	03852883          	lw	a7,56(a0)
    41c8:	30088e63          	beqz	a7,44e4 <fatfs_add_file_entry+0x320>
    41cc:	f8010113          	addi	sp,sp,-128
    41d0:	06812c23          	sw	s0,120(sp)
    41d4:	00050413          	mv	s0,a0
    41d8:	00060513          	mv	a0,a2
    41dc:	06912a23          	sw	s1,116(sp)
    41e0:	07512223          	sw	s5,100(sp)
    41e4:	00f12c23          	sw	a5,24(sp)
    41e8:	00e12a23          	sw	a4,20(sp)
    41ec:	06112e23          	sw	ra,124(sp)
    41f0:	07212823          	sw	s2,112(sp)
    41f4:	07312623          	sw	s3,108(sp)
    41f8:	07412423          	sw	s4,104(sp)
    41fc:	07612023          	sw	s6,96(sp)
    4200:	05712e23          	sw	s7,92(sp)
    4204:	05812c23          	sw	s8,88(sp)
    4208:	05912a23          	sw	s9,84(sp)
    420c:	05a12823          	sw	s10,80(sp)
    4210:	05b12623          	sw	s11,76(sp)
    4214:	01012e23          	sw	a6,28(sp)
    4218:	00068a93          	mv	s5,a3
    421c:	00c12823          	sw	a2,16(sp)
    4220:	00b12423          	sw	a1,8(sp)
    4224:	ffffe097          	auipc	ra,0xffffe
    4228:	a48080e7          	jalr	-1464(ra) # 1c6c <fatfs_lfn_entries_required>
    422c:	00150713          	addi	a4,a0,1
    4230:	00100793          	li	a5,1
    4234:	00050493          	mv	s1,a0
    4238:	2ae7f263          	bgeu	a5,a4,44dc <fatfs_add_file_entry+0x318>
    423c:	00000a13          	li	s4,0
    4240:	00000993          	li	s3,0
    4244:	00000913          	li	s2,0
    4248:	00000c93          	li	s9,0
    424c:	00000b13          	li	s6,0
    4250:	01000c13          	li	s8,16
    4254:	00812583          	lw	a1,8(sp)
    4258:	00000693          	li	a3,0
    425c:	000b0613          	mv	a2,s6
    4260:	00040513          	mv	a0,s0
    4264:	000b0b93          	mv	s7,s6
    4268:	ffffe097          	auipc	ra,0xffffe
    426c:	7f4080e7          	jalr	2036(ra) # 2a5c <fatfs_sector_reader>
    4270:	18050463          	beqz	a0,43f8 <fatfs_add_file_entry+0x234>
    4274:	001b0b13          	addi	s6,s6,1
    4278:	04440793          	addi	a5,s0,68
    427c:	000c8d13          	mv	s10,s9
    4280:	00000d93          	li	s11,0
    4284:	00078513          	mv	a0,a5
    4288:	00f12623          	sw	a5,12(sp)
    428c:	ffffe097          	auipc	ra,0xffffe
    4290:	8f8080e7          	jalr	-1800(ra) # 1b84 <fatfs_entry_lfn_text>
    4294:	00c12783          	lw	a5,12(sp)
    4298:	00050c93          	mv	s9,a0
    429c:	02050c63          	beqz	a0,42d4 <fatfs_add_file_entry+0x110>
    42a0:	020d0463          	beqz	s10,42c8 <fatfs_add_file_entry+0x104>
    42a4:	00090c93          	mv	s9,s2
    42a8:	000c8913          	mv	s2,s9
    42ac:	001d0c93          	addi	s9,s10,1
    42b0:	001d8d93          	addi	s11,s11,1
    42b4:	0ffdfd93          	zext.b	s11,s11
    42b8:	02078793          	addi	a5,a5,32
    42bc:	f98d8ce3          	beq	s11,s8,4254 <fatfs_add_file_entry+0x90>
    42c0:	000c8d13          	mv	s10,s9
    42c4:	fc1ff06f          	j	4284 <fatfs_add_file_entry+0xc0>
    42c8:	000d8a13          	mv	s4,s11
    42cc:	000b8993          	mv	s3,s7
    42d0:	fd9ff06f          	j	42a8 <fatfs_add_file_entry+0xe4>
    42d4:	0007c683          	lbu	a3,0(a5)
    42d8:	0e500713          	li	a4,229
    42dc:	10e69863          	bne	a3,a4,43ec <fatfs_add_file_entry+0x228>
    42e0:	000d1863          	bnez	s10,42f0 <fatfs_add_file_entry+0x12c>
    42e4:	000d8a13          	mv	s4,s11
    42e8:	000b8993          	mv	s3,s7
    42ec:	00100913          	li	s2,1
    42f0:	fa9d4ee3          	blt	s10,s1,42ac <fatfs_add_file_entry+0xe8>
    42f4:	00ba8693          	addi	a3,s5,11
    42f8:	000a8713          	mv	a4,s5
    42fc:	00000913          	li	s2,0
    4300:	00074603          	lbu	a2,0(a4)
    4304:	00195793          	srli	a5,s2,0x1
    4308:	00791913          	slli	s2,s2,0x7
    430c:	012787b3          	add	a5,a5,s2
    4310:	00170713          	addi	a4,a4,1
    4314:	00c787b3          	add	a5,a5,a2
    4318:	0ff7f913          	zext.b	s2,a5
    431c:	fed712e3          	bne	a4,a3,4300 <fatfs_add_file_entry+0x13c>
    4320:	00098b13          	mv	s6,s3
    4324:	00000d13          	li	s10,0
    4328:	01000b93          	li	s7,16
    432c:	00812583          	lw	a1,8(sp)
    4330:	00000693          	li	a3,0
    4334:	000b0613          	mv	a2,s6
    4338:	00040513          	mv	a0,s0
    433c:	ffffe097          	auipc	ra,0xffffe
    4340:	720080e7          	jalr	1824(ra) # 2a5c <fatfs_sector_reader>
    4344:	18050c63          	beqz	a0,44dc <fatfs_add_file_entry+0x318>
    4348:	04440c93          	addi	s9,s0,68
    434c:	413b0db3          	sub	s11,s6,s3
    4350:	00000793          	li	a5,0
    4354:	00000c13          	li	s8,0
    4358:	01912623          	sw	s9,12(sp)
    435c:	000d1663          	bnez	s10,4368 <fatfs_add_file_entry+0x1a4>
    4360:	154c1863          	bne	s8,s4,44b0 <fatfs_add_file_entry+0x2ec>
    4364:	140d9663          	bnez	s11,44b0 <fatfs_add_file_entry+0x2ec>
    4368:	12049263          	bnez	s1,448c <fatfs_add_file_entry+0x2c8>
    436c:	01c12703          	lw	a4,28(sp)
    4370:	01412603          	lw	a2,20(sp)
    4374:	01812583          	lw	a1,24(sp)
    4378:	02010693          	addi	a3,sp,32
    437c:	000a8513          	mv	a0,s5
    4380:	ffffe097          	auipc	ra,0xffffe
    4384:	a30080e7          	jalr	-1488(ra) # 1db0 <fatfs_sfn_create_entry>
    4388:	02000613          	li	a2,32
    438c:	00c105b3          	add	a1,sp,a2
    4390:	000c8513          	mv	a0,s9
    4394:	ffffd097          	auipc	ra,0xffffd
    4398:	ab0080e7          	jalr	-1360(ra) # e44 <memcpy>
    439c:	03842783          	lw	a5,56(s0)
    43a0:	00c12583          	lw	a1,12(sp)
    43a4:	24442503          	lw	a0,580(s0)
    43a8:	00100613          	li	a2,1
    43ac:	000780e7          	jalr	a5
    43b0:	07c12083          	lw	ra,124(sp)
    43b4:	07812403          	lw	s0,120(sp)
    43b8:	07412483          	lw	s1,116(sp)
    43bc:	07012903          	lw	s2,112(sp)
    43c0:	06c12983          	lw	s3,108(sp)
    43c4:	06812a03          	lw	s4,104(sp)
    43c8:	06412a83          	lw	s5,100(sp)
    43cc:	06012b03          	lw	s6,96(sp)
    43d0:	05c12b83          	lw	s7,92(sp)
    43d4:	05812c03          	lw	s8,88(sp)
    43d8:	05412c83          	lw	s9,84(sp)
    43dc:	05012d03          	lw	s10,80(sp)
    43e0:	04c12d83          	lw	s11,76(sp)
    43e4:	08010113          	addi	sp,sp,128
    43e8:	00008067          	ret
    43ec:	ee068ae3          	beqz	a3,42e0 <fatfs_add_file_entry+0x11c>
    43f0:	00000913          	li	s2,0
    43f4:	ebdff06f          	j	42b0 <fatfs_add_file_entry+0xec>
    43f8:	00842583          	lw	a1,8(s0)
    43fc:	02010613          	addi	a2,sp,32
    4400:	00040513          	mv	a0,s0
    4404:	fffff097          	auipc	ra,0xfffff
    4408:	3e4080e7          	jalr	996(ra) # 37e8 <fatfs_find_blank_cluster>
    440c:	0c050863          	beqz	a0,44dc <fatfs_add_file_entry+0x318>
    4410:	02012b83          	lw	s7,32(sp)
    4414:	00812583          	lw	a1,8(sp)
    4418:	00040513          	mv	a0,s0
    441c:	000b8613          	mv	a2,s7
    4420:	fffff097          	auipc	ra,0xfffff
    4424:	64c080e7          	jalr	1612(ra) # 3a6c <fatfs_fat_add_cluster_to_chain>
    4428:	0a050a63          	beqz	a0,44dc <fatfs_add_file_entry+0x318>
    442c:	20000613          	li	a2,512
    4430:	00000593          	li	a1,0
    4434:	04440513          	addi	a0,s0,68
    4438:	ffffd097          	auipc	ra,0xffffd
    443c:	9f0080e7          	jalr	-1552(ra) # e28 <memset>
    4440:	00000c13          	li	s8,0
    4444:	00044783          	lbu	a5,0(s0)
    4448:	00fc6a63          	bltu	s8,a5,445c <fatfs_add_file_entry+0x298>
    444c:	ea0914e3          	bnez	s2,42f4 <fatfs_add_file_entry+0x130>
    4450:	000b0993          	mv	s3,s6
    4454:	00000a13          	li	s4,0
    4458:	e9dff06f          	j	42f4 <fatfs_add_file_entry+0x130>
    445c:	00000693          	li	a3,0
    4460:	000c0613          	mv	a2,s8
    4464:	000b8593          	mv	a1,s7
    4468:	00040513          	mv	a0,s0
    446c:	ffffd097          	auipc	ra,0xffffd
    4470:	4ec080e7          	jalr	1260(ra) # 1958 <fatfs_write_sector>
    4474:	06050463          	beqz	a0,44dc <fatfs_add_file_entry+0x318>
    4478:	001c0c13          	addi	s8,s8,1
    447c:	0ffc7c13          	zext.b	s8,s8
    4480:	fc5ff06f          	j	4444 <fatfs_add_file_entry+0x280>
    4484:	001b0b13          	addi	s6,s6,1
    4488:	ea5ff06f          	j	432c <fatfs_add_file_entry+0x168>
    448c:	01012503          	lw	a0,16(sp)
    4490:	fff48493          	addi	s1,s1,-1
    4494:	00090693          	mv	a3,s2
    4498:	00048613          	mv	a2,s1
    449c:	000c8593          	mv	a1,s9
    44a0:	ffffd097          	auipc	ra,0xffffd
    44a4:	7fc080e7          	jalr	2044(ra) # 1c9c <fatfs_filename_to_lfn>
    44a8:	00100d13          	li	s10,1
    44ac:	000d0793          	mv	a5,s10
    44b0:	001c0c13          	addi	s8,s8,1
    44b4:	0ffc7c13          	zext.b	s8,s8
    44b8:	020c8c93          	addi	s9,s9,32
    44bc:	eb7c10e3          	bne	s8,s7,435c <fatfs_add_file_entry+0x198>
    44c0:	fc0782e3          	beqz	a5,4484 <fatfs_add_file_entry+0x2c0>
    44c4:	03842783          	lw	a5,56(s0)
    44c8:	00c12583          	lw	a1,12(sp)
    44cc:	24442503          	lw	a0,580(s0)
    44d0:	00100613          	li	a2,1
    44d4:	000780e7          	jalr	a5
    44d8:	fa0516e3          	bnez	a0,4484 <fatfs_add_file_entry+0x2c0>
    44dc:	00000513          	li	a0,0
    44e0:	ed1ff06f          	j	43b0 <fatfs_add_file_entry+0x1ec>
    44e4:	00000513          	li	a0,0
    44e8:	00008067          	ret

000044ec <fl_fopen>:
    44ec:	000057b7          	lui	a5,0x5
    44f0:	c507a783          	lw	a5,-944(a5) # 4c50 <_filelib_init>
    44f4:	fa010113          	addi	sp,sp,-96
    44f8:	05212823          	sw	s2,80(sp)
    44fc:	03a12823          	sw	s10,48(sp)
    4500:	04112e23          	sw	ra,92(sp)
    4504:	04812c23          	sw	s0,88(sp)
    4508:	04912a23          	sw	s1,84(sp)
    450c:	05312623          	sw	s3,76(sp)
    4510:	05412423          	sw	s4,72(sp)
    4514:	05512223          	sw	s5,68(sp)
    4518:	05612023          	sw	s6,64(sp)
    451c:	03712e23          	sw	s7,60(sp)
    4520:	03812c23          	sw	s8,56(sp)
    4524:	03912a23          	sw	s9,52(sp)
    4528:	00050d13          	mv	s10,a0
    452c:	00058913          	mv	s2,a1
    4530:	00079663          	bnez	a5,453c <fl_fopen+0x50>
    4534:	ffffd097          	auipc	ra,0xffffd
    4538:	4d8080e7          	jalr	1240(ra) # 1a0c <fl_init>
    453c:	000057b7          	lui	a5,0x5
    4540:	c4c7a783          	lw	a5,-948(a5) # 4c4c <_filelib_valid>
    4544:	00193713          	seqz	a4,s2
    4548:	0017b793          	seqz	a5,a5
    454c:	00e7e7b3          	or	a5,a5,a4
    4550:	36079e63          	bnez	a5,48cc <fl_fopen+0x3e0>
    4554:	360d0c63          	beqz	s10,48cc <fl_fopen+0x3e0>
    4558:	00000493          	li	s1,0
    455c:	00000413          	li	s0,0
    4560:	05700993          	li	s3,87
    4564:	07200a13          	li	s4,114
    4568:	07700b13          	li	s6,119
    456c:	06100b93          	li	s7,97
    4570:	06200c13          	li	s8,98
    4574:	04100a93          	li	s5,65
    4578:	04200c93          	li	s9,66
    457c:	00090513          	mv	a0,s2
    4580:	ffffd097          	auipc	ra,0xffffd
    4584:	8e8080e7          	jalr	-1816(ra) # e68 <strlen>
    4588:	10a44a63          	blt	s0,a0,469c <fl_fopen+0x1b0>
    458c:	0000b9b7          	lui	s3,0xb
    4590:	dd498a13          	addi	s4,s3,-556 # add4 <_fs>
    4594:	038a2783          	lw	a5,56(s4)
    4598:	00079463          	bnez	a5,45a0 <fl_fopen+0xb4>
    459c:	fd94f493          	andi	s1,s1,-39
    45a0:	03ca2783          	lw	a5,60(s4)
    45a4:	00078463          	beqz	a5,45ac <fl_fopen+0xc0>
    45a8:	000780e7          	jalr	a5
    45ac:	0014f793          	andi	a5,s1,1
    45b0:	18079263          	bnez	a5,4734 <fl_fopen+0x248>
    45b4:	0204f793          	andi	a5,s1,32
    45b8:	08078c63          	beqz	a5,4650 <fl_fopen+0x164>
    45bc:	038a2783          	lw	a5,56(s4)
    45c0:	06078a63          	beqz	a5,4634 <fl_fopen+0x148>
    45c4:	ffffd097          	auipc	ra,0xffffd
    45c8:	258080e7          	jalr	600(ra) # 181c <_allocate_file>
    45cc:	00050413          	mv	s0,a0
    45d0:	06050263          	beqz	a0,4634 <fl_fopen+0x148>
    45d4:	01450a93          	addi	s5,a0,20
    45d8:	10400613          	li	a2,260
    45dc:	00000593          	li	a1,0
    45e0:	000a8513          	mv	a0,s5
    45e4:	ffffd097          	auipc	ra,0xffffd
    45e8:	844080e7          	jalr	-1980(ra) # e28 <memset>
    45ec:	11840b13          	addi	s6,s0,280
    45f0:	10400613          	li	a2,260
    45f4:	00000593          	li	a1,0
    45f8:	000b0513          	mv	a0,s6
    45fc:	ffffd097          	auipc	ra,0xffffd
    4600:	82c080e7          	jalr	-2004(ra) # e28 <memset>
    4604:	10400713          	li	a4,260
    4608:	000b0693          	mv	a3,s6
    460c:	00070613          	mv	a2,a4
    4610:	000a8593          	mv	a1,s5
    4614:	000d0513          	mv	a0,s10
    4618:	ffffe097          	auipc	ra,0xffffe
    461c:	c88080e7          	jalr	-888(ra) # 22a0 <fatfs_split_path>
    4620:	fff00793          	li	a5,-1
    4624:	12f51663          	bne	a0,a5,4750 <fl_fopen+0x264>
    4628:	00040513          	mv	a0,s0
    462c:	ffffd097          	auipc	ra,0xffffd
    4630:	268080e7          	jalr	616(ra) # 1894 <_free_file>
    4634:	00000413          	li	s0,0
    4638:	0214f793          	andi	a5,s1,33
    463c:	02000713          	li	a4,32
    4640:	28e79263          	bne	a5,a4,48c4 <fl_fopen+0x3d8>
    4644:	10041263          	bnez	s0,4748 <fl_fopen+0x25c>
    4648:	0064f793          	andi	a5,s1,6
    464c:	26079463          	bnez	a5,48b4 <fl_fopen+0x3c8>
    4650:	00000413          	li	s0,0
    4654:	040a2783          	lw	a5,64(s4)
    4658:	00078463          	beqz	a5,4660 <fl_fopen+0x174>
    465c:	000780e7          	jalr	a5
    4660:	05c12083          	lw	ra,92(sp)
    4664:	00040513          	mv	a0,s0
    4668:	05812403          	lw	s0,88(sp)
    466c:	05412483          	lw	s1,84(sp)
    4670:	05012903          	lw	s2,80(sp)
    4674:	04c12983          	lw	s3,76(sp)
    4678:	04812a03          	lw	s4,72(sp)
    467c:	04412a83          	lw	s5,68(sp)
    4680:	04012b03          	lw	s6,64(sp)
    4684:	03c12b83          	lw	s7,60(sp)
    4688:	03812c03          	lw	s8,56(sp)
    468c:	03412c83          	lw	s9,52(sp)
    4690:	03012d03          	lw	s10,48(sp)
    4694:	06010113          	addi	sp,sp,96
    4698:	00008067          	ret
    469c:	008907b3          	add	a5,s2,s0
    46a0:	0007c783          	lbu	a5,0(a5)
    46a4:	05378863          	beq	a5,s3,46f4 <fl_fopen+0x208>
    46a8:	02f9e863          	bltu	s3,a5,46d8 <fl_fopen+0x1ec>
    46ac:	05578863          	beq	a5,s5,46fc <fl_fopen+0x210>
    46b0:	00faea63          	bltu	s5,a5,46c4 <fl_fopen+0x1d8>
    46b4:	02b00713          	li	a4,43
    46b8:	04e78663          	beq	a5,a4,4704 <fl_fopen+0x218>
    46bc:	00140413          	addi	s0,s0,1
    46c0:	ebdff06f          	j	457c <fl_fopen+0x90>
    46c4:	03978263          	beq	a5,s9,46e8 <fl_fopen+0x1fc>
    46c8:	05200713          	li	a4,82
    46cc:	fee798e3          	bne	a5,a4,46bc <fl_fopen+0x1d0>
    46d0:	0014e493          	ori	s1,s1,1
    46d4:	fe9ff06f          	j	46bc <fl_fopen+0x1d0>
    46d8:	ff478ce3          	beq	a5,s4,46d0 <fl_fopen+0x1e4>
    46dc:	00fa6a63          	bltu	s4,a5,46f0 <fl_fopen+0x204>
    46e0:	01778e63          	beq	a5,s7,46fc <fl_fopen+0x210>
    46e4:	fd879ce3          	bne	a5,s8,46bc <fl_fopen+0x1d0>
    46e8:	0084e493          	ori	s1,s1,8
    46ec:	fd1ff06f          	j	46bc <fl_fopen+0x1d0>
    46f0:	fd6796e3          	bne	a5,s6,46bc <fl_fopen+0x1d0>
    46f4:	0324e493          	ori	s1,s1,50
    46f8:	fc5ff06f          	j	46bc <fl_fopen+0x1d0>
    46fc:	0264e493          	ori	s1,s1,38
    4700:	fbdff06f          	j	46bc <fl_fopen+0x1d0>
    4704:	0014f793          	andi	a5,s1,1
    4708:	00078663          	beqz	a5,4714 <fl_fopen+0x228>
    470c:	0024e493          	ori	s1,s1,2
    4710:	fadff06f          	j	46bc <fl_fopen+0x1d0>
    4714:	0024f793          	andi	a5,s1,2
    4718:	00078663          	beqz	a5,4724 <fl_fopen+0x238>
    471c:	0314e493          	ori	s1,s1,49
    4720:	f9dff06f          	j	46bc <fl_fopen+0x1d0>
    4724:	0044f793          	andi	a5,s1,4
    4728:	f8078ae3          	beqz	a5,46bc <fl_fopen+0x1d0>
    472c:	0274e493          	ori	s1,s1,39
    4730:	f8dff06f          	j	46bc <fl_fopen+0x1d0>
    4734:	000d0513          	mv	a0,s10
    4738:	fffff097          	auipc	ra,0xfffff
    473c:	81c080e7          	jalr	-2020(ra) # 2f54 <_open_file>
    4740:	00050413          	mv	s0,a0
    4744:	e60508e3          	beqz	a0,45b4 <fl_fopen+0xc8>
    4748:	42940c23          	sb	s1,1080(s0)
    474c:	f09ff06f          	j	4654 <fl_fopen+0x168>
    4750:	00040513          	mv	a0,s0
    4754:	ffffe097          	auipc	ra,0xffffe
    4758:	dc8080e7          	jalr	-568(ra) # 251c <_check_file_open>
    475c:	00050913          	mv	s2,a0
    4760:	ec0514e3          	bnez	a0,4628 <fl_fopen+0x13c>
    4764:	01444783          	lbu	a5,20(s0)
    4768:	0e079663          	bnez	a5,4854 <fl_fopen+0x368>
    476c:	008a2783          	lw	a5,8(s4)
    4770:	00f42023          	sw	a5,0(s0)
    4774:	00042583          	lw	a1,0(s0)
    4778:	01010693          	addi	a3,sp,16
    477c:	000b0613          	mv	a2,s6
    4780:	dd498513          	addi	a0,s3,-556
    4784:	ffffe097          	auipc	ra,0xffffe
    4788:	428080e7          	jalr	1064(ra) # 2bac <fatfs_get_file_entry>
    478c:	00100693          	li	a3,1
    4790:	e8d50ce3          	beq	a0,a3,4628 <fl_fopen+0x13c>
    4794:	00042223          	sw	zero,4(s0)
    4798:	00440613          	addi	a2,s0,4
    479c:	00068593          	mv	a1,a3
    47a0:	dd498513          	addi	a0,s3,-556
    47a4:	00000097          	auipc	ra,0x0
    47a8:	908080e7          	jalr	-1784(ra) # 40ac <fatfs_allocate_free_space>
    47ac:	e6050ee3          	beqz	a0,4628 <fl_fopen+0x13c>
    47b0:	00002ab7          	lui	s5,0x2
    47b4:	21c40b93          	addi	s7,s0,540
    47b8:	dd498c13          	addi	s8,s3,-556
    47bc:	70fa8a93          	addi	s5,s5,1807 # 270f <fatfs_init+0xbb>
    47c0:	000b0593          	mv	a1,s6
    47c4:	00410513          	addi	a0,sp,4
    47c8:	ffffd097          	auipc	ra,0xffffd
    47cc:	68c080e7          	jalr	1676(ra) # 1e54 <fatfs_lfn_create_sfn>
    47d0:	08090e63          	beqz	s2,486c <fl_fopen+0x380>
    47d4:	00090613          	mv	a2,s2
    47d8:	00410593          	addi	a1,sp,4
    47dc:	000b8513          	mv	a0,s7
    47e0:	ffffd097          	auipc	ra,0xffffd
    47e4:	7f0080e7          	jalr	2032(ra) # 1fd0 <fatfs_lfn_generate_tail>
    47e8:	00042583          	lw	a1,0(s0)
    47ec:	000b8613          	mv	a2,s7
    47f0:	000c0513          	mv	a0,s8
    47f4:	fffff097          	auipc	ra,0xfffff
    47f8:	8d4080e7          	jalr	-1836(ra) # 30c8 <fatfs_sfn_exists>
    47fc:	00050663          	beqz	a0,4808 <fl_fopen+0x31c>
    4800:	00190913          	addi	s2,s2,1
    4804:	fb591ee3          	bne	s2,s5,47c0 <fl_fopen+0x2d4>
    4808:	00442703          	lw	a4,4(s0)
    480c:	000027b7          	lui	a5,0x2
    4810:	70f78793          	addi	a5,a5,1807 # 270f <fatfs_init+0xbb>
    4814:	00070593          	mv	a1,a4
    4818:	02f90663          	beq	s2,a5,4844 <fl_fopen+0x358>
    481c:	00042583          	lw	a1,0(s0)
    4820:	00000813          	li	a6,0
    4824:	00000793          	li	a5,0
    4828:	000b8693          	mv	a3,s7
    482c:	000b0613          	mv	a2,s6
    4830:	dd498513          	addi	a0,s3,-556
    4834:	00000097          	auipc	ra,0x0
    4838:	990080e7          	jalr	-1648(ra) # 41c4 <fatfs_add_file_entry>
    483c:	04051463          	bnez	a0,4884 <fl_fopen+0x398>
    4840:	00442583          	lw	a1,4(s0)
    4844:	dd498513          	addi	a0,s3,-556
    4848:	fffff097          	auipc	ra,0xfffff
    484c:	1b4080e7          	jalr	436(ra) # 39fc <fatfs_free_cluster_chain>
    4850:	dd9ff06f          	j	4628 <fl_fopen+0x13c>
    4854:	00040593          	mv	a1,s0
    4858:	000a8513          	mv	a0,s5
    485c:	ffffe097          	auipc	ra,0xffffe
    4860:	54c080e7          	jalr	1356(ra) # 2da8 <_open_directory>
    4864:	f00518e3          	bnez	a0,4774 <fl_fopen+0x288>
    4868:	dc1ff06f          	j	4628 <fl_fopen+0x13c>
    486c:	00b00613          	li	a2,11
    4870:	00410593          	addi	a1,sp,4
    4874:	000b8513          	mv	a0,s7
    4878:	ffffc097          	auipc	ra,0xffffc
    487c:	5cc080e7          	jalr	1484(ra) # e44 <memcpy>
    4880:	f69ff06f          	j	47e8 <fl_fopen+0x2fc>
    4884:	fff00793          	li	a5,-1
    4888:	00042623          	sw	zero,12(s0)
    488c:	00042423          	sw	zero,8(s0)
    4890:	42f42823          	sw	a5,1072(s0)
    4894:	42042a23          	sw	zero,1076(s0)
    4898:	00042823          	sw	zero,16(s0)
    489c:	22f42423          	sw	a5,552(s0)
    48a0:	22f42623          	sw	a5,556(s0)
    48a4:	dd498513          	addi	a0,s3,-556
    48a8:	ffffe097          	auipc	ra,0xffffe
    48ac:	054080e7          	jalr	84(ra) # 28fc <fatfs_fat_purge>
    48b0:	d89ff06f          	j	4638 <fl_fopen+0x14c>
    48b4:	000d0513          	mv	a0,s10
    48b8:	ffffe097          	auipc	ra,0xffffe
    48bc:	69c080e7          	jalr	1692(ra) # 2f54 <_open_file>
    48c0:	00050413          	mv	s0,a0
    48c4:	e80412e3          	bnez	s0,4748 <fl_fopen+0x25c>
    48c8:	d89ff06f          	j	4650 <fl_fopen+0x164>
    48cc:	00000413          	li	s0,0
    48d0:	d91ff06f          	j	4660 <fl_fopen+0x174>

000048d4 <cmd16>:
    48d4:	02000050 00001500                       P.......

000048dc <acmd41>:
    48dc:	00004069 00000100                       i@......

000048e4 <cmd55>:
    48e4:	00000077 00000100                       w.......

000048ec <cmd8>:
    48ec:	01000048 000087aa                       H.......

000048f4 <cmd0>:
    48f4:	00000040 00009500                       @.......

000048fc <AUDIO>:
    48fc:	00018000                                ....

00004900 <BUTTONS>:
    4900:	00010100                                ....

00004904 <SDCARD>:
    4904:	00010080                                ....

00004908 <OLED_RST>:
    4908:	00010010                                ....

0000490c <OLED>:
    490c:	00010008                                ....

00004910 <LEDS>:
    4910:	00010004 0000002f 00006272 00000000     ..../...rb......
    4920:	756f532f 2f73646e 63696c63 61722e6b     /Sounds/click.ra
    4930:	00000077 756f532f 2f73646e 72617473     w.../Sounds/star
    4940:	2e707574 00776172 74696e69 2e2e2e20     tup.raw.init ...
    4950:	00000020 656e6f64 000a2e31 20202020      ...done1...    
    4960:	203d3d3d 6e69614d 6e654d20 3d3d2075     === Main Menu ==
    4970:	2020203d 000a0a20 0a207325 00000000     =    ...%s .....
    4980:	676d692e 00000000 2e676d69 20776172     .img....img.raw 
    4990:	20746f6e 6e756f66 000a2e64 67616d69     not found...imag
    49a0:	6f662065 2e646e75 0000000a 79616c70     e found.....play
    49b0:	20676e69 0a2e2e2e 00000000 656e6f64     ing ........done
    49c0:	45454545 00000a2e 33323130 37363534     EEEE....01234567
    49d0:	42413938 46454443 00000000 5f544146     89ABCDEF....FAT_
    49e0:	203a5346 6f727245 6f632072 20646c75     FS: Error could 
    49f0:	20746f6e 64616f6c 54414620 74656420     not load FAT det
    4a00:	736c6961 64252820 0a0d2129 00000000     ails (%d)!......

00004a10 <font>:
    4a10:	00000000 00002f00 00030000 14000003     ...../..........
    4a20:	143e143e 3a2b6a2e 08122600 171c3224     >.>..j+:.&..$2..
    4a30:	03003415 00000000 0000211e 001e2100     .4.......!...!..
    4a40:	08220000 0822081c 0000081c 00002040     .."...".....@ ..
    4a50:	00080800 00200000 20000000 02040810     ...... .... ....
    4a60:	3f21213f 003f0100 253d0000 25002725     ?!!?..?...=%%'.%
    4a70:	003f2525 3f040407 25252700 253f003d     %%?....?.'%%=.?%
    4a80:	01003d25 00030539 3f25253f 25252700     %=..9...?%%?.'%%
    4a90:	0028003f 40000000 00000028 00110a04     ?.(....@(.......
    4aa0:	00141400 0a110000 01000004 0007052d     ............-...
    4ab0:	253d213f 09093f1f 253f003f 3f003c27     ?!=%.?..?.?%'<.?
    4ac0:	00212121 1e21213f 25253f00 053f0025     !!!.?!!..?%%%.?.
    4ad0:	3f000505 003d2521 3f04043f 213f2100     ...?!%=.?..?.!?!
    4ae0:	20380000 3f013f21 003b0404 2020203f     ..8 !?.?..;.?   
    4af0:	3f013f00 023f3f01 3f003f04 003f2121     .?.?.??..?.?!!?.
    4b00:	0f09093f 31213f00 093f003f 27002f39     ?....?!1?.?.9/.'
    4b10:	003d2525 013f0101 20203f01 100f003f     %%=...?..?  ?...
    4b20:	3f001f30 3f203f20 3b04043b 38080f00     0..? ? ?;..;...8
    4b30:	2931000f 3f002325 00000021 04081020     ..1)%#.?!... ...
    4b40:	003f2102 01020000 20000201 00000020     .!?........  ...
    4b50:	00000201 24243800 243f003c 3c003c24     .....8$$<.?$$<.<
    4b60:	00242424 3f24243c 2c2c3c00 3f04002c     $$$.<$$?.<,,,..?
    4b70:	bc000005 00fca4a4 3c04043f 00003d00     ........?..<.=..
    4b80:	fd800000 3f000000 00340808 0000003f     .......?..4.?...
    4b90:	3c043c00 043c3c04 3c003c04 003c2424     .<.<.<<..<.<$$<.
    4ba0:	3c2424fc 24243c00 083c00fc 2c000004     .$$<.<$$..<....,
    4bb0:	003c2c2c 00243f04 20203c00 100c003c     ,,<..?$..<  <...
    4bc0:	3c001c30 3c203c20 34080834 a0a0bc00     0..< < <4..4....
    4bd0:	342400fc 0400242c 0000213f 0000003f     ..$4,$..?!..?...
    4be0:	043f2100 02010000 00000102 00000000     .!?.............
    4bf0:	00000001 00000003 00000005 00000007     ................
    4c00:	00000009 0000000e 00000010 00000012     ................
    4c10:	00000014 00000016 00000018 0000001c     ................
    4c20:	0000001e                                ....

00004c24 <file_count>:
    4c24:	00000000                                ....

00004c28 <sdcard_while_loading_callback>:
    4c28:	00000000                                ....

00004c2c <back_color>:
	...

00004c2d <front_color>:
    4c2d:	                                         ...

00004c30 <cursor_y>:
    4c30:	00000000                                ....

00004c34 <cursor_x>:
    4c34:	00000000                                ....

00004c38 <f_putchar>:
    4c38:	00000000                                ....

00004c3c <_free_file_list>:
	...

00004c44 <_open_file_list>:
	...

00004c4c <_filelib_valid>:
    4c4c:	00000000                                ....

00004c50 <_filelib_init>:
    4c50:	00000000                                ....
