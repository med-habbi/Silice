
code.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <_start>:
       0:	00010137          	lui	sp,0x10
       4:	00001097          	auipc	ra,0x1
       8:	8fc080e7          	jalr	-1796(ra) # 900 <main>
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
      34:	ed010113          	addi	sp,sp,-304 # fed0 <_files+0x4510>
      38:	00651513          	slli	a0,a0,0x6
      3c:	0a078793          	addi	a5,a5,160 # 50a0 <albums>
      40:	12812423          	sw	s0,296(sp)
      44:	00410593          	addi	a1,sp,4
      48:	00005437          	lui	s0,0x5
      4c:	00a78533          	add	a0,a5,a0
      50:	12112623          	sw	ra,300(sp)
      54:	12912223          	sw	s1,292(sp)
      58:	2a042223          	sw	zero,676(s0) # 52a4 <file_count>
      5c:	00003097          	auipc	ra,0x3
      60:	268080e7          	jalr	616(ra) # 32c4 <fl_opendir>
      64:	02050a63          	beqz	a0,98 <scan_files_in_album+0x68>
      68:	01010593          	addi	a1,sp,16
      6c:	01f00493          	li	s1,31
      70:	00410513          	addi	a0,sp,4
      74:	00004097          	auipc	ra,0x4
      78:	91c080e7          	jalr	-1764(ra) # 3990 <fl_readdir>
      7c:	00051863          	bnez	a0,8c <scan_files_in_album+0x5c>
      80:	2a442703          	lw	a4,676(s0)
      84:	01010593          	addi	a1,sp,16
      88:	02e4d263          	bge	s1,a4,ac <scan_files_in_album+0x7c>
      8c:	00410513          	addi	a0,sp,4
      90:	00002097          	auipc	ra,0x2
      94:	e1c080e7          	jalr	-484(ra) # 1eac <fl_closedir>
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
      c4:	2d878793          	addi	a5,a5,728 # 52d8 <files>
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
      f4:	2ae42223          	sw	a4,676(s0)
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
     11c:	d387a403          	lw	s0,-712(a5) # 4d38 <AUDIO>
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
     158:	10c080e7          	jalr	268(ra) # 1260 <memset>
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
     198:	d5058593          	addi	a1,a1,-688 # 4d50 <LEDS+0x4>
     19c:	d5450513          	addi	a0,a0,-684 # 4d54 <LEDS+0x8>
     1a0:	00112e23          	sw	ra,28(sp)
     1a4:	00812c23          	sw	s0,24(sp)
     1a8:	00912a23          	sw	s1,20(sp)
     1ac:	01212823          	sw	s2,16(sp)
     1b0:	00004097          	auipc	ra,0x4
     1b4:	774080e7          	jalr	1908(ra) # 4924 <fl_fopen>
     1b8:	06050263          	beqz	a0,21c <click_sound+0x90>
     1bc:	000057b7          	lui	a5,0x5
     1c0:	d387a903          	lw	s2,-712(a5) # 4d38 <AUDIO>
     1c4:	00050693          	mv	a3,a0
     1c8:	1ff00493          	li	s1,511
     1cc:	00092403          	lw	s0,0(s2)
     1d0:	20000613          	li	a2,512
     1d4:	00100593          	li	a1,1
     1d8:	00040513          	mv	a0,s0
     1dc:	00d12623          	sw	a3,12(sp)
     1e0:	00004097          	auipc	ra,0x4
     1e4:	140080e7          	jalr	320(ra) # 4320 <fl_fread>
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
     218:	03030067          	jr	48(t1) # 4244 <fl_fclose>
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
     240:	d5058593          	addi	a1,a1,-688 # 4d50 <LEDS+0x4>
     244:	d6850513          	addi	a0,a0,-664 # 4d68 <LEDS+0x1c>
     248:	00112e23          	sw	ra,28(sp)
     24c:	00812c23          	sw	s0,24(sp)
     250:	00912a23          	sw	s1,20(sp)
     254:	01212823          	sw	s2,16(sp)
     258:	00004097          	auipc	ra,0x4
     25c:	6cc080e7          	jalr	1740(ra) # 4924 <fl_fopen>
     260:	06050263          	beqz	a0,2c4 <startup_sound+0x90>
     264:	000057b7          	lui	a5,0x5
     268:	d387a903          	lw	s2,-712(a5) # 4d38 <AUDIO>
     26c:	00050693          	mv	a3,a0
     270:	1ff00493          	li	s1,511
     274:	00092403          	lw	s0,0(s2)
     278:	20000613          	li	a2,512
     27c:	00100593          	li	a1,1
     280:	00040513          	mv	a0,s0
     284:	00d12623          	sw	a3,12(sp)
     288:	00004097          	auipc	ra,0x4
     28c:	098080e7          	jalr	152(ra) # 4320 <fl_fread>
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
     2c0:	f8830067          	jr	-120(t1) # 4244 <fl_fclose>
     2c4:	01c12083          	lw	ra,28(sp)
     2c8:	01812403          	lw	s0,24(sp)
     2cc:	01412483          	lw	s1,20(sp)
     2d0:	01012903          	lw	s2,16(sp)
     2d4:	02010113          	addi	sp,sp,32
     2d8:	00008067          	ret

000002dc <play_music>:
     2dc:	000055b7          	lui	a1,0x5
     2e0:	fd010113          	addi	sp,sp,-48
     2e4:	d5058593          	addi	a1,a1,-688 # 4d50 <LEDS+0x4>
     2e8:	02812423          	sw	s0,40(sp)
     2ec:	02112623          	sw	ra,44(sp)
     2f0:	02912223          	sw	s1,36(sp)
     2f4:	03212023          	sw	s2,32(sp)
     2f8:	01312e23          	sw	s3,28(sp)
     2fc:	01412c23          	sw	s4,24(sp)
     300:	01512a23          	sw	s5,20(sp)
     304:	01612823          	sw	s6,16(sp)
     308:	01712623          	sw	s7,12(sp)
     30c:	01812423          	sw	s8,8(sp)
     310:	00050413          	mv	s0,a0
     314:	00004097          	auipc	ra,0x4
     318:	610080e7          	jalr	1552(ra) # 4924 <fl_fopen>
     31c:	06051463          	bnez	a0,384 <play_music+0xa8>
     320:	00000593          	li	a1,0
     324:	00001097          	auipc	ra,0x1
     328:	218080e7          	jalr	536(ra) # 153c <display_set_cursor>
     32c:	00000593          	li	a1,0
     330:	0ff00513          	li	a0,255
     334:	00001097          	auipc	ra,0x1
     338:	21c080e7          	jalr	540(ra) # 1550 <display_set_front_back_color>
     33c:	00005537          	lui	a0,0x5
     340:	00040593          	mv	a1,s0
     344:	d7c50513          	addi	a0,a0,-644 # 4d7c <LEDS+0x30>
     348:	00001097          	auipc	ra,0x1
     34c:	52c080e7          	jalr	1324(ra) # 1874 <printf>
     350:	02812403          	lw	s0,40(sp)
     354:	02c12083          	lw	ra,44(sp)
     358:	02412483          	lw	s1,36(sp)
     35c:	02012903          	lw	s2,32(sp)
     360:	01c12983          	lw	s3,28(sp)
     364:	01812a03          	lw	s4,24(sp)
     368:	01412a83          	lw	s5,20(sp)
     36c:	01012b03          	lw	s6,16(sp)
     370:	00c12b83          	lw	s7,12(sp)
     374:	00812c03          	lw	s8,8(sp)
     378:	03010113          	addi	sp,sp,48
     37c:	00001317          	auipc	t1,0x1
     380:	30030067          	jr	768(t1) # 167c <display_refresh>
     384:	00000593          	li	a1,0
     388:	00050a93          	mv	s5,a0
     38c:	00000513          	li	a0,0
     390:	00001097          	auipc	ra,0x1
     394:	1ac080e7          	jalr	428(ra) # 153c <display_set_cursor>
     398:	0ff00593          	li	a1,255
     39c:	00000513          	li	a0,0
     3a0:	00001097          	auipc	ra,0x1
     3a4:	1b0080e7          	jalr	432(ra) # 1550 <display_set_front_back_color>
     3a8:	00005537          	lui	a0,0x5
     3ac:	00040593          	mv	a1,s0
     3b0:	d9850513          	addi	a0,a0,-616 # 4d98 <LEDS+0x4c>
     3b4:	00001097          	auipc	ra,0x1
     3b8:	4c0080e7          	jalr	1216(ra) # 1874 <printf>
     3bc:	00001097          	auipc	ra,0x1
     3c0:	2c0080e7          	jalr	704(ra) # 167c <display_refresh>
     3c4:	000057b7          	lui	a5,0x5
     3c8:	d3c7a783          	lw	a5,-708(a5) # 4d3c <BUTTONS>
     3cc:	00005937          	lui	s2,0x5
     3d0:	00000493          	li	s1,0
     3d4:	00078b13          	mv	s6,a5
     3d8:	0007a783          	lw	a5,0(a5)
     3dc:	00100413          	li	s0,1
     3e0:	1ff00a13          	li	s4,511
     3e4:	2af92423          	sw	a5,680(s2) # 52a8 <prev_btn>
     3e8:	000057b7          	lui	a5,0x5
     3ec:	d387ab83          	lw	s7,-712(a5) # 4d38 <AUDIO>
     3f0:	000057b7          	lui	a5,0x5
     3f4:	d4c7ac03          	lw	s8,-692(a5) # 4d4c <LEDS>
     3f8:	000ba983          	lw	s3,0(s7)
     3fc:	000a8693          	mv	a3,s5
     400:	20000613          	li	a2,512
     404:	00100593          	li	a1,1
     408:	00098513          	mv	a0,s3
     40c:	00004097          	auipc	ra,0x4
     410:	f14080e7          	jalr	-236(ra) # 4320 <fl_fread>
     414:	08a04c63          	bgtz	a0,4ac <play_music+0x1d0>
     418:	000a8513          	mv	a0,s5
     41c:	00004097          	auipc	ra,0x4
     420:	e28080e7          	jalr	-472(ra) # 4244 <fl_fclose>
     424:	02c12083          	lw	ra,44(sp)
     428:	02812403          	lw	s0,40(sp)
     42c:	000c2023          	sw	zero,0(s8)
     430:	02412483          	lw	s1,36(sp)
     434:	02012903          	lw	s2,32(sp)
     438:	01c12983          	lw	s3,28(sp)
     43c:	01812a03          	lw	s4,24(sp)
     440:	01412a83          	lw	s5,20(sp)
     444:	01012b03          	lw	s6,16(sp)
     448:	00c12b83          	lw	s7,12(sp)
     44c:	00812c03          	lw	s8,8(sp)
     450:	03010113          	addi	sp,sp,48
     454:	00008067          	ret
     458:	f8040793          	addi	a5,s0,-128
     45c:	fff40713          	addi	a4,s0,-1
     460:	0017b793          	seqz	a5,a5
     464:	00173713          	seqz	a4,a4
     468:	000b2683          	lw	a3,0(s6)
     46c:	00e7e7b3          	or	a5,a5,a4
     470:	02f48663          	beq	s1,a5,49c <play_music+0x1c0>
     474:	00141413          	slli	s0,s0,0x1
     478:	008c2023          	sw	s0,0(s8)
     47c:	0026f713          	andi	a4,a3,2
     480:	02070263          	beqz	a4,4a4 <play_music+0x1c8>
     484:	2a892703          	lw	a4,680(s2)
     488:	00277713          	andi	a4,a4,2
     48c:	00071c63          	bnez	a4,4a4 <play_music+0x1c8>
     490:	00000097          	auipc	ra,0x0
     494:	cfc080e7          	jalr	-772(ra) # 18c <click_sound>
     498:	f81ff06f          	j	418 <play_music+0x13c>
     49c:	40145413          	srai	s0,s0,0x1
     4a0:	fd9ff06f          	j	478 <play_music+0x19c>
     4a4:	00f4c4b3          	xor	s1,s1,a5
     4a8:	2ad92423          	sw	a3,680(s2)
     4ac:	000ba783          	lw	a5,0(s7)
     4b0:	faf984e3          	beq	s3,a5,458 <play_music+0x17c>
     4b4:	f4aa42e3          	blt	s4,a0,3f8 <play_music+0x11c>
     4b8:	f61ff06f          	j	418 <play_music+0x13c>

000004bc <select_album>:
     4bc:	000057b7          	lui	a5,0x5
     4c0:	d3c7a783          	lw	a5,-708(a5) # 4d3c <BUTTONS>
     4c4:	fd010113          	addi	sp,sp,-48
     4c8:	01512a23          	sw	s5,20(sp)
     4cc:	00078a93          	mv	s5,a5
     4d0:	0007a783          	lw	a5,0(a5)
     4d4:	03212023          	sw	s2,32(sp)
     4d8:	00005937          	lui	s2,0x5
     4dc:	2af92423          	sw	a5,680(s2) # 52a8 <prev_btn>
     4e0:	000057b7          	lui	a5,0x5
     4e4:	01712623          	sw	s7,12(sp)
     4e8:	da878b93          	addi	s7,a5,-600 # 4da8 <LEDS+0x5c>
     4ec:	000057b7          	lui	a5,0x5
     4f0:	02812423          	sw	s0,40(sp)
     4f4:	01312e23          	sw	s3,28(sp)
     4f8:	01612823          	sw	s6,16(sp)
     4fc:	02112623          	sw	ra,44(sp)
     500:	02912223          	sw	s1,36(sp)
     504:	01412c23          	sw	s4,24(sp)
     508:	00000413          	li	s0,0
     50c:	000059b7          	lui	s3,0x5
     510:	dbc78b13          	addi	s6,a5,-580 # 4dbc <LEDS+0x70>
     514:	00001097          	auipc	ra,0x1
     518:	01c080e7          	jalr	28(ra) # 1530 <display_framebuffer>
     51c:	00004637          	lui	a2,0x4
     520:	00000593          	li	a1,0
     524:	00001097          	auipc	ra,0x1
     528:	d3c080e7          	jalr	-708(ra) # 1260 <memset>
     52c:	00000593          	li	a1,0
     530:	00000513          	li	a0,0
     534:	00001097          	auipc	ra,0x1
     538:	008080e7          	jalr	8(ra) # 153c <display_set_cursor>
     53c:	0ff00593          	li	a1,255
     540:	00000513          	li	a0,0
     544:	00001097          	auipc	ra,0x1
     548:	00c080e7          	jalr	12(ra) # 1550 <display_set_front_back_color>
     54c:	000b8513          	mv	a0,s7
     550:	000054b7          	lui	s1,0x5
     554:	00001097          	auipc	ra,0x1
     558:	320080e7          	jalr	800(ra) # 1874 <printf>
     55c:	0a048493          	addi	s1,s1,160 # 50a0 <albums>
     560:	00000a13          	li	s4,0
     564:	d0c9a783          	lw	a5,-756(s3) # 4d0c <album_count>
     568:	0efa4063          	blt	s4,a5,648 <select_album+0x18c>
     56c:	00001097          	auipc	ra,0x1
     570:	110080e7          	jalr	272(ra) # 167c <display_refresh>
     574:	000aaa03          	lw	s4,0(s5)
     578:	010a7793          	andi	a5,s4,16
     57c:	02078663          	beqz	a5,5a8 <select_album+0xec>
     580:	2a892483          	lw	s1,680(s2)
     584:	0104f493          	andi	s1,s1,16
     588:	02049063          	bnez	s1,5a8 <select_album+0xec>
     58c:	d0c9a783          	lw	a5,-756(s3)
     590:	00140413          	addi	s0,s0,1
     594:	00f45463          	bge	s0,a5,59c <select_album+0xe0>
     598:	00040493          	mv	s1,s0
     59c:	00000097          	auipc	ra,0x0
     5a0:	bf0080e7          	jalr	-1040(ra) # 18c <click_sound>
     5a4:	00048413          	mv	s0,s1
     5a8:	008a7793          	andi	a5,s4,8
     5ac:	02078463          	beqz	a5,5d4 <select_album+0x118>
     5b0:	2a892783          	lw	a5,680(s2)
     5b4:	0087f793          	andi	a5,a5,8
     5b8:	00079e63          	bnez	a5,5d4 <select_album+0x118>
     5bc:	fff40413          	addi	s0,s0,-1
     5c0:	00045663          	bgez	s0,5cc <select_album+0x110>
     5c4:	d0c9a403          	lw	s0,-756(s3)
     5c8:	fff40413          	addi	s0,s0,-1
     5cc:	00000097          	auipc	ra,0x0
     5d0:	bc0080e7          	jalr	-1088(ra) # 18c <click_sound>
     5d4:	004a7793          	andi	a5,s4,4
     5d8:	00100493          	li	s1,1
     5dc:	02078063          	beqz	a5,5fc <select_album+0x140>
     5e0:	2a892483          	lw	s1,680(s2)
     5e4:	0044f493          	andi	s1,s1,4
     5e8:	08049e63          	bnez	s1,684 <select_album+0x1c8>
     5ec:	00000097          	auipc	ra,0x0
     5f0:	ba0080e7          	jalr	-1120(ra) # 18c <click_sound>
     5f4:	000057b7          	lui	a5,0x5
     5f8:	2a87a023          	sw	s0,672(a5) # 52a0 <current_album>
     5fc:	0000c537          	lui	a0,0xc
     600:	35050513          	addi	a0,a0,848 # c350 <_files+0x990>
     604:	2b492423          	sw	s4,680(s2)
     608:	00000097          	auipc	ra,0x0
     60c:	a14080e7          	jalr	-1516(ra) # 1c <pause>
     610:	f00492e3          	bnez	s1,514 <select_album+0x58>
     614:	02c12083          	lw	ra,44(sp)
     618:	02812403          	lw	s0,40(sp)
     61c:	000057b7          	lui	a5,0x5
     620:	2a07a503          	lw	a0,672(a5) # 52a0 <current_album>
     624:	02412483          	lw	s1,36(sp)
     628:	02012903          	lw	s2,32(sp)
     62c:	01c12983          	lw	s3,28(sp)
     630:	01812a03          	lw	s4,24(sp)
     634:	01412a83          	lw	s5,20(sp)
     638:	01012b03          	lw	s6,16(sp)
     63c:	00c12b83          	lw	s7,12(sp)
     640:	03010113          	addi	sp,sp,48
     644:	00008067          	ret
     648:	028a1863          	bne	s4,s0,678 <select_album+0x1bc>
     64c:	0ff00593          	li	a1,255
     650:	00000513          	li	a0,0
     654:	00001097          	auipc	ra,0x1
     658:	efc080e7          	jalr	-260(ra) # 1550 <display_set_front_back_color>
     65c:	00048593          	mv	a1,s1
     660:	000b0513          	mv	a0,s6
     664:	00001097          	auipc	ra,0x1
     668:	210080e7          	jalr	528(ra) # 1874 <printf>
     66c:	001a0a13          	addi	s4,s4,1
     670:	04048493          	addi	s1,s1,64
     674:	ef1ff06f          	j	564 <select_album+0xa8>
     678:	00000593          	li	a1,0
     67c:	0ff00513          	li	a0,255
     680:	fd5ff06f          	j	654 <select_album+0x198>
     684:	00100493          	li	s1,1
     688:	f75ff06f          	j	5fc <select_album+0x140>

0000068c <select_track>:
     68c:	000057b7          	lui	a5,0x5
     690:	d3c7a783          	lw	a5,-708(a5) # 4d3c <BUTTONS>
     694:	fd010113          	addi	sp,sp,-48
     698:	01612823          	sw	s6,16(sp)
     69c:	00078b13          	mv	s6,a5
     6a0:	0007a783          	lw	a5,0(a5)
     6a4:	03212023          	sw	s2,32(sp)
     6a8:	01412c23          	sw	s4,24(sp)
     6ac:	00005937          	lui	s2,0x5
     6b0:	00005a37          	lui	s4,0x5
     6b4:	2af92423          	sw	a5,680(s2) # 52a8 <prev_btn>
     6b8:	2a4a2783          	lw	a5,676(s4) # 52a4 <file_count>
     6bc:	02112623          	sw	ra,44(sp)
     6c0:	02812423          	sw	s0,40(sp)
     6c4:	02912223          	sw	s1,36(sp)
     6c8:	01312e23          	sw	s3,28(sp)
     6cc:	01512a23          	sw	s5,20(sp)
     6d0:	01712623          	sw	s7,12(sp)
     6d4:	01812423          	sw	s8,8(sp)
     6d8:	10078c63          	beqz	a5,7f0 <select_track+0x164>
     6dc:	000057b7          	lui	a5,0x5
     6e0:	dd878c13          	addi	s8,a5,-552 # 4dd8 <LEDS+0x8c>
     6e4:	000057b7          	lui	a5,0x5
     6e8:	00000413          	li	s0,0
     6ec:	00005ab7          	lui	s5,0x5
     6f0:	dbc78b93          	addi	s7,a5,-580 # 4dbc <LEDS+0x70>
     6f4:	00001097          	auipc	ra,0x1
     6f8:	e3c080e7          	jalr	-452(ra) # 1530 <display_framebuffer>
     6fc:	00004637          	lui	a2,0x4
     700:	00000593          	li	a1,0
     704:	00001097          	auipc	ra,0x1
     708:	b5c080e7          	jalr	-1188(ra) # 1260 <memset>
     70c:	00000593          	li	a1,0
     710:	00000513          	li	a0,0
     714:	00001097          	auipc	ra,0x1
     718:	e28080e7          	jalr	-472(ra) # 153c <display_set_cursor>
     71c:	0ff00593          	li	a1,255
     720:	00000513          	li	a0,0
     724:	00001097          	auipc	ra,0x1
     728:	e2c080e7          	jalr	-468(ra) # 1550 <display_set_front_back_color>
     72c:	000c0513          	mv	a0,s8
     730:	00001097          	auipc	ra,0x1
     734:	144080e7          	jalr	324(ra) # 1874 <printf>
     738:	2d8a8993          	addi	s3,s5,728 # 52d8 <files>
     73c:	00000493          	li	s1,0
     740:	2a4a2783          	lw	a5,676(s4)
     744:	14f4ce63          	blt	s1,a5,8a0 <select_track+0x214>
     748:	00001097          	auipc	ra,0x1
     74c:	f34080e7          	jalr	-204(ra) # 167c <display_refresh>
     750:	000b2983          	lw	s3,0(s6)
     754:	0109f793          	andi	a5,s3,16
     758:	02078663          	beqz	a5,784 <select_track+0xf8>
     75c:	2a892483          	lw	s1,680(s2)
     760:	0104f493          	andi	s1,s1,16
     764:	02049063          	bnez	s1,784 <select_track+0xf8>
     768:	2a4a2783          	lw	a5,676(s4)
     76c:	00140413          	addi	s0,s0,1
     770:	00f45463          	bge	s0,a5,778 <select_track+0xec>
     774:	00040493          	mv	s1,s0
     778:	00000097          	auipc	ra,0x0
     77c:	a14080e7          	jalr	-1516(ra) # 18c <click_sound>
     780:	00048413          	mv	s0,s1
     784:	0089f793          	andi	a5,s3,8
     788:	02078463          	beqz	a5,7b0 <select_track+0x124>
     78c:	2a892783          	lw	a5,680(s2)
     790:	0087f793          	andi	a5,a5,8
     794:	00079e63          	bnez	a5,7b0 <select_track+0x124>
     798:	fff40413          	addi	s0,s0,-1
     79c:	00045663          	bgez	s0,7a8 <select_track+0x11c>
     7a0:	2a4a2403          	lw	s0,676(s4)
     7a4:	fff40413          	addi	s0,s0,-1
     7a8:	00000097          	auipc	ra,0x0
     7ac:	9e4080e7          	jalr	-1564(ra) # 18c <click_sound>
     7b0:	0049f793          	andi	a5,s3,4
     7b4:	00100493          	li	s1,1
     7b8:	00078c63          	beqz	a5,7d0 <select_track+0x144>
     7bc:	2a892483          	lw	s1,680(s2)
     7c0:	0044f493          	andi	s1,s1,4
     7c4:	10049c63          	bnez	s1,8dc <select_track+0x250>
     7c8:	00000097          	auipc	ra,0x0
     7cc:	9c4080e7          	jalr	-1596(ra) # 18c <click_sound>
     7d0:	0019f793          	andi	a5,s3,1
     7d4:	10078863          	beqz	a5,8e4 <select_track+0x258>
     7d8:	2a892783          	lw	a5,680(s2)
     7dc:	0017f793          	andi	a5,a5,1
     7e0:	10079263          	bnez	a5,8e4 <select_track+0x258>
     7e4:	00000097          	auipc	ra,0x0
     7e8:	9a8080e7          	jalr	-1624(ra) # 18c <click_sound>
     7ec:	07c0006f          	j	868 <select_track+0x1dc>
     7f0:	00001097          	auipc	ra,0x1
     7f4:	d40080e7          	jalr	-704(ra) # 1530 <display_framebuffer>
     7f8:	00004637          	lui	a2,0x4
     7fc:	00000593          	li	a1,0
     800:	00001097          	auipc	ra,0x1
     804:	a60080e7          	jalr	-1440(ra) # 1260 <memset>
     808:	00000593          	li	a1,0
     80c:	00000513          	li	a0,0
     810:	00001097          	auipc	ra,0x1
     814:	d2c080e7          	jalr	-724(ra) # 153c <display_set_cursor>
     818:	00000593          	li	a1,0
     81c:	0ff00513          	li	a0,255
     820:	00001097          	auipc	ra,0x1
     824:	d30080e7          	jalr	-720(ra) # 1550 <display_set_front_back_color>
     828:	000057b7          	lui	a5,0x5
     82c:	2a07a783          	lw	a5,672(a5) # 52a0 <current_album>
     830:	000055b7          	lui	a1,0x5
     834:	0a058593          	addi	a1,a1,160 # 50a0 <albums>
     838:	00679793          	slli	a5,a5,0x6
     83c:	00005537          	lui	a0,0x5
     840:	00f585b3          	add	a1,a1,a5
     844:	dc050513          	addi	a0,a0,-576 # 4dc0 <LEDS+0x74>
     848:	00001097          	auipc	ra,0x1
     84c:	02c080e7          	jalr	44(ra) # 1874 <printf>
     850:	00001097          	auipc	ra,0x1
     854:	e2c080e7          	jalr	-468(ra) # 167c <display_refresh>
     858:	001e8537          	lui	a0,0x1e8
     85c:	48050513          	addi	a0,a0,1152 # 1e8480 <__stacktop+0x1d8480>
     860:	fffff097          	auipc	ra,0xfffff
     864:	7bc080e7          	jalr	1980(ra) # 1c <pause>
     868:	fff00413          	li	s0,-1
     86c:	02c12083          	lw	ra,44(sp)
     870:	00040513          	mv	a0,s0
     874:	02812403          	lw	s0,40(sp)
     878:	02412483          	lw	s1,36(sp)
     87c:	02012903          	lw	s2,32(sp)
     880:	01c12983          	lw	s3,28(sp)
     884:	01812a03          	lw	s4,24(sp)
     888:	01412a83          	lw	s5,20(sp)
     88c:	01012b03          	lw	s6,16(sp)
     890:	00c12b83          	lw	s7,12(sp)
     894:	00812c03          	lw	s8,8(sp)
     898:	03010113          	addi	sp,sp,48
     89c:	00008067          	ret
     8a0:	02849863          	bne	s1,s0,8d0 <select_track+0x244>
     8a4:	0ff00593          	li	a1,255
     8a8:	00000513          	li	a0,0
     8ac:	00001097          	auipc	ra,0x1
     8b0:	ca4080e7          	jalr	-860(ra) # 1550 <display_set_front_back_color>
     8b4:	00098593          	mv	a1,s3
     8b8:	000b8513          	mv	a0,s7
     8bc:	00001097          	auipc	ra,0x1
     8c0:	fb8080e7          	jalr	-72(ra) # 1874 <printf>
     8c4:	00148493          	addi	s1,s1,1
     8c8:	10498993          	addi	s3,s3,260
     8cc:	e75ff06f          	j	740 <select_track+0xb4>
     8d0:	00000593          	li	a1,0
     8d4:	0ff00513          	li	a0,255
     8d8:	fd5ff06f          	j	8ac <select_track+0x220>
     8dc:	00100493          	li	s1,1
     8e0:	ef1ff06f          	j	7d0 <select_track+0x144>
     8e4:	0000c537          	lui	a0,0xc
     8e8:	35050513          	addi	a0,a0,848 # c350 <_files+0x990>
     8ec:	2b392423          	sw	s3,680(s2)
     8f0:	fffff097          	auipc	ra,0xfffff
     8f4:	72c080e7          	jalr	1836(ra) # 1c <pause>
     8f8:	de049ee3          	bnez	s1,6f4 <select_track+0x68>
     8fc:	f71ff06f          	j	86c <select_track+0x1e0>

00000900 <main>:
     900:	000017b7          	lui	a5,0x1
     904:	fd010113          	addi	sp,sp,-48
     908:	00005737          	lui	a4,0x5
     90c:	56478793          	addi	a5,a5,1380 # 1564 <display_putchar>
     910:	02112623          	sw	ra,44(sp)
     914:	2af72e23          	sw	a5,700(a4) # 52bc <f_putchar>
     918:	02812423          	sw	s0,40(sp)
     91c:	02912223          	sw	s1,36(sp)
     920:	03212023          	sw	s2,32(sp)
     924:	01312e23          	sw	s3,28(sp)
     928:	01412c23          	sw	s4,24(sp)
     92c:	01512a23          	sw	s5,20(sp)
     930:	01612823          	sw	s6,16(sp)
     934:	01712623          	sw	s7,12(sp)
     938:	01812423          	sw	s8,8(sp)
     93c:	00001097          	auipc	ra,0x1
     940:	b30080e7          	jalr	-1232(ra) # 146c <oled_init>
     944:	00001097          	auipc	ra,0x1
     948:	b34080e7          	jalr	-1228(ra) # 1478 <oled_fullscreen>
     94c:	00001097          	auipc	ra,0x1
     950:	be4080e7          	jalr	-1052(ra) # 1530 <display_framebuffer>
     954:	00004637          	lui	a2,0x4
     958:	00000593          	li	a1,0
     95c:	00001097          	auipc	ra,0x1
     960:	904080e7          	jalr	-1788(ra) # 1260 <memset>
     964:	00001097          	auipc	ra,0x1
     968:	d18080e7          	jalr	-744(ra) # 167c <display_refresh>
     96c:	00000593          	li	a1,0
     970:	00000513          	li	a0,0
     974:	00001097          	auipc	ra,0x1
     978:	bc8080e7          	jalr	-1080(ra) # 153c <display_set_cursor>
     97c:	00000593          	li	a1,0
     980:	0ff00513          	li	a0,255
     984:	00001097          	auipc	ra,0x1
     988:	bcc080e7          	jalr	-1076(ra) # 1550 <display_set_front_back_color>
     98c:	00005537          	lui	a0,0x5
     990:	dec50513          	addi	a0,a0,-532 # 4dec <LEDS+0xa0>
     994:	00001097          	auipc	ra,0x1
     998:	ee0080e7          	jalr	-288(ra) # 1874 <printf>
     99c:	000014b7          	lui	s1,0x1
     9a0:	00001437          	lui	s0,0x1
     9a4:	00001097          	auipc	ra,0x1
     9a8:	cd8080e7          	jalr	-808(ra) # 167c <display_refresh>
     9ac:	1a448493          	addi	s1,s1,420 # 11a4 <sdcard_writesector>
     9b0:	00000097          	auipc	ra,0x0
     9b4:	650080e7          	jalr	1616(ra) # 1000 <sdcard_init>
     9b8:	15040413          	addi	s0,s0,336 # 1150 <sdcard_readsector>
     9bc:	00001097          	auipc	ra,0x1
     9c0:	488080e7          	jalr	1160(ra) # 1e44 <fl_init>
     9c4:	00048593          	mv	a1,s1
     9c8:	00040513          	mv	a0,s0
     9cc:	00002097          	auipc	ra,0x2
     9d0:	2e0080e7          	jalr	736(ra) # 2cac <fl_attach_media>
     9d4:	fe0518e3          	bnez	a0,9c4 <main+0xc4>
     9d8:	00005537          	lui	a0,0x5
     9dc:	df850513          	addi	a0,a0,-520 # 4df8 <LEDS+0xac>
     9e0:	00001097          	auipc	ra,0x1
     9e4:	e94080e7          	jalr	-364(ra) # 1874 <printf>
     9e8:	00001097          	auipc	ra,0x1
     9ec:	c94080e7          	jalr	-876(ra) # 167c <display_refresh>
     9f0:	00000097          	auipc	ra,0x0
     9f4:	844080e7          	jalr	-1980(ra) # 234 <startup_sound>
     9f8:	fffff097          	auipc	ra,0xfffff
     9fc:	718080e7          	jalr	1816(ra) # 110 <clear_audio>
     a00:	000057b7          	lui	a5,0x5
     a04:	e0078c13          	addi	s8,a5,-512 # 4e00 <LEDS+0xb4>
     a08:	000057b7          	lui	a5,0x5
     a0c:	d4c7ab83          	lw	s7,-692(a5) # 4d4c <LEDS>
     a10:	000054b7          	lui	s1,0x5
     a14:	000059b7          	lui	s3,0x5
     a18:	00007437          	lui	s0,0x7
     a1c:	00007a37          	lui	s4,0x7
     a20:	0a048493          	addi	s1,s1,160 # 50a0 <albums>
     a24:	2d898993          	addi	s3,s3,728 # 52d8 <files>
     a28:	35840413          	addi	s0,s0,856 # 7358 <tmp1>
     a2c:	00005ab7          	lui	s5,0x5
     a30:	00000097          	auipc	ra,0x0
     a34:	a8c080e7          	jalr	-1396(ra) # 4bc <select_album>
     a38:	2a0aa503          	lw	a0,672(s5) # 52a0 <current_album>
     a3c:	fffff097          	auipc	ra,0xfffff
     a40:	5f4080e7          	jalr	1524(ra) # 30 <scan_files_in_album>
     a44:	00000097          	auipc	ra,0x0
     a48:	c48080e7          	jalr	-952(ra) # 68c <select_track>
     a4c:	00050b13          	mv	s6,a0
     a50:	fe0540e3          	bltz	a0,a30 <main+0x130>
     a54:	2a0aa583          	lw	a1,672(s5)
     a58:	458a0513          	addi	a0,s4,1112 # 7458 <tmp>
     a5c:	440a0c23          	sb	zero,1112(s4)
     a60:	00659593          	slli	a1,a1,0x6
     a64:	00b485b3          	add	a1,s1,a1
     a68:	00001097          	auipc	ra,0x1
     a6c:	8bc080e7          	jalr	-1860(ra) # 1324 <strcat>
     a70:	000c0593          	mv	a1,s8
     a74:	458a0513          	addi	a0,s4,1112
     a78:	00001097          	auipc	ra,0x1
     a7c:	8ac080e7          	jalr	-1876(ra) # 1324 <strcat>
     a80:	006b1593          	slli	a1,s6,0x6
     a84:	016585b3          	add	a1,a1,s6
     a88:	00259593          	slli	a1,a1,0x2
     a8c:	00b985b3          	add	a1,s3,a1
     a90:	458a0513          	addi	a0,s4,1112
     a94:	00001097          	auipc	ra,0x1
     a98:	890080e7          	jalr	-1904(ra) # 1324 <strcat>
     a9c:	2a0aa583          	lw	a1,672(s5)
     aa0:	00040513          	mv	a0,s0
     aa4:	00040023          	sb	zero,0(s0)
     aa8:	00659593          	slli	a1,a1,0x6
     aac:	00b485b3          	add	a1,s1,a1
     ab0:	00001097          	auipc	ra,0x1
     ab4:	874080e7          	jalr	-1932(ra) # 1324 <strcat>
     ab8:	000055b7          	lui	a1,0x5
     abc:	e0458593          	addi	a1,a1,-508 # 4e04 <LEDS+0xb8>
     ac0:	00040513          	mv	a0,s0
     ac4:	00001097          	auipc	ra,0x1
     ac8:	860080e7          	jalr	-1952(ra) # 1324 <strcat>
     acc:	000055b7          	lui	a1,0x5
     ad0:	d5058593          	addi	a1,a1,-688 # 4d50 <LEDS+0x4>
     ad4:	00040513          	mv	a0,s0
     ad8:	00004097          	auipc	ra,0x4
     adc:	e4c080e7          	jalr	-436(ra) # 4924 <fl_fopen>
     ae0:	00050913          	mv	s2,a0
     ae4:	0a051263          	bnez	a0,b88 <main+0x288>
     ae8:	00005537          	lui	a0,0x5
     aec:	e1050513          	addi	a0,a0,-496 # 4e10 <LEDS+0xc4>
     af0:	00001097          	auipc	ra,0x1
     af4:	d84080e7          	jalr	-636(ra) # 1874 <printf>
     af8:	00001097          	auipc	ra,0x1
     afc:	b84080e7          	jalr	-1148(ra) # 167c <display_refresh>
     b00:	000ba023          	sw	zero,0(s7)
     b04:	00001097          	auipc	ra,0x1
     b08:	b78080e7          	jalr	-1160(ra) # 167c <display_refresh>
     b0c:	fffff097          	auipc	ra,0xfffff
     b10:	604080e7          	jalr	1540(ra) # 110 <clear_audio>
     b14:	000077b7          	lui	a5,0x7
     b18:	45878513          	addi	a0,a5,1112 # 7458 <tmp>
     b1c:	fffff097          	auipc	ra,0xfffff
     b20:	7c0080e7          	jalr	1984(ra) # 2dc <play_music>
     b24:	00001097          	auipc	ra,0x1
     b28:	a0c080e7          	jalr	-1524(ra) # 1530 <display_framebuffer>
     b2c:	00004637          	lui	a2,0x4
     b30:	00000593          	li	a1,0
     b34:	00000097          	auipc	ra,0x0
     b38:	72c080e7          	jalr	1836(ra) # 1260 <memset>
     b3c:	00000593          	li	a1,0
     b40:	00000513          	li	a0,0
     b44:	00001097          	auipc	ra,0x1
     b48:	9f8080e7          	jalr	-1544(ra) # 153c <display_set_cursor>
     b4c:	00000593          	li	a1,0
     b50:	0ff00513          	li	a0,255
     b54:	00001097          	auipc	ra,0x1
     b58:	9fc080e7          	jalr	-1540(ra) # 1550 <display_set_front_back_color>
     b5c:	00005537          	lui	a0,0x5
     b60:	e3450513          	addi	a0,a0,-460 # 4e34 <LEDS+0xe8>
     b64:	00001097          	auipc	ra,0x1
     b68:	d10080e7          	jalr	-752(ra) # 1874 <printf>
     b6c:	00001097          	auipc	ra,0x1
     b70:	b10080e7          	jalr	-1264(ra) # 167c <display_refresh>
     b74:	000f4537          	lui	a0,0xf4
     b78:	24050513          	addi	a0,a0,576 # f4240 <__stacktop+0xe4240>
     b7c:	fffff097          	auipc	ra,0xfffff
     b80:	4a0080e7          	jalr	1184(ra) # 1c <pause>
     b84:	ea9ff06f          	j	a2c <main+0x12c>
     b88:	00005537          	lui	a0,0x5
     b8c:	e2450513          	addi	a0,a0,-476 # 4e24 <LEDS+0xd8>
     b90:	00001097          	auipc	ra,0x1
     b94:	ce4080e7          	jalr	-796(ra) # 1874 <printf>
     b98:	00001097          	auipc	ra,0x1
     b9c:	ae4080e7          	jalr	-1308(ra) # 167c <display_refresh>
     ba0:	00001097          	auipc	ra,0x1
     ba4:	990080e7          	jalr	-1648(ra) # 1530 <display_framebuffer>
     ba8:	00090693          	mv	a3,s2
     bac:	00004637          	lui	a2,0x4
     bb0:	00100593          	li	a1,1
     bb4:	00003097          	auipc	ra,0x3
     bb8:	76c080e7          	jalr	1900(ra) # 4320 <fl_fread>
     bbc:	00001097          	auipc	ra,0x1
     bc0:	ac0080e7          	jalr	-1344(ra) # 167c <display_refresh>
     bc4:	00090513          	mv	a0,s2
     bc8:	00003097          	auipc	ra,0x3
     bcc:	67c080e7          	jalr	1660(ra) # 4244 <fl_fclose>
     bd0:	f31ff06f          	j	b00 <main+0x200>

