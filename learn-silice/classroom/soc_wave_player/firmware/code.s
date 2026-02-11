
code.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <_start>:
       0:	00010137          	lui	sp,0x10
       4:	00001097          	auipc	ra,0x1
       8:	aec080e7          	jalr	-1300(ra) # af0 <main>
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

00000030 <scan_files_in_album>:
      30:	000057b7          	lui	a5,0x5
      34:	ed010113          	addi	sp,sp,-304 # fed0 <_files+0x4338>
      38:	00651513          	slli	a0,a0,0x6
      3c:	27478793          	addi	a5,a5,628 # 5274 <albums>
      40:	12812423          	sw	s0,296(sp)
      44:	00410593          	addi	a1,sp,4
      48:	00005437          	lui	s0,0x5
      4c:	00a78533          	add	a0,a5,a0
      50:	12112623          	sw	ra,300(sp)
      54:	12912223          	sw	s1,292(sp)
      58:	46042e23          	sw	zero,1148(s0) # 547c <file_count>
      5c:	00003097          	auipc	ra,0x3
      60:	438080e7          	jalr	1080(ra) # 3494 <fl_opendir>
      64:	02050a63          	beqz	a0,98 <scan_files_in_album+0x68>
      68:	01010593          	addi	a1,sp,16
      6c:	01f00493          	li	s1,31
      70:	00410513          	addi	a0,sp,4
      74:	00004097          	auipc	ra,0x4
      78:	aec080e7          	jalr	-1300(ra) # 3b60 <fl_readdir>
      7c:	00051863          	bnez	a0,8c <scan_files_in_album+0x5c>
      80:	47c42703          	lw	a4,1148(s0)
      84:	01010593          	addi	a1,sp,16
      88:	02e4d263          	bge	s1,a4,ac <scan_files_in_album+0x7c>
      8c:	00410513          	addi	a0,sp,4
      90:	00002097          	auipc	ra,0x2
      94:	fec080e7          	jalr	-20(ra) # 207c <fl_closedir>
      98:	12c12083          	lw	ra,300(sp)
      9c:	12812403          	lw	s0,296(sp)
      a0:	12412483          	lw	s1,292(sp)
      a4:	13010113          	addi	sp,sp,304
      a8:	00008067          	ret
      ac:	11414783          	lbu	a5,276(sp)
      b0:	fc0790e3          	bnez	a5,70 <scan_files_in_album+0x40>
      b4:	00671693          	slli	a3,a4,0x6
      b8:	00e68633          	add	a2,a3,a4
      bc:	000057b7          	lui	a5,0x5
      c0:	00261613          	slli	a2,a2,0x2
      c4:	4b078793          	addi	a5,a5,1200 # 54b0 <files>
      c8:	0ff00313          	li	t1,255
      cc:	00a58833          	add	a6,a1,a0
      d0:	00084883          	lbu	a7,0(a6)
      d4:	00088463          	beqz	a7,dc <scan_files_in_album+0xac>
      d8:	02651263          	bne	a0,t1,fc <scan_files_in_album+0xcc>
      dc:	00e686b3          	add	a3,a3,a4
      e0:	00269693          	slli	a3,a3,0x2
      e4:	00d787b3          	add	a5,a5,a3
      e8:	00a787b3          	add	a5,a5,a0
      ec:	00170713          	addi	a4,a4,1
      f0:	00078023          	sb	zero,0(a5)
      f4:	46e42e23          	sw	a4,1148(s0)
      f8:	f79ff06f          	j	70 <scan_files_in_album+0x40>
      fc:	00c50833          	add	a6,a0,a2
     100:	01078833          	add	a6,a5,a6
     104:	01180023          	sb	a7,0(a6)
     108:	00150513          	addi	a0,a0,1
     10c:	fc1ff06f          	j	cc <scan_files_in_album+0x9c>

00000110 <clear_audio>:
     110:	fe010113          	addi	sp,sp,-32
     114:	000057b7          	lui	a5,0x5
     118:	00812c23          	sw	s0,24(sp)
     11c:	f087a403          	lw	s0,-248(a5) # 4f08 <AUDIO>
     120:	00112e23          	sw	ra,28(sp)
     124:	00912a23          	sw	s1,20(sp)
     128:	00042703          	lw	a4,0(s0)
     12c:	01212823          	sw	s2,16(sp)
     130:	01312623          	sw	s3,12(sp)
     134:	00042783          	lw	a5,0(s0)
     138:	fef70ee3          	beq	a4,a5,134 <clear_audio+0x24>
     13c:	00200493          	li	s1,2
     140:	00100993          	li	s3,1
     144:	00042903          	lw	s2,0(s0)
     148:	20000613          	li	a2,512
     14c:	00000593          	li	a1,0
     150:	00090513          	mv	a0,s2
     154:	00001097          	auipc	ra,0x1
     158:	2dc080e7          	jalr	732(ra) # 1430 <memset>
     15c:	00042783          	lw	a5,0(s0)
     160:	fef90ee3          	beq	s2,a5,15c <clear_audio+0x4c>
     164:	03349063          	bne	s1,s3,184 <clear_audio+0x74>
     168:	01c12083          	lw	ra,28(sp)
     16c:	01812403          	lw	s0,24(sp)
     170:	01412483          	lw	s1,20(sp)
     174:	01012903          	lw	s2,16(sp)
     178:	00c12983          	lw	s3,12(sp)
     17c:	02010113          	addi	sp,sp,32
     180:	00008067          	ret
     184:	00100493          	li	s1,1
     188:	fbdff06f          	j	144 <clear_audio+0x34>

0000018c <click_sound>:
     18c:	000055b7          	lui	a1,0x5
     190:	00005537          	lui	a0,0x5
     194:	fe010113          	addi	sp,sp,-32
     198:	f2058593          	addi	a1,a1,-224 # 4f20 <LEDS+0x4>
     19c:	f2450513          	addi	a0,a0,-220 # 4f24 <LEDS+0x8>
     1a0:	00112e23          	sw	ra,28(sp)
     1a4:	00812c23          	sw	s0,24(sp)
     1a8:	00912a23          	sw	s1,20(sp)
     1ac:	01212823          	sw	s2,16(sp)
     1b0:	00005097          	auipc	ra,0x5
     1b4:	944080e7          	jalr	-1724(ra) # 4af4 <fl_fopen>
     1b8:	06050263          	beqz	a0,21c <click_sound+0x90>
     1bc:	000057b7          	lui	a5,0x5
     1c0:	f087a903          	lw	s2,-248(a5) # 4f08 <AUDIO>
     1c4:	00050693          	mv	a3,a0
     1c8:	1ff00493          	li	s1,511
     1cc:	00092403          	lw	s0,0(s2)
     1d0:	20000613          	li	a2,512
     1d4:	00100593          	li	a1,1
     1d8:	00040513          	mv	a0,s0
     1dc:	00d12623          	sw	a3,12(sp)
     1e0:	00004097          	auipc	ra,0x4
     1e4:	310080e7          	jalr	784(ra) # 44f0 <fl_fread>
     1e8:	00c12683          	lw	a3,12(sp)
     1ec:	00a05863          	blez	a0,1fc <click_sound+0x70>
     1f0:	00092783          	lw	a5,0(s2)
     1f4:	fef40ee3          	beq	s0,a5,1f0 <click_sound+0x64>
     1f8:	fca4cae3          	blt	s1,a0,1cc <click_sound+0x40>
     1fc:	01812403          	lw	s0,24(sp)
     200:	01c12083          	lw	ra,28(sp)
     204:	01412483          	lw	s1,20(sp)
     208:	01012903          	lw	s2,16(sp)
     20c:	00068513          	mv	a0,a3
     210:	02010113          	addi	sp,sp,32
     214:	00004317          	auipc	t1,0x4
     218:	20030067          	jr	512(t1) # 4414 <fl_fclose>
     21c:	01c12083          	lw	ra,28(sp)
     220:	01812403          	lw	s0,24(sp)
     224:	01412483          	lw	s1,20(sp)
     228:	01012903          	lw	s2,16(sp)
     22c:	02010113          	addi	sp,sp,32
     230:	00008067          	ret

00000234 <startup_sound>:
     234:	000055b7          	lui	a1,0x5
     238:	00005537          	lui	a0,0x5
     23c:	fe010113          	addi	sp,sp,-32
     240:	f2058593          	addi	a1,a1,-224 # 4f20 <LEDS+0x4>
     244:	f3850513          	addi	a0,a0,-200 # 4f38 <LEDS+0x1c>
     248:	00112e23          	sw	ra,28(sp)
     24c:	00812c23          	sw	s0,24(sp)
     250:	00912a23          	sw	s1,20(sp)
     254:	01212823          	sw	s2,16(sp)
     258:	00005097          	auipc	ra,0x5
     25c:	89c080e7          	jalr	-1892(ra) # 4af4 <fl_fopen>
     260:	06050263          	beqz	a0,2c4 <startup_sound+0x90>
     264:	000057b7          	lui	a5,0x5
     268:	f087a903          	lw	s2,-248(a5) # 4f08 <AUDIO>
     26c:	00050693          	mv	a3,a0
     270:	1ff00493          	li	s1,511
     274:	00092403          	lw	s0,0(s2)
     278:	20000613          	li	a2,512
     27c:	00100593          	li	a1,1
     280:	00040513          	mv	a0,s0
     284:	00d12623          	sw	a3,12(sp)
     288:	00004097          	auipc	ra,0x4
     28c:	268080e7          	jalr	616(ra) # 44f0 <fl_fread>
     290:	00c12683          	lw	a3,12(sp)
     294:	00a05863          	blez	a0,2a4 <startup_sound+0x70>
     298:	00092783          	lw	a5,0(s2)
     29c:	fef40ee3          	beq	s0,a5,298 <startup_sound+0x64>
     2a0:	fca4cae3          	blt	s1,a0,274 <startup_sound+0x40>
     2a4:	01812403          	lw	s0,24(sp)
     2a8:	01c12083          	lw	ra,28(sp)
     2ac:	01412483          	lw	s1,20(sp)
     2b0:	01012903          	lw	s2,16(sp)
     2b4:	00068513          	mv	a0,a3
     2b8:	02010113          	addi	sp,sp,32
     2bc:	00004317          	auipc	t1,0x4
     2c0:	15830067          	jr	344(t1) # 4414 <fl_fclose>
     2c4:	01c12083          	lw	ra,28(sp)
     2c8:	01812403          	lw	s0,24(sp)
     2cc:	01412483          	lw	s1,20(sp)
     2d0:	01012903          	lw	s2,16(sp)
     2d4:	02010113          	addi	sp,sp,32
     2d8:	00008067          	ret

000002dc <play_music>:
     2dc:	000055b7          	lui	a1,0x5
     2e0:	fb010113          	addi	sp,sp,-80
     2e4:	f2058593          	addi	a1,a1,-224 # 4f20 <LEDS+0x4>
     2e8:	01b12e23          	sw	s11,28(sp)
     2ec:	04112623          	sw	ra,76(sp)
     2f0:	04812423          	sw	s0,72(sp)
     2f4:	04912223          	sw	s1,68(sp)
     2f8:	05212023          	sw	s2,64(sp)
     2fc:	03312e23          	sw	s3,60(sp)
     300:	03412c23          	sw	s4,56(sp)
     304:	03512a23          	sw	s5,52(sp)
     308:	03612823          	sw	s6,48(sp)
     30c:	03712623          	sw	s7,44(sp)
     310:	03812423          	sw	s8,40(sp)
     314:	03912223          	sw	s9,36(sp)
     318:	03a12023          	sw	s10,32(sp)
     31c:	00050d93          	mv	s11,a0
     320:	00004097          	auipc	ra,0x4
     324:	7d4080e7          	jalr	2004(ra) # 4af4 <fl_fopen>
     328:	06051a63          	bnez	a0,39c <play_music+0xc0>
     32c:	00000593          	li	a1,0
     330:	00001097          	auipc	ra,0x1
     334:	3dc080e7          	jalr	988(ra) # 170c <display_set_cursor>
     338:	00000593          	li	a1,0
     33c:	0ff00513          	li	a0,255
     340:	00001097          	auipc	ra,0x1
     344:	3e0080e7          	jalr	992(ra) # 1720 <display_set_front_back_color>
     348:	00005537          	lui	a0,0x5
     34c:	000d8593          	mv	a1,s11
     350:	f4c50513          	addi	a0,a0,-180 # 4f4c <LEDS+0x30>
     354:	00001097          	auipc	ra,0x1
     358:	6f0080e7          	jalr	1776(ra) # 1a44 <printf>
     35c:	04812403          	lw	s0,72(sp)
     360:	04c12083          	lw	ra,76(sp)
     364:	04412483          	lw	s1,68(sp)
     368:	04012903          	lw	s2,64(sp)
     36c:	03c12983          	lw	s3,60(sp)
     370:	03812a03          	lw	s4,56(sp)
     374:	03412a83          	lw	s5,52(sp)
     378:	03012b03          	lw	s6,48(sp)
     37c:	02c12b83          	lw	s7,44(sp)
     380:	02812c03          	lw	s8,40(sp)
     384:	02412c83          	lw	s9,36(sp)
     388:	02012d03          	lw	s10,32(sp)
     38c:	01c12d83          	lw	s11,28(sp)
     390:	05010113          	addi	sp,sp,80
     394:	00001317          	auipc	t1,0x1
     398:	4b830067          	jr	1208(t1) # 184c <display_refresh>
     39c:	00000593          	li	a1,0
     3a0:	00050d13          	mv	s10,a0
     3a4:	00000513          	li	a0,0
     3a8:	00001097          	auipc	ra,0x1
     3ac:	364080e7          	jalr	868(ra) # 170c <display_set_cursor>
     3b0:	0ff00593          	li	a1,255
     3b4:	00000513          	li	a0,0
     3b8:	00001097          	auipc	ra,0x1
     3bc:	368080e7          	jalr	872(ra) # 1720 <display_set_front_back_color>
     3c0:	00005b37          	lui	s6,0x5
     3c4:	000d8593          	mv	a1,s11
     3c8:	f68b0513          	addi	a0,s6,-152 # 4f68 <LEDS+0x4c>
     3cc:	00001097          	auipc	ra,0x1
     3d0:	678080e7          	jalr	1656(ra) # 1a44 <printf>
     3d4:	00001097          	auipc	ra,0x1
     3d8:	478080e7          	jalr	1144(ra) # 184c <display_refresh>
     3dc:	000057b7          	lui	a5,0x5
     3e0:	f0c7a983          	lw	s3,-244(a5) # 4f0c <BUTTONS>
     3e4:	00005c37          	lui	s8,0x5
     3e8:	00000a13          	li	s4,0
     3ec:	0009a783          	lw	a5,0(s3)
     3f0:	00100413          	li	s0,1
     3f4:	48fc2023          	sw	a5,1152(s8) # 5480 <prev_btn>
     3f8:	000057b7          	lui	a5,0x5
     3fc:	f087a783          	lw	a5,-248(a5) # 4f08 <AUDIO>
     400:	00f12023          	sw	a5,0(sp)
     404:	000057b7          	lui	a5,0x5
     408:	f1c7a783          	lw	a5,-228(a5) # 4f1c <LEDS>
     40c:	00f12423          	sw	a5,8(sp)
     410:	000057b7          	lui	a5,0x5
     414:	f7878793          	addi	a5,a5,-136 # 4f78 <LEDS+0x5c>
     418:	00f12623          	sw	a5,12(sp)
     41c:	00012783          	lw	a5,0(sp)
     420:	000d0693          	mv	a3,s10
     424:	20000613          	li	a2,512
     428:	0007ab83          	lw	s7,0(a5)
     42c:	00100593          	li	a1,1
     430:	000b8513          	mv	a0,s7
     434:	00004097          	auipc	ra,0x4
     438:	0bc080e7          	jalr	188(ra) # 44f0 <fl_fread>
     43c:	00050a93          	mv	s5,a0
     440:	0aa05263          	blez	a0,4e4 <play_music+0x208>
     444:	000057b7          	lui	a5,0x5
     448:	f8478793          	addi	a5,a5,-124 # 4f84 <LEDS+0x68>
     44c:	00f12223          	sw	a5,4(sp)
     450:	00012783          	lw	a5,0(sp)
     454:	0007a783          	lw	a5,0(a5)
     458:	00fb8863          	beq	s7,a5,468 <play_music+0x18c>
     45c:	1ff00793          	li	a5,511
     460:	fb57cee3          	blt	a5,s5,41c <play_music+0x140>
     464:	0800006f          	j	4e4 <play_music+0x208>
     468:	00000593          	li	a1,0
     46c:	00000513          	li	a0,0
     470:	0009a903          	lw	s2,0(s3)
     474:	00001097          	auipc	ra,0x1
     478:	298080e7          	jalr	664(ra) # 170c <display_set_cursor>
     47c:	0ff00593          	li	a1,255
     480:	00000513          	li	a0,0
     484:	00001097          	auipc	ra,0x1
     488:	29c080e7          	jalr	668(ra) # 1720 <display_set_front_back_color>
     48c:	000d8593          	mv	a1,s11
     490:	f68b0513          	addi	a0,s6,-152
     494:	00001097          	auipc	ra,0x1
     498:	5b0080e7          	jalr	1456(ra) # 1a44 <printf>
     49c:	00001097          	auipc	ra,0x1
     4a0:	3b0080e7          	jalr	944(ra) # 184c <display_refresh>
     4a4:	f8040493          	addi	s1,s0,-128
     4a8:	fff40793          	addi	a5,s0,-1
     4ac:	0014b493          	seqz	s1,s1
     4b0:	0017b793          	seqz	a5,a5
     4b4:	00f4e4b3          	or	s1,s1,a5
     4b8:	089a0063          	beq	s4,s1,538 <play_music+0x25c>
     4bc:	00141413          	slli	s0,s0,0x1
     4c0:	00812783          	lw	a5,8(sp)
     4c4:	0087a023          	sw	s0,0(a5)
     4c8:	00297793          	andi	a5,s2,2
     4cc:	06078a63          	beqz	a5,540 <play_music+0x264>
     4d0:	480c2783          	lw	a5,1152(s8)
     4d4:	0027f793          	andi	a5,a5,2
     4d8:	06079463          	bnez	a5,540 <play_music+0x264>
     4dc:	00000097          	auipc	ra,0x0
     4e0:	cb0080e7          	jalr	-848(ra) # 18c <click_sound>
     4e4:	000d0513          	mv	a0,s10
     4e8:	00004097          	auipc	ra,0x4
     4ec:	f2c080e7          	jalr	-212(ra) # 4414 <fl_fclose>
     4f0:	000057b7          	lui	a5,0x5
     4f4:	f1c7a783          	lw	a5,-228(a5) # 4f1c <LEDS>
     4f8:	04c12083          	lw	ra,76(sp)
     4fc:	04812403          	lw	s0,72(sp)
     500:	0007a023          	sw	zero,0(a5)
     504:	04412483          	lw	s1,68(sp)
     508:	04012903          	lw	s2,64(sp)
     50c:	03c12983          	lw	s3,60(sp)
     510:	03812a03          	lw	s4,56(sp)
     514:	03412a83          	lw	s5,52(sp)
     518:	03012b03          	lw	s6,48(sp)
     51c:	02c12b83          	lw	s7,44(sp)
     520:	02812c03          	lw	s8,40(sp)
     524:	02412c83          	lw	s9,36(sp)
     528:	02012d03          	lw	s10,32(sp)
     52c:	01c12d83          	lw	s11,28(sp)
     530:	05010113          	addi	sp,sp,80
     534:	00008067          	ret
     538:	40145413          	srai	s0,s0,0x1
     53c:	f85ff06f          	j	4c0 <play_music+0x1e4>
     540:	00497793          	andi	a5,s2,4
     544:	08078a63          	beqz	a5,5d8 <play_music+0x2fc>
     548:	480c2783          	lw	a5,1152(s8)
     54c:	0047f793          	andi	a5,a5,4
     550:	08079463          	bnez	a5,5d8 <play_music+0x2fc>
     554:	00000097          	auipc	ra,0x0
     558:	c38080e7          	jalr	-968(ra) # 18c <click_sound>
     55c:	00001097          	auipc	ra,0x1
     560:	1a4080e7          	jalr	420(ra) # 1700 <display_framebuffer>
     564:	06400613          	li	a2,100
     568:	00000593          	li	a1,0
     56c:	00001097          	auipc	ra,0x1
     570:	ec4080e7          	jalr	-316(ra) # 1430 <memset>
     574:	00000593          	li	a1,0
     578:	00000513          	li	a0,0
     57c:	00001097          	auipc	ra,0x1
     580:	190080e7          	jalr	400(ra) # 170c <display_set_cursor>
     584:	0ff00593          	li	a1,255
     588:	00000513          	li	a0,0
     58c:	00001097          	auipc	ra,0x1
     590:	194080e7          	jalr	404(ra) # 1720 <display_set_front_back_color>
     594:	00c12503          	lw	a0,12(sp)
     598:	00001097          	auipc	ra,0x1
     59c:	4ac080e7          	jalr	1196(ra) # 1a44 <printf>
     5a0:	00412503          	lw	a0,4(sp)
     5a4:	00001097          	auipc	ra,0x1
     5a8:	4a0080e7          	jalr	1184(ra) # 1a44 <printf>
     5ac:	00001097          	auipc	ra,0x1
     5b0:	2a0080e7          	jalr	672(ra) # 184c <display_refresh>
     5b4:	0009ac83          	lw	s9,0(s3)
     5b8:	004cf793          	andi	a5,s9,4
     5bc:	08078e63          	beqz	a5,658 <play_music+0x37c>
     5c0:	480c2783          	lw	a5,1152(s8)
     5c4:	0047f793          	andi	a5,a5,4
     5c8:	08079863          	bnez	a5,658 <play_music+0x37c>
     5cc:	00000097          	auipc	ra,0x0
     5d0:	bc0080e7          	jalr	-1088(ra) # 18c <click_sound>
     5d4:	499c2023          	sw	s9,1152(s8)
     5d8:	02097793          	andi	a5,s2,32
     5dc:	08078263          	beqz	a5,660 <play_music+0x384>
     5e0:	480c2783          	lw	a5,1152(s8)
     5e4:	0207f793          	andi	a5,a5,32
     5e8:	06079c63          	bnez	a5,660 <play_music+0x384>
     5ec:	00000097          	auipc	ra,0x0
     5f0:	ba0080e7          	jalr	-1120(ra) # 18c <click_sound>
     5f4:	00005437          	lui	s0,0x5
     5f8:	47442503          	lw	a0,1140(s0) # 5474 <current_track>
     5fc:	000057b7          	lui	a5,0x5
     600:	47c7a583          	lw	a1,1148(a5) # 547c <file_count>
     604:	00150513          	addi	a0,a0,1
     608:	00001097          	auipc	ra,0x1
     60c:	df8080e7          	jalr	-520(ra) # 1400 <__modsi3>
     610:	46a42a23          	sw	a0,1140(s0)
     614:	04812403          	lw	s0,72(sp)
     618:	04c12083          	lw	ra,76(sp)
     61c:	04412483          	lw	s1,68(sp)
     620:	04012903          	lw	s2,64(sp)
     624:	03c12983          	lw	s3,60(sp)
     628:	03812a03          	lw	s4,56(sp)
     62c:	03412a83          	lw	s5,52(sp)
     630:	03012b03          	lw	s6,48(sp)
     634:	02c12b83          	lw	s7,44(sp)
     638:	02812c03          	lw	s8,40(sp)
     63c:	02412c83          	lw	s9,36(sp)
     640:	01c12d83          	lw	s11,28(sp)
     644:	000d0513          	mv	a0,s10
     648:	02012d03          	lw	s10,32(sp)
     64c:	05010113          	addi	sp,sp,80
     650:	00004317          	auipc	t1,0x4
     654:	dc430067          	jr	-572(t1) # 4414 <fl_fclose>
     658:	499c2023          	sw	s9,1152(s8)
     65c:	f01ff06f          	j	55c <play_music+0x280>
     660:	04097793          	andi	a5,s2,64
     664:	02078a63          	beqz	a5,698 <play_music+0x3bc>
     668:	480c2783          	lw	a5,1152(s8)
     66c:	0407f793          	andi	a5,a5,64
     670:	02079463          	bnez	a5,698 <play_music+0x3bc>
     674:	00000097          	auipc	ra,0x0
     678:	b18080e7          	jalr	-1256(ra) # 18c <click_sound>
     67c:	00005437          	lui	s0,0x5
     680:	47442503          	lw	a0,1140(s0) # 5474 <current_track>
     684:	000057b7          	lui	a5,0x5
     688:	47c7a583          	lw	a1,1148(a5) # 547c <file_count>
     68c:	fff50513          	addi	a0,a0,-1
     690:	00b50533          	add	a0,a0,a1
     694:	f75ff06f          	j	608 <play_music+0x32c>
     698:	009a4a33          	xor	s4,s4,s1
     69c:	492c2023          	sw	s2,1152(s8)
     6a0:	db1ff06f          	j	450 <play_music+0x174>

000006a4 <select_album>:
     6a4:	000057b7          	lui	a5,0x5
     6a8:	f0c7a783          	lw	a5,-244(a5) # 4f0c <BUTTONS>
     6ac:	fd010113          	addi	sp,sp,-48
     6b0:	01512a23          	sw	s5,20(sp)
     6b4:	00078a93          	mv	s5,a5
     6b8:	0007a783          	lw	a5,0(a5)
     6bc:	03212023          	sw	s2,32(sp)
     6c0:	00005937          	lui	s2,0x5
     6c4:	48f92023          	sw	a5,1152(s2) # 5480 <prev_btn>
     6c8:	000057b7          	lui	a5,0x5
     6cc:	01712623          	sw	s7,12(sp)
     6d0:	fa078b93          	addi	s7,a5,-96 # 4fa0 <LEDS+0x84>
     6d4:	000057b7          	lui	a5,0x5
     6d8:	02812423          	sw	s0,40(sp)
     6dc:	01312e23          	sw	s3,28(sp)
     6e0:	01612823          	sw	s6,16(sp)
     6e4:	02112623          	sw	ra,44(sp)
     6e8:	02912223          	sw	s1,36(sp)
     6ec:	01412c23          	sw	s4,24(sp)
     6f0:	00000413          	li	s0,0
     6f4:	000059b7          	lui	s3,0x5
     6f8:	fb478b13          	addi	s6,a5,-76 # 4fb4 <LEDS+0x98>
     6fc:	00001097          	auipc	ra,0x1
     700:	004080e7          	jalr	4(ra) # 1700 <display_framebuffer>
     704:	00004637          	lui	a2,0x4
     708:	00000593          	li	a1,0
     70c:	00001097          	auipc	ra,0x1
     710:	d24080e7          	jalr	-732(ra) # 1430 <memset>
     714:	00000593          	li	a1,0
     718:	00000513          	li	a0,0
     71c:	00001097          	auipc	ra,0x1
     720:	ff0080e7          	jalr	-16(ra) # 170c <display_set_cursor>
     724:	0ff00593          	li	a1,255
     728:	00000513          	li	a0,0
     72c:	00001097          	auipc	ra,0x1
     730:	ff4080e7          	jalr	-12(ra) # 1720 <display_set_front_back_color>
     734:	000b8513          	mv	a0,s7
     738:	000054b7          	lui	s1,0x5
     73c:	00001097          	auipc	ra,0x1
     740:	308080e7          	jalr	776(ra) # 1a44 <printf>
     744:	27448493          	addi	s1,s1,628 # 5274 <albums>
     748:	00000a13          	li	s4,0
     74c:	edc9a783          	lw	a5,-292(s3) # 4edc <album_count>
     750:	0efa4063          	blt	s4,a5,830 <select_album+0x18c>
     754:	00001097          	auipc	ra,0x1
     758:	0f8080e7          	jalr	248(ra) # 184c <display_refresh>
     75c:	000aaa03          	lw	s4,0(s5)
     760:	010a7793          	andi	a5,s4,16
     764:	02078663          	beqz	a5,790 <select_album+0xec>
     768:	48092483          	lw	s1,1152(s2)
     76c:	0104f493          	andi	s1,s1,16
     770:	02049063          	bnez	s1,790 <select_album+0xec>
     774:	edc9a783          	lw	a5,-292(s3)
     778:	00140413          	addi	s0,s0,1
     77c:	00f45463          	bge	s0,a5,784 <select_album+0xe0>
     780:	00040493          	mv	s1,s0
     784:	00000097          	auipc	ra,0x0
     788:	a08080e7          	jalr	-1528(ra) # 18c <click_sound>
     78c:	00048413          	mv	s0,s1
     790:	008a7793          	andi	a5,s4,8
     794:	02078463          	beqz	a5,7bc <select_album+0x118>
     798:	48092783          	lw	a5,1152(s2)
     79c:	0087f793          	andi	a5,a5,8
     7a0:	00079e63          	bnez	a5,7bc <select_album+0x118>
     7a4:	fff40413          	addi	s0,s0,-1
     7a8:	00045663          	bgez	s0,7b4 <select_album+0x110>
     7ac:	edc9a403          	lw	s0,-292(s3)
     7b0:	fff40413          	addi	s0,s0,-1
     7b4:	00000097          	auipc	ra,0x0
     7b8:	9d8080e7          	jalr	-1576(ra) # 18c <click_sound>
     7bc:	004a7793          	andi	a5,s4,4
     7c0:	00100493          	li	s1,1
     7c4:	02078063          	beqz	a5,7e4 <select_album+0x140>
     7c8:	48092483          	lw	s1,1152(s2)
     7cc:	0044f493          	andi	s1,s1,4
     7d0:	08049e63          	bnez	s1,86c <select_album+0x1c8>
     7d4:	00000097          	auipc	ra,0x0
     7d8:	9b8080e7          	jalr	-1608(ra) # 18c <click_sound>
     7dc:	000057b7          	lui	a5,0x5
     7e0:	4687ac23          	sw	s0,1144(a5) # 5478 <current_album>
     7e4:	0000c537          	lui	a0,0xc
     7e8:	35050513          	addi	a0,a0,848 # c350 <_files+0x7b8>
     7ec:	49492023          	sw	s4,1152(s2)
     7f0:	00000097          	auipc	ra,0x0
     7f4:	82c080e7          	jalr	-2004(ra) # 1c <pause>
     7f8:	f00492e3          	bnez	s1,6fc <select_album+0x58>
     7fc:	02c12083          	lw	ra,44(sp)
     800:	02812403          	lw	s0,40(sp)
     804:	000057b7          	lui	a5,0x5
     808:	4787a503          	lw	a0,1144(a5) # 5478 <current_album>
     80c:	02412483          	lw	s1,36(sp)
     810:	02012903          	lw	s2,32(sp)
     814:	01c12983          	lw	s3,28(sp)
     818:	01812a03          	lw	s4,24(sp)
     81c:	01412a83          	lw	s5,20(sp)
     820:	01012b03          	lw	s6,16(sp)
     824:	00c12b83          	lw	s7,12(sp)
     828:	03010113          	addi	sp,sp,48
     82c:	00008067          	ret
     830:	028a1863          	bne	s4,s0,860 <select_album+0x1bc>
     834:	0ff00593          	li	a1,255
     838:	00000513          	li	a0,0
     83c:	00001097          	auipc	ra,0x1
     840:	ee4080e7          	jalr	-284(ra) # 1720 <display_set_front_back_color>
     844:	00048593          	mv	a1,s1
     848:	000b0513          	mv	a0,s6
     84c:	00001097          	auipc	ra,0x1
     850:	1f8080e7          	jalr	504(ra) # 1a44 <printf>
     854:	001a0a13          	addi	s4,s4,1
     858:	04048493          	addi	s1,s1,64
     85c:	ef1ff06f          	j	74c <select_album+0xa8>
     860:	00000593          	li	a1,0
     864:	0ff00513          	li	a0,255
     868:	fd5ff06f          	j	83c <select_album+0x198>
     86c:	00100493          	li	s1,1
     870:	f75ff06f          	j	7e4 <select_album+0x140>

00000874 <select_track>:
     874:	000057b7          	lui	a5,0x5
     878:	f0c7a783          	lw	a5,-244(a5) # 4f0c <BUTTONS>
     87c:	fd010113          	addi	sp,sp,-48
     880:	01612823          	sw	s6,16(sp)
     884:	00078b13          	mv	s6,a5
     888:	0007a783          	lw	a5,0(a5)
     88c:	03212023          	sw	s2,32(sp)
     890:	01412c23          	sw	s4,24(sp)
     894:	00005937          	lui	s2,0x5
     898:	00005a37          	lui	s4,0x5
     89c:	48f92023          	sw	a5,1152(s2) # 5480 <prev_btn>
     8a0:	47ca2783          	lw	a5,1148(s4) # 547c <file_count>
     8a4:	02112623          	sw	ra,44(sp)
     8a8:	02812423          	sw	s0,40(sp)
     8ac:	02912223          	sw	s1,36(sp)
     8b0:	01312e23          	sw	s3,28(sp)
     8b4:	01512a23          	sw	s5,20(sp)
     8b8:	01712623          	sw	s7,12(sp)
     8bc:	01812423          	sw	s8,8(sp)
     8c0:	12078063          	beqz	a5,9e0 <select_track+0x16c>
     8c4:	000057b7          	lui	a5,0x5
     8c8:	fd078c13          	addi	s8,a5,-48 # 4fd0 <LEDS+0xb4>
     8cc:	000057b7          	lui	a5,0x5
     8d0:	00000413          	li	s0,0
     8d4:	00005ab7          	lui	s5,0x5
     8d8:	fb478b93          	addi	s7,a5,-76 # 4fb4 <LEDS+0x98>
     8dc:	00001097          	auipc	ra,0x1
     8e0:	e24080e7          	jalr	-476(ra) # 1700 <display_framebuffer>
     8e4:	00004637          	lui	a2,0x4
     8e8:	00000593          	li	a1,0
     8ec:	00001097          	auipc	ra,0x1
     8f0:	b44080e7          	jalr	-1212(ra) # 1430 <memset>
     8f4:	00000593          	li	a1,0
     8f8:	00000513          	li	a0,0
     8fc:	00001097          	auipc	ra,0x1
     900:	e10080e7          	jalr	-496(ra) # 170c <display_set_cursor>
     904:	0ff00593          	li	a1,255
     908:	00000513          	li	a0,0
     90c:	00001097          	auipc	ra,0x1
     910:	e14080e7          	jalr	-492(ra) # 1720 <display_set_front_back_color>
     914:	000c0513          	mv	a0,s8
     918:	00001097          	auipc	ra,0x1
     91c:	12c080e7          	jalr	300(ra) # 1a44 <printf>
     920:	4b0a8993          	addi	s3,s5,1200 # 54b0 <files>
     924:	00000493          	li	s1,0
     928:	47ca2783          	lw	a5,1148(s4)
     92c:	16f4c263          	blt	s1,a5,a90 <select_track+0x21c>
     930:	00001097          	auipc	ra,0x1
     934:	f1c080e7          	jalr	-228(ra) # 184c <display_refresh>
     938:	000b2983          	lw	s3,0(s6)
     93c:	0109f793          	andi	a5,s3,16
     940:	02078663          	beqz	a5,96c <select_track+0xf8>
     944:	48092483          	lw	s1,1152(s2)
     948:	0104f493          	andi	s1,s1,16
     94c:	02049063          	bnez	s1,96c <select_track+0xf8>
     950:	47ca2783          	lw	a5,1148(s4)
     954:	00140413          	addi	s0,s0,1
     958:	00f45463          	bge	s0,a5,960 <select_track+0xec>
     95c:	00040493          	mv	s1,s0
     960:	00000097          	auipc	ra,0x0
     964:	82c080e7          	jalr	-2004(ra) # 18c <click_sound>
     968:	00048413          	mv	s0,s1
     96c:	0089f793          	andi	a5,s3,8
     970:	02078463          	beqz	a5,998 <select_track+0x124>
     974:	48092783          	lw	a5,1152(s2)
     978:	0087f793          	andi	a5,a5,8
     97c:	00079e63          	bnez	a5,998 <select_track+0x124>
     980:	fff40413          	addi	s0,s0,-1
     984:	00045663          	bgez	s0,990 <select_track+0x11c>
     988:	47ca2403          	lw	s0,1148(s4)
     98c:	fff40413          	addi	s0,s0,-1
     990:	fffff097          	auipc	ra,0xfffff
     994:	7fc080e7          	jalr	2044(ra) # 18c <click_sound>
     998:	0049f793          	andi	a5,s3,4
     99c:	00100493          	li	s1,1
     9a0:	02078063          	beqz	a5,9c0 <select_track+0x14c>
     9a4:	48092483          	lw	s1,1152(s2)
     9a8:	0044f493          	andi	s1,s1,4
     9ac:	12049063          	bnez	s1,acc <select_track+0x258>
     9b0:	fffff097          	auipc	ra,0xfffff
     9b4:	7dc080e7          	jalr	2012(ra) # 18c <click_sound>
     9b8:	000057b7          	lui	a5,0x5
     9bc:	4687aa23          	sw	s0,1140(a5) # 5474 <current_track>
     9c0:	0019f793          	andi	a5,s3,1
     9c4:	10078863          	beqz	a5,ad4 <select_track+0x260>
     9c8:	48092783          	lw	a5,1152(s2)
     9cc:	0017f793          	andi	a5,a5,1
     9d0:	10079263          	bnez	a5,ad4 <select_track+0x260>
     9d4:	fffff097          	auipc	ra,0xfffff
     9d8:	7b8080e7          	jalr	1976(ra) # 18c <click_sound>
     9dc:	07c0006f          	j	a58 <select_track+0x1e4>
     9e0:	00001097          	auipc	ra,0x1
     9e4:	d20080e7          	jalr	-736(ra) # 1700 <display_framebuffer>
     9e8:	00004637          	lui	a2,0x4
     9ec:	00000593          	li	a1,0
     9f0:	00001097          	auipc	ra,0x1
     9f4:	a40080e7          	jalr	-1472(ra) # 1430 <memset>
     9f8:	00000593          	li	a1,0
     9fc:	00000513          	li	a0,0
     a00:	00001097          	auipc	ra,0x1
     a04:	d0c080e7          	jalr	-756(ra) # 170c <display_set_cursor>
     a08:	00000593          	li	a1,0
     a0c:	0ff00513          	li	a0,255
     a10:	00001097          	auipc	ra,0x1
     a14:	d10080e7          	jalr	-752(ra) # 1720 <display_set_front_back_color>
     a18:	000057b7          	lui	a5,0x5
     a1c:	4787a783          	lw	a5,1144(a5) # 5478 <current_album>
     a20:	000055b7          	lui	a1,0x5
     a24:	27458593          	addi	a1,a1,628 # 5274 <albums>
     a28:	00679793          	slli	a5,a5,0x6
     a2c:	00005537          	lui	a0,0x5
     a30:	00f585b3          	add	a1,a1,a5
     a34:	fb850513          	addi	a0,a0,-72 # 4fb8 <LEDS+0x9c>
     a38:	00001097          	auipc	ra,0x1
     a3c:	00c080e7          	jalr	12(ra) # 1a44 <printf>
     a40:	00001097          	auipc	ra,0x1
     a44:	e0c080e7          	jalr	-500(ra) # 184c <display_refresh>
     a48:	001e8537          	lui	a0,0x1e8
     a4c:	48050513          	addi	a0,a0,1152 # 1e8480 <__stacktop+0x1d8480>
     a50:	fffff097          	auipc	ra,0xfffff
     a54:	5cc080e7          	jalr	1484(ra) # 1c <pause>
     a58:	fff00413          	li	s0,-1
     a5c:	02c12083          	lw	ra,44(sp)
     a60:	00040513          	mv	a0,s0
     a64:	02812403          	lw	s0,40(sp)
     a68:	02412483          	lw	s1,36(sp)
     a6c:	02012903          	lw	s2,32(sp)
     a70:	01c12983          	lw	s3,28(sp)
     a74:	01812a03          	lw	s4,24(sp)
     a78:	01412a83          	lw	s5,20(sp)
     a7c:	01012b03          	lw	s6,16(sp)
     a80:	00c12b83          	lw	s7,12(sp)
     a84:	00812c03          	lw	s8,8(sp)
     a88:	03010113          	addi	sp,sp,48
     a8c:	00008067          	ret
     a90:	02849863          	bne	s1,s0,ac0 <select_track+0x24c>
     a94:	0ff00593          	li	a1,255
     a98:	00000513          	li	a0,0
     a9c:	00001097          	auipc	ra,0x1
     aa0:	c84080e7          	jalr	-892(ra) # 1720 <display_set_front_back_color>
     aa4:	00098593          	mv	a1,s3
     aa8:	000b8513          	mv	a0,s7
     aac:	00001097          	auipc	ra,0x1
     ab0:	f98080e7          	jalr	-104(ra) # 1a44 <printf>
     ab4:	00148493          	addi	s1,s1,1
     ab8:	10498993          	addi	s3,s3,260
     abc:	e6dff06f          	j	928 <select_track+0xb4>
     ac0:	00000593          	li	a1,0
     ac4:	0ff00513          	li	a0,255
     ac8:	fd5ff06f          	j	a9c <select_track+0x228>
     acc:	00100493          	li	s1,1
     ad0:	ef1ff06f          	j	9c0 <select_track+0x14c>
     ad4:	0000c537          	lui	a0,0xc
     ad8:	35050513          	addi	a0,a0,848 # c350 <_files+0x7b8>
     adc:	49392023          	sw	s3,1152(s2)
     ae0:	fffff097          	auipc	ra,0xfffff
     ae4:	53c080e7          	jalr	1340(ra) # 1c <pause>
     ae8:	de049ae3          	bnez	s1,8dc <select_track+0x68>
     aec:	f71ff06f          	j	a5c <select_track+0x1e8>

00000af0 <main>:
     af0:	000017b7          	lui	a5,0x1
     af4:	fd010113          	addi	sp,sp,-48
     af8:	00005737          	lui	a4,0x5
     afc:	73478793          	addi	a5,a5,1844 # 1734 <display_putchar>
     b00:	02112623          	sw	ra,44(sp)
     b04:	48f72a23          	sw	a5,1172(a4) # 5494 <f_putchar>
     b08:	02812423          	sw	s0,40(sp)
     b0c:	02912223          	sw	s1,36(sp)
     b10:	03212023          	sw	s2,32(sp)
     b14:	01312e23          	sw	s3,28(sp)
     b18:	01412c23          	sw	s4,24(sp)
     b1c:	01512a23          	sw	s5,20(sp)
     b20:	01612823          	sw	s6,16(sp)
     b24:	01712623          	sw	s7,12(sp)
     b28:	01812423          	sw	s8,8(sp)
     b2c:	01912223          	sw	s9,4(sp)
     b30:	00001097          	auipc	ra,0x1
     b34:	b0c080e7          	jalr	-1268(ra) # 163c <oled_init>
     b38:	00001097          	auipc	ra,0x1
     b3c:	b10080e7          	jalr	-1264(ra) # 1648 <oled_fullscreen>
     b40:	00001097          	auipc	ra,0x1
     b44:	bc0080e7          	jalr	-1088(ra) # 1700 <display_framebuffer>
     b48:	00004637          	lui	a2,0x4
     b4c:	00000593          	li	a1,0
     b50:	00001097          	auipc	ra,0x1
     b54:	8e0080e7          	jalr	-1824(ra) # 1430 <memset>
     b58:	00001097          	auipc	ra,0x1
     b5c:	cf4080e7          	jalr	-780(ra) # 184c <display_refresh>
     b60:	00000593          	li	a1,0
     b64:	00000513          	li	a0,0
     b68:	00001097          	auipc	ra,0x1
     b6c:	ba4080e7          	jalr	-1116(ra) # 170c <display_set_cursor>
     b70:	00000593          	li	a1,0
     b74:	0ff00513          	li	a0,255
     b78:	00001097          	auipc	ra,0x1
     b7c:	ba8080e7          	jalr	-1112(ra) # 1720 <display_set_front_back_color>
     b80:	00005537          	lui	a0,0x5
     b84:	fe450513          	addi	a0,a0,-28 # 4fe4 <LEDS+0xc8>
     b88:	00001097          	auipc	ra,0x1
     b8c:	ebc080e7          	jalr	-324(ra) # 1a44 <printf>
     b90:	000014b7          	lui	s1,0x1
     b94:	00001437          	lui	s0,0x1
     b98:	00001097          	auipc	ra,0x1
     b9c:	cb4080e7          	jalr	-844(ra) # 184c <display_refresh>
     ba0:	37448493          	addi	s1,s1,884 # 1374 <sdcard_writesector>
     ba4:	00000097          	auipc	ra,0x0
     ba8:	62c080e7          	jalr	1580(ra) # 11d0 <sdcard_init>
     bac:	32040413          	addi	s0,s0,800 # 1320 <sdcard_readsector>
     bb0:	00001097          	auipc	ra,0x1
     bb4:	464080e7          	jalr	1124(ra) # 2014 <fl_init>
     bb8:	00048593          	mv	a1,s1
     bbc:	00040513          	mv	a0,s0
     bc0:	00002097          	auipc	ra,0x2
     bc4:	2bc080e7          	jalr	700(ra) # 2e7c <fl_attach_media>
     bc8:	fe0518e3          	bnez	a0,bb8 <main+0xc8>
     bcc:	00005537          	lui	a0,0x5
     bd0:	ff050513          	addi	a0,a0,-16 # 4ff0 <LEDS+0xd4>
     bd4:	00001097          	auipc	ra,0x1
     bd8:	e70080e7          	jalr	-400(ra) # 1a44 <printf>
     bdc:	00001097          	auipc	ra,0x1
     be0:	c70080e7          	jalr	-912(ra) # 184c <display_refresh>
     be4:	fffff097          	auipc	ra,0xfffff
     be8:	650080e7          	jalr	1616(ra) # 234 <startup_sound>
     bec:	fffff097          	auipc	ra,0xfffff
     bf0:	524080e7          	jalr	1316(ra) # 110 <clear_audio>
     bf4:	000057b7          	lui	a5,0x5
     bf8:	ff878c13          	addi	s8,a5,-8 # 4ff8 <LEDS+0xdc>
     bfc:	000057b7          	lui	a5,0x5
     c00:	f2078c93          	addi	s9,a5,-224 # 4f20 <LEDS+0x4>
     c04:	000057b7          	lui	a5,0x5
     c08:	f0c7ab03          	lw	s6,-244(a5) # 4f0c <BUTTONS>
     c0c:	000074b7          	lui	s1,0x7
     c10:	00005937          	lui	s2,0x5
     c14:	53048493          	addi	s1,s1,1328 # 7530 <tmp1>
     c18:	27490913          	addi	s2,s2,628 # 5274 <albums>
     c1c:	00005a37          	lui	s4,0x5
     c20:	00000097          	auipc	ra,0x0
     c24:	a84080e7          	jalr	-1404(ra) # 6a4 <select_album>
     c28:	478a2503          	lw	a0,1144(s4) # 5478 <current_album>
     c2c:	fffff097          	auipc	ra,0xfffff
     c30:	404080e7          	jalr	1028(ra) # 30 <scan_files_in_album>
     c34:	00000097          	auipc	ra,0x0
     c38:	c40080e7          	jalr	-960(ra) # 874 <select_track>
     c3c:	fe0542e3          	bltz	a0,c20 <main+0x130>
     c40:	478a2583          	lw	a1,1144(s4)
     c44:	00005ab7          	lui	s5,0x5
     c48:	46aaaa23          	sw	a0,1140(s5) # 5474 <current_track>
     c4c:	00659593          	slli	a1,a1,0x6
     c50:	00b905b3          	add	a1,s2,a1
     c54:	00048513          	mv	a0,s1
     c58:	00048023          	sb	zero,0(s1)
     c5c:	00001097          	auipc	ra,0x1
     c60:	898080e7          	jalr	-1896(ra) # 14f4 <strcat>
     c64:	000c0593          	mv	a1,s8
     c68:	00048513          	mv	a0,s1
     c6c:	00001097          	auipc	ra,0x1
     c70:	888080e7          	jalr	-1912(ra) # 14f4 <strcat>
     c74:	000c8593          	mv	a1,s9
     c78:	00048513          	mv	a0,s1
     c7c:	00004097          	auipc	ra,0x4
     c80:	e78080e7          	jalr	-392(ra) # 4af4 <fl_fopen>
     c84:	00050413          	mv	s0,a0
     c88:	02050a63          	beqz	a0,cbc <main+0x1cc>
     c8c:	00001097          	auipc	ra,0x1
     c90:	a74080e7          	jalr	-1420(ra) # 1700 <display_framebuffer>
     c94:	00040693          	mv	a3,s0
     c98:	00004637          	lui	a2,0x4
     c9c:	00100593          	li	a1,1
     ca0:	00004097          	auipc	ra,0x4
     ca4:	850080e7          	jalr	-1968(ra) # 44f0 <fl_fread>
     ca8:	00001097          	auipc	ra,0x1
     cac:	ba4080e7          	jalr	-1116(ra) # 184c <display_refresh>
     cb0:	00040513          	mv	a0,s0
     cb4:	00003097          	auipc	ra,0x3
     cb8:	760080e7          	jalr	1888(ra) # 4414 <fl_fclose>
     cbc:	fffff097          	auipc	ra,0xfffff
     cc0:	454080e7          	jalr	1108(ra) # 110 <clear_audio>
     cc4:	00007437          	lui	s0,0x7
     cc8:	000057b7          	lui	a5,0x5
     ccc:	000059b7          	lui	s3,0x5
     cd0:	63040413          	addi	s0,s0,1584 # 7630 <tmp>
     cd4:	01478b93          	addi	s7,a5,20 # 5014 <LEDS+0xf8>
     cd8:	4b098993          	addi	s3,s3,1200 # 54b0 <files>
     cdc:	478a2583          	lw	a1,1144(s4)
     ce0:	00040513          	mv	a0,s0
     ce4:	00040023          	sb	zero,0(s0)
     ce8:	00659593          	slli	a1,a1,0x6
     cec:	00b905b3          	add	a1,s2,a1
     cf0:	00001097          	auipc	ra,0x1
     cf4:	804080e7          	jalr	-2044(ra) # 14f4 <strcat>
     cf8:	000b8593          	mv	a1,s7
     cfc:	00040513          	mv	a0,s0
     d00:	00000097          	auipc	ra,0x0
     d04:	7f4080e7          	jalr	2036(ra) # 14f4 <strcat>
     d08:	474aa783          	lw	a5,1140(s5)
     d0c:	00040513          	mv	a0,s0
     d10:	00679593          	slli	a1,a5,0x6
     d14:	00f585b3          	add	a1,a1,a5
     d18:	00259593          	slli	a1,a1,0x2
     d1c:	00b985b3          	add	a1,s3,a1
     d20:	00000097          	auipc	ra,0x0
     d24:	7d4080e7          	jalr	2004(ra) # 14f4 <strcat>
     d28:	00040513          	mv	a0,s0
     d2c:	fffff097          	auipc	ra,0xfffff
     d30:	5b0080e7          	jalr	1456(ra) # 2dc <play_music>
     d34:	000b2783          	lw	a5,0(s6)
     d38:	0027f793          	andi	a5,a5,2
     d3c:	fa0780e3          	beqz	a5,cdc <main+0x1ec>
     d40:	00001097          	auipc	ra,0x1
     d44:	9c0080e7          	jalr	-1600(ra) # 1700 <display_framebuffer>
     d48:	00004637          	lui	a2,0x4
     d4c:	00000593          	li	a1,0
     d50:	00000097          	auipc	ra,0x0
     d54:	6e0080e7          	jalr	1760(ra) # 1430 <memset>
     d58:	00000593          	li	a1,0
     d5c:	00000513          	li	a0,0
     d60:	00001097          	auipc	ra,0x1
     d64:	9ac080e7          	jalr	-1620(ra) # 170c <display_set_cursor>
     d68:	00000593          	li	a1,0
     d6c:	0ff00513          	li	a0,255
     d70:	00001097          	auipc	ra,0x1
     d74:	9b0080e7          	jalr	-1616(ra) # 1720 <display_set_front_back_color>
     d78:	00005537          	lui	a0,0x5
     d7c:	00450513          	addi	a0,a0,4 # 5004 <LEDS+0xe8>
     d80:	00001097          	auipc	ra,0x1
     d84:	cc4080e7          	jalr	-828(ra) # 1a44 <printf>
     d88:	00001097          	auipc	ra,0x1
     d8c:	ac4080e7          	jalr	-1340(ra) # 184c <display_refresh>
     d90:	000f4537          	lui	a0,0xf4
     d94:	24050513          	addi	a0,a0,576 # f4240 <__stacktop+0xe4240>
     d98:	fffff097          	auipc	ra,0xfffff
     d9c:	284080e7          	jalr	644(ra) # 1c <pause>
     da0:	e7dff06f          	j	c1c <main+0x12c>

00000da4 <pause>:
     da4:	c0002773          	rdcycle	a4
     da8:	c00027f3          	rdcycle	a5
     dac:	40e787b3          	sub	a5,a5,a4
     db0:	fea7ece3          	bltu	a5,a0,da8 <pause+0x4>
     db4:	00008067          	ret

00000db8 <sdcard_idle>:
     db8:	00008067          	ret

00000dbc <sdcard_select>:
     dbc:	000057b7          	lui	a5,0x5
     dc0:	f107a783          	lw	a5,-240(a5) # 4f10 <SDCARD>
     dc4:	00200713          	li	a4,2
     dc8:	00e7a023          	sw	a4,0(a5)
     dcc:	00008067          	ret

00000dd0 <sdcard_ponder>:
     dd0:	000056b7          	lui	a3,0x5
     dd4:	f106a683          	lw	a3,-240(a3) # 4f10 <SDCARD>
     dd8:	01000793          	li	a5,16
     ddc:	00000713          	li	a4,0
     de0:	00676613          	ori	a2,a4,6
     de4:	00c6a023          	sw	a2,0(a3)
     de8:	00174713          	xori	a4,a4,1
     dec:	00000013          	nop
     df0:	fff78793          	addi	a5,a5,-1
     df4:	fe0796e3          	bnez	a5,de0 <sdcard_ponder+0x10>
     df8:	00008067          	ret

00000dfc <sdcard_unselect>:
     dfc:	000057b7          	lui	a5,0x5
     e00:	f107a783          	lw	a5,-240(a5) # 4f10 <SDCARD>
     e04:	00600713          	li	a4,6
     e08:	00e7a023          	sw	a4,0(a5)
     e0c:	00008067          	ret

00000e10 <sdcard_send>:
     e10:	000057b7          	lui	a5,0x5
     e14:	f107a783          	lw	a5,-240(a5) # 4f10 <SDCARD>
     e18:	00655713          	srli	a4,a0,0x6
     e1c:	00277713          	andi	a4,a4,2
     e20:	00e7a023          	sw	a4,0(a5)
     e24:	00176713          	ori	a4,a4,1
     e28:	00e7a023          	sw	a4,0(a5)
     e2c:	00555713          	srli	a4,a0,0x5
     e30:	00277713          	andi	a4,a4,2
     e34:	00e7a023          	sw	a4,0(a5)
     e38:	00176713          	ori	a4,a4,1
     e3c:	00e7a023          	sw	a4,0(a5)
     e40:	00455713          	srli	a4,a0,0x4
     e44:	00277713          	andi	a4,a4,2
     e48:	00e7a023          	sw	a4,0(a5)
     e4c:	00176713          	ori	a4,a4,1
     e50:	00e7a023          	sw	a4,0(a5)
     e54:	00355713          	srli	a4,a0,0x3
     e58:	00277713          	andi	a4,a4,2
     e5c:	00e7a023          	sw	a4,0(a5)
     e60:	00176713          	ori	a4,a4,1
     e64:	00e7a023          	sw	a4,0(a5)
     e68:	00255713          	srli	a4,a0,0x2
     e6c:	00277713          	andi	a4,a4,2
     e70:	00e7a023          	sw	a4,0(a5)
     e74:	00176713          	ori	a4,a4,1
     e78:	00e7a023          	sw	a4,0(a5)
     e7c:	00155713          	srli	a4,a0,0x1
     e80:	00277713          	andi	a4,a4,2
     e84:	00e7a023          	sw	a4,0(a5)
     e88:	00176713          	ori	a4,a4,1
     e8c:	00e7a023          	sw	a4,0(a5)
     e90:	00257713          	andi	a4,a0,2
     e94:	00e7a023          	sw	a4,0(a5)
     e98:	00151513          	slli	a0,a0,0x1
     e9c:	00176713          	ori	a4,a4,1
     ea0:	00e7a023          	sw	a4,0(a5)
     ea4:	00257513          	andi	a0,a0,2
     ea8:	00a7a023          	sw	a0,0(a5)
     eac:	00156513          	ori	a0,a0,1
     eb0:	00a7a023          	sw	a0,0(a5)
     eb4:	00200713          	li	a4,2
     eb8:	00e7a023          	sw	a4,0(a5)
     ebc:	000057b7          	lui	a5,0x5
     ec0:	4847a783          	lw	a5,1156(a5) # 5484 <sdcard_while_loading_callback>
     ec4:	00078067          	jr	a5

00000ec8 <sdcard_read>:
     ec8:	fd010113          	addi	sp,sp,-48
     ecc:	fff50793          	addi	a5,a0,-1
     ed0:	03212023          	sw	s2,32(sp)
     ed4:	00100913          	li	s2,1
     ed8:	00f91933          	sll	s2,s2,a5
     edc:	000057b7          	lui	a5,0x5
     ee0:	01312e23          	sw	s3,28(sp)
     ee4:	f107a983          	lw	s3,-240(a5) # 4f10 <SDCARD>
     ee8:	02812423          	sw	s0,40(sp)
     eec:	02912223          	sw	s1,36(sp)
     ef0:	01412c23          	sw	s4,24(sp)
     ef4:	01512a23          	sw	s5,20(sp)
     ef8:	01612823          	sw	s6,16(sp)
     efc:	02112623          	sw	ra,44(sp)
     f00:	0ff00413          	li	s0,255
     f04:	00000493          	li	s1,0
     f08:	00300a13          	li	s4,3
     f0c:	00200a93          	li	s5,2
     f10:	00005b37          	lui	s6,0x5
     f14:	02058c63          	beqz	a1,f4c <sdcard_read+0x84>
     f18:	012477b3          	and	a5,s0,s2
     f1c:	02079a63          	bnez	a5,f50 <sdcard_read+0x88>
     f20:	02c12083          	lw	ra,44(sp)
     f24:	0ff47513          	zext.b	a0,s0
     f28:	02812403          	lw	s0,40(sp)
     f2c:	02412483          	lw	s1,36(sp)
     f30:	02012903          	lw	s2,32(sp)
     f34:	01c12983          	lw	s3,28(sp)
     f38:	01812a03          	lw	s4,24(sp)
     f3c:	01412a83          	lw	s5,20(sp)
     f40:	01012b03          	lw	s6,16(sp)
     f44:	03010113          	addi	sp,sp,48
     f48:	00008067          	ret
     f4c:	fca4dae3          	bge	s1,a0,f20 <sdcard_read+0x58>
     f50:	0149a023          	sw	s4,0(s3)
     f54:	0159a023          	sw	s5,0(s3)
     f58:	0009a783          	lw	a5,0(s3)
     f5c:	00141413          	slli	s0,s0,0x1
     f60:	00b12623          	sw	a1,12(sp)
     f64:	00f46433          	or	s0,s0,a5
     f68:	484b2783          	lw	a5,1156(s6) # 5484 <sdcard_while_loading_callback>
     f6c:	00a12423          	sw	a0,8(sp)
     f70:	00148493          	addi	s1,s1,1
     f74:	000780e7          	jalr	a5
     f78:	00c12583          	lw	a1,12(sp)
     f7c:	00812503          	lw	a0,8(sp)
     f80:	f95ff06f          	j	f14 <sdcard_read+0x4c>

00000f84 <sdcard_get>:
     f84:	fe010113          	addi	sp,sp,-32
     f88:	00112e23          	sw	ra,28(sp)
     f8c:	00812c23          	sw	s0,24(sp)
     f90:	00912a23          	sw	s1,20(sp)
     f94:	00050413          	mv	s0,a0
     f98:	00b12623          	sw	a1,12(sp)
     f9c:	00000097          	auipc	ra,0x0
     fa0:	e20080e7          	jalr	-480(ra) # dbc <sdcard_select>
     fa4:	00c12583          	lw	a1,12(sp)
     fa8:	00040513          	mv	a0,s0
     fac:	00100493          	li	s1,1
     fb0:	00000097          	auipc	ra,0x0
     fb4:	f18080e7          	jalr	-232(ra) # ec8 <sdcard_read>
     fb8:	00345413          	srli	s0,s0,0x3
     fbc:	0284c463          	blt	s1,s0,fe4 <sdcard_get+0x60>
     fc0:	00a12623          	sw	a0,12(sp)
     fc4:	00000097          	auipc	ra,0x0
     fc8:	e38080e7          	jalr	-456(ra) # dfc <sdcard_unselect>
     fcc:	01c12083          	lw	ra,28(sp)
     fd0:	01812403          	lw	s0,24(sp)
     fd4:	00c12503          	lw	a0,12(sp)
     fd8:	01412483          	lw	s1,20(sp)
     fdc:	02010113          	addi	sp,sp,32
     fe0:	00008067          	ret
     fe4:	00000593          	li	a1,0
     fe8:	00800513          	li	a0,8
     fec:	00000097          	auipc	ra,0x0
     ff0:	edc080e7          	jalr	-292(ra) # ec8 <sdcard_read>
     ff4:	00148493          	addi	s1,s1,1
     ff8:	fc5ff06f          	j	fbc <sdcard_get+0x38>

00000ffc <sdcard_cmd>:
     ffc:	ff010113          	addi	sp,sp,-16
    1000:	00812423          	sw	s0,8(sp)
    1004:	00912223          	sw	s1,4(sp)
    1008:	01212023          	sw	s2,0(sp)
    100c:	00112623          	sw	ra,12(sp)
    1010:	00050913          	mv	s2,a0
    1014:	00000413          	li	s0,0
    1018:	00000097          	auipc	ra,0x0
    101c:	da4080e7          	jalr	-604(ra) # dbc <sdcard_select>
    1020:	00600493          	li	s1,6
    1024:	008907b3          	add	a5,s2,s0
    1028:	0007c503          	lbu	a0,0(a5)
    102c:	00140413          	addi	s0,s0,1
    1030:	00000097          	auipc	ra,0x0
    1034:	de0080e7          	jalr	-544(ra) # e10 <sdcard_send>
    1038:	fe9416e3          	bne	s0,s1,1024 <sdcard_cmd+0x28>
    103c:	00812403          	lw	s0,8(sp)
    1040:	00c12083          	lw	ra,12(sp)
    1044:	00412483          	lw	s1,4(sp)
    1048:	00012903          	lw	s2,0(sp)
    104c:	01010113          	addi	sp,sp,16
    1050:	00000317          	auipc	t1,0x0
    1054:	dac30067          	jr	-596(t1) # dfc <sdcard_unselect>

00001058 <sdcard_start_sector>:
    1058:	ff010113          	addi	sp,sp,-16
    105c:	00112623          	sw	ra,12(sp)
    1060:	00812423          	sw	s0,8(sp)
    1064:	00050413          	mv	s0,a0
    1068:	00000097          	auipc	ra,0x0
    106c:	d54080e7          	jalr	-684(ra) # dbc <sdcard_select>
    1070:	05100513          	li	a0,81
    1074:	00000097          	auipc	ra,0x0
    1078:	d9c080e7          	jalr	-612(ra) # e10 <sdcard_send>
    107c:	01845513          	srli	a0,s0,0x18
    1080:	00000097          	auipc	ra,0x0
    1084:	d90080e7          	jalr	-624(ra) # e10 <sdcard_send>
    1088:	41045513          	srai	a0,s0,0x10
    108c:	0ff57513          	zext.b	a0,a0
    1090:	00000097          	auipc	ra,0x0
    1094:	d80080e7          	jalr	-640(ra) # e10 <sdcard_send>
    1098:	40845513          	srai	a0,s0,0x8
    109c:	0ff57513          	zext.b	a0,a0
    10a0:	00000097          	auipc	ra,0x0
    10a4:	d70080e7          	jalr	-656(ra) # e10 <sdcard_send>
    10a8:	0ff47513          	zext.b	a0,s0
    10ac:	00000097          	auipc	ra,0x0
    10b0:	d64080e7          	jalr	-668(ra) # e10 <sdcard_send>
    10b4:	05500513          	li	a0,85
    10b8:	00000097          	auipc	ra,0x0
    10bc:	d58080e7          	jalr	-680(ra) # e10 <sdcard_send>
    10c0:	00000097          	auipc	ra,0x0
    10c4:	d3c080e7          	jalr	-708(ra) # dfc <sdcard_unselect>
    10c8:	00812403          	lw	s0,8(sp)
    10cc:	00c12083          	lw	ra,12(sp)
    10d0:	00100593          	li	a1,1
    10d4:	00800513          	li	a0,8
    10d8:	01010113          	addi	sp,sp,16
    10dc:	00000317          	auipc	t1,0x0
    10e0:	ea830067          	jr	-344(t1) # f84 <sdcard_get>

000010e4 <sdcard_read_sector>:
    10e4:	ff010113          	addi	sp,sp,-16
    10e8:	00812423          	sw	s0,8(sp)
    10ec:	00112623          	sw	ra,12(sp)
    10f0:	00912223          	sw	s1,4(sp)
    10f4:	01212023          	sw	s2,0(sp)
    10f8:	00058413          	mv	s0,a1
    10fc:	00000097          	auipc	ra,0x0
    1100:	f5c080e7          	jalr	-164(ra) # 1058 <sdcard_start_sector>
    1104:	04051863          	bnez	a0,1154 <sdcard_read_sector+0x70>
    1108:	00100593          	li	a1,1
    110c:	00058513          	mv	a0,a1
    1110:	00000097          	auipc	ra,0x0
    1114:	e74080e7          	jalr	-396(ra) # f84 <sdcard_get>
    1118:	00000493          	li	s1,0
    111c:	20000913          	li	s2,512
    1120:	00000593          	li	a1,0
    1124:	00800513          	li	a0,8
    1128:	00000097          	auipc	ra,0x0
    112c:	e5c080e7          	jalr	-420(ra) # f84 <sdcard_get>
    1130:	009407b3          	add	a5,s0,s1
    1134:	00a78023          	sb	a0,0(a5)
    1138:	00148493          	addi	s1,s1,1
    113c:	ff2492e3          	bne	s1,s2,1120 <sdcard_read_sector+0x3c>
    1140:	00100593          	li	a1,1
    1144:	01000513          	li	a0,16
    1148:	20040413          	addi	s0,s0,512
    114c:	00000097          	auipc	ra,0x0
    1150:	e38080e7          	jalr	-456(ra) # f84 <sdcard_get>
    1154:	00c12083          	lw	ra,12(sp)
    1158:	00040513          	mv	a0,s0
    115c:	00812403          	lw	s0,8(sp)
    1160:	00412483          	lw	s1,4(sp)
    1164:	00012903          	lw	s2,0(sp)
    1168:	01010113          	addi	sp,sp,16
    116c:	00008067          	ret

00001170 <sdcard_preinit>:
    1170:	ff010113          	addi	sp,sp,-16
    1174:	000057b7          	lui	a5,0x5
    1178:	00812423          	sw	s0,8(sp)
    117c:	f107a403          	lw	s0,-240(a5) # 4f10 <SDCARD>
    1180:	00112623          	sw	ra,12(sp)
    1184:	00600793          	li	a5,6
    1188:	01313537          	lui	a0,0x1313
    118c:	00f42023          	sw	a5,0(s0)
    1190:	d0050513          	addi	a0,a0,-768 # 1312d00 <__stacktop+0x1302d00>
    1194:	00000097          	auipc	ra,0x0
    1198:	c10080e7          	jalr	-1008(ra) # da4 <pause>
    119c:	0a000793          	li	a5,160
    11a0:	00000713          	li	a4,0
    11a4:	00676693          	ori	a3,a4,6
    11a8:	00d42023          	sw	a3,0(s0)
    11ac:	fff78793          	addi	a5,a5,-1
    11b0:	00174713          	xori	a4,a4,1
    11b4:	fe0798e3          	bnez	a5,11a4 <sdcard_preinit+0x34>
    11b8:	00600793          	li	a5,6
    11bc:	00c12083          	lw	ra,12(sp)
    11c0:	00f42023          	sw	a5,0(s0)
    11c4:	00812403          	lw	s0,8(sp)
    11c8:	01010113          	addi	sp,sp,16
    11cc:	00008067          	ret

000011d0 <sdcard_init>:
    11d0:	000017b7          	lui	a5,0x1
    11d4:	db878793          	addi	a5,a5,-584 # db8 <sdcard_idle>
    11d8:	00005737          	lui	a4,0x5
    11dc:	fe010113          	addi	sp,sp,-32
    11e0:	48f72223          	sw	a5,1156(a4) # 5484 <sdcard_while_loading_callback>
    11e4:	000057b7          	lui	a5,0x5
    11e8:	00812c23          	sw	s0,24(sp)
    11ec:	00912a23          	sw	s1,20(sp)
    11f0:	00112e23          	sw	ra,28(sp)
    11f4:	f0078493          	addi	s1,a5,-256 # 4f00 <cmd0>
    11f8:	0ff00413          	li	s0,255
    11fc:	00000097          	auipc	ra,0x0
    1200:	f74080e7          	jalr	-140(ra) # 1170 <sdcard_preinit>
    1204:	00048513          	mv	a0,s1
    1208:	00000097          	auipc	ra,0x0
    120c:	df4080e7          	jalr	-524(ra) # ffc <sdcard_cmd>
    1210:	00100593          	li	a1,1
    1214:	00800513          	li	a0,8
    1218:	00000097          	auipc	ra,0x0
    121c:	d6c080e7          	jalr	-660(ra) # f84 <sdcard_get>
    1220:	00a12623          	sw	a0,12(sp)
    1224:	00000097          	auipc	ra,0x0
    1228:	bac080e7          	jalr	-1108(ra) # dd0 <sdcard_ponder>
    122c:	00c12503          	lw	a0,12(sp)
    1230:	00851c63          	bne	a0,s0,1248 <sdcard_init+0x78>
    1234:	01313537          	lui	a0,0x1313
    1238:	d0050513          	addi	a0,a0,-768 # 1312d00 <__stacktop+0x1302d00>
    123c:	00000097          	auipc	ra,0x0
    1240:	b68080e7          	jalr	-1176(ra) # da4 <pause>
    1244:	fb9ff06f          	j	11fc <sdcard_init+0x2c>
    1248:	00005537          	lui	a0,0x5
    124c:	ef850513          	addi	a0,a0,-264 # 4ef8 <cmd8>
    1250:	00000097          	auipc	ra,0x0
    1254:	dac080e7          	jalr	-596(ra) # ffc <sdcard_cmd>
    1258:	00100593          	li	a1,1
    125c:	02800513          	li	a0,40
    1260:	00000097          	auipc	ra,0x0
    1264:	d24080e7          	jalr	-732(ra) # f84 <sdcard_get>
    1268:	00000097          	auipc	ra,0x0
    126c:	b68080e7          	jalr	-1176(ra) # dd0 <sdcard_ponder>
    1270:	000057b7          	lui	a5,0x5
    1274:	ef078413          	addi	s0,a5,-272 # 4ef0 <cmd55>
    1278:	000057b7          	lui	a5,0x5
    127c:	ee878493          	addi	s1,a5,-280 # 4ee8 <acmd41>
    1280:	00040513          	mv	a0,s0
    1284:	00000097          	auipc	ra,0x0
    1288:	d78080e7          	jalr	-648(ra) # ffc <sdcard_cmd>
    128c:	00100593          	li	a1,1
    1290:	00800513          	li	a0,8
    1294:	00000097          	auipc	ra,0x0
    1298:	cf0080e7          	jalr	-784(ra) # f84 <sdcard_get>
    129c:	00000097          	auipc	ra,0x0
    12a0:	b34080e7          	jalr	-1228(ra) # dd0 <sdcard_ponder>
    12a4:	00048513          	mv	a0,s1
    12a8:	00000097          	auipc	ra,0x0
    12ac:	d54080e7          	jalr	-684(ra) # ffc <sdcard_cmd>
    12b0:	00100593          	li	a1,1
    12b4:	00800513          	li	a0,8
    12b8:	00000097          	auipc	ra,0x0
    12bc:	ccc080e7          	jalr	-820(ra) # f84 <sdcard_get>
    12c0:	00a12623          	sw	a0,12(sp)
    12c4:	00000097          	auipc	ra,0x0
    12c8:	b0c080e7          	jalr	-1268(ra) # dd0 <sdcard_ponder>
    12cc:	00c12503          	lw	a0,12(sp)
    12d0:	00050c63          	beqz	a0,12e8 <sdcard_init+0x118>
    12d4:	001e8537          	lui	a0,0x1e8
    12d8:	48050513          	addi	a0,a0,1152 # 1e8480 <__stacktop+0x1d8480>
    12dc:	00000097          	auipc	ra,0x0
    12e0:	ac8080e7          	jalr	-1336(ra) # da4 <pause>
    12e4:	f9dff06f          	j	1280 <sdcard_init+0xb0>
    12e8:	00005537          	lui	a0,0x5
    12ec:	ee050513          	addi	a0,a0,-288 # 4ee0 <cmd16>
    12f0:	00000097          	auipc	ra,0x0
    12f4:	d0c080e7          	jalr	-756(ra) # ffc <sdcard_cmd>
    12f8:	00100593          	li	a1,1
    12fc:	00800513          	li	a0,8
    1300:	00000097          	auipc	ra,0x0
    1304:	c84080e7          	jalr	-892(ra) # f84 <sdcard_get>
    1308:	01812403          	lw	s0,24(sp)
    130c:	01c12083          	lw	ra,28(sp)
    1310:	01412483          	lw	s1,20(sp)
    1314:	02010113          	addi	sp,sp,32
    1318:	00000317          	auipc	t1,0x0
    131c:	ab830067          	jr	-1352(t1) # dd0 <sdcard_ponder>

00001320 <sdcard_readsector>:
    1320:	04060663          	beqz	a2,136c <sdcard_readsector+0x4c>
    1324:	ff010113          	addi	sp,sp,-16
    1328:	00812423          	sw	s0,8(sp)
    132c:	00912223          	sw	s1,4(sp)
    1330:	00112623          	sw	ra,12(sp)
    1334:	00050413          	mv	s0,a0
    1338:	00a604b3          	add	s1,a2,a0
    133c:	00040513          	mv	a0,s0
    1340:	00000097          	auipc	ra,0x0
    1344:	da4080e7          	jalr	-604(ra) # 10e4 <sdcard_read_sector>
    1348:	00140413          	addi	s0,s0,1
    134c:	00050593          	mv	a1,a0
    1350:	fe9416e3          	bne	s0,s1,133c <sdcard_readsector+0x1c>
    1354:	00c12083          	lw	ra,12(sp)
    1358:	00812403          	lw	s0,8(sp)
    135c:	00412483          	lw	s1,4(sp)
    1360:	00100513          	li	a0,1
    1364:	01010113          	addi	sp,sp,16
    1368:	00008067          	ret
    136c:	00000513          	li	a0,0
    1370:	00008067          	ret

00001374 <sdcard_writesector>:
    1374:	00000513          	li	a0,0
    1378:	00008067          	ret

0000137c <__divsi3>:
    137c:	06054063          	bltz	a0,13dc <__umodsi3+0x10>
    1380:	0605c663          	bltz	a1,13ec <__umodsi3+0x20>

00001384 <__udivsi3>:
    1384:	00058613          	mv	a2,a1
    1388:	00050593          	mv	a1,a0
    138c:	fff00513          	li	a0,-1
    1390:	02060c63          	beqz	a2,13c8 <__udivsi3+0x44>
    1394:	00100693          	li	a3,1
    1398:	00b67a63          	bgeu	a2,a1,13ac <__udivsi3+0x28>
    139c:	00c05863          	blez	a2,13ac <__udivsi3+0x28>
    13a0:	00161613          	slli	a2,a2,0x1
    13a4:	00169693          	slli	a3,a3,0x1
    13a8:	feb66ae3          	bltu	a2,a1,139c <__udivsi3+0x18>
    13ac:	00000513          	li	a0,0
    13b0:	00c5e663          	bltu	a1,a2,13bc <__udivsi3+0x38>
    13b4:	40c585b3          	sub	a1,a1,a2
    13b8:	00d56533          	or	a0,a0,a3
    13bc:	0016d693          	srli	a3,a3,0x1
    13c0:	00165613          	srli	a2,a2,0x1
    13c4:	fe0696e3          	bnez	a3,13b0 <__udivsi3+0x2c>
    13c8:	00008067          	ret

000013cc <__umodsi3>:
    13cc:	00008293          	mv	t0,ra
    13d0:	fb5ff0ef          	jal	1384 <__udivsi3>
    13d4:	00058513          	mv	a0,a1
    13d8:	00028067          	jr	t0
    13dc:	40a00533          	neg	a0,a0
    13e0:	0005d863          	bgez	a1,13f0 <__umodsi3+0x24>
    13e4:	40b005b3          	neg	a1,a1
    13e8:	f95ff06f          	j	137c <__divsi3>
    13ec:	40b005b3          	neg	a1,a1
    13f0:	00008293          	mv	t0,ra
    13f4:	f89ff0ef          	jal	137c <__divsi3>
    13f8:	40a00533          	neg	a0,a0
    13fc:	00028067          	jr	t0

00001400 <__modsi3>:
    1400:	00008293          	mv	t0,ra
    1404:	0005ca63          	bltz	a1,1418 <__modsi3+0x18>
    1408:	00054c63          	bltz	a0,1420 <__modsi3+0x20>
    140c:	f79ff0ef          	jal	1384 <__udivsi3>
    1410:	00058513          	mv	a0,a1
    1414:	00028067          	jr	t0
    1418:	40b005b3          	neg	a1,a1
    141c:	fe0558e3          	bgez	a0,140c <__modsi3+0xc>
    1420:	40a00533          	neg	a0,a0
    1424:	f61ff0ef          	jal	1384 <__udivsi3>
    1428:	40b00533          	neg	a0,a1
    142c:	00028067          	jr	t0

00001430 <memset>:
    1430:	00c50633          	add	a2,a0,a2
    1434:	00050793          	mv	a5,a0
    1438:	00c79463          	bne	a5,a2,1440 <memset+0x10>
    143c:	00008067          	ret
    1440:	00178793          	addi	a5,a5,1
    1444:	feb78fa3          	sb	a1,-1(a5)
    1448:	ff1ff06f          	j	1438 <memset+0x8>

0000144c <memcpy>:
    144c:	00000793          	li	a5,0
    1450:	00c79463          	bne	a5,a2,1458 <memcpy+0xc>
    1454:	00008067          	ret
    1458:	00f58733          	add	a4,a1,a5
    145c:	00074683          	lbu	a3,0(a4)
    1460:	00f50733          	add	a4,a0,a5
    1464:	00178793          	addi	a5,a5,1
    1468:	00d70023          	sb	a3,0(a4)
    146c:	fe5ff06f          	j	1450 <memcpy+0x4>

00001470 <strlen>:
    1470:	00000793          	li	a5,0
    1474:	00f50733          	add	a4,a0,a5
    1478:	00074703          	lbu	a4,0(a4)
    147c:	00071663          	bnez	a4,1488 <strlen+0x18>
    1480:	00078513          	mv	a0,a5
    1484:	00008067          	ret
    1488:	00178793          	addi	a5,a5,1
    148c:	fe9ff06f          	j	1474 <strlen+0x4>

00001490 <strncmp>:
    1490:	00000793          	li	a5,0
    1494:	00c79663          	bne	a5,a2,14a0 <strncmp+0x10>
    1498:	00000513          	li	a0,0
    149c:	00008067          	ret
    14a0:	00f50733          	add	a4,a0,a5
    14a4:	00074683          	lbu	a3,0(a4)
    14a8:	00f58733          	add	a4,a1,a5
    14ac:	00074703          	lbu	a4,0(a4)
    14b0:	00e6e863          	bltu	a3,a4,14c0 <strncmp+0x30>
    14b4:	00d76a63          	bltu	a4,a3,14c8 <strncmp+0x38>
    14b8:	00178793          	addi	a5,a5,1
    14bc:	fd9ff06f          	j	1494 <strncmp+0x4>
    14c0:	fff00513          	li	a0,-1
    14c4:	00008067          	ret
    14c8:	00100513          	li	a0,1
    14cc:	00008067          	ret

000014d0 <strncpy>:
    14d0:	00000793          	li	a5,0
    14d4:	00c79463          	bne	a5,a2,14dc <strncpy+0xc>
    14d8:	00008067          	ret
    14dc:	00f58733          	add	a4,a1,a5
    14e0:	00074683          	lbu	a3,0(a4)
    14e4:	00f50733          	add	a4,a0,a5
    14e8:	00178793          	addi	a5,a5,1
    14ec:	00d70023          	sb	a3,0(a4)
    14f0:	fe5ff06f          	j	14d4 <strncpy+0x4>

000014f4 <strcat>:
    14f4:	00050793          	mv	a5,a0
    14f8:	0007c683          	lbu	a3,0(a5)
    14fc:	00078713          	mv	a4,a5
    1500:	00178793          	addi	a5,a5,1
    1504:	fe069ae3          	bnez	a3,14f8 <strcat+0x4>
    1508:	0005c783          	lbu	a5,0(a1)
    150c:	00158593          	addi	a1,a1,1
    1510:	00170713          	addi	a4,a4,1
    1514:	fef70fa3          	sb	a5,-1(a4)
    1518:	fe0798e3          	bnez	a5,1508 <strcat+0x14>
    151c:	00008067          	ret

00001520 <oled_wait>:
    1520:	00000013          	nop
    1524:	00000013          	nop
    1528:	00000013          	nop
    152c:	00000013          	nop
    1530:	00000013          	nop
    1534:	00000013          	nop
    1538:	00000013          	nop
    153c:	00008067          	ret

00001540 <oled_init_mode>:
    1540:	000057b7          	lui	a5,0x5
    1544:	f147a703          	lw	a4,-236(a5) # 4f14 <OLED_RST>
    1548:	fe010113          	addi	sp,sp,-32
    154c:	00112e23          	sw	ra,28(sp)
    1550:	00812c23          	sw	s0,24(sp)
    1554:	00072023          	sw	zero,0(a4)
    1558:	00040737          	lui	a4,0x40
    155c:	00000013          	nop
    1560:	fff70713          	addi	a4,a4,-1 # 3ffff <__stacktop+0x2ffff>
    1564:	fe071ce3          	bnez	a4,155c <oled_init_mode+0x1c>
    1568:	f147a703          	lw	a4,-236(a5)
    156c:	00100693          	li	a3,1
    1570:	00d72023          	sw	a3,0(a4)
    1574:	00040737          	lui	a4,0x40
    1578:	00000013          	nop
    157c:	fff70713          	addi	a4,a4,-1 # 3ffff <__stacktop+0x2ffff>
    1580:	fe071ce3          	bnez	a4,1578 <oled_init_mode+0x38>
    1584:	f147a783          	lw	a5,-236(a5)
    1588:	0007a023          	sw	zero,0(a5)
    158c:	000407b7          	lui	a5,0x40
    1590:	00000013          	nop
    1594:	fff78793          	addi	a5,a5,-1 # 3ffff <__stacktop+0x2ffff>
    1598:	fe079ce3          	bnez	a5,1590 <oled_init_mode+0x50>
    159c:	00005737          	lui	a4,0x5
    15a0:	f1872783          	lw	a5,-232(a4) # 4f18 <OLED>
    15a4:	2af00693          	li	a3,687
    15a8:	00d7a023          	sw	a3,0(a5)
    15ac:	000407b7          	lui	a5,0x40
    15b0:	00000013          	nop
    15b4:	fff78793          	addi	a5,a5,-1 # 3ffff <__stacktop+0x2ffff>
    15b8:	fe079ce3          	bnez	a5,15b0 <oled_init_mode+0x70>
    15bc:	f1872403          	lw	s0,-232(a4)
    15c0:	2a000793          	li	a5,672
    15c4:	00a12623          	sw	a0,12(sp)
    15c8:	00f42023          	sw	a5,0(s0)
    15cc:	00000097          	auipc	ra,0x0
    15d0:	f54080e7          	jalr	-172(ra) # 1520 <oled_wait>
    15d4:	00c12503          	lw	a0,12(sp)
    15d8:	4a000793          	li	a5,1184
    15dc:	00050463          	beqz	a0,15e4 <oled_init_mode+0xa4>
    15e0:	42000793          	li	a5,1056
    15e4:	00f42023          	sw	a5,0(s0)
    15e8:	00000097          	auipc	ra,0x0
    15ec:	f38080e7          	jalr	-200(ra) # 1520 <oled_wait>
    15f0:	2fd00793          	li	a5,765
    15f4:	00f42023          	sw	a5,0(s0)
    15f8:	00000097          	auipc	ra,0x0
    15fc:	f28080e7          	jalr	-216(ra) # 1520 <oled_wait>
    1600:	4b100793          	li	a5,1201
    1604:	00f42023          	sw	a5,0(s0)
    1608:	00000097          	auipc	ra,0x0
    160c:	f18080e7          	jalr	-232(ra) # 1520 <oled_wait>
    1610:	2a200793          	li	a5,674
    1614:	00f42023          	sw	a5,0(s0)
    1618:	00000097          	auipc	ra,0x0
    161c:	f08080e7          	jalr	-248(ra) # 1520 <oled_wait>
    1620:	40000793          	li	a5,1024
    1624:	00f42023          	sw	a5,0(s0)
    1628:	01812403          	lw	s0,24(sp)
    162c:	01c12083          	lw	ra,28(sp)
    1630:	02010113          	addi	sp,sp,32
    1634:	00000317          	auipc	t1,0x0
    1638:	eec30067          	jr	-276(t1) # 1520 <oled_wait>

0000163c <oled_init>:
    163c:	00000513          	li	a0,0
    1640:	00000317          	auipc	t1,0x0
    1644:	f0030067          	jr	-256(t1) # 1540 <oled_init_mode>

00001648 <oled_fullscreen>:
    1648:	ff010113          	addi	sp,sp,-16
    164c:	000057b7          	lui	a5,0x5
    1650:	00812423          	sw	s0,8(sp)
    1654:	f187a403          	lw	s0,-232(a5) # 4f18 <OLED>
    1658:	00112623          	sw	ra,12(sp)
    165c:	00912223          	sw	s1,4(sp)
    1660:	01212023          	sw	s2,0(sp)
    1664:	21500793          	li	a5,533
    1668:	00f42023          	sw	a5,0(s0)
    166c:	40000913          	li	s2,1024
    1670:	00000097          	auipc	ra,0x0
    1674:	eb0080e7          	jalr	-336(ra) # 1520 <oled_wait>
    1678:	47f00493          	li	s1,1151
    167c:	01242023          	sw	s2,0(s0)
    1680:	00000097          	auipc	ra,0x0
    1684:	ea0080e7          	jalr	-352(ra) # 1520 <oled_wait>
    1688:	00942023          	sw	s1,0(s0)
    168c:	00000097          	auipc	ra,0x0
    1690:	e94080e7          	jalr	-364(ra) # 1520 <oled_wait>
    1694:	27500793          	li	a5,629
    1698:	00f42023          	sw	a5,0(s0)
    169c:	00000097          	auipc	ra,0x0
    16a0:	e84080e7          	jalr	-380(ra) # 1520 <oled_wait>
    16a4:	01242023          	sw	s2,0(s0)
    16a8:	00000097          	auipc	ra,0x0
    16ac:	e78080e7          	jalr	-392(ra) # 1520 <oled_wait>
    16b0:	00942023          	sw	s1,0(s0)
    16b4:	00000097          	auipc	ra,0x0
    16b8:	e6c080e7          	jalr	-404(ra) # 1520 <oled_wait>
    16bc:	25c00793          	li	a5,604
    16c0:	00f42023          	sw	a5,0(s0)
    16c4:	00812403          	lw	s0,8(sp)
    16c8:	00c12083          	lw	ra,12(sp)
    16cc:	00412483          	lw	s1,4(sp)
    16d0:	00012903          	lw	s2,0(sp)
    16d4:	01010113          	addi	sp,sp,16
    16d8:	00000317          	auipc	t1,0x0
    16dc:	e4830067          	jr	-440(t1) # 1520 <oled_wait>

000016e0 <oled_wait>:
    16e0:	00000013          	nop
    16e4:	00000013          	nop
    16e8:	00000013          	nop
    16ec:	00000013          	nop
    16f0:	00000013          	nop
    16f4:	00000013          	nop
    16f8:	00000013          	nop
    16fc:	00008067          	ret

00001700 <display_framebuffer>:
    1700:	00007537          	lui	a0,0x7
    1704:	73050513          	addi	a0,a0,1840 # 7730 <framebuffer>
    1708:	00008067          	ret

0000170c <display_set_cursor>:
    170c:	000057b7          	lui	a5,0x5
    1710:	48a7a823          	sw	a0,1168(a5) # 5490 <cursor_x>
    1714:	000057b7          	lui	a5,0x5
    1718:	48b7a623          	sw	a1,1164(a5) # 548c <cursor_y>
    171c:	00008067          	ret

00001720 <display_set_front_back_color>:
    1720:	000057b7          	lui	a5,0x5
    1724:	48a784a3          	sb	a0,1161(a5) # 5489 <front_color>
    1728:	000057b7          	lui	a5,0x5
    172c:	48b78423          	sb	a1,1160(a5) # 5488 <back_color>
    1730:	00008067          	ret

00001734 <display_putchar>:
    1734:	00a00793          	li	a5,10
    1738:	000055b7          	lui	a1,0x5
    173c:	02f51663          	bne	a0,a5,1768 <display_putchar+0x34>
    1740:	00005737          	lui	a4,0x5
    1744:	48c72783          	lw	a5,1164(a4) # 548c <cursor_y>
    1748:	4805a823          	sw	zero,1168(a1) # 5490 <cursor_x>
    174c:	00878793          	addi	a5,a5,8
    1750:	48f72623          	sw	a5,1164(a4)
    1754:	07f00713          	li	a4,127
    1758:	00f75663          	bge	a4,a5,1764 <display_putchar+0x30>
    175c:	000057b7          	lui	a5,0x5
    1760:	4807a623          	sw	zero,1164(a5) # 548c <cursor_y>
    1764:	00008067          	ret
    1768:	ff010113          	addi	sp,sp,-16
    176c:	00812623          	sw	s0,12(sp)
    1770:	01f00713          	li	a4,31
    1774:	4905a783          	lw	a5,1168(a1)
    1778:	08a75a63          	bge	a4,a0,180c <display_putchar+0xd8>
    177c:	00005737          	lui	a4,0x5
    1780:	48874f83          	lbu	t6,1160(a4) # 5488 <back_color>
    1784:	00005737          	lui	a4,0x5
    1788:	48974283          	lbu	t0,1161(a4) # 5489 <front_color>
    178c:	000056b7          	lui	a3,0x5
    1790:	00251713          	slli	a4,a0,0x2
    1794:	06068693          	addi	a3,a3,96 # 5060 <font>
    1798:	00a70733          	add	a4,a4,a0
    179c:	00d70733          	add	a4,a4,a3
    17a0:	000056b7          	lui	a3,0x5
    17a4:	48c6a683          	lw	a3,1164(a3) # 548c <cursor_y>
    17a8:	00007637          	lui	a2,0x7
    17ac:	73060613          	addi	a2,a2,1840 # 7730 <framebuffer>
    17b0:	00c686b3          	add	a3,a3,a2
    17b4:	00779613          	slli	a2,a5,0x7
    17b8:	00c686b3          	add	a3,a3,a2
    17bc:	00100f13          	li	t5,1
    17c0:	00000613          	li	a2,0
    17c4:	00500393          	li	t2,5
    17c8:	00800413          	li	s0,8
    17cc:	00cf1eb3          	sll	t4,t5,a2
    17d0:	00d608b3          	add	a7,a2,a3
    17d4:	00070813          	mv	a6,a4
    17d8:	00000513          	li	a0,0
    17dc:	f6084303          	lbu	t1,-160(a6)
    17e0:	00028e13          	mv	t3,t0
    17e4:	01d37333          	and	t1,t1,t4
    17e8:	00031463          	bnez	t1,17f0 <display_putchar+0xbc>
    17ec:	000f8e13          	mv	t3,t6
    17f0:	01c88023          	sb	t3,0(a7)
    17f4:	00150513          	addi	a0,a0,1
    17f8:	00180813          	addi	a6,a6,1
    17fc:	08088893          	addi	a7,a7,128
    1800:	fc751ee3          	bne	a0,t2,17dc <display_putchar+0xa8>
    1804:	00160613          	addi	a2,a2,1
    1808:	fc8612e3          	bne	a2,s0,17cc <display_putchar+0x98>
    180c:	00578793          	addi	a5,a5,5
    1810:	07f00713          	li	a4,127
    1814:	00f74663          	blt	a4,a5,1820 <display_putchar+0xec>
    1818:	48f5a823          	sw	a5,1168(a1)
    181c:	0240006f          	j	1840 <display_putchar+0x10c>
    1820:	000056b7          	lui	a3,0x5
    1824:	48c6a783          	lw	a5,1164(a3) # 548c <cursor_y>
    1828:	4805a823          	sw	zero,1168(a1)
    182c:	00878793          	addi	a5,a5,8
    1830:	48f6a623          	sw	a5,1164(a3)
    1834:	00f75663          	bge	a4,a5,1840 <display_putchar+0x10c>
    1838:	000057b7          	lui	a5,0x5
    183c:	4807a623          	sw	zero,1164(a5) # 548c <cursor_y>
    1840:	00c12403          	lw	s0,12(sp)
    1844:	01010113          	addi	sp,sp,16
    1848:	00008067          	ret

0000184c <display_refresh>:
    184c:	fe010113          	addi	sp,sp,-32
    1850:	000057b7          	lui	a5,0x5
    1854:	01212823          	sw	s2,16(sp)
    1858:	f187a903          	lw	s2,-232(a5) # 4f18 <OLED>
    185c:	01312623          	sw	s3,12(sp)
    1860:	000079b7          	lui	s3,0x7
    1864:	00912a23          	sw	s1,20(sp)
    1868:	01412423          	sw	s4,8(sp)
    186c:	00112e23          	sw	ra,28(sp)
    1870:	00812c23          	sw	s0,24(sp)
    1874:	00000493          	li	s1,0
    1878:	73098993          	addi	s3,s3,1840 # 7730 <framebuffer>
    187c:	00004a37          	lui	s4,0x4
    1880:	013487b3          	add	a5,s1,s3
    1884:	0007c403          	lbu	s0,0(a5)
    1888:	00148493          	addi	s1,s1,1
    188c:	00245413          	srli	s0,s0,0x2
    1890:	40046413          	ori	s0,s0,1024
    1894:	00892023          	sw	s0,0(s2)
    1898:	00000097          	auipc	ra,0x0
    189c:	e48080e7          	jalr	-440(ra) # 16e0 <oled_wait>
    18a0:	00892023          	sw	s0,0(s2)
    18a4:	00000097          	auipc	ra,0x0
    18a8:	e3c080e7          	jalr	-452(ra) # 16e0 <oled_wait>
    18ac:	00892023          	sw	s0,0(s2)
    18b0:	00000097          	auipc	ra,0x0
    18b4:	e30080e7          	jalr	-464(ra) # 16e0 <oled_wait>
    18b8:	fd4494e3          	bne	s1,s4,1880 <display_refresh+0x34>
    18bc:	01c12083          	lw	ra,28(sp)
    18c0:	01812403          	lw	s0,24(sp)
    18c4:	01412483          	lw	s1,20(sp)
    18c8:	01012903          	lw	s2,16(sp)
    18cc:	00c12983          	lw	s3,12(sp)
    18d0:	00812a03          	lw	s4,8(sp)
    18d4:	02010113          	addi	sp,sp,32
    18d8:	00008067          	ret

000018dc <print_string>:
    18dc:	ff010113          	addi	sp,sp,-16
    18e0:	00812423          	sw	s0,8(sp)
    18e4:	00912223          	sw	s1,4(sp)
    18e8:	00112623          	sw	ra,12(sp)
    18ec:	00050413          	mv	s0,a0
    18f0:	000054b7          	lui	s1,0x5
    18f4:	00044503          	lbu	a0,0(s0)
    18f8:	00051c63          	bnez	a0,1910 <print_string+0x34>
    18fc:	00c12083          	lw	ra,12(sp)
    1900:	00812403          	lw	s0,8(sp)
    1904:	00412483          	lw	s1,4(sp)
    1908:	01010113          	addi	sp,sp,16
    190c:	00008067          	ret
    1910:	4944a783          	lw	a5,1172(s1) # 5494 <f_putchar>
    1914:	00140413          	addi	s0,s0,1
    1918:	000780e7          	jalr	a5
    191c:	fd9ff06f          	j	18f4 <print_string+0x18>

00001920 <print_dec>:
    1920:	ef010113          	addi	sp,sp,-272
    1924:	10812423          	sw	s0,264(sp)
    1928:	10912223          	sw	s1,260(sp)
    192c:	10112623          	sw	ra,268(sp)
    1930:	11212023          	sw	s2,256(sp)
    1934:	00050413          	mv	s0,a0
    1938:	000054b7          	lui	s1,0x5
    193c:	08045063          	bgez	s0,19bc <print_dec+0x9c>
    1940:	4944a783          	lw	a5,1172(s1) # 5494 <f_putchar>
    1944:	02d00513          	li	a0,45
    1948:	40800433          	neg	s0,s0
    194c:	000780e7          	jalr	a5
    1950:	fedff06f          	j	193c <print_dec+0x1c>
    1954:	00040513          	mv	a0,s0
    1958:	00a00593          	li	a1,10
    195c:	00000097          	auipc	ra,0x0
    1960:	a20080e7          	jalr	-1504(ra) # 137c <__divsi3>
    1964:	00251793          	slli	a5,a0,0x2
    1968:	00f507b3          	add	a5,a0,a5
    196c:	00179793          	slli	a5,a5,0x1
    1970:	40f40433          	sub	s0,s0,a5
    1974:	00148493          	addi	s1,s1,1
    1978:	fe848fa3          	sb	s0,-1(s1)
    197c:	00050413          	mv	s0,a0
    1980:	fc041ae3          	bnez	s0,1954 <print_dec+0x34>
    1984:	fd2488e3          	beq	s1,s2,1954 <print_dec+0x34>
    1988:	00005437          	lui	s0,0x5
    198c:	fff4c503          	lbu	a0,-1(s1)
    1990:	49442783          	lw	a5,1172(s0) # 5494 <f_putchar>
    1994:	fff48493          	addi	s1,s1,-1
    1998:	03050513          	addi	a0,a0,48
    199c:	000780e7          	jalr	a5
    19a0:	ff2496e3          	bne	s1,s2,198c <print_dec+0x6c>
    19a4:	10c12083          	lw	ra,268(sp)
    19a8:	10812403          	lw	s0,264(sp)
    19ac:	10412483          	lw	s1,260(sp)
    19b0:	10012903          	lw	s2,256(sp)
    19b4:	11010113          	addi	sp,sp,272
    19b8:	00008067          	ret
    19bc:	00010493          	mv	s1,sp
    19c0:	00010913          	mv	s2,sp
    19c4:	fbdff06f          	j	1980 <print_dec+0x60>

000019c8 <print_hex_digits>:
    19c8:	fe010113          	addi	sp,sp,-32
    19cc:	00812c23          	sw	s0,24(sp)
    19d0:	00912a23          	sw	s1,20(sp)
    19d4:	fff58413          	addi	s0,a1,-1
    19d8:	000054b7          	lui	s1,0x5
    19dc:	01212823          	sw	s2,16(sp)
    19e0:	01312623          	sw	s3,12(sp)
    19e4:	00112e23          	sw	ra,28(sp)
    19e8:	00050993          	mv	s3,a0
    19ec:	00241413          	slli	s0,s0,0x2
    19f0:	01848493          	addi	s1,s1,24 # 5018 <LEDS+0xfc>
    19f4:	00005937          	lui	s2,0x5
    19f8:	02045063          	bgez	s0,1a18 <print_hex_digits+0x50>
    19fc:	01c12083          	lw	ra,28(sp)
    1a00:	01812403          	lw	s0,24(sp)
    1a04:	01412483          	lw	s1,20(sp)
    1a08:	01012903          	lw	s2,16(sp)
    1a0c:	00c12983          	lw	s3,12(sp)
    1a10:	02010113          	addi	sp,sp,32
    1a14:	00008067          	ret
    1a18:	0089d7b3          	srl	a5,s3,s0
    1a1c:	00f7f793          	andi	a5,a5,15
    1a20:	00f487b3          	add	a5,s1,a5
    1a24:	49492703          	lw	a4,1172(s2) # 5494 <f_putchar>
    1a28:	0007c503          	lbu	a0,0(a5)
    1a2c:	ffc40413          	addi	s0,s0,-4
    1a30:	000700e7          	jalr	a4
    1a34:	fc5ff06f          	j	19f8 <print_hex_digits+0x30>

00001a38 <print_hex>:
    1a38:	00800593          	li	a1,8
    1a3c:	00000317          	auipc	t1,0x0
    1a40:	f8c30067          	jr	-116(t1) # 19c8 <print_hex_digits>

00001a44 <printf>:
    1a44:	fa010113          	addi	sp,sp,-96
    1a48:	04f12a23          	sw	a5,84(sp)
    1a4c:	04410793          	addi	a5,sp,68
    1a50:	02812c23          	sw	s0,56(sp)
    1a54:	02912a23          	sw	s1,52(sp)
    1a58:	03212823          	sw	s2,48(sp)
    1a5c:	03312623          	sw	s3,44(sp)
    1a60:	03412423          	sw	s4,40(sp)
    1a64:	03512223          	sw	s5,36(sp)
    1a68:	03612023          	sw	s6,32(sp)
    1a6c:	02112e23          	sw	ra,60(sp)
    1a70:	01712e23          	sw	s7,28(sp)
    1a74:	00050413          	mv	s0,a0
    1a78:	04b12223          	sw	a1,68(sp)
    1a7c:	04c12423          	sw	a2,72(sp)
    1a80:	04d12623          	sw	a3,76(sp)
    1a84:	04e12823          	sw	a4,80(sp)
    1a88:	05012c23          	sw	a6,88(sp)
    1a8c:	05112e23          	sw	a7,92(sp)
    1a90:	00f12623          	sw	a5,12(sp)
    1a94:	02500913          	li	s2,37
    1a98:	000054b7          	lui	s1,0x5
    1a9c:	07300993          	li	s3,115
    1aa0:	07800a13          	li	s4,120
    1aa4:	06400a93          	li	s5,100
    1aa8:	06300b13          	li	s6,99
    1aac:	00044503          	lbu	a0,0(s0)
    1ab0:	02051863          	bnez	a0,1ae0 <printf+0x9c>
    1ab4:	03c12083          	lw	ra,60(sp)
    1ab8:	03812403          	lw	s0,56(sp)
    1abc:	03412483          	lw	s1,52(sp)
    1ac0:	03012903          	lw	s2,48(sp)
    1ac4:	02c12983          	lw	s3,44(sp)
    1ac8:	02812a03          	lw	s4,40(sp)
    1acc:	02412a83          	lw	s5,36(sp)
    1ad0:	02012b03          	lw	s6,32(sp)
    1ad4:	01c12b83          	lw	s7,28(sp)
    1ad8:	06010113          	addi	sp,sp,96
    1adc:	00008067          	ret
    1ae0:	09251a63          	bne	a0,s2,1b74 <printf+0x130>
    1ae4:	00144503          	lbu	a0,1(s0)
    1ae8:	00140b93          	addi	s7,s0,1
    1aec:	03351463          	bne	a0,s3,1b14 <printf+0xd0>
    1af0:	00c12783          	lw	a5,12(sp)
    1af4:	0007a503          	lw	a0,0(a5)
    1af8:	00478713          	addi	a4,a5,4
    1afc:	00e12623          	sw	a4,12(sp)
    1b00:	00000097          	auipc	ra,0x0
    1b04:	ddc080e7          	jalr	-548(ra) # 18dc <print_string>
    1b08:	000b8413          	mv	s0,s7
    1b0c:	00140413          	addi	s0,s0,1
    1b10:	f9dff06f          	j	1aac <printf+0x68>
    1b14:	03451063          	bne	a0,s4,1b34 <printf+0xf0>
    1b18:	00c12783          	lw	a5,12(sp)
    1b1c:	0007a503          	lw	a0,0(a5)
    1b20:	00478713          	addi	a4,a5,4
    1b24:	00e12623          	sw	a4,12(sp)
    1b28:	00000097          	auipc	ra,0x0
    1b2c:	f10080e7          	jalr	-240(ra) # 1a38 <print_hex>
    1b30:	fd9ff06f          	j	1b08 <printf+0xc4>
    1b34:	03551063          	bne	a0,s5,1b54 <printf+0x110>
    1b38:	00c12783          	lw	a5,12(sp)
    1b3c:	0007a503          	lw	a0,0(a5)
    1b40:	00478713          	addi	a4,a5,4
    1b44:	00e12623          	sw	a4,12(sp)
    1b48:	00000097          	auipc	ra,0x0
    1b4c:	dd8080e7          	jalr	-552(ra) # 1920 <print_dec>
    1b50:	fb9ff06f          	j	1b08 <printf+0xc4>
    1b54:	4944a783          	lw	a5,1172(s1) # 5494 <f_putchar>
    1b58:	01651a63          	bne	a0,s6,1b6c <printf+0x128>
    1b5c:	00c12703          	lw	a4,12(sp)
    1b60:	00072503          	lw	a0,0(a4)
    1b64:	00470693          	addi	a3,a4,4
    1b68:	00d12623          	sw	a3,12(sp)
    1b6c:	000780e7          	jalr	a5
    1b70:	f99ff06f          	j	1b08 <printf+0xc4>
    1b74:	4944a783          	lw	a5,1172(s1)
    1b78:	000780e7          	jalr	a5
    1b7c:	f91ff06f          	j	1b0c <printf+0xc8>

00001b80 <__mulsi3>:
    1b80:	00050793          	mv	a5,a0
    1b84:	00000513          	li	a0,0
    1b88:	00079463          	bnez	a5,1b90 <__mulsi3+0x10>
    1b8c:	00008067          	ret
    1b90:	01f79693          	slli	a3,a5,0x1f
    1b94:	41f6d713          	srai	a4,a3,0x1f
    1b98:	00b77733          	and	a4,a4,a1
    1b9c:	00e50533          	add	a0,a0,a4
    1ba0:	0017d793          	srli	a5,a5,0x1
    1ba4:	00159593          	slli	a1,a1,0x1
    1ba8:	fe1ff06f          	j	1b88 <__mulsi3+0x8>

00001bac <fat_list_insert_last>:
    1bac:	00452783          	lw	a5,4(a0)
    1bb0:	04079263          	bnez	a5,1bf4 <fat_list_insert_last+0x48>
    1bb4:	00052783          	lw	a5,0(a0)
    1bb8:	00079c63          	bnez	a5,1bd0 <fat_list_insert_last+0x24>
    1bbc:	00b52023          	sw	a1,0(a0)
    1bc0:	00b52223          	sw	a1,4(a0)
    1bc4:	0005a023          	sw	zero,0(a1)
    1bc8:	0005a223          	sw	zero,4(a1)
    1bcc:	00008067          	ret
    1bd0:	0007a703          	lw	a4,0(a5)
    1bd4:	00f5a223          	sw	a5,4(a1)
    1bd8:	00e5a023          	sw	a4,0(a1)
    1bdc:	00071863          	bnez	a4,1bec <fat_list_insert_last+0x40>
    1be0:	00b52023          	sw	a1,0(a0)
    1be4:	00b7a023          	sw	a1,0(a5)
    1be8:	00008067          	ret
    1bec:	00b72223          	sw	a1,4(a4)
    1bf0:	ff5ff06f          	j	1be4 <fat_list_insert_last+0x38>
    1bf4:	0047a703          	lw	a4,4(a5)
    1bf8:	00f5a023          	sw	a5,0(a1)
    1bfc:	00e5a223          	sw	a4,4(a1)
    1c00:	00071863          	bnez	a4,1c10 <fat_list_insert_last+0x64>
    1c04:	00b52223          	sw	a1,4(a0)
    1c08:	00b7a223          	sw	a1,4(a5)
    1c0c:	00008067          	ret
    1c10:	00b72023          	sw	a1,0(a4)
    1c14:	ff5ff06f          	j	1c08 <fat_list_insert_last+0x5c>

00001c18 <FileString_StrCmpNoCase>:
    1c18:	00050e93          	mv	t4,a0
    1c1c:	00000793          	li	a5,0
    1c20:	01900e13          	li	t3,25
    1c24:	00c79663          	bne	a5,a2,1c30 <FileString_StrCmpNoCase+0x18>
    1c28:	00000513          	li	a0,0
    1c2c:	00008067          	ret
    1c30:	00fe8733          	add	a4,t4,a5
    1c34:	00074803          	lbu	a6,0(a4)
    1c38:	00f58733          	add	a4,a1,a5
    1c3c:	00074883          	lbu	a7,0(a4)
    1c40:	fbf80713          	addi	a4,a6,-65
    1c44:	0ff77713          	zext.b	a4,a4
    1c48:	00080693          	mv	a3,a6
    1c4c:	00ee6663          	bltu	t3,a4,1c58 <FileString_StrCmpNoCase+0x40>
    1c50:	02080693          	addi	a3,a6,32
    1c54:	0ff6f693          	zext.b	a3,a3
    1c58:	fbf88313          	addi	t1,a7,-65
    1c5c:	0ff37313          	zext.b	t1,t1
    1c60:	00088713          	mv	a4,a7
    1c64:	006e6663          	bltu	t3,t1,1c70 <FileString_StrCmpNoCase+0x58>
    1c68:	02088713          	addi	a4,a7,32
    1c6c:	0ff77713          	zext.b	a4,a4
    1c70:	40e68533          	sub	a0,a3,a4
    1c74:	00e69863          	bne	a3,a4,1c84 <FileString_StrCmpNoCase+0x6c>
    1c78:	00178793          	addi	a5,a5,1
    1c7c:	00088463          	beqz	a7,1c84 <FileString_StrCmpNoCase+0x6c>
    1c80:	fa0812e3          	bnez	a6,1c24 <FileString_StrCmpNoCase+0xc>
    1c84:	00008067          	ret

00001c88 <FileString_GetExtension>:
    1c88:	00050793          	mv	a5,a0
    1c8c:	fff00713          	li	a4,-1
    1c90:	02e00613          	li	a2,46
    1c94:	0007c683          	lbu	a3,0(a5)
    1c98:	00069663          	bnez	a3,1ca4 <FileString_GetExtension+0x1c>
    1c9c:	00070513          	mv	a0,a4
    1ca0:	00008067          	ret
    1ca4:	00c69463          	bne	a3,a2,1cac <FileString_GetExtension+0x24>
    1ca8:	40a78733          	sub	a4,a5,a0
    1cac:	00178793          	addi	a5,a5,1
    1cb0:	fe5ff06f          	j	1c94 <FileString_GetExtension+0xc>

00001cb4 <fatfs_fat_writeback>:
    1cb4:	00059e63          	bnez	a1,1cd0 <fatfs_fat_writeback+0x1c>
    1cb8:	00000513          	li	a0,0
    1cbc:	00008067          	ret
    1cc0:	00000513          	li	a0,0
    1cc4:	01c12083          	lw	ra,28(sp)
    1cc8:	02010113          	addi	sp,sp,32
    1ccc:	00008067          	ret
    1cd0:	2045a783          	lw	a5,516(a1)
    1cd4:	04078e63          	beqz	a5,1d30 <fatfs_fat_writeback+0x7c>
    1cd8:	03852683          	lw	a3,56(a0)
    1cdc:	00050793          	mv	a5,a0
    1ce0:	04068663          	beqz	a3,1d2c <fatfs_fat_writeback+0x78>
    1ce4:	0147a703          	lw	a4,20(a5)
    1ce8:	2005a503          	lw	a0,512(a1)
    1cec:	0207a803          	lw	a6,32(a5)
    1cf0:	00100613          	li	a2,1
    1cf4:	fe010113          	addi	sp,sp,-32
    1cf8:	40e607b3          	sub	a5,a2,a4
    1cfc:	00112e23          	sw	ra,28(sp)
    1d00:	00a787b3          	add	a5,a5,a0
    1d04:	00f87663          	bgeu	a6,a5,1d10 <fatfs_fat_writeback+0x5c>
    1d08:	01070733          	add	a4,a4,a6
    1d0c:	40a70633          	sub	a2,a4,a0
    1d10:	00b12623          	sw	a1,12(sp)
    1d14:	000680e7          	jalr	a3
    1d18:	fa0504e3          	beqz	a0,1cc0 <fatfs_fat_writeback+0xc>
    1d1c:	00c12583          	lw	a1,12(sp)
    1d20:	00100513          	li	a0,1
    1d24:	2005a223          	sw	zero,516(a1)
    1d28:	f9dff06f          	j	1cc4 <fatfs_fat_writeback+0x10>
    1d2c:	2005a223          	sw	zero,516(a1)
    1d30:	00100513          	li	a0,1
    1d34:	00008067          	ret

00001d38 <fatfs_fat_read_sector>:
    1d38:	fe010113          	addi	sp,sp,-32
    1d3c:	01212823          	sw	s2,16(sp)
    1d40:	25452903          	lw	s2,596(a0)
    1d44:	00812c23          	sw	s0,24(sp)
    1d48:	00112e23          	sw	ra,28(sp)
    1d4c:	00912a23          	sw	s1,20(sp)
    1d50:	01312623          	sw	s3,12(sp)
    1d54:	00000413          	li	s0,0
    1d58:	04091463          	bnez	s2,1da0 <fatfs_fat_read_sector+0x68>
    1d5c:	25452783          	lw	a5,596(a0)
    1d60:	00058493          	mv	s1,a1
    1d64:	00050993          	mv	s3,a0
    1d68:	20f42623          	sw	a5,524(s0)
    1d6c:	20442783          	lw	a5,516(s0)
    1d70:	24852a23          	sw	s0,596(a0)
    1d74:	08079863          	bnez	a5,1e04 <fatfs_fat_read_sector+0xcc>
    1d78:	0349a783          	lw	a5,52(s3)
    1d7c:	20942023          	sw	s1,512(s0)
    1d80:	00100613          	li	a2,1
    1d84:	00040593          	mv	a1,s0
    1d88:	00048513          	mv	a0,s1
    1d8c:	000780e7          	jalr	a5
    1d90:	08051463          	bnez	a0,1e18 <fatfs_fat_read_sector+0xe0>
    1d94:	fff00793          	li	a5,-1
    1d98:	20f42023          	sw	a5,512(s0)
    1d9c:	0480006f          	j	1de4 <fatfs_fat_read_sector+0xac>
    1da0:	20092783          	lw	a5,512(s2)
    1da4:	00f5e663          	bltu	a1,a5,1db0 <fatfs_fat_read_sector+0x78>
    1da8:	00178713          	addi	a4,a5,1
    1dac:	02e5e463          	bltu	a1,a4,1dd4 <fatfs_fat_read_sector+0x9c>
    1db0:	20c92783          	lw	a5,524(s2)
    1db4:	00079663          	bnez	a5,1dc0 <fatfs_fat_read_sector+0x88>
    1db8:	00040a63          	beqz	s0,1dcc <fatfs_fat_read_sector+0x94>
    1dbc:	20042623          	sw	zero,524(s0)
    1dc0:	00090413          	mv	s0,s2
    1dc4:	20c92903          	lw	s2,524(s2)
    1dc8:	f91ff06f          	j	1d58 <fatfs_fat_read_sector+0x20>
    1dcc:	24052a23          	sw	zero,596(a0)
    1dd0:	ff1ff06f          	j	1dc0 <fatfs_fat_read_sector+0x88>
    1dd4:	40f585b3          	sub	a1,a1,a5
    1dd8:	00959593          	slli	a1,a1,0x9
    1ddc:	00b905b3          	add	a1,s2,a1
    1de0:	20b92423          	sw	a1,520(s2)
    1de4:	01c12083          	lw	ra,28(sp)
    1de8:	01812403          	lw	s0,24(sp)
    1dec:	01412483          	lw	s1,20(sp)
    1df0:	00c12983          	lw	s3,12(sp)
    1df4:	00090513          	mv	a0,s2
    1df8:	01012903          	lw	s2,16(sp)
    1dfc:	02010113          	addi	sp,sp,32
    1e00:	00008067          	ret
    1e04:	00040593          	mv	a1,s0
    1e08:	00000097          	auipc	ra,0x0
    1e0c:	eac080e7          	jalr	-340(ra) # 1cb4 <fatfs_fat_writeback>
    1e10:	f60514e3          	bnez	a0,1d78 <fatfs_fat_read_sector+0x40>
    1e14:	fd1ff06f          	j	1de4 <fatfs_fat_read_sector+0xac>
    1e18:	20842423          	sw	s0,520(s0)
    1e1c:	00040913          	mv	s2,s0
    1e20:	fc5ff06f          	j	1de4 <fatfs_fat_read_sector+0xac>

00001e24 <_allocate_file>:
    1e24:	000057b7          	lui	a5,0x5
    1e28:	49878793          	addi	a5,a5,1176 # 5498 <_free_file_list>
    1e2c:	0007a583          	lw	a1,0(a5)
    1e30:	06058263          	beqz	a1,1e94 <_allocate_file+0x70>
    1e34:	0005a703          	lw	a4,0(a1)
    1e38:	fe010113          	addi	sp,sp,-32
    1e3c:	00112e23          	sw	ra,28(sp)
    1e40:	0045a683          	lw	a3,4(a1)
    1e44:	04071063          	bnez	a4,1e84 <_allocate_file+0x60>
    1e48:	00d7a023          	sw	a3,0(a5)
    1e4c:	0045a683          	lw	a3,4(a1)
    1e50:	02069e63          	bnez	a3,1e8c <_allocate_file+0x68>
    1e54:	00e7a223          	sw	a4,4(a5)
    1e58:	00005537          	lui	a0,0x5
    1e5c:	4a050513          	addi	a0,a0,1184 # 54a0 <_open_file_list>
    1e60:	00b12623          	sw	a1,12(sp)
    1e64:	00000097          	auipc	ra,0x0
    1e68:	d48080e7          	jalr	-696(ra) # 1bac <fat_list_insert_last>
    1e6c:	00c12583          	lw	a1,12(sp)
    1e70:	01c12083          	lw	ra,28(sp)
    1e74:	bc458593          	addi	a1,a1,-1084
    1e78:	00058513          	mv	a0,a1
    1e7c:	02010113          	addi	sp,sp,32
    1e80:	00008067          	ret
    1e84:	00d72223          	sw	a3,4(a4)
    1e88:	fc5ff06f          	j	1e4c <_allocate_file+0x28>
    1e8c:	00e6a023          	sw	a4,0(a3)
    1e90:	fc9ff06f          	j	1e58 <_allocate_file+0x34>
    1e94:	00058513          	mv	a0,a1
    1e98:	00008067          	ret

00001e9c <_free_file>:
    1e9c:	43c52783          	lw	a5,1084(a0)
    1ea0:	44052703          	lw	a4,1088(a0)
    1ea4:	43c50593          	addi	a1,a0,1084
    1ea8:	02079663          	bnez	a5,1ed4 <_free_file+0x38>
    1eac:	000056b7          	lui	a3,0x5
    1eb0:	4ae6a023          	sw	a4,1184(a3) # 54a0 <_open_file_list>
    1eb4:	44052703          	lw	a4,1088(a0)
    1eb8:	02071263          	bnez	a4,1edc <_free_file+0x40>
    1ebc:	00005737          	lui	a4,0x5
    1ec0:	4af72223          	sw	a5,1188(a4) # 54a4 <_open_file_list+0x4>
    1ec4:	00005537          	lui	a0,0x5
    1ec8:	49850513          	addi	a0,a0,1176 # 5498 <_free_file_list>
    1ecc:	00000317          	auipc	t1,0x0
    1ed0:	ce030067          	jr	-800(t1) # 1bac <fat_list_insert_last>
    1ed4:	00e7a223          	sw	a4,4(a5)
    1ed8:	fddff06f          	j	1eb4 <_free_file+0x18>
    1edc:	00f72023          	sw	a5,0(a4)
    1ee0:	fe5ff06f          	j	1ec4 <_free_file+0x28>

00001ee4 <fatfs_lba_of_cluster>:
    1ee4:	ff010113          	addi	sp,sp,-16
    1ee8:	00812423          	sw	s0,8(sp)
    1eec:	00112623          	sw	ra,12(sp)
    1ef0:	00050413          	mv	s0,a0
    1ef4:	ffe58513          	addi	a0,a1,-2
    1ef8:	00044583          	lbu	a1,0(s0)
    1efc:	00000097          	auipc	ra,0x0
    1f00:	c84080e7          	jalr	-892(ra) # 1b80 <__mulsi3>
    1f04:	00442783          	lw	a5,4(s0)
    1f08:	00f50533          	add	a0,a0,a5
    1f0c:	03042783          	lw	a5,48(s0)
    1f10:	00079863          	bnez	a5,1f20 <fatfs_lba_of_cluster+0x3c>
    1f14:	02845783          	lhu	a5,40(s0)
    1f18:	4047d793          	srai	a5,a5,0x4
    1f1c:	00f50533          	add	a0,a0,a5
    1f20:	00c12083          	lw	ra,12(sp)
    1f24:	00812403          	lw	s0,8(sp)
    1f28:	01010113          	addi	sp,sp,16
    1f2c:	00008067          	ret

00001f30 <fatfs_sector_read>:
    1f30:	03452783          	lw	a5,52(a0)
    1f34:	00058713          	mv	a4,a1
    1f38:	00070513          	mv	a0,a4
    1f3c:	00060593          	mv	a1,a2
    1f40:	00068613          	mv	a2,a3
    1f44:	00078067          	jr	a5

00001f48 <fatfs_sector_write>:
    1f48:	03852783          	lw	a5,56(a0)
    1f4c:	00058713          	mv	a4,a1
    1f50:	00070513          	mv	a0,a4
    1f54:	00060593          	mv	a1,a2
    1f58:	00068613          	mv	a2,a3
    1f5c:	00078067          	jr	a5

00001f60 <fatfs_write_sector>:
    1f60:	03852703          	lw	a4,56(a0)
    1f64:	0a070463          	beqz	a4,200c <fatfs_write_sector+0xac>
    1f68:	03052883          	lw	a7,48(a0)
    1f6c:	00050793          	mv	a5,a0
    1f70:	0115e833          	or	a6,a1,a7
    1f74:	02081e63          	bnez	a6,1fb0 <fatfs_write_sector+0x50>
    1f78:	01052583          	lw	a1,16(a0)
    1f7c:	08b67863          	bgeu	a2,a1,200c <fatfs_write_sector+0xac>
    1f80:	01c52503          	lw	a0,28(a0)
    1f84:	00c7a583          	lw	a1,12(a5)
    1f88:	00b50533          	add	a0,a0,a1
    1f8c:	00c50533          	add	a0,a0,a2
    1f90:	00068863          	beqz	a3,1fa0 <fatfs_write_sector+0x40>
    1f94:	00100613          	li	a2,1
    1f98:	00068593          	mv	a1,a3
    1f9c:	00070067          	jr	a4
    1fa0:	24a7a223          	sw	a0,580(a5)
    1fa4:	00100613          	li	a2,1
    1fa8:	04478593          	addi	a1,a5,68
    1fac:	ff1ff06f          	j	1f9c <fatfs_write_sector+0x3c>
    1fb0:	fe010113          	addi	sp,sp,-32
    1fb4:	00e12623          	sw	a4,12(sp)
    1fb8:	00d12423          	sw	a3,8(sp)
    1fbc:	00c12223          	sw	a2,4(sp)
    1fc0:	00112e23          	sw	ra,28(sp)
    1fc4:	00a12023          	sw	a0,0(sp)
    1fc8:	00000097          	auipc	ra,0x0
    1fcc:	f1c080e7          	jalr	-228(ra) # 1ee4 <fatfs_lba_of_cluster>
    1fd0:	00412603          	lw	a2,4(sp)
    1fd4:	00812683          	lw	a3,8(sp)
    1fd8:	00012783          	lw	a5,0(sp)
    1fdc:	00c12703          	lw	a4,12(sp)
    1fe0:	00a60533          	add	a0,a2,a0
    1fe4:	00068c63          	beqz	a3,1ffc <fatfs_write_sector+0x9c>
    1fe8:	00100613          	li	a2,1
    1fec:	00068593          	mv	a1,a3
    1ff0:	01c12083          	lw	ra,28(sp)
    1ff4:	02010113          	addi	sp,sp,32
    1ff8:	fa5ff06f          	j	1f9c <fatfs_write_sector+0x3c>
    1ffc:	24a7a223          	sw	a0,580(a5)
    2000:	00100613          	li	a2,1
    2004:	04478593          	addi	a1,a5,68
    2008:	fe9ff06f          	j	1ff0 <fatfs_write_sector+0x90>
    200c:	00000513          	li	a0,0
    2010:	00008067          	ret

00002014 <fl_init>:
    2014:	ff010113          	addi	sp,sp,-16
    2018:	00005537          	lui	a0,0x5
    201c:	000057b7          	lui	a5,0x5
    2020:	0000c5b7          	lui	a1,0xc
    2024:	00112623          	sw	ra,12(sp)
    2028:	49850513          	addi	a0,a0,1176 # 5498 <_free_file_list>
    202c:	4a078793          	addi	a5,a5,1184 # 54a0 <_open_file_list>
    2030:	fd458593          	addi	a1,a1,-44 # bfd4 <_files+0x43c>
    2034:	00052223          	sw	zero,4(a0)
    2038:	00052023          	sw	zero,0(a0)
    203c:	0007a223          	sw	zero,4(a5)
    2040:	0007a023          	sw	zero,0(a5)
    2044:	00000097          	auipc	ra,0x0
    2048:	b68080e7          	jalr	-1176(ra) # 1bac <fat_list_insert_last>
    204c:	000057b7          	lui	a5,0x5
    2050:	0000c5b7          	lui	a1,0xc
    2054:	49878513          	addi	a0,a5,1176 # 5498 <_free_file_list>
    2058:	41858593          	addi	a1,a1,1048 # c418 <_files+0x880>
    205c:	00000097          	auipc	ra,0x0
    2060:	b50080e7          	jalr	-1200(ra) # 1bac <fat_list_insert_last>
    2064:	00c12083          	lw	ra,12(sp)
    2068:	000057b7          	lui	a5,0x5
    206c:	00100713          	li	a4,1
    2070:	4ae7a623          	sw	a4,1196(a5) # 54ac <_filelib_init>
    2074:	01010113          	addi	sp,sp,16
    2078:	00008067          	ret

0000207c <fl_closedir>:
    207c:	00000513          	li	a0,0
    2080:	00008067          	ret

00002084 <fatfs_lfn_cache_entry>:
    2084:	0005c783          	lbu	a5,0(a1)
    2088:	01300693          	li	a3,19
    208c:	01f7f793          	andi	a5,a5,31
    2090:	fff78713          	addi	a4,a5,-1
    2094:	0ff77613          	zext.b	a2,a4
    2098:	0ac6ea63          	bltu	a3,a2,214c <fatfs_lfn_cache_entry+0xc8>
    209c:	10554683          	lbu	a3,261(a0)
    20a0:	00069463          	bnez	a3,20a8 <fatfs_lfn_cache_entry+0x24>
    20a4:	10f502a3          	sb	a5,261(a0)
    20a8:	00171793          	slli	a5,a4,0x1
    20ac:	00e787b3          	add	a5,a5,a4
    20b0:	0015c683          	lbu	a3,1(a1)
    20b4:	00279793          	slli	a5,a5,0x2
    20b8:	00e787b3          	add	a5,a5,a4
    20bc:	00f50533          	add	a0,a0,a5
    20c0:	00d50023          	sb	a3,0(a0)
    20c4:	0035c783          	lbu	a5,3(a1)
    20c8:	0ff00713          	li	a4,255
    20cc:	02000693          	li	a3,32
    20d0:	00f500a3          	sb	a5,1(a0)
    20d4:	0055c783          	lbu	a5,5(a1)
    20d8:	00f50123          	sb	a5,2(a0)
    20dc:	0075c783          	lbu	a5,7(a1)
    20e0:	00f501a3          	sb	a5,3(a0)
    20e4:	0095c783          	lbu	a5,9(a1)
    20e8:	00f50223          	sb	a5,4(a0)
    20ec:	00e5c783          	lbu	a5,14(a1)
    20f0:	00f502a3          	sb	a5,5(a0)
    20f4:	0105c783          	lbu	a5,16(a1)
    20f8:	00f50323          	sb	a5,6(a0)
    20fc:	0125c783          	lbu	a5,18(a1)
    2100:	00f503a3          	sb	a5,7(a0)
    2104:	0145c783          	lbu	a5,20(a1)
    2108:	00f50423          	sb	a5,8(a0)
    210c:	0165c783          	lbu	a5,22(a1)
    2110:	00f504a3          	sb	a5,9(a0)
    2114:	0185c783          	lbu	a5,24(a1)
    2118:	00f50523          	sb	a5,10(a0)
    211c:	01c5c783          	lbu	a5,28(a1)
    2120:	00f505a3          	sb	a5,11(a0)
    2124:	01e5c783          	lbu	a5,30(a1)
    2128:	00f50623          	sb	a5,12(a0)
    212c:	00d00793          	li	a5,13
    2130:	00054603          	lbu	a2,0(a0)
    2134:	00e61463          	bne	a2,a4,213c <fatfs_lfn_cache_entry+0xb8>
    2138:	00d50023          	sb	a3,0(a0)
    213c:	fff78793          	addi	a5,a5,-1
    2140:	0ff7f793          	zext.b	a5,a5
    2144:	00150513          	addi	a0,a0,1
    2148:	fe0794e3          	bnez	a5,2130 <fatfs_lfn_cache_entry+0xac>
    214c:	00008067          	ret

00002150 <fatfs_lfn_cache_get>:
    2150:	10554703          	lbu	a4,261(a0)
    2154:	01400793          	li	a5,20
    2158:	00f71663          	bne	a4,a5,2164 <fatfs_lfn_cache_get+0x14>
    215c:	10050223          	sb	zero,260(a0)
    2160:	00008067          	ret
    2164:	02070063          	beqz	a4,2184 <fatfs_lfn_cache_get+0x34>
    2168:	00171793          	slli	a5,a4,0x1
    216c:	00e787b3          	add	a5,a5,a4
    2170:	00279793          	slli	a5,a5,0x2
    2174:	00e787b3          	add	a5,a5,a4
    2178:	00f507b3          	add	a5,a0,a5
    217c:	00078023          	sb	zero,0(a5)
    2180:	00008067          	ret
    2184:	00050023          	sb	zero,0(a0)
    2188:	00008067          	ret

0000218c <fatfs_entry_lfn_text>:
    218c:	00b54503          	lbu	a0,11(a0)
    2190:	00f57513          	andi	a0,a0,15
    2194:	ff150513          	addi	a0,a0,-15
    2198:	00153513          	seqz	a0,a0
    219c:	00008067          	ret

000021a0 <fatfs_entry_lfn_invalid>:
    21a0:	00054783          	lbu	a5,0(a0)
    21a4:	f1b78713          	addi	a4,a5,-229
    21a8:	02070263          	beqz	a4,21cc <fatfs_entry_lfn_invalid+0x2c>
    21ac:	02078063          	beqz	a5,21cc <fatfs_entry_lfn_invalid+0x2c>
    21b0:	00b54783          	lbu	a5,11(a0)
    21b4:	00800713          	li	a4,8
    21b8:	00100513          	li	a0,1
    21bc:	00e78a63          	beq	a5,a4,21d0 <fatfs_entry_lfn_invalid+0x30>
    21c0:	0067f793          	andi	a5,a5,6
    21c4:	00f03533          	snez	a0,a5
    21c8:	00008067          	ret
    21cc:	00100513          	li	a0,1
    21d0:	00008067          	ret

000021d4 <fatfs_entry_lfn_exists>:
    21d4:	00b5c783          	lbu	a5,11(a1)
    21d8:	00f00713          	li	a4,15
    21dc:	04e78063          	beq	a5,a4,221c <fatfs_entry_lfn_exists+0x48>
    21e0:	0005c683          	lbu	a3,0(a1)
    21e4:	f1b68713          	addi	a4,a3,-229
    21e8:	00e03733          	snez	a4,a4
    21ec:	00d036b3          	snez	a3,a3
    21f0:	00d77733          	and	a4,a4,a3
    21f4:	02070463          	beqz	a4,221c <fatfs_entry_lfn_exists+0x48>
    21f8:	ff878713          	addi	a4,a5,-8
    21fc:	02070063          	beqz	a4,221c <fatfs_entry_lfn_exists+0x48>
    2200:	0067f713          	andi	a4,a5,6
    2204:	00000793          	li	a5,0
    2208:	00071663          	bnez	a4,2214 <fatfs_entry_lfn_exists+0x40>
    220c:	10554783          	lbu	a5,261(a0)
    2210:	00f037b3          	snez	a5,a5
    2214:	00078513          	mv	a0,a5
    2218:	00008067          	ret
    221c:	00000793          	li	a5,0
    2220:	ff5ff06f          	j	2214 <fatfs_entry_lfn_exists+0x40>

00002224 <fatfs_entry_sfn_only>:
    2224:	00b54783          	lbu	a5,11(a0)
    2228:	00f00713          	li	a4,15
    222c:	02e78863          	beq	a5,a4,225c <fatfs_entry_sfn_only+0x38>
    2230:	00054683          	lbu	a3,0(a0)
    2234:	f1b68713          	addi	a4,a3,-229
    2238:	00e03733          	snez	a4,a4
    223c:	00d036b3          	snez	a3,a3
    2240:	00d77733          	and	a4,a4,a3
    2244:	00070c63          	beqz	a4,225c <fatfs_entry_sfn_only+0x38>
    2248:	ff878713          	addi	a4,a5,-8
    224c:	00070863          	beqz	a4,225c <fatfs_entry_sfn_only+0x38>
    2250:	0067f513          	andi	a0,a5,6
    2254:	00153513          	seqz	a0,a0
    2258:	00008067          	ret
    225c:	00000513          	li	a0,0
    2260:	00008067          	ret

00002264 <fatfs_entry_is_dir>:
    2264:	00b54503          	lbu	a0,11(a0)
    2268:	00455513          	srli	a0,a0,0x4
    226c:	00157513          	andi	a0,a0,1
    2270:	00008067          	ret

00002274 <fatfs_lfn_entries_required>:
    2274:	ff010113          	addi	sp,sp,-16
    2278:	00112623          	sw	ra,12(sp)
    227c:	fffff097          	auipc	ra,0xfffff
    2280:	1f4080e7          	jalr	500(ra) # 1470 <strlen>
    2284:	00050a63          	beqz	a0,2298 <fatfs_lfn_entries_required+0x24>
    2288:	00d00593          	li	a1,13
    228c:	00c50513          	addi	a0,a0,12
    2290:	fffff097          	auipc	ra,0xfffff
    2294:	0ec080e7          	jalr	236(ra) # 137c <__divsi3>
    2298:	00c12083          	lw	ra,12(sp)
    229c:	01010113          	addi	sp,sp,16
    22a0:	00008067          	ret

000022a4 <fatfs_filename_to_lfn>:
    22a4:	f9010113          	addi	sp,sp,-112
    22a8:	06812423          	sw	s0,104(sp)
    22ac:	00058413          	mv	s0,a1
    22b0:	000055b7          	lui	a1,0x5
    22b4:	24058593          	addi	a1,a1,576 # 5240 <font+0x1e0>
    22b8:	06912223          	sw	s1,100(sp)
    22bc:	05312e23          	sw	s3,92(sp)
    22c0:	00060493          	mv	s1,a2
    22c4:	00050993          	mv	s3,a0
    22c8:	03400613          	li	a2,52
    22cc:	01c10513          	addi	a0,sp,28
    22d0:	00d12623          	sw	a3,12(sp)
    22d4:	06112623          	sw	ra,108(sp)
    22d8:	07212023          	sw	s2,96(sp)
    22dc:	05412c23          	sw	s4,88(sp)
    22e0:	fffff097          	auipc	ra,0xfffff
    22e4:	16c080e7          	jalr	364(ra) # 144c <memcpy>
    22e8:	00098513          	mv	a0,s3
    22ec:	fffff097          	auipc	ra,0xfffff
    22f0:	184080e7          	jalr	388(ra) # 1470 <strlen>
    22f4:	00050913          	mv	s2,a0
    22f8:	00098513          	mv	a0,s3
    22fc:	00000097          	auipc	ra,0x0
    2300:	f78080e7          	jalr	-136(ra) # 2274 <fatfs_lfn_entries_required>
    2304:	00050a13          	mv	s4,a0
    2308:	02000613          	li	a2,32
    230c:	00000593          	li	a1,0
    2310:	00040513          	mv	a0,s0
    2314:	fffff097          	auipc	ra,0xfffff
    2318:	11c080e7          	jalr	284(ra) # 1430 <memset>
    231c:	fffa0713          	addi	a4,s4,-1 # 3fff <fatfs_fat_set_cluster+0xfb>
    2320:	00c12683          	lw	a3,12(sp)
    2324:	00148793          	addi	a5,s1,1
    2328:	00971463          	bne	a4,s1,2330 <fatfs_filename_to_lfn+0x8c>
    232c:	0407e793          	ori	a5,a5,64
    2330:	00149613          	slli	a2,s1,0x1
    2334:	00960633          	add	a2,a2,s1
    2338:	00f40023          	sb	a5,0(s0)
    233c:	00261613          	slli	a2,a2,0x2
    2340:	00f00793          	li	a5,15
    2344:	00f405a3          	sb	a5,11(s0)
    2348:	00d406a3          	sb	a3,13(s0)
    234c:	01c10793          	addi	a5,sp,28
    2350:	00960633          	add	a2,a2,s1
    2354:	fff00693          	li	a3,-1
    2358:	0007a703          	lw	a4,0(a5)
    235c:	00e40733          	add	a4,s0,a4
    2360:	05265063          	bge	a2,s2,23a0 <fatfs_filename_to_lfn+0xfc>
    2364:	00c985b3          	add	a1,s3,a2
    2368:	0005c583          	lbu	a1,0(a1)
    236c:	00b70023          	sb	a1,0(a4)
    2370:	00478793          	addi	a5,a5,4
    2374:	05010713          	addi	a4,sp,80
    2378:	00160613          	addi	a2,a2,1
    237c:	fce79ee3          	bne	a5,a4,2358 <fatfs_filename_to_lfn+0xb4>
    2380:	06c12083          	lw	ra,108(sp)
    2384:	06812403          	lw	s0,104(sp)
    2388:	06412483          	lw	s1,100(sp)
    238c:	06012903          	lw	s2,96(sp)
    2390:	05c12983          	lw	s3,92(sp)
    2394:	05812a03          	lw	s4,88(sp)
    2398:	07010113          	addi	sp,sp,112
    239c:	00008067          	ret
    23a0:	01261663          	bne	a2,s2,23ac <fatfs_filename_to_lfn+0x108>
    23a4:	00070023          	sb	zero,0(a4)
    23a8:	fc9ff06f          	j	2370 <fatfs_filename_to_lfn+0xcc>
    23ac:	00d70023          	sb	a3,0(a4)
    23b0:	00d700a3          	sb	a3,1(a4)
    23b4:	fbdff06f          	j	2370 <fatfs_filename_to_lfn+0xcc>

000023b8 <fatfs_sfn_create_entry>:
    23b8:	00000793          	li	a5,0
    23bc:	00b00813          	li	a6,11
    23c0:	00f508b3          	add	a7,a0,a5
    23c4:	0008c303          	lbu	t1,0(a7)
    23c8:	00f688b3          	add	a7,a3,a5
    23cc:	00178793          	addi	a5,a5,1
    23d0:	00688023          	sb	t1,0(a7)
    23d4:	ff0796e3          	bne	a5,a6,23c0 <fatfs_sfn_create_entry+0x8>
    23d8:	00e03733          	snez	a4,a4
    23dc:	40e00733          	neg	a4,a4
    23e0:	02000793          	li	a5,32
    23e4:	ff077713          	andi	a4,a4,-16
    23e8:	00f70733          	add	a4,a4,a5
    23ec:	00f68823          	sb	a5,16(a3)
    23f0:	00f68923          	sb	a5,18(a3)
    23f4:	00f68c23          	sb	a5,24(a3)
    23f8:	01065793          	srli	a5,a2,0x10
    23fc:	00f68a23          	sb	a5,20(a3)
    2400:	01865793          	srli	a5,a2,0x18
    2404:	00f68aa3          	sb	a5,21(a3)
    2408:	0085d793          	srli	a5,a1,0x8
    240c:	00c68d23          	sb	a2,26(a3)
    2410:	00b68e23          	sb	a1,28(a3)
    2414:	00865613          	srli	a2,a2,0x8
    2418:	00f68ea3          	sb	a5,29(a3)
    241c:	0105d793          	srli	a5,a1,0x10
    2420:	0185d593          	srli	a1,a1,0x18
    2424:	000686a3          	sb	zero,13(a3)
    2428:	00068723          	sb	zero,14(a3)
    242c:	000687a3          	sb	zero,15(a3)
    2430:	000688a3          	sb	zero,17(a3)
    2434:	000689a3          	sb	zero,19(a3)
    2438:	00068b23          	sb	zero,22(a3)
    243c:	00068ba3          	sb	zero,23(a3)
    2440:	00068ca3          	sb	zero,25(a3)
    2444:	00e685a3          	sb	a4,11(a3)
    2448:	00068623          	sb	zero,12(a3)
    244c:	00c68da3          	sb	a2,27(a3)
    2450:	00f68f23          	sb	a5,30(a3)
    2454:	00b68fa3          	sb	a1,31(a3)
    2458:	00008067          	ret

0000245c <fatfs_lfn_create_sfn>:
    245c:	fd010113          	addi	sp,sp,-48
    2460:	02912223          	sw	s1,36(sp)
    2464:	00050493          	mv	s1,a0
    2468:	00058513          	mv	a0,a1
    246c:	02812423          	sw	s0,40(sp)
    2470:	01312e23          	sw	s3,28(sp)
    2474:	00058413          	mv	s0,a1
    2478:	02112623          	sw	ra,44(sp)
    247c:	03212023          	sw	s2,32(sp)
    2480:	fffff097          	auipc	ra,0xfffff
    2484:	ff0080e7          	jalr	-16(ra) # 1470 <strlen>
    2488:	00044783          	lbu	a5,0(s0)
    248c:	02e00993          	li	s3,46
    2490:	15378063          	beq	a5,s3,25d0 <fatfs_lfn_create_sfn+0x174>
    2494:	00b00613          	li	a2,11
    2498:	02000593          	li	a1,32
    249c:	00050913          	mv	s2,a0
    24a0:	00048513          	mv	a0,s1
    24a4:	fffff097          	auipc	ra,0xfffff
    24a8:	f8c080e7          	jalr	-116(ra) # 1430 <memset>
    24ac:	00300613          	li	a2,3
    24b0:	02000593          	li	a1,32
    24b4:	00c10513          	addi	a0,sp,12
    24b8:	fffff097          	auipc	ra,0xfffff
    24bc:	f78080e7          	jalr	-136(ra) # 1430 <memset>
    24c0:	fff00793          	li	a5,-1
    24c4:	00000713          	li	a4,0
    24c8:	0d274263          	blt	a4,s2,258c <fatfs_lfn_create_sfn+0x130>
    24cc:	fff00713          	li	a4,-1
    24d0:	0ee78863          	beq	a5,a4,25c0 <fatfs_lfn_create_sfn+0x164>
    24d4:	00178713          	addi	a4,a5,1
    24d8:	00c10693          	addi	a3,sp,12
    24dc:	00478613          	addi	a2,a5,4
    24e0:	0ce61263          	bne	a2,a4,25a4 <fatfs_lfn_create_sfn+0x148>
    24e4:	00000613          	li	a2,0
    24e8:	00000693          	li	a3,0
    24ec:	01900813          	li	a6,25
    24f0:	00800893          	li	a7,8
    24f4:	02f6de63          	bge	a3,a5,2530 <fatfs_lfn_create_sfn+0xd4>
    24f8:	00d40733          	add	a4,s0,a3
    24fc:	00074703          	lbu	a4,0(a4)
    2500:	fe070513          	addi	a0,a4,-32
    2504:	0c050263          	beqz	a0,25c8 <fatfs_lfn_create_sfn+0x16c>
    2508:	fd270593          	addi	a1,a4,-46
    250c:	0a058e63          	beqz	a1,25c8 <fatfs_lfn_create_sfn+0x16c>
    2510:	f9f70593          	addi	a1,a4,-97
    2514:	0ff5f593          	zext.b	a1,a1
    2518:	00c48333          	add	t1,s1,a2
    251c:	00160613          	addi	a2,a2,1
    2520:	00b86463          	bltu	a6,a1,2528 <fatfs_lfn_create_sfn+0xcc>
    2524:	0ff57713          	zext.b	a4,a0
    2528:	00e30023          	sb	a4,0(t1)
    252c:	09161e63          	bne	a2,a7,25c8 <fatfs_lfn_create_sfn+0x16c>
    2530:	00c10793          	addi	a5,sp,12
    2534:	00800693          	li	a3,8
    2538:	01900513          	li	a0,25
    253c:	00b00593          	li	a1,11
    2540:	0007c703          	lbu	a4,0(a5)
    2544:	f9f70613          	addi	a2,a4,-97
    2548:	0ff67613          	zext.b	a2,a2
    254c:	00c56663          	bltu	a0,a2,2558 <fatfs_lfn_create_sfn+0xfc>
    2550:	fe070713          	addi	a4,a4,-32
    2554:	0ff77713          	zext.b	a4,a4
    2558:	00d48633          	add	a2,s1,a3
    255c:	00e60023          	sb	a4,0(a2)
    2560:	00168693          	addi	a3,a3,1
    2564:	00178793          	addi	a5,a5,1
    2568:	fcb69ce3          	bne	a3,a1,2540 <fatfs_lfn_create_sfn+0xe4>
    256c:	00100513          	li	a0,1
    2570:	02c12083          	lw	ra,44(sp)
    2574:	02812403          	lw	s0,40(sp)
    2578:	02412483          	lw	s1,36(sp)
    257c:	02012903          	lw	s2,32(sp)
    2580:	01c12983          	lw	s3,28(sp)
    2584:	03010113          	addi	sp,sp,48
    2588:	00008067          	ret
    258c:	00e406b3          	add	a3,s0,a4
    2590:	0006c683          	lbu	a3,0(a3)
    2594:	01369463          	bne	a3,s3,259c <fatfs_lfn_create_sfn+0x140>
    2598:	00070793          	mv	a5,a4
    259c:	00170713          	addi	a4,a4,1
    25a0:	f29ff06f          	j	24c8 <fatfs_lfn_create_sfn+0x6c>
    25a4:	01275863          	bge	a4,s2,25b4 <fatfs_lfn_create_sfn+0x158>
    25a8:	00e405b3          	add	a1,s0,a4
    25ac:	0005c583          	lbu	a1,0(a1)
    25b0:	00b68023          	sb	a1,0(a3)
    25b4:	00170713          	addi	a4,a4,1
    25b8:	00168693          	addi	a3,a3,1
    25bc:	f25ff06f          	j	24e0 <fatfs_lfn_create_sfn+0x84>
    25c0:	00090793          	mv	a5,s2
    25c4:	f21ff06f          	j	24e4 <fatfs_lfn_create_sfn+0x88>
    25c8:	00168693          	addi	a3,a3,1
    25cc:	f29ff06f          	j	24f4 <fatfs_lfn_create_sfn+0x98>
    25d0:	00000513          	li	a0,0
    25d4:	f9dff06f          	j	2570 <fatfs_lfn_create_sfn+0x114>

000025d8 <fatfs_lfn_generate_tail>:
    25d8:	000187b7          	lui	a5,0x18
    25dc:	69f78793          	addi	a5,a5,1695 # 1869f <__stacktop+0x869f>
    25e0:	16c7e463          	bltu	a5,a2,2748 <fatfs_lfn_generate_tail+0x170>
    25e4:	fa010113          	addi	sp,sp,-96
    25e8:	04812c23          	sw	s0,88(sp)
    25ec:	04912a23          	sw	s1,84(sp)
    25f0:	03712e23          	sw	s7,60(sp)
    25f4:	00060413          	mv	s0,a2
    25f8:	00058b93          	mv	s7,a1
    25fc:	00c00613          	li	a2,12
    2600:	00000593          	li	a1,0
    2604:	00050493          	mv	s1,a0
    2608:	00410513          	addi	a0,sp,4
    260c:	04112e23          	sw	ra,92(sp)
    2610:	05312623          	sw	s3,76(sp)
    2614:	05412423          	sw	s4,72(sp)
    2618:	05612023          	sw	s6,64(sp)
    261c:	05212823          	sw	s2,80(sp)
    2620:	05512223          	sw	s5,68(sp)
    2624:	fffff097          	auipc	ra,0xfffff
    2628:	e0c080e7          	jalr	-500(ra) # 1430 <memset>
    262c:	000055b7          	lui	a1,0x5
    2630:	07e00793          	li	a5,126
    2634:	01100613          	li	a2,17
    2638:	01858593          	addi	a1,a1,24 # 5018 <LEDS+0xfc>
    263c:	01c10513          	addi	a0,sp,28
    2640:	01010993          	addi	s3,sp,16
    2644:	00f10223          	sb	a5,4(sp)
    2648:	00098a13          	mv	s4,s3
    264c:	fffff097          	auipc	ra,0xfffff
    2650:	e00080e7          	jalr	-512(ra) # 144c <memcpy>
    2654:	00900b13          	li	s6,9
    2658:	00a00593          	li	a1,10
    265c:	00040513          	mv	a0,s0
    2660:	fffff097          	auipc	ra,0xfffff
    2664:	d6c080e7          	jalr	-660(ra) # 13cc <__umodsi3>
    2668:	03050793          	addi	a5,a0,48
    266c:	00278533          	add	a0,a5,sp
    2670:	fec54783          	lbu	a5,-20(a0)
    2674:	00098913          	mv	s2,s3
    2678:	00040513          	mv	a0,s0
    267c:	00a00593          	li	a1,10
    2680:	00f98023          	sb	a5,0(s3)
    2684:	00040a93          	mv	s5,s0
    2688:	fffff097          	auipc	ra,0xfffff
    268c:	cfc080e7          	jalr	-772(ra) # 1384 <__udivsi3>
    2690:	00198993          	addi	s3,s3,1
    2694:	00050413          	mv	s0,a0
    2698:	fd5b60e3          	bltu	s6,s5,2658 <fatfs_lfn_generate_tail+0x80>
    269c:	00098023          	sb	zero,0(s3)
    26a0:	00410713          	addi	a4,sp,4
    26a4:	00090793          	mv	a5,s2
    26a8:	0947f663          	bgeu	a5,s4,2734 <fatfs_lfn_generate_tail+0x15c>
    26ac:	00f10713          	addi	a4,sp,15
    26b0:	00000793          	li	a5,0
    26b4:	00e96663          	bltu	s2,a4,26c0 <fatfs_lfn_generate_tail+0xe8>
    26b8:	41490933          	sub	s2,s2,s4
    26bc:	00190793          	addi	a5,s2,1
    26c0:	03078793          	addi	a5,a5,48
    26c4:	002787b3          	add	a5,a5,sp
    26c8:	000b8593          	mv	a1,s7
    26cc:	fc078aa3          	sb	zero,-43(a5)
    26d0:	00b00613          	li	a2,11
    26d4:	00048513          	mv	a0,s1
    26d8:	fffff097          	auipc	ra,0xfffff
    26dc:	d74080e7          	jalr	-652(ra) # 144c <memcpy>
    26e0:	00410513          	addi	a0,sp,4
    26e4:	fffff097          	auipc	ra,0xfffff
    26e8:	d8c080e7          	jalr	-628(ra) # 1470 <strlen>
    26ec:	40a484b3          	sub	s1,s1,a0
    26f0:	00050613          	mv	a2,a0
    26f4:	00410593          	addi	a1,sp,4
    26f8:	00848513          	addi	a0,s1,8
    26fc:	fffff097          	auipc	ra,0xfffff
    2700:	d50080e7          	jalr	-688(ra) # 144c <memcpy>
    2704:	05c12083          	lw	ra,92(sp)
    2708:	05812403          	lw	s0,88(sp)
    270c:	05412483          	lw	s1,84(sp)
    2710:	05012903          	lw	s2,80(sp)
    2714:	04c12983          	lw	s3,76(sp)
    2718:	04812a03          	lw	s4,72(sp)
    271c:	04412a83          	lw	s5,68(sp)
    2720:	04012b03          	lw	s6,64(sp)
    2724:	03c12b83          	lw	s7,60(sp)
    2728:	00100513          	li	a0,1
    272c:	06010113          	addi	sp,sp,96
    2730:	00008067          	ret
    2734:	0007c683          	lbu	a3,0(a5)
    2738:	00170713          	addi	a4,a4,1
    273c:	fff78793          	addi	a5,a5,-1
    2740:	00d70023          	sb	a3,0(a4)
    2744:	f65ff06f          	j	26a8 <fatfs_lfn_generate_tail+0xd0>
    2748:	00000513          	li	a0,0
    274c:	00008067          	ret

00002750 <fatfs_total_path_levels>:
    2750:	fff00793          	li	a5,-1
    2754:	06050263          	beqz	a0,27b8 <fatfs_total_path_levels+0x68>
    2758:	00054703          	lbu	a4,0(a0)
    275c:	02f00793          	li	a5,47
    2760:	00f71863          	bne	a4,a5,2770 <fatfs_total_path_levels+0x20>
    2764:	00150513          	addi	a0,a0,1
    2768:	00000793          	li	a5,0
    276c:	0400006f          	j	27ac <fatfs_total_path_levels+0x5c>
    2770:	00154703          	lbu	a4,1(a0)
    2774:	03a00793          	li	a5,58
    2778:	00f70a63          	beq	a4,a5,278c <fatfs_total_path_levels+0x3c>
    277c:	00254683          	lbu	a3,2(a0)
    2780:	05c00713          	li	a4,92
    2784:	fff00793          	li	a5,-1
    2788:	02e69863          	bne	a3,a4,27b8 <fatfs_total_path_levels+0x68>
    278c:	00350513          	addi	a0,a0,3
    2790:	05c00713          	li	a4,92
    2794:	fd5ff06f          	j	2768 <fatfs_total_path_levels+0x18>
    2798:	00150513          	addi	a0,a0,1
    279c:	00e68663          	beq	a3,a4,27a8 <fatfs_total_path_levels+0x58>
    27a0:	00054683          	lbu	a3,0(a0)
    27a4:	fe069ae3          	bnez	a3,2798 <fatfs_total_path_levels+0x48>
    27a8:	00178793          	addi	a5,a5,1
    27ac:	00054683          	lbu	a3,0(a0)
    27b0:	fe0698e3          	bnez	a3,27a0 <fatfs_total_path_levels+0x50>
    27b4:	fff78793          	addi	a5,a5,-1
    27b8:	00078513          	mv	a0,a5
    27bc:	00008067          	ret

000027c0 <fatfs_get_substring>:
    27c0:	0cd05e63          	blez	a3,289c <fatfs_get_substring+0xdc>
    27c4:	0c050c63          	beqz	a0,289c <fatfs_get_substring+0xdc>
    27c8:	fe010113          	addi	sp,sp,-32
    27cc:	00812c23          	sw	s0,24(sp)
    27d0:	00112e23          	sw	ra,28(sp)
    27d4:	00912a23          	sw	s1,20(sp)
    27d8:	00054483          	lbu	s1,0(a0)
    27dc:	02f00793          	li	a5,47
    27e0:	00150413          	addi	s0,a0,1
    27e4:	02f48463          	beq	s1,a5,280c <fatfs_get_substring+0x4c>
    27e8:	00154703          	lbu	a4,1(a0)
    27ec:	03a00793          	li	a5,58
    27f0:	00f70a63          	beq	a4,a5,2804 <fatfs_get_substring+0x44>
    27f4:	00254803          	lbu	a6,2(a0)
    27f8:	05c00713          	li	a4,92
    27fc:	fff00793          	li	a5,-1
    2800:	04e81c63          	bne	a6,a4,2858 <fatfs_get_substring+0x98>
    2804:	00350413          	addi	s0,a0,3
    2808:	05c00493          	li	s1,92
    280c:	00040513          	mv	a0,s0
    2810:	00d12623          	sw	a3,12(sp)
    2814:	00c12423          	sw	a2,8(sp)
    2818:	00b12223          	sw	a1,4(sp)
    281c:	fffff097          	auipc	ra,0xfffff
    2820:	c54080e7          	jalr	-940(ra) # 1470 <strlen>
    2824:	00c12683          	lw	a3,12(sp)
    2828:	00412583          	lw	a1,4(sp)
    282c:	00812603          	lw	a2,8(sp)
    2830:	00000713          	li	a4,0
    2834:	00000813          	li	a6,0
    2838:	00000793          	li	a5,0
    283c:	fff68693          	addi	a3,a3,-1
    2840:	00e608b3          	add	a7,a2,a4
    2844:	02a7c663          	blt	a5,a0,2870 <fatfs_get_substring+0xb0>
    2848:	00088023          	sb	zero,0(a7)
    284c:	00064783          	lbu	a5,0(a2)
    2850:	0017b793          	seqz	a5,a5
    2854:	40f007b3          	neg	a5,a5
    2858:	01c12083          	lw	ra,28(sp)
    285c:	01812403          	lw	s0,24(sp)
    2860:	01412483          	lw	s1,20(sp)
    2864:	00078513          	mv	a0,a5
    2868:	02010113          	addi	sp,sp,32
    286c:	00008067          	ret
    2870:	00f40333          	add	t1,s0,a5
    2874:	00034303          	lbu	t1,0(t1)
    2878:	00931863          	bne	t1,s1,2888 <fatfs_get_substring+0xc8>
    287c:	00180813          	addi	a6,a6,1
    2880:	00178793          	addi	a5,a5,1
    2884:	fbdff06f          	j	2840 <fatfs_get_substring+0x80>
    2888:	feb81ce3          	bne	a6,a1,2880 <fatfs_get_substring+0xc0>
    288c:	fed75ae3          	bge	a4,a3,2880 <fatfs_get_substring+0xc0>
    2890:	00170713          	addi	a4,a4,1
    2894:	00688023          	sb	t1,0(a7)
    2898:	fe9ff06f          	j	2880 <fatfs_get_substring+0xc0>
    289c:	fff00793          	li	a5,-1
    28a0:	00078513          	mv	a0,a5
    28a4:	00008067          	ret

000028a8 <fatfs_split_path>:
    28a8:	fd010113          	addi	sp,sp,-48
    28ac:	02912223          	sw	s1,36(sp)
    28b0:	03212023          	sw	s2,32(sp)
    28b4:	01312e23          	sw	s3,28(sp)
    28b8:	01412c23          	sw	s4,24(sp)
    28bc:	02112623          	sw	ra,44(sp)
    28c0:	02812423          	sw	s0,40(sp)
    28c4:	01512a23          	sw	s5,20(sp)
    28c8:	00050993          	mv	s3,a0
    28cc:	00058493          	mv	s1,a1
    28d0:	00060913          	mv	s2,a2
    28d4:	00068a13          	mv	s4,a3
    28d8:	00e12623          	sw	a4,12(sp)
    28dc:	00000097          	auipc	ra,0x0
    28e0:	e74080e7          	jalr	-396(ra) # 2750 <fatfs_total_path_levels>
    28e4:	fff00793          	li	a5,-1
    28e8:	02f51863          	bne	a0,a5,2918 <fatfs_split_path+0x70>
    28ec:	fff00413          	li	s0,-1
    28f0:	02c12083          	lw	ra,44(sp)
    28f4:	00040513          	mv	a0,s0
    28f8:	02812403          	lw	s0,40(sp)
    28fc:	02412483          	lw	s1,36(sp)
    2900:	02012903          	lw	s2,32(sp)
    2904:	01c12983          	lw	s3,28(sp)
    2908:	01812a03          	lw	s4,24(sp)
    290c:	01412a83          	lw	s5,20(sp)
    2910:	03010113          	addi	sp,sp,48
    2914:	00008067          	ret
    2918:	00c12683          	lw	a3,12(sp)
    291c:	00050593          	mv	a1,a0
    2920:	00a12623          	sw	a0,12(sp)
    2924:	000a0613          	mv	a2,s4
    2928:	00098513          	mv	a0,s3
    292c:	00000097          	auipc	ra,0x0
    2930:	e94080e7          	jalr	-364(ra) # 27c0 <fatfs_get_substring>
    2934:	00050413          	mv	s0,a0
    2938:	fa051ae3          	bnez	a0,28ec <fatfs_split_path+0x44>
    293c:	00c12583          	lw	a1,12(sp)
    2940:	00059663          	bnez	a1,294c <fatfs_split_path+0xa4>
    2944:	00048023          	sb	zero,0(s1)
    2948:	fa9ff06f          	j	28f0 <fatfs_split_path+0x48>
    294c:	00098513          	mv	a0,s3
    2950:	fffff097          	auipc	ra,0xfffff
    2954:	b20080e7          	jalr	-1248(ra) # 1470 <strlen>
    2958:	00050a93          	mv	s5,a0
    295c:	000a0513          	mv	a0,s4
    2960:	fffff097          	auipc	ra,0xfffff
    2964:	b10080e7          	jalr	-1264(ra) # 1470 <strlen>
    2968:	40aa8633          	sub	a2,s5,a0
    296c:	00c95463          	bge	s2,a2,2974 <fatfs_split_path+0xcc>
    2970:	00090613          	mv	a2,s2
    2974:	00048513          	mv	a0,s1
    2978:	00098593          	mv	a1,s3
    297c:	00c12623          	sw	a2,12(sp)
    2980:	fffff097          	auipc	ra,0xfffff
    2984:	acc080e7          	jalr	-1332(ra) # 144c <memcpy>
    2988:	00c12603          	lw	a2,12(sp)
    298c:	00c484b3          	add	s1,s1,a2
    2990:	fe048fa3          	sb	zero,-1(s1)
    2994:	f5dff06f          	j	28f0 <fatfs_split_path+0x48>

00002998 <fatfs_compare_names>:
    2998:	fd010113          	addi	sp,sp,-48
    299c:	02112623          	sw	ra,44(sp)
    29a0:	03212023          	sw	s2,32(sp)
    29a4:	01312e23          	sw	s3,28(sp)
    29a8:	01412c23          	sw	s4,24(sp)
    29ac:	01512a23          	sw	s5,20(sp)
    29b0:	00058a13          	mv	s4,a1
    29b4:	02812423          	sw	s0,40(sp)
    29b8:	02912223          	sw	s1,36(sp)
    29bc:	01612823          	sw	s6,16(sp)
    29c0:	01712623          	sw	s7,12(sp)
    29c4:	01812423          	sw	s8,8(sp)
    29c8:	00050a93          	mv	s5,a0
    29cc:	fffff097          	auipc	ra,0xfffff
    29d0:	2bc080e7          	jalr	700(ra) # 1c88 <FileString_GetExtension>
    29d4:	00050993          	mv	s3,a0
    29d8:	000a0513          	mv	a0,s4
    29dc:	fffff097          	auipc	ra,0xfffff
    29e0:	2ac080e7          	jalr	684(ra) # 1c88 <FileString_GetExtension>
    29e4:	fff00793          	li	a5,-1
    29e8:	00050913          	mv	s2,a0
    29ec:	02f99e63          	bne	s3,a5,2a28 <fatfs_compare_names+0x90>
    29f0:	0f350063          	beq	a0,s3,2ad0 <fatfs_compare_names+0x138>
    29f4:	00000513          	li	a0,0
    29f8:	02c12083          	lw	ra,44(sp)
    29fc:	02812403          	lw	s0,40(sp)
    2a00:	02412483          	lw	s1,36(sp)
    2a04:	02012903          	lw	s2,32(sp)
    2a08:	01c12983          	lw	s3,28(sp)
    2a0c:	01812a03          	lw	s4,24(sp)
    2a10:	01412a83          	lw	s5,20(sp)
    2a14:	01012b03          	lw	s6,16(sp)
    2a18:	00c12b83          	lw	s7,12(sp)
    2a1c:	00812c03          	lw	s8,8(sp)
    2a20:	03010113          	addi	sp,sp,48
    2a24:	00008067          	ret
    2a28:	fcf506e3          	beq	a0,a5,29f4 <fatfs_compare_names+0x5c>
    2a2c:	00198793          	addi	a5,s3,1
    2a30:	00fa8b33          	add	s6,s5,a5
    2a34:	00050413          	mv	s0,a0
    2a38:	00150793          	addi	a5,a0,1
    2a3c:	000b0513          	mv	a0,s6
    2a40:	00fa0bb3          	add	s7,s4,a5
    2a44:	fffff097          	auipc	ra,0xfffff
    2a48:	a2c080e7          	jalr	-1492(ra) # 1470 <strlen>
    2a4c:	00050c13          	mv	s8,a0
    2a50:	000b8513          	mv	a0,s7
    2a54:	00098493          	mv	s1,s3
    2a58:	fffff097          	auipc	ra,0xfffff
    2a5c:	a18080e7          	jalr	-1512(ra) # 1470 <strlen>
    2a60:	f8ac1ae3          	bne	s8,a0,29f4 <fatfs_compare_names+0x5c>
    2a64:	000b0513          	mv	a0,s6
    2a68:	fffff097          	auipc	ra,0xfffff
    2a6c:	a08080e7          	jalr	-1528(ra) # 1470 <strlen>
    2a70:	00050613          	mv	a2,a0
    2a74:	000b8593          	mv	a1,s7
    2a78:	000b0513          	mv	a0,s6
    2a7c:	fffff097          	auipc	ra,0xfffff
    2a80:	19c080e7          	jalr	412(ra) # 1c18 <FileString_StrCmpNoCase>
    2a84:	f60518e3          	bnez	a0,29f4 <fatfs_compare_names+0x5c>
    2a88:	fff48793          	addi	a5,s1,-1
    2a8c:	00fa87b3          	add	a5,s5,a5
    2a90:	41378733          	sub	a4,a5,s3
    2a94:	02000693          	li	a3,32
    2a98:	06e79263          	bne	a5,a4,2afc <fatfs_compare_names+0x164>
    2a9c:	fff40793          	addi	a5,s0,-1
    2aa0:	00fa07b3          	add	a5,s4,a5
    2aa4:	41278733          	sub	a4,a5,s2
    2aa8:	02000693          	li	a3,32
    2aac:	06e79263          	bne	a5,a4,2b10 <fatfs_compare_names+0x178>
    2ab0:	f53912e3          	bne	s2,s3,29f4 <fatfs_compare_names+0x5c>
    2ab4:	00090613          	mv	a2,s2
    2ab8:	000a0593          	mv	a1,s4
    2abc:	000a8513          	mv	a0,s5
    2ac0:	fffff097          	auipc	ra,0xfffff
    2ac4:	158080e7          	jalr	344(ra) # 1c18 <FileString_StrCmpNoCase>
    2ac8:	00153513          	seqz	a0,a0
    2acc:	f2dff06f          	j	29f8 <fatfs_compare_names+0x60>
    2ad0:	000a8513          	mv	a0,s5
    2ad4:	fffff097          	auipc	ra,0xfffff
    2ad8:	99c080e7          	jalr	-1636(ra) # 1470 <strlen>
    2adc:	00050493          	mv	s1,a0
    2ae0:	00050993          	mv	s3,a0
    2ae4:	000a0513          	mv	a0,s4
    2ae8:	fffff097          	auipc	ra,0xfffff
    2aec:	988080e7          	jalr	-1656(ra) # 1470 <strlen>
    2af0:	00050413          	mv	s0,a0
    2af4:	00050913          	mv	s2,a0
    2af8:	f91ff06f          	j	2a88 <fatfs_compare_names+0xf0>
    2afc:	0007c603          	lbu	a2,0(a5)
    2b00:	f8d61ee3          	bne	a2,a3,2a9c <fatfs_compare_names+0x104>
    2b04:	415789b3          	sub	s3,a5,s5
    2b08:	fff78793          	addi	a5,a5,-1
    2b0c:	f8dff06f          	j	2a98 <fatfs_compare_names+0x100>
    2b10:	0007c603          	lbu	a2,0(a5)
    2b14:	f8d61ee3          	bne	a2,a3,2ab0 <fatfs_compare_names+0x118>
    2b18:	41478933          	sub	s2,a5,s4
    2b1c:	fff78793          	addi	a5,a5,-1
    2b20:	f8dff06f          	j	2aac <fatfs_compare_names+0x114>

00002b24 <_check_file_open>:
    2b24:	fe010113          	addi	sp,sp,-32
    2b28:	000057b7          	lui	a5,0x5
    2b2c:	00812c23          	sw	s0,24(sp)
    2b30:	4a07a403          	lw	s0,1184(a5) # 54a0 <_open_file_list>
    2b34:	00912a23          	sw	s1,20(sp)
    2b38:	00112e23          	sw	ra,28(sp)
    2b3c:	01212823          	sw	s2,16(sp)
    2b40:	01312623          	sw	s3,12(sp)
    2b44:	00050493          	mv	s1,a0
    2b48:	00041663          	bnez	s0,2b54 <_check_file_open+0x30>
    2b4c:	00000513          	li	a0,0
    2b50:	03c0006f          	j	2b8c <_check_file_open+0x68>
    2b54:	bc440793          	addi	a5,s0,-1084
    2b58:	00f49663          	bne	s1,a5,2b64 <_check_file_open+0x40>
    2b5c:	00442403          	lw	s0,4(s0)
    2b60:	fe9ff06f          	j	2b48 <_check_file_open+0x24>
    2b64:	01448593          	addi	a1,s1,20
    2b68:	bd840513          	addi	a0,s0,-1064
    2b6c:	00000097          	auipc	ra,0x0
    2b70:	e2c080e7          	jalr	-468(ra) # 2998 <fatfs_compare_names>
    2b74:	fe0504e3          	beqz	a0,2b5c <_check_file_open+0x38>
    2b78:	11848593          	addi	a1,s1,280
    2b7c:	cdc40513          	addi	a0,s0,-804
    2b80:	00000097          	auipc	ra,0x0
    2b84:	e18080e7          	jalr	-488(ra) # 2998 <fatfs_compare_names>
    2b88:	fc050ae3          	beqz	a0,2b5c <_check_file_open+0x38>
    2b8c:	01c12083          	lw	ra,28(sp)
    2b90:	01812403          	lw	s0,24(sp)
    2b94:	01412483          	lw	s1,20(sp)
    2b98:	01012903          	lw	s2,16(sp)
    2b9c:	00c12983          	lw	s3,12(sp)
    2ba0:	02010113          	addi	sp,sp,32
    2ba4:	00008067          	ret

00002ba8 <fatfs_get_sfn_display_name>:
    2ba8:	00000713          	li	a4,0
    2bac:	02000613          	li	a2,32
    2bb0:	01900813          	li	a6,25
    2bb4:	0005c783          	lbu	a5,0(a1)
    2bb8:	00078663          	beqz	a5,2bc4 <fatfs_get_sfn_display_name+0x1c>
    2bbc:	ff470693          	addi	a3,a4,-12
    2bc0:	00069863          	bnez	a3,2bd0 <fatfs_get_sfn_display_name+0x28>
    2bc4:	00050023          	sb	zero,0(a0)
    2bc8:	00100513          	li	a0,1
    2bcc:	00008067          	ret
    2bd0:	00158593          	addi	a1,a1,1
    2bd4:	fec780e3          	beq	a5,a2,2bb4 <fatfs_get_sfn_display_name+0xc>
    2bd8:	fbf78693          	addi	a3,a5,-65
    2bdc:	0ff6f693          	zext.b	a3,a3
    2be0:	00d86663          	bltu	a6,a3,2bec <fatfs_get_sfn_display_name+0x44>
    2be4:	02078793          	addi	a5,a5,32
    2be8:	0ff7f793          	zext.b	a5,a5
    2bec:	00f50023          	sb	a5,0(a0)
    2bf0:	00170713          	addi	a4,a4,1
    2bf4:	00150513          	addi	a0,a0,1
    2bf8:	fbdff06f          	j	2bb4 <fatfs_get_sfn_display_name+0xc>

00002bfc <fatfs_fat_init>:
    2bfc:	ff010113          	addi	sp,sp,-16
    2c00:	00812423          	sw	s0,8(sp)
    2c04:	00912223          	sw	s1,4(sp)
    2c08:	00112623          	sw	ra,12(sp)
    2c0c:	fff00793          	li	a5,-1
    2c10:	25850493          	addi	s1,a0,600
    2c14:	00050413          	mv	s0,a0
    2c18:	44f52c23          	sw	a5,1112(a0)
    2c1c:	24052a23          	sw	zero,596(a0)
    2c20:	44052e23          	sw	zero,1116(a0)
    2c24:	20000613          	li	a2,512
    2c28:	00048513          	mv	a0,s1
    2c2c:	00000593          	li	a1,0
    2c30:	fffff097          	auipc	ra,0xfffff
    2c34:	800080e7          	jalr	-2048(ra) # 1430 <memset>
    2c38:	25442783          	lw	a5,596(s0)
    2c3c:	00c12083          	lw	ra,12(sp)
    2c40:	24942a23          	sw	s1,596(s0)
    2c44:	46042023          	sw	zero,1120(s0)
    2c48:	46f42223          	sw	a5,1124(s0)
    2c4c:	00812403          	lw	s0,8(sp)
    2c50:	00412483          	lw	s1,4(sp)
    2c54:	01010113          	addi	sp,sp,16
    2c58:	00008067          	ret

00002c5c <fatfs_init>:
    2c5c:	fd010113          	addi	sp,sp,-48
    2c60:	02812423          	sw	s0,40(sp)
    2c64:	02112623          	sw	ra,44(sp)
    2c68:	02912223          	sw	s1,36(sp)
    2c6c:	03212023          	sw	s2,32(sp)
    2c70:	01312e23          	sw	s3,28(sp)
    2c74:	fff00793          	li	a5,-1
    2c78:	24f52223          	sw	a5,580(a0)
    2c7c:	24052423          	sw	zero,584(a0)
    2c80:	02052223          	sw	zero,36(a0)
    2c84:	00050413          	mv	s0,a0
    2c88:	00000097          	auipc	ra,0x0
    2c8c:	f74080e7          	jalr	-140(ra) # 2bfc <fatfs_fat_init>
    2c90:	03442783          	lw	a5,52(s0)
    2c94:	02079463          	bnez	a5,2cbc <fatfs_init+0x60>
    2c98:	fff00713          	li	a4,-1
    2c9c:	02c12083          	lw	ra,44(sp)
    2ca0:	02812403          	lw	s0,40(sp)
    2ca4:	02412483          	lw	s1,36(sp)
    2ca8:	02012903          	lw	s2,32(sp)
    2cac:	01c12983          	lw	s3,28(sp)
    2cb0:	00070513          	mv	a0,a4
    2cb4:	03010113          	addi	sp,sp,48
    2cb8:	00008067          	ret
    2cbc:	04440593          	addi	a1,s0,68
    2cc0:	00100613          	li	a2,1
    2cc4:	00000513          	li	a0,0
    2cc8:	00b12623          	sw	a1,12(sp)
    2ccc:	000780e7          	jalr	a5
    2cd0:	fc0504e3          	beqz	a0,2c98 <fatfs_init+0x3c>
    2cd4:	24244703          	lbu	a4,578(s0)
    2cd8:	05500793          	li	a5,85
    2cdc:	00c12583          	lw	a1,12(sp)
    2ce0:	00f70663          	beq	a4,a5,2cec <fatfs_init+0x90>
    2ce4:	ffd00713          	li	a4,-3
    2ce8:	fb5ff06f          	j	2c9c <fatfs_init+0x40>
    2cec:	24344703          	lbu	a4,579(s0)
    2cf0:	0aa00793          	li	a5,170
    2cf4:	fef718e3          	bne	a4,a5,2ce4 <fatfs_init+0x88>
    2cf8:	20644783          	lbu	a5,518(s0)
    2cfc:	00600713          	li	a4,6
    2d00:	02f76463          	bltu	a4,a5,2d28 <fatfs_init+0xcc>
    2d04:	00400713          	li	a4,4
    2d08:	00f76663          	bltu	a4,a5,2d14 <fatfs_init+0xb8>
    2d0c:	00000513          	li	a0,0
    2d10:	02078663          	beqz	a5,2d3c <fatfs_init+0xe0>
    2d14:	20c45503          	lhu	a0,524(s0)
    2d18:	20a45783          	lhu	a5,522(s0)
    2d1c:	01051513          	slli	a0,a0,0x10
    2d20:	00f56533          	or	a0,a0,a5
    2d24:	0180006f          	j	2d3c <fatfs_init+0xe0>
    2d28:	00c00713          	li	a4,12
    2d2c:	12f76663          	bltu	a4,a5,2e58 <fatfs_init+0x1fc>
    2d30:	00a00713          	li	a4,10
    2d34:	00000513          	li	a0,0
    2d38:	fcf76ee3          	bltu	a4,a5,2d14 <fatfs_init+0xb8>
    2d3c:	03442783          	lw	a5,52(s0)
    2d40:	00a42e23          	sw	a0,28(s0)
    2d44:	00100613          	li	a2,1
    2d48:	000780e7          	jalr	a5
    2d4c:	f40506e3          	beqz	a0,2c98 <fatfs_init+0x3c>
    2d50:	05044783          	lbu	a5,80(s0)
    2d54:	04f44703          	lbu	a4,79(s0)
    2d58:	20000693          	li	a3,512
    2d5c:	00879793          	slli	a5,a5,0x8
    2d60:	00e7e7b3          	or	a5,a5,a4
    2d64:	ffe00713          	li	a4,-2
    2d68:	f2d79ae3          	bne	a5,a3,2c9c <fatfs_init+0x40>
    2d6c:	05644483          	lbu	s1,86(s0)
    2d70:	05544783          	lbu	a5,85(s0)
    2d74:	05144983          	lbu	s3,81(s0)
    2d78:	00849493          	slli	s1,s1,0x8
    2d7c:	05a45583          	lhu	a1,90(s0)
    2d80:	00f4e4b3          	or	s1,s1,a5
    2d84:	01340023          	sb	s3,0(s0)
    2d88:	02941423          	sh	s1,40(s0)
    2d8c:	05245903          	lhu	s2,82(s0)
    2d90:	05444503          	lbu	a0,84(s0)
    2d94:	00059463          	bnez	a1,2d9c <fatfs_init+0x140>
    2d98:	06842583          	lw	a1,104(s0)
    2d9c:	07042783          	lw	a5,112(s0)
    2da0:	02b42023          	sw	a1,32(s0)
    2da4:	00549493          	slli	s1,s1,0x5
    2da8:	00f42423          	sw	a5,8(s0)
    2dac:	07445783          	lhu	a5,116(s0)
    2db0:	1ff48493          	addi	s1,s1,511
    2db4:	4094d493          	srai	s1,s1,0x9
    2db8:	00f41c23          	sh	a5,24(s0)
    2dbc:	fffff097          	auipc	ra,0xfffff
    2dc0:	dc4080e7          	jalr	-572(ra) # 1b80 <__mulsi3>
    2dc4:	00a907b3          	add	a5,s2,a0
    2dc8:	00f42623          	sw	a5,12(s0)
    2dcc:	01c42783          	lw	a5,28(s0)
    2dd0:	24245703          	lhu	a4,578(s0)
    2dd4:	00942823          	sw	s1,16(s0)
    2dd8:	00f907b3          	add	a5,s2,a5
    2ddc:	00f42a23          	sw	a5,20(s0)
    2de0:	00f507b3          	add	a5,a0,a5
    2de4:	00f42223          	sw	a5,4(s0)
    2de8:	0000b7b7          	lui	a5,0xb
    2dec:	a5578793          	addi	a5,a5,-1451 # aa55 <framebuffer+0x3325>
    2df0:	eef71ae3          	bne	a4,a5,2ce4 <fatfs_init+0x88>
    2df4:	05844783          	lbu	a5,88(s0)
    2df8:	05744703          	lbu	a4,87(s0)
    2dfc:	00879793          	slli	a5,a5,0x8
    2e00:	00e7e7b3          	or	a5,a5,a4
    2e04:	00079463          	bnez	a5,2e0c <fatfs_init+0x1b0>
    2e08:	06442783          	lw	a5,100(s0)
    2e0c:	ffb00713          	li	a4,-5
    2e10:	e80986e3          	beqz	s3,2c9c <fatfs_init+0x40>
    2e14:	00990933          	add	s2,s2,s1
    2e18:	00a90533          	add	a0,s2,a0
    2e1c:	40a78533          	sub	a0,a5,a0
    2e20:	00098593          	mv	a1,s3
    2e24:	ffffe097          	auipc	ra,0xffffe
    2e28:	560080e7          	jalr	1376(ra) # 1384 <__udivsi3>
    2e2c:	000017b7          	lui	a5,0x1
    2e30:	ff478793          	addi	a5,a5,-12 # ff4 <sdcard_get+0x70>
    2e34:	ffb00713          	li	a4,-5
    2e38:	e6a7f2e3          	bgeu	a5,a0,2c9c <fatfs_init+0x40>
    2e3c:	000107b7          	lui	a5,0x10
    2e40:	ff478793          	addi	a5,a5,-12 # fff4 <_files+0x445c>
    2e44:	02a7e663          	bltu	a5,a0,2e70 <fatfs_init+0x214>
    2e48:	00042423          	sw	zero,8(s0)
    2e4c:	02042823          	sw	zero,48(s0)
    2e50:	00000713          	li	a4,0
    2e54:	e49ff06f          	j	2c9c <fatfs_init+0x40>
    2e58:	ff278793          	addi	a5,a5,-14
    2e5c:	0ff7f793          	zext.b	a5,a5
    2e60:	00100713          	li	a4,1
    2e64:	00000513          	li	a0,0
    2e68:	eaf776e3          	bgeu	a4,a5,2d14 <fatfs_init+0xb8>
    2e6c:	ed1ff06f          	j	2d3c <fatfs_init+0xe0>
    2e70:	00100793          	li	a5,1
    2e74:	02f42823          	sw	a5,48(s0)
    2e78:	fd9ff06f          	j	2e50 <fatfs_init+0x1f4>

00002e7c <fl_attach_media>:
    2e7c:	000057b7          	lui	a5,0x5
    2e80:	4ac7a783          	lw	a5,1196(a5) # 54ac <_filelib_init>
    2e84:	fe010113          	addi	sp,sp,-32
    2e88:	00812c23          	sw	s0,24(sp)
    2e8c:	00112e23          	sw	ra,28(sp)
    2e90:	00050413          	mv	s0,a0
    2e94:	00079a63          	bnez	a5,2ea8 <fl_attach_media+0x2c>
    2e98:	00b12623          	sw	a1,12(sp)
    2e9c:	fffff097          	auipc	ra,0xfffff
    2ea0:	178080e7          	jalr	376(ra) # 2014 <fl_init>
    2ea4:	00c12583          	lw	a1,12(sp)
    2ea8:	0000b7b7          	lui	a5,0xb
    2eac:	73078513          	addi	a0,a5,1840 # b730 <_fs>
    2eb0:	02b52c23          	sw	a1,56(a0)
    2eb4:	02852a23          	sw	s0,52(a0)
    2eb8:	00000097          	auipc	ra,0x0
    2ebc:	da4080e7          	jalr	-604(ra) # 2c5c <fatfs_init>
    2ec0:	00050593          	mv	a1,a0
    2ec4:	02050863          	beqz	a0,2ef4 <fl_attach_media+0x78>
    2ec8:	00a12623          	sw	a0,12(sp)
    2ecc:	00005537          	lui	a0,0x5
    2ed0:	02c50513          	addi	a0,a0,44 # 502c <LEDS+0x110>
    2ed4:	fffff097          	auipc	ra,0xfffff
    2ed8:	b70080e7          	jalr	-1168(ra) # 1a44 <printf>
    2edc:	00c12583          	lw	a1,12(sp)
    2ee0:	01c12083          	lw	ra,28(sp)
    2ee4:	01812403          	lw	s0,24(sp)
    2ee8:	00058513          	mv	a0,a1
    2eec:	02010113          	addi	sp,sp,32
    2ef0:	00008067          	ret
    2ef4:	000057b7          	lui	a5,0x5
    2ef8:	00100713          	li	a4,1
    2efc:	4ae7a423          	sw	a4,1192(a5) # 54a8 <_filelib_valid>
    2f00:	fe1ff06f          	j	2ee0 <fl_attach_media+0x64>

00002f04 <fatfs_fat_purge>:
    2f04:	25452583          	lw	a1,596(a0)
    2f08:	fe010113          	addi	sp,sp,-32
    2f0c:	00812c23          	sw	s0,24(sp)
    2f10:	00112e23          	sw	ra,28(sp)
    2f14:	00050413          	mv	s0,a0
    2f18:	00059663          	bnez	a1,2f24 <fatfs_fat_purge+0x20>
    2f1c:	00100513          	li	a0,1
    2f20:	02c0006f          	j	2f4c <fatfs_fat_purge+0x48>
    2f24:	2045a783          	lw	a5,516(a1)
    2f28:	00079663          	bnez	a5,2f34 <fatfs_fat_purge+0x30>
    2f2c:	20c5a583          	lw	a1,524(a1)
    2f30:	fe9ff06f          	j	2f18 <fatfs_fat_purge+0x14>
    2f34:	00040513          	mv	a0,s0
    2f38:	00b12623          	sw	a1,12(sp)
    2f3c:	fffff097          	auipc	ra,0xfffff
    2f40:	d78080e7          	jalr	-648(ra) # 1cb4 <fatfs_fat_writeback>
    2f44:	00c12583          	lw	a1,12(sp)
    2f48:	fe0512e3          	bnez	a0,2f2c <fatfs_fat_purge+0x28>
    2f4c:	01c12083          	lw	ra,28(sp)
    2f50:	01812403          	lw	s0,24(sp)
    2f54:	02010113          	addi	sp,sp,32
    2f58:	00008067          	ret

00002f5c <fatfs_find_next_cluster>:
    2f5c:	ff010113          	addi	sp,sp,-16
    2f60:	00812423          	sw	s0,8(sp)
    2f64:	01212023          	sw	s2,0(sp)
    2f68:	00112623          	sw	ra,12(sp)
    2f6c:	00912223          	sw	s1,4(sp)
    2f70:	00050913          	mv	s2,a0
    2f74:	00200413          	li	s0,2
    2f78:	00058463          	beqz	a1,2f80 <fatfs_find_next_cluster+0x24>
    2f7c:	00058413          	mv	s0,a1
    2f80:	03092783          	lw	a5,48(s2)
    2f84:	00745493          	srli	s1,s0,0x7
    2f88:	00079463          	bnez	a5,2f90 <fatfs_find_next_cluster+0x34>
    2f8c:	00845493          	srli	s1,s0,0x8
    2f90:	01492583          	lw	a1,20(s2)
    2f94:	00090513          	mv	a0,s2
    2f98:	00b485b3          	add	a1,s1,a1
    2f9c:	fffff097          	auipc	ra,0xfffff
    2fa0:	d9c080e7          	jalr	-612(ra) # 1d38 <fatfs_fat_read_sector>
    2fa4:	00050793          	mv	a5,a0
    2fa8:	fff00513          	li	a0,-1
    2fac:	04078863          	beqz	a5,2ffc <fatfs_find_next_cluster+0xa0>
    2fb0:	03092703          	lw	a4,48(s2)
    2fb4:	2087a783          	lw	a5,520(a5)
    2fb8:	04071e63          	bnez	a4,3014 <fatfs_find_next_cluster+0xb8>
    2fbc:	00849493          	slli	s1,s1,0x8
    2fc0:	40940433          	sub	s0,s0,s1
    2fc4:	00141413          	slli	s0,s0,0x1
    2fc8:	01041413          	slli	s0,s0,0x10
    2fcc:	01045413          	srli	s0,s0,0x10
    2fd0:	008787b3          	add	a5,a5,s0
    2fd4:	0017c503          	lbu	a0,1(a5)
    2fd8:	0007c783          	lbu	a5,0(a5)
    2fdc:	00851513          	slli	a0,a0,0x8
    2fe0:	00f50533          	add	a0,a0,a5
    2fe4:	ffff07b7          	lui	a5,0xffff0
    2fe8:	00878793          	addi	a5,a5,8 # ffff0008 <__stacktop+0xfffe0008>
    2fec:	00f507b3          	add	a5,a0,a5
    2ff0:	00700713          	li	a4,7
    2ff4:	00f76463          	bltu	a4,a5,2ffc <fatfs_find_next_cluster+0xa0>
    2ff8:	fff00513          	li	a0,-1
    2ffc:	00c12083          	lw	ra,12(sp)
    3000:	00812403          	lw	s0,8(sp)
    3004:	00412483          	lw	s1,4(sp)
    3008:	00012903          	lw	s2,0(sp)
    300c:	01010113          	addi	sp,sp,16
    3010:	00008067          	ret
    3014:	00749493          	slli	s1,s1,0x7
    3018:	40940433          	sub	s0,s0,s1
    301c:	00241413          	slli	s0,s0,0x2
    3020:	01041413          	slli	s0,s0,0x10
    3024:	01045413          	srli	s0,s0,0x10
    3028:	008787b3          	add	a5,a5,s0
    302c:	0037c503          	lbu	a0,3(a5)
    3030:	0027c703          	lbu	a4,2(a5)
    3034:	01851513          	slli	a0,a0,0x18
    3038:	01071713          	slli	a4,a4,0x10
    303c:	00e50533          	add	a0,a0,a4
    3040:	0007c703          	lbu	a4,0(a5)
    3044:	0017c783          	lbu	a5,1(a5)
    3048:	00e50533          	add	a0,a0,a4
    304c:	00879793          	slli	a5,a5,0x8
    3050:	00f50533          	add	a0,a0,a5
    3054:	00451513          	slli	a0,a0,0x4
    3058:	00455513          	srli	a0,a0,0x4
    305c:	f00007b7          	lui	a5,0xf0000
    3060:	f89ff06f          	j	2fe8 <fatfs_find_next_cluster+0x8c>

00003064 <fatfs_sector_reader>:
    3064:	03052783          	lw	a5,48(a0)
    3068:	fe010113          	addi	sp,sp,-32
    306c:	00812c23          	sw	s0,24(sp)
    3070:	01212823          	sw	s2,16(sp)
    3074:	01512223          	sw	s5,4(sp)
    3078:	00112e23          	sw	ra,28(sp)
    307c:	00912a23          	sw	s1,20(sp)
    3080:	01312623          	sw	s3,12(sp)
    3084:	01412423          	sw	s4,8(sp)
    3088:	01612023          	sw	s6,0(sp)
    308c:	00f5e7b3          	or	a5,a1,a5
    3090:	00050413          	mv	s0,a0
    3094:	00060913          	mv	s2,a2
    3098:	00068a93          	mv	s5,a3
    309c:	08079063          	bnez	a5,311c <fatfs_sector_reader+0xb8>
    30a0:	01052783          	lw	a5,16(a0)
    30a4:	02f66863          	bltu	a2,a5,30d4 <fatfs_sector_reader+0x70>
    30a8:	00000513          	li	a0,0
    30ac:	01c12083          	lw	ra,28(sp)
    30b0:	01812403          	lw	s0,24(sp)
    30b4:	01412483          	lw	s1,20(sp)
    30b8:	01012903          	lw	s2,16(sp)
    30bc:	00c12983          	lw	s3,12(sp)
    30c0:	00812a03          	lw	s4,8(sp)
    30c4:	00412a83          	lw	s5,4(sp)
    30c8:	00012b03          	lw	s6,0(sp)
    30cc:	02010113          	addi	sp,sp,32
    30d0:	00008067          	ret
    30d4:	01c52503          	lw	a0,28(a0)
    30d8:	00c42783          	lw	a5,12(s0)
    30dc:	00f50533          	add	a0,a0,a5
    30e0:	01250533          	add	a0,a0,s2
    30e4:	0a0a8663          	beqz	s5,3190 <fatfs_sector_reader+0x12c>
    30e8:	03442783          	lw	a5,52(s0)
    30ec:	00100613          	li	a2,1
    30f0:	000a8593          	mv	a1,s5
    30f4:	01812403          	lw	s0,24(sp)
    30f8:	01c12083          	lw	ra,28(sp)
    30fc:	01412483          	lw	s1,20(sp)
    3100:	01012903          	lw	s2,16(sp)
    3104:	00c12983          	lw	s3,12(sp)
    3108:	00812a03          	lw	s4,8(sp)
    310c:	00412a83          	lw	s5,4(sp)
    3110:	00012b03          	lw	s6,0(sp)
    3114:	02010113          	addi	sp,sp,32
    3118:	00078067          	jr	a5 # f0000000 <__stacktop+0xefff0000>
    311c:	00054783          	lbu	a5,0(a0)
    3120:	00058493          	mv	s1,a1
    3124:	00060513          	mv	a0,a2
    3128:	00078593          	mv	a1,a5
    312c:	00078a13          	mv	s4,a5
    3130:	ffffe097          	auipc	ra,0xffffe
    3134:	254080e7          	jalr	596(ra) # 1384 <__udivsi3>
    3138:	00050b13          	mv	s6,a0
    313c:	00000993          	li	s3,0
    3140:	03699a63          	bne	s3,s6,3174 <fatfs_sector_reader+0x110>
    3144:	fff00793          	li	a5,-1
    3148:	f6f480e3          	beq	s1,a5,30a8 <fatfs_sector_reader+0x44>
    314c:	000a0593          	mv	a1,s4
    3150:	00090513          	mv	a0,s2
    3154:	ffffe097          	auipc	ra,0xffffe
    3158:	278080e7          	jalr	632(ra) # 13cc <__umodsi3>
    315c:	00050913          	mv	s2,a0
    3160:	00048593          	mv	a1,s1
    3164:	00040513          	mv	a0,s0
    3168:	fffff097          	auipc	ra,0xfffff
    316c:	d7c080e7          	jalr	-644(ra) # 1ee4 <fatfs_lba_of_cluster>
    3170:	f71ff06f          	j	30e0 <fatfs_sector_reader+0x7c>
    3174:	00048593          	mv	a1,s1
    3178:	00040513          	mv	a0,s0
    317c:	00000097          	auipc	ra,0x0
    3180:	de0080e7          	jalr	-544(ra) # 2f5c <fatfs_find_next_cluster>
    3184:	00050493          	mv	s1,a0
    3188:	00198993          	addi	s3,s3,1
    318c:	fb5ff06f          	j	3140 <fatfs_sector_reader+0xdc>
    3190:	24442783          	lw	a5,580(s0)
    3194:	00a78c63          	beq	a5,a0,31ac <fatfs_sector_reader+0x148>
    3198:	03442783          	lw	a5,52(s0)
    319c:	24a42223          	sw	a0,580(s0)
    31a0:	00100613          	li	a2,1
    31a4:	04440593          	addi	a1,s0,68
    31a8:	f4dff06f          	j	30f4 <fatfs_sector_reader+0x90>
    31ac:	00100513          	li	a0,1
    31b0:	efdff06f          	j	30ac <fatfs_sector_reader+0x48>

000031b4 <fatfs_get_file_entry>:
    31b4:	eb010113          	addi	sp,sp,-336
    31b8:	14812423          	sw	s0,328(sp)
    31bc:	14912223          	sw	s1,324(sp)
    31c0:	13312e23          	sw	s3,316(sp)
    31c4:	13712623          	sw	s7,300(sp)
    31c8:	13812423          	sw	s8,296(sp)
    31cc:	13912223          	sw	s9,292(sp)
    31d0:	14112623          	sw	ra,332(sp)
    31d4:	15212023          	sw	s2,320(sp)
    31d8:	13412c23          	sw	s4,312(sp)
    31dc:	13512a23          	sw	s5,308(sp)
    31e0:	13612823          	sw	s6,304(sp)
    31e4:	00050993          	mv	s3,a0
    31e8:	00058c93          	mv	s9,a1
    31ec:	00060b93          	mv	s7,a2
    31f0:	00068c13          	mv	s8,a3
    31f4:	10010ea3          	sb	zero,285(sp)
    31f8:	01810413          	addi	s0,sp,24
    31fc:	11c10493          	addi	s1,sp,284
    3200:	00040513          	mv	a0,s0
    3204:	00d00613          	li	a2,13
    3208:	00000593          	li	a1,0
    320c:	00d40413          	addi	s0,s0,13
    3210:	ffffe097          	auipc	ra,0xffffe
    3214:	220080e7          	jalr	544(ra) # 1430 <memset>
    3218:	fe9414e3          	bne	s0,s1,3200 <fatfs_get_file_entry+0x4c>
    321c:	00000493          	li	s1,0
    3220:	24498a13          	addi	s4,s3,580
    3224:	00810913          	addi	s2,sp,8
    3228:	00800a93          	li	s5,8
    322c:	02e00b13          	li	s6,46
    3230:	00000693          	li	a3,0
    3234:	00048613          	mv	a2,s1
    3238:	000c8593          	mv	a1,s9
    323c:	00098513          	mv	a0,s3
    3240:	00000097          	auipc	ra,0x0
    3244:	e24080e7          	jalr	-476(ra) # 3064 <fatfs_sector_reader>
    3248:	08050c63          	beqz	a0,32e0 <fatfs_get_file_entry+0x12c>
    324c:	00148493          	addi	s1,s1,1
    3250:	04498413          	addi	s0,s3,68
    3254:	00040513          	mv	a0,s0
    3258:	fffff097          	auipc	ra,0xfffff
    325c:	f34080e7          	jalr	-204(ra) # 218c <fatfs_entry_lfn_text>
    3260:	02050063          	beqz	a0,3280 <fatfs_get_file_entry+0xcc>
    3264:	00040593          	mv	a1,s0
    3268:	01810513          	addi	a0,sp,24
    326c:	fffff097          	auipc	ra,0xfffff
    3270:	e18080e7          	jalr	-488(ra) # 2084 <fatfs_lfn_cache_entry>
    3274:	02040413          	addi	s0,s0,32
    3278:	fd441ee3          	bne	s0,s4,3254 <fatfs_get_file_entry+0xa0>
    327c:	fb5ff06f          	j	3230 <fatfs_get_file_entry+0x7c>
    3280:	00040513          	mv	a0,s0
    3284:	fffff097          	auipc	ra,0xfffff
    3288:	f1c080e7          	jalr	-228(ra) # 21a0 <fatfs_entry_lfn_invalid>
    328c:	00050663          	beqz	a0,3298 <fatfs_get_file_entry+0xe4>
    3290:	10010ea3          	sb	zero,285(sp)
    3294:	fe1ff06f          	j	3274 <fatfs_get_file_entry+0xc0>
    3298:	00040593          	mv	a1,s0
    329c:	01810513          	addi	a0,sp,24
    32a0:	fffff097          	auipc	ra,0xfffff
    32a4:	f34080e7          	jalr	-204(ra) # 21d4 <fatfs_entry_lfn_exists>
    32a8:	06050663          	beqz	a0,3314 <fatfs_get_file_entry+0x160>
    32ac:	01810513          	addi	a0,sp,24
    32b0:	fffff097          	auipc	ra,0xfffff
    32b4:	ea0080e7          	jalr	-352(ra) # 2150 <fatfs_lfn_cache_get>
    32b8:	000b8593          	mv	a1,s7
    32bc:	fffff097          	auipc	ra,0xfffff
    32c0:	6dc080e7          	jalr	1756(ra) # 2998 <fatfs_compare_names>
    32c4:	fc0506e3          	beqz	a0,3290 <fatfs_get_file_entry+0xdc>
    32c8:	02000613          	li	a2,32
    32cc:	00040593          	mv	a1,s0
    32d0:	000c0513          	mv	a0,s8
    32d4:	ffffe097          	auipc	ra,0xffffe
    32d8:	178080e7          	jalr	376(ra) # 144c <memcpy>
    32dc:	00100513          	li	a0,1
    32e0:	14c12083          	lw	ra,332(sp)
    32e4:	14812403          	lw	s0,328(sp)
    32e8:	14412483          	lw	s1,324(sp)
    32ec:	14012903          	lw	s2,320(sp)
    32f0:	13c12983          	lw	s3,316(sp)
    32f4:	13812a03          	lw	s4,312(sp)
    32f8:	13412a83          	lw	s5,308(sp)
    32fc:	13012b03          	lw	s6,304(sp)
    3300:	12c12b83          	lw	s7,300(sp)
    3304:	12812c03          	lw	s8,296(sp)
    3308:	12412c83          	lw	s9,292(sp)
    330c:	15010113          	addi	sp,sp,336
    3310:	00008067          	ret
    3314:	00040513          	mv	a0,s0
    3318:	fffff097          	auipc	ra,0xfffff
    331c:	f0c080e7          	jalr	-244(ra) # 2224 <fatfs_entry_sfn_only>
    3320:	f4050ae3          	beqz	a0,3274 <fatfs_get_file_entry+0xc0>
    3324:	00d00613          	li	a2,13
    3328:	00000593          	li	a1,0
    332c:	00090513          	mv	a0,s2
    3330:	ffffe097          	auipc	ra,0xffffe
    3334:	100080e7          	jalr	256(ra) # 1430 <memset>
    3338:	00000793          	li	a5,0
    333c:	00f406b3          	add	a3,s0,a5
    3340:	0006c683          	lbu	a3,0(a3)
    3344:	00f90733          	add	a4,s2,a5
    3348:	00178793          	addi	a5,a5,1
    334c:	00d70023          	sb	a3,0(a4)
    3350:	ff5796e3          	bne	a5,s5,333c <fatfs_get_file_entry+0x188>
    3354:	00844703          	lbu	a4,8(s0)
    3358:	00944783          	lbu	a5,9(s0)
    335c:	00a44683          	lbu	a3,10(s0)
    3360:	00e108a3          	sb	a4,17(sp)
    3364:	00f10923          	sb	a5,18(sp)
    3368:	fe070713          	addi	a4,a4,-32
    336c:	fe078793          	addi	a5,a5,-32
    3370:	00f037b3          	snez	a5,a5
    3374:	00e03733          	snez	a4,a4
    3378:	00d109a3          	sb	a3,19(sp)
    337c:	00e7e7b3          	or	a5,a5,a4
    3380:	00079863          	bnez	a5,3390 <fatfs_get_file_entry+0x1dc>
    3384:	fe068693          	addi	a3,a3,-32
    3388:	02000793          	li	a5,32
    338c:	00068a63          	beqz	a3,33a0 <fatfs_get_file_entry+0x1ec>
    3390:	00814703          	lbu	a4,8(sp)
    3394:	02e00793          	li	a5,46
    3398:	01671463          	bne	a4,s6,33a0 <fatfs_get_file_entry+0x1ec>
    339c:	02000793          	li	a5,32
    33a0:	00f10823          	sb	a5,16(sp)
    33a4:	000b8593          	mv	a1,s7
    33a8:	00090513          	mv	a0,s2
    33ac:	f11ff06f          	j	32bc <fatfs_get_file_entry+0x108>

000033b0 <_open_directory>:
    33b0:	eb010113          	addi	sp,sp,-336
    33b4:	15212023          	sw	s2,320(sp)
    33b8:	0000b937          	lui	s2,0xb
    33bc:	73090913          	addi	s2,s2,1840 # b730 <_fs>
    33c0:	14812423          	sw	s0,328(sp)
    33c4:	00892403          	lw	s0,8(s2)
    33c8:	14912223          	sw	s1,324(sp)
    33cc:	13312e23          	sw	s3,316(sp)
    33d0:	13412c23          	sw	s4,312(sp)
    33d4:	13512a23          	sw	s5,308(sp)
    33d8:	13612823          	sw	s6,304(sp)
    33dc:	14112623          	sw	ra,332(sp)
    33e0:	00050a13          	mv	s4,a0
    33e4:	00058a93          	mv	s5,a1
    33e8:	fffff097          	auipc	ra,0xfffff
    33ec:	368080e7          	jalr	872(ra) # 2750 <fatfs_total_path_levels>
    33f0:	00050b13          	mv	s6,a0
    33f4:	00000493          	li	s1,0
    33f8:	fff00993          	li	s3,-1
    33fc:	009b5863          	bge	s6,s1,340c <_open_directory+0x5c>
    3400:	008aa023          	sw	s0,0(s5)
    3404:	00100513          	li	a0,1
    3408:	0240006f          	j	342c <_open_directory+0x7c>
    340c:	10400693          	li	a3,260
    3410:	02c10613          	addi	a2,sp,44
    3414:	00048593          	mv	a1,s1
    3418:	000a0513          	mv	a0,s4
    341c:	fffff097          	auipc	ra,0xfffff
    3420:	3a4080e7          	jalr	932(ra) # 27c0 <fatfs_get_substring>
    3424:	03351863          	bne	a0,s3,3454 <_open_directory+0xa4>
    3428:	00000513          	li	a0,0
    342c:	14c12083          	lw	ra,332(sp)
    3430:	14812403          	lw	s0,328(sp)
    3434:	14412483          	lw	s1,324(sp)
    3438:	14012903          	lw	s2,320(sp)
    343c:	13c12983          	lw	s3,316(sp)
    3440:	13812a03          	lw	s4,312(sp)
    3444:	13412a83          	lw	s5,308(sp)
    3448:	13012b03          	lw	s6,304(sp)
    344c:	15010113          	addi	sp,sp,336
    3450:	00008067          	ret
    3454:	00c10693          	addi	a3,sp,12
    3458:	02c10613          	addi	a2,sp,44
    345c:	00040593          	mv	a1,s0
    3460:	00090513          	mv	a0,s2
    3464:	00000097          	auipc	ra,0x0
    3468:	d50080e7          	jalr	-688(ra) # 31b4 <fatfs_get_file_entry>
    346c:	fa050ee3          	beqz	a0,3428 <_open_directory+0x78>
    3470:	01714783          	lbu	a5,23(sp)
    3474:	0107f793          	andi	a5,a5,16
    3478:	fa0788e3          	beqz	a5,3428 <_open_directory+0x78>
    347c:	02015403          	lhu	s0,32(sp)
    3480:	02615783          	lhu	a5,38(sp)
    3484:	00148493          	addi	s1,s1,1
    3488:	01041413          	slli	s0,s0,0x10
    348c:	00f40433          	add	s0,s0,a5
    3490:	f6dff06f          	j	33fc <_open_directory+0x4c>

00003494 <fl_opendir>:
    3494:	fe010113          	addi	sp,sp,-32
    3498:	fff00793          	li	a5,-1
    349c:	00f12623          	sw	a5,12(sp)
    34a0:	000057b7          	lui	a5,0x5
    34a4:	4ac7a783          	lw	a5,1196(a5) # 54ac <_filelib_init>
    34a8:	00812c23          	sw	s0,24(sp)
    34ac:	01212823          	sw	s2,16(sp)
    34b0:	00112e23          	sw	ra,28(sp)
    34b4:	00912a23          	sw	s1,20(sp)
    34b8:	00050913          	mv	s2,a0
    34bc:	00058413          	mv	s0,a1
    34c0:	00079663          	bnez	a5,34cc <fl_opendir+0x38>
    34c4:	fffff097          	auipc	ra,0xfffff
    34c8:	b50080e7          	jalr	-1200(ra) # 2014 <fl_init>
    34cc:	0000b4b7          	lui	s1,0xb
    34d0:	73048493          	addi	s1,s1,1840 # b730 <_fs>
    34d4:	03c4a783          	lw	a5,60(s1)
    34d8:	00078463          	beqz	a5,34e0 <fl_opendir+0x4c>
    34dc:	000780e7          	jalr	a5
    34e0:	00090513          	mv	a0,s2
    34e4:	fffff097          	auipc	ra,0xfffff
    34e8:	26c080e7          	jalr	620(ra) # 2750 <fatfs_total_path_levels>
    34ec:	fff00793          	li	a5,-1
    34f0:	02f51063          	bne	a0,a5,3510 <fl_opendir+0x7c>
    34f4:	0084a783          	lw	a5,8(s1)
    34f8:	00f12623          	sw	a5,12(sp)
    34fc:	00c12783          	lw	a5,12(sp)
    3500:	00042023          	sw	zero,0(s0)
    3504:	00040423          	sb	zero,8(s0)
    3508:	00f42223          	sw	a5,4(s0)
    350c:	0180006f          	j	3524 <fl_opendir+0x90>
    3510:	00c10593          	addi	a1,sp,12
    3514:	00090513          	mv	a0,s2
    3518:	00000097          	auipc	ra,0x0
    351c:	e98080e7          	jalr	-360(ra) # 33b0 <_open_directory>
    3520:	fc051ee3          	bnez	a0,34fc <fl_opendir+0x68>
    3524:	0404a783          	lw	a5,64(s1)
    3528:	00078463          	beqz	a5,3530 <fl_opendir+0x9c>
    352c:	000780e7          	jalr	a5
    3530:	00c12703          	lw	a4,12(sp)
    3534:	fff00793          	li	a5,-1
    3538:	00f71463          	bne	a4,a5,3540 <fl_opendir+0xac>
    353c:	00000413          	li	s0,0
    3540:	01c12083          	lw	ra,28(sp)
    3544:	00040513          	mv	a0,s0
    3548:	01812403          	lw	s0,24(sp)
    354c:	01412483          	lw	s1,20(sp)
    3550:	01012903          	lw	s2,16(sp)
    3554:	02010113          	addi	sp,sp,32
    3558:	00008067          	ret

0000355c <_open_file>:
    355c:	fc010113          	addi	sp,sp,-64
    3560:	03312623          	sw	s3,44(sp)
    3564:	02112e23          	sw	ra,60(sp)
    3568:	02812c23          	sw	s0,56(sp)
    356c:	02912a23          	sw	s1,52(sp)
    3570:	03212823          	sw	s2,48(sp)
    3574:	00050993          	mv	s3,a0
    3578:	fffff097          	auipc	ra,0xfffff
    357c:	8ac080e7          	jalr	-1876(ra) # 1e24 <_allocate_file>
    3580:	06050463          	beqz	a0,35e8 <_open_file+0x8c>
    3584:	01450913          	addi	s2,a0,20
    3588:	00050413          	mv	s0,a0
    358c:	10400613          	li	a2,260
    3590:	00000593          	li	a1,0
    3594:	00090513          	mv	a0,s2
    3598:	ffffe097          	auipc	ra,0xffffe
    359c:	e98080e7          	jalr	-360(ra) # 1430 <memset>
    35a0:	11840493          	addi	s1,s0,280
    35a4:	10400613          	li	a2,260
    35a8:	00000593          	li	a1,0
    35ac:	00048513          	mv	a0,s1
    35b0:	ffffe097          	auipc	ra,0xffffe
    35b4:	e80080e7          	jalr	-384(ra) # 1430 <memset>
    35b8:	10400713          	li	a4,260
    35bc:	00048693          	mv	a3,s1
    35c0:	00070613          	mv	a2,a4
    35c4:	00090593          	mv	a1,s2
    35c8:	00098513          	mv	a0,s3
    35cc:	fffff097          	auipc	ra,0xfffff
    35d0:	2dc080e7          	jalr	732(ra) # 28a8 <fatfs_split_path>
    35d4:	fff00793          	li	a5,-1
    35d8:	02f51a63          	bne	a0,a5,360c <_open_file+0xb0>
    35dc:	00040513          	mv	a0,s0
    35e0:	fffff097          	auipc	ra,0xfffff
    35e4:	8bc080e7          	jalr	-1860(ra) # 1e9c <_free_file>
    35e8:	00000413          	li	s0,0
    35ec:	03c12083          	lw	ra,60(sp)
    35f0:	00040513          	mv	a0,s0
    35f4:	03812403          	lw	s0,56(sp)
    35f8:	03412483          	lw	s1,52(sp)
    35fc:	03012903          	lw	s2,48(sp)
    3600:	02c12983          	lw	s3,44(sp)
    3604:	04010113          	addi	sp,sp,64
    3608:	00008067          	ret
    360c:	00040513          	mv	a0,s0
    3610:	fffff097          	auipc	ra,0xfffff
    3614:	514080e7          	jalr	1300(ra) # 2b24 <_check_file_open>
    3618:	fc0512e3          	bnez	a0,35dc <_open_file+0x80>
    361c:	01444783          	lbu	a5,20(s0)
    3620:	08079c63          	bnez	a5,36b8 <_open_file+0x15c>
    3624:	0000b7b7          	lui	a5,0xb
    3628:	7387a783          	lw	a5,1848(a5) # b738 <_fs+0x8>
    362c:	00f42023          	sw	a5,0(s0)
    3630:	00042583          	lw	a1,0(s0)
    3634:	00048613          	mv	a2,s1
    3638:	0000b4b7          	lui	s1,0xb
    363c:	00010693          	mv	a3,sp
    3640:	73048513          	addi	a0,s1,1840 # b730 <_fs>
    3644:	00000097          	auipc	ra,0x0
    3648:	b70080e7          	jalr	-1168(ra) # 31b4 <fatfs_get_file_entry>
    364c:	f80508e3          	beqz	a0,35dc <_open_file+0x80>
    3650:	00b14783          	lbu	a5,11(sp)
    3654:	0207f793          	andi	a5,a5,32
    3658:	f80782e3          	beqz	a5,35dc <_open_file+0x80>
    365c:	00b00613          	li	a2,11
    3660:	00010593          	mv	a1,sp
    3664:	21c40513          	addi	a0,s0,540
    3668:	ffffe097          	auipc	ra,0xffffe
    366c:	de4080e7          	jalr	-540(ra) # 144c <memcpy>
    3670:	01c12783          	lw	a5,28(sp)
    3674:	01a15703          	lhu	a4,26(sp)
    3678:	00042423          	sw	zero,8(s0)
    367c:	00f42623          	sw	a5,12(s0)
    3680:	01415783          	lhu	a5,20(sp)
    3684:	42042a23          	sw	zero,1076(s0)
    3688:	00042823          	sw	zero,16(s0)
    368c:	01079793          	slli	a5,a5,0x10
    3690:	00e787b3          	add	a5,a5,a4
    3694:	00f42223          	sw	a5,4(s0)
    3698:	fff00793          	li	a5,-1
    369c:	42f42823          	sw	a5,1072(s0)
    36a0:	22f42423          	sw	a5,552(s0)
    36a4:	22f42623          	sw	a5,556(s0)
    36a8:	73048513          	addi	a0,s1,1840
    36ac:	00000097          	auipc	ra,0x0
    36b0:	858080e7          	jalr	-1960(ra) # 2f04 <fatfs_fat_purge>
    36b4:	f39ff06f          	j	35ec <_open_file+0x90>
    36b8:	00040593          	mv	a1,s0
    36bc:	00090513          	mv	a0,s2
    36c0:	00000097          	auipc	ra,0x0
    36c4:	cf0080e7          	jalr	-784(ra) # 33b0 <_open_directory>
    36c8:	f60514e3          	bnez	a0,3630 <_open_file+0xd4>
    36cc:	f11ff06f          	j	35dc <_open_file+0x80>

000036d0 <fatfs_sfn_exists>:
    36d0:	fe010113          	addi	sp,sp,-32
    36d4:	01212823          	sw	s2,16(sp)
    36d8:	01312623          	sw	s3,12(sp)
    36dc:	01412423          	sw	s4,8(sp)
    36e0:	01512223          	sw	s5,4(sp)
    36e4:	01612023          	sw	s6,0(sp)
    36e8:	00112e23          	sw	ra,28(sp)
    36ec:	00812c23          	sw	s0,24(sp)
    36f0:	00912a23          	sw	s1,20(sp)
    36f4:	00050993          	mv	s3,a0
    36f8:	00058a93          	mv	s5,a1
    36fc:	00060b13          	mv	s6,a2
    3700:	00000913          	li	s2,0
    3704:	24450a13          	addi	s4,a0,580
    3708:	00000693          	li	a3,0
    370c:	00090613          	mv	a2,s2
    3710:	000a8593          	mv	a1,s5
    3714:	00098513          	mv	a0,s3
    3718:	00000097          	auipc	ra,0x0
    371c:	94c080e7          	jalr	-1716(ra) # 3064 <fatfs_sector_reader>
    3720:	00050413          	mv	s0,a0
    3724:	06050263          	beqz	a0,3788 <fatfs_sfn_exists+0xb8>
    3728:	00190913          	addi	s2,s2,1
    372c:	04498493          	addi	s1,s3,68
    3730:	00048513          	mv	a0,s1
    3734:	fffff097          	auipc	ra,0xfffff
    3738:	a58080e7          	jalr	-1448(ra) # 218c <fatfs_entry_lfn_text>
    373c:	00050863          	beqz	a0,374c <fatfs_sfn_exists+0x7c>
    3740:	02048493          	addi	s1,s1,32
    3744:	ff4496e3          	bne	s1,s4,3730 <fatfs_sfn_exists+0x60>
    3748:	fc1ff06f          	j	3708 <fatfs_sfn_exists+0x38>
    374c:	00048513          	mv	a0,s1
    3750:	fffff097          	auipc	ra,0xfffff
    3754:	a50080e7          	jalr	-1456(ra) # 21a0 <fatfs_entry_lfn_invalid>
    3758:	fe0514e3          	bnez	a0,3740 <fatfs_sfn_exists+0x70>
    375c:	00048513          	mv	a0,s1
    3760:	fffff097          	auipc	ra,0xfffff
    3764:	ac4080e7          	jalr	-1340(ra) # 2224 <fatfs_entry_sfn_only>
    3768:	00050413          	mv	s0,a0
    376c:	fc050ae3          	beqz	a0,3740 <fatfs_sfn_exists+0x70>
    3770:	00b00613          	li	a2,11
    3774:	000b0593          	mv	a1,s6
    3778:	00048513          	mv	a0,s1
    377c:	ffffe097          	auipc	ra,0xffffe
    3780:	d14080e7          	jalr	-748(ra) # 1490 <strncmp>
    3784:	fa051ee3          	bnez	a0,3740 <fatfs_sfn_exists+0x70>
    3788:	01c12083          	lw	ra,28(sp)
    378c:	00040513          	mv	a0,s0
    3790:	01812403          	lw	s0,24(sp)
    3794:	01412483          	lw	s1,20(sp)
    3798:	01012903          	lw	s2,16(sp)
    379c:	00c12983          	lw	s3,12(sp)
    37a0:	00812a03          	lw	s4,8(sp)
    37a4:	00412a83          	lw	s5,4(sp)
    37a8:	00012b03          	lw	s6,0(sp)
    37ac:	02010113          	addi	sp,sp,32
    37b0:	00008067          	ret

000037b4 <fatfs_update_file_length>:
    37b4:	03852783          	lw	a5,56(a0)
    37b8:	14078e63          	beqz	a5,3914 <fatfs_update_file_length+0x160>
    37bc:	fd010113          	addi	sp,sp,-48
    37c0:	02912223          	sw	s1,36(sp)
    37c4:	03212023          	sw	s2,32(sp)
    37c8:	01312e23          	sw	s3,28(sp)
    37cc:	01412c23          	sw	s4,24(sp)
    37d0:	01612823          	sw	s6,16(sp)
    37d4:	01712623          	sw	s7,12(sp)
    37d8:	02112623          	sw	ra,44(sp)
    37dc:	02812423          	sw	s0,40(sp)
    37e0:	01512a23          	sw	s5,20(sp)
    37e4:	00068913          	mv	s2,a3
    37e8:	00060b93          	mv	s7,a2
    37ec:	00058b13          	mv	s6,a1
    37f0:	00050493          	mv	s1,a0
    37f4:	00000993          	li	s3,0
    37f8:	24450a13          	addi	s4,a0,580
    37fc:	00000693          	li	a3,0
    3800:	00098613          	mv	a2,s3
    3804:	000b0593          	mv	a1,s6
    3808:	00048513          	mv	a0,s1
    380c:	00000097          	auipc	ra,0x0
    3810:	858080e7          	jalr	-1960(ra) # 3064 <fatfs_sector_reader>
    3814:	0c050863          	beqz	a0,38e4 <fatfs_update_file_length+0x130>
    3818:	04448413          	addi	s0,s1,68
    381c:	00198993          	addi	s3,s3,1
    3820:	00040a93          	mv	s5,s0
    3824:	00040513          	mv	a0,s0
    3828:	fffff097          	auipc	ra,0xfffff
    382c:	964080e7          	jalr	-1692(ra) # 218c <fatfs_entry_lfn_text>
    3830:	0a051463          	bnez	a0,38d8 <fatfs_update_file_length+0x124>
    3834:	00040513          	mv	a0,s0
    3838:	fffff097          	auipc	ra,0xfffff
    383c:	968080e7          	jalr	-1688(ra) # 21a0 <fatfs_entry_lfn_invalid>
    3840:	08051c63          	bnez	a0,38d8 <fatfs_update_file_length+0x124>
    3844:	00040513          	mv	a0,s0
    3848:	fffff097          	auipc	ra,0xfffff
    384c:	9dc080e7          	jalr	-1572(ra) # 2224 <fatfs_entry_sfn_only>
    3850:	08050463          	beqz	a0,38d8 <fatfs_update_file_length+0x124>
    3854:	00b00613          	li	a2,11
    3858:	000b8593          	mv	a1,s7
    385c:	00040513          	mv	a0,s0
    3860:	ffffe097          	auipc	ra,0xffffe
    3864:	c30080e7          	jalr	-976(ra) # 1490 <strncmp>
    3868:	06051863          	bnez	a0,38d8 <fatfs_update_file_length+0x124>
    386c:	00895793          	srli	a5,s2,0x8
    3870:	01240e23          	sb	s2,28(s0)
    3874:	00f40ea3          	sb	a5,29(s0)
    3878:	01095793          	srli	a5,s2,0x10
    387c:	01895913          	srli	s2,s2,0x18
    3880:	00f40f23          	sb	a5,30(s0)
    3884:	01240fa3          	sb	s2,31(s0)
    3888:	00040593          	mv	a1,s0
    388c:	02000613          	li	a2,32
    3890:	00040513          	mv	a0,s0
    3894:	ffffe097          	auipc	ra,0xffffe
    3898:	bb8080e7          	jalr	-1096(ra) # 144c <memcpy>
    389c:	02812403          	lw	s0,40(sp)
    38a0:	0384a783          	lw	a5,56(s1)
    38a4:	2444a503          	lw	a0,580(s1)
    38a8:	02c12083          	lw	ra,44(sp)
    38ac:	02412483          	lw	s1,36(sp)
    38b0:	02012903          	lw	s2,32(sp)
    38b4:	01c12983          	lw	s3,28(sp)
    38b8:	01812a03          	lw	s4,24(sp)
    38bc:	01012b03          	lw	s6,16(sp)
    38c0:	00c12b83          	lw	s7,12(sp)
    38c4:	000a8593          	mv	a1,s5
    38c8:	01412a83          	lw	s5,20(sp)
    38cc:	00100613          	li	a2,1
    38d0:	03010113          	addi	sp,sp,48
    38d4:	00078067          	jr	a5
    38d8:	02040413          	addi	s0,s0,32
    38dc:	f54414e3          	bne	s0,s4,3824 <fatfs_update_file_length+0x70>
    38e0:	f1dff06f          	j	37fc <fatfs_update_file_length+0x48>
    38e4:	02c12083          	lw	ra,44(sp)
    38e8:	02812403          	lw	s0,40(sp)
    38ec:	02412483          	lw	s1,36(sp)
    38f0:	02012903          	lw	s2,32(sp)
    38f4:	01c12983          	lw	s3,28(sp)
    38f8:	01812a03          	lw	s4,24(sp)
    38fc:	01412a83          	lw	s5,20(sp)
    3900:	01012b03          	lw	s6,16(sp)
    3904:	00c12b83          	lw	s7,12(sp)
    3908:	00000513          	li	a0,0
    390c:	03010113          	addi	sp,sp,48
    3910:	00008067          	ret
    3914:	00000513          	li	a0,0
    3918:	00008067          	ret

0000391c <fatfs_list_directory_next>:
    391c:	ec010113          	addi	sp,sp,-320
    3920:	13212823          	sw	s2,304(sp)
    3924:	13312623          	sw	s3,300(sp)
    3928:	13412423          	sw	s4,296(sp)
    392c:	13512223          	sw	s5,292(sp)
    3930:	13612023          	sw	s6,288(sp)
    3934:	12112e23          	sw	ra,316(sp)
    3938:	12812c23          	sw	s0,312(sp)
    393c:	12912a23          	sw	s1,308(sp)
    3940:	00050a13          	mv	s4,a0
    3944:	00058913          	mv	s2,a1
    3948:	00060993          	mv	s3,a2
    394c:	10010ea3          	sb	zero,285(sp)
    3950:	04450a93          	addi	s5,a0,68
    3954:	00f00b13          	li	s6,15
    3958:	00092603          	lw	a2,0(s2)
    395c:	00492583          	lw	a1,4(s2)
    3960:	00000693          	li	a3,0
    3964:	000a0513          	mv	a0,s4
    3968:	fffff097          	auipc	ra,0xfffff
    396c:	6fc080e7          	jalr	1788(ra) # 3064 <fatfs_sector_reader>
    3970:	10050c63          	beqz	a0,3a88 <fatfs_list_directory_next+0x16c>
    3974:	00894483          	lbu	s1,8(s2)
    3978:	00549413          	slli	s0,s1,0x5
    397c:	008a8433          	add	s0,s5,s0
    3980:	009b7c63          	bgeu	s6,s1,3998 <fatfs_list_directory_next+0x7c>
    3984:	00092783          	lw	a5,0(s2)
    3988:	00090423          	sb	zero,8(s2)
    398c:	00178793          	addi	a5,a5,1
    3990:	00f92023          	sw	a5,0(s2)
    3994:	fc5ff06f          	j	3958 <fatfs_list_directory_next+0x3c>
    3998:	00040513          	mv	a0,s0
    399c:	ffffe097          	auipc	ra,0xffffe
    39a0:	7f0080e7          	jalr	2032(ra) # 218c <fatfs_entry_lfn_text>
    39a4:	02050263          	beqz	a0,39c8 <fatfs_list_directory_next+0xac>
    39a8:	00040593          	mv	a1,s0
    39ac:	01810513          	addi	a0,sp,24
    39b0:	ffffe097          	auipc	ra,0xffffe
    39b4:	6d4080e7          	jalr	1748(ra) # 2084 <fatfs_lfn_cache_entry>
    39b8:	00148493          	addi	s1,s1,1
    39bc:	0ff4f493          	zext.b	s1,s1
    39c0:	02040413          	addi	s0,s0,32
    39c4:	fbdff06f          	j	3980 <fatfs_list_directory_next+0x64>
    39c8:	00040513          	mv	a0,s0
    39cc:	ffffe097          	auipc	ra,0xffffe
    39d0:	7d4080e7          	jalr	2004(ra) # 21a0 <fatfs_entry_lfn_invalid>
    39d4:	00050663          	beqz	a0,39e0 <fatfs_list_directory_next+0xc4>
    39d8:	10010ea3          	sb	zero,285(sp)
    39dc:	fddff06f          	j	39b8 <fatfs_list_directory_next+0x9c>
    39e0:	00040593          	mv	a1,s0
    39e4:	01810513          	addi	a0,sp,24
    39e8:	ffffe097          	auipc	ra,0xffffe
    39ec:	7ec080e7          	jalr	2028(ra) # 21d4 <fatfs_entry_lfn_exists>
    39f0:	0c050063          	beqz	a0,3ab0 <fatfs_list_directory_next+0x194>
    39f4:	01810513          	addi	a0,sp,24
    39f8:	ffffe097          	auipc	ra,0xffffe
    39fc:	758080e7          	jalr	1880(ra) # 2150 <fatfs_lfn_cache_get>
    3a00:	00050593          	mv	a1,a0
    3a04:	10300613          	li	a2,259
    3a08:	00098513          	mv	a0,s3
    3a0c:	ffffe097          	auipc	ra,0xffffe
    3a10:	ac4080e7          	jalr	-1340(ra) # 14d0 <strncpy>
    3a14:	00040513          	mv	a0,s0
    3a18:	fffff097          	auipc	ra,0xfffff
    3a1c:	84c080e7          	jalr	-1972(ra) # 2264 <fatfs_entry_is_dir>
    3a20:	10a98223          	sb	a0,260(s3)
    3a24:	01d44783          	lbu	a5,29(s0)
    3a28:	01c44703          	lbu	a4,28(s0)
    3a2c:	00148493          	addi	s1,s1,1
    3a30:	00879793          	slli	a5,a5,0x8
    3a34:	00e7e7b3          	or	a5,a5,a4
    3a38:	01e44703          	lbu	a4,30(s0)
    3a3c:	00100513          	li	a0,1
    3a40:	01071713          	slli	a4,a4,0x10
    3a44:	00f76733          	or	a4,a4,a5
    3a48:	01f44783          	lbu	a5,31(s0)
    3a4c:	01879793          	slli	a5,a5,0x18
    3a50:	00e7e7b3          	or	a5,a5,a4
    3a54:	10f9a623          	sw	a5,268(s3)
    3a58:	01544783          	lbu	a5,21(s0)
    3a5c:	01444703          	lbu	a4,20(s0)
    3a60:	01a44683          	lbu	a3,26(s0)
    3a64:	00879793          	slli	a5,a5,0x8
    3a68:	00e7e7b3          	or	a5,a5,a4
    3a6c:	01b44703          	lbu	a4,27(s0)
    3a70:	01079793          	slli	a5,a5,0x10
    3a74:	00871713          	slli	a4,a4,0x8
    3a78:	00d76733          	or	a4,a4,a3
    3a7c:	00e7e7b3          	or	a5,a5,a4
    3a80:	10f9a423          	sw	a5,264(s3)
    3a84:	00990423          	sb	s1,8(s2)
    3a88:	13c12083          	lw	ra,316(sp)
    3a8c:	13812403          	lw	s0,312(sp)
    3a90:	13412483          	lw	s1,308(sp)
    3a94:	13012903          	lw	s2,304(sp)
    3a98:	12c12983          	lw	s3,300(sp)
    3a9c:	12812a03          	lw	s4,296(sp)
    3aa0:	12412a83          	lw	s5,292(sp)
    3aa4:	12012b03          	lw	s6,288(sp)
    3aa8:	14010113          	addi	sp,sp,320
    3aac:	00008067          	ret
    3ab0:	00040513          	mv	a0,s0
    3ab4:	ffffe097          	auipc	ra,0xffffe
    3ab8:	770080e7          	jalr	1904(ra) # 2224 <fatfs_entry_sfn_only>
    3abc:	ee050ee3          	beqz	a0,39b8 <fatfs_list_directory_next+0x9c>
    3ac0:	00810a13          	addi	s4,sp,8
    3ac4:	00d00613          	li	a2,13
    3ac8:	00000593          	li	a1,0
    3acc:	000a0513          	mv	a0,s4
    3ad0:	10010ea3          	sb	zero,285(sp)
    3ad4:	ffffe097          	auipc	ra,0xffffe
    3ad8:	95c080e7          	jalr	-1700(ra) # 1430 <memset>
    3adc:	00000793          	li	a5,0
    3ae0:	00800713          	li	a4,8
    3ae4:	00f40633          	add	a2,s0,a5
    3ae8:	00064603          	lbu	a2,0(a2)
    3aec:	00fa06b3          	add	a3,s4,a5
    3af0:	00178793          	addi	a5,a5,1
    3af4:	00c68023          	sb	a2,0(a3)
    3af8:	fee796e3          	bne	a5,a4,3ae4 <fatfs_list_directory_next+0x1c8>
    3afc:	00844783          	lbu	a5,8(s0)
    3b00:	00944703          	lbu	a4,9(s0)
    3b04:	00a44683          	lbu	a3,10(s0)
    3b08:	00f108a3          	sb	a5,17(sp)
    3b0c:	00e10923          	sb	a4,18(sp)
    3b10:	fe078793          	addi	a5,a5,-32
    3b14:	fe070713          	addi	a4,a4,-32
    3b18:	00f037b3          	snez	a5,a5
    3b1c:	00e03733          	snez	a4,a4
    3b20:	00d109a3          	sb	a3,19(sp)
    3b24:	00e7e7b3          	or	a5,a5,a4
    3b28:	00079863          	bnez	a5,3b38 <fatfs_list_directory_next+0x21c>
    3b2c:	fe068693          	addi	a3,a3,-32
    3b30:	02000793          	li	a5,32
    3b34:	00068a63          	beqz	a3,3b48 <fatfs_list_directory_next+0x22c>
    3b38:	00814703          	lbu	a4,8(sp)
    3b3c:	02e00793          	li	a5,46
    3b40:	00f71463          	bne	a4,a5,3b48 <fatfs_list_directory_next+0x22c>
    3b44:	02000793          	li	a5,32
    3b48:	000a0593          	mv	a1,s4
    3b4c:	00098513          	mv	a0,s3
    3b50:	00f10823          	sb	a5,16(sp)
    3b54:	fffff097          	auipc	ra,0xfffff
    3b58:	054080e7          	jalr	84(ra) # 2ba8 <fatfs_get_sfn_display_name>
    3b5c:	eb9ff06f          	j	3a14 <fatfs_list_directory_next+0xf8>

00003b60 <fl_readdir>:
    3b60:	000057b7          	lui	a5,0x5
    3b64:	4ac7a783          	lw	a5,1196(a5) # 54ac <_filelib_init>
    3b68:	fd010113          	addi	sp,sp,-48
    3b6c:	03212023          	sw	s2,32(sp)
    3b70:	01312e23          	sw	s3,28(sp)
    3b74:	02112623          	sw	ra,44(sp)
    3b78:	02812423          	sw	s0,40(sp)
    3b7c:	02912223          	sw	s1,36(sp)
    3b80:	00050913          	mv	s2,a0
    3b84:	00058993          	mv	s3,a1
    3b88:	00079663          	bnez	a5,3b94 <fl_readdir+0x34>
    3b8c:	ffffe097          	auipc	ra,0xffffe
    3b90:	488080e7          	jalr	1160(ra) # 2014 <fl_init>
    3b94:	0000b4b7          	lui	s1,0xb
    3b98:	73048413          	addi	s0,s1,1840 # b730 <_fs>
    3b9c:	03c42783          	lw	a5,60(s0)
    3ba0:	00078463          	beqz	a5,3ba8 <fl_readdir+0x48>
    3ba4:	000780e7          	jalr	a5
    3ba8:	00098613          	mv	a2,s3
    3bac:	00090593          	mv	a1,s2
    3bb0:	73048513          	addi	a0,s1,1840
    3bb4:	00000097          	auipc	ra,0x0
    3bb8:	d68080e7          	jalr	-664(ra) # 391c <fatfs_list_directory_next>
    3bbc:	04042783          	lw	a5,64(s0)
    3bc0:	00078863          	beqz	a5,3bd0 <fl_readdir+0x70>
    3bc4:	00a12623          	sw	a0,12(sp)
    3bc8:	000780e7          	jalr	a5
    3bcc:	00c12503          	lw	a0,12(sp)
    3bd0:	02c12083          	lw	ra,44(sp)
    3bd4:	02812403          	lw	s0,40(sp)
    3bd8:	00154513          	xori	a0,a0,1
    3bdc:	02412483          	lw	s1,36(sp)
    3be0:	02012903          	lw	s2,32(sp)
    3be4:	01c12983          	lw	s3,28(sp)
    3be8:	40a00533          	neg	a0,a0
    3bec:	03010113          	addi	sp,sp,48
    3bf0:	00008067          	ret

00003bf4 <_read_sectors>:
    3bf4:	fd010113          	addi	sp,sp,-48
    3bf8:	01512a23          	sw	s5,20(sp)
    3bfc:	0000bab7          	lui	s5,0xb
    3c00:	01312e23          	sw	s3,28(sp)
    3c04:	730ac983          	lbu	s3,1840(s5) # b730 <_fs>
    3c08:	01612823          	sw	s6,16(sp)
    3c0c:	00058b13          	mv	s6,a1
    3c10:	02912223          	sw	s1,36(sp)
    3c14:	00098593          	mv	a1,s3
    3c18:	00050493          	mv	s1,a0
    3c1c:	000b0513          	mv	a0,s6
    3c20:	02112623          	sw	ra,44(sp)
    3c24:	02812423          	sw	s0,40(sp)
    3c28:	01412c23          	sw	s4,24(sp)
    3c2c:	00068413          	mv	s0,a3
    3c30:	01712623          	sw	s7,12(sp)
    3c34:	01812423          	sw	s8,8(sp)
    3c38:	03212023          	sw	s2,32(sp)
    3c3c:	00060c13          	mv	s8,a2
    3c40:	ffffd097          	auipc	ra,0xffffd
    3c44:	744080e7          	jalr	1860(ra) # 1384 <__udivsi3>
    3c48:	00050a13          	mv	s4,a0
    3c4c:	00098593          	mv	a1,s3
    3c50:	000b0513          	mv	a0,s6
    3c54:	ffffd097          	auipc	ra,0xffffd
    3c58:	778080e7          	jalr	1912(ra) # 13cc <__umodsi3>
    3c5c:	00a407b3          	add	a5,s0,a0
    3c60:	00050b93          	mv	s7,a0
    3c64:	00f9fe63          	bgeu	s3,a5,3c80 <_read_sectors+0x8c>
    3c68:	000a0593          	mv	a1,s4
    3c6c:	00098513          	mv	a0,s3
    3c70:	ffffe097          	auipc	ra,0xffffe
    3c74:	f10080e7          	jalr	-240(ra) # 1b80 <__mulsi3>
    3c78:	416987b3          	sub	a5,s3,s6
    3c7c:	00f50433          	add	s0,a0,a5
    3c80:	2284a903          	lw	s2,552(s1)
    3c84:	07491863          	bne	s2,s4,3cf4 <_read_sectors+0x100>
    3c88:	22c4a583          	lw	a1,556(s1)
    3c8c:	fff00793          	li	a5,-1
    3c90:	02f58663          	beq	a1,a5,3cbc <_read_sectors+0xc8>
    3c94:	730a8513          	addi	a0,s5,1840
    3c98:	ffffe097          	auipc	ra,0xffffe
    3c9c:	24c080e7          	jalr	588(ra) # 1ee4 <fatfs_lba_of_cluster>
    3ca0:	017505b3          	add	a1,a0,s7
    3ca4:	00040693          	mv	a3,s0
    3ca8:	000c0613          	mv	a2,s8
    3cac:	730a8513          	addi	a0,s5,1840
    3cb0:	ffffe097          	auipc	ra,0xffffe
    3cb4:	280080e7          	jalr	640(ra) # 1f30 <fatfs_sector_read>
    3cb8:	00051463          	bnez	a0,3cc0 <_read_sectors+0xcc>
    3cbc:	00000413          	li	s0,0
    3cc0:	02c12083          	lw	ra,44(sp)
    3cc4:	00040513          	mv	a0,s0
    3cc8:	02812403          	lw	s0,40(sp)
    3ccc:	02412483          	lw	s1,36(sp)
    3cd0:	02012903          	lw	s2,32(sp)
    3cd4:	01c12983          	lw	s3,28(sp)
    3cd8:	01812a03          	lw	s4,24(sp)
    3cdc:	01412a83          	lw	s5,20(sp)
    3ce0:	01012b03          	lw	s6,16(sp)
    3ce4:	00c12b83          	lw	s7,12(sp)
    3ce8:	00812c03          	lw	s8,8(sp)
    3cec:	03010113          	addi	sp,sp,48
    3cf0:	00008067          	ret
    3cf4:	033b6463          	bltu	s6,s3,3d1c <_read_sectors+0x128>
    3cf8:	00190793          	addi	a5,s2,1
    3cfc:	03479063          	bne	a5,s4,3d1c <_read_sectors+0x128>
    3d00:	22c4a583          	lw	a1,556(s1)
    3d04:	03496263          	bltu	s2,s4,3d28 <_read_sectors+0x134>
    3d08:	fff00793          	li	a5,-1
    3d0c:	faf588e3          	beq	a1,a5,3cbc <_read_sectors+0xc8>
    3d10:	22b4a623          	sw	a1,556(s1)
    3d14:	2344a423          	sw	s4,552(s1)
    3d18:	f7dff06f          	j	3c94 <_read_sectors+0xa0>
    3d1c:	0044a583          	lw	a1,4(s1)
    3d20:	00000913          	li	s2,0
    3d24:	fe1ff06f          	j	3d04 <_read_sectors+0x110>
    3d28:	730a8513          	addi	a0,s5,1840
    3d2c:	fffff097          	auipc	ra,0xfffff
    3d30:	230080e7          	jalr	560(ra) # 2f5c <fatfs_find_next_cluster>
    3d34:	00050593          	mv	a1,a0
    3d38:	00190913          	addi	s2,s2,1
    3d3c:	fc9ff06f          	j	3d04 <_read_sectors+0x110>

00003d40 <fatfs_set_fs_info_next_free_cluster>:
    3d40:	03052783          	lw	a5,48(a0)
    3d44:	0a078463          	beqz	a5,3dec <fatfs_set_fs_info_next_free_cluster+0xac>
    3d48:	fe010113          	addi	sp,sp,-32
    3d4c:	01c52783          	lw	a5,28(a0)
    3d50:	00912a23          	sw	s1,20(sp)
    3d54:	00058493          	mv	s1,a1
    3d58:	01855583          	lhu	a1,24(a0)
    3d5c:	00812c23          	sw	s0,24(sp)
    3d60:	00112e23          	sw	ra,28(sp)
    3d64:	00f585b3          	add	a1,a1,a5
    3d68:	00050413          	mv	s0,a0
    3d6c:	ffffe097          	auipc	ra,0xffffe
    3d70:	fcc080e7          	jalr	-52(ra) # 1d38 <fatfs_fat_read_sector>
    3d74:	00050593          	mv	a1,a0
    3d78:	06050063          	beqz	a0,3dd8 <fatfs_set_fs_info_next_free_cluster+0x98>
    3d7c:	20852783          	lw	a5,520(a0)
    3d80:	0084d713          	srli	a4,s1,0x8
    3d84:	00100613          	li	a2,1
    3d88:	1e978623          	sb	s1,492(a5)
    3d8c:	20852783          	lw	a5,520(a0)
    3d90:	1ee786a3          	sb	a4,493(a5)
    3d94:	20852783          	lw	a5,520(a0)
    3d98:	0104d713          	srli	a4,s1,0x10
    3d9c:	1ee78723          	sb	a4,494(a5)
    3da0:	20852783          	lw	a5,520(a0)
    3da4:	0184d713          	srli	a4,s1,0x18
    3da8:	1ee787a3          	sb	a4,495(a5)
    3dac:	03842783          	lw	a5,56(s0)
    3db0:	20c52223          	sw	a2,516(a0)
    3db4:	02942223          	sw	s1,36(s0)
    3db8:	00078a63          	beqz	a5,3dcc <fatfs_set_fs_info_next_free_cluster+0x8c>
    3dbc:	20052503          	lw	a0,512(a0)
    3dc0:	00b12623          	sw	a1,12(sp)
    3dc4:	000780e7          	jalr	a5
    3dc8:	00c12583          	lw	a1,12(sp)
    3dcc:	fff00793          	li	a5,-1
    3dd0:	20f5a023          	sw	a5,512(a1)
    3dd4:	2005a223          	sw	zero,516(a1)
    3dd8:	01c12083          	lw	ra,28(sp)
    3ddc:	01812403          	lw	s0,24(sp)
    3de0:	01412483          	lw	s1,20(sp)
    3de4:	02010113          	addi	sp,sp,32
    3de8:	00008067          	ret
    3dec:	00008067          	ret

00003df0 <fatfs_find_blank_cluster>:
    3df0:	fd010113          	addi	sp,sp,-48
    3df4:	01312e23          	sw	s3,28(sp)
    3df8:	100009b7          	lui	s3,0x10000
    3dfc:	02912223          	sw	s1,36(sp)
    3e00:	03212023          	sw	s2,32(sp)
    3e04:	02112623          	sw	ra,44(sp)
    3e08:	02812423          	sw	s0,40(sp)
    3e0c:	00050913          	mv	s2,a0
    3e10:	00058493          	mv	s1,a1
    3e14:	fff98993          	addi	s3,s3,-1 # fffffff <__stacktop+0xffeffff>
    3e18:	03092783          	lw	a5,48(s2)
    3e1c:	0074d413          	srli	s0,s1,0x7
    3e20:	00079463          	bnez	a5,3e28 <fatfs_find_blank_cluster+0x38>
    3e24:	0084d413          	srli	s0,s1,0x8
    3e28:	02092783          	lw	a5,32(s2)
    3e2c:	0cf47863          	bgeu	s0,a5,3efc <fatfs_find_blank_cluster+0x10c>
    3e30:	01492583          	lw	a1,20(s2)
    3e34:	00090513          	mv	a0,s2
    3e38:	00c12623          	sw	a2,12(sp)
    3e3c:	00b405b3          	add	a1,s0,a1
    3e40:	ffffe097          	auipc	ra,0xffffe
    3e44:	ef8080e7          	jalr	-264(ra) # 1d38 <fatfs_fat_read_sector>
    3e48:	0a050a63          	beqz	a0,3efc <fatfs_find_blank_cluster+0x10c>
    3e4c:	03092783          	lw	a5,48(s2)
    3e50:	20852703          	lw	a4,520(a0)
    3e54:	00c12603          	lw	a2,12(sp)
    3e58:	04079a63          	bnez	a5,3eac <fatfs_find_blank_cluster+0xbc>
    3e5c:	00841413          	slli	s0,s0,0x8
    3e60:	40848433          	sub	s0,s1,s0
    3e64:	00141413          	slli	s0,s0,0x1
    3e68:	01041413          	slli	s0,s0,0x10
    3e6c:	01045413          	srli	s0,s0,0x10
    3e70:	00870733          	add	a4,a4,s0
    3e74:	00174783          	lbu	a5,1(a4)
    3e78:	00074703          	lbu	a4,0(a4)
    3e7c:	00879793          	slli	a5,a5,0x8
    3e80:	00e787b3          	add	a5,a5,a4
    3e84:	06079863          	bnez	a5,3ef4 <fatfs_find_blank_cluster+0x104>
    3e88:	00962023          	sw	s1,0(a2)
    3e8c:	00100513          	li	a0,1
    3e90:	02c12083          	lw	ra,44(sp)
    3e94:	02812403          	lw	s0,40(sp)
    3e98:	02412483          	lw	s1,36(sp)
    3e9c:	02012903          	lw	s2,32(sp)
    3ea0:	01c12983          	lw	s3,28(sp)
    3ea4:	03010113          	addi	sp,sp,48
    3ea8:	00008067          	ret
    3eac:	00741413          	slli	s0,s0,0x7
    3eb0:	40848433          	sub	s0,s1,s0
    3eb4:	00241413          	slli	s0,s0,0x2
    3eb8:	01041413          	slli	s0,s0,0x10
    3ebc:	01045413          	srli	s0,s0,0x10
    3ec0:	00870733          	add	a4,a4,s0
    3ec4:	00374783          	lbu	a5,3(a4)
    3ec8:	00274683          	lbu	a3,2(a4)
    3ecc:	01879793          	slli	a5,a5,0x18
    3ed0:	01069693          	slli	a3,a3,0x10
    3ed4:	00d787b3          	add	a5,a5,a3
    3ed8:	00074683          	lbu	a3,0(a4)
    3edc:	00174703          	lbu	a4,1(a4)
    3ee0:	00d787b3          	add	a5,a5,a3
    3ee4:	00871713          	slli	a4,a4,0x8
    3ee8:	00e787b3          	add	a5,a5,a4
    3eec:	0137f7b3          	and	a5,a5,s3
    3ef0:	f95ff06f          	j	3e84 <fatfs_find_blank_cluster+0x94>
    3ef4:	00148493          	addi	s1,s1,1
    3ef8:	f21ff06f          	j	3e18 <fatfs_find_blank_cluster+0x28>
    3efc:	00000513          	li	a0,0
    3f00:	f91ff06f          	j	3e90 <fatfs_find_blank_cluster+0xa0>

00003f04 <fatfs_fat_set_cluster>:
    3f04:	03052783          	lw	a5,48(a0)
    3f08:	fe010113          	addi	sp,sp,-32
    3f0c:	00812c23          	sw	s0,24(sp)
    3f10:	00912a23          	sw	s1,20(sp)
    3f14:	01212823          	sw	s2,16(sp)
    3f18:	00112e23          	sw	ra,28(sp)
    3f1c:	00050913          	mv	s2,a0
    3f20:	00058413          	mv	s0,a1
    3f24:	0085d493          	srli	s1,a1,0x8
    3f28:	00078463          	beqz	a5,3f30 <fatfs_fat_set_cluster+0x2c>
    3f2c:	0075d493          	srli	s1,a1,0x7
    3f30:	01492583          	lw	a1,20(s2)
    3f34:	00090513          	mv	a0,s2
    3f38:	00c12623          	sw	a2,12(sp)
    3f3c:	00b485b3          	add	a1,s1,a1
    3f40:	ffffe097          	auipc	ra,0xffffe
    3f44:	df8080e7          	jalr	-520(ra) # 1d38 <fatfs_fat_read_sector>
    3f48:	00050793          	mv	a5,a0
    3f4c:	00000513          	li	a0,0
    3f50:	04078663          	beqz	a5,3f9c <fatfs_fat_set_cluster+0x98>
    3f54:	03092683          	lw	a3,48(s2)
    3f58:	2087a703          	lw	a4,520(a5)
    3f5c:	00c12603          	lw	a2,12(sp)
    3f60:	04069a63          	bnez	a3,3fb4 <fatfs_fat_set_cluster+0xb0>
    3f64:	00849493          	slli	s1,s1,0x8
    3f68:	40940433          	sub	s0,s0,s1
    3f6c:	00141413          	slli	s0,s0,0x1
    3f70:	01041413          	slli	s0,s0,0x10
    3f74:	01045413          	srli	s0,s0,0x10
    3f78:	00870733          	add	a4,a4,s0
    3f7c:	00c70023          	sb	a2,0(a4)
    3f80:	2087a703          	lw	a4,520(a5)
    3f84:	00865613          	srli	a2,a2,0x8
    3f88:	00870733          	add	a4,a4,s0
    3f8c:	00c700a3          	sb	a2,1(a4)
    3f90:	00100713          	li	a4,1
    3f94:	20e7a223          	sw	a4,516(a5)
    3f98:	00100513          	li	a0,1
    3f9c:	01c12083          	lw	ra,28(sp)
    3fa0:	01812403          	lw	s0,24(sp)
    3fa4:	01412483          	lw	s1,20(sp)
    3fa8:	01012903          	lw	s2,16(sp)
    3fac:	02010113          	addi	sp,sp,32
    3fb0:	00008067          	ret
    3fb4:	00749493          	slli	s1,s1,0x7
    3fb8:	40940433          	sub	s0,s0,s1
    3fbc:	00241413          	slli	s0,s0,0x2
    3fc0:	01041413          	slli	s0,s0,0x10
    3fc4:	01045413          	srli	s0,s0,0x10
    3fc8:	00870733          	add	a4,a4,s0
    3fcc:	00c70023          	sb	a2,0(a4)
    3fd0:	2087a703          	lw	a4,520(a5)
    3fd4:	00865693          	srli	a3,a2,0x8
    3fd8:	00870733          	add	a4,a4,s0
    3fdc:	00d700a3          	sb	a3,1(a4)
    3fe0:	2087a703          	lw	a4,520(a5)
    3fe4:	01065693          	srli	a3,a2,0x10
    3fe8:	01865613          	srli	a2,a2,0x18
    3fec:	00870733          	add	a4,a4,s0
    3ff0:	00d70123          	sb	a3,2(a4)
    3ff4:	2087a703          	lw	a4,520(a5)
    3ff8:	00870733          	add	a4,a4,s0
    3ffc:	00c701a3          	sb	a2,3(a4)
    4000:	f91ff06f          	j	3f90 <fatfs_fat_set_cluster+0x8c>

00004004 <fatfs_free_cluster_chain>:
    4004:	fe010113          	addi	sp,sp,-32
    4008:	00812c23          	sw	s0,24(sp)
    400c:	00912a23          	sw	s1,20(sp)
    4010:	00112e23          	sw	ra,28(sp)
    4014:	01212823          	sw	s2,16(sp)
    4018:	00050493          	mv	s1,a0
    401c:	ffd00413          	li	s0,-3
    4020:	fff58793          	addi	a5,a1,-1
    4024:	02f47063          	bgeu	s0,a5,4044 <fatfs_free_cluster_chain+0x40>
    4028:	01c12083          	lw	ra,28(sp)
    402c:	01812403          	lw	s0,24(sp)
    4030:	01412483          	lw	s1,20(sp)
    4034:	01012903          	lw	s2,16(sp)
    4038:	00100513          	li	a0,1
    403c:	02010113          	addi	sp,sp,32
    4040:	00008067          	ret
    4044:	00048513          	mv	a0,s1
    4048:	00b12623          	sw	a1,12(sp)
    404c:	fffff097          	auipc	ra,0xfffff
    4050:	f10080e7          	jalr	-240(ra) # 2f5c <fatfs_find_next_cluster>
    4054:	00c12583          	lw	a1,12(sp)
    4058:	00050913          	mv	s2,a0
    405c:	00000613          	li	a2,0
    4060:	00048513          	mv	a0,s1
    4064:	00000097          	auipc	ra,0x0
    4068:	ea0080e7          	jalr	-352(ra) # 3f04 <fatfs_fat_set_cluster>
    406c:	00090593          	mv	a1,s2
    4070:	fb1ff06f          	j	4020 <fatfs_free_cluster_chain+0x1c>

00004074 <fatfs_fat_add_cluster_to_chain>:
    4074:	fd010113          	addi	sp,sp,-48
    4078:	02912223          	sw	s1,36(sp)
    407c:	02112623          	sw	ra,44(sp)
    4080:	02812423          	sw	s0,40(sp)
    4084:	03212023          	sw	s2,32(sp)
    4088:	01312e23          	sw	s3,28(sp)
    408c:	fff00493          	li	s1,-1
    4090:	02959263          	bne	a1,s1,40b4 <fatfs_fat_add_cluster_to_chain+0x40>
    4094:	00000513          	li	a0,0
    4098:	02c12083          	lw	ra,44(sp)
    409c:	02812403          	lw	s0,40(sp)
    40a0:	02412483          	lw	s1,36(sp)
    40a4:	02012903          	lw	s2,32(sp)
    40a8:	01c12983          	lw	s3,28(sp)
    40ac:	03010113          	addi	sp,sp,48
    40b0:	00008067          	ret
    40b4:	00050913          	mv	s2,a0
    40b8:	00058413          	mv	s0,a1
    40bc:	00060993          	mv	s3,a2
    40c0:	00040593          	mv	a1,s0
    40c4:	00090513          	mv	a0,s2
    40c8:	00812623          	sw	s0,12(sp)
    40cc:	fffff097          	auipc	ra,0xfffff
    40d0:	e90080e7          	jalr	-368(ra) # 2f5c <fatfs_find_next_cluster>
    40d4:	00050413          	mv	s0,a0
    40d8:	fa050ee3          	beqz	a0,4094 <fatfs_fat_add_cluster_to_chain+0x20>
    40dc:	00c12583          	lw	a1,12(sp)
    40e0:	fe9510e3          	bne	a0,s1,40c0 <fatfs_fat_add_cluster_to_chain+0x4c>
    40e4:	00098613          	mv	a2,s3
    40e8:	00090513          	mv	a0,s2
    40ec:	00000097          	auipc	ra,0x0
    40f0:	e18080e7          	jalr	-488(ra) # 3f04 <fatfs_fat_set_cluster>
    40f4:	00040613          	mv	a2,s0
    40f8:	00098593          	mv	a1,s3
    40fc:	00090513          	mv	a0,s2
    4100:	00000097          	auipc	ra,0x0
    4104:	e04080e7          	jalr	-508(ra) # 3f04 <fatfs_fat_set_cluster>
    4108:	00100513          	li	a0,1
    410c:	f8dff06f          	j	4098 <fatfs_fat_add_cluster_to_chain+0x24>

00004110 <fatfs_add_free_space>:
    4110:	02452783          	lw	a5,36(a0)
    4114:	fd010113          	addi	sp,sp,-48
    4118:	02812423          	sw	s0,40(sp)
    411c:	01312e23          	sw	s3,28(sp)
    4120:	01412c23          	sw	s4,24(sp)
    4124:	0005a983          	lw	s3,0(a1)
    4128:	01512a23          	sw	s5,20(sp)
    412c:	00058a13          	mv	s4,a1
    4130:	02112623          	sw	ra,44(sp)
    4134:	02912223          	sw	s1,36(sp)
    4138:	03212023          	sw	s2,32(sp)
    413c:	fff00593          	li	a1,-1
    4140:	00050413          	mv	s0,a0
    4144:	00060a93          	mv	s5,a2
    4148:	00b78663          	beq	a5,a1,4154 <fatfs_add_free_space+0x44>
    414c:	00000097          	auipc	ra,0x0
    4150:	bf4080e7          	jalr	-1036(ra) # 3d40 <fatfs_set_fs_info_next_free_cluster>
    4154:	00000493          	li	s1,0
    4158:	03549663          	bne	s1,s5,4184 <fatfs_add_free_space+0x74>
    415c:	00100513          	li	a0,1
    4160:	02c12083          	lw	ra,44(sp)
    4164:	02812403          	lw	s0,40(sp)
    4168:	02412483          	lw	s1,36(sp)
    416c:	02012903          	lw	s2,32(sp)
    4170:	01c12983          	lw	s3,28(sp)
    4174:	01812a03          	lw	s4,24(sp)
    4178:	01412a83          	lw	s5,20(sp)
    417c:	03010113          	addi	sp,sp,48
    4180:	00008067          	ret
    4184:	00842583          	lw	a1,8(s0)
    4188:	00c10613          	addi	a2,sp,12
    418c:	00040513          	mv	a0,s0
    4190:	00000097          	auipc	ra,0x0
    4194:	c60080e7          	jalr	-928(ra) # 3df0 <fatfs_find_blank_cluster>
    4198:	fc0504e3          	beqz	a0,4160 <fatfs_add_free_space+0x50>
    419c:	00c12903          	lw	s2,12(sp)
    41a0:	00098593          	mv	a1,s3
    41a4:	00040513          	mv	a0,s0
    41a8:	00090613          	mv	a2,s2
    41ac:	00000097          	auipc	ra,0x0
    41b0:	d58080e7          	jalr	-680(ra) # 3f04 <fatfs_fat_set_cluster>
    41b4:	fff00613          	li	a2,-1
    41b8:	00090593          	mv	a1,s2
    41bc:	00040513          	mv	a0,s0
    41c0:	00000097          	auipc	ra,0x0
    41c4:	d44080e7          	jalr	-700(ra) # 3f04 <fatfs_fat_set_cluster>
    41c8:	00049463          	bnez	s1,41d0 <fatfs_add_free_space+0xc0>
    41cc:	012a2023          	sw	s2,0(s4)
    41d0:	00148493          	addi	s1,s1,1
    41d4:	00090993          	mv	s3,s2
    41d8:	f81ff06f          	j	4158 <fatfs_add_free_space+0x48>

000041dc <_write_sectors>:
    41dc:	fb010113          	addi	sp,sp,-80
    41e0:	03512a23          	sw	s5,52(sp)
    41e4:	0000bab7          	lui	s5,0xb
    41e8:	04112623          	sw	ra,76(sp)
    41ec:	04812423          	sw	s0,72(sp)
    41f0:	04912223          	sw	s1,68(sp)
    41f4:	03412c23          	sw	s4,56(sp)
    41f8:	03612823          	sw	s6,48(sp)
    41fc:	03712623          	sw	s7,44(sp)
    4200:	03812423          	sw	s8,40(sp)
    4204:	03912223          	sw	s9,36(sp)
    4208:	03a12023          	sw	s10,32(sp)
    420c:	05212023          	sw	s2,64(sp)
    4210:	03312e23          	sw	s3,60(sp)
    4214:	730a8b93          	addi	s7,s5,1840 # b730 <_fs>
    4218:	000bc983          	lbu	s3,0(s7)
    421c:	00058b13          	mv	s6,a1
    4220:	fff00793          	li	a5,-1
    4224:	00098593          	mv	a1,s3
    4228:	00050493          	mv	s1,a0
    422c:	000b0513          	mv	a0,s6
    4230:	00068c13          	mv	s8,a3
    4234:	00f12e23          	sw	a5,28(sp)
    4238:	00060d13          	mv	s10,a2
    423c:	ffffd097          	auipc	ra,0xffffd
    4240:	148080e7          	jalr	328(ra) # 1384 <__udivsi3>
    4244:	00050a13          	mv	s4,a0
    4248:	00098593          	mv	a1,s3
    424c:	000b0513          	mv	a0,s6
    4250:	ffffd097          	auipc	ra,0xffffd
    4254:	17c080e7          	jalr	380(ra) # 13cc <__umodsi3>
    4258:	00ac07b3          	add	a5,s8,a0
    425c:	00050c93          	mv	s9,a0
    4260:	000c0413          	mv	s0,s8
    4264:	00f9fe63          	bgeu	s3,a5,4280 <_write_sectors+0xa4>
    4268:	000a0593          	mv	a1,s4
    426c:	00098513          	mv	a0,s3
    4270:	ffffe097          	auipc	ra,0xffffe
    4274:	910080e7          	jalr	-1776(ra) # 1b80 <__mulsi3>
    4278:	416987b3          	sub	a5,s3,s6
    427c:	00f50433          	add	s0,a0,a5
    4280:	2284a903          	lw	s2,552(s1)
    4284:	03491a63          	bne	s2,s4,42b8 <_write_sectors+0xdc>
    4288:	22c4a583          	lw	a1,556(s1)
    428c:	730a8513          	addi	a0,s5,1840
    4290:	ffffe097          	auipc	ra,0xffffe
    4294:	c54080e7          	jalr	-940(ra) # 1ee4 <fatfs_lba_of_cluster>
    4298:	019505b3          	add	a1,a0,s9
    429c:	00040693          	mv	a3,s0
    42a0:	000d0613          	mv	a2,s10
    42a4:	730a8513          	addi	a0,s5,1840
    42a8:	ffffe097          	auipc	ra,0xffffe
    42ac:	ca0080e7          	jalr	-864(ra) # 1f48 <fatfs_sector_write>
    42b0:	04050a63          	beqz	a0,4304 <_write_sectors+0x128>
    42b4:	0540006f          	j	4308 <_write_sectors+0x12c>
    42b8:	093b6663          	bltu	s6,s3,4344 <_write_sectors+0x168>
    42bc:	00190793          	addi	a5,s2,1
    42c0:	09479263          	bne	a5,s4,4344 <_write_sectors+0x168>
    42c4:	22c4a583          	lw	a1,556(s1)
    42c8:	fff00b13          	li	s6,-1
    42cc:	09496263          	bltu	s2,s4,4350 <_write_sectors+0x174>
    42d0:	fff00793          	li	a5,-1
    42d4:	0af59463          	bne	a1,a5,437c <_write_sectors+0x1a0>
    42d8:	000bc583          	lbu	a1,0(s7)
    42dc:	fff58513          	addi	a0,a1,-1
    42e0:	01850533          	add	a0,a0,s8
    42e4:	ffffd097          	auipc	ra,0xffffd
    42e8:	0a0080e7          	jalr	160(ra) # 1384 <__udivsi3>
    42ec:	00050613          	mv	a2,a0
    42f0:	01c10593          	addi	a1,sp,28
    42f4:	000b8513          	mv	a0,s7
    42f8:	00000097          	auipc	ra,0x0
    42fc:	e18080e7          	jalr	-488(ra) # 4110 <fatfs_add_free_space>
    4300:	06051c63          	bnez	a0,4378 <_write_sectors+0x19c>
    4304:	00000413          	li	s0,0
    4308:	04c12083          	lw	ra,76(sp)
    430c:	00040513          	mv	a0,s0
    4310:	04812403          	lw	s0,72(sp)
    4314:	04412483          	lw	s1,68(sp)
    4318:	04012903          	lw	s2,64(sp)
    431c:	03c12983          	lw	s3,60(sp)
    4320:	03812a03          	lw	s4,56(sp)
    4324:	03412a83          	lw	s5,52(sp)
    4328:	03012b03          	lw	s6,48(sp)
    432c:	02c12b83          	lw	s7,44(sp)
    4330:	02812c03          	lw	s8,40(sp)
    4334:	02412c83          	lw	s9,36(sp)
    4338:	02012d03          	lw	s10,32(sp)
    433c:	05010113          	addi	sp,sp,80
    4340:	00008067          	ret
    4344:	0044a583          	lw	a1,4(s1)
    4348:	00000913          	li	s2,0
    434c:	f7dff06f          	j	42c8 <_write_sectors+0xec>
    4350:	730a8513          	addi	a0,s5,1840
    4354:	00b12623          	sw	a1,12(sp)
    4358:	fffff097          	auipc	ra,0xfffff
    435c:	c04080e7          	jalr	-1020(ra) # 2f5c <fatfs_find_next_cluster>
    4360:	00c12583          	lw	a1,12(sp)
    4364:	00b12e23          	sw	a1,28(sp)
    4368:	f76508e3          	beq	a0,s6,42d8 <_write_sectors+0xfc>
    436c:	00190913          	addi	s2,s2,1
    4370:	00050593          	mv	a1,a0
    4374:	f59ff06f          	j	42cc <_write_sectors+0xf0>
    4378:	01c12583          	lw	a1,28(sp)
    437c:	22b4a623          	sw	a1,556(s1)
    4380:	2344a423          	sw	s4,552(s1)
    4384:	f09ff06f          	j	428c <_write_sectors+0xb0>

00004388 <fl_fflush>:
    4388:	000057b7          	lui	a5,0x5
    438c:	4ac7a783          	lw	a5,1196(a5) # 54ac <_filelib_init>
    4390:	ff010113          	addi	sp,sp,-16
    4394:	00812423          	sw	s0,8(sp)
    4398:	00112623          	sw	ra,12(sp)
    439c:	00912223          	sw	s1,4(sp)
    43a0:	00050413          	mv	s0,a0
    43a4:	00079663          	bnez	a5,43b0 <fl_fflush+0x28>
    43a8:	ffffe097          	auipc	ra,0xffffe
    43ac:	c6c080e7          	jalr	-916(ra) # 2014 <fl_init>
    43b0:	04040663          	beqz	s0,43fc <fl_fflush+0x74>
    43b4:	0000b4b7          	lui	s1,0xb
    43b8:	73048493          	addi	s1,s1,1840 # b730 <_fs>
    43bc:	03c4a783          	lw	a5,60(s1)
    43c0:	00078463          	beqz	a5,43c8 <fl_fflush+0x40>
    43c4:	000780e7          	jalr	a5
    43c8:	43442783          	lw	a5,1076(s0)
    43cc:	02078263          	beqz	a5,43f0 <fl_fflush+0x68>
    43d0:	43042583          	lw	a1,1072(s0)
    43d4:	00100693          	li	a3,1
    43d8:	23040613          	addi	a2,s0,560
    43dc:	00040513          	mv	a0,s0
    43e0:	00000097          	auipc	ra,0x0
    43e4:	dfc080e7          	jalr	-516(ra) # 41dc <_write_sectors>
    43e8:	00050463          	beqz	a0,43f0 <fl_fflush+0x68>
    43ec:	42042a23          	sw	zero,1076(s0)
    43f0:	0404a783          	lw	a5,64(s1)
    43f4:	00078463          	beqz	a5,43fc <fl_fflush+0x74>
    43f8:	000780e7          	jalr	a5
    43fc:	00c12083          	lw	ra,12(sp)
    4400:	00812403          	lw	s0,8(sp)
    4404:	00412483          	lw	s1,4(sp)
    4408:	00000513          	li	a0,0
    440c:	01010113          	addi	sp,sp,16
    4410:	00008067          	ret

00004414 <fl_fclose>:
    4414:	000057b7          	lui	a5,0x5
    4418:	4ac7a783          	lw	a5,1196(a5) # 54ac <_filelib_init>
    441c:	ff010113          	addi	sp,sp,-16
    4420:	00812423          	sw	s0,8(sp)
    4424:	00112623          	sw	ra,12(sp)
    4428:	00912223          	sw	s1,4(sp)
    442c:	01212023          	sw	s2,0(sp)
    4430:	00050413          	mv	s0,a0
    4434:	00079663          	bnez	a5,4440 <fl_fclose+0x2c>
    4438:	ffffe097          	auipc	ra,0xffffe
    443c:	bdc080e7          	jalr	-1060(ra) # 2014 <fl_init>
    4440:	08040c63          	beqz	s0,44d8 <fl_fclose+0xc4>
    4444:	0000b4b7          	lui	s1,0xb
    4448:	73048913          	addi	s2,s1,1840 # b730 <_fs>
    444c:	03c92783          	lw	a5,60(s2)
    4450:	00078463          	beqz	a5,4458 <fl_fclose+0x44>
    4454:	000780e7          	jalr	a5
    4458:	00040513          	mv	a0,s0
    445c:	00000097          	auipc	ra,0x0
    4460:	f2c080e7          	jalr	-212(ra) # 4388 <fl_fflush>
    4464:	01042783          	lw	a5,16(s0)
    4468:	00078e63          	beqz	a5,4484 <fl_fclose+0x70>
    446c:	00c42683          	lw	a3,12(s0)
    4470:	00042583          	lw	a1,0(s0)
    4474:	21c40613          	addi	a2,s0,540
    4478:	73048513          	addi	a0,s1,1840
    447c:	fffff097          	auipc	ra,0xfffff
    4480:	338080e7          	jalr	824(ra) # 37b4 <fatfs_update_file_length>
    4484:	fff00793          	li	a5,-1
    4488:	42f42823          	sw	a5,1072(s0)
    448c:	00040513          	mv	a0,s0
    4490:	00042423          	sw	zero,8(s0)
    4494:	00042623          	sw	zero,12(s0)
    4498:	00042223          	sw	zero,4(s0)
    449c:	42042a23          	sw	zero,1076(s0)
    44a0:	00042823          	sw	zero,16(s0)
    44a4:	ffffe097          	auipc	ra,0xffffe
    44a8:	9f8080e7          	jalr	-1544(ra) # 1e9c <_free_file>
    44ac:	73048513          	addi	a0,s1,1840
    44b0:	fffff097          	auipc	ra,0xfffff
    44b4:	a54080e7          	jalr	-1452(ra) # 2f04 <fatfs_fat_purge>
    44b8:	04092783          	lw	a5,64(s2)
    44bc:	00078e63          	beqz	a5,44d8 <fl_fclose+0xc4>
    44c0:	00812403          	lw	s0,8(sp)
    44c4:	00c12083          	lw	ra,12(sp)
    44c8:	00412483          	lw	s1,4(sp)
    44cc:	00012903          	lw	s2,0(sp)
    44d0:	01010113          	addi	sp,sp,16
    44d4:	00078067          	jr	a5
    44d8:	00c12083          	lw	ra,12(sp)
    44dc:	00812403          	lw	s0,8(sp)
    44e0:	00412483          	lw	s1,4(sp)
    44e4:	00012903          	lw	s2,0(sp)
    44e8:	01010113          	addi	sp,sp,16
    44ec:	00008067          	ret

000044f0 <fl_fread>:
    44f0:	000057b7          	lui	a5,0x5
    44f4:	4ac7a783          	lw	a5,1196(a5) # 54ac <_filelib_init>
    44f8:	fc010113          	addi	sp,sp,-64
    44fc:	02812c23          	sw	s0,56(sp)
    4500:	03512223          	sw	s5,36(sp)
    4504:	02112e23          	sw	ra,60(sp)
    4508:	02912a23          	sw	s1,52(sp)
    450c:	03212823          	sw	s2,48(sp)
    4510:	03312623          	sw	s3,44(sp)
    4514:	03412423          	sw	s4,40(sp)
    4518:	03612023          	sw	s6,32(sp)
    451c:	01712e23          	sw	s7,28(sp)
    4520:	01812c23          	sw	s8,24(sp)
    4524:	01912a23          	sw	s9,20(sp)
    4528:	00050a93          	mv	s5,a0
    452c:	00068413          	mv	s0,a3
    4530:	00058513          	mv	a0,a1
    4534:	00079e63          	bnez	a5,4550 <fl_fread+0x60>
    4538:	00c12623          	sw	a2,12(sp)
    453c:	00b12423          	sw	a1,8(sp)
    4540:	ffffe097          	auipc	ra,0xffffe
    4544:	ad4080e7          	jalr	-1324(ra) # 2014 <fl_init>
    4548:	00c12603          	lw	a2,12(sp)
    454c:	00812503          	lw	a0,8(sp)
    4550:	14040e63          	beqz	s0,46ac <fl_fread+0x1bc>
    4554:	140a8c63          	beqz	s5,46ac <fl_fread+0x1bc>
    4558:	43844783          	lbu	a5,1080(s0)
    455c:	fff00493          	li	s1,-1
    4560:	0017f793          	andi	a5,a5,1
    4564:	04078863          	beqz	a5,45b4 <fl_fread+0xc4>
    4568:	00060593          	mv	a1,a2
    456c:	ffffd097          	auipc	ra,0xffffd
    4570:	614080e7          	jalr	1556(ra) # 1b80 <__mulsi3>
    4574:	00050493          	mv	s1,a0
    4578:	02050e63          	beqz	a0,45b4 <fl_fread+0xc4>
    457c:	00842583          	lw	a1,8(s0)
    4580:	00c42783          	lw	a5,12(s0)
    4584:	12f5f463          	bgeu	a1,a5,46ac <fl_fread+0x1bc>
    4588:	00b50733          	add	a4,a0,a1
    458c:	00e7f463          	bgeu	a5,a4,4594 <fl_fread+0xa4>
    4590:	40b784b3          	sub	s1,a5,a1
    4594:	0095da13          	srli	s4,a1,0x9
    4598:	1ff5f913          	andi	s2,a1,511
    459c:	00000993          	li	s3,0
    45a0:	23040b13          	addi	s6,s0,560
    45a4:	20000b93          	li	s7,512
    45a8:	1ff00c13          	li	s8,511
    45ac:	0499c063          	blt	s3,s1,45ec <fl_fread+0xfc>
    45b0:	00098493          	mv	s1,s3
    45b4:	03c12083          	lw	ra,60(sp)
    45b8:	03812403          	lw	s0,56(sp)
    45bc:	03012903          	lw	s2,48(sp)
    45c0:	02c12983          	lw	s3,44(sp)
    45c4:	02812a03          	lw	s4,40(sp)
    45c8:	02412a83          	lw	s5,36(sp)
    45cc:	02012b03          	lw	s6,32(sp)
    45d0:	01c12b83          	lw	s7,28(sp)
    45d4:	01812c03          	lw	s8,24(sp)
    45d8:	01412c83          	lw	s9,20(sp)
    45dc:	00048513          	mv	a0,s1
    45e0:	03412483          	lw	s1,52(sp)
    45e4:	04010113          	addi	sp,sp,64
    45e8:	00008067          	ret
    45ec:	04091663          	bnez	s2,4638 <fl_fread+0x148>
    45f0:	413486b3          	sub	a3,s1,s3
    45f4:	04dc5263          	bge	s8,a3,4638 <fl_fread+0x148>
    45f8:	4096d693          	srai	a3,a3,0x9
    45fc:	013a8633          	add	a2,s5,s3
    4600:	000a0593          	mv	a1,s4
    4604:	00040513          	mv	a0,s0
    4608:	fffff097          	auipc	ra,0xfffff
    460c:	5ec080e7          	jalr	1516(ra) # 3bf4 <_read_sectors>
    4610:	fa0500e3          	beqz	a0,45b0 <fl_fread+0xc0>
    4614:	00951c93          	slli	s9,a0,0x9
    4618:	000c8613          	mv	a2,s9
    461c:	00aa0a33          	add	s4,s4,a0
    4620:	00842783          	lw	a5,8(s0)
    4624:	00c989b3          	add	s3,s3,a2
    4628:	00000913          	li	s2,0
    462c:	019787b3          	add	a5,a5,s9
    4630:	00f42423          	sw	a5,8(s0)
    4634:	f79ff06f          	j	45ac <fl_fread+0xbc>
    4638:	43042783          	lw	a5,1072(s0)
    463c:	03478e63          	beq	a5,s4,4678 <fl_fread+0x188>
    4640:	43442783          	lw	a5,1076(s0)
    4644:	00078863          	beqz	a5,4654 <fl_fread+0x164>
    4648:	00040513          	mv	a0,s0
    464c:	00000097          	auipc	ra,0x0
    4650:	d3c080e7          	jalr	-708(ra) # 4388 <fl_fflush>
    4654:	00100693          	li	a3,1
    4658:	000b0613          	mv	a2,s6
    465c:	000a0593          	mv	a1,s4
    4660:	00040513          	mv	a0,s0
    4664:	fffff097          	auipc	ra,0xfffff
    4668:	590080e7          	jalr	1424(ra) # 3bf4 <_read_sectors>
    466c:	f40502e3          	beqz	a0,45b0 <fl_fread+0xc0>
    4670:	43442823          	sw	s4,1072(s0)
    4674:	42042a23          	sw	zero,1076(s0)
    4678:	412b87b3          	sub	a5,s7,s2
    467c:	41348633          	sub	a2,s1,s3
    4680:	00c7d463          	bge	a5,a2,4688 <fl_fread+0x198>
    4684:	00078613          	mv	a2,a5
    4688:	012b05b3          	add	a1,s6,s2
    468c:	013a8533          	add	a0,s5,s3
    4690:	00060c93          	mv	s9,a2
    4694:	00c12423          	sw	a2,8(sp)
    4698:	ffffd097          	auipc	ra,0xffffd
    469c:	db4080e7          	jalr	-588(ra) # 144c <memcpy>
    46a0:	00812603          	lw	a2,8(sp)
    46a4:	001a0a13          	addi	s4,s4,1
    46a8:	f79ff06f          	j	4620 <fl_fread+0x130>
    46ac:	fff00493          	li	s1,-1
    46b0:	f05ff06f          	j	45b4 <fl_fread+0xc4>

000046b4 <fatfs_allocate_free_space>:
    46b4:	fd010113          	addi	sp,sp,-48
    46b8:	02112623          	sw	ra,44(sp)
    46bc:	02812423          	sw	s0,40(sp)
    46c0:	02912223          	sw	s1,36(sp)
    46c4:	03212023          	sw	s2,32(sp)
    46c8:	01312e23          	sw	s3,28(sp)
    46cc:	01412c23          	sw	s4,24(sp)
    46d0:	01512a23          	sw	s5,20(sp)
    46d4:	02069863          	bnez	a3,4704 <fatfs_allocate_free_space+0x50>
    46d8:	00000413          	li	s0,0
    46dc:	02c12083          	lw	ra,44(sp)
    46e0:	00040513          	mv	a0,s0
    46e4:	02812403          	lw	s0,40(sp)
    46e8:	02412483          	lw	s1,36(sp)
    46ec:	02012903          	lw	s2,32(sp)
    46f0:	01c12983          	lw	s3,28(sp)
    46f4:	01812a03          	lw	s4,24(sp)
    46f8:	01412a83          	lw	s5,20(sp)
    46fc:	03010113          	addi	sp,sp,48
    4700:	00008067          	ret
    4704:	02452783          	lw	a5,36(a0)
    4708:	00058a13          	mv	s4,a1
    470c:	fff00593          	li	a1,-1
    4710:	00050493          	mv	s1,a0
    4714:	00068913          	mv	s2,a3
    4718:	00060993          	mv	s3,a2
    471c:	00b78663          	beq	a5,a1,4728 <fatfs_allocate_free_space+0x74>
    4720:	fffff097          	auipc	ra,0xfffff
    4724:	620080e7          	jalr	1568(ra) # 3d40 <fatfs_set_fs_info_next_free_cluster>
    4728:	0004c783          	lbu	a5,0(s1)
    472c:	00090513          	mv	a0,s2
    4730:	00979a93          	slli	s5,a5,0x9
    4734:	000a8593          	mv	a1,s5
    4738:	ffffd097          	auipc	ra,0xffffd
    473c:	c4c080e7          	jalr	-948(ra) # 1384 <__udivsi3>
    4740:	00050413          	mv	s0,a0
    4744:	00050593          	mv	a1,a0
    4748:	000a8513          	mv	a0,s5
    474c:	ffffd097          	auipc	ra,0xffffd
    4750:	434080e7          	jalr	1076(ra) # 1b80 <__mulsi3>
    4754:	41250533          	sub	a0,a0,s2
    4758:	00a03533          	snez	a0,a0
    475c:	00a40933          	add	s2,s0,a0
    4760:	040a0463          	beqz	s4,47a8 <fatfs_allocate_free_space+0xf4>
    4764:	0084a583          	lw	a1,8(s1)
    4768:	00c10613          	addi	a2,sp,12
    476c:	00048513          	mv	a0,s1
    4770:	fffff097          	auipc	ra,0xfffff
    4774:	680080e7          	jalr	1664(ra) # 3df0 <fatfs_find_blank_cluster>
    4778:	00050413          	mv	s0,a0
    477c:	f4050ee3          	beqz	a0,46d8 <fatfs_allocate_free_space+0x24>
    4780:	00100793          	li	a5,1
    4784:	02f91663          	bne	s2,a5,47b0 <fatfs_allocate_free_space+0xfc>
    4788:	00c12903          	lw	s2,12(sp)
    478c:	fff00613          	li	a2,-1
    4790:	00048513          	mv	a0,s1
    4794:	00090593          	mv	a1,s2
    4798:	fffff097          	auipc	ra,0xfffff
    479c:	76c080e7          	jalr	1900(ra) # 3f04 <fatfs_fat_set_cluster>
    47a0:	0129a023          	sw	s2,0(s3)
    47a4:	f39ff06f          	j	46dc <fatfs_allocate_free_space+0x28>
    47a8:	0009a783          	lw	a5,0(s3)
    47ac:	00f12623          	sw	a5,12(sp)
    47b0:	00090613          	mv	a2,s2
    47b4:	00c10593          	addi	a1,sp,12
    47b8:	00048513          	mv	a0,s1
    47bc:	00000097          	auipc	ra,0x0
    47c0:	954080e7          	jalr	-1708(ra) # 4110 <fatfs_add_free_space>
    47c4:	00050413          	mv	s0,a0
    47c8:	f15ff06f          	j	46dc <fatfs_allocate_free_space+0x28>

000047cc <fatfs_add_file_entry>:
    47cc:	03852883          	lw	a7,56(a0)
    47d0:	30088e63          	beqz	a7,4aec <fatfs_add_file_entry+0x320>
    47d4:	f8010113          	addi	sp,sp,-128
    47d8:	06812c23          	sw	s0,120(sp)
    47dc:	00050413          	mv	s0,a0
    47e0:	00060513          	mv	a0,a2
    47e4:	06912a23          	sw	s1,116(sp)
    47e8:	07512223          	sw	s5,100(sp)
    47ec:	00f12c23          	sw	a5,24(sp)
    47f0:	00e12a23          	sw	a4,20(sp)
    47f4:	06112e23          	sw	ra,124(sp)
    47f8:	07212823          	sw	s2,112(sp)
    47fc:	07312623          	sw	s3,108(sp)
    4800:	07412423          	sw	s4,104(sp)
    4804:	07612023          	sw	s6,96(sp)
    4808:	05712e23          	sw	s7,92(sp)
    480c:	05812c23          	sw	s8,88(sp)
    4810:	05912a23          	sw	s9,84(sp)
    4814:	05a12823          	sw	s10,80(sp)
    4818:	05b12623          	sw	s11,76(sp)
    481c:	01012e23          	sw	a6,28(sp)
    4820:	00068a93          	mv	s5,a3
    4824:	00c12823          	sw	a2,16(sp)
    4828:	00b12423          	sw	a1,8(sp)
    482c:	ffffe097          	auipc	ra,0xffffe
    4830:	a48080e7          	jalr	-1464(ra) # 2274 <fatfs_lfn_entries_required>
    4834:	00150713          	addi	a4,a0,1
    4838:	00100793          	li	a5,1
    483c:	00050493          	mv	s1,a0
    4840:	2ae7f263          	bgeu	a5,a4,4ae4 <fatfs_add_file_entry+0x318>
    4844:	00000a13          	li	s4,0
    4848:	00000993          	li	s3,0
    484c:	00000913          	li	s2,0
    4850:	00000c93          	li	s9,0
    4854:	00000b13          	li	s6,0
    4858:	01000c13          	li	s8,16
    485c:	00812583          	lw	a1,8(sp)
    4860:	00000693          	li	a3,0
    4864:	000b0613          	mv	a2,s6
    4868:	00040513          	mv	a0,s0
    486c:	000b0b93          	mv	s7,s6
    4870:	ffffe097          	auipc	ra,0xffffe
    4874:	7f4080e7          	jalr	2036(ra) # 3064 <fatfs_sector_reader>
    4878:	18050463          	beqz	a0,4a00 <fatfs_add_file_entry+0x234>
    487c:	001b0b13          	addi	s6,s6,1
    4880:	04440793          	addi	a5,s0,68
    4884:	000c8d13          	mv	s10,s9
    4888:	00000d93          	li	s11,0
    488c:	00078513          	mv	a0,a5
    4890:	00f12623          	sw	a5,12(sp)
    4894:	ffffe097          	auipc	ra,0xffffe
    4898:	8f8080e7          	jalr	-1800(ra) # 218c <fatfs_entry_lfn_text>
    489c:	00c12783          	lw	a5,12(sp)
    48a0:	00050c93          	mv	s9,a0
    48a4:	02050c63          	beqz	a0,48dc <fatfs_add_file_entry+0x110>
    48a8:	020d0463          	beqz	s10,48d0 <fatfs_add_file_entry+0x104>
    48ac:	00090c93          	mv	s9,s2
    48b0:	000c8913          	mv	s2,s9
    48b4:	001d0c93          	addi	s9,s10,1
    48b8:	001d8d93          	addi	s11,s11,1
    48bc:	0ffdfd93          	zext.b	s11,s11
    48c0:	02078793          	addi	a5,a5,32
    48c4:	f98d8ce3          	beq	s11,s8,485c <fatfs_add_file_entry+0x90>
    48c8:	000c8d13          	mv	s10,s9
    48cc:	fc1ff06f          	j	488c <fatfs_add_file_entry+0xc0>
    48d0:	000d8a13          	mv	s4,s11
    48d4:	000b8993          	mv	s3,s7
    48d8:	fd9ff06f          	j	48b0 <fatfs_add_file_entry+0xe4>
    48dc:	0007c683          	lbu	a3,0(a5)
    48e0:	0e500713          	li	a4,229
    48e4:	10e69863          	bne	a3,a4,49f4 <fatfs_add_file_entry+0x228>
    48e8:	000d1863          	bnez	s10,48f8 <fatfs_add_file_entry+0x12c>
    48ec:	000d8a13          	mv	s4,s11
    48f0:	000b8993          	mv	s3,s7
    48f4:	00100913          	li	s2,1
    48f8:	fa9d4ee3          	blt	s10,s1,48b4 <fatfs_add_file_entry+0xe8>
    48fc:	00ba8693          	addi	a3,s5,11
    4900:	000a8713          	mv	a4,s5
    4904:	00000913          	li	s2,0
    4908:	00074603          	lbu	a2,0(a4)
    490c:	00195793          	srli	a5,s2,0x1
    4910:	00791913          	slli	s2,s2,0x7
    4914:	012787b3          	add	a5,a5,s2
    4918:	00170713          	addi	a4,a4,1
    491c:	00c787b3          	add	a5,a5,a2
    4920:	0ff7f913          	zext.b	s2,a5
    4924:	fed712e3          	bne	a4,a3,4908 <fatfs_add_file_entry+0x13c>
    4928:	00098b13          	mv	s6,s3
    492c:	00000d13          	li	s10,0
    4930:	01000b93          	li	s7,16
    4934:	00812583          	lw	a1,8(sp)
    4938:	00000693          	li	a3,0
    493c:	000b0613          	mv	a2,s6
    4940:	00040513          	mv	a0,s0
    4944:	ffffe097          	auipc	ra,0xffffe
    4948:	720080e7          	jalr	1824(ra) # 3064 <fatfs_sector_reader>
    494c:	18050c63          	beqz	a0,4ae4 <fatfs_add_file_entry+0x318>
    4950:	04440c93          	addi	s9,s0,68
    4954:	413b0db3          	sub	s11,s6,s3
    4958:	00000793          	li	a5,0
    495c:	00000c13          	li	s8,0
    4960:	01912623          	sw	s9,12(sp)
    4964:	000d1663          	bnez	s10,4970 <fatfs_add_file_entry+0x1a4>
    4968:	154c1863          	bne	s8,s4,4ab8 <fatfs_add_file_entry+0x2ec>
    496c:	140d9663          	bnez	s11,4ab8 <fatfs_add_file_entry+0x2ec>
    4970:	12049263          	bnez	s1,4a94 <fatfs_add_file_entry+0x2c8>
    4974:	01c12703          	lw	a4,28(sp)
    4978:	01412603          	lw	a2,20(sp)
    497c:	01812583          	lw	a1,24(sp)
    4980:	02010693          	addi	a3,sp,32
    4984:	000a8513          	mv	a0,s5
    4988:	ffffe097          	auipc	ra,0xffffe
    498c:	a30080e7          	jalr	-1488(ra) # 23b8 <fatfs_sfn_create_entry>
    4990:	02000613          	li	a2,32
    4994:	00c105b3          	add	a1,sp,a2
    4998:	000c8513          	mv	a0,s9
    499c:	ffffd097          	auipc	ra,0xffffd
    49a0:	ab0080e7          	jalr	-1360(ra) # 144c <memcpy>
    49a4:	03842783          	lw	a5,56(s0)
    49a8:	00c12583          	lw	a1,12(sp)
    49ac:	24442503          	lw	a0,580(s0)
    49b0:	00100613          	li	a2,1
    49b4:	000780e7          	jalr	a5
    49b8:	07c12083          	lw	ra,124(sp)
    49bc:	07812403          	lw	s0,120(sp)
    49c0:	07412483          	lw	s1,116(sp)
    49c4:	07012903          	lw	s2,112(sp)
    49c8:	06c12983          	lw	s3,108(sp)
    49cc:	06812a03          	lw	s4,104(sp)
    49d0:	06412a83          	lw	s5,100(sp)
    49d4:	06012b03          	lw	s6,96(sp)
    49d8:	05c12b83          	lw	s7,92(sp)
    49dc:	05812c03          	lw	s8,88(sp)
    49e0:	05412c83          	lw	s9,84(sp)
    49e4:	05012d03          	lw	s10,80(sp)
    49e8:	04c12d83          	lw	s11,76(sp)
    49ec:	08010113          	addi	sp,sp,128
    49f0:	00008067          	ret
    49f4:	ee068ae3          	beqz	a3,48e8 <fatfs_add_file_entry+0x11c>
    49f8:	00000913          	li	s2,0
    49fc:	ebdff06f          	j	48b8 <fatfs_add_file_entry+0xec>
    4a00:	00842583          	lw	a1,8(s0)
    4a04:	02010613          	addi	a2,sp,32
    4a08:	00040513          	mv	a0,s0
    4a0c:	fffff097          	auipc	ra,0xfffff
    4a10:	3e4080e7          	jalr	996(ra) # 3df0 <fatfs_find_blank_cluster>
    4a14:	0c050863          	beqz	a0,4ae4 <fatfs_add_file_entry+0x318>
    4a18:	02012b83          	lw	s7,32(sp)
    4a1c:	00812583          	lw	a1,8(sp)
    4a20:	00040513          	mv	a0,s0
    4a24:	000b8613          	mv	a2,s7
    4a28:	fffff097          	auipc	ra,0xfffff
    4a2c:	64c080e7          	jalr	1612(ra) # 4074 <fatfs_fat_add_cluster_to_chain>
    4a30:	0a050a63          	beqz	a0,4ae4 <fatfs_add_file_entry+0x318>
    4a34:	20000613          	li	a2,512
    4a38:	00000593          	li	a1,0
    4a3c:	04440513          	addi	a0,s0,68
    4a40:	ffffd097          	auipc	ra,0xffffd
    4a44:	9f0080e7          	jalr	-1552(ra) # 1430 <memset>
    4a48:	00000c13          	li	s8,0
    4a4c:	00044783          	lbu	a5,0(s0)
    4a50:	00fc6a63          	bltu	s8,a5,4a64 <fatfs_add_file_entry+0x298>
    4a54:	ea0914e3          	bnez	s2,48fc <fatfs_add_file_entry+0x130>
    4a58:	000b0993          	mv	s3,s6
    4a5c:	00000a13          	li	s4,0
    4a60:	e9dff06f          	j	48fc <fatfs_add_file_entry+0x130>
    4a64:	00000693          	li	a3,0
    4a68:	000c0613          	mv	a2,s8
    4a6c:	000b8593          	mv	a1,s7
    4a70:	00040513          	mv	a0,s0
    4a74:	ffffd097          	auipc	ra,0xffffd
    4a78:	4ec080e7          	jalr	1260(ra) # 1f60 <fatfs_write_sector>
    4a7c:	06050463          	beqz	a0,4ae4 <fatfs_add_file_entry+0x318>
    4a80:	001c0c13          	addi	s8,s8,1
    4a84:	0ffc7c13          	zext.b	s8,s8
    4a88:	fc5ff06f          	j	4a4c <fatfs_add_file_entry+0x280>
    4a8c:	001b0b13          	addi	s6,s6,1
    4a90:	ea5ff06f          	j	4934 <fatfs_add_file_entry+0x168>
    4a94:	01012503          	lw	a0,16(sp)
    4a98:	fff48493          	addi	s1,s1,-1
    4a9c:	00090693          	mv	a3,s2
    4aa0:	00048613          	mv	a2,s1
    4aa4:	000c8593          	mv	a1,s9
    4aa8:	ffffd097          	auipc	ra,0xffffd
    4aac:	7fc080e7          	jalr	2044(ra) # 22a4 <fatfs_filename_to_lfn>
    4ab0:	00100d13          	li	s10,1
    4ab4:	000d0793          	mv	a5,s10
    4ab8:	001c0c13          	addi	s8,s8,1
    4abc:	0ffc7c13          	zext.b	s8,s8
    4ac0:	020c8c93          	addi	s9,s9,32
    4ac4:	eb7c10e3          	bne	s8,s7,4964 <fatfs_add_file_entry+0x198>
    4ac8:	fc0782e3          	beqz	a5,4a8c <fatfs_add_file_entry+0x2c0>
    4acc:	03842783          	lw	a5,56(s0)
    4ad0:	00c12583          	lw	a1,12(sp)
    4ad4:	24442503          	lw	a0,580(s0)
    4ad8:	00100613          	li	a2,1
    4adc:	000780e7          	jalr	a5
    4ae0:	fa0516e3          	bnez	a0,4a8c <fatfs_add_file_entry+0x2c0>
    4ae4:	00000513          	li	a0,0
    4ae8:	ed1ff06f          	j	49b8 <fatfs_add_file_entry+0x1ec>
    4aec:	00000513          	li	a0,0
    4af0:	00008067          	ret

00004af4 <fl_fopen>:
    4af4:	000057b7          	lui	a5,0x5
    4af8:	4ac7a783          	lw	a5,1196(a5) # 54ac <_filelib_init>
    4afc:	fa010113          	addi	sp,sp,-96
    4b00:	05212823          	sw	s2,80(sp)
    4b04:	03a12823          	sw	s10,48(sp)
    4b08:	04112e23          	sw	ra,92(sp)
    4b0c:	04812c23          	sw	s0,88(sp)
    4b10:	04912a23          	sw	s1,84(sp)
    4b14:	05312623          	sw	s3,76(sp)
    4b18:	05412423          	sw	s4,72(sp)
    4b1c:	05512223          	sw	s5,68(sp)
    4b20:	05612023          	sw	s6,64(sp)
    4b24:	03712e23          	sw	s7,60(sp)
    4b28:	03812c23          	sw	s8,56(sp)
    4b2c:	03912a23          	sw	s9,52(sp)
    4b30:	00050d13          	mv	s10,a0
    4b34:	00058913          	mv	s2,a1
    4b38:	00079663          	bnez	a5,4b44 <fl_fopen+0x50>
    4b3c:	ffffd097          	auipc	ra,0xffffd
    4b40:	4d8080e7          	jalr	1240(ra) # 2014 <fl_init>
    4b44:	000057b7          	lui	a5,0x5
    4b48:	4a87a783          	lw	a5,1192(a5) # 54a8 <_filelib_valid>
    4b4c:	00193713          	seqz	a4,s2
    4b50:	0017b793          	seqz	a5,a5
    4b54:	00e7e7b3          	or	a5,a5,a4
    4b58:	36079e63          	bnez	a5,4ed4 <fl_fopen+0x3e0>
    4b5c:	360d0c63          	beqz	s10,4ed4 <fl_fopen+0x3e0>
    4b60:	00000493          	li	s1,0
    4b64:	00000413          	li	s0,0
    4b68:	05700993          	li	s3,87
    4b6c:	07200a13          	li	s4,114
    4b70:	07700b13          	li	s6,119
    4b74:	06100b93          	li	s7,97
    4b78:	06200c13          	li	s8,98
    4b7c:	04100a93          	li	s5,65
    4b80:	04200c93          	li	s9,66
    4b84:	00090513          	mv	a0,s2
    4b88:	ffffd097          	auipc	ra,0xffffd
    4b8c:	8e8080e7          	jalr	-1816(ra) # 1470 <strlen>
    4b90:	10a44a63          	blt	s0,a0,4ca4 <fl_fopen+0x1b0>
    4b94:	0000b9b7          	lui	s3,0xb
    4b98:	73098a13          	addi	s4,s3,1840 # b730 <_fs>
    4b9c:	038a2783          	lw	a5,56(s4)
    4ba0:	00079463          	bnez	a5,4ba8 <fl_fopen+0xb4>
    4ba4:	fd94f493          	andi	s1,s1,-39
    4ba8:	03ca2783          	lw	a5,60(s4)
    4bac:	00078463          	beqz	a5,4bb4 <fl_fopen+0xc0>
    4bb0:	000780e7          	jalr	a5
    4bb4:	0014f793          	andi	a5,s1,1
    4bb8:	18079263          	bnez	a5,4d3c <fl_fopen+0x248>
    4bbc:	0204f793          	andi	a5,s1,32
    4bc0:	08078c63          	beqz	a5,4c58 <fl_fopen+0x164>
    4bc4:	038a2783          	lw	a5,56(s4)
    4bc8:	06078a63          	beqz	a5,4c3c <fl_fopen+0x148>
    4bcc:	ffffd097          	auipc	ra,0xffffd
    4bd0:	258080e7          	jalr	600(ra) # 1e24 <_allocate_file>
    4bd4:	00050413          	mv	s0,a0
    4bd8:	06050263          	beqz	a0,4c3c <fl_fopen+0x148>
    4bdc:	01450a93          	addi	s5,a0,20
    4be0:	10400613          	li	a2,260
    4be4:	00000593          	li	a1,0
    4be8:	000a8513          	mv	a0,s5
    4bec:	ffffd097          	auipc	ra,0xffffd
    4bf0:	844080e7          	jalr	-1980(ra) # 1430 <memset>
    4bf4:	11840b13          	addi	s6,s0,280
    4bf8:	10400613          	li	a2,260
    4bfc:	00000593          	li	a1,0
    4c00:	000b0513          	mv	a0,s6
    4c04:	ffffd097          	auipc	ra,0xffffd
    4c08:	82c080e7          	jalr	-2004(ra) # 1430 <memset>
    4c0c:	10400713          	li	a4,260
    4c10:	000b0693          	mv	a3,s6
    4c14:	00070613          	mv	a2,a4
    4c18:	000a8593          	mv	a1,s5
    4c1c:	000d0513          	mv	a0,s10
    4c20:	ffffe097          	auipc	ra,0xffffe
    4c24:	c88080e7          	jalr	-888(ra) # 28a8 <fatfs_split_path>
    4c28:	fff00793          	li	a5,-1
    4c2c:	12f51663          	bne	a0,a5,4d58 <fl_fopen+0x264>
    4c30:	00040513          	mv	a0,s0
    4c34:	ffffd097          	auipc	ra,0xffffd
    4c38:	268080e7          	jalr	616(ra) # 1e9c <_free_file>
    4c3c:	00000413          	li	s0,0
    4c40:	0214f793          	andi	a5,s1,33
    4c44:	02000713          	li	a4,32
    4c48:	28e79263          	bne	a5,a4,4ecc <fl_fopen+0x3d8>
    4c4c:	10041263          	bnez	s0,4d50 <fl_fopen+0x25c>
    4c50:	0064f793          	andi	a5,s1,6
    4c54:	26079463          	bnez	a5,4ebc <fl_fopen+0x3c8>
    4c58:	00000413          	li	s0,0
    4c5c:	040a2783          	lw	a5,64(s4)
    4c60:	00078463          	beqz	a5,4c68 <fl_fopen+0x174>
    4c64:	000780e7          	jalr	a5
    4c68:	05c12083          	lw	ra,92(sp)
    4c6c:	00040513          	mv	a0,s0
    4c70:	05812403          	lw	s0,88(sp)
    4c74:	05412483          	lw	s1,84(sp)
    4c78:	05012903          	lw	s2,80(sp)
    4c7c:	04c12983          	lw	s3,76(sp)
    4c80:	04812a03          	lw	s4,72(sp)
    4c84:	04412a83          	lw	s5,68(sp)
    4c88:	04012b03          	lw	s6,64(sp)
    4c8c:	03c12b83          	lw	s7,60(sp)
    4c90:	03812c03          	lw	s8,56(sp)
    4c94:	03412c83          	lw	s9,52(sp)
    4c98:	03012d03          	lw	s10,48(sp)
    4c9c:	06010113          	addi	sp,sp,96
    4ca0:	00008067          	ret
    4ca4:	008907b3          	add	a5,s2,s0
    4ca8:	0007c783          	lbu	a5,0(a5)
    4cac:	05378863          	beq	a5,s3,4cfc <fl_fopen+0x208>
    4cb0:	02f9e863          	bltu	s3,a5,4ce0 <fl_fopen+0x1ec>
    4cb4:	05578863          	beq	a5,s5,4d04 <fl_fopen+0x210>
    4cb8:	00faea63          	bltu	s5,a5,4ccc <fl_fopen+0x1d8>
    4cbc:	02b00713          	li	a4,43
    4cc0:	04e78663          	beq	a5,a4,4d0c <fl_fopen+0x218>
    4cc4:	00140413          	addi	s0,s0,1
    4cc8:	ebdff06f          	j	4b84 <fl_fopen+0x90>
    4ccc:	03978263          	beq	a5,s9,4cf0 <fl_fopen+0x1fc>
    4cd0:	05200713          	li	a4,82
    4cd4:	fee798e3          	bne	a5,a4,4cc4 <fl_fopen+0x1d0>
    4cd8:	0014e493          	ori	s1,s1,1
    4cdc:	fe9ff06f          	j	4cc4 <fl_fopen+0x1d0>
    4ce0:	ff478ce3          	beq	a5,s4,4cd8 <fl_fopen+0x1e4>
    4ce4:	00fa6a63          	bltu	s4,a5,4cf8 <fl_fopen+0x204>
    4ce8:	01778e63          	beq	a5,s7,4d04 <fl_fopen+0x210>
    4cec:	fd879ce3          	bne	a5,s8,4cc4 <fl_fopen+0x1d0>
    4cf0:	0084e493          	ori	s1,s1,8
    4cf4:	fd1ff06f          	j	4cc4 <fl_fopen+0x1d0>
    4cf8:	fd6796e3          	bne	a5,s6,4cc4 <fl_fopen+0x1d0>
    4cfc:	0324e493          	ori	s1,s1,50
    4d00:	fc5ff06f          	j	4cc4 <fl_fopen+0x1d0>
    4d04:	0264e493          	ori	s1,s1,38
    4d08:	fbdff06f          	j	4cc4 <fl_fopen+0x1d0>
    4d0c:	0014f793          	andi	a5,s1,1
    4d10:	00078663          	beqz	a5,4d1c <fl_fopen+0x228>
    4d14:	0024e493          	ori	s1,s1,2
    4d18:	fadff06f          	j	4cc4 <fl_fopen+0x1d0>
    4d1c:	0024f793          	andi	a5,s1,2
    4d20:	00078663          	beqz	a5,4d2c <fl_fopen+0x238>
    4d24:	0314e493          	ori	s1,s1,49
    4d28:	f9dff06f          	j	4cc4 <fl_fopen+0x1d0>
    4d2c:	0044f793          	andi	a5,s1,4
    4d30:	f8078ae3          	beqz	a5,4cc4 <fl_fopen+0x1d0>
    4d34:	0274e493          	ori	s1,s1,39
    4d38:	f8dff06f          	j	4cc4 <fl_fopen+0x1d0>
    4d3c:	000d0513          	mv	a0,s10
    4d40:	fffff097          	auipc	ra,0xfffff
    4d44:	81c080e7          	jalr	-2020(ra) # 355c <_open_file>
    4d48:	00050413          	mv	s0,a0
    4d4c:	e60508e3          	beqz	a0,4bbc <fl_fopen+0xc8>
    4d50:	42940c23          	sb	s1,1080(s0)
    4d54:	f09ff06f          	j	4c5c <fl_fopen+0x168>
    4d58:	00040513          	mv	a0,s0
    4d5c:	ffffe097          	auipc	ra,0xffffe
    4d60:	dc8080e7          	jalr	-568(ra) # 2b24 <_check_file_open>
    4d64:	00050913          	mv	s2,a0
    4d68:	ec0514e3          	bnez	a0,4c30 <fl_fopen+0x13c>
    4d6c:	01444783          	lbu	a5,20(s0)
    4d70:	0e079663          	bnez	a5,4e5c <fl_fopen+0x368>
    4d74:	008a2783          	lw	a5,8(s4)
    4d78:	00f42023          	sw	a5,0(s0)
    4d7c:	00042583          	lw	a1,0(s0)
    4d80:	01010693          	addi	a3,sp,16
    4d84:	000b0613          	mv	a2,s6
    4d88:	73098513          	addi	a0,s3,1840
    4d8c:	ffffe097          	auipc	ra,0xffffe
    4d90:	428080e7          	jalr	1064(ra) # 31b4 <fatfs_get_file_entry>
    4d94:	00100693          	li	a3,1
    4d98:	e8d50ce3          	beq	a0,a3,4c30 <fl_fopen+0x13c>
    4d9c:	00042223          	sw	zero,4(s0)
    4da0:	00440613          	addi	a2,s0,4
    4da4:	00068593          	mv	a1,a3
    4da8:	73098513          	addi	a0,s3,1840
    4dac:	00000097          	auipc	ra,0x0
    4db0:	908080e7          	jalr	-1784(ra) # 46b4 <fatfs_allocate_free_space>
    4db4:	e6050ee3          	beqz	a0,4c30 <fl_fopen+0x13c>
    4db8:	00002ab7          	lui	s5,0x2
    4dbc:	21c40b93          	addi	s7,s0,540
    4dc0:	73098c13          	addi	s8,s3,1840
    4dc4:	70fa8a93          	addi	s5,s5,1807 # 270f <fatfs_lfn_generate_tail+0x137>
    4dc8:	000b0593          	mv	a1,s6
    4dcc:	00410513          	addi	a0,sp,4
    4dd0:	ffffd097          	auipc	ra,0xffffd
    4dd4:	68c080e7          	jalr	1676(ra) # 245c <fatfs_lfn_create_sfn>
    4dd8:	08090e63          	beqz	s2,4e74 <fl_fopen+0x380>
    4ddc:	00090613          	mv	a2,s2
    4de0:	00410593          	addi	a1,sp,4
    4de4:	000b8513          	mv	a0,s7
    4de8:	ffffd097          	auipc	ra,0xffffd
    4dec:	7f0080e7          	jalr	2032(ra) # 25d8 <fatfs_lfn_generate_tail>
    4df0:	00042583          	lw	a1,0(s0)
    4df4:	000b8613          	mv	a2,s7
    4df8:	000c0513          	mv	a0,s8
    4dfc:	fffff097          	auipc	ra,0xfffff
    4e00:	8d4080e7          	jalr	-1836(ra) # 36d0 <fatfs_sfn_exists>
    4e04:	00050663          	beqz	a0,4e10 <fl_fopen+0x31c>
    4e08:	00190913          	addi	s2,s2,1
    4e0c:	fb591ee3          	bne	s2,s5,4dc8 <fl_fopen+0x2d4>
    4e10:	00442703          	lw	a4,4(s0)
    4e14:	000027b7          	lui	a5,0x2
    4e18:	70f78793          	addi	a5,a5,1807 # 270f <fatfs_lfn_generate_tail+0x137>
    4e1c:	00070593          	mv	a1,a4
    4e20:	02f90663          	beq	s2,a5,4e4c <fl_fopen+0x358>
    4e24:	00042583          	lw	a1,0(s0)
    4e28:	00000813          	li	a6,0
    4e2c:	00000793          	li	a5,0
    4e30:	000b8693          	mv	a3,s7
    4e34:	000b0613          	mv	a2,s6
    4e38:	73098513          	addi	a0,s3,1840
    4e3c:	00000097          	auipc	ra,0x0
    4e40:	990080e7          	jalr	-1648(ra) # 47cc <fatfs_add_file_entry>
    4e44:	04051463          	bnez	a0,4e8c <fl_fopen+0x398>
    4e48:	00442583          	lw	a1,4(s0)
    4e4c:	73098513          	addi	a0,s3,1840
    4e50:	fffff097          	auipc	ra,0xfffff
    4e54:	1b4080e7          	jalr	436(ra) # 4004 <fatfs_free_cluster_chain>
    4e58:	dd9ff06f          	j	4c30 <fl_fopen+0x13c>
    4e5c:	00040593          	mv	a1,s0
    4e60:	000a8513          	mv	a0,s5
    4e64:	ffffe097          	auipc	ra,0xffffe
    4e68:	54c080e7          	jalr	1356(ra) # 33b0 <_open_directory>
    4e6c:	f00518e3          	bnez	a0,4d7c <fl_fopen+0x288>
    4e70:	dc1ff06f          	j	4c30 <fl_fopen+0x13c>
    4e74:	00b00613          	li	a2,11
    4e78:	00410593          	addi	a1,sp,4
    4e7c:	000b8513          	mv	a0,s7
    4e80:	ffffc097          	auipc	ra,0xffffc
    4e84:	5cc080e7          	jalr	1484(ra) # 144c <memcpy>
    4e88:	f69ff06f          	j	4df0 <fl_fopen+0x2fc>
    4e8c:	fff00793          	li	a5,-1
    4e90:	00042623          	sw	zero,12(s0)
    4e94:	00042423          	sw	zero,8(s0)
    4e98:	42f42823          	sw	a5,1072(s0)
    4e9c:	42042a23          	sw	zero,1076(s0)
    4ea0:	00042823          	sw	zero,16(s0)
    4ea4:	22f42423          	sw	a5,552(s0)
    4ea8:	22f42623          	sw	a5,556(s0)
    4eac:	73098513          	addi	a0,s3,1840
    4eb0:	ffffe097          	auipc	ra,0xffffe
    4eb4:	054080e7          	jalr	84(ra) # 2f04 <fatfs_fat_purge>
    4eb8:	d89ff06f          	j	4c40 <fl_fopen+0x14c>
    4ebc:	000d0513          	mv	a0,s10
    4ec0:	ffffe097          	auipc	ra,0xffffe
    4ec4:	69c080e7          	jalr	1692(ra) # 355c <_open_file>
    4ec8:	00050413          	mv	s0,a0
    4ecc:	e80412e3          	bnez	s0,4d50 <fl_fopen+0x25c>
    4ed0:	d89ff06f          	j	4c58 <fl_fopen+0x164>
    4ed4:	00000413          	li	s0,0
    4ed8:	d91ff06f          	j	4c68 <fl_fopen+0x174>

00004edc <album_count>:
    4edc:	00000007                                ....

00004ee0 <cmd16>:
    4ee0:	02000050 00001500                       P.......

00004ee8 <acmd41>:
    4ee8:	00004069 00000100                       i@......

00004ef0 <cmd55>:
    4ef0:	00000077 00000100                       w.......

00004ef8 <cmd8>:
    4ef8:	01000048 000087aa                       H.......

00004f00 <cmd0>:
    4f00:	00000040 00009500                       @.......

00004f08 <AUDIO>:
    4f08:	00018000                                ....

00004f0c <BUTTONS>:
    4f0c:	00010100                                ....

00004f10 <SDCARD>:
    4f10:	00010080                                ....

00004f14 <OLED_RST>:
    4f14:	00010010                                ....

00004f18 <OLED>:
    4f18:	00010008                                ....

00004f1c <LEDS>:
    4f1c:	00010004 00006272 756f532f 2f73646e     ....rb../Sounds/
    4f2c:	63696c63 61722e6b 00000077 756f532f     click.raw.../Sou
    4f3c:	2f73646e 72617473 2e707574 00776172     nds/startup.raw.
    4f4c:	68636946 20726569 72746e69 6176756f     Fichier introuva
    4f5c:	3a656c62 0a73250a 00000000 7463654c     ble:.%s.....Lect
    4f6c:	3a657275 0a73250a 00000000 53554150     ure:.%s.....PAUS
    4f7c:	20202045 000a2020 20202020 20202020     E     ..        
    4f8c:	20202020 20202020 20202020 20202020                     
    4f9c:	0000000a 203d3d3d 75626c41 3d20736d     ....=== Albums =
    4fac:	0a0a3d3d 00000000 000a7325 75637541     ==......%s..Aucu
    4fbc:	6966206e 65696863 61642072 0a3a736e     n fichier dans:.
    4fcc:	000a7325 203d3d3d 74736950 3d207365     %s..=== Pistes =
    4fdc:	0a0a3d3d 00000000 74696e49 2e445320     ==......Init SD.
    4fec:	000a2e2e 4f204453 000a2e4b 766f632f     ....SD OK.../cov
    4ffc:	722e7265 00007761 206e6946 7463656c     er.raw..Fin lect
    500c:	2e657275 0000000a 0000002f 33323130     ure...../...0123
    501c:	37363534 42413938 46454443 00000000     456789ABCDEF....
    502c:	5f544146 203a5346 6f727245 6f632072     FAT_FS: Error co
    503c:	20646c75 20746f6e 64616f6c 54414620     uld not load FAT
    504c:	74656420 736c6961 64252820 0a0d2129      details (%d)!..
    505c:	00000000                                ....

00005060 <font>:
    5060:	00000000 00002f00 00030000 14000003     ...../..........
    5070:	143e143e 3a2b6a2e 08122600 171c3224     >.>..j+:.&..$2..
    5080:	03003415 00000000 0000211e 001e2100     .4.......!...!..
    5090:	08220000 0822081c 0000081c 00002040     .."...".....@ ..
    50a0:	00080800 00200000 20000000 02040810     ...... .... ....
    50b0:	3f21213f 003f0100 253d0000 25002725     ?!!?..?...=%%'.%
    50c0:	003f2525 3f040407 25252700 253f003d     %%?....?.'%%=.?%
    50d0:	01003d25 00030539 3f25253f 25252700     %=..9...?%%?.'%%
    50e0:	0028003f 40000000 00000028 00110a04     ?.(....@(.......
    50f0:	00141400 0a110000 01000004 0007052d     ............-...
    5100:	253d213f 09093f1f 253f003f 3f003c27     ?!=%.?..?.?%'<.?
    5110:	00212121 1e21213f 25253f00 053f0025     !!!.?!!..?%%%.?.
    5120:	3f000505 003d2521 3f04043f 213f2100     ...?!%=.?..?.!?!
    5130:	20380000 3f013f21 003b0404 2020203f     ..8 !?.?..;.?   
    5140:	3f013f00 023f3f01 3f003f04 003f2121     .?.?.??..?.?!!?.
    5150:	0f09093f 31213f00 093f003f 27002f39     ?....?!1?.?.9/.'
    5160:	003d2525 013f0101 20203f01 100f003f     %%=...?..?  ?...
    5170:	3f001f30 3f203f20 3b04043b 38080f00     0..? ? ?;..;...8
    5180:	2931000f 3f002325 00000021 04081020     ..1)%#.?!... ...
    5190:	003f2102 01020000 20000201 00000020     .!?........  ...
    51a0:	00000201 24243800 243f003c 3c003c24     .....8$$<.?$$<.<
    51b0:	00242424 3f24243c 2c2c3c00 3f04002c     $$$.<$$?.<,,,..?
    51c0:	bc000005 00fca4a4 3c04043f 00003d00     ........?..<.=..
    51d0:	fd800000 3f000000 00340808 0000003f     .......?..4.?...
    51e0:	3c043c00 043c3c04 3c003c04 003c2424     .<.<.<<..<.<$$<.
    51f0:	3c2424fc 24243c00 083c00fc 2c000004     .$$<.<$$..<....,
    5200:	003c2c2c 00243f04 20203c00 100c003c     ,,<..?$..<  <...
    5210:	3c001c30 3c203c20 34080834 a0a0bc00     0..< < <4..4....
    5220:	342400fc 0400242c 0000213f 0000003f     ..$4,$..?!..?...
    5230:	043f2100 02010000 00000102 00000000     .!?.............
    5240:	00000001 00000003 00000005 00000007     ................
    5250:	00000009 0000000e 00000010 00000012     ................
    5260:	00000014 00000016 00000018 0000001c     ................
    5270:	0000001e                                ....

00005274 <albums>:
    5274:	626c412f 00316d75 00000000 00000000     /Album1.........
	...
    52b4:	626c412f 00326d75 00000000 00000000     /Album2.........
	...
    52f4:	626c412f 00336d75 00000000 00000000     /Album3.........
	...
    5334:	626c412f 00346d75 00000000 00000000     /Album4.........
	...
    5374:	626c412f 00356d75 00000000 00000000     /Album5.........
	...
    53b4:	626c412f 00366d75 00000000 00000000     /Album6.........
	...
    53f4:	626c412f 00376d75 00000000 00000000     /Album7.........
	...
    5434:	626c412f 00386d75 00000000 00000000     /Album8.........
	...

00005474 <current_track>:
    5474:	00000000                                ....

00005478 <current_album>:
    5478:	00000000                                ....

0000547c <file_count>:
    547c:	00000000                                ....

00005480 <prev_btn>:
    5480:	00000000                                ....

00005484 <sdcard_while_loading_callback>:
    5484:	00000000                                ....

00005488 <back_color>:
	...

00005489 <front_color>:
    5489:	                                         ...

0000548c <cursor_y>:
    548c:	00000000                                ....

00005490 <cursor_x>:
    5490:	00000000                                ....

00005494 <f_putchar>:
    5494:	00000000                                ....

00005498 <_free_file_list>:
	...

000054a0 <_open_file_list>:
	...

000054a8 <_filelib_valid>:
    54a8:	00000000                                ....

000054ac <_filelib_init>:
    54ac:	00000000                                ....