00000bd4 <pause>:
     bd4:	c0002773          	rdcycle	a4
     bd8:	c00027f3          	rdcycle	a5
     bdc:	40e787b3          	sub	a5,a5,a4
     be0:	fea7ece3          	bltu	a5,a0,bd8 <pause+0x4>
     be4:	00008067          	ret

00000be8 <sdcard_idle>:
     be8:	00008067          	ret

00000bec <sdcard_select>:
     bec:	000057b7          	lui	a5,0x5
     bf0:	d407a783          	lw	a5,-704(a5) # 4d40 <SDCARD>
     bf4:	00200713          	li	a4,2
     bf8:	00e7a023          	sw	a4,0(a5)
     bfc:	00008067          	ret

00000c00 <sdcard_ponder>:
     c00:	000056b7          	lui	a3,0x5
     c04:	d406a683          	lw	a3,-704(a3) # 4d40 <SDCARD>
     c08:	01000793          	li	a5,16
     c0c:	00000713          	li	a4,0
     c10:	00676613          	ori	a2,a4,6
     c14:	00c6a023          	sw	a2,0(a3)
     c18:	00174713          	xori	a4,a4,1
     c1c:	00000013          	nop
     c20:	fff78793          	addi	a5,a5,-1
     c24:	fe0796e3          	bnez	a5,c10 <sdcard_ponder+0x10>
     c28:	00008067          	ret

00000c2c <sdcard_unselect>:
     c2c:	000057b7          	lui	a5,0x5
     c30:	d407a783          	lw	a5,-704(a5) # 4d40 <SDCARD>
     c34:	00600713          	li	a4,6
     c38:	00e7a023          	sw	a4,0(a5)
     c3c:	00008067          	ret

00000c40 <sdcard_send>:
     c40:	000057b7          	lui	a5,0x5
     c44:	d407a783          	lw	a5,-704(a5) # 4d40 <SDCARD>
     c48:	00655713          	srli	a4,a0,0x6
     c4c:	00277713          	andi	a4,a4,2
     c50:	00e7a023          	sw	a4,0(a5)
     c54:	00176713          	ori	a4,a4,1
     c58:	00e7a023          	sw	a4,0(a5)
     c5c:	00555713          	srli	a4,a0,0x5
     c60:	00277713          	andi	a4,a4,2
     c64:	00e7a023          	sw	a4,0(a5)
     c68:	00176713          	ori	a4,a4,1
     c6c:	00e7a023          	sw	a4,0(a5)
     c70:	00455713          	srli	a4,a0,0x4
     c74:	00277713          	andi	a4,a4,2
     c78:	00e7a023          	sw	a4,0(a5)
     c7c:	00176713          	ori	a4,a4,1
     c80:	00e7a023          	sw	a4,0(a5)
     c84:	00355713          	srli	a4,a0,0x3
     c88:	00277713          	andi	a4,a4,2
     c8c:	00e7a023          	sw	a4,0(a5)
     c90:	00176713          	ori	a4,a4,1
     c94:	00e7a023          	sw	a4,0(a5)
     c98:	00255713          	srli	a4,a0,0x2
     c9c:	00277713          	andi	a4,a4,2
     ca0:	00e7a023          	sw	a4,0(a5)
     ca4:	00176713          	ori	a4,a4,1
     ca8:	00e7a023          	sw	a4,0(a5)
     cac:	00155713          	srli	a4,a0,0x1
     cb0:	00277713          	andi	a4,a4,2
     cb4:	00e7a023          	sw	a4,0(a5)
     cb8:	00176713          	ori	a4,a4,1
     cbc:	00e7a023          	sw	a4,0(a5)
     cc0:	00257713          	andi	a4,a0,2
     cc4:	00e7a023          	sw	a4,0(a5)
     cc8:	00151513          	slli	a0,a0,0x1
     ccc:	00176713          	ori	a4,a4,1
     cd0:	00e7a023          	sw	a4,0(a5)
     cd4:	00257513          	andi	a0,a0,2
     cd8:	00a7a023          	sw	a0,0(a5)
     cdc:	00156513          	ori	a0,a0,1
     ce0:	00a7a023          	sw	a0,0(a5)
     ce4:	00200713          	li	a4,2
     ce8:	00e7a023          	sw	a4,0(a5)
     cec:	000057b7          	lui	a5,0x5
     cf0:	2ac7a783          	lw	a5,684(a5) # 52ac <sdcard_while_loading_callback>
     cf4:	00078067          	jr	a5

00000cf8 <sdcard_read>:
     cf8:	fd010113          	addi	sp,sp,-48
     cfc:	fff50793          	addi	a5,a0,-1
     d00:	03212023          	sw	s2,32(sp)
     d04:	00100913          	li	s2,1
     d08:	00f91933          	sll	s2,s2,a5
     d0c:	000057b7          	lui	a5,0x5
     d10:	01312e23          	sw	s3,28(sp)
     d14:	d407a983          	lw	s3,-704(a5) # 4d40 <SDCARD>
     d18:	02812423          	sw	s0,40(sp)
     d1c:	02912223          	sw	s1,36(sp)
     d20:	01412c23          	sw	s4,24(sp)
     d24:	01512a23          	sw	s5,20(sp)
     d28:	01612823          	sw	s6,16(sp)
     d2c:	02112623          	sw	ra,44(sp)
     d30:	0ff00413          	li	s0,255
     d34:	00000493          	li	s1,0
     d38:	00300a13          	li	s4,3
     d3c:	00200a93          	li	s5,2
     d40:	00005b37          	lui	s6,0x5
     d44:	02058c63          	beqz	a1,d7c <sdcard_read+0x84>
     d48:	012477b3          	and	a5,s0,s2
     d4c:	02079a63          	bnez	a5,d80 <sdcard_read+0x88>
     d50:	02c12083          	lw	ra,44(sp)
     d54:	0ff47513          	zext.b	a0,s0
     d58:	02812403          	lw	s0,40(sp)
     d5c:	02412483          	lw	s1,36(sp)
     d60:	02012903          	lw	s2,32(sp)
     d64:	01c12983          	lw	s3,28(sp)
     d68:	01812a03          	lw	s4,24(sp)
     d6c:	01412a83          	lw	s5,20(sp)
     d70:	01012b03          	lw	s6,16(sp)
     d74:	03010113          	addi	sp,sp,48
     d78:	00008067          	ret
     d7c:	fca4dae3          	bge	s1,a0,d50 <sdcard_read+0x58>
     d80:	0149a023          	sw	s4,0(s3)
     d84:	0159a023          	sw	s5,0(s3)
     d88:	0009a783          	lw	a5,0(s3)
     d8c:	00141413          	slli	s0,s0,0x1
     d90:	00b12623          	sw	a1,12(sp)
     d94:	00f46433          	or	s0,s0,a5
     d98:	2acb2783          	lw	a5,684(s6) # 52ac <sdcard_while_loading_callback>
     d9c:	00a12423          	sw	a0,8(sp)
     da0:	00148493          	addi	s1,s1,1
     da4:	000780e7          	jalr	a5
     da8:	00c12583          	lw	a1,12(sp)
     dac:	00812503          	lw	a0,8(sp)
     db0:	f95ff06f          	j	d44 <sdcard_read+0x4c>

00000db4 <sdcard_get>:
     db4:	fe010113          	addi	sp,sp,-32
     db8:	00112e23          	sw	ra,28(sp)
     dbc:	00812c23          	sw	s0,24(sp)
     dc0:	00912a23          	sw	s1,20(sp)
     dc4:	00050413          	mv	s0,a0
     dc8:	00b12623          	sw	a1,12(sp)
     dcc:	00000097          	auipc	ra,0x0
     dd0:	e20080e7          	jalr	-480(ra) # bec <sdcard_select>
     dd4:	00c12583          	lw	a1,12(sp)
     dd8:	00040513          	mv	a0,s0
     ddc:	00100493          	li	s1,1
     de0:	00000097          	auipc	ra,0x0
     de4:	f18080e7          	jalr	-232(ra) # cf8 <sdcard_read>
     de8:	00345413          	srli	s0,s0,0x3
     dec:	0284c463          	blt	s1,s0,e14 <sdcard_get+0x60>
     df0:	00a12623          	sw	a0,12(sp)
     df4:	00000097          	auipc	ra,0x0
     df8:	e38080e7          	jalr	-456(ra) # c2c <sdcard_unselect>
     dfc:	01c12083          	lw	ra,28(sp)
     e00:	01812403          	lw	s0,24(sp)
     e04:	00c12503          	lw	a0,12(sp)
     e08:	01412483          	lw	s1,20(sp)
     e0c:	02010113          	addi	sp,sp,32
     e10:	00008067          	ret
     e14:	00000593          	li	a1,0
     e18:	00800513          	li	a0,8
     e1c:	00000097          	auipc	ra,0x0
     e20:	edc080e7          	jalr	-292(ra) # cf8 <sdcard_read>
     e24:	00148493          	addi	s1,s1,1
     e28:	fc5ff06f          	j	dec <sdcard_get+0x38>

00000e2c <sdcard_cmd>:
     e2c:	ff010113          	addi	sp,sp,-16
     e30:	00812423          	sw	s0,8(sp)
     e34:	00912223          	sw	s1,4(sp)
     e38:	01212023          	sw	s2,0(sp)
     e3c:	00112623          	sw	ra,12(sp)
     e40:	00050913          	mv	s2,a0
     e44:	00000413          	li	s0,0
     e48:	00000097          	auipc	ra,0x0
     e4c:	da4080e7          	jalr	-604(ra) # bec <sdcard_select>
     e50:	00600493          	li	s1,6
     e54:	008907b3          	add	a5,s2,s0
     e58:	0007c503          	lbu	a0,0(a5)
     e5c:	00140413          	addi	s0,s0,1
     e60:	00000097          	auipc	ra,0x0
     e64:	de0080e7          	jalr	-544(ra) # c40 <sdcard_send>
     e68:	fe9416e3          	bne	s0,s1,e54 <sdcard_cmd+0x28>
     e6c:	00812403          	lw	s0,8(sp)
     e70:	00c12083          	lw	ra,12(sp)
     e74:	00412483          	lw	s1,4(sp)
     e78:	00012903          	lw	s2,0(sp)
     e7c:	01010113          	addi	sp,sp,16
     e80:	00000317          	auipc	t1,0x0
     e84:	dac30067          	jr	-596(t1) # c2c <sdcard_unselect>

00000e88 <sdcard_start_sector>:
     e88:	ff010113          	addi	sp,sp,-16
     e8c:	00112623          	sw	ra,12(sp)
     e90:	00812423          	sw	s0,8(sp)
     e94:	00050413          	mv	s0,a0
     e98:	00000097          	auipc	ra,0x0
     e9c:	d54080e7          	jalr	-684(ra) # bec <sdcard_select>
     ea0:	05100513          	li	a0,81
     ea4:	00000097          	auipc	ra,0x0
     ea8:	d9c080e7          	jalr	-612(ra) # c40 <sdcard_send>
     eac:	01845513          	srli	a0,s0,0x18
     eb0:	00000097          	auipc	ra,0x0
     eb4:	d90080e7          	jalr	-624(ra) # c40 <sdcard_send>
     eb8:	41045513          	srai	a0,s0,0x10
     ebc:	0ff57513          	zext.b	a0,a0
     ec0:	00000097          	auipc	ra,0x0
     ec4:	d80080e7          	jalr	-640(ra) # c40 <sdcard_send>
     ec8:	40845513          	srai	a0,s0,0x8
     ecc:	0ff57513          	zext.b	a0,a0
     ed0:	00000097          	auipc	ra,0x0
     ed4:	d70080e7          	jalr	-656(ra) # c40 <sdcard_send>
     ed8:	0ff47513          	zext.b	a0,s0
     edc:	00000097          	auipc	ra,0x0
     ee0:	d64080e7          	jalr	-668(ra) # c40 <sdcard_send>
     ee4:	05500513          	li	a0,85
     ee8:	00000097          	auipc	ra,0x0
     eec:	d58080e7          	jalr	-680(ra) # c40 <sdcard_send>
     ef0:	00000097          	auipc	ra,0x0
     ef4:	d3c080e7          	jalr	-708(ra) # c2c <sdcard_unselect>
     ef8:	00812403          	lw	s0,8(sp)
     efc:	00c12083          	lw	ra,12(sp)
     f00:	00100593          	li	a1,1
     f04:	00800513          	li	a0,8
     f08:	01010113          	addi	sp,sp,16
     f0c:	00000317          	auipc	t1,0x0
     f10:	ea830067          	jr	-344(t1) # db4 <sdcard_get>

00000f14 <sdcard_read_sector>:
     f14:	ff010113          	addi	sp,sp,-16
     f18:	00812423          	sw	s0,8(sp)
     f1c:	00112623          	sw	ra,12(sp)
     f20:	00912223          	sw	s1,4(sp)
     f24:	01212023          	sw	s2,0(sp)
     f28:	00058413          	mv	s0,a1
     f2c:	00000097          	auipc	ra,0x0
     f30:	f5c080e7          	jalr	-164(ra) # e88 <sdcard_start_sector>
     f34:	04051863          	bnez	a0,f84 <sdcard_read_sector+0x70>
     f38:	00100593          	li	a1,1
     f3c:	00058513          	mv	a0,a1
     f40:	00000097          	auipc	ra,0x0
     f44:	e74080e7          	jalr	-396(ra) # db4 <sdcard_get>
     f48:	00000493          	li	s1,0
     f4c:	20000913          	li	s2,512
     f50:	00000593          	li	a1,0
     f54:	00800513          	li	a0,8
     f58:	00000097          	auipc	ra,0x0
     f5c:	e5c080e7          	jalr	-420(ra) # db4 <sdcard_get>
     f60:	009407b3          	add	a5,s0,s1
     f64:	00a78023          	sb	a0,0(a5)
     f68:	00148493          	addi	s1,s1,1
     f6c:	ff2492e3          	bne	s1,s2,f50 <sdcard_read_sector+0x3c>
     f70:	00100593          	li	a1,1
     f74:	01000513          	li	a0,16
     f78:	20040413          	addi	s0,s0,512
     f7c:	00000097          	auipc	ra,0x0
     f80:	e38080e7          	jalr	-456(ra) # db4 <sdcard_get>
     f84:	00c12083          	lw	ra,12(sp)
     f88:	00040513          	mv	a0,s0
     f8c:	00812403          	lw	s0,8(sp)
     f90:	00412483          	lw	s1,4(sp)
     f94:	00012903          	lw	s2,0(sp)
     f98:	01010113          	addi	sp,sp,16
     f9c:	00008067          	ret

00000fa0 <sdcard_preinit>:
     fa0:	ff010113          	addi	sp,sp,-16
     fa4:	000057b7          	lui	a5,0x5
     fa8:	00812423          	sw	s0,8(sp)
     fac:	d407a403          	lw	s0,-704(a5) # 4d40 <SDCARD>
     fb0:	00112623          	sw	ra,12(sp)
     fb4:	00600793          	li	a5,6
     fb8:	01313537          	lui	a0,0x1313
     fbc:	00f42023          	sw	a5,0(s0)
     fc0:	d0050513          	addi	a0,a0,-768 # 1312d00 <__stacktop+0x1302d00>
     fc4:	00000097          	auipc	ra,0x0
     fc8:	c10080e7          	jalr	-1008(ra) # bd4 <pause>
     fcc:	0a000793          	li	a5,160
     fd0:	00000713          	li	a4,0
     fd4:	00676693          	ori	a3,a4,6
     fd8:	00d42023          	sw	a3,0(s0)
     fdc:	fff78793          	addi	a5,a5,-1
     fe0:	00174713          	xori	a4,a4,1
     fe4:	fe0798e3          	bnez	a5,fd4 <sdcard_preinit+0x34>
     fe8:	00600793          	li	a5,6
     fec:	00c12083          	lw	ra,12(sp)
     ff0:	00f42023          	sw	a5,0(s0)
     ff4:	00812403          	lw	s0,8(sp)
     ff8:	01010113          	addi	sp,sp,16
     ffc:	00008067          	ret

00001000 <sdcard_init>:
    1000:	000017b7          	lui	a5,0x1
    1004:	be878793          	addi	a5,a5,-1048 # be8 <sdcard_idle>
    1008:	00005737          	lui	a4,0x5
    100c:	fe010113          	addi	sp,sp,-32
    1010:	2af72623          	sw	a5,684(a4) # 52ac <sdcard_while_loading_callback>
    1014:	000057b7          	lui	a5,0x5
    1018:	00812c23          	sw	s0,24(sp)
    101c:	00912a23          	sw	s1,20(sp)
    1020:	00112e23          	sw	ra,28(sp)
    1024:	d3078493          	addi	s1,a5,-720 # 4d30 <cmd0>
    1028:	0ff00413          	li	s0,255
    102c:	00000097          	auipc	ra,0x0
    1030:	f74080e7          	jalr	-140(ra) # fa0 <sdcard_preinit>
    1034:	00048513          	mv	a0,s1
    1038:	00000097          	auipc	ra,0x0
    103c:	df4080e7          	jalr	-524(ra) # e2c <sdcard_cmd>
    1040:	00100593          	li	a1,1
    1044:	00800513          	li	a0,8
    1048:	00000097          	auipc	ra,0x0
    104c:	d6c080e7          	jalr	-660(ra) # db4 <sdcard_get>
    1050:	00a12623          	sw	a0,12(sp)
    1054:	00000097          	auipc	ra,0x0
    1058:	bac080e7          	jalr	-1108(ra) # c00 <sdcard_ponder>
    105c:	00c12503          	lw	a0,12(sp)
    1060:	00851c63          	bne	a0,s0,1078 <sdcard_init+0x78>
    1064:	01313537          	lui	a0,0x1313
    1068:	d0050513          	addi	a0,a0,-768 # 1312d00 <__stacktop+0x1302d00>
    106c:	00000097          	auipc	ra,0x0
    1070:	b68080e7          	jalr	-1176(ra) # bd4 <pause>
    1074:	fb9ff06f          	j	102c <sdcard_init+0x2c>
    1078:	00005537          	lui	a0,0x5
    107c:	d2850513          	addi	a0,a0,-728 # 4d28 <cmd8>
    1080:	00000097          	auipc	ra,0x0
    1084:	dac080e7          	jalr	-596(ra) # e2c <sdcard_cmd>
    1088:	00100593          	li	a1,1
    108c:	02800513          	li	a0,40
    1090:	00000097          	auipc	ra,0x0
    1094:	d24080e7          	jalr	-732(ra) # db4 <sdcard_get>
    1098:	00000097          	auipc	ra,0x0
    109c:	b68080e7          	jalr	-1176(ra) # c00 <sdcard_ponder>
    10a0:	000057b7          	lui	a5,0x5
    10a4:	d2078413          	addi	s0,a5,-736 # 4d20 <cmd55>
    10a8:	000057b7          	lui	a5,0x5
    10ac:	d1878493          	addi	s1,a5,-744 # 4d18 <acmd41>
    10b0:	00040513          	mv	a0,s0
    10b4:	00000097          	auipc	ra,0x0
    10b8:	d78080e7          	jalr	-648(ra) # e2c <sdcard_cmd>
    10bc:	00100593          	li	a1,1
    10c0:	00800513          	li	a0,8
    10c4:	00000097          	auipc	ra,0x0
    10c8:	cf0080e7          	jalr	-784(ra) # db4 <sdcard_get>
    10cc:	00000097          	auipc	ra,0x0
    10d0:	b34080e7          	jalr	-1228(ra) # c00 <sdcard_ponder>
    10d4:	00048513          	mv	a0,s1
    10d8:	00000097          	auipc	ra,0x0
    10dc:	d54080e7          	jalr	-684(ra) # e2c <sdcard_cmd>
    10e0:	00100593          	li	a1,1
    10e4:	00800513          	li	a0,8
    10e8:	00000097          	auipc	ra,0x0
    10ec:	ccc080e7          	jalr	-820(ra) # db4 <sdcard_get>
    10f0:	00a12623          	sw	a0,12(sp)
    10f4:	00000097          	auipc	ra,0x0
    10f8:	b0c080e7          	jalr	-1268(ra) # c00 <sdcard_ponder>
    10fc:	00c12503          	lw	a0,12(sp)
    1100:	00050c63          	beqz	a0,1118 <sdcard_init+0x118>
    1104:	001e8537          	lui	a0,0x1e8
    1108:	48050513          	addi	a0,a0,1152 # 1e8480 <__stacktop+0x1d8480>
    110c:	00000097          	auipc	ra,0x0
    1110:	ac8080e7          	jalr	-1336(ra) # bd4 <pause>
    1114:	f9dff06f          	j	10b0 <sdcard_init+0xb0>
    1118:	00005537          	lui	a0,0x5
    111c:	d1050513          	addi	a0,a0,-752 # 4d10 <cmd16>
    1120:	00000097          	auipc	ra,0x0
    1124:	d0c080e7          	jalr	-756(ra) # e2c <sdcard_cmd>
    1128:	00100593          	li	a1,1
    112c:	00800513          	li	a0,8
    1130:	00000097          	auipc	ra,0x0
    1134:	c84080e7          	jalr	-892(ra) # db4 <sdcard_get>
    1138:	01812403          	lw	s0,24(sp)
    113c:	01c12083          	lw	ra,28(sp)
    1140:	01412483          	lw	s1,20(sp)
    1144:	02010113          	addi	sp,sp,32
    1148:	00000317          	auipc	t1,0x0
    114c:	ab830067          	jr	-1352(t1) # c00 <sdcard_ponder>

00001150 <sdcard_readsector>:
    1150:	04060663          	beqz	a2,119c <sdcard_readsector+0x4c>
    1154:	ff010113          	addi	sp,sp,-16
    1158:	00812423          	sw	s0,8(sp)
    115c:	00912223          	sw	s1,4(sp)
    1160:	00112623          	sw	ra,12(sp)
    1164:	00050413          	mv	s0,a0
    1168:	00a604b3          	add	s1,a2,a0
    116c:	00040513          	mv	a0,s0
    1170:	00000097          	auipc	ra,0x0
    1174:	da4080e7          	jalr	-604(ra) # f14 <sdcard_read_sector>
    1178:	00140413          	addi	s0,s0,1
    117c:	00050593          	mv	a1,a0
    1180:	fe9416e3          	bne	s0,s1,116c <sdcard_readsector+0x1c>
    1184:	00c12083          	lw	ra,12(sp)
    1188:	00812403          	lw	s0,8(sp)
    118c:	00412483          	lw	s1,4(sp)
    1190:	00100513          	li	a0,1
    1194:	01010113          	addi	sp,sp,16
    1198:	00008067          	ret
    119c:	00000513          	li	a0,0
    11a0:	00008067          	ret

000011a4 <sdcard_writesector>:
    11a4:	00000513          	li	a0,0
    11a8:	00008067          	ret

000011ac <__divsi3>:
    11ac:	06054063          	bltz	a0,120c <__umodsi3+0x10>
    11b0:	0605c663          	bltz	a1,121c <__umodsi3+0x20>

000011b4 <__udivsi3>:
    11b4:	00058613          	mv	a2,a1
    11b8:	00050593          	mv	a1,a0
    11bc:	fff00513          	li	a0,-1
    11c0:	02060c63          	beqz	a2,11f8 <__udivsi3+0x44>
    11c4:	00100693          	li	a3,1
    11c8:	00b67a63          	bgeu	a2,a1,11dc <__udivsi3+0x28>
    11cc:	00c05863          	blez	a2,11dc <__udivsi3+0x28>
    11d0:	00161613          	slli	a2,a2,0x1
    11d4:	00169693          	slli	a3,a3,0x1
    11d8:	feb66ae3          	bltu	a2,a1,11cc <__udivsi3+0x18>
    11dc:	00000513          	li	a0,0
    11e0:	00c5e663          	bltu	a1,a2,11ec <__udivsi3+0x38>
    11e4:	40c585b3          	sub	a1,a1,a2
    11e8:	00d56533          	or	a0,a0,a3
    11ec:	0016d693          	srli	a3,a3,0x1
    11f0:	00165613          	srli	a2,a2,0x1
    11f4:	fe0696e3          	bnez	a3,11e0 <__udivsi3+0x2c>
    11f8:	00008067          	ret

000011fc <__umodsi3>:
    11fc:	00008293          	mv	t0,ra
    1200:	fb5ff0ef          	jal	11b4 <__udivsi3>
    1204:	00058513          	mv	a0,a1
    1208:	00028067          	jr	t0
    120c:	40a00533          	neg	a0,a0
    1210:	0005d863          	bgez	a1,1220 <__umodsi3+0x24>
    1214:	40b005b3          	neg	a1,a1
    1218:	f95ff06f          	j	11ac <__divsi3>
    121c:	40b005b3          	neg	a1,a1
    1220:	00008293          	mv	t0,ra
    1224:	f89ff0ef          	jal	11ac <__divsi3>
    1228:	40a00533          	neg	a0,a0
    122c:	00028067          	jr	t0

00001230 <__modsi3>:
    1230:	00008293          	mv	t0,ra
    1234:	0005ca63          	bltz	a1,1248 <__modsi3+0x18>
    1238:	00054c63          	bltz	a0,1250 <__modsi3+0x20>
    123c:	f79ff0ef          	jal	11b4 <__udivsi3>
    1240:	00058513          	mv	a0,a1
    1244:	00028067          	jr	t0
    1248:	40b005b3          	neg	a1,a1
    124c:	fe0558e3          	bgez	a0,123c <__modsi3+0xc>
    1250:	40a00533          	neg	a0,a0
    1254:	f61ff0ef          	jal	11b4 <__udivsi3>
    1258:	40b00533          	neg	a0,a1
    125c:	00028067          	jr	t0

00001260 <memset>:
    1260:	00c50633          	add	a2,a0,a2
    1264:	00050793          	mv	a5,a0
    1268:	00c79463          	bne	a5,a2,1270 <memset+0x10>
    126c:	00008067          	ret
    1270:	00178793          	addi	a5,a5,1
    1274:	feb78fa3          	sb	a1,-1(a5)
    1278:	ff1ff06f          	j	1268 <memset+0x8>

0000127c <memcpy>:
    127c:	00000793          	li	a5,0
    1280:	00c79463          	bne	a5,a2,1288 <memcpy+0xc>
    1284:	00008067          	ret
    1288:	00f58733          	add	a4,a1,a5
    128c:	00074683          	lbu	a3,0(a4)
    1290:	00f50733          	add	a4,a0,a5
    1294:	00178793          	addi	a5,a5,1
    1298:	00d70023          	sb	a3,0(a4)
    129c:	fe5ff06f          	j	1280 <memcpy+0x4>

000012a0 <strlen>:
    12a0:	00000793          	li	a5,0
    12a4:	00f50733          	add	a4,a0,a5
    12a8:	00074703          	lbu	a4,0(a4)
    12ac:	00071663          	bnez	a4,12b8 <strlen+0x18>
    12b0:	00078513          	mv	a0,a5
    12b4:	00008067          	ret
    12b8:	00178793          	addi	a5,a5,1
    12bc:	fe9ff06f          	j	12a4 <strlen+0x4>

000012c0 <strncmp>:
    12c0:	00000793          	li	a5,0
    12c4:	00c79663          	bne	a5,a2,12d0 <strncmp+0x10>
    12c8:	00000513          	li	a0,0
    12cc:	00008067          	ret
    12d0:	00f50733          	add	a4,a0,a5
    12d4:	00074683          	lbu	a3,0(a4)
    12d8:	00f58733          	add	a4,a1,a5
    12dc:	00074703          	lbu	a4,0(a4)
    12e0:	00e6e863          	bltu	a3,a4,12f0 <strncmp+0x30>
    12e4:	00d76a63          	bltu	a4,a3,12f8 <strncmp+0x38>
    12e8:	00178793          	addi	a5,a5,1
    12ec:	fd9ff06f          	j	12c4 <strncmp+0x4>
    12f0:	fff00513          	li	a0,-1
    12f4:	00008067          	ret
    12f8:	00100513          	li	a0,1
    12fc:	00008067          	ret

00001300 <strncpy>:
    1300:	00000793          	li	a5,0
    1304:	00c79463          	bne	a5,a2,130c <strncpy+0xc>
    1308:	00008067          	ret
    130c:	00f58733          	add	a4,a1,a5
    1310:	00074683          	lbu	a3,0(a4)
    1314:	00f50733          	add	a4,a0,a5
    1318:	00178793          	addi	a5,a5,1
    131c:	00d70023          	sb	a3,0(a4)
    1320:	fe5ff06f          	j	1304 <strncpy+0x4>

00001324 <strcat>:
    1324:	00050793          	mv	a5,a0
    1328:	0007c683          	lbu	a3,0(a5)
    132c:	00078713          	mv	a4,a5
    1330:	00178793          	addi	a5,a5,1
    1334:	fe069ae3          	bnez	a3,1328 <strcat+0x4>
    1338:	0005c783          	lbu	a5,0(a1)
    133c:	00158593          	addi	a1,a1,1
    1340:	00170713          	addi	a4,a4,1
    1344:	fef70fa3          	sb	a5,-1(a4)
    1348:	fe0798e3          	bnez	a5,1338 <strcat+0x14>
    134c:	00008067          	ret

00001350 <oled_wait>:
    1350:	00000013          	nop
    1354:	00000013          	nop
    1358:	00000013          	nop
    135c:	00000013          	nop
    1360:	00000013          	nop
    1364:	00000013          	nop
    1368:	00000013          	nop
    136c:	00008067          	ret

00001370 <oled_init_mode>:
    1370:	000057b7          	lui	a5,0x5
    1374:	d447a703          	lw	a4,-700(a5) # 4d44 <OLED_RST>
    1378:	fe010113          	addi	sp,sp,-32
    137c:	00112e23          	sw	ra,28(sp)
    1380:	00812c23          	sw	s0,24(sp)
    1384:	00072023          	sw	zero,0(a4)
    1388:	00040737          	lui	a4,0x40
    138c:	00000013          	nop
    1390:	fff70713          	addi	a4,a4,-1 # 3ffff <__stacktop+0x2ffff>
    1394:	fe071ce3          	bnez	a4,138c <oled_init_mode+0x1c>
    1398:	d447a703          	lw	a4,-700(a5)
    139c:	00100693          	li	a3,1
    13a0:	00d72023          	sw	a3,0(a4)
    13a4:	00040737          	lui	a4,0x40
    13a8:	00000013          	nop
    13ac:	fff70713          	addi	a4,a4,-1 # 3ffff <__stacktop+0x2ffff>
    13b0:	fe071ce3          	bnez	a4,13a8 <oled_init_mode+0x38>
    13b4:	d447a783          	lw	a5,-700(a5)
    13b8:	0007a023          	sw	zero,0(a5)
    13bc:	000407b7          	lui	a5,0x40
    13c0:	00000013          	nop
    13c4:	fff78793          	addi	a5,a5,-1 # 3ffff <__stacktop+0x2ffff>
    13c8:	fe079ce3          	bnez	a5,13c0 <oled_init_mode+0x50>
    13cc:	00005737          	lui	a4,0x5
    13d0:	d4872783          	lw	a5,-696(a4) # 4d48 <OLED>
    13d4:	2af00693          	li	a3,687
    13d8:	00d7a023          	sw	a3,0(a5)
    13dc:	000407b7          	lui	a5,0x40
    13e0:	00000013          	nop
    13e4:	fff78793          	addi	a5,a5,-1 # 3ffff <__stacktop+0x2ffff>
    13e8:	fe079ce3          	bnez	a5,13e0 <oled_init_mode+0x70>
    13ec:	d4872403          	lw	s0,-696(a4)
    13f0:	2a000793          	li	a5,672
    13f4:	00a12623          	sw	a0,12(sp)
    13f8:	00f42023          	sw	a5,0(s0)
    13fc:	00000097          	auipc	ra,0x0
    1400:	f54080e7          	jalr	-172(ra) # 1350 <oled_wait>
    1404:	00c12503          	lw	a0,12(sp)
    1408:	4a000793          	li	a5,1184
    140c:	00050463          	beqz	a0,1414 <oled_init_mode+0xa4>
    1410:	42000793          	li	a5,1056
    1414:	00f42023          	sw	a5,0(s0)
    1418:	00000097          	auipc	ra,0x0
    141c:	f38080e7          	jalr	-200(ra) # 1350 <oled_wait>
    1420:	2fd00793          	li	a5,765
    1424:	00f42023          	sw	a5,0(s0)
    1428:	00000097          	auipc	ra,0x0
    142c:	f28080e7          	jalr	-216(ra) # 1350 <oled_wait>
    1430:	4b100793          	li	a5,1201
    1434:	00f42023          	sw	a5,0(s0)
    1438:	00000097          	auipc	ra,0x0
    143c:	f18080e7          	jalr	-232(ra) # 1350 <oled_wait>
    1440:	2a200793          	li	a5,674
    1444:	00f42023          	sw	a5,0(s0)
    1448:	00000097          	auipc	ra,0x0
    144c:	f08080e7          	jalr	-248(ra) # 1350 <oled_wait>
    1450:	40000793          	li	a5,1024
    1454:	00f42023          	sw	a5,0(s0)
    1458:	01812403          	lw	s0,24(sp)
    145c:	01c12083          	lw	ra,28(sp)
    1460:	02010113          	addi	sp,sp,32
    1464:	00000317          	auipc	t1,0x0
    1468:	eec30067          	jr	-276(t1) # 1350 <oled_wait>

0000146c <oled_init>:
    146c:	00000513          	li	a0,0
    1470:	00000317          	auipc	t1,0x0
    1474:	f0030067          	jr	-256(t1) # 1370 <oled_init_mode>

00001478 <oled_fullscreen>:
    1478:	ff010113          	addi	sp,sp,-16
    147c:	000057b7          	lui	a5,0x5
    1480:	00812423          	sw	s0,8(sp)
    1484:	d487a403          	lw	s0,-696(a5) # 4d48 <OLED>
    1488:	00112623          	sw	ra,12(sp)
    148c:	00912223          	sw	s1,4(sp)
    1490:	01212023          	sw	s2,0(sp)
    1494:	21500793          	li	a5,533
    1498:	00f42023          	sw	a5,0(s0)
    149c:	40000913          	li	s2,1024
    14a0:	00000097          	auipc	ra,0x0
    14a4:	eb0080e7          	jalr	-336(ra) # 1350 <oled_wait>
    14a8:	47f00493          	li	s1,1151
    14ac:	01242023          	sw	s2,0(s0)
    14b0:	00000097          	auipc	ra,0x0
    14b4:	ea0080e7          	jalr	-352(ra) # 1350 <oled_wait>
    14b8:	00942023          	sw	s1,0(s0)
    14bc:	00000097          	auipc	ra,0x0
    14c0:	e94080e7          	jalr	-364(ra) # 1350 <oled_wait>
    14c4:	27500793          	li	a5,629
    14c8:	00f42023          	sw	a5,0(s0)
    14cc:	00000097          	auipc	ra,0x0
    14d0:	e84080e7          	jalr	-380(ra) # 1350 <oled_wait>
    14d4:	01242023          	sw	s2,0(s0)
    14d8:	00000097          	auipc	ra,0x0
    14dc:	e78080e7          	jalr	-392(ra) # 1350 <oled_wait>
    14e0:	00942023          	sw	s1,0(s0)
    14e4:	00000097          	auipc	ra,0x0
    14e8:	e6c080e7          	jalr	-404(ra) # 1350 <oled_wait>
    14ec:	25c00793          	li	a5,604
    14f0:	00f42023          	sw	a5,0(s0)
    14f4:	00812403          	lw	s0,8(sp)
    14f8:	00c12083          	lw	ra,12(sp)
    14fc:	00412483          	lw	s1,4(sp)
    1500:	00012903          	lw	s2,0(sp)
    1504:	01010113          	addi	sp,sp,16
    1508:	00000317          	auipc	t1,0x0
    150c:	e4830067          	jr	-440(t1) # 1350 <oled_wait>

00001510 <oled_wait>:
    1510:	00000013          	nop
    1514:	00000013          	nop
    1518:	00000013          	nop
    151c:	00000013          	nop
    1520:	00000013          	nop
    1524:	00000013          	nop
    1528:	00000013          	nop
    152c:	00008067          	ret

00001530 <display_framebuffer>:
    1530:	00007537          	lui	a0,0x7
    1534:	55850513          	addi	a0,a0,1368 # 7558 <framebuffer>
    1538:	00008067          	ret

0000153c <display_set_cursor>:
    153c:	000057b7          	lui	a5,0x5
    1540:	2aa7ac23          	sw	a0,696(a5) # 52b8 <cursor_x>
    1544:	000057b7          	lui	a5,0x5
    1548:	2ab7aa23          	sw	a1,692(a5) # 52b4 <cursor_y>
    154c:	00008067          	ret

00001550 <display_set_front_back_color>:
    1550:	000057b7          	lui	a5,0x5
    1554:	2aa788a3          	sb	a0,689(a5) # 52b1 <front_color>
    1558:	000057b7          	lui	a5,0x5
    155c:	2ab78823          	sb	a1,688(a5) # 52b0 <back_color>
    1560:	00008067          	ret

00001564 <display_putchar>:
    1564:	00a00793          	li	a5,10
    1568:	000055b7          	lui	a1,0x5
    156c:	02f51663          	bne	a0,a5,1598 <display_putchar+0x34>
    1570:	00005737          	lui	a4,0x5
    1574:	2b472783          	lw	a5,692(a4) # 52b4 <cursor_y>
    1578:	2a05ac23          	sw	zero,696(a1) # 52b8 <cursor_x>
    157c:	00878793          	addi	a5,a5,8
    1580:	2af72a23          	sw	a5,692(a4)
    1584:	07f00713          	li	a4,127
    1588:	00f75663          	bge	a4,a5,1594 <display_putchar+0x30>
    158c:	000057b7          	lui	a5,0x5
    1590:	2a07aa23          	sw	zero,692(a5) # 52b4 <cursor_y>
    1594:	00008067          	ret
    1598:	ff010113          	addi	sp,sp,-16
    159c:	00812623          	sw	s0,12(sp)
    15a0:	01f00713          	li	a4,31
    15a4:	2b85a783          	lw	a5,696(a1)
    15a8:	08a75a63          	bge	a4,a0,163c <display_putchar+0xd8>
    15ac:	00005737          	lui	a4,0x5
    15b0:	2b074f83          	lbu	t6,688(a4) # 52b0 <back_color>
    15b4:	00005737          	lui	a4,0x5
    15b8:	2b174283          	lbu	t0,689(a4) # 52b1 <front_color>
    15bc:	000056b7          	lui	a3,0x5
    15c0:	00251713          	slli	a4,a0,0x2
    15c4:	e8c68693          	addi	a3,a3,-372 # 4e8c <font>
    15c8:	00a70733          	add	a4,a4,a0
    15cc:	00d70733          	add	a4,a4,a3
    15d0:	000056b7          	lui	a3,0x5
    15d4:	2b46a683          	lw	a3,692(a3) # 52b4 <cursor_y>
    15d8:	00007637          	lui	a2,0x7
    15dc:	55860613          	addi	a2,a2,1368 # 7558 <framebuffer>
    15e0:	00c686b3          	add	a3,a3,a2
    15e4:	00779613          	slli	a2,a5,0x7
    15e8:	00c686b3          	add	a3,a3,a2
    15ec:	00100f13          	li	t5,1
    15f0:	00000613          	li	a2,0
    15f4:	00500393          	li	t2,5
    15f8:	00800413          	li	s0,8
    15fc:	00cf1eb3          	sll	t4,t5,a2
    1600:	00d608b3          	add	a7,a2,a3
    1604:	00070813          	mv	a6,a4
    1608:	00000513          	li	a0,0
    160c:	f6084303          	lbu	t1,-160(a6)
    1610:	00028e13          	mv	t3,t0
    1614:	01d37333          	and	t1,t1,t4
    1618:	00031463          	bnez	t1,1620 <display_putchar+0xbc>
    161c:	000f8e13          	mv	t3,t6
    1620:	01c88023          	sb	t3,0(a7)
    1624:	00150513          	addi	a0,a0,1
    1628:	00180813          	addi	a6,a6,1
    162c:	08088893          	addi	a7,a7,128
    1630:	fc751ee3          	bne	a0,t2,160c <display_putchar+0xa8>
    1634:	00160613          	addi	a2,a2,1
    1638:	fc8612e3          	bne	a2,s0,15fc <display_putchar+0x98>
    163c:	00578793          	addi	a5,a5,5
    1640:	07f00713          	li	a4,127
    1644:	00f74663          	blt	a4,a5,1650 <display_putchar+0xec>
    1648:	2af5ac23          	sw	a5,696(a1)
    164c:	0240006f          	j	1670 <display_putchar+0x10c>
    1650:	000056b7          	lui	a3,0x5
    1654:	2b46a783          	lw	a5,692(a3) # 52b4 <cursor_y>
    1658:	2a05ac23          	sw	zero,696(a1)
    165c:	00878793          	addi	a5,a5,8
    1660:	2af6aa23          	sw	a5,692(a3)
    1664:	00f75663          	bge	a4,a5,1670 <display_putchar+0x10c>
    1668:	000057b7          	lui	a5,0x5
    166c:	2a07aa23          	sw	zero,692(a5) # 52b4 <cursor_y>
    1670:	00c12403          	lw	s0,12(sp)
    1674:	01010113          	addi	sp,sp,16
    1678:	00008067          	ret

0000167c <display_refresh>:
    167c:	fe010113          	addi	sp,sp,-32
    1680:	000057b7          	lui	a5,0x5
    1684:	01212823          	sw	s2,16(sp)
    1688:	d487a903          	lw	s2,-696(a5) # 4d48 <OLED>
    168c:	01312623          	sw	s3,12(sp)
    1690:	000079b7          	lui	s3,0x7
    1694:	00912a23          	sw	s1,20(sp)
    1698:	01412423          	sw	s4,8(sp)
    169c:	00112e23          	sw	ra,28(sp)
    16a0:	00812c23          	sw	s0,24(sp)
    16a4:	00000493          	li	s1,0
    16a8:	55898993          	addi	s3,s3,1368 # 7558 <framebuffer>
    16ac:	00004a37          	lui	s4,0x4
    16b0:	013487b3          	add	a5,s1,s3
    16b4:	0007c403          	lbu	s0,0(a5)
    16b8:	00148493          	addi	s1,s1,1
    16bc:	00245413          	srli	s0,s0,0x2
    16c0:	40046413          	ori	s0,s0,1024
    16c4:	00892023          	sw	s0,0(s2)
    16c8:	00000097          	auipc	ra,0x0
    16cc:	e48080e7          	jalr	-440(ra) # 1510 <oled_wait>
    16d0:	00892023          	sw	s0,0(s2)
    16d4:	00000097          	auipc	ra,0x0
    16d8:	e3c080e7          	jalr	-452(ra) # 1510 <oled_wait>
    16dc:	00892023          	sw	s0,0(s2)
    16e0:	00000097          	auipc	ra,0x0
    16e4:	e30080e7          	jalr	-464(ra) # 1510 <oled_wait>
    16e8:	fd4494e3          	bne	s1,s4,16b0 <display_refresh+0x34>
    16ec:	01c12083          	lw	ra,28(sp)
    16f0:	01812403          	lw	s0,24(sp)
    16f4:	01412483          	lw	s1,20(sp)
    16f8:	01012903          	lw	s2,16(sp)
    16fc:	00c12983          	lw	s3,12(sp)
    1700:	00812a03          	lw	s4,8(sp)
    1704:	02010113          	addi	sp,sp,32
    1708:	00008067          	ret

0000170c <print_string>:
    170c:	ff010113          	addi	sp,sp,-16
    1710:	00812423          	sw	s0,8(sp)
    1714:	00912223          	sw	s1,4(sp)
    1718:	00112623          	sw	ra,12(sp)
    171c:	00050413          	mv	s0,a0
    1720:	000054b7          	lui	s1,0x5
    1724:	00044503          	lbu	a0,0(s0)
    1728:	00051c63          	bnez	a0,1740 <print_string+0x34>
    172c:	00c12083          	lw	ra,12(sp)
    1730:	00812403          	lw	s0,8(sp)
    1734:	00412483          	lw	s1,4(sp)
    1738:	01010113          	addi	sp,sp,16
    173c:	00008067          	ret
    1740:	2bc4a783          	lw	a5,700(s1) # 52bc <f_putchar>
    1744:	00140413          	addi	s0,s0,1
    1748:	000780e7          	jalr	a5
    174c:	fd9ff06f          	j	1724 <print_string+0x18>

00001750 <print_dec>:
    1750:	ef010113          	addi	sp,sp,-272
    1754:	10812423          	sw	s0,264(sp)
    1758:	10912223          	sw	s1,260(sp)
    175c:	10112623          	sw	ra,268(sp)
    1760:	11212023          	sw	s2,256(sp)
    1764:	00050413          	mv	s0,a0
    1768:	000054b7          	lui	s1,0x5
    176c:	08045063          	bgez	s0,17ec <print_dec+0x9c>
    1770:	2bc4a783          	lw	a5,700(s1) # 52bc <f_putchar>
    1774:	02d00513          	li	a0,45
    1778:	40800433          	neg	s0,s0
    177c:	000780e7          	jalr	a5
    1780:	fedff06f          	j	176c <print_dec+0x1c>
    1784:	00040513          	mv	a0,s0
    1788:	00a00593          	li	a1,10
    178c:	00000097          	auipc	ra,0x0
    1790:	a20080e7          	jalr	-1504(ra) # 11ac <__divsi3>
    1794:	00251793          	slli	a5,a0,0x2
    1798:	00f507b3          	add	a5,a0,a5
    179c:	00179793          	slli	a5,a5,0x1
    17a0:	40f40433          	sub	s0,s0,a5
    17a4:	00148493          	addi	s1,s1,1
    17a8:	fe848fa3          	sb	s0,-1(s1)
    17ac:	00050413          	mv	s0,a0
    17b0:	fc041ae3          	bnez	s0,1784 <print_dec+0x34>
    17b4:	fd2488e3          	beq	s1,s2,1784 <print_dec+0x34>
    17b8:	00005437          	lui	s0,0x5
    17bc:	fff4c503          	lbu	a0,-1(s1)
    17c0:	2bc42783          	lw	a5,700(s0) # 52bc <f_putchar>
    17c4:	fff48493          	addi	s1,s1,-1
    17c8:	03050513          	addi	a0,a0,48
    17cc:	000780e7          	jalr	a5
    17d0:	ff2496e3          	bne	s1,s2,17bc <print_dec+0x6c>
    17d4:	10c12083          	lw	ra,268(sp)
    17d8:	10812403          	lw	s0,264(sp)
    17dc:	10412483          	lw	s1,260(sp)
    17e0:	10012903          	lw	s2,256(sp)
    17e4:	11010113          	addi	sp,sp,272
    17e8:	00008067          	ret
    17ec:	00010493          	mv	s1,sp
    17f0:	00010913          	mv	s2,sp
    17f4:	fbdff06f          	j	17b0 <print_dec+0x60>

000017f8 <print_hex_digits>:
    17f8:	fe010113          	addi	sp,sp,-32
    17fc:	00812c23          	sw	s0,24(sp)
    1800:	00912a23          	sw	s1,20(sp)
    1804:	fff58413          	addi	s0,a1,-1
    1808:	000054b7          	lui	s1,0x5
    180c:	01212823          	sw	s2,16(sp)
    1810:	01312623          	sw	s3,12(sp)
    1814:	00112e23          	sw	ra,28(sp)
    1818:	00050993          	mv	s3,a0
    181c:	00241413          	slli	s0,s0,0x2
    1820:	e4448493          	addi	s1,s1,-444 # 4e44 <LEDS+0xf8>
    1824:	00005937          	lui	s2,0x5
    1828:	02045063          	bgez	s0,1848 <print_hex_digits+0x50>
    182c:	01c12083          	lw	ra,28(sp)
    1830:	01812403          	lw	s0,24(sp)
    1834:	01412483          	lw	s1,20(sp)
    1838:	01012903          	lw	s2,16(sp)
    183c:	00c12983          	lw	s3,12(sp)
    1840:	02010113          	addi	sp,sp,32
    1844:	00008067          	ret
    1848:	0089d7b3          	srl	a5,s3,s0
    184c:	00f7f793          	andi	a5,a5,15
    1850:	00f487b3          	add	a5,s1,a5
    1854:	2bc92703          	lw	a4,700(s2) # 52bc <f_putchar>
    1858:	0007c503          	lbu	a0,0(a5)
    185c:	ffc40413          	addi	s0,s0,-4
    1860:	000700e7          	jalr	a4
    1864:	fc5ff06f          	j	1828 <print_hex_digits+0x30>

00001868 <print_hex>:
    1868:	00800593          	li	a1,8
    186c:	00000317          	auipc	t1,0x0
    1870:	f8c30067          	jr	-116(t1) # 17f8 <print_hex_digits>

00001874 <printf>:
    1874:	fa010113          	addi	sp,sp,-96
    1878:	04f12a23          	sw	a5,84(sp)
    187c:	04410793          	addi	a5,sp,68
    1880:	02812c23          	sw	s0,56(sp)
    1884:	02912a23          	sw	s1,52(sp)
    1888:	03212823          	sw	s2,48(sp)
    188c:	03312623          	sw	s3,44(sp)
    1890:	03412423          	sw	s4,40(sp)
    1894:	03512223          	sw	s5,36(sp)
    1898:	03612023          	sw	s6,32(sp)
    189c:	02112e23          	sw	ra,60(sp)
    18a0:	01712e23          	sw	s7,28(sp)
    18a4:	00050413          	mv	s0,a0
    18a8:	04b12223          	sw	a1,68(sp)
    18ac:	04c12423          	sw	a2,72(sp)
    18b0:	04d12623          	sw	a3,76(sp)
    18b4:	04e12823          	sw	a4,80(sp)
    18b8:	05012c23          	sw	a6,88(sp)
    18bc:	05112e23          	sw	a7,92(sp)
    18c0:	00f12623          	sw	a5,12(sp)
    18c4:	02500913          	li	s2,37
    18c8:	000054b7          	lui	s1,0x5
    18cc:	07300993          	li	s3,115
    18d0:	07800a13          	li	s4,120
    18d4:	06400a93          	li	s5,100
    18d8:	06300b13          	li	s6,99
    18dc:	00044503          	lbu	a0,0(s0)
    18e0:	02051863          	bnez	a0,1910 <printf+0x9c>
    18e4:	03c12083          	lw	ra,60(sp)
    18e8:	03812403          	lw	s0,56(sp)
    18ec:	03412483          	lw	s1,52(sp)
    18f0:	03012903          	lw	s2,48(sp)
    18f4:	02c12983          	lw	s3,44(sp)
    18f8:	02812a03          	lw	s4,40(sp)
    18fc:	02412a83          	lw	s5,36(sp)
    1900:	02012b03          	lw	s6,32(sp)
    1904:	01c12b83          	lw	s7,28(sp)
    1908:	06010113          	addi	sp,sp,96
    190c:	00008067          	ret
    1910:	09251a63          	bne	a0,s2,19a4 <printf+0x130>
    1914:	00144503          	lbu	a0,1(s0)
    1918:	00140b93          	addi	s7,s0,1
    191c:	03351463          	bne	a0,s3,1944 <printf+0xd0>
    1920:	00c12783          	lw	a5,12(sp)
    1924:	0007a503          	lw	a0,0(a5)
    1928:	00478713          	addi	a4,a5,4
    192c:	00e12623          	sw	a4,12(sp)
    1930:	00000097          	auipc	ra,0x0
    1934:	ddc080e7          	jalr	-548(ra) # 170c <print_string>
    1938:	000b8413          	mv	s0,s7
    193c:	00140413          	addi	s0,s0,1
    1940:	f9dff06f          	j	18dc <printf+0x68>
    1944:	03451063          	bne	a0,s4,1964 <printf+0xf0>
    1948:	00c12783          	lw	a5,12(sp)
    194c:	0007a503          	lw	a0,0(a5)
    1950:	00478713          	addi	a4,a5,4
    1954:	00e12623          	sw	a4,12(sp)
    1958:	00000097          	auipc	ra,0x0
    195c:	f10080e7          	jalr	-240(ra) # 1868 <print_hex>
    1960:	fd9ff06f          	j	1938 <printf+0xc4>
    1964:	03551063          	bne	a0,s5,1984 <printf+0x110>
    1968:	00c12783          	lw	a5,12(sp)
    196c:	0007a503          	lw	a0,0(a5)
    1970:	00478713          	addi	a4,a5,4
    1974:	00e12623          	sw	a4,12(sp)
    1978:	00000097          	auipc	ra,0x0
    197c:	dd8080e7          	jalr	-552(ra) # 1750 <print_dec>
    1980:	fb9ff06f          	j	1938 <printf+0xc4>
    1984:	2bc4a783          	lw	a5,700(s1) # 52bc <f_putchar>
    1988:	01651a63          	bne	a0,s6,199c <printf+0x128>
    198c:	00c12703          	lw	a4,12(sp)
    1990:	00072503          	lw	a0,0(a4)
    1994:	00470693          	addi	a3,a4,4
    1998:	00d12623          	sw	a3,12(sp)
    199c:	000780e7          	jalr	a5
    19a0:	f99ff06f          	j	1938 <printf+0xc4>
    19a4:	2bc4a783          	lw	a5,700(s1)
    19a8:	000780e7          	jalr	a5
    19ac:	f91ff06f          	j	193c <printf+0xc8>

000019b0 <__mulsi3>:
    19b0:	00050793          	mv	a5,a0
    19b4:	00000513          	li	a0,0
    19b8:	00079463          	bnez	a5,19c0 <__mulsi3+0x10>
    19bc:	00008067          	ret
    19c0:	01f79693          	slli	a3,a5,0x1f
    19c4:	41f6d713          	srai	a4,a3,0x1f
    19c8:	00b77733          	and	a4,a4,a1
    19cc:	00e50533          	add	a0,a0,a4
    19d0:	0017d793          	srli	a5,a5,0x1
    19d4:	00159593          	slli	a1,a1,0x1
    19d8:	fe1ff06f          	j	19b8 <__mulsi3+0x8>

000019dc <fat_list_insert_last>:
    19dc:	00452783          	lw	a5,4(a0)
    19e0:	04079263          	bnez	a5,1a24 <fat_list_insert_last+0x48>
    19e4:	00052783          	lw	a5,0(a0)
    19e8:	00079c63          	bnez	a5,1a00 <fat_list_insert_last+0x24>
    19ec:	00b52023          	sw	a1,0(a0)
    19f0:	00b52223          	sw	a1,4(a0)
    19f4:	0005a023          	sw	zero,0(a1)
    19f8:	0005a223          	sw	zero,4(a1)
    19fc:	00008067          	ret
    1a00:	0007a703          	lw	a4,0(a5)
    1a04:	00f5a223          	sw	a5,4(a1)
    1a08:	00e5a023          	sw	a4,0(a1)
    1a0c:	00071863          	bnez	a4,1a1c <fat_list_insert_last+0x40>
    1a10:	00b52023          	sw	a1,0(a0)
    1a14:	00b7a023          	sw	a1,0(a5)
    1a18:	00008067          	ret
    1a1c:	00b72223          	sw	a1,4(a4)
    1a20:	ff5ff06f          	j	1a14 <fat_list_insert_last+0x38>
    1a24:	0047a703          	lw	a4,4(a5)
    1a28:	00f5a023          	sw	a5,0(a1)
    1a2c:	00e5a223          	sw	a4,4(a1)
    1a30:	00071863          	bnez	a4,1a40 <fat_list_insert_last+0x64>
    1a34:	00b52223          	sw	a1,4(a0)
    1a38:	00b7a223          	sw	a1,4(a5)
    1a3c:	00008067          	ret
    1a40:	00b72023          	sw	a1,0(a4)
    1a44:	ff5ff06f          	j	1a38 <fat_list_insert_last+0x5c>

00001a48 <FileString_StrCmpNoCase>:
    1a48:	00050e93          	mv	t4,a0
    1a4c:	00000793          	li	a5,0
    1a50:	01900e13          	li	t3,25
    1a54:	00c79663          	bne	a5,a2,1a60 <FileString_StrCmpNoCase+0x18>
    1a58:	00000513          	li	a0,0
    1a5c:	00008067          	ret
    1a60:	00fe8733          	add	a4,t4,a5
    1a64:	00074803          	lbu	a6,0(a4)
    1a68:	00f58733          	add	a4,a1,a5
    1a6c:	00074883          	lbu	a7,0(a4)
    1a70:	fbf80713          	addi	a4,a6,-65
    1a74:	0ff77713          	zext.b	a4,a4
    1a78:	00080693          	mv	a3,a6
    1a7c:	00ee6663          	bltu	t3,a4,1a88 <FileString_StrCmpNoCase+0x40>
    1a80:	02080693          	addi	a3,a6,32
    1a84:	0ff6f693          	zext.b	a3,a3
    1a88:	fbf88313          	addi	t1,a7,-65
    1a8c:	0ff37313          	zext.b	t1,t1
    1a90:	00088713          	mv	a4,a7
    1a94:	006e6663          	bltu	t3,t1,1aa0 <FileString_StrCmpNoCase+0x58>
    1a98:	02088713          	addi	a4,a7,32
    1a9c:	0ff77713          	zext.b	a4,a4
    1aa0:	40e68533          	sub	a0,a3,a4
    1aa4:	00e69863          	bne	a3,a4,1ab4 <FileString_StrCmpNoCase+0x6c>
    1aa8:	00178793          	addi	a5,a5,1
    1aac:	00088463          	beqz	a7,1ab4 <FileString_StrCmpNoCase+0x6c>
    1ab0:	fa0812e3          	bnez	a6,1a54 <FileString_StrCmpNoCase+0xc>
    1ab4:	00008067          	ret

00001ab8 <FileString_GetExtension>:
    1ab8:	00050793          	mv	a5,a0
    1abc:	fff00713          	li	a4,-1
    1ac0:	02e00613          	li	a2,46
    1ac4:	0007c683          	lbu	a3,0(a5)
    1ac8:	00069663          	bnez	a3,1ad4 <FileString_GetExtension+0x1c>
    1acc:	00070513          	mv	a0,a4
    1ad0:	00008067          	ret
    1ad4:	00c69463          	bne	a3,a2,1adc <FileString_GetExtension+0x24>
    1ad8:	40a78733          	sub	a4,a5,a0
    1adc:	00178793          	addi	a5,a5,1
    1ae0:	fe5ff06f          	j	1ac4 <FileString_GetExtension+0xc>

00001ae4 <fatfs_fat_writeback>:
    1ae4:	00059e63          	bnez	a1,1b00 <fatfs_fat_writeback+0x1c>
    1ae8:	00000513          	li	a0,0
    1aec:	00008067          	ret
    1af0:	00000513          	li	a0,0
    1af4:	01c12083          	lw	ra,28(sp)
    1af8:	02010113          	addi	sp,sp,32
    1afc:	00008067          	ret
    1b00:	2045a783          	lw	a5,516(a1)
    1b04:	04078e63          	beqz	a5,1b60 <fatfs_fat_writeback+0x7c>
    1b08:	03852683          	lw	a3,56(a0)
    1b0c:	00050793          	mv	a5,a0
    1b10:	04068663          	beqz	a3,1b5c <fatfs_fat_writeback+0x78>
    1b14:	0147a703          	lw	a4,20(a5)
    1b18:	2005a503          	lw	a0,512(a1)
    1b1c:	0207a803          	lw	a6,32(a5)
    1b20:	00100613          	li	a2,1
    1b24:	fe010113          	addi	sp,sp,-32
    1b28:	40e607b3          	sub	a5,a2,a4
    1b2c:	00112e23          	sw	ra,28(sp)
    1b30:	00a787b3          	add	a5,a5,a0
    1b34:	00f87663          	bgeu	a6,a5,1b40 <fatfs_fat_writeback+0x5c>
    1b38:	01070733          	add	a4,a4,a6
    1b3c:	40a70633          	sub	a2,a4,a0
    1b40:	00b12623          	sw	a1,12(sp)
    1b44:	000680e7          	jalr	a3
    1b48:	fa0504e3          	beqz	a0,1af0 <fatfs_fat_writeback+0xc>
    1b4c:	00c12583          	lw	a1,12(sp)
    1b50:	00100513          	li	a0,1
    1b54:	2005a223          	sw	zero,516(a1)
    1b58:	f9dff06f          	j	1af4 <fatfs_fat_writeback+0x10>
    1b5c:	2005a223          	sw	zero,516(a1)
    1b60:	00100513          	li	a0,1
    1b64:	00008067          	ret

00001b68 <fatfs_fat_read_sector>:
    1b68:	fe010113          	addi	sp,sp,-32
    1b6c:	01212823          	sw	s2,16(sp)
    1b70:	25452903          	lw	s2,596(a0)
    1b74:	00812c23          	sw	s0,24(sp)
    1b78:	00112e23          	sw	ra,28(sp)
    1b7c:	00912a23          	sw	s1,20(sp)
    1b80:	01312623          	sw	s3,12(sp)
    1b84:	00000413          	li	s0,0
    1b88:	04091463          	bnez	s2,1bd0 <fatfs_fat_read_sector+0x68>
    1b8c:	25452783          	lw	a5,596(a0)
    1b90:	00058493          	mv	s1,a1
    1b94:	00050993          	mv	s3,a0
    1b98:	20f42623          	sw	a5,524(s0)
    1b9c:	20442783          	lw	a5,516(s0)
    1ba0:	24852a23          	sw	s0,596(a0)
    1ba4:	08079863          	bnez	a5,1c34 <fatfs_fat_read_sector+0xcc>
    1ba8:	0349a783          	lw	a5,52(s3)
    1bac:	20942023          	sw	s1,512(s0)
    1bb0:	00100613          	li	a2,1
    1bb4:	00040593          	mv	a1,s0
    1bb8:	00048513          	mv	a0,s1
    1bbc:	000780e7          	jalr	a5
    1bc0:	08051463          	bnez	a0,1c48 <fatfs_fat_read_sector+0xe0>
    1bc4:	fff00793          	li	a5,-1
    1bc8:	20f42023          	sw	a5,512(s0)
    1bcc:	0480006f          	j	1c14 <fatfs_fat_read_sector+0xac>
    1bd0:	20092783          	lw	a5,512(s2)
    1bd4:	00f5e663          	bltu	a1,a5,1be0 <fatfs_fat_read_sector+0x78>
    1bd8:	00178713          	addi	a4,a5,1
    1bdc:	02e5e463          	bltu	a1,a4,1c04 <fatfs_fat_read_sector+0x9c>
    1be0:	20c92783          	lw	a5,524(s2)
    1be4:	00079663          	bnez	a5,1bf0 <fatfs_fat_read_sector+0x88>
    1be8:	00040a63          	beqz	s0,1bfc <fatfs_fat_read_sector+0x94>
    1bec:	20042623          	sw	zero,524(s0)
    1bf0:	00090413          	mv	s0,s2
    1bf4:	20c92903          	lw	s2,524(s2)
    1bf8:	f91ff06f          	j	1b88 <fatfs_fat_read_sector+0x20>
    1bfc:	24052a23          	sw	zero,596(a0)
    1c00:	ff1ff06f          	j	1bf0 <fatfs_fat_read_sector+0x88>
    1c04:	40f585b3          	sub	a1,a1,a5
    1c08:	00959593          	slli	a1,a1,0x9
    1c0c:	00b905b3          	add	a1,s2,a1
    1c10:	20b92423          	sw	a1,520(s2)
    1c14:	01c12083          	lw	ra,28(sp)
    1c18:	01812403          	lw	s0,24(sp)
    1c1c:	01412483          	lw	s1,20(sp)
    1c20:	00c12983          	lw	s3,12(sp)
    1c24:	00090513          	mv	a0,s2
    1c28:	01012903          	lw	s2,16(sp)
    1c2c:	02010113          	addi	sp,sp,32
    1c30:	00008067          	ret
    1c34:	00040593          	mv	a1,s0
    1c38:	00000097          	auipc	ra,0x0
    1c3c:	eac080e7          	jalr	-340(ra) # 1ae4 <fatfs_fat_writeback>
    1c40:	f60514e3          	bnez	a0,1ba8 <fatfs_fat_read_sector+0x40>
    1c44:	fd1ff06f          	j	1c14 <fatfs_fat_read_sector+0xac>
    1c48:	20842423          	sw	s0,520(s0)
    1c4c:	00040913          	mv	s2,s0
    1c50:	fc5ff06f          	j	1c14 <fatfs_fat_read_sector+0xac>

00001c54 <_allocate_file>:
    1c54:	000057b7          	lui	a5,0x5
    1c58:	2c078793          	addi	a5,a5,704 # 52c0 <_free_file_list>
    1c5c:	0007a583          	lw	a1,0(a5)
    1c60:	06058263          	beqz	a1,1cc4 <_allocate_file+0x70>
    1c64:	0005a703          	lw	a4,0(a1)
    1c68:	fe010113          	addi	sp,sp,-32
    1c6c:	00112e23          	sw	ra,28(sp)
    1c70:	0045a683          	lw	a3,4(a1)
    1c74:	04071063          	bnez	a4,1cb4 <_allocate_file+0x60>
    1c78:	00d7a023          	sw	a3,0(a5)
    1c7c:	0045a683          	lw	a3,4(a1)
    1c80:	02069e63          	bnez	a3,1cbc <_allocate_file+0x68>
    1c84:	00e7a223          	sw	a4,4(a5)
    1c88:	00005537          	lui	a0,0x5
    1c8c:	2c850513          	addi	a0,a0,712 # 52c8 <_open_file_list>
    1c90:	00b12623          	sw	a1,12(sp)
    1c94:	00000097          	auipc	ra,0x0
    1c98:	d48080e7          	jalr	-696(ra) # 19dc <fat_list_insert_last>
    1c9c:	00c12583          	lw	a1,12(sp)
    1ca0:	01c12083          	lw	ra,28(sp)
    1ca4:	bc458593          	addi	a1,a1,-1084
    1ca8:	00058513          	mv	a0,a1
    1cac:	02010113          	addi	sp,sp,32
    1cb0:	00008067          	ret
    1cb4:	00d72223          	sw	a3,4(a4)
    1cb8:	fc5ff06f          	j	1c7c <_allocate_file+0x28>
    1cbc:	00e6a023          	sw	a4,0(a3)
    1cc0:	fc9ff06f          	j	1c88 <_allocate_file+0x34>
    1cc4:	00058513          	mv	a0,a1
    1cc8:	00008067          	ret

00001ccc <_free_file>:
    1ccc:	43c52783          	lw	a5,1084(a0)
    1cd0:	44052703          	lw	a4,1088(a0)
    1cd4:	43c50593          	addi	a1,a0,1084
    1cd8:	02079663          	bnez	a5,1d04 <_free_file+0x38>
    1cdc:	000056b7          	lui	a3,0x5
    1ce0:	2ce6a423          	sw	a4,712(a3) # 52c8 <_open_file_list>
    1ce4:	44052703          	lw	a4,1088(a0)
    1ce8:	02071263          	bnez	a4,1d0c <_free_file+0x40>
    1cec:	00005737          	lui	a4,0x5
    1cf0:	2cf72623          	sw	a5,716(a4) # 52cc <_open_file_list+0x4>
    1cf4:	00005537          	lui	a0,0x5
    1cf8:	2c050513          	addi	a0,a0,704 # 52c0 <_free_file_list>
    1cfc:	00000317          	auipc	t1,0x0
    1d00:	ce030067          	jr	-800(t1) # 19dc <fat_list_insert_last>
    1d04:	00e7a223          	sw	a4,4(a5)
    1d08:	fddff06f          	j	1ce4 <_free_file+0x18>
    1d0c:	00f72023          	sw	a5,0(a4)
    1d10:	fe5ff06f          	j	1cf4 <_free_file+0x28>

00001d14 <fatfs_lba_of_cluster>:
    1d14:	ff010113          	addi	sp,sp,-16
    1d18:	00812423          	sw	s0,8(sp)
    1d1c:	00112623          	sw	ra,12(sp)
    1d20:	00050413          	mv	s0,a0
    1d24:	ffe58513          	addi	a0,a1,-2
    1d28:	00044583          	lbu	a1,0(s0)
    1d2c:	00000097          	auipc	ra,0x0
    1d30:	c84080e7          	jalr	-892(ra) # 19b0 <__mulsi3>
    1d34:	00442783          	lw	a5,4(s0)
    1d38:	00f50533          	add	a0,a0,a5
    1d3c:	03042783          	lw	a5,48(s0)
    1d40:	00079863          	bnez	a5,1d50 <fatfs_lba_of_cluster+0x3c>
    1d44:	02845783          	lhu	a5,40(s0)
    1d48:	4047d793          	srai	a5,a5,0x4
    1d4c:	00f50533          	add	a0,a0,a5
    1d50:	00c12083          	lw	ra,12(sp)
    1d54:	00812403          	lw	s0,8(sp)
    1d58:	01010113          	addi	sp,sp,16
    1d5c:	00008067          	ret

00001d60 <fatfs_sector_read>:
    1d60:	03452783          	lw	a5,52(a0)
    1d64:	00058713          	mv	a4,a1
    1d68:	00070513          	mv	a0,a4
    1d6c:	00060593          	mv	a1,a2
    1d70:	00068613          	mv	a2,a3
    1d74:	00078067          	jr	a5

00001d78 <fatfs_sector_write>:
    1d78:	03852783          	lw	a5,56(a0)
    1d7c:	00058713          	mv	a4,a1
    1d80:	00070513          	mv	a0,a4
    1d84:	00060593          	mv	a1,a2
    1d88:	00068613          	mv	a2,a3
    1d8c:	00078067          	jr	a5

00001d90 <fatfs_write_sector>:
    1d90:	03852703          	lw	a4,56(a0)
    1d94:	0a070463          	beqz	a4,1e3c <fatfs_write_sector+0xac>
    1d98:	03052883          	lw	a7,48(a0)
    1d9c:	00050793          	mv	a5,a0
    1da0:	0115e833          	or	a6,a1,a7
    1da4:	02081e63          	bnez	a6,1de0 <fatfs_write_sector+0x50>
    1da8:	01052583          	lw	a1,16(a0)
    1dac:	08b67863          	bgeu	a2,a1,1e3c <fatfs_write_sector+0xac>
    1db0:	01c52503          	lw	a0,28(a0)
    1db4:	00c7a583          	lw	a1,12(a5)
    1db8:	00b50533          	add	a0,a0,a1
    1dbc:	00c50533          	add	a0,a0,a2
    1dc0:	00068863          	beqz	a3,1dd0 <fatfs_write_sector+0x40>
    1dc4:	00100613          	li	a2,1
    1dc8:	00068593          	mv	a1,a3
    1dcc:	00070067          	jr	a4
    1dd0:	24a7a223          	sw	a0,580(a5)
    1dd4:	00100613          	li	a2,1
    1dd8:	04478593          	addi	a1,a5,68
    1ddc:	ff1ff06f          	j	1dcc <fatfs_write_sector+0x3c>
    1de0:	fe010113          	addi	sp,sp,-32
    1de4:	00e12623          	sw	a4,12(sp)
    1de8:	00d12423          	sw	a3,8(sp)
    1dec:	00c12223          	sw	a2,4(sp)
    1df0:	00112e23          	sw	ra,28(sp)
    1df4:	00a12023          	sw	a0,0(sp)
    1df8:	00000097          	auipc	ra,0x0
    1dfc:	f1c080e7          	jalr	-228(ra) # 1d14 <fatfs_lba_of_cluster>
    1e00:	00412603          	lw	a2,4(sp)
    1e04:	00812683          	lw	a3,8(sp)
    1e08:	00012783          	lw	a5,0(sp)
    1e0c:	00c12703          	lw	a4,12(sp)
    1e10:	00a60533          	add	a0,a2,a0
    1e14:	00068c63          	beqz	a3,1e2c <fatfs_write_sector+0x9c>
    1e18:	00100613          	li	a2,1
    1e1c:	00068593          	mv	a1,a3
    1e20:	01c12083          	lw	ra,28(sp)
    1e24:	02010113          	addi	sp,sp,32
    1e28:	fa5ff06f          	j	1dcc <fatfs_write_sector+0x3c>
    1e2c:	24a7a223          	sw	a0,580(a5)
    1e30:	00100613          	li	a2,1
    1e34:	04478593          	addi	a1,a5,68
    1e38:	fe9ff06f          	j	1e20 <fatfs_write_sector+0x90>
    1e3c:	00000513          	li	a0,0
    1e40:	00008067          	ret

00001e44 <fl_init>:
    1e44:	ff010113          	addi	sp,sp,-16
    1e48:	00005537          	lui	a0,0x5
    1e4c:	000057b7          	lui	a5,0x5
    1e50:	0000c5b7          	lui	a1,0xc
    1e54:	00112623          	sw	ra,12(sp)
    1e58:	2c050513          	addi	a0,a0,704 # 52c0 <_free_file_list>
    1e5c:	2c878793          	addi	a5,a5,712 # 52c8 <_open_file_list>
    1e60:	dfc58593          	addi	a1,a1,-516 # bdfc <_files+0x43c>
    1e64:	00052223          	sw	zero,4(a0)
    1e68:	00052023          	sw	zero,0(a0)
    1e6c:	0007a223          	sw	zero,4(a5)
    1e70:	0007a023          	sw	zero,0(a5)
    1e74:	00000097          	auipc	ra,0x0
    1e78:	b68080e7          	jalr	-1176(ra) # 19dc <fat_list_insert_last>
    1e7c:	000057b7          	lui	a5,0x5
    1e80:	0000c5b7          	lui	a1,0xc
    1e84:	2c078513          	addi	a0,a5,704 # 52c0 <_free_file_list>
    1e88:	24058593          	addi	a1,a1,576 # c240 <_files+0x880>
    1e8c:	00000097          	auipc	ra,0x0
    1e90:	b50080e7          	jalr	-1200(ra) # 19dc <fat_list_insert_last>
    1e94:	00c12083          	lw	ra,12(sp)
    1e98:	000057b7          	lui	a5,0x5
    1e9c:	00100713          	li	a4,1
    1ea0:	2ce7aa23          	sw	a4,724(a5) # 52d4 <_filelib_init>
    1ea4:	01010113          	addi	sp,sp,16
    1ea8:	00008067          	ret

00001eac <fl_closedir>:
    1eac:	00000513          	li	a0,0
    1eb0:	00008067          	ret

00001eb4 <fatfs_lfn_cache_entry>:
    1eb4:	0005c783          	lbu	a5,0(a1)
    1eb8:	01300693          	li	a3,19
    1ebc:	01f7f793          	andi	a5,a5,31
    1ec0:	fff78713          	addi	a4,a5,-1
    1ec4:	0ff77613          	zext.b	a2,a4
    1ec8:	0ac6ea63          	bltu	a3,a2,1f7c <fatfs_lfn_cache_entry+0xc8>
    1ecc:	10554683          	lbu	a3,261(a0)
    1ed0:	00069463          	bnez	a3,1ed8 <fatfs_lfn_cache_entry+0x24>
    1ed4:	10f502a3          	sb	a5,261(a0)
    1ed8:	00171793          	slli	a5,a4,0x1
    1edc:	00e787b3          	add	a5,a5,a4
    1ee0:	0015c683          	lbu	a3,1(a1)
    1ee4:	00279793          	slli	a5,a5,0x2
    1ee8:	00e787b3          	add	a5,a5,a4
    1eec:	00f50533          	add	a0,a0,a5
    1ef0:	00d50023          	sb	a3,0(a0)
    1ef4:	0035c783          	lbu	a5,3(a1)
    1ef8:	0ff00713          	li	a4,255
    1efc:	02000693          	li	a3,32
    1f00:	00f500a3          	sb	a5,1(a0)
    1f04:	0055c783          	lbu	a5,5(a1)
    1f08:	00f50123          	sb	a5,2(a0)
    1f0c:	0075c783          	lbu	a5,7(a1)
    1f10:	00f501a3          	sb	a5,3(a0)
    1f14:	0095c783          	lbu	a5,9(a1)
    1f18:	00f50223          	sb	a5,4(a0)
    1f1c:	00e5c783          	lbu	a5,14(a1)
    1f20:	00f502a3          	sb	a5,5(a0)
    1f24:	0105c783          	lbu	a5,16(a1)
    1f28:	00f50323          	sb	a5,6(a0)
    1f2c:	0125c783          	lbu	a5,18(a1)
    1f30:	00f503a3          	sb	a5,7(a0)
    1f34:	0145c783          	lbu	a5,20(a1)
    1f38:	00f50423          	sb	a5,8(a0)
    1f3c:	0165c783          	lbu	a5,22(a1)
    1f40:	00f504a3          	sb	a5,9(a0)
    1f44:	0185c783          	lbu	a5,24(a1)
    1f48:	00f50523          	sb	a5,10(a0)
    1f4c:	01c5c783          	lbu	a5,28(a1)
    1f50:	00f505a3          	sb	a5,11(a0)
    1f54:	01e5c783          	lbu	a5,30(a1)
    1f58:	00f50623          	sb	a5,12(a0)
    1f5c:	00d00793          	li	a5,13
    1f60:	00054603          	lbu	a2,0(a0)
    1f64:	00e61463          	bne	a2,a4,1f6c <fatfs_lfn_cache_entry+0xb8>
    1f68:	00d50023          	sb	a3,0(a0)
    1f6c:	fff78793          	addi	a5,a5,-1
    1f70:	0ff7f793          	zext.b	a5,a5
    1f74:	00150513          	addi	a0,a0,1
    1f78:	fe0794e3          	bnez	a5,1f60 <fatfs_lfn_cache_entry+0xac>
    1f7c:	00008067          	ret

00001f80 <fatfs_lfn_cache_get>:
    1f80:	10554703          	lbu	a4,261(a0)
    1f84:	01400793          	li	a5,20
    1f88:	00f71663          	bne	a4,a5,1f94 <fatfs_lfn_cache_get+0x14>
    1f8c:	10050223          	sb	zero,260(a0)
    1f90:	00008067          	ret
    1f94:	02070063          	beqz	a4,1fb4 <fatfs_lfn_cache_get+0x34>
    1f98:	00171793          	slli	a5,a4,0x1
    1f9c:	00e787b3          	add	a5,a5,a4
    1fa0:	00279793          	slli	a5,a5,0x2
    1fa4:	00e787b3          	add	a5,a5,a4
    1fa8:	00f507b3          	add	a5,a0,a5
    1fac:	00078023          	sb	zero,0(a5)
    1fb0:	00008067          	ret
    1fb4:	00050023          	sb	zero,0(a0)
    1fb8:	00008067          	ret

00001fbc <fatfs_entry_lfn_text>:
    1fbc:	00b54503          	lbu	a0,11(a0)
    1fc0:	00f57513          	andi	a0,a0,15
    1fc4:	ff150513          	addi	a0,a0,-15
    1fc8:	00153513          	seqz	a0,a0
    1fcc:	00008067          	ret

00001fd0 <fatfs_entry_lfn_invalid>:
    1fd0:	00054783          	lbu	a5,0(a0)
    1fd4:	f1b78713          	addi	a4,a5,-229
    1fd8:	02070263          	beqz	a4,1ffc <fatfs_entry_lfn_invalid+0x2c>
    1fdc:	02078063          	beqz	a5,1ffc <fatfs_entry_lfn_invalid+0x2c>
    1fe0:	00b54783          	lbu	a5,11(a0)
    1fe4:	00800713          	li	a4,8
    1fe8:	00100513          	li	a0,1
    1fec:	00e78a63          	beq	a5,a4,2000 <fatfs_entry_lfn_invalid+0x30>
    1ff0:	0067f793          	andi	a5,a5,6
    1ff4:	00f03533          	snez	a0,a5
    1ff8:	00008067          	ret
    1ffc:	00100513          	li	a0,1
    2000:	00008067          	ret

00002004 <fatfs_entry_lfn_exists>:
    2004:	00b5c783          	lbu	a5,11(a1)
    2008:	00f00713          	li	a4,15
    200c:	04e78063          	beq	a5,a4,204c <fatfs_entry_lfn_exists+0x48>
    2010:	0005c683          	lbu	a3,0(a1)
    2014:	f1b68713          	addi	a4,a3,-229
    2018:	00e03733          	snez	a4,a4
    201c:	00d036b3          	snez	a3,a3
    2020:	00d77733          	and	a4,a4,a3
    2024:	02070463          	beqz	a4,204c <fatfs_entry_lfn_exists+0x48>
    2028:	ff878713          	addi	a4,a5,-8
    202c:	02070063          	beqz	a4,204c <fatfs_entry_lfn_exists+0x48>
    2030:	0067f713          	andi	a4,a5,6
    2034:	00000793          	li	a5,0
    2038:	00071663          	bnez	a4,2044 <fatfs_entry_lfn_exists+0x40>
    203c:	10554783          	lbu	a5,261(a0)
    2040:	00f037b3          	snez	a5,a5
    2044:	00078513          	mv	a0,a5
    2048:	00008067          	ret
    204c:	00000793          	li	a5,0
    2050:	ff5ff06f          	j	2044 <fatfs_entry_lfn_exists+0x40>

00002054 <fatfs_entry_sfn_only>:
    2054:	00b54783          	lbu	a5,11(a0)
    2058:	00f00713          	li	a4,15
    205c:	02e78863          	beq	a5,a4,208c <fatfs_entry_sfn_only+0x38>
    2060:	00054683          	lbu	a3,0(a0)
    2064:	f1b68713          	addi	a4,a3,-229
    2068:	00e03733          	snez	a4,a4
    206c:	00d036b3          	snez	a3,a3
    2070:	00d77733          	and	a4,a4,a3
    2074:	00070c63          	beqz	a4,208c <fatfs_entry_sfn_only+0x38>
    2078:	ff878713          	addi	a4,a5,-8
    207c:	00070863          	beqz	a4,208c <fatfs_entry_sfn_only+0x38>
    2080:	0067f513          	andi	a0,a5,6
    2084:	00153513          	seqz	a0,a0
    2088:	00008067          	ret
    208c:	00000513          	li	a0,0
    2090:	00008067          	ret

00002094 <fatfs_entry_is_dir>:
    2094:	00b54503          	lbu	a0,11(a0)
    2098:	00455513          	srli	a0,a0,0x4
    209c:	00157513          	andi	a0,a0,1
    20a0:	00008067          	ret

000020a4 <fatfs_lfn_entries_required>:
    20a4:	ff010113          	addi	sp,sp,-16
    20a8:	00112623          	sw	ra,12(sp)
    20ac:	fffff097          	auipc	ra,0xfffff
    20b0:	1f4080e7          	jalr	500(ra) # 12a0 <strlen>
    20b4:	00050a63          	beqz	a0,20c8 <fatfs_lfn_entries_required+0x24>
    20b8:	00d00593          	li	a1,13
    20bc:	00c50513          	addi	a0,a0,12
    20c0:	fffff097          	auipc	ra,0xfffff
    20c4:	0ec080e7          	jalr	236(ra) # 11ac <__divsi3>
    20c8:	00c12083          	lw	ra,12(sp)
    20cc:	01010113          	addi	sp,sp,16
    20d0:	00008067          	ret

000020d4 <fatfs_filename_to_lfn>:
    20d4:	f9010113          	addi	sp,sp,-112
    20d8:	06812423          	sw	s0,104(sp)
    20dc:	00058413          	mv	s0,a1
    20e0:	000055b7          	lui	a1,0x5
    20e4:	06c58593          	addi	a1,a1,108 # 506c <font+0x1e0>
    20e8:	06912223          	sw	s1,100(sp)
    20ec:	05312e23          	sw	s3,92(sp)
    20f0:	00060493          	mv	s1,a2
    20f4:	00050993          	mv	s3,a0
    20f8:	03400613          	li	a2,52
    20fc:	01c10513          	addi	a0,sp,28
    2100:	00d12623          	sw	a3,12(sp)
    2104:	06112623          	sw	ra,108(sp)
    2108:	07212023          	sw	s2,96(sp)
    210c:	05412c23          	sw	s4,88(sp)
    2110:	fffff097          	auipc	ra,0xfffff
    2114:	16c080e7          	jalr	364(ra) # 127c <memcpy>
    2118:	00098513          	mv	a0,s3
    211c:	fffff097          	auipc	ra,0xfffff
    2120:	184080e7          	jalr	388(ra) # 12a0 <strlen>
    2124:	00050913          	mv	s2,a0
    2128:	00098513          	mv	a0,s3
    212c:	00000097          	auipc	ra,0x0
    2130:	f78080e7          	jalr	-136(ra) # 20a4 <fatfs_lfn_entries_required>
    2134:	00050a13          	mv	s4,a0
    2138:	02000613          	li	a2,32
    213c:	00000593          	li	a1,0
    2140:	00040513          	mv	a0,s0
    2144:	fffff097          	auipc	ra,0xfffff
    2148:	11c080e7          	jalr	284(ra) # 1260 <memset>
    214c:	fffa0713          	addi	a4,s4,-1 # 3fff <fatfs_add_free_space+0xbf>
    2150:	00c12683          	lw	a3,12(sp)
    2154:	00148793          	addi	a5,s1,1
    2158:	00971463          	bne	a4,s1,2160 <fatfs_filename_to_lfn+0x8c>
    215c:	0407e793          	ori	a5,a5,64
    2160:	00149613          	slli	a2,s1,0x1
    2164:	00960633          	add	a2,a2,s1
    2168:	00f40023          	sb	a5,0(s0)
    216c:	00261613          	slli	a2,a2,0x2
    2170:	00f00793          	li	a5,15
    2174:	00f405a3          	sb	a5,11(s0)
    2178:	00d406a3          	sb	a3,13(s0)
    217c:	01c10793          	addi	a5,sp,28
    2180:	00960633          	add	a2,a2,s1
    2184:	fff00693          	li	a3,-1
    2188:	0007a703          	lw	a4,0(a5)
    218c:	00e40733          	add	a4,s0,a4
    2190:	05265063          	bge	a2,s2,21d0 <fatfs_filename_to_lfn+0xfc>
    2194:	00c985b3          	add	a1,s3,a2
    2198:	0005c583          	lbu	a1,0(a1)
    219c:	00b70023          	sb	a1,0(a4)
    21a0:	00478793          	addi	a5,a5,4
    21a4:	05010713          	addi	a4,sp,80
    21a8:	00160613          	addi	a2,a2,1
    21ac:	fce79ee3          	bne	a5,a4,2188 <fatfs_filename_to_lfn+0xb4>
    21b0:	06c12083          	lw	ra,108(sp)
    21b4:	06812403          	lw	s0,104(sp)
    21b8:	06412483          	lw	s1,100(sp)
    21bc:	06012903          	lw	s2,96(sp)
    21c0:	05c12983          	lw	s3,92(sp)
    21c4:	05812a03          	lw	s4,88(sp)
    21c8:	07010113          	addi	sp,sp,112
    21cc:	00008067          	ret
    21d0:	01261663          	bne	a2,s2,21dc <fatfs_filename_to_lfn+0x108>
    21d4:	00070023          	sb	zero,0(a4)
    21d8:	fc9ff06f          	j	21a0 <fatfs_filename_to_lfn+0xcc>
    21dc:	00d70023          	sb	a3,0(a4)
    21e0:	00d700a3          	sb	a3,1(a4)
    21e4:	fbdff06f          	j	21a0 <fatfs_filename_to_lfn+0xcc>

000021e8 <fatfs_sfn_create_entry>:
    21e8:	00000793          	li	a5,0
    21ec:	00b00813          	li	a6,11
    21f0:	00f508b3          	add	a7,a0,a5
    21f4:	0008c303          	lbu	t1,0(a7)
    21f8:	00f688b3          	add	a7,a3,a5
    21fc:	00178793          	addi	a5,a5,1
    2200:	00688023          	sb	t1,0(a7)
    2204:	ff0796e3          	bne	a5,a6,21f0 <fatfs_sfn_create_entry+0x8>
    2208:	00e03733          	snez	a4,a4
    220c:	40e00733          	neg	a4,a4
    2210:	02000793          	li	a5,32
    2214:	ff077713          	andi	a4,a4,-16
    2218:	00f70733          	add	a4,a4,a5
    221c:	00f68823          	sb	a5,16(a3)
    2220:	00f68923          	sb	a5,18(a3)
    2224:	00f68c23          	sb	a5,24(a3)
    2228:	01065793          	srli	a5,a2,0x10
    222c:	00f68a23          	sb	a5,20(a3)
    2230:	01865793          	srli	a5,a2,0x18
    2234:	00f68aa3          	sb	a5,21(a3)
    2238:	0085d793          	srli	a5,a1,0x8
    223c:	00c68d23          	sb	a2,26(a3)
    2240:	00b68e23          	sb	a1,28(a3)
    2244:	00865613          	srli	a2,a2,0x8
    2248:	00f68ea3          	sb	a5,29(a3)
    224c:	0105d793          	srli	a5,a1,0x10
    2250:	0185d593          	srli	a1,a1,0x18
    2254:	000686a3          	sb	zero,13(a3)
    2258:	00068723          	sb	zero,14(a3)
    225c:	000687a3          	sb	zero,15(a3)
    2260:	000688a3          	sb	zero,17(a3)
    2264:	000689a3          	sb	zero,19(a3)
    2268:	00068b23          	sb	zero,22(a3)
    226c:	00068ba3          	sb	zero,23(a3)
    2270:	00068ca3          	sb	zero,25(a3)
    2274:	00e685a3          	sb	a4,11(a3)
    2278:	00068623          	sb	zero,12(a3)
    227c:	00c68da3          	sb	a2,27(a3)
    2280:	00f68f23          	sb	a5,30(a3)
    2284:	00b68fa3          	sb	a1,31(a3)
    2288:	00008067          	ret

0000228c <fatfs_lfn_create_sfn>:
    228c:	fd010113          	addi	sp,sp,-48
    2290:	02912223          	sw	s1,36(sp)
    2294:	00050493          	mv	s1,a0
    2298:	00058513          	mv	a0,a1
    229c:	02812423          	sw	s0,40(sp)
    22a0:	01312e23          	sw	s3,28(sp)
    22a4:	00058413          	mv	s0,a1
    22a8:	02112623          	sw	ra,44(sp)
    22ac:	03212023          	sw	s2,32(sp)
    22b0:	fffff097          	auipc	ra,0xfffff
    22b4:	ff0080e7          	jalr	-16(ra) # 12a0 <strlen>
    22b8:	00044783          	lbu	a5,0(s0)
    22bc:	02e00993          	li	s3,46
    22c0:	15378063          	beq	a5,s3,2400 <fatfs_lfn_create_sfn+0x174>
    22c4:	00b00613          	li	a2,11
    22c8:	02000593          	li	a1,32
    22cc:	00050913          	mv	s2,a0
    22d0:	00048513          	mv	a0,s1
    22d4:	fffff097          	auipc	ra,0xfffff
    22d8:	f8c080e7          	jalr	-116(ra) # 1260 <memset>
    22dc:	00300613          	li	a2,3
    22e0:	02000593          	li	a1,32
    22e4:	00c10513          	addi	a0,sp,12
    22e8:	fffff097          	auipc	ra,0xfffff
    22ec:	f78080e7          	jalr	-136(ra) # 1260 <memset>
    22f0:	fff00793          	li	a5,-1
    22f4:	00000713          	li	a4,0
    22f8:	0d274263          	blt	a4,s2,23bc <fatfs_lfn_create_sfn+0x130>
    22fc:	fff00713          	li	a4,-1
    2300:	0ee78863          	beq	a5,a4,23f0 <fatfs_lfn_create_sfn+0x164>
    2304:	00178713          	addi	a4,a5,1
    2308:	00c10693          	addi	a3,sp,12
    230c:	00478613          	addi	a2,a5,4
    2310:	0ce61263          	bne	a2,a4,23d4 <fatfs_lfn_create_sfn+0x148>
    2314:	00000613          	li	a2,0
    2318:	00000693          	li	a3,0
    231c:	01900813          	li	a6,25
    2320:	00800893          	li	a7,8
    2324:	02f6de63          	bge	a3,a5,2360 <fatfs_lfn_create_sfn+0xd4>
    2328:	00d40733          	add	a4,s0,a3
    232c:	00074703          	lbu	a4,0(a4)
    2330:	fe070513          	addi	a0,a4,-32
    2334:	0c050263          	beqz	a0,23f8 <fatfs_lfn_create_sfn+0x16c>
    2338:	fd270593          	addi	a1,a4,-46
    233c:	0a058e63          	beqz	a1,23f8 <fatfs_lfn_create_sfn+0x16c>
    2340:	f9f70593          	addi	a1,a4,-97
    2344:	0ff5f593          	zext.b	a1,a1
    2348:	00c48333          	add	t1,s1,a2
    234c:	00160613          	addi	a2,a2,1
    2350:	00b86463          	bltu	a6,a1,2358 <fatfs_lfn_create_sfn+0xcc>
    2354:	0ff57713          	zext.b	a4,a0
    2358:	00e30023          	sb	a4,0(t1)
    235c:	09161e63          	bne	a2,a7,23f8 <fatfs_lfn_create_sfn+0x16c>
    2360:	00c10793          	addi	a5,sp,12
    2364:	00800693          	li	a3,8
    2368:	01900513          	li	a0,25
    236c:	00b00593          	li	a1,11
    2370:	0007c703          	lbu	a4,0(a5)
    2374:	f9f70613          	addi	a2,a4,-97
    2378:	0ff67613          	zext.b	a2,a2
    237c:	00c56663          	bltu	a0,a2,2388 <fatfs_lfn_create_sfn+0xfc>
    2380:	fe070713          	addi	a4,a4,-32
    2384:	0ff77713          	zext.b	a4,a4
    2388:	00d48633          	add	a2,s1,a3
    238c:	00e60023          	sb	a4,0(a2)
    2390:	00168693          	addi	a3,a3,1
    2394:	00178793          	addi	a5,a5,1
    2398:	fcb69ce3          	bne	a3,a1,2370 <fatfs_lfn_create_sfn+0xe4>
    239c:	00100513          	li	a0,1
    23a0:	02c12083          	lw	ra,44(sp)
    23a4:	02812403          	lw	s0,40(sp)
    23a8:	02412483          	lw	s1,36(sp)
    23ac:	02012903          	lw	s2,32(sp)
    23b0:	01c12983          	lw	s3,28(sp)
    23b4:	03010113          	addi	sp,sp,48
    23b8:	00008067          	ret
    23bc:	00e406b3          	add	a3,s0,a4
    23c0:	0006c683          	lbu	a3,0(a3)
    23c4:	01369463          	bne	a3,s3,23cc <fatfs_lfn_create_sfn+0x140>
    23c8:	00070793          	mv	a5,a4
    23cc:	00170713          	addi	a4,a4,1
    23d0:	f29ff06f          	j	22f8 <fatfs_lfn_create_sfn+0x6c>
    23d4:	01275863          	bge	a4,s2,23e4 <fatfs_lfn_create_sfn+0x158>
    23d8:	00e405b3          	add	a1,s0,a4
    23dc:	0005c583          	lbu	a1,0(a1)
    23e0:	00b68023          	sb	a1,0(a3)
    23e4:	00170713          	addi	a4,a4,1
    23e8:	00168693          	addi	a3,a3,1
    23ec:	f25ff06f          	j	2310 <fatfs_lfn_create_sfn+0x84>
    23f0:	00090793          	mv	a5,s2
    23f4:	f21ff06f          	j	2314 <fatfs_lfn_create_sfn+0x88>
    23f8:	00168693          	addi	a3,a3,1
    23fc:	f29ff06f          	j	2324 <fatfs_lfn_create_sfn+0x98>
    2400:	00000513          	li	a0,0
    2404:	f9dff06f          	j	23a0 <fatfs_lfn_create_sfn+0x114>

00002408 <fatfs_lfn_generate_tail>:
    2408:	000187b7          	lui	a5,0x18
    240c:	69f78793          	addi	a5,a5,1695 # 1869f <__stacktop+0x869f>
    2410:	16c7e463          	bltu	a5,a2,2578 <fatfs_lfn_generate_tail+0x170>
    2414:	fa010113          	addi	sp,sp,-96
    2418:	04812c23          	sw	s0,88(sp)
    241c:	04912a23          	sw	s1,84(sp)
    2420:	03712e23          	sw	s7,60(sp)
    2424:	00060413          	mv	s0,a2
    2428:	00058b93          	mv	s7,a1
    242c:	00c00613          	li	a2,12
    2430:	00000593          	li	a1,0
    2434:	00050493          	mv	s1,a0
    2438:	00410513          	addi	a0,sp,4
    243c:	04112e23          	sw	ra,92(sp)
    2440:	05312623          	sw	s3,76(sp)
    2444:	05412423          	sw	s4,72(sp)
    2448:	05612023          	sw	s6,64(sp)
    244c:	05212823          	sw	s2,80(sp)
    2450:	05512223          	sw	s5,68(sp)
    2454:	fffff097          	auipc	ra,0xfffff
    2458:	e0c080e7          	jalr	-500(ra) # 1260 <memset>
    245c:	000055b7          	lui	a1,0x5
    2460:	07e00793          	li	a5,126
    2464:	01100613          	li	a2,17
    2468:	e4458593          	addi	a1,a1,-444 # 4e44 <LEDS+0xf8>
    246c:	01c10513          	addi	a0,sp,28
    2470:	01010993          	addi	s3,sp,16
    2474:	00f10223          	sb	a5,4(sp)
    2478:	00098a13          	mv	s4,s3
    247c:	fffff097          	auipc	ra,0xfffff
    2480:	e00080e7          	jalr	-512(ra) # 127c <memcpy>
    2484:	00900b13          	li	s6,9
    2488:	00a00593          	li	a1,10
    248c:	00040513          	mv	a0,s0
    2490:	fffff097          	auipc	ra,0xfffff
    2494:	d6c080e7          	jalr	-660(ra) # 11fc <__umodsi3>
    2498:	03050793          	addi	a5,a0,48
    249c:	00278533          	add	a0,a5,sp
    24a0:	fec54783          	lbu	a5,-20(a0)
    24a4:	00098913          	mv	s2,s3
    24a8:	00040513          	mv	a0,s0
    24ac:	00a00593          	li	a1,10
    24b0:	00f98023          	sb	a5,0(s3)
    24b4:	00040a93          	mv	s5,s0
    24b8:	fffff097          	auipc	ra,0xfffff
    24bc:	cfc080e7          	jalr	-772(ra) # 11b4 <__udivsi3>
    24c0:	00198993          	addi	s3,s3,1
    24c4:	00050413          	mv	s0,a0
    24c8:	fd5b60e3          	bltu	s6,s5,2488 <fatfs_lfn_generate_tail+0x80>
    24cc:	00098023          	sb	zero,0(s3)
    24d0:	00410713          	addi	a4,sp,4
    24d4:	00090793          	mv	a5,s2
    24d8:	0947f663          	bgeu	a5,s4,2564 <fatfs_lfn_generate_tail+0x15c>
    24dc:	00f10713          	addi	a4,sp,15
    24e0:	00000793          	li	a5,0
    24e4:	00e96663          	bltu	s2,a4,24f0 <fatfs_lfn_generate_tail+0xe8>
    24e8:	41490933          	sub	s2,s2,s4
    24ec:	00190793          	addi	a5,s2,1
    24f0:	03078793          	addi	a5,a5,48
    24f4:	002787b3          	add	a5,a5,sp
    24f8:	000b8593          	mv	a1,s7
    24fc:	fc078aa3          	sb	zero,-43(a5)
    2500:	00b00613          	li	a2,11
    2504:	00048513          	mv	a0,s1
    2508:	fffff097          	auipc	ra,0xfffff
    250c:	d74080e7          	jalr	-652(ra) # 127c <memcpy>
    2510:	00410513          	addi	a0,sp,4
    2514:	fffff097          	auipc	ra,0xfffff
    2518:	d8c080e7          	jalr	-628(ra) # 12a0 <strlen>
    251c:	40a484b3          	sub	s1,s1,a0
    2520:	00050613          	mv	a2,a0
    2524:	00410593          	addi	a1,sp,4
    2528:	00848513          	addi	a0,s1,8
    252c:	fffff097          	auipc	ra,0xfffff
    2530:	d50080e7          	jalr	-688(ra) # 127c <memcpy>
    2534:	05c12083          	lw	ra,92(sp)
    2538:	05812403          	lw	s0,88(sp)
    253c:	05412483          	lw	s1,84(sp)
    2540:	05012903          	lw	s2,80(sp)
    2544:	04c12983          	lw	s3,76(sp)
    2548:	04812a03          	lw	s4,72(sp)
    254c:	04412a83          	lw	s5,68(sp)
    2550:	04012b03          	lw	s6,64(sp)
    2554:	03c12b83          	lw	s7,60(sp)
    2558:	00100513          	li	a0,1
    255c:	06010113          	addi	sp,sp,96
    2560:	00008067          	ret
    2564:	0007c683          	lbu	a3,0(a5)
    2568:	00170713          	addi	a4,a4,1
    256c:	fff78793          	addi	a5,a5,-1
    2570:	00d70023          	sb	a3,0(a4)
    2574:	f65ff06f          	j	24d8 <fatfs_lfn_generate_tail+0xd0>
    2578:	00000513          	li	a0,0
    257c:	00008067          	ret

00002580 <fatfs_total_path_levels>:
    2580:	fff00793          	li	a5,-1
    2584:	06050263          	beqz	a0,25e8 <fatfs_total_path_levels+0x68>
    2588:	00054703          	lbu	a4,0(a0)
    258c:	02f00793          	li	a5,47
    2590:	00f71863          	bne	a4,a5,25a0 <fatfs_total_path_levels+0x20>
    2594:	00150513          	addi	a0,a0,1
    2598:	00000793          	li	a5,0
    259c:	0400006f          	j	25dc <fatfs_total_path_levels+0x5c>
    25a0:	00154703          	lbu	a4,1(a0)
    25a4:	03a00793          	li	a5,58
    25a8:	00f70a63          	beq	a4,a5,25bc <fatfs_total_path_levels+0x3c>
    25ac:	00254683          	lbu	a3,2(a0)
    25b0:	05c00713          	li	a4,92
    25b4:	fff00793          	li	a5,-1
    25b8:	02e69863          	bne	a3,a4,25e8 <fatfs_total_path_levels+0x68>
    25bc:	00350513          	addi	a0,a0,3
    25c0:	05c00713          	li	a4,92
    25c4:	fd5ff06f          	j	2598 <fatfs_total_path_levels+0x18>
    25c8:	00150513          	addi	a0,a0,1
    25cc:	00e68663          	beq	a3,a4,25d8 <fatfs_total_path_levels+0x58>
    25d0:	00054683          	lbu	a3,0(a0)
    25d4:	fe069ae3          	bnez	a3,25c8 <fatfs_total_path_levels+0x48>
    25d8:	00178793          	addi	a5,a5,1
    25dc:	00054683          	lbu	a3,0(a0)
    25e0:	fe0698e3          	bnez	a3,25d0 <fatfs_total_path_levels+0x50>
    25e4:	fff78793          	addi	a5,a5,-1
    25e8:	00078513          	mv	a0,a5
    25ec:	00008067          	ret

000025f0 <fatfs_get_substring>:
    25f0:	0cd05e63          	blez	a3,26cc <fatfs_get_substring+0xdc>
    25f4:	0c050c63          	beqz	a0,26cc <fatfs_get_substring+0xdc>
    25f8:	fe010113          	addi	sp,sp,-32
    25fc:	00812c23          	sw	s0,24(sp)
    2600:	00112e23          	sw	ra,28(sp)
    2604:	00912a23          	sw	s1,20(sp)
    2608:	00054483          	lbu	s1,0(a0)
    260c:	02f00793          	li	a5,47
    2610:	00150413          	addi	s0,a0,1
    2614:	02f48463          	beq	s1,a5,263c <fatfs_get_substring+0x4c>
    2618:	00154703          	lbu	a4,1(a0)
    261c:	03a00793          	li	a5,58
    2620:	00f70a63          	beq	a4,a5,2634 <fatfs_get_substring+0x44>
    2624:	00254803          	lbu	a6,2(a0)
    2628:	05c00713          	li	a4,92
    262c:	fff00793          	li	a5,-1
    2630:	04e81c63          	bne	a6,a4,2688 <fatfs_get_substring+0x98>
    2634:	00350413          	addi	s0,a0,3
    2638:	05c00493          	li	s1,92
    263c:	00040513          	mv	a0,s0
    2640:	00d12623          	sw	a3,12(sp)
    2644:	00c12423          	sw	a2,8(sp)
    2648:	00b12223          	sw	a1,4(sp)
    264c:	fffff097          	auipc	ra,0xfffff
    2650:	c54080e7          	jalr	-940(ra) # 12a0 <strlen>
    2654:	00c12683          	lw	a3,12(sp)
    2658:	00412583          	lw	a1,4(sp)
    265c:	00812603          	lw	a2,8(sp)
    2660:	00000713          	li	a4,0
    2664:	00000813          	li	a6,0
    2668:	00000793          	li	a5,0
    266c:	fff68693          	addi	a3,a3,-1
    2670:	00e608b3          	add	a7,a2,a4
    2674:	02a7c663          	blt	a5,a0,26a0 <fatfs_get_substring+0xb0>
    2678:	00088023          	sb	zero,0(a7)
    267c:	00064783          	lbu	a5,0(a2)
    2680:	0017b793          	seqz	a5,a5
    2684:	40f007b3          	neg	a5,a5
    2688:	01c12083          	lw	ra,28(sp)
    268c:	01812403          	lw	s0,24(sp)
    2690:	01412483          	lw	s1,20(sp)
    2694:	00078513          	mv	a0,a5
    2698:	02010113          	addi	sp,sp,32
    269c:	00008067          	ret
    26a0:	00f40333          	add	t1,s0,a5
    26a4:	00034303          	lbu	t1,0(t1)
    26a8:	00931863          	bne	t1,s1,26b8 <fatfs_get_substring+0xc8>
    26ac:	00180813          	addi	a6,a6,1
    26b0:	00178793          	addi	a5,a5,1
    26b4:	fbdff06f          	j	2670 <fatfs_get_substring+0x80>
    26b8:	feb81ce3          	bne	a6,a1,26b0 <fatfs_get_substring+0xc0>
    26bc:	fed75ae3          	bge	a4,a3,26b0 <fatfs_get_substring+0xc0>
    26c0:	00170713          	addi	a4,a4,1
    26c4:	00688023          	sb	t1,0(a7)
    26c8:	fe9ff06f          	j	26b0 <fatfs_get_substring+0xc0>
    26cc:	fff00793          	li	a5,-1
    26d0:	00078513          	mv	a0,a5
    26d4:	00008067          	ret

000026d8 <fatfs_split_path>:
    26d8:	fd010113          	addi	sp,sp,-48
    26dc:	02912223          	sw	s1,36(sp)
    26e0:	03212023          	sw	s2,32(sp)
    26e4:	01312e23          	sw	s3,28(sp)
    26e8:	01412c23          	sw	s4,24(sp)
    26ec:	02112623          	sw	ra,44(sp)
    26f0:	02812423          	sw	s0,40(sp)
    26f4:	01512a23          	sw	s5,20(sp)
    26f8:	00050993          	mv	s3,a0
    26fc:	00058493          	mv	s1,a1
    2700:	00060913          	mv	s2,a2
    2704:	00068a13          	mv	s4,a3
    2708:	00e12623          	sw	a4,12(sp)
    270c:	00000097          	auipc	ra,0x0
    2710:	e74080e7          	jalr	-396(ra) # 2580 <fatfs_total_path_levels>
    2714:	fff00793          	li	a5,-1
    2718:	02f51863          	bne	a0,a5,2748 <fatfs_split_path+0x70>
    271c:	fff00413          	li	s0,-1
    2720:	02c12083          	lw	ra,44(sp)
    2724:	00040513          	mv	a0,s0
    2728:	02812403          	lw	s0,40(sp)
    272c:	02412483          	lw	s1,36(sp)
    2730:	02012903          	lw	s2,32(sp)
    2734:	01c12983          	lw	s3,28(sp)
    2738:	01812a03          	lw	s4,24(sp)
    273c:	01412a83          	lw	s5,20(sp)
    2740:	03010113          	addi	sp,sp,48
    2744:	00008067          	ret
    2748:	00c12683          	lw	a3,12(sp)
    274c:	00050593          	mv	a1,a0
    2750:	00a12623          	sw	a0,12(sp)
    2754:	000a0613          	mv	a2,s4
    2758:	00098513          	mv	a0,s3
    275c:	00000097          	auipc	ra,0x0
    2760:	e94080e7          	jalr	-364(ra) # 25f0 <fatfs_get_substring>
    2764:	00050413          	mv	s0,a0
    2768:	fa051ae3          	bnez	a0,271c <fatfs_split_path+0x44>
    276c:	00c12583          	lw	a1,12(sp)
    2770:	00059663          	bnez	a1,277c <fatfs_split_path+0xa4>
    2774:	00048023          	sb	zero,0(s1)
    2778:	fa9ff06f          	j	2720 <fatfs_split_path+0x48>
    277c:	00098513          	mv	a0,s3
    2780:	fffff097          	auipc	ra,0xfffff
    2784:	b20080e7          	jalr	-1248(ra) # 12a0 <strlen>
    2788:	00050a93          	mv	s5,a0
    278c:	000a0513          	mv	a0,s4
    2790:	fffff097          	auipc	ra,0xfffff
    2794:	b10080e7          	jalr	-1264(ra) # 12a0 <strlen>
    2798:	40aa8633          	sub	a2,s5,a0
    279c:	00c95463          	bge	s2,a2,27a4 <fatfs_split_path+0xcc>
    27a0:	00090613          	mv	a2,s2
    27a4:	00048513          	mv	a0,s1
    27a8:	00098593          	mv	a1,s3
    27ac:	00c12623          	sw	a2,12(sp)
    27b0:	fffff097          	auipc	ra,0xfffff
    27b4:	acc080e7          	jalr	-1332(ra) # 127c <memcpy>
    27b8:	00c12603          	lw	a2,12(sp)
    27bc:	00c484b3          	add	s1,s1,a2
    27c0:	fe048fa3          	sb	zero,-1(s1)
    27c4:	f5dff06f          	j	2720 <fatfs_split_path+0x48>

000027c8 <fatfs_compare_names>:
    27c8:	fd010113          	addi	sp,sp,-48
    27cc:	02112623          	sw	ra,44(sp)
    27d0:	03212023          	sw	s2,32(sp)
    27d4:	01312e23          	sw	s3,28(sp)
    27d8:	01412c23          	sw	s4,24(sp)
    27dc:	01512a23          	sw	s5,20(sp)
    27e0:	00058a13          	mv	s4,a1
    27e4:	02812423          	sw	s0,40(sp)
    27e8:	02912223          	sw	s1,36(sp)
    27ec:	01612823          	sw	s6,16(sp)
    27f0:	01712623          	sw	s7,12(sp)
    27f4:	01812423          	sw	s8,8(sp)
    27f8:	00050a93          	mv	s5,a0
    27fc:	fffff097          	auipc	ra,0xfffff
    2800:	2bc080e7          	jalr	700(ra) # 1ab8 <FileString_GetExtension>
    2804:	00050993          	mv	s3,a0
    2808:	000a0513          	mv	a0,s4
    280c:	fffff097          	auipc	ra,0xfffff
    2810:	2ac080e7          	jalr	684(ra) # 1ab8 <FileString_GetExtension>
    2814:	fff00793          	li	a5,-1
    2818:	00050913          	mv	s2,a0
    281c:	02f99e63          	bne	s3,a5,2858 <fatfs_compare_names+0x90>
    2820:	0f350063          	beq	a0,s3,2900 <fatfs_compare_names+0x138>
    2824:	00000513          	li	a0,0
    2828:	02c12083          	lw	ra,44(sp)
    282c:	02812403          	lw	s0,40(sp)
    2830:	02412483          	lw	s1,36(sp)
    2834:	02012903          	lw	s2,32(sp)
    2838:	01c12983          	lw	s3,28(sp)
    283c:	01812a03          	lw	s4,24(sp)
    2840:	01412a83          	lw	s5,20(sp)
    2844:	01012b03          	lw	s6,16(sp)
    2848:	00c12b83          	lw	s7,12(sp)
    284c:	00812c03          	lw	s8,8(sp)
    2850:	03010113          	addi	sp,sp,48
    2854:	00008067          	ret
    2858:	fcf506e3          	beq	a0,a5,2824 <fatfs_compare_names+0x5c>
    285c:	00198793          	addi	a5,s3,1
    2860:	00fa8b33          	add	s6,s5,a5
    2864:	00050413          	mv	s0,a0
    2868:	00150793          	addi	a5,a0,1
    286c:	000b0513          	mv	a0,s6
    2870:	00fa0bb3          	add	s7,s4,a5
    2874:	fffff097          	auipc	ra,0xfffff
    2878:	a2c080e7          	jalr	-1492(ra) # 12a0 <strlen>
    287c:	00050c13          	mv	s8,a0
    2880:	000b8513          	mv	a0,s7
    2884:	00098493          	mv	s1,s3
    2888:	fffff097          	auipc	ra,0xfffff
    288c:	a18080e7          	jalr	-1512(ra) # 12a0 <strlen>
    2890:	f8ac1ae3          	bne	s8,a0,2824 <fatfs_compare_names+0x5c>
    2894:	000b0513          	mv	a0,s6
    2898:	fffff097          	auipc	ra,0xfffff
    289c:	a08080e7          	jalr	-1528(ra) # 12a0 <strlen>
    28a0:	00050613          	mv	a2,a0
    28a4:	000b8593          	mv	a1,s7
    28a8:	000b0513          	mv	a0,s6
    28ac:	fffff097          	auipc	ra,0xfffff
    28b0:	19c080e7          	jalr	412(ra) # 1a48 <FileString_StrCmpNoCase>
    28b4:	f60518e3          	bnez	a0,2824 <fatfs_compare_names+0x5c>
    28b8:	fff48793          	addi	a5,s1,-1
    28bc:	00fa87b3          	add	a5,s5,a5
    28c0:	41378733          	sub	a4,a5,s3
    28c4:	02000693          	li	a3,32
    28c8:	06e79263          	bne	a5,a4,292c <fatfs_compare_names+0x164>
    28cc:	fff40793          	addi	a5,s0,-1
    28d0:	00fa07b3          	add	a5,s4,a5
    28d4:	41278733          	sub	a4,a5,s2
    28d8:	02000693          	li	a3,32
    28dc:	06e79263          	bne	a5,a4,2940 <fatfs_compare_names+0x178>
    28e0:	f53912e3          	bne	s2,s3,2824 <fatfs_compare_names+0x5c>
    28e4:	00090613          	mv	a2,s2
    28e8:	000a0593          	mv	a1,s4
    28ec:	000a8513          	mv	a0,s5
    28f0:	fffff097          	auipc	ra,0xfffff
    28f4:	158080e7          	jalr	344(ra) # 1a48 <FileString_StrCmpNoCase>
    28f8:	00153513          	seqz	a0,a0
    28fc:	f2dff06f          	j	2828 <fatfs_compare_names+0x60>
    2900:	000a8513          	mv	a0,s5
    2904:	fffff097          	auipc	ra,0xfffff
    2908:	99c080e7          	jalr	-1636(ra) # 12a0 <strlen>
    290c:	00050493          	mv	s1,a0
    2910:	00050993          	mv	s3,a0
    2914:	000a0513          	mv	a0,s4
    2918:	fffff097          	auipc	ra,0xfffff
    291c:	988080e7          	jalr	-1656(ra) # 12a0 <strlen>
    2920:	00050413          	mv	s0,a0
    2924:	00050913          	mv	s2,a0
    2928:	f91ff06f          	j	28b8 <fatfs_compare_names+0xf0>
    292c:	0007c603          	lbu	a2,0(a5)
    2930:	f8d61ee3          	bne	a2,a3,28cc <fatfs_compare_names+0x104>
    2934:	415789b3          	sub	s3,a5,s5
    2938:	fff78793          	addi	a5,a5,-1
    293c:	f8dff06f          	j	28c8 <fatfs_compare_names+0x100>
    2940:	0007c603          	lbu	a2,0(a5)
    2944:	f8d61ee3          	bne	a2,a3,28e0 <fatfs_compare_names+0x118>
    2948:	41478933          	sub	s2,a5,s4
    294c:	fff78793          	addi	a5,a5,-1
    2950:	f8dff06f          	j	28dc <fatfs_compare_names+0x114>

00002954 <_check_file_open>:
    2954:	fe010113          	addi	sp,sp,-32
    2958:	000057b7          	lui	a5,0x5
    295c:	00812c23          	sw	s0,24(sp)
    2960:	2c87a403          	lw	s0,712(a5) # 52c8 <_open_file_list>
    2964:	00912a23          	sw	s1,20(sp)
    2968:	00112e23          	sw	ra,28(sp)
    296c:	01212823          	sw	s2,16(sp)
    2970:	01312623          	sw	s3,12(sp)
    2974:	00050493          	mv	s1,a0
    2978:	00041663          	bnez	s0,2984 <_check_file_open+0x30>
    297c:	00000513          	li	a0,0
    2980:	03c0006f          	j	29bc <_check_file_open+0x68>
    2984:	bc440793          	addi	a5,s0,-1084
    2988:	00f49663          	bne	s1,a5,2994 <_check_file_open+0x40>
    298c:	00442403          	lw	s0,4(s0)
    2990:	fe9ff06f          	j	2978 <_check_file_open+0x24>
    2994:	01448593          	addi	a1,s1,20
    2998:	bd840513          	addi	a0,s0,-1064
    299c:	00000097          	auipc	ra,0x0
    29a0:	e2c080e7          	jalr	-468(ra) # 27c8 <fatfs_compare_names>
    29a4:	fe0504e3          	beqz	a0,298c <_check_file_open+0x38>
    29a8:	11848593          	addi	a1,s1,280
    29ac:	cdc40513          	addi	a0,s0,-804
    29b0:	00000097          	auipc	ra,0x0
    29b4:	e18080e7          	jalr	-488(ra) # 27c8 <fatfs_compare_names>
    29b8:	fc050ae3          	beqz	a0,298c <_check_file_open+0x38>
    29bc:	01c12083          	lw	ra,28(sp)
    29c0:	01812403          	lw	s0,24(sp)
    29c4:	01412483          	lw	s1,20(sp)
    29c8:	01012903          	lw	s2,16(sp)
    29cc:	00c12983          	lw	s3,12(sp)
    29d0:	02010113          	addi	sp,sp,32
    29d4:	00008067          	ret

000029d8 <fatfs_get_sfn_display_name>:
    29d8:	00000713          	li	a4,0
    29dc:	02000613          	li	a2,32
    29e0:	01900813          	li	a6,25
    29e4:	0005c783          	lbu	a5,0(a1)
    29e8:	00078663          	beqz	a5,29f4 <fatfs_get_sfn_display_name+0x1c>
    29ec:	ff470693          	addi	a3,a4,-12
    29f0:	00069863          	bnez	a3,2a00 <fatfs_get_sfn_display_name+0x28>
    29f4:	00050023          	sb	zero,0(a0)
    29f8:	00100513          	li	a0,1
    29fc:	00008067          	ret
    2a00:	00158593          	addi	a1,a1,1
    2a04:	fec780e3          	beq	a5,a2,29e4 <fatfs_get_sfn_display_name+0xc>
    2a08:	fbf78693          	addi	a3,a5,-65
    2a0c:	0ff6f693          	zext.b	a3,a3
    2a10:	00d86663          	bltu	a6,a3,2a1c <fatfs_get_sfn_display_name+0x44>
    2a14:	02078793          	addi	a5,a5,32
    2a18:	0ff7f793          	zext.b	a5,a5
    2a1c:	00f50023          	sb	a5,0(a0)
    2a20:	00170713          	addi	a4,a4,1
    2a24:	00150513          	addi	a0,a0,1
    2a28:	fbdff06f          	j	29e4 <fatfs_get_sfn_display_name+0xc>

00002a2c <fatfs_fat_init>:
    2a2c:	ff010113          	addi	sp,sp,-16
    2a30:	00812423          	sw	s0,8(sp)
    2a34:	00912223          	sw	s1,4(sp)
    2a38:	00112623          	sw	ra,12(sp)
    2a3c:	fff00793          	li	a5,-1
    2a40:	25850493          	addi	s1,a0,600
    2a44:	00050413          	mv	s0,a0
    2a48:	44f52c23          	sw	a5,1112(a0)
    2a4c:	24052a23          	sw	zero,596(a0)
    2a50:	44052e23          	sw	zero,1116(a0)
    2a54:	20000613          	li	a2,512
    2a58:	00048513          	mv	a0,s1
    2a5c:	00000593          	li	a1,0
    2a60:	fffff097          	auipc	ra,0xfffff
    2a64:	800080e7          	jalr	-2048(ra) # 1260 <memset>
    2a68:	25442783          	lw	a5,596(s0)
    2a6c:	00c12083          	lw	ra,12(sp)
    2a70:	24942a23          	sw	s1,596(s0)
    2a74:	46042023          	sw	zero,1120(s0)
    2a78:	46f42223          	sw	a5,1124(s0)
    2a7c:	00812403          	lw	s0,8(sp)
    2a80:	00412483          	lw	s1,4(sp)
    2a84:	01010113          	addi	sp,sp,16
    2a88:	00008067          	ret

00002a8c <fatfs_init>:
    2a8c:	fd010113          	addi	sp,sp,-48
    2a90:	02812423          	sw	s0,40(sp)
    2a94:	02112623          	sw	ra,44(sp)
    2a98:	02912223          	sw	s1,36(sp)
    2a9c:	03212023          	sw	s2,32(sp)
    2aa0:	01312e23          	sw	s3,28(sp)
    2aa4:	fff00793          	li	a5,-1
    2aa8:	24f52223          	sw	a5,580(a0)
    2aac:	24052423          	sw	zero,584(a0)
    2ab0:	02052223          	sw	zero,36(a0)
    2ab4:	00050413          	mv	s0,a0
    2ab8:	00000097          	auipc	ra,0x0
    2abc:	f74080e7          	jalr	-140(ra) # 2a2c <fatfs_fat_init>
    2ac0:	03442783          	lw	a5,52(s0)
    2ac4:	02079463          	bnez	a5,2aec <fatfs_init+0x60>
    2ac8:	fff00713          	li	a4,-1
    2acc:	02c12083          	lw	ra,44(sp)
    2ad0:	02812403          	lw	s0,40(sp)
    2ad4:	02412483          	lw	s1,36(sp)
    2ad8:	02012903          	lw	s2,32(sp)
    2adc:	01c12983          	lw	s3,28(sp)
    2ae0:	00070513          	mv	a0,a4
    2ae4:	03010113          	addi	sp,sp,48
    2ae8:	00008067          	ret
    2aec:	04440593          	addi	a1,s0,68
    2af0:	00100613          	li	a2,1
    2af4:	00000513          	li	a0,0
    2af8:	00b12623          	sw	a1,12(sp)
    2afc:	000780e7          	jalr	a5
    2b00:	fc0504e3          	beqz	a0,2ac8 <fatfs_init+0x3c>
    2b04:	24244703          	lbu	a4,578(s0)
    2b08:	05500793          	li	a5,85
    2b0c:	00c12583          	lw	a1,12(sp)
    2b10:	00f70663          	beq	a4,a5,2b1c <fatfs_init+0x90>
    2b14:	ffd00713          	li	a4,-3
    2b18:	fb5ff06f          	j	2acc <fatfs_init+0x40>
    2b1c:	24344703          	lbu	a4,579(s0)
    2b20:	0aa00793          	li	a5,170
    2b24:	fef718e3          	bne	a4,a5,2b14 <fatfs_init+0x88>
    2b28:	20644783          	lbu	a5,518(s0)
    2b2c:	00600713          	li	a4,6
    2b30:	02f76463          	bltu	a4,a5,2b58 <fatfs_init+0xcc>
    2b34:	00400713          	li	a4,4
    2b38:	00f76663          	bltu	a4,a5,2b44 <fatfs_init+0xb8>
    2b3c:	00000513          	li	a0,0
    2b40:	02078663          	beqz	a5,2b6c <fatfs_init+0xe0>
    2b44:	20c45503          	lhu	a0,524(s0)
    2b48:	20a45783          	lhu	a5,522(s0)
    2b4c:	01051513          	slli	a0,a0,0x10
    2b50:	00f56533          	or	a0,a0,a5
    2b54:	0180006f          	j	2b6c <fatfs_init+0xe0>
    2b58:	00c00713          	li	a4,12
    2b5c:	12f76663          	bltu	a4,a5,2c88 <fatfs_init+0x1fc>
    2b60:	00a00713          	li	a4,10
    2b64:	00000513          	li	a0,0
    2b68:	fcf76ee3          	bltu	a4,a5,2b44 <fatfs_init+0xb8>
    2b6c:	03442783          	lw	a5,52(s0)
    2b70:	00a42e23          	sw	a0,28(s0)
    2b74:	00100613          	li	a2,1
    2b78:	000780e7          	jalr	a5
    2b7c:	f40506e3          	beqz	a0,2ac8 <fatfs_init+0x3c>
    2b80:	05044783          	lbu	a5,80(s0)
    2b84:	04f44703          	lbu	a4,79(s0)
    2b88:	20000693          	li	a3,512
    2b8c:	00879793          	slli	a5,a5,0x8
    2b90:	00e7e7b3          	or	a5,a5,a4
    2b94:	ffe00713          	li	a4,-2
    2b98:	f2d79ae3          	bne	a5,a3,2acc <fatfs_init+0x40>
    2b9c:	05644483          	lbu	s1,86(s0)
    2ba0:	05544783          	lbu	a5,85(s0)
    2ba4:	05144983          	lbu	s3,81(s0)
    2ba8:	00849493          	slli	s1,s1,0x8
    2bac:	05a45583          	lhu	a1,90(s0)
    2bb0:	00f4e4b3          	or	s1,s1,a5
    2bb4:	01340023          	sb	s3,0(s0)
    2bb8:	02941423          	sh	s1,40(s0)
    2bbc:	05245903          	lhu	s2,82(s0)
    2bc0:	05444503          	lbu	a0,84(s0)
    2bc4:	00059463          	bnez	a1,2bcc <fatfs_init+0x140>
    2bc8:	06842583          	lw	a1,104(s0)
    2bcc:	07042783          	lw	a5,112(s0)
    2bd0:	02b42023          	sw	a1,32(s0)
    2bd4:	00549493          	slli	s1,s1,0x5
    2bd8:	00f42423          	sw	a5,8(s0)
    2bdc:	07445783          	lhu	a5,116(s0)
    2be0:	1ff48493          	addi	s1,s1,511
    2be4:	4094d493          	srai	s1,s1,0x9
    2be8:	00f41c23          	sh	a5,24(s0)
    2bec:	fffff097          	auipc	ra,0xfffff
    2bf0:	dc4080e7          	jalr	-572(ra) # 19b0 <__mulsi3>
    2bf4:	00a907b3          	add	a5,s2,a0
    2bf8:	00f42623          	sw	a5,12(s0)
    2bfc:	01c42783          	lw	a5,28(s0)
    2c00:	24245703          	lhu	a4,578(s0)
    2c04:	00942823          	sw	s1,16(s0)
    2c08:	00f907b3          	add	a5,s2,a5
    2c0c:	00f42a23          	sw	a5,20(s0)
    2c10:	00f507b3          	add	a5,a0,a5
    2c14:	00f42223          	sw	a5,4(s0)
    2c18:	0000b7b7          	lui	a5,0xb
    2c1c:	a5578793          	addi	a5,a5,-1451 # aa55 <framebuffer+0x34fd>
    2c20:	eef71ae3          	bne	a4,a5,2b14 <fatfs_init+0x88>
    2c24:	05844783          	lbu	a5,88(s0)
    2c28:	05744703          	lbu	a4,87(s0)
    2c2c:	00879793          	slli	a5,a5,0x8
    2c30:	00e7e7b3          	or	a5,a5,a4
    2c34:	00079463          	bnez	a5,2c3c <fatfs_init+0x1b0>
    2c38:	06442783          	lw	a5,100(s0)
    2c3c:	ffb00713          	li	a4,-5
    2c40:	e80986e3          	beqz	s3,2acc <fatfs_init+0x40>
    2c44:	00990933          	add	s2,s2,s1
    2c48:	00a90533          	add	a0,s2,a0
    2c4c:	40a78533          	sub	a0,a5,a0
    2c50:	00098593          	mv	a1,s3
    2c54:	ffffe097          	auipc	ra,0xffffe
    2c58:	560080e7          	jalr	1376(ra) # 11b4 <__udivsi3>
    2c5c:	000017b7          	lui	a5,0x1
    2c60:	ff478793          	addi	a5,a5,-12 # ff4 <sdcard_preinit+0x54>
    2c64:	ffb00713          	li	a4,-5
    2c68:	e6a7f2e3          	bgeu	a5,a0,2acc <fatfs_init+0x40>
    2c6c:	000107b7          	lui	a5,0x10
    2c70:	ff478793          	addi	a5,a5,-12 # fff4 <_files+0x4634>
    2c74:	02a7e663          	bltu	a5,a0,2ca0 <fatfs_init+0x214>
    2c78:	00042423          	sw	zero,8(s0)
    2c7c:	02042823          	sw	zero,48(s0)
    2c80:	00000713          	li	a4,0
    2c84:	e49ff06f          	j	2acc <fatfs_init+0x40>
    2c88:	ff278793          	addi	a5,a5,-14
    2c8c:	0ff7f793          	zext.b	a5,a5
    2c90:	00100713          	li	a4,1
    2c94:	00000513          	li	a0,0
    2c98:	eaf776e3          	bgeu	a4,a5,2b44 <fatfs_init+0xb8>
    2c9c:	ed1ff06f          	j	2b6c <fatfs_init+0xe0>
    2ca0:	00100793          	li	a5,1
    2ca4:	02f42823          	sw	a5,48(s0)
    2ca8:	fd9ff06f          	j	2c80 <fatfs_init+0x1f4>

00002cac <fl_attach_media>:
    2cac:	000057b7          	lui	a5,0x5
    2cb0:	2d47a783          	lw	a5,724(a5) # 52d4 <_filelib_init>
    2cb4:	fe010113          	addi	sp,sp,-32
    2cb8:	00812c23          	sw	s0,24(sp)
    2cbc:	00112e23          	sw	ra,28(sp)
    2cc0:	00050413          	mv	s0,a0
    2cc4:	00079a63          	bnez	a5,2cd8 <fl_attach_media+0x2c>
    2cc8:	00b12623          	sw	a1,12(sp)
    2ccc:	fffff097          	auipc	ra,0xfffff
    2cd0:	178080e7          	jalr	376(ra) # 1e44 <fl_init>
    2cd4:	00c12583          	lw	a1,12(sp)
    2cd8:	0000b7b7          	lui	a5,0xb
    2cdc:	55878513          	addi	a0,a5,1368 # b558 <_fs>
    2ce0:	02b52c23          	sw	a1,56(a0)
    2ce4:	02852a23          	sw	s0,52(a0)
    2ce8:	00000097          	auipc	ra,0x0
    2cec:	da4080e7          	jalr	-604(ra) # 2a8c <fatfs_init>
    2cf0:	00050593          	mv	a1,a0
    2cf4:	02050863          	beqz	a0,2d24 <fl_attach_media+0x78>
    2cf8:	00a12623          	sw	a0,12(sp)
    2cfc:	00005537          	lui	a0,0x5
    2d00:	e5850513          	addi	a0,a0,-424 # 4e58 <LEDS+0x10c>
    2d04:	fffff097          	auipc	ra,0xfffff
    2d08:	b70080e7          	jalr	-1168(ra) # 1874 <printf>
    2d0c:	00c12583          	lw	a1,12(sp)
    2d10:	01c12083          	lw	ra,28(sp)
    2d14:	01812403          	lw	s0,24(sp)
    2d18:	00058513          	mv	a0,a1
    2d1c:	02010113          	addi	sp,sp,32
    2d20:	00008067          	ret
    2d24:	000057b7          	lui	a5,0x5
    2d28:	00100713          	li	a4,1
    2d2c:	2ce7a823          	sw	a4,720(a5) # 52d0 <_filelib_valid>
    2d30:	fe1ff06f          	j	2d10 <fl_attach_media+0x64>

00002d34 <fatfs_fat_purge>:
    2d34:	25452583          	lw	a1,596(a0)
    2d38:	fe010113          	addi	sp,sp,-32
    2d3c:	00812c23          	sw	s0,24(sp)
    2d40:	00112e23          	sw	ra,28(sp)
    2d44:	00050413          	mv	s0,a0
    2d48:	00059663          	bnez	a1,2d54 <fatfs_fat_purge+0x20>
    2d4c:	00100513          	li	a0,1
    2d50:	02c0006f          	j	2d7c <fatfs_fat_purge+0x48>
    2d54:	2045a783          	lw	a5,516(a1)
    2d58:	00079663          	bnez	a5,2d64 <fatfs_fat_purge+0x30>
    2d5c:	20c5a583          	lw	a1,524(a1)
    2d60:	fe9ff06f          	j	2d48 <fatfs_fat_purge+0x14>
    2d64:	00040513          	mv	a0,s0
    2d68:	00b12623          	sw	a1,12(sp)
    2d6c:	fffff097          	auipc	ra,0xfffff
    2d70:	d78080e7          	jalr	-648(ra) # 1ae4 <fatfs_fat_writeback>
    2d74:	00c12583          	lw	a1,12(sp)
    2d78:	fe0512e3          	bnez	a0,2d5c <fatfs_fat_purge+0x28>
    2d7c:	01c12083          	lw	ra,28(sp)
    2d80:	01812403          	lw	s0,24(sp)
    2d84:	02010113          	addi	sp,sp,32
    2d88:	00008067          	ret

00002d8c <fatfs_find_next_cluster>:
    2d8c:	ff010113          	addi	sp,sp,-16
    2d90:	00812423          	sw	s0,8(sp)
    2d94:	01212023          	sw	s2,0(sp)
    2d98:	00112623          	sw	ra,12(sp)
    2d9c:	00912223          	sw	s1,4(sp)
    2da0:	00050913          	mv	s2,a0
    2da4:	00200413          	li	s0,2
    2da8:	00058463          	beqz	a1,2db0 <fatfs_find_next_cluster+0x24>
    2dac:	00058413          	mv	s0,a1
    2db0:	03092783          	lw	a5,48(s2)
    2db4:	00745493          	srli	s1,s0,0x7
    2db8:	00079463          	bnez	a5,2dc0 <fatfs_find_next_cluster+0x34>
    2dbc:	00845493          	srli	s1,s0,0x8
    2dc0:	01492583          	lw	a1,20(s2)
    2dc4:	00090513          	mv	a0,s2
    2dc8:	00b485b3          	add	a1,s1,a1
    2dcc:	fffff097          	auipc	ra,0xfffff
    2dd0:	d9c080e7          	jalr	-612(ra) # 1b68 <fatfs_fat_read_sector>
    2dd4:	00050793          	mv	a5,a0
    2dd8:	fff00513          	li	a0,-1
    2ddc:	04078863          	beqz	a5,2e2c <fatfs_find_next_cluster+0xa0>
    2de0:	03092703          	lw	a4,48(s2)
    2de4:	2087a783          	lw	a5,520(a5)
    2de8:	04071e63          	bnez	a4,2e44 <fatfs_find_next_cluster+0xb8>
    2dec:	00849493          	slli	s1,s1,0x8
    2df0:	40940433          	sub	s0,s0,s1
    2df4:	00141413          	slli	s0,s0,0x1
    2df8:	01041413          	slli	s0,s0,0x10
    2dfc:	01045413          	srli	s0,s0,0x10
    2e00:	008787b3          	add	a5,a5,s0
    2e04:	0017c503          	lbu	a0,1(a5)
    2e08:	0007c783          	lbu	a5,0(a5)
    2e0c:	00851513          	slli	a0,a0,0x8
    2e10:	00f50533          	add	a0,a0,a5
    2e14:	ffff07b7          	lui	a5,0xffff0
    2e18:	00878793          	addi	a5,a5,8 # ffff0008 <__stacktop+0xfffe0008>
    2e1c:	00f507b3          	add	a5,a0,a5
    2e20:	00700713          	li	a4,7
    2e24:	00f76463          	bltu	a4,a5,2e2c <fatfs_find_next_cluster+0xa0>
    2e28:	fff00513          	li	a0,-1
    2e2c:	00c12083          	lw	ra,12(sp)
    2e30:	00812403          	lw	s0,8(sp)
    2e34:	00412483          	lw	s1,4(sp)
    2e38:	00012903          	lw	s2,0(sp)
    2e3c:	01010113          	addi	sp,sp,16
    2e40:	00008067          	ret
    2e44:	00749493          	slli	s1,s1,0x7
    2e48:	40940433          	sub	s0,s0,s1
    2e4c:	00241413          	slli	s0,s0,0x2
    2e50:	01041413          	slli	s0,s0,0x10
    2e54:	01045413          	srli	s0,s0,0x10
    2e58:	008787b3          	add	a5,a5,s0
    2e5c:	0037c503          	lbu	a0,3(a5)
    2e60:	0027c703          	lbu	a4,2(a5)
    2e64:	01851513          	slli	a0,a0,0x18
    2e68:	01071713          	slli	a4,a4,0x10
    2e6c:	00e50533          	add	a0,a0,a4
    2e70:	0007c703          	lbu	a4,0(a5)
    2e74:	0017c783          	lbu	a5,1(a5)
    2e78:	00e50533          	add	a0,a0,a4
    2e7c:	00879793          	slli	a5,a5,0x8
    2e80:	00f50533          	add	a0,a0,a5
    2e84:	00451513          	slli	a0,a0,0x4
    2e88:	00455513          	srli	a0,a0,0x4
    2e8c:	f00007b7          	lui	a5,0xf0000
    2e90:	f89ff06f          	j	2e18 <fatfs_find_next_cluster+0x8c>

00002e94 <fatfs_sector_reader>:
    2e94:	03052783          	lw	a5,48(a0)
    2e98:	fe010113          	addi	sp,sp,-32
    2e9c:	00812c23          	sw	s0,24(sp)
    2ea0:	01212823          	sw	s2,16(sp)
    2ea4:	01512223          	sw	s5,4(sp)
    2ea8:	00112e23          	sw	ra,28(sp)
    2eac:	00912a23          	sw	s1,20(sp)
    2eb0:	01312623          	sw	s3,12(sp)
    2eb4:	01412423          	sw	s4,8(sp)
    2eb8:	01612023          	sw	s6,0(sp)
    2ebc:	00f5e7b3          	or	a5,a1,a5
    2ec0:	00050413          	mv	s0,a0
    2ec4:	00060913          	mv	s2,a2
    2ec8:	00068a93          	mv	s5,a3
    2ecc:	08079063          	bnez	a5,2f4c <fatfs_sector_reader+0xb8>
    2ed0:	01052783          	lw	a5,16(a0)
    2ed4:	02f66863          	bltu	a2,a5,2f04 <fatfs_sector_reader+0x70>
    2ed8:	00000513          	li	a0,0
    2edc:	01c12083          	lw	ra,28(sp)
    2ee0:	01812403          	lw	s0,24(sp)
    2ee4:	01412483          	lw	s1,20(sp)
    2ee8:	01012903          	lw	s2,16(sp)
    2eec:	00c12983          	lw	s3,12(sp)
    2ef0:	00812a03          	lw	s4,8(sp)
    2ef4:	00412a83          	lw	s5,4(sp)
    2ef8:	00012b03          	lw	s6,0(sp)
    2efc:	02010113          	addi	sp,sp,32
    2f00:	00008067          	ret
    2f04:	01c52503          	lw	a0,28(a0)
    2f08:	00c42783          	lw	a5,12(s0)
    2f0c:	00f50533          	add	a0,a0,a5
    2f10:	01250533          	add	a0,a0,s2
    2f14:	0a0a8663          	beqz	s5,2fc0 <fatfs_sector_reader+0x12c>
    2f18:	03442783          	lw	a5,52(s0)
    2f1c:	00100613          	li	a2,1
    2f20:	000a8593          	mv	a1,s5
    2f24:	01812403          	lw	s0,24(sp)
    2f28:	01c12083          	lw	ra,28(sp)
    2f2c:	01412483          	lw	s1,20(sp)
    2f30:	01012903          	lw	s2,16(sp)
    2f34:	00c12983          	lw	s3,12(sp)
    2f38:	00812a03          	lw	s4,8(sp)
    2f3c:	00412a83          	lw	s5,4(sp)
    2f40:	00012b03          	lw	s6,0(sp)
    2f44:	02010113          	addi	sp,sp,32
    2f48:	00078067          	jr	a5 # f0000000 <__stacktop+0xefff0000>
    2f4c:	00054783          	lbu	a5,0(a0)
    2f50:	00058493          	mv	s1,a1
    2f54:	00060513          	mv	a0,a2
    2f58:	00078593          	mv	a1,a5
    2f5c:	00078a13          	mv	s4,a5
    2f60:	ffffe097          	auipc	ra,0xffffe
    2f64:	254080e7          	jalr	596(ra) # 11b4 <__udivsi3>
    2f68:	00050b13          	mv	s6,a0
    2f6c:	00000993          	li	s3,0
    2f70:	03699a63          	bne	s3,s6,2fa4 <fatfs_sector_reader+0x110>
    2f74:	fff00793          	li	a5,-1
    2f78:	f6f480e3          	beq	s1,a5,2ed8 <fatfs_sector_reader+0x44>
    2f7c:	000a0593          	mv	a1,s4
    2f80:	00090513          	mv	a0,s2
    2f84:	ffffe097          	auipc	ra,0xffffe
    2f88:	278080e7          	jalr	632(ra) # 11fc <__umodsi3>
    2f8c:	00050913          	mv	s2,a0
    2f90:	00048593          	mv	a1,s1
    2f94:	00040513          	mv	a0,s0
    2f98:	fffff097          	auipc	ra,0xfffff
    2f9c:	d7c080e7          	jalr	-644(ra) # 1d14 <fatfs_lba_of_cluster>
    2fa0:	f71ff06f          	j	2f10 <fatfs_sector_reader+0x7c>
    2fa4:	00048593          	mv	a1,s1
    2fa8:	00040513          	mv	a0,s0
    2fac:	00000097          	auipc	ra,0x0
    2fb0:	de0080e7          	jalr	-544(ra) # 2d8c <fatfs_find_next_cluster>
    2fb4:	00050493          	mv	s1,a0
    2fb8:	00198993          	addi	s3,s3,1
    2fbc:	fb5ff06f          	j	2f70 <fatfs_sector_reader+0xdc>
    2fc0:	24442783          	lw	a5,580(s0)
    2fc4:	00a78c63          	beq	a5,a0,2fdc <fatfs_sector_reader+0x148>
    2fc8:	03442783          	lw	a5,52(s0)
    2fcc:	24a42223          	sw	a0,580(s0)
    2fd0:	00100613          	li	a2,1
    2fd4:	04440593          	addi	a1,s0,68
    2fd8:	f4dff06f          	j	2f24 <fatfs_sector_reader+0x90>
    2fdc:	00100513          	li	a0,1
    2fe0:	efdff06f          	j	2edc <fatfs_sector_reader+0x48>

00002fe4 <fatfs_get_file_entry>:
    2fe4:	eb010113          	addi	sp,sp,-336
    2fe8:	14812423          	sw	s0,328(sp)
    2fec:	14912223          	sw	s1,324(sp)
    2ff0:	13312e23          	sw	s3,316(sp)
    2ff4:	13712623          	sw	s7,300(sp)
    2ff8:	13812423          	sw	s8,296(sp)
    2ffc:	13912223          	sw	s9,292(sp)
    3000:	14112623          	sw	ra,332(sp)
    3004:	15212023          	sw	s2,320(sp)
    3008:	13412c23          	sw	s4,312(sp)
    300c:	13512a23          	sw	s5,308(sp)
    3010:	13612823          	sw	s6,304(sp)
    3014:	00050993          	mv	s3,a0
    3018:	00058c93          	mv	s9,a1
    301c:	00060b93          	mv	s7,a2
    3020:	00068c13          	mv	s8,a3
    3024:	10010ea3          	sb	zero,285(sp)
    3028:	01810413          	addi	s0,sp,24
    302c:	11c10493          	addi	s1,sp,284
    3030:	00040513          	mv	a0,s0
    3034:	00d00613          	li	a2,13
    3038:	00000593          	li	a1,0
    303c:	00d40413          	addi	s0,s0,13
    3040:	ffffe097          	auipc	ra,0xffffe
    3044:	220080e7          	jalr	544(ra) # 1260 <memset>
    3048:	fe9414e3          	bne	s0,s1,3030 <fatfs_get_file_entry+0x4c>
    304c:	00000493          	li	s1,0
    3050:	24498a13          	addi	s4,s3,580
    3054:	00810913          	addi	s2,sp,8
    3058:	00800a93          	li	s5,8
    305c:	02e00b13          	li	s6,46
    3060:	00000693          	li	a3,0
    3064:	00048613          	mv	a2,s1
    3068:	000c8593          	mv	a1,s9
    306c:	00098513          	mv	a0,s3
    3070:	00000097          	auipc	ra,0x0
    3074:	e24080e7          	jalr	-476(ra) # 2e94 <fatfs_sector_reader>
    3078:	08050c63          	beqz	a0,3110 <fatfs_get_file_entry+0x12c>
    307c:	00148493          	addi	s1,s1,1
    3080:	04498413          	addi	s0,s3,68
    3084:	00040513          	mv	a0,s0
    3088:	fffff097          	auipc	ra,0xfffff
    308c:	f34080e7          	jalr	-204(ra) # 1fbc <fatfs_entry_lfn_text>
    3090:	02050063          	beqz	a0,30b0 <fatfs_get_file_entry+0xcc>
    3094:	00040593          	mv	a1,s0
    3098:	01810513          	addi	a0,sp,24
    309c:	fffff097          	auipc	ra,0xfffff
    30a0:	e18080e7          	jalr	-488(ra) # 1eb4 <fatfs_lfn_cache_entry>
    30a4:	02040413          	addi	s0,s0,32
    30a8:	fd441ee3          	bne	s0,s4,3084 <fatfs_get_file_entry+0xa0>
    30ac:	fb5ff06f          	j	3060 <fatfs_get_file_entry+0x7c>
    30b0:	00040513          	mv	a0,s0
    30b4:	fffff097          	auipc	ra,0xfffff
    30b8:	f1c080e7          	jalr	-228(ra) # 1fd0 <fatfs_entry_lfn_invalid>
    30bc:	00050663          	beqz	a0,30c8 <fatfs_get_file_entry+0xe4>
    30c0:	10010ea3          	sb	zero,285(sp)
    30c4:	fe1ff06f          	j	30a4 <fatfs_get_file_entry+0xc0>
    30c8:	00040593          	mv	a1,s0
    30cc:	01810513          	addi	a0,sp,24
    30d0:	fffff097          	auipc	ra,0xfffff
    30d4:	f34080e7          	jalr	-204(ra) # 2004 <fatfs_entry_lfn_exists>
    30d8:	06050663          	beqz	a0,3144 <fatfs_get_file_entry+0x160>
    30dc:	01810513          	addi	a0,sp,24
    30e0:	fffff097          	auipc	ra,0xfffff
    30e4:	ea0080e7          	jalr	-352(ra) # 1f80 <fatfs_lfn_cache_get>
    30e8:	000b8593          	mv	a1,s7
    30ec:	fffff097          	auipc	ra,0xfffff
    30f0:	6dc080e7          	jalr	1756(ra) # 27c8 <fatfs_compare_names>
    30f4:	fc0506e3          	beqz	a0,30c0 <fatfs_get_file_entry+0xdc>
    30f8:	02000613          	li	a2,32
    30fc:	00040593          	mv	a1,s0
    3100:	000c0513          	mv	a0,s8
    3104:	ffffe097          	auipc	ra,0xffffe
    3108:	178080e7          	jalr	376(ra) # 127c <memcpy>
    310c:	00100513          	li	a0,1
    3110:	14c12083          	lw	ra,332(sp)
    3114:	14812403          	lw	s0,328(sp)
    3118:	14412483          	lw	s1,324(sp)
    311c:	14012903          	lw	s2,320(sp)
    3120:	13c12983          	lw	s3,316(sp)
    3124:	13812a03          	lw	s4,312(sp)
    3128:	13412a83          	lw	s5,308(sp)
    312c:	13012b03          	lw	s6,304(sp)
    3130:	12c12b83          	lw	s7,300(sp)
    3134:	12812c03          	lw	s8,296(sp)
    3138:	12412c83          	lw	s9,292(sp)
    313c:	15010113          	addi	sp,sp,336
    3140:	00008067          	ret
    3144:	00040513          	mv	a0,s0
    3148:	fffff097          	auipc	ra,0xfffff
    314c:	f0c080e7          	jalr	-244(ra) # 2054 <fatfs_entry_sfn_only>
    3150:	f4050ae3          	beqz	a0,30a4 <fatfs_get_file_entry+0xc0>
    3154:	00d00613          	li	a2,13
    3158:	00000593          	li	a1,0
    315c:	00090513          	mv	a0,s2
    3160:	ffffe097          	auipc	ra,0xffffe
    3164:	100080e7          	jalr	256(ra) # 1260 <memset>
    3168:	00000793          	li	a5,0
    316c:	00f406b3          	add	a3,s0,a5
    3170:	0006c683          	lbu	a3,0(a3)
    3174:	00f90733          	add	a4,s2,a5
    3178:	00178793          	addi	a5,a5,1
    317c:	00d70023          	sb	a3,0(a4)
    3180:	ff5796e3          	bne	a5,s5,316c <fatfs_get_file_entry+0x188>
    3184:	00844703          	lbu	a4,8(s0)
    3188:	00944783          	lbu	a5,9(s0)
    318c:	00a44683          	lbu	a3,10(s0)
    3190:	00e108a3          	sb	a4,17(sp)
    3194:	00f10923          	sb	a5,18(sp)
    3198:	fe070713          	addi	a4,a4,-32
    319c:	fe078793          	addi	a5,a5,-32
    31a0:	00f037b3          	snez	a5,a5
    31a4:	00e03733          	snez	a4,a4
    31a8:	00d109a3          	sb	a3,19(sp)
    31ac:	00e7e7b3          	or	a5,a5,a4
    31b0:	00079863          	bnez	a5,31c0 <fatfs_get_file_entry+0x1dc>
    31b4:	fe068693          	addi	a3,a3,-32
    31b8:	02000793          	li	a5,32
    31bc:	00068a63          	beqz	a3,31d0 <fatfs_get_file_entry+0x1ec>
    31c0:	00814703          	lbu	a4,8(sp)
    31c4:	02e00793          	li	a5,46
    31c8:	01671463          	bne	a4,s6,31d0 <fatfs_get_file_entry+0x1ec>
    31cc:	02000793          	li	a5,32
    31d0:	00f10823          	sb	a5,16(sp)
    31d4:	000b8593          	mv	a1,s7
    31d8:	00090513          	mv	a0,s2
    31dc:	f11ff06f          	j	30ec <fatfs_get_file_entry+0x108>

000031e0 <_open_directory>:
    31e0:	eb010113          	addi	sp,sp,-336
    31e4:	15212023          	sw	s2,320(sp)
    31e8:	0000b937          	lui	s2,0xb
    31ec:	55890913          	addi	s2,s2,1368 # b558 <_fs>
    31f0:	14812423          	sw	s0,328(sp)
    31f4:	00892403          	lw	s0,8(s2)
    31f8:	14912223          	sw	s1,324(sp)
    31fc:	13312e23          	sw	s3,316(sp)
    3200:	13412c23          	sw	s4,312(sp)
    3204:	13512a23          	sw	s5,308(sp)
    3208:	13612823          	sw	s6,304(sp)
    320c:	14112623          	sw	ra,332(sp)
    3210:	00050a13          	mv	s4,a0
    3214:	00058a93          	mv	s5,a1
    3218:	fffff097          	auipc	ra,0xfffff
    321c:	368080e7          	jalr	872(ra) # 2580 <fatfs_total_path_levels>
    3220:	00050b13          	mv	s6,a0
    3224:	00000493          	li	s1,0
    3228:	fff00993          	li	s3,-1
    322c:	009b5863          	bge	s6,s1,323c <_open_directory+0x5c>
    3230:	008aa023          	sw	s0,0(s5)
    3234:	00100513          	li	a0,1
    3238:	0240006f          	j	325c <_open_directory+0x7c>
    323c:	10400693          	li	a3,260
    3240:	02c10613          	addi	a2,sp,44
    3244:	00048593          	mv	a1,s1
    3248:	000a0513          	mv	a0,s4
    324c:	fffff097          	auipc	ra,0xfffff
    3250:	3a4080e7          	jalr	932(ra) # 25f0 <fatfs_get_substring>
    3254:	03351863          	bne	a0,s3,3284 <_open_directory+0xa4>
    3258:	00000513          	li	a0,0
    325c:	14c12083          	lw	ra,332(sp)
    3260:	14812403          	lw	s0,328(sp)
    3264:	14412483          	lw	s1,324(sp)
    3268:	14012903          	lw	s2,320(sp)
    326c:	13c12983          	lw	s3,316(sp)
    3270:	13812a03          	lw	s4,312(sp)
    3274:	13412a83          	lw	s5,308(sp)
    3278:	13012b03          	lw	s6,304(sp)
    327c:	15010113          	addi	sp,sp,336
    3280:	00008067          	ret
    3284:	00c10693          	addi	a3,sp,12
    3288:	02c10613          	addi	a2,sp,44
    328c:	00040593          	mv	a1,s0
    3290:	00090513          	mv	a0,s2
    3294:	00000097          	auipc	ra,0x0
    3298:	d50080e7          	jalr	-688(ra) # 2fe4 <fatfs_get_file_entry>
    329c:	fa050ee3          	beqz	a0,3258 <_open_directory+0x78>
    32a0:	01714783          	lbu	a5,23(sp)
    32a4:	0107f793          	andi	a5,a5,16
    32a8:	fa0788e3          	beqz	a5,3258 <_open_directory+0x78>
    32ac:	02015403          	lhu	s0,32(sp)
    32b0:	02615783          	lhu	a5,38(sp)
    32b4:	00148493          	addi	s1,s1,1
    32b8:	01041413          	slli	s0,s0,0x10
    32bc:	00f40433          	add	s0,s0,a5
    32c0:	f6dff06f          	j	322c <_open_directory+0x4c>

000032c4 <fl_opendir>:
    32c4:	fe010113          	addi	sp,sp,-32
    32c8:	fff00793          	li	a5,-1
    32cc:	00f12623          	sw	a5,12(sp)
    32d0:	000057b7          	lui	a5,0x5
    32d4:	2d47a783          	lw	a5,724(a5) # 52d4 <_filelib_init>
    32d8:	00812c23          	sw	s0,24(sp)
    32dc:	01212823          	sw	s2,16(sp)
    32e0:	00112e23          	sw	ra,28(sp)
    32e4:	00912a23          	sw	s1,20(sp)
    32e8:	00050913          	mv	s2,a0
    32ec:	00058413          	mv	s0,a1
    32f0:	00079663          	bnez	a5,32fc <fl_opendir+0x38>
    32f4:	fffff097          	auipc	ra,0xfffff
    32f8:	b50080e7          	jalr	-1200(ra) # 1e44 <fl_init>
    32fc:	0000b4b7          	lui	s1,0xb
    3300:	55848493          	addi	s1,s1,1368 # b558 <_fs>
    3304:	03c4a783          	lw	a5,60(s1)
    3308:	00078463          	beqz	a5,3310 <fl_opendir+0x4c>
    330c:	000780e7          	jalr	a5
    3310:	00090513          	mv	a0,s2
    3314:	fffff097          	auipc	ra,0xfffff
    3318:	26c080e7          	jalr	620(ra) # 2580 <fatfs_total_path_levels>
    331c:	fff00793          	li	a5,-1
    3320:	02f51063          	bne	a0,a5,3340 <fl_opendir+0x7c>
    3324:	0084a783          	lw	a5,8(s1)
    3328:	00f12623          	sw	a5,12(sp)
    332c:	00c12783          	lw	a5,12(sp)
    3330:	00042023          	sw	zero,0(s0)
    3334:	00040423          	sb	zero,8(s0)
    3338:	00f42223          	sw	a5,4(s0)
    333c:	0180006f          	j	3354 <fl_opendir+0x90>
    3340:	00c10593          	addi	a1,sp,12
    3344:	00090513          	mv	a0,s2
    3348:	00000097          	auipc	ra,0x0
    334c:	e98080e7          	jalr	-360(ra) # 31e0 <_open_directory>
    3350:	fc051ee3          	bnez	a0,332c <fl_opendir+0x68>
    3354:	0404a783          	lw	a5,64(s1)
    3358:	00078463          	beqz	a5,3360 <fl_opendir+0x9c>
    335c:	000780e7          	jalr	a5
    3360:	00c12703          	lw	a4,12(sp)
    3364:	fff00793          	li	a5,-1
    3368:	00f71463          	bne	a4,a5,3370 <fl_opendir+0xac>
    336c:	00000413          	li	s0,0
    3370:	01c12083          	lw	ra,28(sp)
    3374:	00040513          	mv	a0,s0
    3378:	01812403          	lw	s0,24(sp)
    337c:	01412483          	lw	s1,20(sp)
    3380:	01012903          	lw	s2,16(sp)
    3384:	02010113          	addi	sp,sp,32
    3388:	00008067          	ret

0000338c <_open_file>:
    338c:	fc010113          	addi	sp,sp,-64
    3390:	03312623          	sw	s3,44(sp)
    3394:	02112e23          	sw	ra,60(sp)
    3398:	02812c23          	sw	s0,56(sp)
    339c:	02912a23          	sw	s1,52(sp)
    33a0:	03212823          	sw	s2,48(sp)
    33a4:	00050993          	mv	s3,a0
    33a8:	fffff097          	auipc	ra,0xfffff
    33ac:	8ac080e7          	jalr	-1876(ra) # 1c54 <_allocate_file>
    33b0:	06050463          	beqz	a0,3418 <_open_file+0x8c>
    33b4:	01450913          	addi	s2,a0,20
    33b8:	00050413          	mv	s0,a0
    33bc:	10400613          	li	a2,260
    33c0:	00000593          	li	a1,0
    33c4:	00090513          	mv	a0,s2
    33c8:	ffffe097          	auipc	ra,0xffffe
    33cc:	e98080e7          	jalr	-360(ra) # 1260 <memset>
    33d0:	11840493          	addi	s1,s0,280
    33d4:	10400613          	li	a2,260
    33d8:	00000593          	li	a1,0
    33dc:	00048513          	mv	a0,s1
    33e0:	ffffe097          	auipc	ra,0xffffe
    33e4:	e80080e7          	jalr	-384(ra) # 1260 <memset>
    33e8:	10400713          	li	a4,260
    33ec:	00048693          	mv	a3,s1
    33f0:	00070613          	mv	a2,a4
    33f4:	00090593          	mv	a1,s2
    33f8:	00098513          	mv	a0,s3
    33fc:	fffff097          	auipc	ra,0xfffff
    3400:	2dc080e7          	jalr	732(ra) # 26d8 <fatfs_split_path>
    3404:	fff00793          	li	a5,-1
    3408:	02f51a63          	bne	a0,a5,343c <_open_file+0xb0>
    340c:	00040513          	mv	a0,s0
    3410:	fffff097          	auipc	ra,0xfffff
    3414:	8bc080e7          	jalr	-1860(ra) # 1ccc <_free_file>
    3418:	00000413          	li	s0,0
    341c:	03c12083          	lw	ra,60(sp)
    3420:	00040513          	mv	a0,s0
    3424:	03812403          	lw	s0,56(sp)
    3428:	03412483          	lw	s1,52(sp)
    342c:	03012903          	lw	s2,48(sp)
    3430:	02c12983          	lw	s3,44(sp)
    3434:	04010113          	addi	sp,sp,64
    3438:	00008067          	ret
    343c:	00040513          	mv	a0,s0
    3440:	fffff097          	auipc	ra,0xfffff
    3444:	514080e7          	jalr	1300(ra) # 2954 <_check_file_open>
    3448:	fc0512e3          	bnez	a0,340c <_open_file+0x80>
    344c:	01444783          	lbu	a5,20(s0)
    3450:	08079c63          	bnez	a5,34e8 <_open_file+0x15c>
    3454:	0000b7b7          	lui	a5,0xb
    3458:	5607a783          	lw	a5,1376(a5) # b560 <_fs+0x8>
    345c:	00f42023          	sw	a5,0(s0)
    3460:	00042583          	lw	a1,0(s0)
    3464:	00048613          	mv	a2,s1
    3468:	0000b4b7          	lui	s1,0xb
    346c:	00010693          	mv	a3,sp
    3470:	55848513          	addi	a0,s1,1368 # b558 <_fs>
    3474:	00000097          	auipc	ra,0x0
    3478:	b70080e7          	jalr	-1168(ra) # 2fe4 <fatfs_get_file_entry>
    347c:	f80508e3          	beqz	a0,340c <_open_file+0x80>
    3480:	00b14783          	lbu	a5,11(sp)
    3484:	0207f793          	andi	a5,a5,32
    3488:	f80782e3          	beqz	a5,340c <_open_file+0x80>
    348c:	00b00613          	li	a2,11
    3490:	00010593          	mv	a1,sp
    3494:	21c40513          	addi	a0,s0,540
    3498:	ffffe097          	auipc	ra,0xffffe
    349c:	de4080e7          	jalr	-540(ra) # 127c <memcpy>
    34a0:	01c12783          	lw	a5,28(sp)
    34a4:	01a15703          	lhu	a4,26(sp)
    34a8:	00042423          	sw	zero,8(s0)
    34ac:	00f42623          	sw	a5,12(s0)
    34b0:	01415783          	lhu	a5,20(sp)
    34b4:	42042a23          	sw	zero,1076(s0)
    34b8:	00042823          	sw	zero,16(s0)
    34bc:	01079793          	slli	a5,a5,0x10
    34c0:	00e787b3          	add	a5,a5,a4
    34c4:	00f42223          	sw	a5,4(s0)
    34c8:	fff00793          	li	a5,-1
    34cc:	42f42823          	sw	a5,1072(s0)
    34d0:	22f42423          	sw	a5,552(s0)
    34d4:	22f42623          	sw	a5,556(s0)
    34d8:	55848513          	addi	a0,s1,1368
    34dc:	00000097          	auipc	ra,0x0
    34e0:	858080e7          	jalr	-1960(ra) # 2d34 <fatfs_fat_purge>
    34e4:	f39ff06f          	j	341c <_open_file+0x90>
    34e8:	00040593          	mv	a1,s0
    34ec:	00090513          	mv	a0,s2
    34f0:	00000097          	auipc	ra,0x0
    34f4:	cf0080e7          	jalr	-784(ra) # 31e0 <_open_directory>
    34f8:	f60514e3          	bnez	a0,3460 <_open_file+0xd4>
    34fc:	f11ff06f          	j	340c <_open_file+0x80>

00003500 <fatfs_sfn_exists>:
    3500:	fe010113          	addi	sp,sp,-32
    3504:	01212823          	sw	s2,16(sp)
    3508:	01312623          	sw	s3,12(sp)
    350c:	01412423          	sw	s4,8(sp)
    3510:	01512223          	sw	s5,4(sp)
    3514:	01612023          	sw	s6,0(sp)
    3518:	00112e23          	sw	ra,28(sp)
    351c:	00812c23          	sw	s0,24(sp)
    3520:	00912a23          	sw	s1,20(sp)
    3524:	00050993          	mv	s3,a0
    3528:	00058a93          	mv	s5,a1
    352c:	00060b13          	mv	s6,a2
    3530:	00000913          	li	s2,0
    3534:	24450a13          	addi	s4,a0,580
    3538:	00000693          	li	a3,0
    353c:	00090613          	mv	a2,s2
    3540:	000a8593          	mv	a1,s5
    3544:	00098513          	mv	a0,s3
    3548:	00000097          	auipc	ra,0x0
    354c:	94c080e7          	jalr	-1716(ra) # 2e94 <fatfs_sector_reader>
    3550:	00050413          	mv	s0,a0
    3554:	06050263          	beqz	a0,35b8 <fatfs_sfn_exists+0xb8>
    3558:	00190913          	addi	s2,s2,1
    355c:	04498493          	addi	s1,s3,68
    3560:	00048513          	mv	a0,s1
    3564:	fffff097          	auipc	ra,0xfffff
    3568:	a58080e7          	jalr	-1448(ra) # 1fbc <fatfs_entry_lfn_text>
    356c:	00050863          	beqz	a0,357c <fatfs_sfn_exists+0x7c>
    3570:	02048493          	addi	s1,s1,32
    3574:	ff4496e3          	bne	s1,s4,3560 <fatfs_sfn_exists+0x60>
    3578:	fc1ff06f          	j	3538 <fatfs_sfn_exists+0x38>
    357c:	00048513          	mv	a0,s1
    3580:	fffff097          	auipc	ra,0xfffff
    3584:	a50080e7          	jalr	-1456(ra) # 1fd0 <fatfs_entry_lfn_invalid>
    3588:	fe0514e3          	bnez	a0,3570 <fatfs_sfn_exists+0x70>
    358c:	00048513          	mv	a0,s1
    3590:	fffff097          	auipc	ra,0xfffff
    3594:	ac4080e7          	jalr	-1340(ra) # 2054 <fatfs_entry_sfn_only>
    3598:	00050413          	mv	s0,a0
    359c:	fc050ae3          	beqz	a0,3570 <fatfs_sfn_exists+0x70>
    35a0:	00b00613          	li	a2,11
    35a4:	000b0593          	mv	a1,s6
    35a8:	00048513          	mv	a0,s1
    35ac:	ffffe097          	auipc	ra,0xffffe
    35b0:	d14080e7          	jalr	-748(ra) # 12c0 <strncmp>
    35b4:	fa051ee3          	bnez	a0,3570 <fatfs_sfn_exists+0x70>
    35b8:	01c12083          	lw	ra,28(sp)
    35bc:	00040513          	mv	a0,s0
    35c0:	01812403          	lw	s0,24(sp)
    35c4:	01412483          	lw	s1,20(sp)
    35c8:	01012903          	lw	s2,16(sp)
    35cc:	00c12983          	lw	s3,12(sp)
    35d0:	00812a03          	lw	s4,8(sp)
    35d4:	00412a83          	lw	s5,4(sp)
    35d8:	00012b03          	lw	s6,0(sp)
    35dc:	02010113          	addi	sp,sp,32
    35e0:	00008067          	ret

000035e4 <fatfs_update_file_length>:
    35e4:	03852783          	lw	a5,56(a0)
    35e8:	14078e63          	beqz	a5,3744 <fatfs_update_file_length+0x160>
    35ec:	fd010113          	addi	sp,sp,-48
    35f0:	02912223          	sw	s1,36(sp)
    35f4:	03212023          	sw	s2,32(sp)
    35f8:	01312e23          	sw	s3,28(sp)
    35fc:	01412c23          	sw	s4,24(sp)
    3600:	01612823          	sw	s6,16(sp)
    3604:	01712623          	sw	s7,12(sp)
    3608:	02112623          	sw	ra,44(sp)
    360c:	02812423          	sw	s0,40(sp)
    3610:	01512a23          	sw	s5,20(sp)
    3614:	00068913          	mv	s2,a3
    3618:	00060b93          	mv	s7,a2
    361c:	00058b13          	mv	s6,a1
    3620:	00050493          	mv	s1,a0
    3624:	00000993          	li	s3,0
    3628:	24450a13          	addi	s4,a0,580
    362c:	00000693          	li	a3,0
    3630:	00098613          	mv	a2,s3
    3634:	000b0593          	mv	a1,s6
    3638:	00048513          	mv	a0,s1
    363c:	00000097          	auipc	ra,0x0
    3640:	858080e7          	jalr	-1960(ra) # 2e94 <fatfs_sector_reader>
    3644:	0c050863          	beqz	a0,3714 <fatfs_update_file_length+0x130>
    3648:	04448413          	addi	s0,s1,68
    364c:	00198993          	addi	s3,s3,1
    3650:	00040a93          	mv	s5,s0
    3654:	00040513          	mv	a0,s0
    3658:	fffff097          	auipc	ra,0xfffff
    365c:	964080e7          	jalr	-1692(ra) # 1fbc <fatfs_entry_lfn_text>
    3660:	0a051463          	bnez	a0,3708 <fatfs_update_file_length+0x124>
    3664:	00040513          	mv	a0,s0
    3668:	fffff097          	auipc	ra,0xfffff
    366c:	968080e7          	jalr	-1688(ra) # 1fd0 <fatfs_entry_lfn_invalid>
    3670:	08051c63          	bnez	a0,3708 <fatfs_update_file_length+0x124>
    3674:	00040513          	mv	a0,s0
    3678:	fffff097          	auipc	ra,0xfffff
    367c:	9dc080e7          	jalr	-1572(ra) # 2054 <fatfs_entry_sfn_only>
    3680:	08050463          	beqz	a0,3708 <fatfs_update_file_length+0x124>
    3684:	00b00613          	li	a2,11
    3688:	000b8593          	mv	a1,s7
    368c:	00040513          	mv	a0,s0
    3690:	ffffe097          	auipc	ra,0xffffe
    3694:	c30080e7          	jalr	-976(ra) # 12c0 <strncmp>
    3698:	06051863          	bnez	a0,3708 <fatfs_update_file_length+0x124>
    369c:	00895793          	srli	a5,s2,0x8
    36a0:	01240e23          	sb	s2,28(s0)
    36a4:	00f40ea3          	sb	a5,29(s0)
    36a8:	01095793          	srli	a5,s2,0x10
    36ac:	01895913          	srli	s2,s2,0x18
    36b0:	00f40f23          	sb	a5,30(s0)
    36b4:	01240fa3          	sb	s2,31(s0)
    36b8:	00040593          	mv	a1,s0
    36bc:	02000613          	li	a2,32
    36c0:	00040513          	mv	a0,s0
    36c4:	ffffe097          	auipc	ra,0xffffe
    36c8:	bb8080e7          	jalr	-1096(ra) # 127c <memcpy>
    36cc:	02812403          	lw	s0,40(sp)
    36d0:	0384a783          	lw	a5,56(s1)
    36d4:	2444a503          	lw	a0,580(s1)
    36d8:	02c12083          	lw	ra,44(sp)
    36dc:	02412483          	lw	s1,36(sp)
    36e0:	02012903          	lw	s2,32(sp)
    36e4:	01c12983          	lw	s3,28(sp)
    36e8:	01812a03          	lw	s4,24(sp)
    36ec:	01012b03          	lw	s6,16(sp)
    36f0:	00c12b83          	lw	s7,12(sp)
    36f4:	000a8593          	mv	a1,s5
    36f8:	01412a83          	lw	s5,20(sp)
    36fc:	00100613          	li	a2,1
    3700:	03010113          	addi	sp,sp,48
    3704:	00078067          	jr	a5
    3708:	02040413          	addi	s0,s0,32
    370c:	f54414e3          	bne	s0,s4,3654 <fatfs_update_file_length+0x70>
    3710:	f1dff06f          	j	362c <fatfs_update_file_length+0x48>
    3714:	02c12083          	lw	ra,44(sp)
    3718:	02812403          	lw	s0,40(sp)
    371c:	02412483          	lw	s1,36(sp)
    3720:	02012903          	lw	s2,32(sp)
    3724:	01c12983          	lw	s3,28(sp)
    3728:	01812a03          	lw	s4,24(sp)
    372c:	01412a83          	lw	s5,20(sp)
    3730:	01012b03          	lw	s6,16(sp)
    3734:	00c12b83          	lw	s7,12(sp)
    3738:	00000513          	li	a0,0
    373c:	03010113          	addi	sp,sp,48
    3740:	00008067          	ret
    3744:	00000513          	li	a0,0
    3748:	00008067          	ret

0000374c <fatfs_list_directory_next>:
    374c:	ec010113          	addi	sp,sp,-320
    3750:	13212823          	sw	s2,304(sp)
    3754:	13312623          	sw	s3,300(sp)
    3758:	13412423          	sw	s4,296(sp)
    375c:	13512223          	sw	s5,292(sp)
    3760:	13612023          	sw	s6,288(sp)
    3764:	12112e23          	sw	ra,316(sp)
    3768:	12812c23          	sw	s0,312(sp)
    376c:	12912a23          	sw	s1,308(sp)
    3770:	00050a13          	mv	s4,a0
    3774:	00058913          	mv	s2,a1
    3778:	00060993          	mv	s3,a2
    377c:	10010ea3          	sb	zero,285(sp)
    3780:	04450a93          	addi	s5,a0,68
    3784:	00f00b13          	li	s6,15
    3788:	00092603          	lw	a2,0(s2)
    378c:	00492583          	lw	a1,4(s2)
    3790:	00000693          	li	a3,0
    3794:	000a0513          	mv	a0,s4
    3798:	fffff097          	auipc	ra,0xfffff
    379c:	6fc080e7          	jalr	1788(ra) # 2e94 <fatfs_sector_reader>
    37a0:	10050c63          	beqz	a0,38b8 <fatfs_list_directory_next+0x16c>
    37a4:	00894483          	lbu	s1,8(s2)
    37a8:	00549413          	slli	s0,s1,0x5
    37ac:	008a8433          	add	s0,s5,s0
    37b0:	009b7c63          	bgeu	s6,s1,37c8 <fatfs_list_directory_next+0x7c>
    37b4:	00092783          	lw	a5,0(s2)
    37b8:	00090423          	sb	zero,8(s2)
    37bc:	00178793          	addi	a5,a5,1
    37c0:	00f92023          	sw	a5,0(s2)
    37c4:	fc5ff06f          	j	3788 <fatfs_list_directory_next+0x3c>
    37c8:	00040513          	mv	a0,s0
    37cc:	ffffe097          	auipc	ra,0xffffe
    37d0:	7f0080e7          	jalr	2032(ra) # 1fbc <fatfs_entry_lfn_text>
    37d4:	02050263          	beqz	a0,37f8 <fatfs_list_directory_next+0xac>
    37d8:	00040593          	mv	a1,s0
    37dc:	01810513          	addi	a0,sp,24
    37e0:	ffffe097          	auipc	ra,0xffffe
    37e4:	6d4080e7          	jalr	1748(ra) # 1eb4 <fatfs_lfn_cache_entry>
    37e8:	00148493          	addi	s1,s1,1
    37ec:	0ff4f493          	zext.b	s1,s1
    37f0:	02040413          	addi	s0,s0,32
    37f4:	fbdff06f          	j	37b0 <fatfs_list_directory_next+0x64>
    37f8:	00040513          	mv	a0,s0
    37fc:	ffffe097          	auipc	ra,0xffffe
    3800:	7d4080e7          	jalr	2004(ra) # 1fd0 <fatfs_entry_lfn_invalid>
    3804:	00050663          	beqz	a0,3810 <fatfs_list_directory_next+0xc4>
    3808:	10010ea3          	sb	zero,285(sp)
    380c:	fddff06f          	j	37e8 <fatfs_list_directory_next+0x9c>
    3810:	00040593          	mv	a1,s0
    3814:	01810513          	addi	a0,sp,24
    3818:	ffffe097          	auipc	ra,0xffffe
    381c:	7ec080e7          	jalr	2028(ra) # 2004 <fatfs_entry_lfn_exists>
    3820:	0c050063          	beqz	a0,38e0 <fatfs_list_directory_next+0x194>
    3824:	01810513          	addi	a0,sp,24
    3828:	ffffe097          	auipc	ra,0xffffe
    382c:	758080e7          	jalr	1880(ra) # 1f80 <fatfs_lfn_cache_get>
    3830:	00050593          	mv	a1,a0
    3834:	10300613          	li	a2,259
    3838:	00098513          	mv	a0,s3
    383c:	ffffe097          	auipc	ra,0xffffe
    3840:	ac4080e7          	jalr	-1340(ra) # 1300 <strncpy>
    3844:	00040513          	mv	a0,s0
    3848:	fffff097          	auipc	ra,0xfffff
    384c:	84c080e7          	jalr	-1972(ra) # 2094 <fatfs_entry_is_dir>
    3850:	10a98223          	sb	a0,260(s3)
    3854:	01d44783          	lbu	a5,29(s0)
    3858:	01c44703          	lbu	a4,28(s0)
    385c:	00148493          	addi	s1,s1,1
    3860:	00879793          	slli	a5,a5,0x8
    3864:	00e7e7b3          	or	a5,a5,a4
    3868:	01e44703          	lbu	a4,30(s0)
    386c:	00100513          	li	a0,1
    3870:	01071713          	slli	a4,a4,0x10
    3874:	00f76733          	or	a4,a4,a5
    3878:	01f44783          	lbu	a5,31(s0)
    387c:	01879793          	slli	a5,a5,0x18
    3880:	00e7e7b3          	or	a5,a5,a4
    3884:	10f9a623          	sw	a5,268(s3)
    3888:	01544783          	lbu	a5,21(s0)
    388c:	01444703          	lbu	a4,20(s0)
    3890:	01a44683          	lbu	a3,26(s0)
    3894:	00879793          	slli	a5,a5,0x8
    3898:	00e7e7b3          	or	a5,a5,a4
    389c:	01b44703          	lbu	a4,27(s0)
    38a0:	01079793          	slli	a5,a5,0x10
    38a4:	00871713          	slli	a4,a4,0x8
    38a8:	00d76733          	or	a4,a4,a3
    38ac:	00e7e7b3          	or	a5,a5,a4
    38b0:	10f9a423          	sw	a5,264(s3)
    38b4:	00990423          	sb	s1,8(s2)
    38b8:	13c12083          	lw	ra,316(sp)
    38bc:	13812403          	lw	s0,312(sp)
    38c0:	13412483          	lw	s1,308(sp)
    38c4:	13012903          	lw	s2,304(sp)
    38c8:	12c12983          	lw	s3,300(sp)
    38cc:	12812a03          	lw	s4,296(sp)
    38d0:	12412a83          	lw	s5,292(sp)
    38d4:	12012b03          	lw	s6,288(sp)
    38d8:	14010113          	addi	sp,sp,320
    38dc:	00008067          	ret
    38e0:	00040513          	mv	a0,s0
    38e4:	ffffe097          	auipc	ra,0xffffe
    38e8:	770080e7          	jalr	1904(ra) # 2054 <fatfs_entry_sfn_only>
    38ec:	ee050ee3          	beqz	a0,37e8 <fatfs_list_directory_next+0x9c>
    38f0:	00810a13          	addi	s4,sp,8
    38f4:	00d00613          	li	a2,13
    38f8:	00000593          	li	a1,0
    38fc:	000a0513          	mv	a0,s4
    3900:	10010ea3          	sb	zero,285(sp)
    3904:	ffffe097          	auipc	ra,0xffffe
    3908:	95c080e7          	jalr	-1700(ra) # 1260 <memset>
    390c:	00000793          	li	a5,0
    3910:	00800713          	li	a4,8
    3914:	00f40633          	add	a2,s0,a5
    3918:	00064603          	lbu	a2,0(a2)
    391c:	00fa06b3          	add	a3,s4,a5
    3920:	00178793          	addi	a5,a5,1
    3924:	00c68023          	sb	a2,0(a3)
    3928:	fee796e3          	bne	a5,a4,3914 <fatfs_list_directory_next+0x1c8>
    392c:	00844783          	lbu	a5,8(s0)
    3930:	00944703          	lbu	a4,9(s0)
    3934:	00a44683          	lbu	a3,10(s0)
    3938:	00f108a3          	sb	a5,17(sp)
    393c:	00e10923          	sb	a4,18(sp)
    3940:	fe078793          	addi	a5,a5,-32
    3944:	fe070713          	addi	a4,a4,-32
    3948:	00f037b3          	snez	a5,a5
    394c:	00e03733          	snez	a4,a4
    3950:	00d109a3          	sb	a3,19(sp)
    3954:	00e7e7b3          	or	a5,a5,a4
    3958:	00079863          	bnez	a5,3968 <fatfs_list_directory_next+0x21c>
    395c:	fe068693          	addi	a3,a3,-32
    3960:	02000793          	li	a5,32
    3964:	00068a63          	beqz	a3,3978 <fatfs_list_directory_next+0x22c>
    3968:	00814703          	lbu	a4,8(sp)
    396c:	02e00793          	li	a5,46
    3970:	00f71463          	bne	a4,a5,3978 <fatfs_list_directory_next+0x22c>
    3974:	02000793          	li	a5,32
    3978:	000a0593          	mv	a1,s4
    397c:	00098513          	mv	a0,s3
    3980:	00f10823          	sb	a5,16(sp)
    3984:	fffff097          	auipc	ra,0xfffff
    3988:	054080e7          	jalr	84(ra) # 29d8 <fatfs_get_sfn_display_name>
    398c:	eb9ff06f          	j	3844 <fatfs_list_directory_next+0xf8>

00003990 <fl_readdir>:
    3990:	000057b7          	lui	a5,0x5
    3994:	2d47a783          	lw	a5,724(a5) # 52d4 <_filelib_init>
    3998:	fd010113          	addi	sp,sp,-48
    399c:	03212023          	sw	s2,32(sp)
    39a0:	01312e23          	sw	s3,28(sp)
    39a4:	02112623          	sw	ra,44(sp)
    39a8:	02812423          	sw	s0,40(sp)
    39ac:	02912223          	sw	s1,36(sp)
    39b0:	00050913          	mv	s2,a0
    39b4:	00058993          	mv	s3,a1
    39b8:	00079663          	bnez	a5,39c4 <fl_readdir+0x34>
    39bc:	ffffe097          	auipc	ra,0xffffe
    39c0:	488080e7          	jalr	1160(ra) # 1e44 <fl_init>
    39c4:	0000b4b7          	lui	s1,0xb
    39c8:	55848413          	addi	s0,s1,1368 # b558 <_fs>
    39cc:	03c42783          	lw	a5,60(s0)
    39d0:	00078463          	beqz	a5,39d8 <fl_readdir+0x48>
    39d4:	000780e7          	jalr	a5
    39d8:	00098613          	mv	a2,s3
    39dc:	00090593          	mv	a1,s2
    39e0:	55848513          	addi	a0,s1,1368
    39e4:	00000097          	auipc	ra,0x0
    39e8:	d68080e7          	jalr	-664(ra) # 374c <fatfs_list_directory_next>
    39ec:	04042783          	lw	a5,64(s0)
    39f0:	00078863          	beqz	a5,3a00 <fl_readdir+0x70>
    39f4:	00a12623          	sw	a0,12(sp)
    39f8:	000780e7          	jalr	a5
    39fc:	00c12503          	lw	a0,12(sp)
    3a00:	02c12083          	lw	ra,44(sp)
    3a04:	02812403          	lw	s0,40(sp)
    3a08:	00154513          	xori	a0,a0,1
    3a0c:	02412483          	lw	s1,36(sp)
    3a10:	02012903          	lw	s2,32(sp)
    3a14:	01c12983          	lw	s3,28(sp)
    3a18:	40a00533          	neg	a0,a0
    3a1c:	03010113          	addi	sp,sp,48
    3a20:	00008067          	ret

00003a24 <_read_sectors>:
    3a24:	fd010113          	addi	sp,sp,-48
    3a28:	01512a23          	sw	s5,20(sp)
    3a2c:	0000bab7          	lui	s5,0xb
    3a30:	01312e23          	sw	s3,28(sp)
    3a34:	558ac983          	lbu	s3,1368(s5) # b558 <_fs>
    3a38:	01612823          	sw	s6,16(sp)
    3a3c:	00058b13          	mv	s6,a1
    3a40:	02912223          	sw	s1,36(sp)
    3a44:	00098593          	mv	a1,s3
    3a48:	00050493          	mv	s1,a0
    3a4c:	000b0513          	mv	a0,s6
    3a50:	02112623          	sw	ra,44(sp)
    3a54:	02812423          	sw	s0,40(sp)
    3a58:	01412c23          	sw	s4,24(sp)
    3a5c:	00068413          	mv	s0,a3
    3a60:	01712623          	sw	s7,12(sp)
    3a64:	01812423          	sw	s8,8(sp)
    3a68:	03212023          	sw	s2,32(sp)
    3a6c:	00060c13          	mv	s8,a2
    3a70:	ffffd097          	auipc	ra,0xffffd
    3a74:	744080e7          	jalr	1860(ra) # 11b4 <__udivsi3>
    3a78:	00050a13          	mv	s4,a0
    3a7c:	00098593          	mv	a1,s3
    3a80:	000b0513          	mv	a0,s6
    3a84:	ffffd097          	auipc	ra,0xffffd
    3a88:	778080e7          	jalr	1912(ra) # 11fc <__umodsi3>
    3a8c:	00a407b3          	add	a5,s0,a0
    3a90:	00050b93          	mv	s7,a0
    3a94:	00f9fe63          	bgeu	s3,a5,3ab0 <_read_sectors+0x8c>
    3a98:	000a0593          	mv	a1,s4
    3a9c:	00098513          	mv	a0,s3
    3aa0:	ffffe097          	auipc	ra,0xffffe
    3aa4:	f10080e7          	jalr	-240(ra) # 19b0 <__mulsi3>
    3aa8:	416987b3          	sub	a5,s3,s6
    3aac:	00f50433          	add	s0,a0,a5
    3ab0:	2284a903          	lw	s2,552(s1)
    3ab4:	07491863          	bne	s2,s4,3b24 <_read_sectors+0x100>
    3ab8:	22c4a583          	lw	a1,556(s1)
    3abc:	fff00793          	li	a5,-1
    3ac0:	02f58663          	beq	a1,a5,3aec <_read_sectors+0xc8>
    3ac4:	558a8513          	addi	a0,s5,1368
    3ac8:	ffffe097          	auipc	ra,0xffffe
    3acc:	24c080e7          	jalr	588(ra) # 1d14 <fatfs_lba_of_cluster>
    3ad0:	017505b3          	add	a1,a0,s7
    3ad4:	00040693          	mv	a3,s0
    3ad8:	000c0613          	mv	a2,s8
    3adc:	558a8513          	addi	a0,s5,1368
    3ae0:	ffffe097          	auipc	ra,0xffffe
    3ae4:	280080e7          	jalr	640(ra) # 1d60 <fatfs_sector_read>
    3ae8:	00051463          	bnez	a0,3af0 <_read_sectors+0xcc>
    3aec:	00000413          	li	s0,0
    3af0:	02c12083          	lw	ra,44(sp)
    3af4:	00040513          	mv	a0,s0
    3af8:	02812403          	lw	s0,40(sp)
    3afc:	02412483          	lw	s1,36(sp)
    3b00:	02012903          	lw	s2,32(sp)
    3b04:	01c12983          	lw	s3,28(sp)
    3b08:	01812a03          	lw	s4,24(sp)
    3b0c:	01412a83          	lw	s5,20(sp)
    3b10:	01012b03          	lw	s6,16(sp)
    3b14:	00c12b83          	lw	s7,12(sp)
    3b18:	00812c03          	lw	s8,8(sp)
    3b1c:	03010113          	addi	sp,sp,48
    3b20:	00008067          	ret
    3b24:	033b6463          	bltu	s6,s3,3b4c <_read_sectors+0x128>
    3b28:	00190793          	addi	a5,s2,1
    3b2c:	03479063          	bne	a5,s4,3b4c <_read_sectors+0x128>
    3b30:	22c4a583          	lw	a1,556(s1)
    3b34:	03496263          	bltu	s2,s4,3b58 <_read_sectors+0x134>
    3b38:	fff00793          	li	a5,-1
    3b3c:	faf588e3          	beq	a1,a5,3aec <_read_sectors+0xc8>
    3b40:	22b4a623          	sw	a1,556(s1)
    3b44:	2344a423          	sw	s4,552(s1)
    3b48:	f7dff06f          	j	3ac4 <_read_sectors+0xa0>
    3b4c:	0044a583          	lw	a1,4(s1)
    3b50:	00000913          	li	s2,0
    3b54:	fe1ff06f          	j	3b34 <_read_sectors+0x110>
    3b58:	558a8513          	addi	a0,s5,1368
    3b5c:	fffff097          	auipc	ra,0xfffff
    3b60:	230080e7          	jalr	560(ra) # 2d8c <fatfs_find_next_cluster>
    3b64:	00050593          	mv	a1,a0
    3b68:	00190913          	addi	s2,s2,1
    3b6c:	fc9ff06f          	j	3b34 <_read_sectors+0x110>

00003b70 <fatfs_set_fs_info_next_free_cluster>:
    3b70:	03052783          	lw	a5,48(a0)
    3b74:	0a078463          	beqz	a5,3c1c <fatfs_set_fs_info_next_free_cluster+0xac>
    3b78:	fe010113          	addi	sp,sp,-32
    3b7c:	01c52783          	lw	a5,28(a0)
    3b80:	00912a23          	sw	s1,20(sp)
    3b84:	00058493          	mv	s1,a1
    3b88:	01855583          	lhu	a1,24(a0)
    3b8c:	00812c23          	sw	s0,24(sp)
    3b90:	00112e23          	sw	ra,28(sp)
    3b94:	00f585b3          	add	a1,a1,a5
    3b98:	00050413          	mv	s0,a0
    3b9c:	ffffe097          	auipc	ra,0xffffe
    3ba0:	fcc080e7          	jalr	-52(ra) # 1b68 <fatfs_fat_read_sector>
    3ba4:	00050593          	mv	a1,a0
    3ba8:	06050063          	beqz	a0,3c08 <fatfs_set_fs_info_next_free_cluster+0x98>
    3bac:	20852783          	lw	a5,520(a0)
    3bb0:	0084d713          	srli	a4,s1,0x8
    3bb4:	00100613          	li	a2,1
    3bb8:	1e978623          	sb	s1,492(a5)
    3bbc:	20852783          	lw	a5,520(a0)
    3bc0:	1ee786a3          	sb	a4,493(a5)
    3bc4:	20852783          	lw	a5,520(a0)
    3bc8:	0104d713          	srli	a4,s1,0x10
    3bcc:	1ee78723          	sb	a4,494(a5)
    3bd0:	20852783          	lw	a5,520(a0)
    3bd4:	0184d713          	srli	a4,s1,0x18
    3bd8:	1ee787a3          	sb	a4,495(a5)
    3bdc:	03842783          	lw	a5,56(s0)
    3be0:	20c52223          	sw	a2,516(a0)
    3be4:	02942223          	sw	s1,36(s0)
    3be8:	00078a63          	beqz	a5,3bfc <fatfs_set_fs_info_next_free_cluster+0x8c>
    3bec:	20052503          	lw	a0,512(a0)
    3bf0:	00b12623          	sw	a1,12(sp)
    3bf4:	000780e7          	jalr	a5
    3bf8:	00c12583          	lw	a1,12(sp)
    3bfc:	fff00793          	li	a5,-1
    3c00:	20f5a023          	sw	a5,512(a1)
    3c04:	2005a223          	sw	zero,516(a1)
    3c08:	01c12083          	lw	ra,28(sp)
    3c0c:	01812403          	lw	s0,24(sp)
    3c10:	01412483          	lw	s1,20(sp)
    3c14:	02010113          	addi	sp,sp,32
    3c18:	00008067          	ret
    3c1c:	00008067          	ret

00003c20 <fatfs_find_blank_cluster>:
    3c20:	fd010113          	addi	sp,sp,-48
    3c24:	01312e23          	sw	s3,28(sp)
    3c28:	100009b7          	lui	s3,0x10000
    3c2c:	02912223          	sw	s1,36(sp)
    3c30:	03212023          	sw	s2,32(sp)
    3c34:	02112623          	sw	ra,44(sp)
    3c38:	02812423          	sw	s0,40(sp)
    3c3c:	00050913          	mv	s2,a0
    3c40:	00058493          	mv	s1,a1
    3c44:	fff98993          	addi	s3,s3,-1 # fffffff <__stacktop+0xffeffff>
    3c48:	03092783          	lw	a5,48(s2)
    3c4c:	0074d413          	srli	s0,s1,0x7
    3c50:	00079463          	bnez	a5,3c58 <fatfs_find_blank_cluster+0x38>
    3c54:	0084d413          	srli	s0,s1,0x8
    3c58:	02092783          	lw	a5,32(s2)
    3c5c:	0cf47863          	bgeu	s0,a5,3d2c <fatfs_find_blank_cluster+0x10c>
    3c60:	01492583          	lw	a1,20(s2)
    3c64:	00090513          	mv	a0,s2
    3c68:	00c12623          	sw	a2,12(sp)
    3c6c:	00b405b3          	add	a1,s0,a1
    3c70:	ffffe097          	auipc	ra,0xffffe
    3c74:	ef8080e7          	jalr	-264(ra) # 1b68 <fatfs_fat_read_sector>
    3c78:	0a050a63          	beqz	a0,3d2c <fatfs_find_blank_cluster+0x10c>
    3c7c:	03092783          	lw	a5,48(s2)
    3c80:	20852703          	lw	a4,520(a0)
    3c84:	00c12603          	lw	a2,12(sp)
    3c88:	04079a63          	bnez	a5,3cdc <fatfs_find_blank_cluster+0xbc>
    3c8c:	00841413          	slli	s0,s0,0x8
    3c90:	40848433          	sub	s0,s1,s0
    3c94:	00141413          	slli	s0,s0,0x1
    3c98:	01041413          	slli	s0,s0,0x10
    3c9c:	01045413          	srli	s0,s0,0x10
    3ca0:	00870733          	add	a4,a4,s0
    3ca4:	00174783          	lbu	a5,1(a4)
    3ca8:	00074703          	lbu	a4,0(a4)
    3cac:	00879793          	slli	a5,a5,0x8
    3cb0:	00e787b3          	add	a5,a5,a4
    3cb4:	06079863          	bnez	a5,3d24 <fatfs_find_blank_cluster+0x104>
    3cb8:	00962023          	sw	s1,0(a2)
    3cbc:	00100513          	li	a0,1
    3cc0:	02c12083          	lw	ra,44(sp)
    3cc4:	02812403          	lw	s0,40(sp)
    3cc8:	02412483          	lw	s1,36(sp)
    3ccc:	02012903          	lw	s2,32(sp)
    3cd0:	01c12983          	lw	s3,28(sp)
    3cd4:	03010113          	addi	sp,sp,48
    3cd8:	00008067          	ret
    3cdc:	00741413          	slli	s0,s0,0x7
    3ce0:	40848433          	sub	s0,s1,s0
    3ce4:	00241413          	slli	s0,s0,0x2
    3ce8:	01041413          	slli	s0,s0,0x10
    3cec:	01045413          	srli	s0,s0,0x10
    3cf0:	00870733          	add	a4,a4,s0
    3cf4:	00374783          	lbu	a5,3(a4)
    3cf8:	00274683          	lbu	a3,2(a4)
    3cfc:	01879793          	slli	a5,a5,0x18
    3d00:	01069693          	slli	a3,a3,0x10
    3d04:	00d787b3          	add	a5,a5,a3
    3d08:	00074683          	lbu	a3,0(a4)
    3d0c:	00174703          	lbu	a4,1(a4)
    3d10:	00d787b3          	add	a5,a5,a3
    3d14:	00871713          	slli	a4,a4,0x8
    3d18:	00e787b3          	add	a5,a5,a4
    3d1c:	0137f7b3          	and	a5,a5,s3
    3d20:	f95ff06f          	j	3cb4 <fatfs_find_blank_cluster+0x94>
    3d24:	00148493          	addi	s1,s1,1
    3d28:	f21ff06f          	j	3c48 <fatfs_find_blank_cluster+0x28>
    3d2c:	00000513          	li	a0,0
    3d30:	f91ff06f          	j	3cc0 <fatfs_find_blank_cluster+0xa0>

00003d34 <fatfs_fat_set_cluster>:
    3d34:	03052783          	lw	a5,48(a0)
    3d38:	fe010113          	addi	sp,sp,-32
    3d3c:	00812c23          	sw	s0,24(sp)
    3d40:	00912a23          	sw	s1,20(sp)
    3d44:	01212823          	sw	s2,16(sp)
    3d48:	00112e23          	sw	ra,28(sp)
    3d4c:	00050913          	mv	s2,a0
    3d50:	00058413          	mv	s0,a1
    3d54:	0085d493          	srli	s1,a1,0x8
    3d58:	00078463          	beqz	a5,3d60 <fatfs_fat_set_cluster+0x2c>
    3d5c:	0075d493          	srli	s1,a1,0x7
    3d60:	01492583          	lw	a1,20(s2)
    3d64:	00090513          	mv	a0,s2
    3d68:	00c12623          	sw	a2,12(sp)
    3d6c:	00b485b3          	add	a1,s1,a1
    3d70:	ffffe097          	auipc	ra,0xffffe
    3d74:	df8080e7          	jalr	-520(ra) # 1b68 <fatfs_fat_read_sector>
    3d78:	00050793          	mv	a5,a0
    3d7c:	00000513          	li	a0,0
    3d80:	04078663          	beqz	a5,3dcc <fatfs_fat_set_cluster+0x98>
    3d84:	03092683          	lw	a3,48(s2)
    3d88:	2087a703          	lw	a4,520(a5)
    3d8c:	00c12603          	lw	a2,12(sp)
    3d90:	04069a63          	bnez	a3,3de4 <fatfs_fat_set_cluster+0xb0>
    3d94:	00849493          	slli	s1,s1,0x8
    3d98:	40940433          	sub	s0,s0,s1
    3d9c:	00141413          	slli	s0,s0,0x1
    3da0:	01041413          	slli	s0,s0,0x10
    3da4:	01045413          	srli	s0,s0,0x10
    3da8:	00870733          	add	a4,a4,s0
    3dac:	00c70023          	sb	a2,0(a4)
    3db0:	2087a703          	lw	a4,520(a5)
    3db4:	00865613          	srli	a2,a2,0x8
    3db8:	00870733          	add	a4,a4,s0
    3dbc:	00c700a3          	sb	a2,1(a4)
    3dc0:	00100713          	li	a4,1
    3dc4:	20e7a223          	sw	a4,516(a5)
    3dc8:	00100513          	li	a0,1
    3dcc:	01c12083          	lw	ra,28(sp)
    3dd0:	01812403          	lw	s0,24(sp)
    3dd4:	01412483          	lw	s1,20(sp)
    3dd8:	01012903          	lw	s2,16(sp)
    3ddc:	02010113          	addi	sp,sp,32
    3de0:	00008067          	ret
    3de4:	00749493          	slli	s1,s1,0x7
    3de8:	40940433          	sub	s0,s0,s1
    3dec:	00241413          	slli	s0,s0,0x2
    3df0:	01041413          	slli	s0,s0,0x10
    3df4:	01045413          	srli	s0,s0,0x10
    3df8:	00870733          	add	a4,a4,s0
    3dfc:	00c70023          	sb	a2,0(a4)
    3e00:	2087a703          	lw	a4,520(a5)
    3e04:	00865693          	srli	a3,a2,0x8
    3e08:	00870733          	add	a4,a4,s0
    3e0c:	00d700a3          	sb	a3,1(a4)
    3e10:	2087a703          	lw	a4,520(a5)
    3e14:	01065693          	srli	a3,a2,0x10
    3e18:	01865613          	srli	a2,a2,0x18
    3e1c:	00870733          	add	a4,a4,s0
    3e20:	00d70123          	sb	a3,2(a4)
    3e24:	2087a703          	lw	a4,520(a5)
    3e28:	00870733          	add	a4,a4,s0
    3e2c:	00c701a3          	sb	a2,3(a4)
    3e30:	f91ff06f          	j	3dc0 <fatfs_fat_set_cluster+0x8c>

00003e34 <fatfs_free_cluster_chain>:
    3e34:	fe010113          	addi	sp,sp,-32
    3e38:	00812c23          	sw	s0,24(sp)
    3e3c:	00912a23          	sw	s1,20(sp)
    3e40:	00112e23          	sw	ra,28(sp)
    3e44:	01212823          	sw	s2,16(sp)
    3e48:	00050493          	mv	s1,a0
    3e4c:	ffd00413          	li	s0,-3
    3e50:	fff58793          	addi	a5,a1,-1
    3e54:	02f47063          	bgeu	s0,a5,3e74 <fatfs_free_cluster_chain+0x40>
    3e58:	01c12083          	lw	ra,28(sp)
    3e5c:	01812403          	lw	s0,24(sp)
    3e60:	01412483          	lw	s1,20(sp)
    3e64:	01012903          	lw	s2,16(sp)
    3e68:	00100513          	li	a0,1
    3e6c:	02010113          	addi	sp,sp,32
    3e70:	00008067          	ret
    3e74:	00048513          	mv	a0,s1
    3e78:	00b12623          	sw	a1,12(sp)
    3e7c:	fffff097          	auipc	ra,0xfffff
    3e80:	f10080e7          	jalr	-240(ra) # 2d8c <fatfs_find_next_cluster>
    3e84:	00c12583          	lw	a1,12(sp)
    3e88:	00050913          	mv	s2,a0
    3e8c:	00000613          	li	a2,0
    3e90:	00048513          	mv	a0,s1
    3e94:	00000097          	auipc	ra,0x0
    3e98:	ea0080e7          	jalr	-352(ra) # 3d34 <fatfs_fat_set_cluster>
    3e9c:	00090593          	mv	a1,s2
    3ea0:	fb1ff06f          	j	3e50 <fatfs_free_cluster_chain+0x1c>

00003ea4 <fatfs_fat_add_cluster_to_chain>:
    3ea4:	fd010113          	addi	sp,sp,-48
    3ea8:	02912223          	sw	s1,36(sp)
    3eac:	02112623          	sw	ra,44(sp)
    3eb0:	02812423          	sw	s0,40(sp)
    3eb4:	03212023          	sw	s2,32(sp)
    3eb8:	01312e23          	sw	s3,28(sp)
    3ebc:	fff00493          	li	s1,-1
    3ec0:	02959263          	bne	a1,s1,3ee4 <fatfs_fat_add_cluster_to_chain+0x40>
    3ec4:	00000513          	li	a0,0
    3ec8:	02c12083          	lw	ra,44(sp)
    3ecc:	02812403          	lw	s0,40(sp)
    3ed0:	02412483          	lw	s1,36(sp)
    3ed4:	02012903          	lw	s2,32(sp)
    3ed8:	01c12983          	lw	s3,28(sp)
    3edc:	03010113          	addi	sp,sp,48
    3ee0:	00008067          	ret
    3ee4:	00050913          	mv	s2,a0
    3ee8:	00058413          	mv	s0,a1
    3eec:	00060993          	mv	s3,a2
    3ef0:	00040593          	mv	a1,s0
    3ef4:	00090513          	mv	a0,s2
    3ef8:	00812623          	sw	s0,12(sp)
    3efc:	fffff097          	auipc	ra,0xfffff
    3f00:	e90080e7          	jalr	-368(ra) # 2d8c <fatfs_find_next_cluster>
    3f04:	00050413          	mv	s0,a0
    3f08:	fa050ee3          	beqz	a0,3ec4 <fatfs_fat_add_cluster_to_chain+0x20>
    3f0c:	00c12583          	lw	a1,12(sp)
    3f10:	fe9510e3          	bne	a0,s1,3ef0 <fatfs_fat_add_cluster_to_chain+0x4c>
    3f14:	00098613          	mv	a2,s3
    3f18:	00090513          	mv	a0,s2
    3f1c:	00000097          	auipc	ra,0x0
    3f20:	e18080e7          	jalr	-488(ra) # 3d34 <fatfs_fat_set_cluster>
    3f24:	00040613          	mv	a2,s0
    3f28:	00098593          	mv	a1,s3
    3f2c:	00090513          	mv	a0,s2
    3f30:	00000097          	auipc	ra,0x0
    3f34:	e04080e7          	jalr	-508(ra) # 3d34 <fatfs_fat_set_cluster>
    3f38:	00100513          	li	a0,1
    3f3c:	f8dff06f          	j	3ec8 <fatfs_fat_add_cluster_to_chain+0x24>

00003f40 <fatfs_add_free_space>:
    3f40:	02452783          	lw	a5,36(a0)
    3f44:	fd010113          	addi	sp,sp,-48
    3f48:	02812423          	sw	s0,40(sp)
    3f4c:	01312e23          	sw	s3,28(sp)
    3f50:	01412c23          	sw	s4,24(sp)
    3f54:	0005a983          	lw	s3,0(a1)
    3f58:	01512a23          	sw	s5,20(sp)
    3f5c:	00058a13          	mv	s4,a1
    3f60:	02112623          	sw	ra,44(sp)
    3f64:	02912223          	sw	s1,36(sp)
    3f68:	03212023          	sw	s2,32(sp)
    3f6c:	fff00593          	li	a1,-1
    3f70:	00050413          	mv	s0,a0
    3f74:	00060a93          	mv	s5,a2
    3f78:	00b78663          	beq	a5,a1,3f84 <fatfs_add_free_space+0x44>
    3f7c:	00000097          	auipc	ra,0x0
    3f80:	bf4080e7          	jalr	-1036(ra) # 3b70 <fatfs_set_fs_info_next_free_cluster>
    3f84:	00000493          	li	s1,0
    3f88:	03549663          	bne	s1,s5,3fb4 <fatfs_add_free_space+0x74>
    3f8c:	00100513          	li	a0,1
    3f90:	02c12083          	lw	ra,44(sp)
    3f94:	02812403          	lw	s0,40(sp)
    3f98:	02412483          	lw	s1,36(sp)
    3f9c:	02012903          	lw	s2,32(sp)
    3fa0:	01c12983          	lw	s3,28(sp)
    3fa4:	01812a03          	lw	s4,24(sp)
    3fa8:	01412a83          	lw	s5,20(sp)
    3fac:	03010113          	addi	sp,sp,48
    3fb0:	00008067          	ret
    3fb4:	00842583          	lw	a1,8(s0)
    3fb8:	00c10613          	addi	a2,sp,12
    3fbc:	00040513          	mv	a0,s0
    3fc0:	00000097          	auipc	ra,0x0
    3fc4:	c60080e7          	jalr	-928(ra) # 3c20 <fatfs_find_blank_cluster>
    3fc8:	fc0504e3          	beqz	a0,3f90 <fatfs_add_free_space+0x50>
    3fcc:	00c12903          	lw	s2,12(sp)
    3fd0:	00098593          	mv	a1,s3
    3fd4:	00040513          	mv	a0,s0
    3fd8:	00090613          	mv	a2,s2
    3fdc:	00000097          	auipc	ra,0x0
    3fe0:	d58080e7          	jalr	-680(ra) # 3d34 <fatfs_fat_set_cluster>
    3fe4:	fff00613          	li	a2,-1
    3fe8:	00090593          	mv	a1,s2
    3fec:	00040513          	mv	a0,s0
    3ff0:	00000097          	auipc	ra,0x0
    3ff4:	d44080e7          	jalr	-700(ra) # 3d34 <fatfs_fat_set_cluster>
    3ff8:	00049463          	bnez	s1,4000 <fatfs_add_free_space+0xc0>
    3ffc:	012a2023          	sw	s2,0(s4)
    4000:	00148493          	addi	s1,s1,1
    4004:	00090993          	mv	s3,s2
    4008:	f81ff06f          	j	3f88 <fatfs_add_free_space+0x48>

0000400c <_write_sectors>:
    400c:	fb010113          	addi	sp,sp,-80
    4010:	03512a23          	sw	s5,52(sp)
    4014:	0000bab7          	lui	s5,0xb
    4018:	04112623          	sw	ra,76(sp)
    401c:	04812423          	sw	s0,72(sp)
    4020:	04912223          	sw	s1,68(sp)
    4024:	03412c23          	sw	s4,56(sp)
    4028:	03612823          	sw	s6,48(sp)
    402c:	03712623          	sw	s7,44(sp)
    4030:	03812423          	sw	s8,40(sp)
    4034:	03912223          	sw	s9,36(sp)
    4038:	03a12023          	sw	s10,32(sp)
    403c:	05212023          	sw	s2,64(sp)
    4040:	03312e23          	sw	s3,60(sp)
    4044:	558a8b93          	addi	s7,s5,1368 # b558 <_fs>
    4048:	000bc983          	lbu	s3,0(s7)
    404c:	00058b13          	mv	s6,a1
    4050:	fff00793          	li	a5,-1
    4054:	00098593          	mv	a1,s3
    4058:	00050493          	mv	s1,a0
    405c:	000b0513          	mv	a0,s6
    4060:	00068c13          	mv	s8,a3
    4064:	00f12e23          	sw	a5,28(sp)
    4068:	00060d13          	mv	s10,a2
    406c:	ffffd097          	auipc	ra,0xffffd
    4070:	148080e7          	jalr	328(ra) # 11b4 <__udivsi3>
    4074:	00050a13          	mv	s4,a0
    4078:	00098593          	mv	a1,s3
    407c:	000b0513          	mv	a0,s6
    4080:	ffffd097          	auipc	ra,0xffffd
    4084:	17c080e7          	jalr	380(ra) # 11fc <__umodsi3>
    4088:	00ac07b3          	add	a5,s8,a0
    408c:	00050c93          	mv	s9,a0
    4090:	000c0413          	mv	s0,s8
    4094:	00f9fe63          	bgeu	s3,a5,40b0 <_write_sectors+0xa4>
    4098:	000a0593          	mv	a1,s4
    409c:	00098513          	mv	a0,s3
    40a0:	ffffe097          	auipc	ra,0xffffe
    40a4:	910080e7          	jalr	-1776(ra) # 19b0 <__mulsi3>
    40a8:	416987b3          	sub	a5,s3,s6
    40ac:	00f50433          	add	s0,a0,a5
    40b0:	2284a903          	lw	s2,552(s1)
    40b4:	03491a63          	bne	s2,s4,40e8 <_write_sectors+0xdc>
    40b8:	22c4a583          	lw	a1,556(s1)
    40bc:	558a8513          	addi	a0,s5,1368
    40c0:	ffffe097          	auipc	ra,0xffffe
    40c4:	c54080e7          	jalr	-940(ra) # 1d14 <fatfs_lba_of_cluster>
    40c8:	019505b3          	add	a1,a0,s9
    40cc:	00040693          	mv	a3,s0
    40d0:	000d0613          	mv	a2,s10
    40d4:	558a8513          	addi	a0,s5,1368
    40d8:	ffffe097          	auipc	ra,0xffffe
    40dc:	ca0080e7          	jalr	-864(ra) # 1d78 <fatfs_sector_write>
    40e0:	04050a63          	beqz	a0,4134 <_write_sectors+0x128>
    40e4:	0540006f          	j	4138 <_write_sectors+0x12c>
    40e8:	093b6663          	bltu	s6,s3,4174 <_write_sectors+0x168>
    40ec:	00190793          	addi	a5,s2,1
    40f0:	09479263          	bne	a5,s4,4174 <_write_sectors+0x168>
    40f4:	22c4a583          	lw	a1,556(s1)
    40f8:	fff00b13          	li	s6,-1
    40fc:	09496263          	bltu	s2,s4,4180 <_write_sectors+0x174>
    4100:	fff00793          	li	a5,-1
    4104:	0af59463          	bne	a1,a5,41ac <_write_sectors+0x1a0>
    4108:	000bc583          	lbu	a1,0(s7)
    410c:	fff58513          	addi	a0,a1,-1
    4110:	01850533          	add	a0,a0,s8
    4114:	ffffd097          	auipc	ra,0xffffd
    4118:	0a0080e7          	jalr	160(ra) # 11b4 <__udivsi3>
    411c:	00050613          	mv	a2,a0
    4120:	01c10593          	addi	a1,sp,28
    4124:	000b8513          	mv	a0,s7
    4128:	00000097          	auipc	ra,0x0
    412c:	e18080e7          	jalr	-488(ra) # 3f40 <fatfs_add_free_space>
    4130:	06051c63          	bnez	a0,41a8 <_write_sectors+0x19c>
    4134:	00000413          	li	s0,0
    4138:	04c12083          	lw	ra,76(sp)
    413c:	00040513          	mv	a0,s0
    4140:	04812403          	lw	s0,72(sp)
    4144:	04412483          	lw	s1,68(sp)
    4148:	04012903          	lw	s2,64(sp)
    414c:	03c12983          	lw	s3,60(sp)
    4150:	03812a03          	lw	s4,56(sp)
    4154:	03412a83          	lw	s5,52(sp)
    4158:	03012b03          	lw	s6,48(sp)
    415c:	02c12b83          	lw	s7,44(sp)
    4160:	02812c03          	lw	s8,40(sp)
    4164:	02412c83          	lw	s9,36(sp)
    4168:	02012d03          	lw	s10,32(sp)
    416c:	05010113          	addi	sp,sp,80
    4170:	00008067          	ret
    4174:	0044a583          	lw	a1,4(s1)
    4178:	00000913          	li	s2,0
    417c:	f7dff06f          	j	40f8 <_write_sectors+0xec>
    4180:	558a8513          	addi	a0,s5,1368
    4184:	00b12623          	sw	a1,12(sp)
    4188:	fffff097          	auipc	ra,0xfffff
    418c:	c04080e7          	jalr	-1020(ra) # 2d8c <fatfs_find_next_cluster>
    4190:	00c12583          	lw	a1,12(sp)
    4194:	00b12e23          	sw	a1,28(sp)
    4198:	f76508e3          	beq	a0,s6,4108 <_write_sectors+0xfc>
    419c:	00190913          	addi	s2,s2,1
    41a0:	00050593          	mv	a1,a0
    41a4:	f59ff06f          	j	40fc <_write_sectors+0xf0>
    41a8:	01c12583          	lw	a1,28(sp)
    41ac:	22b4a623          	sw	a1,556(s1)
    41b0:	2344a423          	sw	s4,552(s1)
    41b4:	f09ff06f          	j	40bc <_write_sectors+0xb0>

000041b8 <fl_fflush>:
    41b8:	000057b7          	lui	a5,0x5
    41bc:	2d47a783          	lw	a5,724(a5) # 52d4 <_filelib_init>
    41c0:	ff010113          	addi	sp,sp,-16
    41c4:	00812423          	sw	s0,8(sp)
    41c8:	00112623          	sw	ra,12(sp)
    41cc:	00912223          	sw	s1,4(sp)
    41d0:	00050413          	mv	s0,a0
    41d4:	00079663          	bnez	a5,41e0 <fl_fflush+0x28>
    41d8:	ffffe097          	auipc	ra,0xffffe
    41dc:	c6c080e7          	jalr	-916(ra) # 1e44 <fl_init>
    41e0:	04040663          	beqz	s0,422c <fl_fflush+0x74>
    41e4:	0000b4b7          	lui	s1,0xb
    41e8:	55848493          	addi	s1,s1,1368 # b558 <_fs>
    41ec:	03c4a783          	lw	a5,60(s1)
    41f0:	00078463          	beqz	a5,41f8 <fl_fflush+0x40>
    41f4:	000780e7          	jalr	a5
    41f8:	43442783          	lw	a5,1076(s0)
    41fc:	02078263          	beqz	a5,4220 <fl_fflush+0x68>
    4200:	43042583          	lw	a1,1072(s0)
    4204:	00100693          	li	a3,1
    4208:	23040613          	addi	a2,s0,560
    420c:	00040513          	mv	a0,s0
    4210:	00000097          	auipc	ra,0x0
    4214:	dfc080e7          	jalr	-516(ra) # 400c <_write_sectors>
    4218:	00050463          	beqz	a0,4220 <fl_fflush+0x68>
    421c:	42042a23          	sw	zero,1076(s0)
    4220:	0404a783          	lw	a5,64(s1)
    4224:	00078463          	beqz	a5,422c <fl_fflush+0x74>
    4228:	000780e7          	jalr	a5
    422c:	00c12083          	lw	ra,12(sp)
    4230:	00812403          	lw	s0,8(sp)
    4234:	00412483          	lw	s1,4(sp)
    4238:	00000513          	li	a0,0
    423c:	01010113          	addi	sp,sp,16
    4240:	00008067          	ret

00004244 <fl_fclose>:
    4244:	000057b7          	lui	a5,0x5
    4248:	2d47a783          	lw	a5,724(a5) # 52d4 <_filelib_init>
    424c:	ff010113          	addi	sp,sp,-16
    4250:	00812423          	sw	s0,8(sp)
    4254:	00112623          	sw	ra,12(sp)
    4258:	00912223          	sw	s1,4(sp)
    425c:	01212023          	sw	s2,0(sp)
    4260:	00050413          	mv	s0,a0
    4264:	00079663          	bnez	a5,4270 <fl_fclose+0x2c>
    4268:	ffffe097          	auipc	ra,0xffffe
    426c:	bdc080e7          	jalr	-1060(ra) # 1e44 <fl_init>
    4270:	08040c63          	beqz	s0,4308 <fl_fclose+0xc4>
    4274:	0000b4b7          	lui	s1,0xb
    4278:	55848913          	addi	s2,s1,1368 # b558 <_fs>
    427c:	03c92783          	lw	a5,60(s2)
    4280:	00078463          	beqz	a5,4288 <fl_fclose+0x44>
    4284:	000780e7          	jalr	a5
    4288:	00040513          	mv	a0,s0
    428c:	00000097          	auipc	ra,0x0
    4290:	f2c080e7          	jalr	-212(ra) # 41b8 <fl_fflush>
    4294:	01042783          	lw	a5,16(s0)
    4298:	00078e63          	beqz	a5,42b4 <fl_fclose+0x70>
    429c:	00c42683          	lw	a3,12(s0)
    42a0:	00042583          	lw	a1,0(s0)
    42a4:	21c40613          	addi	a2,s0,540
    42a8:	55848513          	addi	a0,s1,1368
    42ac:	fffff097          	auipc	ra,0xfffff
    42b0:	338080e7          	jalr	824(ra) # 35e4 <fatfs_update_file_length>
    42b4:	fff00793          	li	a5,-1
    42b8:	42f42823          	sw	a5,1072(s0)
    42bc:	00040513          	mv	a0,s0
    42c0:	00042423          	sw	zero,8(s0)
    42c4:	00042623          	sw	zero,12(s0)
    42c8:	00042223          	sw	zero,4(s0)
    42cc:	42042a23          	sw	zero,1076(s0)
    42d0:	00042823          	sw	zero,16(s0)
    42d4:	ffffe097          	auipc	ra,0xffffe
    42d8:	9f8080e7          	jalr	-1544(ra) # 1ccc <_free_file>
    42dc:	55848513          	addi	a0,s1,1368
    42e0:	fffff097          	auipc	ra,0xfffff
    42e4:	a54080e7          	jalr	-1452(ra) # 2d34 <fatfs_fat_purge>
    42e8:	04092783          	lw	a5,64(s2)
    42ec:	00078e63          	beqz	a5,4308 <fl_fclose+0xc4>
    42f0:	00812403          	lw	s0,8(sp)
    42f4:	00c12083          	lw	ra,12(sp)
    42f8:	00412483          	lw	s1,4(sp)
    42fc:	00012903          	lw	s2,0(sp)
    4300:	01010113          	addi	sp,sp,16
    4304:	00078067          	jr	a5
    4308:	00c12083          	lw	ra,12(sp)
    430c:	00812403          	lw	s0,8(sp)
    4310:	00412483          	lw	s1,4(sp)
    4314:	00012903          	lw	s2,0(sp)
    4318:	01010113          	addi	sp,sp,16
    431c:	00008067          	ret

00004320 <fl_fread>:
    4320:	000057b7          	lui	a5,0x5
    4324:	2d47a783          	lw	a5,724(a5) # 52d4 <_filelib_init>
    4328:	fc010113          	addi	sp,sp,-64
    432c:	02812c23          	sw	s0,56(sp)
    4330:	03512223          	sw	s5,36(sp)
    4334:	02112e23          	sw	ra,60(sp)
    4338:	02912a23          	sw	s1,52(sp)
    433c:	03212823          	sw	s2,48(sp)
    4340:	03312623          	sw	s3,44(sp)
    4344:	03412423          	sw	s4,40(sp)
    4348:	03612023          	sw	s6,32(sp)
    434c:	01712e23          	sw	s7,28(sp)
    4350:	01812c23          	sw	s8,24(sp)
    4354:	01912a23          	sw	s9,20(sp)
    4358:	00050a93          	mv	s5,a0
    435c:	00068413          	mv	s0,a3
    4360:	00058513          	mv	a0,a1
    4364:	00079e63          	bnez	a5,4380 <fl_fread+0x60>
    4368:	00c12623          	sw	a2,12(sp)
    436c:	00b12423          	sw	a1,8(sp)
    4370:	ffffe097          	auipc	ra,0xffffe
    4374:	ad4080e7          	jalr	-1324(ra) # 1e44 <fl_init>
    4378:	00c12603          	lw	a2,12(sp)
    437c:	00812503          	lw	a0,8(sp)
    4380:	14040e63          	beqz	s0,44dc <fl_fread+0x1bc>
    4384:	140a8c63          	beqz	s5,44dc <fl_fread+0x1bc>
    4388:	43844783          	lbu	a5,1080(s0)
    438c:	fff00493          	li	s1,-1
    4390:	0017f793          	andi	a5,a5,1
    4394:	04078863          	beqz	a5,43e4 <fl_fread+0xc4>
    4398:	00060593          	mv	a1,a2
    439c:	ffffd097          	auipc	ra,0xffffd
    43a0:	614080e7          	jalr	1556(ra) # 19b0 <__mulsi3>
    43a4:	00050493          	mv	s1,a0
    43a8:	02050e63          	beqz	a0,43e4 <fl_fread+0xc4>
    43ac:	00842583          	lw	a1,8(s0)
    43b0:	00c42783          	lw	a5,12(s0)
    43b4:	12f5f463          	bgeu	a1,a5,44dc <fl_fread+0x1bc>
    43b8:	00b50733          	add	a4,a0,a1
    43bc:	00e7f463          	bgeu	a5,a4,43c4 <fl_fread+0xa4>
    43c0:	40b784b3          	sub	s1,a5,a1
    43c4:	0095da13          	srli	s4,a1,0x9
    43c8:	1ff5f913          	andi	s2,a1,511
    43cc:	00000993          	li	s3,0
    43d0:	23040b13          	addi	s6,s0,560
    43d4:	20000b93          	li	s7,512
    43d8:	1ff00c13          	li	s8,511
    43dc:	0499c063          	blt	s3,s1,441c <fl_fread+0xfc>
    43e0:	00098493          	mv	s1,s3
    43e4:	03c12083          	lw	ra,60(sp)
    43e8:	03812403          	lw	s0,56(sp)
    43ec:	03012903          	lw	s2,48(sp)
    43f0:	02c12983          	lw	s3,44(sp)
    43f4:	02812a03          	lw	s4,40(sp)
    43f8:	02412a83          	lw	s5,36(sp)
    43fc:	02012b03          	lw	s6,32(sp)
    4400:	01c12b83          	lw	s7,28(sp)
    4404:	01812c03          	lw	s8,24(sp)
    4408:	01412c83          	lw	s9,20(sp)
    440c:	00048513          	mv	a0,s1
    4410:	03412483          	lw	s1,52(sp)
    4414:	04010113          	addi	sp,sp,64
    4418:	00008067          	ret
    441c:	04091663          	bnez	s2,4468 <fl_fread+0x148>
    4420:	413486b3          	sub	a3,s1,s3
    4424:	04dc5263          	bge	s8,a3,4468 <fl_fread+0x148>
    4428:	4096d693          	srai	a3,a3,0x9
    442c:	013a8633          	add	a2,s5,s3
    4430:	000a0593          	mv	a1,s4
    4434:	00040513          	mv	a0,s0
    4438:	fffff097          	auipc	ra,0xfffff
    443c:	5ec080e7          	jalr	1516(ra) # 3a24 <_read_sectors>
    4440:	fa0500e3          	beqz	a0,43e0 <fl_fread+0xc0>
    4444:	00951c93          	slli	s9,a0,0x9
    4448:	000c8613          	mv	a2,s9
    444c:	00aa0a33          	add	s4,s4,a0
    4450:	00842783          	lw	a5,8(s0)
    4454:	00c989b3          	add	s3,s3,a2
    4458:	00000913          	li	s2,0
    445c:	019787b3          	add	a5,a5,s9
    4460:	00f42423          	sw	a5,8(s0)
    4464:	f79ff06f          	j	43dc <fl_fread+0xbc>
    4468:	43042783          	lw	a5,1072(s0)
    446c:	03478e63          	beq	a5,s4,44a8 <fl_fread+0x188>
    4470:	43442783          	lw	a5,1076(s0)
    4474:	00078863          	beqz	a5,4484 <fl_fread+0x164>
    4478:	00040513          	mv	a0,s0
    447c:	00000097          	auipc	ra,0x0
    4480:	d3c080e7          	jalr	-708(ra) # 41b8 <fl_fflush>
    4484:	00100693          	li	a3,1
    4488:	000b0613          	mv	a2,s6
    448c:	000a0593          	mv	a1,s4
    4490:	00040513          	mv	a0,s0
    4494:	fffff097          	auipc	ra,0xfffff
    4498:	590080e7          	jalr	1424(ra) # 3a24 <_read_sectors>
    449c:	f40502e3          	beqz	a0,43e0 <fl_fread+0xc0>
    44a0:	43442823          	sw	s4,1072(s0)
    44a4:	42042a23          	sw	zero,1076(s0)
    44a8:	412b87b3          	sub	a5,s7,s2
    44ac:	41348633          	sub	a2,s1,s3
    44b0:	00c7d463          	bge	a5,a2,44b8 <fl_fread+0x198>
    44b4:	00078613          	mv	a2,a5
    44b8:	012b05b3          	add	a1,s6,s2
    44bc:	013a8533          	add	a0,s5,s3
    44c0:	00060c93          	mv	s9,a2
    44c4:	00c12423          	sw	a2,8(sp)
    44c8:	ffffd097          	auipc	ra,0xffffd
    44cc:	db4080e7          	jalr	-588(ra) # 127c <memcpy>
    44d0:	00812603          	lw	a2,8(sp)
    44d4:	001a0a13          	addi	s4,s4,1
    44d8:	f79ff06f          	j	4450 <fl_fread+0x130>
    44dc:	fff00493          	li	s1,-1
    44e0:	f05ff06f          	j	43e4 <fl_fread+0xc4>

000044e4 <fatfs_allocate_free_space>:
    44e4:	fd010113          	addi	sp,sp,-48
    44e8:	02112623          	sw	ra,44(sp)
    44ec:	02812423          	sw	s0,40(sp)
    44f0:	02912223          	sw	s1,36(sp)
    44f4:	03212023          	sw	s2,32(sp)
    44f8:	01312e23          	sw	s3,28(sp)
    44fc:	01412c23          	sw	s4,24(sp)
    4500:	01512a23          	sw	s5,20(sp)
    4504:	02069863          	bnez	a3,4534 <fatfs_allocate_free_space+0x50>
    4508:	00000413          	li	s0,0
    450c:	02c12083          	lw	ra,44(sp)
    4510:	00040513          	mv	a0,s0
    4514:	02812403          	lw	s0,40(sp)
    4518:	02412483          	lw	s1,36(sp)
    451c:	02012903          	lw	s2,32(sp)
    4520:	01c12983          	lw	s3,28(sp)
    4524:	01812a03          	lw	s4,24(sp)
    4528:	01412a83          	lw	s5,20(sp)
    452c:	03010113          	addi	sp,sp,48
    4530:	00008067          	ret
    4534:	02452783          	lw	a5,36(a0)
    4538:	00058a13          	mv	s4,a1
    453c:	fff00593          	li	a1,-1
    4540:	00050493          	mv	s1,a0
    4544:	00068913          	mv	s2,a3
    4548:	00060993          	mv	s3,a2
    454c:	00b78663          	beq	a5,a1,4558 <fatfs_allocate_free_space+0x74>
    4550:	fffff097          	auipc	ra,0xfffff
    4554:	620080e7          	jalr	1568(ra) # 3b70 <fatfs_set_fs_info_next_free_cluster>
    4558:	0004c783          	lbu	a5,0(s1)
    455c:	00090513          	mv	a0,s2
    4560:	00979a93          	slli	s5,a5,0x9
    4564:	000a8593          	mv	a1,s5
    4568:	ffffd097          	auipc	ra,0xffffd
    456c:	c4c080e7          	jalr	-948(ra) # 11b4 <__udivsi3>
    4570:	00050413          	mv	s0,a0
    4574:	00050593          	mv	a1,a0
    4578:	000a8513          	mv	a0,s5
    457c:	ffffd097          	auipc	ra,0xffffd
    4580:	434080e7          	jalr	1076(ra) # 19b0 <__mulsi3>
    4584:	41250533          	sub	a0,a0,s2
    4588:	00a03533          	snez	a0,a0
    458c:	00a40933          	add	s2,s0,a0
    4590:	040a0463          	beqz	s4,45d8 <fatfs_allocate_free_space+0xf4>
    4594:	0084a583          	lw	a1,8(s1)
    4598:	00c10613          	addi	a2,sp,12
    459c:	00048513          	mv	a0,s1
    45a0:	fffff097          	auipc	ra,0xfffff
    45a4:	680080e7          	jalr	1664(ra) # 3c20 <fatfs_find_blank_cluster>
    45a8:	00050413          	mv	s0,a0
    45ac:	f4050ee3          	beqz	a0,4508 <fatfs_allocate_free_space+0x24>
    45b0:	00100793          	li	a5,1
    45b4:	02f91663          	bne	s2,a5,45e0 <fatfs_allocate_free_space+0xfc>
    45b8:	00c12903          	lw	s2,12(sp)
    45bc:	fff00613          	li	a2,-1
    45c0:	00048513          	mv	a0,s1
    45c4:	00090593          	mv	a1,s2
    45c8:	fffff097          	auipc	ra,0xfffff
    45cc:	76c080e7          	jalr	1900(ra) # 3d34 <fatfs_fat_set_cluster>
    45d0:	0129a023          	sw	s2,0(s3)
    45d4:	f39ff06f          	j	450c <fatfs_allocate_free_space+0x28>
    45d8:	0009a783          	lw	a5,0(s3)
    45dc:	00f12623          	sw	a5,12(sp)
    45e0:	00090613          	mv	a2,s2
    45e4:	00c10593          	addi	a1,sp,12
    45e8:	00048513          	mv	a0,s1
    45ec:	00000097          	auipc	ra,0x0
    45f0:	954080e7          	jalr	-1708(ra) # 3f40 <fatfs_add_free_space>
    45f4:	00050413          	mv	s0,a0
    45f8:	f15ff06f          	j	450c <fatfs_allocate_free_space+0x28>

000045fc <fatfs_add_file_entry>:
    45fc:	03852883          	lw	a7,56(a0)
    4600:	30088e63          	beqz	a7,491c <fatfs_add_file_entry+0x320>
    4604:	f8010113          	addi	sp,sp,-128
    4608:	06812c23          	sw	s0,120(sp)
    460c:	00050413          	mv	s0,a0
    4610:	00060513          	mv	a0,a2
    4614:	06912a23          	sw	s1,116(sp)
    4618:	07512223          	sw	s5,100(sp)
    461c:	00f12c23          	sw	a5,24(sp)
    4620:	00e12a23          	sw	a4,20(sp)
    4624:	06112e23          	sw	ra,124(sp)
    4628:	07212823          	sw	s2,112(sp)
    462c:	07312623          	sw	s3,108(sp)
    4630:	07412423          	sw	s4,104(sp)
    4634:	07612023          	sw	s6,96(sp)
    4638:	05712e23          	sw	s7,92(sp)
    463c:	05812c23          	sw	s8,88(sp)
    4640:	05912a23          	sw	s9,84(sp)
    4644:	05a12823          	sw	s10,80(sp)
    4648:	05b12623          	sw	s11,76(sp)
    464c:	01012e23          	sw	a6,28(sp)
    4650:	00068a93          	mv	s5,a3
    4654:	00c12823          	sw	a2,16(sp)
    4658:	00b12423          	sw	a1,8(sp)
    465c:	ffffe097          	auipc	ra,0xffffe
    4660:	a48080e7          	jalr	-1464(ra) # 20a4 <fatfs_lfn_entries_required>
    4664:	00150713          	addi	a4,a0,1
    4668:	00100793          	li	a5,1
    466c:	00050493          	mv	s1,a0
    4670:	2ae7f263          	bgeu	a5,a4,4914 <fatfs_add_file_entry+0x318>
    4674:	00000a13          	li	s4,0
    4678:	00000993          	li	s3,0
    467c:	00000913          	li	s2,0
    4680:	00000c93          	li	s9,0
    4684:	00000b13          	li	s6,0
    4688:	01000c13          	li	s8,16
    468c:	00812583          	lw	a1,8(sp)
    4690:	00000693          	li	a3,0
    4694:	000b0613          	mv	a2,s6
    4698:	00040513          	mv	a0,s0
    469c:	000b0b93          	mv	s7,s6
    46a0:	ffffe097          	auipc	ra,0xffffe
    46a4:	7f4080e7          	jalr	2036(ra) # 2e94 <fatfs_sector_reader>
    46a8:	18050463          	beqz	a0,4830 <fatfs_add_file_entry+0x234>
    46ac:	001b0b13          	addi	s6,s6,1
    46b0:	04440793          	addi	a5,s0,68
    46b4:	000c8d13          	mv	s10,s9
    46b8:	00000d93          	li	s11,0
    46bc:	00078513          	mv	a0,a5
    46c0:	00f12623          	sw	a5,12(sp)
    46c4:	ffffe097          	auipc	ra,0xffffe
    46c8:	8f8080e7          	jalr	-1800(ra) # 1fbc <fatfs_entry_lfn_text>
    46cc:	00c12783          	lw	a5,12(sp)
    46d0:	00050c93          	mv	s9,a0
    46d4:	02050c63          	beqz	a0,470c <fatfs_add_file_entry+0x110>
    46d8:	020d0463          	beqz	s10,4700 <fatfs_add_file_entry+0x104>
    46dc:	00090c93          	mv	s9,s2
    46e0:	000c8913          	mv	s2,s9
    46e4:	001d0c93          	addi	s9,s10,1
    46e8:	001d8d93          	addi	s11,s11,1
    46ec:	0ffdfd93          	zext.b	s11,s11
    46f0:	02078793          	addi	a5,a5,32
    46f4:	f98d8ce3          	beq	s11,s8,468c <fatfs_add_file_entry+0x90>
    46f8:	000c8d13          	mv	s10,s9
    46fc:	fc1ff06f          	j	46bc <fatfs_add_file_entry+0xc0>
    4700:	000d8a13          	mv	s4,s11
    4704:	000b8993          	mv	s3,s7
    4708:	fd9ff06f          	j	46e0 <fatfs_add_file_entry+0xe4>
    470c:	0007c683          	lbu	a3,0(a5)
    4710:	0e500713          	li	a4,229
    4714:	10e69863          	bne	a3,a4,4824 <fatfs_add_file_entry+0x228>
    4718:	000d1863          	bnez	s10,4728 <fatfs_add_file_entry+0x12c>
    471c:	000d8a13          	mv	s4,s11
    4720:	000b8993          	mv	s3,s7
    4724:	00100913          	li	s2,1
    4728:	fa9d4ee3          	blt	s10,s1,46e4 <fatfs_add_file_entry+0xe8>
    472c:	00ba8693          	addi	a3,s5,11
    4730:	000a8713          	mv	a4,s5
    4734:	00000913          	li	s2,0
    4738:	00074603          	lbu	a2,0(a4)
    473c:	00195793          	srli	a5,s2,0x1
    4740:	00791913          	slli	s2,s2,0x7
    4744:	012787b3          	add	a5,a5,s2
    4748:	00170713          	addi	a4,a4,1
    474c:	00c787b3          	add	a5,a5,a2
    4750:	0ff7f913          	zext.b	s2,a5
    4754:	fed712e3          	bne	a4,a3,4738 <fatfs_add_file_entry+0x13c>
    4758:	00098b13          	mv	s6,s3
    475c:	00000d13          	li	s10,0
    4760:	01000b93          	li	s7,16
    4764:	00812583          	lw	a1,8(sp)
    4768:	00000693          	li	a3,0
    476c:	000b0613          	mv	a2,s6
    4770:	00040513          	mv	a0,s0
    4774:	ffffe097          	auipc	ra,0xffffe
    4778:	720080e7          	jalr	1824(ra) # 2e94 <fatfs_sector_reader>
    477c:	18050c63          	beqz	a0,4914 <fatfs_add_file_entry+0x318>
    4780:	04440c93          	addi	s9,s0,68
    4784:	413b0db3          	sub	s11,s6,s3
    4788:	00000793          	li	a5,0
    478c:	00000c13          	li	s8,0
    4790:	01912623          	sw	s9,12(sp)
    4794:	000d1663          	bnez	s10,47a0 <fatfs_add_file_entry+0x1a4>
    4798:	154c1863          	bne	s8,s4,48e8 <fatfs_add_file_entry+0x2ec>
    479c:	140d9663          	bnez	s11,48e8 <fatfs_add_file_entry+0x2ec>
    47a0:	12049263          	bnez	s1,48c4 <fatfs_add_file_entry+0x2c8>
    47a4:	01c12703          	lw	a4,28(sp)
    47a8:	01412603          	lw	a2,20(sp)
    47ac:	01812583          	lw	a1,24(sp)
    47b0:	02010693          	addi	a3,sp,32
    47b4:	000a8513          	mv	a0,s5
    47b8:	ffffe097          	auipc	ra,0xffffe
    47bc:	a30080e7          	jalr	-1488(ra) # 21e8 <fatfs_sfn_create_entry>
    47c0:	02000613          	li	a2,32
    47c4:	00c105b3          	add	a1,sp,a2
    47c8:	000c8513          	mv	a0,s9
    47cc:	ffffd097          	auipc	ra,0xffffd
    47d0:	ab0080e7          	jalr	-1360(ra) # 127c <memcpy>
    47d4:	03842783          	lw	a5,56(s0)
    47d8:	00c12583          	lw	a1,12(sp)
    47dc:	24442503          	lw	a0,580(s0)
    47e0:	00100613          	li	a2,1
    47e4:	000780e7          	jalr	a5
    47e8:	07c12083          	lw	ra,124(sp)
    47ec:	07812403          	lw	s0,120(sp)
    47f0:	07412483          	lw	s1,116(sp)
    47f4:	07012903          	lw	s2,112(sp)
    47f8:	06c12983          	lw	s3,108(sp)
    47fc:	06812a03          	lw	s4,104(sp)
    4800:	06412a83          	lw	s5,100(sp)
    4804:	06012b03          	lw	s6,96(sp)
    4808:	05c12b83          	lw	s7,92(sp)
    480c:	05812c03          	lw	s8,88(sp)
    4810:	05412c83          	lw	s9,84(sp)
    4814:	05012d03          	lw	s10,80(sp)
    4818:	04c12d83          	lw	s11,76(sp)
    481c:	08010113          	addi	sp,sp,128
    4820:	00008067          	ret
    4824:	ee068ae3          	beqz	a3,4718 <fatfs_add_file_entry+0x11c>
    4828:	00000913          	li	s2,0
    482c:	ebdff06f          	j	46e8 <fatfs_add_file_entry+0xec>
    4830:	00842583          	lw	a1,8(s0)
    4834:	02010613          	addi	a2,sp,32
    4838:	00040513          	mv	a0,s0
    483c:	fffff097          	auipc	ra,0xfffff
    4840:	3e4080e7          	jalr	996(ra) # 3c20 <fatfs_find_blank_cluster>
    4844:	0c050863          	beqz	a0,4914 <fatfs_add_file_entry+0x318>
    4848:	02012b83          	lw	s7,32(sp)
    484c:	00812583          	lw	a1,8(sp)
    4850:	00040513          	mv	a0,s0
    4854:	000b8613          	mv	a2,s7
    4858:	fffff097          	auipc	ra,0xfffff
    485c:	64c080e7          	jalr	1612(ra) # 3ea4 <fatfs_fat_add_cluster_to_chain>
    4860:	0a050a63          	beqz	a0,4914 <fatfs_add_file_entry+0x318>
    4864:	20000613          	li	a2,512
    4868:	00000593          	li	a1,0
    486c:	04440513          	addi	a0,s0,68
    4870:	ffffd097          	auipc	ra,0xffffd
    4874:	9f0080e7          	jalr	-1552(ra) # 1260 <memset>
    4878:	00000c13          	li	s8,0
    487c:	00044783          	lbu	a5,0(s0)
    4880:	00fc6a63          	bltu	s8,a5,4894 <fatfs_add_file_entry+0x298>
    4884:	ea0914e3          	bnez	s2,472c <fatfs_add_file_entry+0x130>
    4888:	000b0993          	mv	s3,s6
    488c:	00000a13          	li	s4,0
    4890:	e9dff06f          	j	472c <fatfs_add_file_entry+0x130>
    4894:	00000693          	li	a3,0
    4898:	000c0613          	mv	a2,s8
    489c:	000b8593          	mv	a1,s7
    48a0:	00040513          	mv	a0,s0
    48a4:	ffffd097          	auipc	ra,0xffffd
    48a8:	4ec080e7          	jalr	1260(ra) # 1d90 <fatfs_write_sector>
    48ac:	06050463          	beqz	a0,4914 <fatfs_add_file_entry+0x318>
    48b0:	001c0c13          	addi	s8,s8,1
    48b4:	0ffc7c13          	zext.b	s8,s8
    48b8:	fc5ff06f          	j	487c <fatfs_add_file_entry+0x280>
    48bc:	001b0b13          	addi	s6,s6,1
    48c0:	ea5ff06f          	j	4764 <fatfs_add_file_entry+0x168>
    48c4:	01012503          	lw	a0,16(sp)
    48c8:	fff48493          	addi	s1,s1,-1
    48cc:	00090693          	mv	a3,s2
    48d0:	00048613          	mv	a2,s1
    48d4:	000c8593          	mv	a1,s9
    48d8:	ffffd097          	auipc	ra,0xffffd
    48dc:	7fc080e7          	jalr	2044(ra) # 20d4 <fatfs_filename_to_lfn>
    48e0:	00100d13          	li	s10,1
    48e4:	000d0793          	mv	a5,s10
    48e8:	001c0c13          	addi	s8,s8,1
    48ec:	0ffc7c13          	zext.b	s8,s8
    48f0:	020c8c93          	addi	s9,s9,32
    48f4:	eb7c10e3          	bne	s8,s7,4794 <fatfs_add_file_entry+0x198>
    48f8:	fc0782e3          	beqz	a5,48bc <fatfs_add_file_entry+0x2c0>
    48fc:	03842783          	lw	a5,56(s0)
    4900:	00c12583          	lw	a1,12(sp)
    4904:	24442503          	lw	a0,580(s0)
    4908:	00100613          	li	a2,1
    490c:	000780e7          	jalr	a5
    4910:	fa0516e3          	bnez	a0,48bc <fatfs_add_file_entry+0x2c0>
    4914:	00000513          	li	a0,0
    4918:	ed1ff06f          	j	47e8 <fatfs_add_file_entry+0x1ec>
    491c:	00000513          	li	a0,0
    4920:	00008067          	ret

00004924 <fl_fopen>:
    4924:	000057b7          	lui	a5,0x5
    4928:	2d47a783          	lw	a5,724(a5) # 52d4 <_filelib_init>
    492c:	fa010113          	addi	sp,sp,-96
    4930:	05212823          	sw	s2,80(sp)
    4934:	03a12823          	sw	s10,48(sp)
    4938:	04112e23          	sw	ra,92(sp)
    493c:	04812c23          	sw	s0,88(sp)
    4940:	04912a23          	sw	s1,84(sp)
    4944:	05312623          	sw	s3,76(sp)
    4948:	05412423          	sw	s4,72(sp)
    494c:	05512223          	sw	s5,68(sp)
    4950:	05612023          	sw	s6,64(sp)
    4954:	03712e23          	sw	s7,60(sp)
    4958:	03812c23          	sw	s8,56(sp)
    495c:	03912a23          	sw	s9,52(sp)
    4960:	00050d13          	mv	s10,a0
    4964:	00058913          	mv	s2,a1
    4968:	00079663          	bnez	a5,4974 <fl_fopen+0x50>
    496c:	ffffd097          	auipc	ra,0xffffd
    4970:	4d8080e7          	jalr	1240(ra) # 1e44 <fl_init>
    4974:	000057b7          	lui	a5,0x5
    4978:	2d07a783          	lw	a5,720(a5) # 52d0 <_filelib_valid>
    497c:	00193713          	seqz	a4,s2
    4980:	0017b793          	seqz	a5,a5
    4984:	00e7e7b3          	or	a5,a5,a4
    4988:	36079e63          	bnez	a5,4d04 <fl_fopen+0x3e0>
    498c:	360d0c63          	beqz	s10,4d04 <fl_fopen+0x3e0>
    4990:	00000493          	li	s1,0
    4994:	00000413          	li	s0,0
    4998:	05700993          	li	s3,87
    499c:	07200a13          	li	s4,114
    49a0:	07700b13          	li	s6,119
    49a4:	06100b93          	li	s7,97
    49a8:	06200c13          	li	s8,98
    49ac:	04100a93          	li	s5,65
    49b0:	04200c93          	li	s9,66
    49b4:	00090513          	mv	a0,s2
    49b8:	ffffd097          	auipc	ra,0xffffd
    49bc:	8e8080e7          	jalr	-1816(ra) # 12a0 <strlen>
    49c0:	10a44a63          	blt	s0,a0,4ad4 <fl_fopen+0x1b0>
    49c4:	0000b9b7          	lui	s3,0xb
    49c8:	55898a13          	addi	s4,s3,1368 # b558 <_fs>
    49cc:	038a2783          	lw	a5,56(s4)
    49d0:	00079463          	bnez	a5,49d8 <fl_fopen+0xb4>
    49d4:	fd94f493          	andi	s1,s1,-39
    49d8:	03ca2783          	lw	a5,60(s4)
    49dc:	00078463          	beqz	a5,49e4 <fl_fopen+0xc0>
    49e0:	000780e7          	jalr	a5
    49e4:	0014f793          	andi	a5,s1,1
    49e8:	18079263          	bnez	a5,4b6c <fl_fopen+0x248>
    49ec:	0204f793          	andi	a5,s1,32
    49f0:	08078c63          	beqz	a5,4a88 <fl_fopen+0x164>
    49f4:	038a2783          	lw	a5,56(s4)
    49f8:	06078a63          	beqz	a5,4a6c <fl_fopen+0x148>
    49fc:	ffffd097          	auipc	ra,0xffffd
    4a00:	258080e7          	jalr	600(ra) # 1c54 <_allocate_file>
    4a04:	00050413          	mv	s0,a0
    4a08:	06050263          	beqz	a0,4a6c <fl_fopen+0x148>
    4a0c:	01450a93          	addi	s5,a0,20
    4a10:	10400613          	li	a2,260
    4a14:	00000593          	li	a1,0
    4a18:	000a8513          	mv	a0,s5
    4a1c:	ffffd097          	auipc	ra,0xffffd
    4a20:	844080e7          	jalr	-1980(ra) # 1260 <memset>
    4a24:	11840b13          	addi	s6,s0,280
    4a28:	10400613          	li	a2,260
    4a2c:	00000593          	li	a1,0
    4a30:	000b0513          	mv	a0,s6
    4a34:	ffffd097          	auipc	ra,0xffffd
    4a38:	82c080e7          	jalr	-2004(ra) # 1260 <memset>
    4a3c:	10400713          	li	a4,260
    4a40:	000b0693          	mv	a3,s6
    4a44:	00070613          	mv	a2,a4
    4a48:	000a8593          	mv	a1,s5
    4a4c:	000d0513          	mv	a0,s10
    4a50:	ffffe097          	auipc	ra,0xffffe
    4a54:	c88080e7          	jalr	-888(ra) # 26d8 <fatfs_split_path>
    4a58:	fff00793          	li	a5,-1
    4a5c:	12f51663          	bne	a0,a5,4b88 <fl_fopen+0x264>
    4a60:	00040513          	mv	a0,s0
    4a64:	ffffd097          	auipc	ra,0xffffd
    4a68:	268080e7          	jalr	616(ra) # 1ccc <_free_file>
    4a6c:	00000413          	li	s0,0
    4a70:	0214f793          	andi	a5,s1,33
    4a74:	02000713          	li	a4,32
    4a78:	28e79263          	bne	a5,a4,4cfc <fl_fopen+0x3d8>
    4a7c:	10041263          	bnez	s0,4b80 <fl_fopen+0x25c>
    4a80:	0064f793          	andi	a5,s1,6
    4a84:	26079463          	bnez	a5,4cec <fl_fopen+0x3c8>
    4a88:	00000413          	li	s0,0
    4a8c:	040a2783          	lw	a5,64(s4)
    4a90:	00078463          	beqz	a5,4a98 <fl_fopen+0x174>
    4a94:	000780e7          	jalr	a5
    4a98:	05c12083          	lw	ra,92(sp)
    4a9c:	00040513          	mv	a0,s0
    4aa0:	05812403          	lw	s0,88(sp)
    4aa4:	05412483          	lw	s1,84(sp)
    4aa8:	05012903          	lw	s2,80(sp)
    4aac:	04c12983          	lw	s3,76(sp)
    4ab0:	04812a03          	lw	s4,72(sp)
    4ab4:	04412a83          	lw	s5,68(sp)
    4ab8:	04012b03          	lw	s6,64(sp)
    4abc:	03c12b83          	lw	s7,60(sp)
    4ac0:	03812c03          	lw	s8,56(sp)
    4ac4:	03412c83          	lw	s9,52(sp)
    4ac8:	03012d03          	lw	s10,48(sp)
    4acc:	06010113          	addi	sp,sp,96
    4ad0:	00008067          	ret
    4ad4:	008907b3          	add	a5,s2,s0
    4ad8:	0007c783          	lbu	a5,0(a5)
    4adc:	05378863          	beq	a5,s3,4b2c <fl_fopen+0x208>
    4ae0:	02f9e863          	bltu	s3,a5,4b10 <fl_fopen+0x1ec>
    4ae4:	05578863          	beq	a5,s5,4b34 <fl_fopen+0x210>
    4ae8:	00faea63          	bltu	s5,a5,4afc <fl_fopen+0x1d8>
    4aec:	02b00713          	li	a4,43
    4af0:	04e78663          	beq	a5,a4,4b3c <fl_fopen+0x218>
    4af4:	00140413          	addi	s0,s0,1
    4af8:	ebdff06f          	j	49b4 <fl_fopen+0x90>
    4afc:	03978263          	beq	a5,s9,4b20 <fl_fopen+0x1fc>
    4b00:	05200713          	li	a4,82
    4b04:	fee798e3          	bne	a5,a4,4af4 <fl_fopen+0x1d0>
    4b08:	0014e493          	ori	s1,s1,1
    4b0c:	fe9ff06f          	j	4af4 <fl_fopen+0x1d0>
    4b10:	ff478ce3          	beq	a5,s4,4b08 <fl_fopen+0x1e4>
    4b14:	00fa6a63          	bltu	s4,a5,4b28 <fl_fopen+0x204>
    4b18:	01778e63          	beq	a5,s7,4b34 <fl_fopen+0x210>
    4b1c:	fd879ce3          	bne	a5,s8,4af4 <fl_fopen+0x1d0>
    4b20:	0084e493          	ori	s1,s1,8
    4b24:	fd1ff06f          	j	4af4 <fl_fopen+0x1d0>
    4b28:	fd6796e3          	bne	a5,s6,4af4 <fl_fopen+0x1d0>
    4b2c:	0324e493          	ori	s1,s1,50
    4b30:	fc5ff06f          	j	4af4 <fl_fopen+0x1d0>
    4b34:	0264e493          	ori	s1,s1,38
    4b38:	fbdff06f          	j	4af4 <fl_fopen+0x1d0>
    4b3c:	0014f793          	andi	a5,s1,1
    4b40:	00078663          	beqz	a5,4b4c <fl_fopen+0x228>
    4b44:	0024e493          	ori	s1,s1,2
    4b48:	fadff06f          	j	4af4 <fl_fopen+0x1d0>
    4b4c:	0024f793          	andi	a5,s1,2
    4b50:	00078663          	beqz	a5,4b5c <fl_fopen+0x238>
    4b54:	0314e493          	ori	s1,s1,49
    4b58:	f9dff06f          	j	4af4 <fl_fopen+0x1d0>
    4b5c:	0044f793          	andi	a5,s1,4
    4b60:	f8078ae3          	beqz	a5,4af4 <fl_fopen+0x1d0>
    4b64:	0274e493          	ori	s1,s1,39
    4b68:	f8dff06f          	j	4af4 <fl_fopen+0x1d0>
    4b6c:	000d0513          	mv	a0,s10
    4b70:	fffff097          	auipc	ra,0xfffff
    4b74:	81c080e7          	jalr	-2020(ra) # 338c <_open_file>
    4b78:	00050413          	mv	s0,a0
    4b7c:	e60508e3          	beqz	a0,49ec <fl_fopen+0xc8>
    4b80:	42940c23          	sb	s1,1080(s0)
    4b84:	f09ff06f          	j	4a8c <fl_fopen+0x168>
    4b88:	00040513          	mv	a0,s0
    4b8c:	ffffe097          	auipc	ra,0xffffe
    4b90:	dc8080e7          	jalr	-568(ra) # 2954 <_check_file_open>
    4b94:	00050913          	mv	s2,a0
    4b98:	ec0514e3          	bnez	a0,4a60 <fl_fopen+0x13c>
    4b9c:	01444783          	lbu	a5,20(s0)
    4ba0:	0e079663          	bnez	a5,4c8c <fl_fopen+0x368>
    4ba4:	008a2783          	lw	a5,8(s4)
    4ba8:	00f42023          	sw	a5,0(s0)
    4bac:	00042583          	lw	a1,0(s0)
    4bb0:	01010693          	addi	a3,sp,16
    4bb4:	000b0613          	mv	a2,s6
    4bb8:	55898513          	addi	a0,s3,1368
    4bbc:	ffffe097          	auipc	ra,0xffffe
    4bc0:	428080e7          	jalr	1064(ra) # 2fe4 <fatfs_get_file_entry>
    4bc4:	00100693          	li	a3,1
    4bc8:	e8d50ce3          	beq	a0,a3,4a60 <fl_fopen+0x13c>
    4bcc:	00042223          	sw	zero,4(s0)
    4bd0:	00440613          	addi	a2,s0,4
    4bd4:	00068593          	mv	a1,a3
    4bd8:	55898513          	addi	a0,s3,1368
    4bdc:	00000097          	auipc	ra,0x0
    4be0:	908080e7          	jalr	-1784(ra) # 44e4 <fatfs_allocate_free_space>
    4be4:	e6050ee3          	beqz	a0,4a60 <fl_fopen+0x13c>
    4be8:	00002ab7          	lui	s5,0x2
    4bec:	21c40b93          	addi	s7,s0,540
    4bf0:	55898c13          	addi	s8,s3,1368
    4bf4:	70fa8a93          	addi	s5,s5,1807 # 270f <fatfs_split_path+0x37>
    4bf8:	000b0593          	mv	a1,s6
    4bfc:	00410513          	addi	a0,sp,4
    4c00:	ffffd097          	auipc	ra,0xffffd
    4c04:	68c080e7          	jalr	1676(ra) # 228c <fatfs_lfn_create_sfn>
    4c08:	08090e63          	beqz	s2,4ca4 <fl_fopen+0x380>
    4c0c:	00090613          	mv	a2,s2
    4c10:	00410593          	addi	a1,sp,4
    4c14:	000b8513          	mv	a0,s7
    4c18:	ffffd097          	auipc	ra,0xffffd
    4c1c:	7f0080e7          	jalr	2032(ra) # 2408 <fatfs_lfn_generate_tail>
    4c20:	00042583          	lw	a1,0(s0)
    4c24:	000b8613          	mv	a2,s7
    4c28:	000c0513          	mv	a0,s8
    4c2c:	fffff097          	auipc	ra,0xfffff
    4c30:	8d4080e7          	jalr	-1836(ra) # 3500 <fatfs_sfn_exists>
    4c34:	00050663          	beqz	a0,4c40 <fl_fopen+0x31c>
    4c38:	00190913          	addi	s2,s2,1
    4c3c:	fb591ee3          	bne	s2,s5,4bf8 <fl_fopen+0x2d4>
    4c40:	00442703          	lw	a4,4(s0)
    4c44:	000027b7          	lui	a5,0x2
    4c48:	70f78793          	addi	a5,a5,1807 # 270f <fatfs_split_path+0x37>
    4c4c:	00070593          	mv	a1,a4
    4c50:	02f90663          	beq	s2,a5,4c7c <fl_fopen+0x358>
    4c54:	00042583          	lw	a1,0(s0)
    4c58:	00000813          	li	a6,0
    4c5c:	00000793          	li	a5,0
    4c60:	000b8693          	mv	a3,s7
    4c64:	000b0613          	mv	a2,s6
    4c68:	55898513          	addi	a0,s3,1368
    4c6c:	00000097          	auipc	ra,0x0
    4c70:	990080e7          	jalr	-1648(ra) # 45fc <fatfs_add_file_entry>
    4c74:	04051463          	bnez	a0,4cbc <fl_fopen+0x398>
    4c78:	00442583          	lw	a1,4(s0)
    4c7c:	55898513          	addi	a0,s3,1368
    4c80:	fffff097          	auipc	ra,0xfffff
    4c84:	1b4080e7          	jalr	436(ra) # 3e34 <fatfs_free_cluster_chain>
    4c88:	dd9ff06f          	j	4a60 <fl_fopen+0x13c>
    4c8c:	00040593          	mv	a1,s0
    4c90:	000a8513          	mv	a0,s5
    4c94:	ffffe097          	auipc	ra,0xffffe
    4c98:	54c080e7          	jalr	1356(ra) # 31e0 <_open_directory>
    4c9c:	f00518e3          	bnez	a0,4bac <fl_fopen+0x288>
    4ca0:	dc1ff06f          	j	4a60 <fl_fopen+0x13c>
    4ca4:	00b00613          	li	a2,11
    4ca8:	00410593          	addi	a1,sp,4
    4cac:	000b8513          	mv	a0,s7
    4cb0:	ffffc097          	auipc	ra,0xffffc
    4cb4:	5cc080e7          	jalr	1484(ra) # 127c <memcpy>
    4cb8:	f69ff06f          	j	4c20 <fl_fopen+0x2fc>
    4cbc:	fff00793          	li	a5,-1
    4cc0:	00042623          	sw	zero,12(s0)
    4cc4:	00042423          	sw	zero,8(s0)
    4cc8:	42f42823          	sw	a5,1072(s0)
    4ccc:	42042a23          	sw	zero,1076(s0)
    4cd0:	00042823          	sw	zero,16(s0)
    4cd4:	22f42423          	sw	a5,552(s0)
    4cd8:	22f42623          	sw	a5,556(s0)
    4cdc:	55898513          	addi	a0,s3,1368
    4ce0:	ffffe097          	auipc	ra,0xffffe
    4ce4:	054080e7          	jalr	84(ra) # 2d34 <fatfs_fat_purge>
    4ce8:	d89ff06f          	j	4a70 <fl_fopen+0x14c>
    4cec:	000d0513          	mv	a0,s10
    4cf0:	ffffe097          	auipc	ra,0xffffe
    4cf4:	69c080e7          	jalr	1692(ra) # 338c <_open_file>
    4cf8:	00050413          	mv	s0,a0
    4cfc:	e80412e3          	bnez	s0,4b80 <fl_fopen+0x25c>
    4d00:	d89ff06f          	j	4a88 <fl_fopen+0x164>
    4d04:	00000413          	li	s0,0
    4d08:	d91ff06f          	j	4a98 <fl_fopen+0x174>

00004d0c <album_count>:
    4d0c:	00000005                                ....

00004d10 <cmd16>:
    4d10:	02000050 00001500                       P.......

00004d18 <acmd41>:
    4d18:	00004069 00000100                       i@......

00004d20 <cmd55>:
    4d20:	00000077 00000100                       w.......

00004d28 <cmd8>:
    4d28:	01000048 000087aa                       H.......

00004d30 <cmd0>:
    4d30:	00000040 00009500                       @.......

00004d38 <AUDIO>:
    4d38:	00018000                                ....

00004d3c <BUTTONS>:
    4d3c:	00010100                                ....

00004d40 <SDCARD>:
    4d40:	00010080                                ....

00004d44 <OLED_RST>:
    4d44:	00010010                                ....

00004d48 <OLED>:
    4d48:	00010008                                ....

00004d4c <LEDS>:
    4d4c:	00010004 00006272 756f532f 2f73646e     ....rb../Sounds/
    4d5c:	63696c63 61722e6b 00000077 756f532f     click.raw.../Sou
    4d6c:	2f73646e 72617473 2e707574 00776172     nds/startup.raw.
    4d7c:	68636946 20726569 72746e69 6176756f     Fichier introuva
    4d8c:	3a656c62 0a73250a 00000000 7463654c     ble:.%s.....Lect
    4d9c:	3a657275 0a73250a 00000000 203d3d3d     ure:.%s.....=== 
    4dac:	75626c41 3d20736d 0a0a3d3d 00000000     Albums ===......
    4dbc:	000a7325 75637541 6966206e 65696863     %s..Aucun fichie
    4dcc:	61642072 0a3a736e 000a7325 203d3d3d     r dans:.%s..=== 
    4ddc:	74736950 3d207365 0a0a3d3d 00000000     Pistes ===......
    4dec:	74696e49 2e445320 000a2e2e 4f204453     Init SD.....SD O
    4dfc:	000a2e4b 0000002f 766f632f 722e7265     K.../.../cover.r
    4e0c:	00007761 2e676d69 20776172 20746f6e     aw..img.raw not 
    4e1c:	6e756f66 000a2e64 67616d69 6f662065     found...image fo
    4e2c:	2e646e75 0000000a 206e6946 7463656c     und.....Fin lect
    4e3c:	2e657275 0000000a 33323130 37363534     ure.....01234567
    4e4c:	42413938 46454443 00000000 5f544146     89ABCDEF....FAT_
    4e5c:	203a5346 6f727245 6f632072 20646c75     FS: Error could 
    4e6c:	20746f6e 64616f6c 54414620 74656420     not load FAT det
    4e7c:	736c6961 64252820 0a0d2129 00000000     ails (%d)!......

00004e8c <font>:
    4e8c:	00000000 00002f00 00030000 14000003     ...../..........
    4e9c:	143e143e 3a2b6a2e 08122600 171c3224     >.>..j+:.&..$2..
    4eac:	03003415 00000000 0000211e 001e2100     .4.......!...!..
    4ebc:	08220000 0822081c 0000081c 00002040     .."...".....@ ..
    4ecc:	00080800 00200000 20000000 02040810     ...... .... ....
    4edc:	3f21213f 003f0100 253d0000 25002725     ?!!?..?...=%%'.%
    4eec:	003f2525 3f040407 25252700 253f003d     %%?....?.'%%=.?%
    4efc:	01003d25 00030539 3f25253f 25252700     %=..9...?%%?.'%%
    4f0c:	0028003f 40000000 00000028 00110a04     ?.(....@(.......
    4f1c:	00141400 0a110000 01000004 0007052d     ............-...
    4f2c:	253d213f 09093f1f 253f003f 3f003c27     ?!=%.?..?.?%'<.?
    4f3c:	00212121 1e21213f 25253f00 053f0025     !!!.?!!..?%%%.?.
    4f4c:	3f000505 003d2521 3f04043f 213f2100     ...?!%=.?..?.!?!
    4f5c:	20380000 3f013f21 003b0404 2020203f     ..8 !?.?..;.?   
    4f6c:	3f013f00 023f3f01 3f003f04 003f2121     .?.?.??..?.?!!?.
    4f7c:	0f09093f 31213f00 093f003f 27002f39     ?....?!1?.?.9/.'
    4f8c:	003d2525 013f0101 20203f01 100f003f     %%=...?..?  ?...
    4f9c:	3f001f30 3f203f20 3b04043b 38080f00     0..? ? ?;..;...8
    4fac:	2931000f 3f002325 00000021 04081020     ..1)%#.?!... ...
    4fbc:	003f2102 01020000 20000201 00000020     .!?........  ...
    4fcc:	00000201 24243800 243f003c 3c003c24     .....8$$<.?$$<.<
    4fdc:	00242424 3f24243c 2c2c3c00 3f04002c     $$$.<$$?.<,,,..?
    4fec:	bc000005 00fca4a4 3c04043f 00003d00     ........?..<.=..
    4ffc:	fd800000 3f000000 00340808 0000003f     .......?..4.?...
    500c:	3c043c00 043c3c04 3c003c04 003c2424     .<.<.<<..<.<$$<.
    501c:	3c2424fc 24243c00 083c00fc 2c000004     .$$<.<$$..<....,
    502c:	003c2c2c 00243f04 20203c00 100c003c     ,,<..?$..<  <...
    503c:	3c001c30 3c203c20 34080834 a0a0bc00     0..< < <4..4....
    504c:	342400fc 0400242c 0000213f 0000003f     ..$4,$..?!..?...
    505c:	043f2100 02010000 00000102 00000000     .!?.............
    506c:	00000001 00000003 00000005 00000007     ................
    507c:	00000009 0000000e 00000010 00000012     ................
    508c:	00000014 00000016 00000018 0000001c     ................
    509c:	0000001e                                ....

000050a0 <albums>:
    50a0:	626c412f 00316d75 00000000 00000000     /Album1.........
	...
    50e0:	626c412f 00326d75 00000000 00000000     /Album2.........
	...
    5120:	626c412f 00336d75 00000000 00000000     /Album3.........
	...
    5160:	626c412f 00346d75 00000000 00000000     /Album4.........
	...
    51a0:	626c412f 00356d75 00000000 00000000     /Album5.........
	...

000052a0 <current_album>:
    52a0:	00000000                                ....

000052a4 <file_count>:
    52a4:	00000000                                ....

000052a8 <prev_btn>:
    52a8:	00000000                                ....

000052ac <sdcard_while_loading_callback>:
    52ac:	00000000                                ....

000052b0 <back_color>:
	...

000052b1 <front_color>:
    52b1:	                                         ...

000052b4 <cursor_y>:
    52b4:	00000000                                ....

000052b8 <cursor_x>:
    52b8:	00000000                                ....

000052bc <f_putchar>:
    52bc:	00000000                                ....

000052c0 <_free_file_list>:
	...

000052c8 <_open_file_list>:
	...

000052d0 <_filelib_valid>:
    52d0:	00000000                                ....

000052d4 <_filelib_init>:
    52d4:	00000000                                ....
