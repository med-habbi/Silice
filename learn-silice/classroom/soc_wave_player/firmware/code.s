
code.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <_start>:
       0:	00010137          	lui	sp,0x10
       4:	00001097          	auipc	ra,0x1
       8:	d0c080e7          	jalr	-756(ra) # d10 <main>
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
      34:	ed010113          	addi	sp,sp,-304 # fed0 <_files+0x408c>
      38:	00651513          	slli	a0,a0,0x6
      3c:	52078793          	addi	a5,a5,1312 # 5520 <albums>
      40:	12812423          	sw	s0,296(sp)
      44:	00410593          	addi	a1,sp,4
      48:	00005437          	lui	s0,0x5
      4c:	00a78533          	add	a0,a5,a0
      50:	12112623          	sw	ra,300(sp)
      54:	12912223          	sw	s1,292(sp)
      58:	72042423          	sw	zero,1832(s0) # 5728 <file_count>
      5c:	00003097          	auipc	ra,0x3
      60:	658080e7          	jalr	1624(ra) # 36b4 <fl_opendir>
      64:	02050a63          	beqz	a0,98 <scan_files_in_album+0x68>
      68:	01010593          	addi	a1,sp,16
      6c:	01f00493          	li	s1,31
      70:	00410513          	addi	a0,sp,4
      74:	00004097          	auipc	ra,0x4
      78:	d0c080e7          	jalr	-756(ra) # 3d80 <fl_readdir>
      7c:	00051863          	bnez	a0,8c <scan_files_in_album+0x5c>
      80:	72842703          	lw	a4,1832(s0)
      84:	01010593          	addi	a1,sp,16
      88:	02e4d263          	bge	s1,a4,ac <scan_files_in_album+0x7c>
      8c:	00410513          	addi	a0,sp,4
      90:	00002097          	auipc	ra,0x2
      94:	20c080e7          	jalr	524(ra) # 229c <fl_closedir>
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
      c4:	75c78793          	addi	a5,a5,1884 # 575c <files>
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
      f4:	72e42423          	sw	a4,1832(s0)
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
     11c:	1287a403          	lw	s0,296(a5) # 5128 <AUDIO>
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
     158:	4fc080e7          	jalr	1276(ra) # 1650 <memset>
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
     198:	14058593          	addi	a1,a1,320 # 5140 <LEDS+0x4>
     19c:	14450513          	addi	a0,a0,324 # 5144 <LEDS+0x8>
     1a0:	00112e23          	sw	ra,28(sp)
     1a4:	00812c23          	sw	s0,24(sp)
     1a8:	00912a23          	sw	s1,20(sp)
     1ac:	01212823          	sw	s2,16(sp)
     1b0:	00005097          	auipc	ra,0x5
     1b4:	b64080e7          	jalr	-1180(ra) # 4d14 <fl_fopen>
     1b8:	06050263          	beqz	a0,21c <click_sound+0x90>
     1bc:	000057b7          	lui	a5,0x5
     1c0:	1287a903          	lw	s2,296(a5) # 5128 <AUDIO>
     1c4:	00050693          	mv	a3,a0
     1c8:	1ff00493          	li	s1,511
     1cc:	00092403          	lw	s0,0(s2)
     1d0:	20000613          	li	a2,512
     1d4:	00100593          	li	a1,1
     1d8:	00040513          	mv	a0,s0
     1dc:	00d12623          	sw	a3,12(sp)
     1e0:	00004097          	auipc	ra,0x4
     1e4:	530080e7          	jalr	1328(ra) # 4710 <fl_fread>
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
     218:	42030067          	jr	1056(t1) # 4634 <fl_fclose>
     21c:	01c12083          	lw	ra,28(sp)
     220:	01812403          	lw	s0,24(sp)
     224:	01412483          	lw	s1,20(sp)
     228:	01012903          	lw	s2,16(sp)
     22c:	02010113          	addi	sp,sp,32
     230:	00008067          	ret

00000234 <yaaay_sound>:
     234:	000055b7          	lui	a1,0x5
     238:	00005537          	lui	a0,0x5
     23c:	fe010113          	addi	sp,sp,-32
     240:	14058593          	addi	a1,a1,320 # 5140 <LEDS+0x4>
     244:	15850513          	addi	a0,a0,344 # 5158 <LEDS+0x1c>
     248:	00112e23          	sw	ra,28(sp)
     24c:	00812c23          	sw	s0,24(sp)
     250:	00912a23          	sw	s1,20(sp)
     254:	01212823          	sw	s2,16(sp)
     258:	00005097          	auipc	ra,0x5
     25c:	abc080e7          	jalr	-1348(ra) # 4d14 <fl_fopen>
     260:	06050263          	beqz	a0,2c4 <yaaay_sound+0x90>
     264:	000057b7          	lui	a5,0x5
     268:	1287a903          	lw	s2,296(a5) # 5128 <AUDIO>
     26c:	00050693          	mv	a3,a0
     270:	1ff00493          	li	s1,511
     274:	00092403          	lw	s0,0(s2)
     278:	20000613          	li	a2,512
     27c:	00100593          	li	a1,1
     280:	00040513          	mv	a0,s0
     284:	00d12623          	sw	a3,12(sp)
     288:	00004097          	auipc	ra,0x4
     28c:	488080e7          	jalr	1160(ra) # 4710 <fl_fread>
     290:	00c12683          	lw	a3,12(sp)
     294:	00a05863          	blez	a0,2a4 <yaaay_sound+0x70>
     298:	00092783          	lw	a5,0(s2)
     29c:	fef40ee3          	beq	s0,a5,298 <yaaay_sound+0x64>
     2a0:	fca4cae3          	blt	s1,a0,274 <yaaay_sound+0x40>
     2a4:	01812403          	lw	s0,24(sp)
     2a8:	01c12083          	lw	ra,28(sp)
     2ac:	01412483          	lw	s1,20(sp)
     2b0:	01012903          	lw	s2,16(sp)
     2b4:	00068513          	mv	a0,a3
     2b8:	02010113          	addi	sp,sp,32
     2bc:	00004317          	auipc	t1,0x4
     2c0:	37830067          	jr	888(t1) # 4634 <fl_fclose>
     2c4:	01c12083          	lw	ra,28(sp)
     2c8:	01812403          	lw	s0,24(sp)
     2cc:	01412483          	lw	s1,20(sp)
     2d0:	01012903          	lw	s2,16(sp)
     2d4:	02010113          	addi	sp,sp,32
     2d8:	00008067          	ret

000002dc <startup_sound>:
     2dc:	000055b7          	lui	a1,0x5
     2e0:	00005537          	lui	a0,0x5
     2e4:	fe010113          	addi	sp,sp,-32
     2e8:	14058593          	addi	a1,a1,320 # 5140 <LEDS+0x4>
     2ec:	16c50513          	addi	a0,a0,364 # 516c <LEDS+0x30>
     2f0:	00112e23          	sw	ra,28(sp)
     2f4:	00812c23          	sw	s0,24(sp)
     2f8:	00912a23          	sw	s1,20(sp)
     2fc:	01212823          	sw	s2,16(sp)
     300:	00005097          	auipc	ra,0x5
     304:	a14080e7          	jalr	-1516(ra) # 4d14 <fl_fopen>
     308:	06050263          	beqz	a0,36c <startup_sound+0x90>
     30c:	000057b7          	lui	a5,0x5
     310:	1287a903          	lw	s2,296(a5) # 5128 <AUDIO>
     314:	00050693          	mv	a3,a0
     318:	1ff00493          	li	s1,511
     31c:	00092403          	lw	s0,0(s2)
     320:	20000613          	li	a2,512
     324:	00100593          	li	a1,1
     328:	00040513          	mv	a0,s0
     32c:	00d12623          	sw	a3,12(sp)
     330:	00004097          	auipc	ra,0x4
     334:	3e0080e7          	jalr	992(ra) # 4710 <fl_fread>
     338:	00c12683          	lw	a3,12(sp)
     33c:	00a05863          	blez	a0,34c <startup_sound+0x70>
     340:	00092783          	lw	a5,0(s2)
     344:	fef40ee3          	beq	s0,a5,340 <startup_sound+0x64>
     348:	fca4cae3          	blt	s1,a0,31c <startup_sound+0x40>
     34c:	01812403          	lw	s0,24(sp)
     350:	01c12083          	lw	ra,28(sp)
     354:	01412483          	lw	s1,20(sp)
     358:	01012903          	lw	s2,16(sp)
     35c:	00068513          	mv	a0,a3
     360:	02010113          	addi	sp,sp,32
     364:	00004317          	auipc	t1,0x4
     368:	2d030067          	jr	720(t1) # 4634 <fl_fclose>
     36c:	01c12083          	lw	ra,28(sp)
     370:	01812403          	lw	s0,24(sp)
     374:	01412483          	lw	s1,20(sp)
     378:	01012903          	lw	s2,16(sp)
     37c:	02010113          	addi	sp,sp,32
     380:	00008067          	ret

00000384 <play_music>:
     384:	000055b7          	lui	a1,0x5
     388:	fb010113          	addi	sp,sp,-80
     38c:	14058593          	addi	a1,a1,320 # 5140 <LEDS+0x4>
     390:	04812423          	sw	s0,72(sp)
     394:	04112623          	sw	ra,76(sp)
     398:	04912223          	sw	s1,68(sp)
     39c:	05212023          	sw	s2,64(sp)
     3a0:	03312e23          	sw	s3,60(sp)
     3a4:	03412c23          	sw	s4,56(sp)
     3a8:	03512a23          	sw	s5,52(sp)
     3ac:	03612823          	sw	s6,48(sp)
     3b0:	03712623          	sw	s7,44(sp)
     3b4:	03812423          	sw	s8,40(sp)
     3b8:	03912223          	sw	s9,36(sp)
     3bc:	03a12023          	sw	s10,32(sp)
     3c0:	01b12e23          	sw	s11,28(sp)
     3c4:	00050413          	mv	s0,a0
     3c8:	00005097          	auipc	ra,0x5
     3cc:	94c080e7          	jalr	-1716(ra) # 4d14 <fl_fopen>
     3d0:	06051a63          	bnez	a0,444 <play_music+0xc0>
     3d4:	00000593          	li	a1,0
     3d8:	00001097          	auipc	ra,0x1
     3dc:	554080e7          	jalr	1364(ra) # 192c <display_set_cursor>
     3e0:	00000593          	li	a1,0
     3e4:	0ff00513          	li	a0,255
     3e8:	00001097          	auipc	ra,0x1
     3ec:	558080e7          	jalr	1368(ra) # 1940 <display_set_front_back_color>
     3f0:	00005537          	lui	a0,0x5
     3f4:	00040593          	mv	a1,s0
     3f8:	18050513          	addi	a0,a0,384 # 5180 <LEDS+0x44>
     3fc:	00002097          	auipc	ra,0x2
     400:	868080e7          	jalr	-1944(ra) # 1c64 <printf>
     404:	04812403          	lw	s0,72(sp)
     408:	04c12083          	lw	ra,76(sp)
     40c:	04412483          	lw	s1,68(sp)
     410:	04012903          	lw	s2,64(sp)
     414:	03c12983          	lw	s3,60(sp)
     418:	03812a03          	lw	s4,56(sp)
     41c:	03412a83          	lw	s5,52(sp)
     420:	03012b03          	lw	s6,48(sp)
     424:	02c12b83          	lw	s7,44(sp)
     428:	02812c03          	lw	s8,40(sp)
     42c:	02412c83          	lw	s9,36(sp)
     430:	02012d03          	lw	s10,32(sp)
     434:	01c12d83          	lw	s11,28(sp)
     438:	05010113          	addi	sp,sp,80
     43c:	00001317          	auipc	t1,0x1
     440:	63030067          	jr	1584(t1) # 1a6c <display_refresh>
     444:	00000593          	li	a1,0
     448:	00050d13          	mv	s10,a0
     44c:	00000513          	li	a0,0
     450:	00001097          	auipc	ra,0x1
     454:	4dc080e7          	jalr	1244(ra) # 192c <display_set_cursor>
     458:	0ff00593          	li	a1,255
     45c:	00000513          	li	a0,0
     460:	00001097          	auipc	ra,0x1
     464:	4e0080e7          	jalr	1248(ra) # 1940 <display_set_front_back_color>
     468:	00005937          	lui	s2,0x5
     46c:	72092703          	lw	a4,1824(s2) # 5720 <current_track>
     470:	000055b7          	lui	a1,0x5
     474:	75c58593          	addi	a1,a1,1884 # 575c <files>
     478:	00671793          	slli	a5,a4,0x6
     47c:	00e787b3          	add	a5,a5,a4
     480:	00279793          	slli	a5,a5,0x2
     484:	00005537          	lui	a0,0x5
     488:	00f585b3          	add	a1,a1,a5
     48c:	19c50513          	addi	a0,a0,412 # 519c <LEDS+0x60>
     490:	00001097          	auipc	ra,0x1
     494:	7d4080e7          	jalr	2004(ra) # 1c64 <printf>
     498:	00001097          	auipc	ra,0x1
     49c:	5d4080e7          	jalr	1492(ra) # 1a6c <display_refresh>
     4a0:	000057b7          	lui	a5,0x5
     4a4:	12c7a983          	lw	s3,300(a5) # 512c <BUTTONS>
     4a8:	00005437          	lui	s0,0x5
     4ac:	00000a13          	li	s4,0
     4b0:	0009a783          	lw	a5,0(s3)
     4b4:	00100b93          	li	s7,1
     4b8:	72f42623          	sw	a5,1836(s0) # 572c <prev_btn>
     4bc:	000057b7          	lui	a5,0x5
     4c0:	1287ad83          	lw	s11,296(a5) # 5128 <AUDIO>
     4c4:	000057b7          	lui	a5,0x5
     4c8:	13c7a783          	lw	a5,316(a5) # 513c <LEDS>
     4cc:	00f12423          	sw	a5,8(sp)
     4d0:	000057b7          	lui	a5,0x5
     4d4:	1ac78793          	addi	a5,a5,428 # 51ac <LEDS+0x70>
     4d8:	00f12623          	sw	a5,12(sp)
     4dc:	000dab03          	lw	s6,0(s11)
     4e0:	000d0693          	mv	a3,s10
     4e4:	20000613          	li	a2,512
     4e8:	00100593          	li	a1,1
     4ec:	000b0513          	mv	a0,s6
     4f0:	00004097          	auipc	ra,0x4
     4f4:	220080e7          	jalr	544(ra) # 4710 <fl_fread>
     4f8:	00050a93          	mv	s5,a0
     4fc:	06a05463          	blez	a0,564 <play_music+0x1e0>
     500:	000057b7          	lui	a5,0x5
     504:	1b878793          	addi	a5,a5,440 # 51b8 <LEDS+0x7c>
     508:	00f12223          	sw	a5,4(sp)
     50c:	000da783          	lw	a5,0(s11)
     510:	00fb0863          	beq	s6,a5,520 <play_music+0x19c>
     514:	1ff00793          	li	a5,511
     518:	fd57c2e3          	blt	a5,s5,4dc <play_music+0x158>
     51c:	0480006f          	j	564 <play_music+0x1e0>
     520:	f80b8493          	addi	s1,s7,-128
     524:	fffb8793          	addi	a5,s7,-1
     528:	0014b493          	seqz	s1,s1
     52c:	0017b793          	seqz	a5,a5
     530:	0009ac03          	lw	s8,0(s3)
     534:	00f4e4b3          	or	s1,s1,a5
     538:	089a0063          	beq	s4,s1,5b8 <play_music+0x234>
     53c:	001b9b93          	slli	s7,s7,0x1
     540:	00812783          	lw	a5,8(sp)
     544:	0177a023          	sw	s7,0(a5)
     548:	002c7793          	andi	a5,s8,2
     54c:	06078a63          	beqz	a5,5c0 <play_music+0x23c>
     550:	72c42783          	lw	a5,1836(s0)
     554:	0027f793          	andi	a5,a5,2
     558:	06079463          	bnez	a5,5c0 <play_music+0x23c>
     55c:	00000097          	auipc	ra,0x0
     560:	bb4080e7          	jalr	-1100(ra) # 110 <clear_audio>
     564:	000d0513          	mv	a0,s10
     568:	00004097          	auipc	ra,0x4
     56c:	0cc080e7          	jalr	204(ra) # 4634 <fl_fclose>
     570:	000057b7          	lui	a5,0x5
     574:	13c7a783          	lw	a5,316(a5) # 513c <LEDS>
     578:	04c12083          	lw	ra,76(sp)
     57c:	04812403          	lw	s0,72(sp)
     580:	0007a023          	sw	zero,0(a5)
     584:	04412483          	lw	s1,68(sp)
     588:	04012903          	lw	s2,64(sp)
     58c:	03c12983          	lw	s3,60(sp)
     590:	03812a03          	lw	s4,56(sp)
     594:	03412a83          	lw	s5,52(sp)
     598:	03012b03          	lw	s6,48(sp)
     59c:	02c12b83          	lw	s7,44(sp)
     5a0:	02812c03          	lw	s8,40(sp)
     5a4:	02412c83          	lw	s9,36(sp)
     5a8:	02012d03          	lw	s10,32(sp)
     5ac:	01c12d83          	lw	s11,28(sp)
     5b0:	05010113          	addi	sp,sp,80
     5b4:	00008067          	ret
     5b8:	401bdb93          	srai	s7,s7,0x1
     5bc:	f85ff06f          	j	540 <play_music+0x1bc>
     5c0:	004c7793          	andi	a5,s8,4
     5c4:	08078a63          	beqz	a5,658 <play_music+0x2d4>
     5c8:	72c42783          	lw	a5,1836(s0)
     5cc:	0047f793          	andi	a5,a5,4
     5d0:	08079463          	bnez	a5,658 <play_music+0x2d4>
     5d4:	00000097          	auipc	ra,0x0
     5d8:	bb8080e7          	jalr	-1096(ra) # 18c <click_sound>
     5dc:	00001097          	auipc	ra,0x1
     5e0:	344080e7          	jalr	836(ra) # 1920 <display_framebuffer>
     5e4:	06400613          	li	a2,100
     5e8:	00000593          	li	a1,0
     5ec:	00001097          	auipc	ra,0x1
     5f0:	064080e7          	jalr	100(ra) # 1650 <memset>
     5f4:	00000593          	li	a1,0
     5f8:	00000513          	li	a0,0
     5fc:	00001097          	auipc	ra,0x1
     600:	330080e7          	jalr	816(ra) # 192c <display_set_cursor>
     604:	0ff00593          	li	a1,255
     608:	00000513          	li	a0,0
     60c:	00001097          	auipc	ra,0x1
     610:	334080e7          	jalr	820(ra) # 1940 <display_set_front_back_color>
     614:	00c12503          	lw	a0,12(sp)
     618:	00001097          	auipc	ra,0x1
     61c:	64c080e7          	jalr	1612(ra) # 1c64 <printf>
     620:	00412503          	lw	a0,4(sp)
     624:	00001097          	auipc	ra,0x1
     628:	640080e7          	jalr	1600(ra) # 1c64 <printf>
     62c:	00001097          	auipc	ra,0x1
     630:	440080e7          	jalr	1088(ra) # 1a6c <display_refresh>
     634:	0009ac83          	lw	s9,0(s3)
     638:	004cf793          	andi	a5,s9,4
     63c:	08078863          	beqz	a5,6cc <play_music+0x348>
     640:	72c42783          	lw	a5,1836(s0)
     644:	0047f793          	andi	a5,a5,4
     648:	08079263          	bnez	a5,6cc <play_music+0x348>
     64c:	00000097          	auipc	ra,0x0
     650:	b40080e7          	jalr	-1216(ra) # 18c <click_sound>
     654:	73942623          	sw	s9,1836(s0)
     658:	020c7793          	andi	a5,s8,32
     65c:	06078c63          	beqz	a5,6d4 <play_music+0x350>
     660:	72c42783          	lw	a5,1836(s0)
     664:	0207f793          	andi	a5,a5,32
     668:	06079663          	bnez	a5,6d4 <play_music+0x350>
     66c:	72092503          	lw	a0,1824(s2)
     670:	000057b7          	lui	a5,0x5
     674:	7287a583          	lw	a1,1832(a5) # 5728 <file_count>
     678:	00150513          	addi	a0,a0,1
     67c:	00001097          	auipc	ra,0x1
     680:	fa4080e7          	jalr	-92(ra) # 1620 <__modsi3>
     684:	04812403          	lw	s0,72(sp)
     688:	72a92023          	sw	a0,1824(s2)
     68c:	04c12083          	lw	ra,76(sp)
     690:	04412483          	lw	s1,68(sp)
     694:	04012903          	lw	s2,64(sp)
     698:	03c12983          	lw	s3,60(sp)
     69c:	03812a03          	lw	s4,56(sp)
     6a0:	03412a83          	lw	s5,52(sp)
     6a4:	03012b03          	lw	s6,48(sp)
     6a8:	02c12b83          	lw	s7,44(sp)
     6ac:	02812c03          	lw	s8,40(sp)
     6b0:	02412c83          	lw	s9,36(sp)
     6b4:	01c12d83          	lw	s11,28(sp)
     6b8:	000d0513          	mv	a0,s10
     6bc:	02012d03          	lw	s10,32(sp)
     6c0:	05010113          	addi	sp,sp,80
     6c4:	00004317          	auipc	t1,0x4
     6c8:	f7030067          	jr	-144(t1) # 4634 <fl_fclose>
     6cc:	73942623          	sw	s9,1836(s0)
     6d0:	f0dff06f          	j	5dc <play_music+0x258>
     6d4:	040c7793          	andi	a5,s8,64
     6d8:	02078463          	beqz	a5,700 <play_music+0x37c>
     6dc:	72c42783          	lw	a5,1836(s0)
     6e0:	0407f793          	andi	a5,a5,64
     6e4:	00079e63          	bnez	a5,700 <play_music+0x37c>
     6e8:	72092503          	lw	a0,1824(s2)
     6ec:	000057b7          	lui	a5,0x5
     6f0:	7287a583          	lw	a1,1832(a5) # 5728 <file_count>
     6f4:	fff50513          	addi	a0,a0,-1
     6f8:	00b50533          	add	a0,a0,a1
     6fc:	f81ff06f          	j	67c <play_music+0x2f8>
     700:	009a4a33          	xor	s4,s4,s1
     704:	73842623          	sw	s8,1836(s0)
     708:	e05ff06f          	j	50c <play_music+0x188>

0000070c <select_album>:
     70c:	000057b7          	lui	a5,0x5
     710:	12c7a783          	lw	a5,300(a5) # 512c <BUTTONS>
     714:	fd010113          	addi	sp,sp,-48
     718:	01612823          	sw	s6,16(sp)
     71c:	00078b13          	mv	s6,a5
     720:	0007a783          	lw	a5,0(a5)
     724:	03212023          	sw	s2,32(sp)
     728:	00005937          	lui	s2,0x5
     72c:	72f92623          	sw	a5,1836(s2) # 572c <prev_btn>
     730:	000057b7          	lui	a5,0x5
     734:	01812423          	sw	s8,8(sp)
     738:	1d478c13          	addi	s8,a5,468 # 51d4 <LEDS+0x98>
     73c:	000057b7          	lui	a5,0x5
     740:	02812423          	sw	s0,40(sp)
     744:	01412c23          	sw	s4,24(sp)
     748:	01712623          	sw	s7,12(sp)
     74c:	02112623          	sw	ra,44(sp)
     750:	02912223          	sw	s1,36(sp)
     754:	01312e23          	sw	s3,28(sp)
     758:	01512a23          	sw	s5,20(sp)
     75c:	00000413          	li	s0,0
     760:	00005a37          	lui	s4,0x5
     764:	1e878b93          	addi	s7,a5,488 # 51e8 <LEDS+0xac>
     768:	00001097          	auipc	ra,0x1
     76c:	1b8080e7          	jalr	440(ra) # 1920 <display_framebuffer>
     770:	00004637          	lui	a2,0x4
     774:	00000593          	li	a1,0
     778:	00001097          	auipc	ra,0x1
     77c:	ed8080e7          	jalr	-296(ra) # 1650 <memset>
     780:	00000593          	li	a1,0
     784:	00000513          	li	a0,0
     788:	00001097          	auipc	ra,0x1
     78c:	1a4080e7          	jalr	420(ra) # 192c <display_set_cursor>
     790:	0ff00593          	li	a1,255
     794:	00000513          	li	a0,0
     798:	00001097          	auipc	ra,0x1
     79c:	1a8080e7          	jalr	424(ra) # 1940 <display_set_front_back_color>
     7a0:	000c0513          	mv	a0,s8
     7a4:	000059b7          	lui	s3,0x5
     7a8:	00001097          	auipc	ra,0x1
     7ac:	4bc080e7          	jalr	1212(ra) # 1c64 <printf>
     7b0:	52098993          	addi	s3,s3,1312 # 5520 <albums>
     7b4:	00000493          	li	s1,0
     7b8:	00700a93          	li	s5,7
     7bc:	0fca2783          	lw	a5,252(s4) # 50fc <album_count>
     7c0:	0ef4c263          	blt	s1,a5,8a4 <select_album+0x198>
     7c4:	00001097          	auipc	ra,0x1
     7c8:	2a8080e7          	jalr	680(ra) # 1a6c <display_refresh>
     7cc:	000b2983          	lw	s3,0(s6)
     7d0:	0109f793          	andi	a5,s3,16
     7d4:	02078663          	beqz	a5,800 <select_album+0xf4>
     7d8:	72c92483          	lw	s1,1836(s2)
     7dc:	0104f493          	andi	s1,s1,16
     7e0:	02049063          	bnez	s1,800 <select_album+0xf4>
     7e4:	0fca2783          	lw	a5,252(s4)
     7e8:	00140413          	addi	s0,s0,1
     7ec:	00f45463          	bge	s0,a5,7f4 <select_album+0xe8>
     7f0:	00040493          	mv	s1,s0
     7f4:	00000097          	auipc	ra,0x0
     7f8:	998080e7          	jalr	-1640(ra) # 18c <click_sound>
     7fc:	00048413          	mv	s0,s1
     800:	0089f793          	andi	a5,s3,8
     804:	02078463          	beqz	a5,82c <select_album+0x120>
     808:	72c92783          	lw	a5,1836(s2)
     80c:	0087f793          	andi	a5,a5,8
     810:	00079e63          	bnez	a5,82c <select_album+0x120>
     814:	fff40413          	addi	s0,s0,-1
     818:	00045663          	bgez	s0,824 <select_album+0x118>
     81c:	0fca2403          	lw	s0,252(s4)
     820:	fff40413          	addi	s0,s0,-1
     824:	00000097          	auipc	ra,0x0
     828:	968080e7          	jalr	-1688(ra) # 18c <click_sound>
     82c:	0049f793          	andi	a5,s3,4
     830:	00100493          	li	s1,1
     834:	02078063          	beqz	a5,854 <select_album+0x148>
     838:	72c92483          	lw	s1,1836(s2)
     83c:	0044f493          	andi	s1,s1,4
     840:	0a049a63          	bnez	s1,8f4 <select_album+0x1e8>
     844:	00000097          	auipc	ra,0x0
     848:	948080e7          	jalr	-1720(ra) # 18c <click_sound>
     84c:	000057b7          	lui	a5,0x5
     850:	7287a223          	sw	s0,1828(a5) # 5724 <current_album>
     854:	0000c537          	lui	a0,0xc
     858:	35050513          	addi	a0,a0,848 # c350 <_files+0x50c>
     85c:	73392623          	sw	s3,1836(s2)
     860:	fffff097          	auipc	ra,0xfffff
     864:	7bc080e7          	jalr	1980(ra) # 1c <pause>
     868:	f00490e3          	bnez	s1,768 <select_album+0x5c>
     86c:	02c12083          	lw	ra,44(sp)
     870:	02812403          	lw	s0,40(sp)
     874:	000057b7          	lui	a5,0x5
     878:	7247a503          	lw	a0,1828(a5) # 5724 <current_album>
     87c:	02412483          	lw	s1,36(sp)
     880:	02012903          	lw	s2,32(sp)
     884:	01c12983          	lw	s3,28(sp)
     888:	01812a03          	lw	s4,24(sp)
     88c:	01412a83          	lw	s5,20(sp)
     890:	01012b03          	lw	s6,16(sp)
     894:	00c12b83          	lw	s7,12(sp)
     898:	00812c03          	lw	s8,8(sp)
     89c:	03010113          	addi	sp,sp,48
     8a0:	00008067          	ret
     8a4:	02849863          	bne	s1,s0,8d4 <select_album+0x1c8>
     8a8:	0ff00593          	li	a1,255
     8ac:	00000513          	li	a0,0
     8b0:	00001097          	auipc	ra,0x1
     8b4:	090080e7          	jalr	144(ra) # 1940 <display_set_front_back_color>
     8b8:	03549463          	bne	s1,s5,8e0 <select_album+0x1d4>
     8bc:	000b8513          	mv	a0,s7
     8c0:	00001097          	auipc	ra,0x1
     8c4:	3a4080e7          	jalr	932(ra) # 1c64 <printf>
     8c8:	00148493          	addi	s1,s1,1
     8cc:	04098993          	addi	s3,s3,64
     8d0:	eedff06f          	j	7bc <select_album+0xb0>
     8d4:	00000593          	li	a1,0
     8d8:	0ff00513          	li	a0,255
     8dc:	fd5ff06f          	j	8b0 <select_album+0x1a4>
     8e0:	00098593          	mv	a1,s3
     8e4:	000b8513          	mv	a0,s7
     8e8:	00001097          	auipc	ra,0x1
     8ec:	37c080e7          	jalr	892(ra) # 1c64 <printf>
     8f0:	fd9ff06f          	j	8c8 <select_album+0x1bc>
     8f4:	00100493          	li	s1,1
     8f8:	f5dff06f          	j	854 <select_album+0x148>

000008fc <select_track>:
     8fc:	fd010113          	addi	sp,sp,-48
     900:	000057b7          	lui	a5,0x5
     904:	01512a23          	sw	s5,20(sp)
     908:	12c7aa83          	lw	s5,300(a5) # 512c <BUTTONS>
     90c:	02912223          	sw	s1,36(sp)
     910:	01412c23          	sw	s4,24(sp)
     914:	000aa783          	lw	a5,0(s5)
     918:	000054b7          	lui	s1,0x5
     91c:	00005a37          	lui	s4,0x5
     920:	72f4a623          	sw	a5,1836(s1) # 572c <prev_btn>
     924:	728a2783          	lw	a5,1832(s4) # 5728 <file_count>
     928:	02812423          	sw	s0,40(sp)
     92c:	02112623          	sw	ra,44(sp)
     930:	03212023          	sw	s2,32(sp)
     934:	01312e23          	sw	s3,28(sp)
     938:	01612823          	sw	s6,16(sp)
     93c:	01712623          	sw	s7,12(sp)
     940:	01812423          	sw	s8,8(sp)
     944:	00005437          	lui	s0,0x5
     948:	0a079863          	bnez	a5,9f8 <select_track+0xfc>
     94c:	00001097          	auipc	ra,0x1
     950:	fd4080e7          	jalr	-44(ra) # 1920 <display_framebuffer>
     954:	00004637          	lui	a2,0x4
     958:	00000593          	li	a1,0
     95c:	00001097          	auipc	ra,0x1
     960:	cf4080e7          	jalr	-780(ra) # 1650 <memset>
     964:	00000593          	li	a1,0
     968:	00000513          	li	a0,0
     96c:	00001097          	auipc	ra,0x1
     970:	fc0080e7          	jalr	-64(ra) # 192c <display_set_cursor>
     974:	00000593          	li	a1,0
     978:	0ff00513          	li	a0,255
     97c:	00001097          	auipc	ra,0x1
     980:	fc4080e7          	jalr	-60(ra) # 1940 <display_set_front_back_color>
     984:	72442783          	lw	a5,1828(s0) # 5724 <current_album>
     988:	000055b7          	lui	a1,0x5
     98c:	52058593          	addi	a1,a1,1312 # 5520 <albums>
     990:	00679793          	slli	a5,a5,0x6
     994:	00005537          	lui	a0,0x5
     998:	00f585b3          	add	a1,a1,a5
     99c:	1ec50513          	addi	a0,a0,492 # 51ec <LEDS+0xb0>
     9a0:	00001097          	auipc	ra,0x1
     9a4:	2c4080e7          	jalr	708(ra) # 1c64 <printf>
     9a8:	00001097          	auipc	ra,0x1
     9ac:	0c4080e7          	jalr	196(ra) # 1a6c <display_refresh>
     9b0:	001e8537          	lui	a0,0x1e8
     9b4:	48050513          	addi	a0,a0,1152 # 1e8480 <__stacktop+0x1d8480>
     9b8:	fffff097          	auipc	ra,0xfffff
     9bc:	664080e7          	jalr	1636(ra) # 1c <pause>
     9c0:	fff00413          	li	s0,-1
     9c4:	02c12083          	lw	ra,44(sp)
     9c8:	00040513          	mv	a0,s0
     9cc:	02812403          	lw	s0,40(sp)
     9d0:	02412483          	lw	s1,36(sp)
     9d4:	02012903          	lw	s2,32(sp)
     9d8:	01c12983          	lw	s3,28(sp)
     9dc:	01812a03          	lw	s4,24(sp)
     9e0:	01412a83          	lw	s5,20(sp)
     9e4:	01012b03          	lw	s6,16(sp)
     9e8:	00c12b83          	lw	s7,12(sp)
     9ec:	00812c03          	lw	s8,8(sp)
     9f0:	03010113          	addi	sp,sp,48
     9f4:	00008067          	ret
     9f8:	72442703          	lw	a4,1828(s0)
     9fc:	00700793          	li	a5,7
     a00:	16f71a63          	bne	a4,a5,b74 <select_track+0x278>
     a04:	00001097          	auipc	ra,0x1
     a08:	f1c080e7          	jalr	-228(ra) # 1920 <display_framebuffer>
     a0c:	00004637          	lui	a2,0x4
     a10:	00000593          	li	a1,0
     a14:	00001097          	auipc	ra,0x1
     a18:	c3c080e7          	jalr	-964(ra) # 1650 <memset>
     a1c:	00000593          	li	a1,0
     a20:	00000513          	li	a0,0
     a24:	00001097          	auipc	ra,0x1
     a28:	f08080e7          	jalr	-248(ra) # 192c <display_set_cursor>
     a2c:	00000593          	li	a1,0
     a30:	0ff00513          	li	a0,255
     a34:	00001097          	auipc	ra,0x1
     a38:	f0c080e7          	jalr	-244(ra) # 1940 <display_set_front_back_color>
     a3c:	00005537          	lui	a0,0x5
     a40:	20450513          	addi	a0,a0,516 # 5204 <LEDS+0xc8>
     a44:	00001097          	auipc	ra,0x1
     a48:	220080e7          	jalr	544(ra) # 1c64 <printf>
     a4c:	00005537          	lui	a0,0x5
     a50:	21c50513          	addi	a0,a0,540 # 521c <LEDS+0xe0>
     a54:	00001097          	auipc	ra,0x1
     a58:	210080e7          	jalr	528(ra) # 1c64 <printf>
     a5c:	00005537          	lui	a0,0x5
     a60:	22c50513          	addi	a0,a0,556 # 522c <LEDS+0xf0>
     a64:	00001097          	auipc	ra,0x1
     a68:	200080e7          	jalr	512(ra) # 1c64 <printf>
     a6c:	00005537          	lui	a0,0x5
     a70:	24450513          	addi	a0,a0,580 # 5244 <LEDS+0x108>
     a74:	00001097          	auipc	ra,0x1
     a78:	1f0080e7          	jalr	496(ra) # 1c64 <printf>
     a7c:	00005537          	lui	a0,0x5
     a80:	25850513          	addi	a0,a0,600 # 5258 <LEDS+0x11c>
     a84:	00001097          	auipc	ra,0x1
     a88:	1e0080e7          	jalr	480(ra) # 1c64 <printf>
     a8c:	00001097          	auipc	ra,0x1
     a90:	fe0080e7          	jalr	-32(ra) # 1a6c <display_refresh>
     a94:	00000713          	li	a4,0
     a98:	00000793          	li	a5,0
     a9c:	00000693          	li	a3,0
     aa0:	00100613          	li	a2,1
     aa4:	000aa403          	lw	s0,0(s5)
     aa8:	04047593          	andi	a1,s0,64
     aac:	00058863          	beqz	a1,abc <select_track+0x1c0>
     ab0:	72c4a583          	lw	a1,1836(s1)
     ab4:	0405f593          	andi	a1,a1,64
     ab8:	00058463          	beqz	a1,ac0 <select_track+0x1c4>
     abc:	fec694e3          	bne	a3,a2,aa4 <select_track+0x1a8>
     ac0:	00847693          	andi	a3,s0,8
     ac4:	00068863          	beqz	a3,ad4 <select_track+0x1d8>
     ac8:	72c4a683          	lw	a3,1836(s1)
     acc:	0086f693          	andi	a3,a3,8
     ad0:	00068663          	beqz	a3,adc <select_track+0x1e0>
     ad4:	00100693          	li	a3,1
     ad8:	fcc796e3          	bne	a5,a2,aa4 <select_track+0x1a8>
     adc:	02047793          	andi	a5,s0,32
     ae0:	00078863          	beqz	a5,af0 <select_track+0x1f4>
     ae4:	72c4a783          	lw	a5,1836(s1)
     ae8:	0207f793          	andi	a5,a5,32
     aec:	00078463          	beqz	a5,af4 <select_track+0x1f8>
     af0:	1ac71a63          	bne	a4,a2,ca4 <select_track+0x3a8>
     af4:	01047793          	andi	a5,s0,16
     af8:	18078c63          	beqz	a5,c90 <select_track+0x394>
     afc:	72c4a783          	lw	a5,1836(s1)
     b00:	0107f793          	andi	a5,a5,16
     b04:	18079663          	bnez	a5,c90 <select_track+0x394>
     b08:	fffff097          	auipc	ra,0xfffff
     b0c:	72c080e7          	jalr	1836(ra) # 234 <yaaay_sound>
     b10:	00001097          	auipc	ra,0x1
     b14:	e10080e7          	jalr	-496(ra) # 1920 <display_framebuffer>
     b18:	00004637          	lui	a2,0x4
     b1c:	00000593          	li	a1,0
     b20:	00001097          	auipc	ra,0x1
     b24:	b30080e7          	jalr	-1232(ra) # 1650 <memset>
     b28:	00000593          	li	a1,0
     b2c:	00000513          	li	a0,0
     b30:	00001097          	auipc	ra,0x1
     b34:	dfc080e7          	jalr	-516(ra) # 192c <display_set_cursor>
     b38:	00000593          	li	a1,0
     b3c:	0ff00513          	li	a0,255
     b40:	00001097          	auipc	ra,0x1
     b44:	e00080e7          	jalr	-512(ra) # 1940 <display_set_front_back_color>
     b48:	00005537          	lui	a0,0x5
     b4c:	26850513          	addi	a0,a0,616 # 5268 <LEDS+0x12c>
     b50:	00001097          	auipc	ra,0x1
     b54:	114080e7          	jalr	276(ra) # 1c64 <printf>
     b58:	00001097          	auipc	ra,0x1
     b5c:	f14080e7          	jalr	-236(ra) # 1a6c <display_refresh>
     b60:	00031537          	lui	a0,0x31
     b64:	d4050513          	addi	a0,a0,-704 # 30d40 <__stacktop+0x20d40>
     b68:	fffff097          	auipc	ra,0xfffff
     b6c:	4b4080e7          	jalr	1204(ra) # 1c <pause>
     b70:	7284a623          	sw	s0,1836(s1)
     b74:	000057b7          	lui	a5,0x5
     b78:	27c78c13          	addi	s8,a5,636 # 527c <LEDS+0x140>
     b7c:	000057b7          	lui	a5,0x5
     b80:	00000413          	li	s0,0
     b84:	00005b37          	lui	s6,0x5
     b88:	1e878b93          	addi	s7,a5,488 # 51e8 <LEDS+0xac>
     b8c:	00001097          	auipc	ra,0x1
     b90:	d94080e7          	jalr	-620(ra) # 1920 <display_framebuffer>
     b94:	00004637          	lui	a2,0x4
     b98:	00000593          	li	a1,0
     b9c:	00001097          	auipc	ra,0x1
     ba0:	ab4080e7          	jalr	-1356(ra) # 1650 <memset>
     ba4:	00000593          	li	a1,0
     ba8:	00000513          	li	a0,0
     bac:	00001097          	auipc	ra,0x1
     bb0:	d80080e7          	jalr	-640(ra) # 192c <display_set_cursor>
     bb4:	0ff00593          	li	a1,255
     bb8:	00000513          	li	a0,0
     bbc:	00001097          	auipc	ra,0x1
     bc0:	d84080e7          	jalr	-636(ra) # 1940 <display_set_front_back_color>
     bc4:	000c0513          	mv	a0,s8
     bc8:	00001097          	auipc	ra,0x1
     bcc:	09c080e7          	jalr	156(ra) # 1c64 <printf>
     bd0:	75cb0993          	addi	s3,s6,1884 # 575c <files>
     bd4:	00000913          	li	s2,0
     bd8:	728a2783          	lw	a5,1832(s4)
     bdc:	0cf94a63          	blt	s2,a5,cb0 <select_track+0x3b4>
     be0:	00001097          	auipc	ra,0x1
     be4:	e8c080e7          	jalr	-372(ra) # 1a6c <display_refresh>
     be8:	000aa983          	lw	s3,0(s5)
     bec:	0109f793          	andi	a5,s3,16
     bf0:	02078663          	beqz	a5,c1c <select_track+0x320>
     bf4:	72c4a903          	lw	s2,1836(s1)
     bf8:	01097913          	andi	s2,s2,16
     bfc:	02091063          	bnez	s2,c1c <select_track+0x320>
     c00:	728a2783          	lw	a5,1832(s4)
     c04:	00140413          	addi	s0,s0,1
     c08:	00f45463          	bge	s0,a5,c10 <select_track+0x314>
     c0c:	00040913          	mv	s2,s0
     c10:	fffff097          	auipc	ra,0xfffff
     c14:	57c080e7          	jalr	1404(ra) # 18c <click_sound>
     c18:	00090413          	mv	s0,s2
     c1c:	0089f793          	andi	a5,s3,8
     c20:	02078463          	beqz	a5,c48 <select_track+0x34c>
     c24:	72c4a783          	lw	a5,1836(s1)
     c28:	0087f793          	andi	a5,a5,8
     c2c:	00079e63          	bnez	a5,c48 <select_track+0x34c>
     c30:	fff40413          	addi	s0,s0,-1
     c34:	00045663          	bgez	s0,c40 <select_track+0x344>
     c38:	728a2403          	lw	s0,1832(s4)
     c3c:	fff40413          	addi	s0,s0,-1
     c40:	fffff097          	auipc	ra,0xfffff
     c44:	54c080e7          	jalr	1356(ra) # 18c <click_sound>
     c48:	0049f793          	andi	a5,s3,4
     c4c:	00100913          	li	s2,1
     c50:	02078063          	beqz	a5,c70 <select_track+0x374>
     c54:	72c4a903          	lw	s2,1836(s1)
     c58:	00497913          	andi	s2,s2,4
     c5c:	08091863          	bnez	s2,cec <select_track+0x3f0>
     c60:	fffff097          	auipc	ra,0xfffff
     c64:	52c080e7          	jalr	1324(ra) # 18c <click_sound>
     c68:	000057b7          	lui	a5,0x5
     c6c:	7287a023          	sw	s0,1824(a5) # 5720 <current_track>
     c70:	0019f793          	andi	a5,s3,1
     c74:	08078063          	beqz	a5,cf4 <select_track+0x3f8>
     c78:	72c4a783          	lw	a5,1836(s1)
     c7c:	0017f793          	andi	a5,a5,1
     c80:	06079a63          	bnez	a5,cf4 <select_track+0x3f8>
     c84:	fffff097          	auipc	ra,0xfffff
     c88:	508080e7          	jalr	1288(ra) # 18c <click_sound>
     c8c:	d35ff06f          	j	9c0 <select_track+0xc4>
     c90:	00100713          	li	a4,1
     c94:	7284a623          	sw	s0,1836(s1)
     c98:	00070793          	mv	a5,a4
     c9c:	00070693          	mv	a3,a4
     ca0:	e05ff06f          	j	aa4 <select_track+0x1a8>
     ca4:	00100793          	li	a5,1
     ca8:	00078693          	mv	a3,a5
     cac:	df9ff06f          	j	aa4 <select_track+0x1a8>
     cb0:	03241863          	bne	s0,s2,ce0 <select_track+0x3e4>
     cb4:	0ff00593          	li	a1,255
     cb8:	00000513          	li	a0,0
     cbc:	00001097          	auipc	ra,0x1
     cc0:	c84080e7          	jalr	-892(ra) # 1940 <display_set_front_back_color>
     cc4:	00098593          	mv	a1,s3
     cc8:	000b8513          	mv	a0,s7
     ccc:	00001097          	auipc	ra,0x1
     cd0:	f98080e7          	jalr	-104(ra) # 1c64 <printf>
     cd4:	00190913          	addi	s2,s2,1
     cd8:	10498993          	addi	s3,s3,260
     cdc:	efdff06f          	j	bd8 <select_track+0x2dc>
     ce0:	00000593          	li	a1,0
     ce4:	0ff00513          	li	a0,255
     ce8:	fd5ff06f          	j	cbc <select_track+0x3c0>
     cec:	00100913          	li	s2,1
     cf0:	f81ff06f          	j	c70 <select_track+0x374>
     cf4:	0000c537          	lui	a0,0xc
     cf8:	35050513          	addi	a0,a0,848 # c350 <_files+0x50c>
     cfc:	7334a623          	sw	s3,1836(s1)
     d00:	fffff097          	auipc	ra,0xfffff
     d04:	31c080e7          	jalr	796(ra) # 1c <pause>
     d08:	e80912e3          	bnez	s2,b8c <select_track+0x290>
     d0c:	cb9ff06f          	j	9c4 <select_track+0xc8>

00000d10 <main>:
     d10:	000027b7          	lui	a5,0x2
     d14:	fd010113          	addi	sp,sp,-48
     d18:	00005737          	lui	a4,0x5
     d1c:	95478793          	addi	a5,a5,-1708 # 1954 <display_putchar>
     d20:	02112623          	sw	ra,44(sp)
     d24:	74f72023          	sw	a5,1856(a4) # 5740 <f_putchar>
     d28:	02812423          	sw	s0,40(sp)
     d2c:	02912223          	sw	s1,36(sp)
     d30:	03212023          	sw	s2,32(sp)
     d34:	01312e23          	sw	s3,28(sp)
     d38:	01412c23          	sw	s4,24(sp)
     d3c:	01512a23          	sw	s5,20(sp)
     d40:	01612823          	sw	s6,16(sp)
     d44:	01712623          	sw	s7,12(sp)
     d48:	01812423          	sw	s8,8(sp)
     d4c:	01912223          	sw	s9,4(sp)
     d50:	00001097          	auipc	ra,0x1
     d54:	b0c080e7          	jalr	-1268(ra) # 185c <oled_init>
     d58:	00001097          	auipc	ra,0x1
     d5c:	b10080e7          	jalr	-1264(ra) # 1868 <oled_fullscreen>
     d60:	00001097          	auipc	ra,0x1
     d64:	bc0080e7          	jalr	-1088(ra) # 1920 <display_framebuffer>
     d68:	00004637          	lui	a2,0x4
     d6c:	00000593          	li	a1,0
     d70:	00001097          	auipc	ra,0x1
     d74:	8e0080e7          	jalr	-1824(ra) # 1650 <memset>
     d78:	00001097          	auipc	ra,0x1
     d7c:	cf4080e7          	jalr	-780(ra) # 1a6c <display_refresh>
     d80:	00000593          	li	a1,0
     d84:	00000513          	li	a0,0
     d88:	00001097          	auipc	ra,0x1
     d8c:	ba4080e7          	jalr	-1116(ra) # 192c <display_set_cursor>
     d90:	00000593          	li	a1,0
     d94:	0ff00513          	li	a0,255
     d98:	00001097          	auipc	ra,0x1
     d9c:	ba8080e7          	jalr	-1112(ra) # 1940 <display_set_front_back_color>
     da0:	00005537          	lui	a0,0x5
     da4:	29050513          	addi	a0,a0,656 # 5290 <LEDS+0x154>
     da8:	00001097          	auipc	ra,0x1
     dac:	ebc080e7          	jalr	-324(ra) # 1c64 <printf>
     db0:	000014b7          	lui	s1,0x1
     db4:	00001437          	lui	s0,0x1
     db8:	00001097          	auipc	ra,0x1
     dbc:	cb4080e7          	jalr	-844(ra) # 1a6c <display_refresh>
     dc0:	59448493          	addi	s1,s1,1428 # 1594 <sdcard_writesector>
     dc4:	00000097          	auipc	ra,0x0
     dc8:	62c080e7          	jalr	1580(ra) # 13f0 <sdcard_init>
     dcc:	54040413          	addi	s0,s0,1344 # 1540 <sdcard_readsector>
     dd0:	00001097          	auipc	ra,0x1
     dd4:	464080e7          	jalr	1124(ra) # 2234 <fl_init>
     dd8:	00048593          	mv	a1,s1
     ddc:	00040513          	mv	a0,s0
     de0:	00002097          	auipc	ra,0x2
     de4:	2bc080e7          	jalr	700(ra) # 309c <fl_attach_media>
     de8:	fe0518e3          	bnez	a0,dd8 <main+0xc8>
     dec:	00005537          	lui	a0,0x5
     df0:	29c50513          	addi	a0,a0,668 # 529c <LEDS+0x160>
     df4:	00001097          	auipc	ra,0x1
     df8:	e70080e7          	jalr	-400(ra) # 1c64 <printf>
     dfc:	00001097          	auipc	ra,0x1
     e00:	c70080e7          	jalr	-912(ra) # 1a6c <display_refresh>
     e04:	fffff097          	auipc	ra,0xfffff
     e08:	4d8080e7          	jalr	1240(ra) # 2dc <startup_sound>
     e0c:	fffff097          	auipc	ra,0xfffff
     e10:	304080e7          	jalr	772(ra) # 110 <clear_audio>
     e14:	000057b7          	lui	a5,0x5
     e18:	2a478c13          	addi	s8,a5,676 # 52a4 <LEDS+0x168>
     e1c:	000057b7          	lui	a5,0x5
     e20:	14078c93          	addi	s9,a5,320 # 5140 <LEDS+0x4>
     e24:	000057b7          	lui	a5,0x5
     e28:	12c7ab03          	lw	s6,300(a5) # 512c <BUTTONS>
     e2c:	000074b7          	lui	s1,0x7
     e30:	00005937          	lui	s2,0x5
     e34:	7dc48493          	addi	s1,s1,2012 # 77dc <tmp1>
     e38:	52090913          	addi	s2,s2,1312 # 5520 <albums>
     e3c:	00005a37          	lui	s4,0x5
     e40:	00000097          	auipc	ra,0x0
     e44:	8cc080e7          	jalr	-1844(ra) # 70c <select_album>
     e48:	724a2503          	lw	a0,1828(s4) # 5724 <current_album>
     e4c:	fffff097          	auipc	ra,0xfffff
     e50:	1e4080e7          	jalr	484(ra) # 30 <scan_files_in_album>
     e54:	00000097          	auipc	ra,0x0
     e58:	aa8080e7          	jalr	-1368(ra) # 8fc <select_track>
     e5c:	fe0542e3          	bltz	a0,e40 <main+0x130>
     e60:	724a2583          	lw	a1,1828(s4)
     e64:	00005ab7          	lui	s5,0x5
     e68:	72aaa023          	sw	a0,1824(s5) # 5720 <current_track>
     e6c:	00659593          	slli	a1,a1,0x6
     e70:	00b905b3          	add	a1,s2,a1
     e74:	00048513          	mv	a0,s1
     e78:	00048023          	sb	zero,0(s1)
     e7c:	00001097          	auipc	ra,0x1
     e80:	898080e7          	jalr	-1896(ra) # 1714 <strcat>
     e84:	000c0593          	mv	a1,s8
     e88:	00048513          	mv	a0,s1
     e8c:	00001097          	auipc	ra,0x1
     e90:	888080e7          	jalr	-1912(ra) # 1714 <strcat>
     e94:	000c8593          	mv	a1,s9
     e98:	00048513          	mv	a0,s1
     e9c:	00004097          	auipc	ra,0x4
     ea0:	e78080e7          	jalr	-392(ra) # 4d14 <fl_fopen>
     ea4:	00050413          	mv	s0,a0
     ea8:	02050a63          	beqz	a0,edc <main+0x1cc>
     eac:	00001097          	auipc	ra,0x1
     eb0:	a74080e7          	jalr	-1420(ra) # 1920 <display_framebuffer>
     eb4:	00040693          	mv	a3,s0
     eb8:	00004637          	lui	a2,0x4
     ebc:	00100593          	li	a1,1
     ec0:	00004097          	auipc	ra,0x4
     ec4:	850080e7          	jalr	-1968(ra) # 4710 <fl_fread>
     ec8:	00001097          	auipc	ra,0x1
     ecc:	ba4080e7          	jalr	-1116(ra) # 1a6c <display_refresh>
     ed0:	00040513          	mv	a0,s0
     ed4:	00003097          	auipc	ra,0x3
     ed8:	760080e7          	jalr	1888(ra) # 4634 <fl_fclose>
     edc:	fffff097          	auipc	ra,0xfffff
     ee0:	234080e7          	jalr	564(ra) # 110 <clear_audio>
     ee4:	00008437          	lui	s0,0x8
     ee8:	000057b7          	lui	a5,0x5
     eec:	000059b7          	lui	s3,0x5
     ef0:	8dc40413          	addi	s0,s0,-1828 # 78dc <tmp>
     ef4:	2c078b93          	addi	s7,a5,704 # 52c0 <LEDS+0x184>
     ef8:	75c98993          	addi	s3,s3,1884 # 575c <files>
     efc:	724a2583          	lw	a1,1828(s4)
     f00:	00040513          	mv	a0,s0
     f04:	00040023          	sb	zero,0(s0)
     f08:	00659593          	slli	a1,a1,0x6
     f0c:	00b905b3          	add	a1,s2,a1
     f10:	00001097          	auipc	ra,0x1
     f14:	804080e7          	jalr	-2044(ra) # 1714 <strcat>
     f18:	000b8593          	mv	a1,s7
     f1c:	00040513          	mv	a0,s0
     f20:	00000097          	auipc	ra,0x0
     f24:	7f4080e7          	jalr	2036(ra) # 1714 <strcat>
     f28:	720aa783          	lw	a5,1824(s5)
     f2c:	00040513          	mv	a0,s0
     f30:	00679593          	slli	a1,a5,0x6
     f34:	00f585b3          	add	a1,a1,a5
     f38:	00259593          	slli	a1,a1,0x2
     f3c:	00b985b3          	add	a1,s3,a1
     f40:	00000097          	auipc	ra,0x0
     f44:	7d4080e7          	jalr	2004(ra) # 1714 <strcat>
     f48:	00040513          	mv	a0,s0
     f4c:	fffff097          	auipc	ra,0xfffff
     f50:	438080e7          	jalr	1080(ra) # 384 <play_music>
     f54:	000b2783          	lw	a5,0(s6)
     f58:	0027f793          	andi	a5,a5,2
     f5c:	fa0780e3          	beqz	a5,efc <main+0x1ec>
     f60:	00001097          	auipc	ra,0x1
     f64:	9c0080e7          	jalr	-1600(ra) # 1920 <display_framebuffer>
     f68:	00004637          	lui	a2,0x4
     f6c:	00000593          	li	a1,0
     f70:	00000097          	auipc	ra,0x0
     f74:	6e0080e7          	jalr	1760(ra) # 1650 <memset>
     f78:	00000593          	li	a1,0
     f7c:	00000513          	li	a0,0
     f80:	00001097          	auipc	ra,0x1
     f84:	9ac080e7          	jalr	-1620(ra) # 192c <display_set_cursor>
     f88:	00000593          	li	a1,0
     f8c:	0ff00513          	li	a0,255
     f90:	00001097          	auipc	ra,0x1
     f94:	9b0080e7          	jalr	-1616(ra) # 1940 <display_set_front_back_color>
     f98:	00005537          	lui	a0,0x5
     f9c:	2b050513          	addi	a0,a0,688 # 52b0 <LEDS+0x174>
     fa0:	00001097          	auipc	ra,0x1
     fa4:	cc4080e7          	jalr	-828(ra) # 1c64 <printf>
     fa8:	00001097          	auipc	ra,0x1
     fac:	ac4080e7          	jalr	-1340(ra) # 1a6c <display_refresh>
     fb0:	000f4537          	lui	a0,0xf4
     fb4:	24050513          	addi	a0,a0,576 # f4240 <__stacktop+0xe4240>
     fb8:	fffff097          	auipc	ra,0xfffff
     fbc:	064080e7          	jalr	100(ra) # 1c <pause>
     fc0:	e7dff06f          	j	e3c <main+0x12c>

00000fc4 <pause>:
     fc4:	c0002773          	rdcycle	a4
     fc8:	c00027f3          	rdcycle	a5
     fcc:	40e787b3          	sub	a5,a5,a4
     fd0:	fea7ece3          	bltu	a5,a0,fc8 <pause+0x4>
     fd4:	00008067          	ret

00000fd8 <sdcard_idle>:
     fd8:	00008067          	ret

00000fdc <sdcard_select>:
     fdc:	000057b7          	lui	a5,0x5
     fe0:	1307a783          	lw	a5,304(a5) # 5130 <SDCARD>
     fe4:	00200713          	li	a4,2
     fe8:	00e7a023          	sw	a4,0(a5)
     fec:	00008067          	ret

00000ff0 <sdcard_ponder>:
     ff0:	000056b7          	lui	a3,0x5
     ff4:	1306a683          	lw	a3,304(a3) # 5130 <SDCARD>
     ff8:	01000793          	li	a5,16
     ffc:	00000713          	li	a4,0
    1000:	00676613          	ori	a2,a4,6
    1004:	00c6a023          	sw	a2,0(a3)
    1008:	00174713          	xori	a4,a4,1
    100c:	00000013          	nop
    1010:	fff78793          	addi	a5,a5,-1
    1014:	fe0796e3          	bnez	a5,1000 <sdcard_ponder+0x10>
    1018:	00008067          	ret

0000101c <sdcard_unselect>:
    101c:	000057b7          	lui	a5,0x5
    1020:	1307a783          	lw	a5,304(a5) # 5130 <SDCARD>
    1024:	00600713          	li	a4,6
    1028:	00e7a023          	sw	a4,0(a5)
    102c:	00008067          	ret

00001030 <sdcard_send>:
    1030:	000057b7          	lui	a5,0x5
    1034:	1307a783          	lw	a5,304(a5) # 5130 <SDCARD>
    1038:	00655713          	srli	a4,a0,0x6
    103c:	00277713          	andi	a4,a4,2
    1040:	00e7a023          	sw	a4,0(a5)
    1044:	00176713          	ori	a4,a4,1
    1048:	00e7a023          	sw	a4,0(a5)
    104c:	00555713          	srli	a4,a0,0x5
    1050:	00277713          	andi	a4,a4,2
    1054:	00e7a023          	sw	a4,0(a5)
    1058:	00176713          	ori	a4,a4,1
    105c:	00e7a023          	sw	a4,0(a5)
    1060:	00455713          	srli	a4,a0,0x4
    1064:	00277713          	andi	a4,a4,2
    1068:	00e7a023          	sw	a4,0(a5)
    106c:	00176713          	ori	a4,a4,1
    1070:	00e7a023          	sw	a4,0(a5)
    1074:	00355713          	srli	a4,a0,0x3
    1078:	00277713          	andi	a4,a4,2
    107c:	00e7a023          	sw	a4,0(a5)
    1080:	00176713          	ori	a4,a4,1
    1084:	00e7a023          	sw	a4,0(a5)
    1088:	00255713          	srli	a4,a0,0x2
    108c:	00277713          	andi	a4,a4,2
    1090:	00e7a023          	sw	a4,0(a5)
    1094:	00176713          	ori	a4,a4,1
    1098:	00e7a023          	sw	a4,0(a5)
    109c:	00155713          	srli	a4,a0,0x1
    10a0:	00277713          	andi	a4,a4,2
    10a4:	00e7a023          	sw	a4,0(a5)
    10a8:	00176713          	ori	a4,a4,1
    10ac:	00e7a023          	sw	a4,0(a5)
    10b0:	00257713          	andi	a4,a0,2
    10b4:	00e7a023          	sw	a4,0(a5)
    10b8:	00151513          	slli	a0,a0,0x1
    10bc:	00176713          	ori	a4,a4,1
    10c0:	00e7a023          	sw	a4,0(a5)
    10c4:	00257513          	andi	a0,a0,2
    10c8:	00a7a023          	sw	a0,0(a5)
    10cc:	00156513          	ori	a0,a0,1
    10d0:	00a7a023          	sw	a0,0(a5)
    10d4:	00200713          	li	a4,2
    10d8:	00e7a023          	sw	a4,0(a5)
    10dc:	000057b7          	lui	a5,0x5
    10e0:	7307a783          	lw	a5,1840(a5) # 5730 <sdcard_while_loading_callback>
    10e4:	00078067          	jr	a5

000010e8 <sdcard_read>:
    10e8:	fd010113          	addi	sp,sp,-48
    10ec:	fff50793          	addi	a5,a0,-1
    10f0:	03212023          	sw	s2,32(sp)
    10f4:	00100913          	li	s2,1
    10f8:	00f91933          	sll	s2,s2,a5
    10fc:	000057b7          	lui	a5,0x5
    1100:	01312e23          	sw	s3,28(sp)
    1104:	1307a983          	lw	s3,304(a5) # 5130 <SDCARD>
    1108:	02812423          	sw	s0,40(sp)
    110c:	02912223          	sw	s1,36(sp)
    1110:	01412c23          	sw	s4,24(sp)
    1114:	01512a23          	sw	s5,20(sp)
    1118:	01612823          	sw	s6,16(sp)
    111c:	02112623          	sw	ra,44(sp)
    1120:	0ff00413          	li	s0,255
    1124:	00000493          	li	s1,0
    1128:	00300a13          	li	s4,3
    112c:	00200a93          	li	s5,2
    1130:	00005b37          	lui	s6,0x5
    1134:	02058c63          	beqz	a1,116c <sdcard_read+0x84>
    1138:	012477b3          	and	a5,s0,s2
    113c:	02079a63          	bnez	a5,1170 <sdcard_read+0x88>
    1140:	02c12083          	lw	ra,44(sp)
    1144:	0ff47513          	zext.b	a0,s0
    1148:	02812403          	lw	s0,40(sp)
    114c:	02412483          	lw	s1,36(sp)
    1150:	02012903          	lw	s2,32(sp)
    1154:	01c12983          	lw	s3,28(sp)
    1158:	01812a03          	lw	s4,24(sp)
    115c:	01412a83          	lw	s5,20(sp)
    1160:	01012b03          	lw	s6,16(sp)
    1164:	03010113          	addi	sp,sp,48
    1168:	00008067          	ret
    116c:	fca4dae3          	bge	s1,a0,1140 <sdcard_read+0x58>
    1170:	0149a023          	sw	s4,0(s3)
    1174:	0159a023          	sw	s5,0(s3)
    1178:	0009a783          	lw	a5,0(s3)
    117c:	00141413          	slli	s0,s0,0x1
    1180:	00b12623          	sw	a1,12(sp)
    1184:	00f46433          	or	s0,s0,a5
    1188:	730b2783          	lw	a5,1840(s6) # 5730 <sdcard_while_loading_callback>
    118c:	00a12423          	sw	a0,8(sp)
    1190:	00148493          	addi	s1,s1,1
    1194:	000780e7          	jalr	a5
    1198:	00c12583          	lw	a1,12(sp)
    119c:	00812503          	lw	a0,8(sp)
    11a0:	f95ff06f          	j	1134 <sdcard_read+0x4c>

000011a4 <sdcard_get>:
    11a4:	fe010113          	addi	sp,sp,-32
    11a8:	00112e23          	sw	ra,28(sp)
    11ac:	00812c23          	sw	s0,24(sp)
    11b0:	00912a23          	sw	s1,20(sp)
    11b4:	00050413          	mv	s0,a0
    11b8:	00b12623          	sw	a1,12(sp)
    11bc:	00000097          	auipc	ra,0x0
    11c0:	e20080e7          	jalr	-480(ra) # fdc <sdcard_select>
    11c4:	00c12583          	lw	a1,12(sp)
    11c8:	00040513          	mv	a0,s0
    11cc:	00100493          	li	s1,1
    11d0:	00000097          	auipc	ra,0x0
    11d4:	f18080e7          	jalr	-232(ra) # 10e8 <sdcard_read>
    11d8:	00345413          	srli	s0,s0,0x3
    11dc:	0284c463          	blt	s1,s0,1204 <sdcard_get+0x60>
    11e0:	00a12623          	sw	a0,12(sp)
    11e4:	00000097          	auipc	ra,0x0
    11e8:	e38080e7          	jalr	-456(ra) # 101c <sdcard_unselect>
    11ec:	01c12083          	lw	ra,28(sp)
    11f0:	01812403          	lw	s0,24(sp)
    11f4:	00c12503          	lw	a0,12(sp)
    11f8:	01412483          	lw	s1,20(sp)
    11fc:	02010113          	addi	sp,sp,32
    1200:	00008067          	ret
    1204:	00000593          	li	a1,0
    1208:	00800513          	li	a0,8
    120c:	00000097          	auipc	ra,0x0
    1210:	edc080e7          	jalr	-292(ra) # 10e8 <sdcard_read>
    1214:	00148493          	addi	s1,s1,1
    1218:	fc5ff06f          	j	11dc <sdcard_get+0x38>

0000121c <sdcard_cmd>:
    121c:	ff010113          	addi	sp,sp,-16
    1220:	00812423          	sw	s0,8(sp)
    1224:	00912223          	sw	s1,4(sp)
    1228:	01212023          	sw	s2,0(sp)
    122c:	00112623          	sw	ra,12(sp)
    1230:	00050913          	mv	s2,a0
    1234:	00000413          	li	s0,0
    1238:	00000097          	auipc	ra,0x0
    123c:	da4080e7          	jalr	-604(ra) # fdc <sdcard_select>
    1240:	00600493          	li	s1,6
    1244:	008907b3          	add	a5,s2,s0
    1248:	0007c503          	lbu	a0,0(a5)
    124c:	00140413          	addi	s0,s0,1
    1250:	00000097          	auipc	ra,0x0
    1254:	de0080e7          	jalr	-544(ra) # 1030 <sdcard_send>
    1258:	fe9416e3          	bne	s0,s1,1244 <sdcard_cmd+0x28>
    125c:	00812403          	lw	s0,8(sp)
    1260:	00c12083          	lw	ra,12(sp)
    1264:	00412483          	lw	s1,4(sp)
    1268:	00012903          	lw	s2,0(sp)
    126c:	01010113          	addi	sp,sp,16
    1270:	00000317          	auipc	t1,0x0
    1274:	dac30067          	jr	-596(t1) # 101c <sdcard_unselect>

00001278 <sdcard_start_sector>:
    1278:	ff010113          	addi	sp,sp,-16
    127c:	00112623          	sw	ra,12(sp)
    1280:	00812423          	sw	s0,8(sp)
    1284:	00050413          	mv	s0,a0
    1288:	00000097          	auipc	ra,0x0
    128c:	d54080e7          	jalr	-684(ra) # fdc <sdcard_select>
    1290:	05100513          	li	a0,81
    1294:	00000097          	auipc	ra,0x0
    1298:	d9c080e7          	jalr	-612(ra) # 1030 <sdcard_send>
    129c:	01845513          	srli	a0,s0,0x18
    12a0:	00000097          	auipc	ra,0x0
    12a4:	d90080e7          	jalr	-624(ra) # 1030 <sdcard_send>
    12a8:	41045513          	srai	a0,s0,0x10
    12ac:	0ff57513          	zext.b	a0,a0
    12b0:	00000097          	auipc	ra,0x0
    12b4:	d80080e7          	jalr	-640(ra) # 1030 <sdcard_send>
    12b8:	40845513          	srai	a0,s0,0x8
    12bc:	0ff57513          	zext.b	a0,a0
    12c0:	00000097          	auipc	ra,0x0
    12c4:	d70080e7          	jalr	-656(ra) # 1030 <sdcard_send>
    12c8:	0ff47513          	zext.b	a0,s0
    12cc:	00000097          	auipc	ra,0x0
    12d0:	d64080e7          	jalr	-668(ra) # 1030 <sdcard_send>
    12d4:	05500513          	li	a0,85
    12d8:	00000097          	auipc	ra,0x0
    12dc:	d58080e7          	jalr	-680(ra) # 1030 <sdcard_send>
    12e0:	00000097          	auipc	ra,0x0
    12e4:	d3c080e7          	jalr	-708(ra) # 101c <sdcard_unselect>
    12e8:	00812403          	lw	s0,8(sp)
    12ec:	00c12083          	lw	ra,12(sp)
    12f0:	00100593          	li	a1,1
    12f4:	00800513          	li	a0,8
    12f8:	01010113          	addi	sp,sp,16
    12fc:	00000317          	auipc	t1,0x0
    1300:	ea830067          	jr	-344(t1) # 11a4 <sdcard_get>

00001304 <sdcard_read_sector>:
    1304:	ff010113          	addi	sp,sp,-16
    1308:	00812423          	sw	s0,8(sp)
    130c:	00112623          	sw	ra,12(sp)
    1310:	00912223          	sw	s1,4(sp)
    1314:	01212023          	sw	s2,0(sp)
    1318:	00058413          	mv	s0,a1
    131c:	00000097          	auipc	ra,0x0
    1320:	f5c080e7          	jalr	-164(ra) # 1278 <sdcard_start_sector>
    1324:	04051863          	bnez	a0,1374 <sdcard_read_sector+0x70>
    1328:	00100593          	li	a1,1
    132c:	00058513          	mv	a0,a1
    1330:	00000097          	auipc	ra,0x0
    1334:	e74080e7          	jalr	-396(ra) # 11a4 <sdcard_get>
    1338:	00000493          	li	s1,0
    133c:	20000913          	li	s2,512
    1340:	00000593          	li	a1,0
    1344:	00800513          	li	a0,8
    1348:	00000097          	auipc	ra,0x0
    134c:	e5c080e7          	jalr	-420(ra) # 11a4 <sdcard_get>
    1350:	009407b3          	add	a5,s0,s1
    1354:	00a78023          	sb	a0,0(a5)
    1358:	00148493          	addi	s1,s1,1
    135c:	ff2492e3          	bne	s1,s2,1340 <sdcard_read_sector+0x3c>
    1360:	00100593          	li	a1,1
    1364:	01000513          	li	a0,16
    1368:	20040413          	addi	s0,s0,512
    136c:	00000097          	auipc	ra,0x0
    1370:	e38080e7          	jalr	-456(ra) # 11a4 <sdcard_get>
    1374:	00c12083          	lw	ra,12(sp)
    1378:	00040513          	mv	a0,s0
    137c:	00812403          	lw	s0,8(sp)
    1380:	00412483          	lw	s1,4(sp)
    1384:	00012903          	lw	s2,0(sp)
    1388:	01010113          	addi	sp,sp,16
    138c:	00008067          	ret

00001390 <sdcard_preinit>:
    1390:	ff010113          	addi	sp,sp,-16
    1394:	000057b7          	lui	a5,0x5
    1398:	00812423          	sw	s0,8(sp)
    139c:	1307a403          	lw	s0,304(a5) # 5130 <SDCARD>
    13a0:	00112623          	sw	ra,12(sp)
    13a4:	00600793          	li	a5,6
    13a8:	01313537          	lui	a0,0x1313
    13ac:	00f42023          	sw	a5,0(s0)
    13b0:	d0050513          	addi	a0,a0,-768 # 1312d00 <__stacktop+0x1302d00>
    13b4:	00000097          	auipc	ra,0x0
    13b8:	c10080e7          	jalr	-1008(ra) # fc4 <pause>
    13bc:	0a000793          	li	a5,160
    13c0:	00000713          	li	a4,0
    13c4:	00676693          	ori	a3,a4,6
    13c8:	00d42023          	sw	a3,0(s0)
    13cc:	fff78793          	addi	a5,a5,-1
    13d0:	00174713          	xori	a4,a4,1
    13d4:	fe0798e3          	bnez	a5,13c4 <sdcard_preinit+0x34>
    13d8:	00600793          	li	a5,6
    13dc:	00c12083          	lw	ra,12(sp)
    13e0:	00f42023          	sw	a5,0(s0)
    13e4:	00812403          	lw	s0,8(sp)
    13e8:	01010113          	addi	sp,sp,16
    13ec:	00008067          	ret

000013f0 <sdcard_init>:
    13f0:	000017b7          	lui	a5,0x1
    13f4:	fd878793          	addi	a5,a5,-40 # fd8 <sdcard_idle>
    13f8:	00005737          	lui	a4,0x5
    13fc:	fe010113          	addi	sp,sp,-32
    1400:	72f72823          	sw	a5,1840(a4) # 5730 <sdcard_while_loading_callback>
    1404:	000057b7          	lui	a5,0x5
    1408:	00812c23          	sw	s0,24(sp)
    140c:	00912a23          	sw	s1,20(sp)
    1410:	00112e23          	sw	ra,28(sp)
    1414:	12078493          	addi	s1,a5,288 # 5120 <cmd0>
    1418:	0ff00413          	li	s0,255
    141c:	00000097          	auipc	ra,0x0
    1420:	f74080e7          	jalr	-140(ra) # 1390 <sdcard_preinit>
    1424:	00048513          	mv	a0,s1
    1428:	00000097          	auipc	ra,0x0
    142c:	df4080e7          	jalr	-524(ra) # 121c <sdcard_cmd>
    1430:	00100593          	li	a1,1
    1434:	00800513          	li	a0,8
    1438:	00000097          	auipc	ra,0x0
    143c:	d6c080e7          	jalr	-660(ra) # 11a4 <sdcard_get>
    1440:	00a12623          	sw	a0,12(sp)
    1444:	00000097          	auipc	ra,0x0
    1448:	bac080e7          	jalr	-1108(ra) # ff0 <sdcard_ponder>
    144c:	00c12503          	lw	a0,12(sp)
    1450:	00851c63          	bne	a0,s0,1468 <sdcard_init+0x78>
    1454:	01313537          	lui	a0,0x1313
    1458:	d0050513          	addi	a0,a0,-768 # 1312d00 <__stacktop+0x1302d00>
    145c:	00000097          	auipc	ra,0x0
    1460:	b68080e7          	jalr	-1176(ra) # fc4 <pause>
    1464:	fb9ff06f          	j	141c <sdcard_init+0x2c>
    1468:	00005537          	lui	a0,0x5
    146c:	11850513          	addi	a0,a0,280 # 5118 <cmd8>
    1470:	00000097          	auipc	ra,0x0
    1474:	dac080e7          	jalr	-596(ra) # 121c <sdcard_cmd>
    1478:	00100593          	li	a1,1
    147c:	02800513          	li	a0,40
    1480:	00000097          	auipc	ra,0x0
    1484:	d24080e7          	jalr	-732(ra) # 11a4 <sdcard_get>
    1488:	00000097          	auipc	ra,0x0
    148c:	b68080e7          	jalr	-1176(ra) # ff0 <sdcard_ponder>
    1490:	000057b7          	lui	a5,0x5
    1494:	11078413          	addi	s0,a5,272 # 5110 <cmd55>
    1498:	000057b7          	lui	a5,0x5
    149c:	10878493          	addi	s1,a5,264 # 5108 <acmd41>
    14a0:	00040513          	mv	a0,s0
    14a4:	00000097          	auipc	ra,0x0
    14a8:	d78080e7          	jalr	-648(ra) # 121c <sdcard_cmd>
    14ac:	00100593          	li	a1,1
    14b0:	00800513          	li	a0,8
    14b4:	00000097          	auipc	ra,0x0
    14b8:	cf0080e7          	jalr	-784(ra) # 11a4 <sdcard_get>
    14bc:	00000097          	auipc	ra,0x0
    14c0:	b34080e7          	jalr	-1228(ra) # ff0 <sdcard_ponder>
    14c4:	00048513          	mv	a0,s1
    14c8:	00000097          	auipc	ra,0x0
    14cc:	d54080e7          	jalr	-684(ra) # 121c <sdcard_cmd>
    14d0:	00100593          	li	a1,1
    14d4:	00800513          	li	a0,8
    14d8:	00000097          	auipc	ra,0x0
    14dc:	ccc080e7          	jalr	-820(ra) # 11a4 <sdcard_get>
    14e0:	00a12623          	sw	a0,12(sp)
    14e4:	00000097          	auipc	ra,0x0
    14e8:	b0c080e7          	jalr	-1268(ra) # ff0 <sdcard_ponder>
    14ec:	00c12503          	lw	a0,12(sp)
    14f0:	00050c63          	beqz	a0,1508 <sdcard_init+0x118>
    14f4:	001e8537          	lui	a0,0x1e8
    14f8:	48050513          	addi	a0,a0,1152 # 1e8480 <__stacktop+0x1d8480>
    14fc:	00000097          	auipc	ra,0x0
    1500:	ac8080e7          	jalr	-1336(ra) # fc4 <pause>
    1504:	f9dff06f          	j	14a0 <sdcard_init+0xb0>
    1508:	00005537          	lui	a0,0x5
    150c:	10050513          	addi	a0,a0,256 # 5100 <cmd16>
    1510:	00000097          	auipc	ra,0x0
    1514:	d0c080e7          	jalr	-756(ra) # 121c <sdcard_cmd>
    1518:	00100593          	li	a1,1
    151c:	00800513          	li	a0,8
    1520:	00000097          	auipc	ra,0x0
    1524:	c84080e7          	jalr	-892(ra) # 11a4 <sdcard_get>
    1528:	01812403          	lw	s0,24(sp)
    152c:	01c12083          	lw	ra,28(sp)
    1530:	01412483          	lw	s1,20(sp)
    1534:	02010113          	addi	sp,sp,32
    1538:	00000317          	auipc	t1,0x0
    153c:	ab830067          	jr	-1352(t1) # ff0 <sdcard_ponder>

00001540 <sdcard_readsector>:
    1540:	04060663          	beqz	a2,158c <sdcard_readsector+0x4c>
    1544:	ff010113          	addi	sp,sp,-16
    1548:	00812423          	sw	s0,8(sp)
    154c:	00912223          	sw	s1,4(sp)
    1550:	00112623          	sw	ra,12(sp)
    1554:	00050413          	mv	s0,a0
    1558:	00a604b3          	add	s1,a2,a0
    155c:	00040513          	mv	a0,s0
    1560:	00000097          	auipc	ra,0x0
    1564:	da4080e7          	jalr	-604(ra) # 1304 <sdcard_read_sector>
    1568:	00140413          	addi	s0,s0,1
    156c:	00050593          	mv	a1,a0
    1570:	fe9416e3          	bne	s0,s1,155c <sdcard_readsector+0x1c>
    1574:	00c12083          	lw	ra,12(sp)
    1578:	00812403          	lw	s0,8(sp)
    157c:	00412483          	lw	s1,4(sp)
    1580:	00100513          	li	a0,1
    1584:	01010113          	addi	sp,sp,16
    1588:	00008067          	ret
    158c:	00000513          	li	a0,0
    1590:	00008067          	ret

00001594 <sdcard_writesector>:
    1594:	00000513          	li	a0,0
    1598:	00008067          	ret

0000159c <__divsi3>:
    159c:	06054063          	bltz	a0,15fc <__umodsi3+0x10>
    15a0:	0605c663          	bltz	a1,160c <__umodsi3+0x20>

000015a4 <__udivsi3>:
    15a4:	00058613          	mv	a2,a1
    15a8:	00050593          	mv	a1,a0
    15ac:	fff00513          	li	a0,-1
    15b0:	02060c63          	beqz	a2,15e8 <__udivsi3+0x44>
    15b4:	00100693          	li	a3,1
    15b8:	00b67a63          	bgeu	a2,a1,15cc <__udivsi3+0x28>
    15bc:	00c05863          	blez	a2,15cc <__udivsi3+0x28>
    15c0:	00161613          	slli	a2,a2,0x1
    15c4:	00169693          	slli	a3,a3,0x1
    15c8:	feb66ae3          	bltu	a2,a1,15bc <__udivsi3+0x18>
    15cc:	00000513          	li	a0,0
    15d0:	00c5e663          	bltu	a1,a2,15dc <__udivsi3+0x38>
    15d4:	40c585b3          	sub	a1,a1,a2
    15d8:	00d56533          	or	a0,a0,a3
    15dc:	0016d693          	srli	a3,a3,0x1
    15e0:	00165613          	srli	a2,a2,0x1
    15e4:	fe0696e3          	bnez	a3,15d0 <__udivsi3+0x2c>
    15e8:	00008067          	ret

000015ec <__umodsi3>:
    15ec:	00008293          	mv	t0,ra
    15f0:	fb5ff0ef          	jal	15a4 <__udivsi3>
    15f4:	00058513          	mv	a0,a1
    15f8:	00028067          	jr	t0
    15fc:	40a00533          	neg	a0,a0
    1600:	0005d863          	bgez	a1,1610 <__umodsi3+0x24>
    1604:	40b005b3          	neg	a1,a1
    1608:	f95ff06f          	j	159c <__divsi3>
    160c:	40b005b3          	neg	a1,a1
    1610:	00008293          	mv	t0,ra
    1614:	f89ff0ef          	jal	159c <__divsi3>
    1618:	40a00533          	neg	a0,a0
    161c:	00028067          	jr	t0

00001620 <__modsi3>:
    1620:	00008293          	mv	t0,ra
    1624:	0005ca63          	bltz	a1,1638 <__modsi3+0x18>
    1628:	00054c63          	bltz	a0,1640 <__modsi3+0x20>
    162c:	f79ff0ef          	jal	15a4 <__udivsi3>
    1630:	00058513          	mv	a0,a1
    1634:	00028067          	jr	t0
    1638:	40b005b3          	neg	a1,a1
    163c:	fe0558e3          	bgez	a0,162c <__modsi3+0xc>
    1640:	40a00533          	neg	a0,a0
    1644:	f61ff0ef          	jal	15a4 <__udivsi3>
    1648:	40b00533          	neg	a0,a1
    164c:	00028067          	jr	t0

00001650 <memset>:
    1650:	00c50633          	add	a2,a0,a2
    1654:	00050793          	mv	a5,a0
    1658:	00c79463          	bne	a5,a2,1660 <memset+0x10>
    165c:	00008067          	ret
    1660:	00178793          	addi	a5,a5,1
    1664:	feb78fa3          	sb	a1,-1(a5)
    1668:	ff1ff06f          	j	1658 <memset+0x8>

0000166c <memcpy>:
    166c:	00000793          	li	a5,0
    1670:	00c79463          	bne	a5,a2,1678 <memcpy+0xc>
    1674:	00008067          	ret
    1678:	00f58733          	add	a4,a1,a5
    167c:	00074683          	lbu	a3,0(a4)
    1680:	00f50733          	add	a4,a0,a5
    1684:	00178793          	addi	a5,a5,1
    1688:	00d70023          	sb	a3,0(a4)
    168c:	fe5ff06f          	j	1670 <memcpy+0x4>

00001690 <strlen>:
    1690:	00000793          	li	a5,0
    1694:	00f50733          	add	a4,a0,a5
    1698:	00074703          	lbu	a4,0(a4)
    169c:	00071663          	bnez	a4,16a8 <strlen+0x18>
    16a0:	00078513          	mv	a0,a5
    16a4:	00008067          	ret
    16a8:	00178793          	addi	a5,a5,1
    16ac:	fe9ff06f          	j	1694 <strlen+0x4>

000016b0 <strncmp>:
    16b0:	00000793          	li	a5,0
    16b4:	00c79663          	bne	a5,a2,16c0 <strncmp+0x10>
    16b8:	00000513          	li	a0,0
    16bc:	00008067          	ret
    16c0:	00f50733          	add	a4,a0,a5
    16c4:	00074683          	lbu	a3,0(a4)
    16c8:	00f58733          	add	a4,a1,a5
    16cc:	00074703          	lbu	a4,0(a4)
    16d0:	00e6e863          	bltu	a3,a4,16e0 <strncmp+0x30>
    16d4:	00d76a63          	bltu	a4,a3,16e8 <strncmp+0x38>
    16d8:	00178793          	addi	a5,a5,1
    16dc:	fd9ff06f          	j	16b4 <strncmp+0x4>
    16e0:	fff00513          	li	a0,-1
    16e4:	00008067          	ret
    16e8:	00100513          	li	a0,1
    16ec:	00008067          	ret

000016f0 <strncpy>:
    16f0:	00000793          	li	a5,0
    16f4:	00c79463          	bne	a5,a2,16fc <strncpy+0xc>
    16f8:	00008067          	ret
    16fc:	00f58733          	add	a4,a1,a5
    1700:	00074683          	lbu	a3,0(a4)
    1704:	00f50733          	add	a4,a0,a5
    1708:	00178793          	addi	a5,a5,1
    170c:	00d70023          	sb	a3,0(a4)
    1710:	fe5ff06f          	j	16f4 <strncpy+0x4>

00001714 <strcat>:
    1714:	00050793          	mv	a5,a0
    1718:	0007c683          	lbu	a3,0(a5)
    171c:	00078713          	mv	a4,a5
    1720:	00178793          	addi	a5,a5,1
    1724:	fe069ae3          	bnez	a3,1718 <strcat+0x4>
    1728:	0005c783          	lbu	a5,0(a1)
    172c:	00158593          	addi	a1,a1,1
    1730:	00170713          	addi	a4,a4,1
    1734:	fef70fa3          	sb	a5,-1(a4)
    1738:	fe0798e3          	bnez	a5,1728 <strcat+0x14>
    173c:	00008067          	ret

00001740 <oled_wait>:
    1740:	00000013          	nop
    1744:	00000013          	nop
    1748:	00000013          	nop
    174c:	00000013          	nop
    1750:	00000013          	nop
    1754:	00000013          	nop
    1758:	00000013          	nop
    175c:	00008067          	ret

00001760 <oled_init_mode>:
    1760:	000057b7          	lui	a5,0x5
    1764:	1347a703          	lw	a4,308(a5) # 5134 <OLED_RST>
    1768:	fe010113          	addi	sp,sp,-32
    176c:	00112e23          	sw	ra,28(sp)
    1770:	00812c23          	sw	s0,24(sp)
    1774:	00072023          	sw	zero,0(a4)
    1778:	00040737          	lui	a4,0x40
    177c:	00000013          	nop
    1780:	fff70713          	addi	a4,a4,-1 # 3ffff <__stacktop+0x2ffff>
    1784:	fe071ce3          	bnez	a4,177c <oled_init_mode+0x1c>
    1788:	1347a703          	lw	a4,308(a5)
    178c:	00100693          	li	a3,1
    1790:	00d72023          	sw	a3,0(a4)
    1794:	00040737          	lui	a4,0x40
    1798:	00000013          	nop
    179c:	fff70713          	addi	a4,a4,-1 # 3ffff <__stacktop+0x2ffff>
    17a0:	fe071ce3          	bnez	a4,1798 <oled_init_mode+0x38>
    17a4:	1347a783          	lw	a5,308(a5)
    17a8:	0007a023          	sw	zero,0(a5)
    17ac:	000407b7          	lui	a5,0x40
    17b0:	00000013          	nop
    17b4:	fff78793          	addi	a5,a5,-1 # 3ffff <__stacktop+0x2ffff>
    17b8:	fe079ce3          	bnez	a5,17b0 <oled_init_mode+0x50>
    17bc:	00005737          	lui	a4,0x5
    17c0:	13872783          	lw	a5,312(a4) # 5138 <OLED>
    17c4:	2af00693          	li	a3,687
    17c8:	00d7a023          	sw	a3,0(a5)
    17cc:	000407b7          	lui	a5,0x40
    17d0:	00000013          	nop
    17d4:	fff78793          	addi	a5,a5,-1 # 3ffff <__stacktop+0x2ffff>
    17d8:	fe079ce3          	bnez	a5,17d0 <oled_init_mode+0x70>
    17dc:	13872403          	lw	s0,312(a4)
    17e0:	2a000793          	li	a5,672
    17e4:	00a12623          	sw	a0,12(sp)
    17e8:	00f42023          	sw	a5,0(s0)
    17ec:	00000097          	auipc	ra,0x0
    17f0:	f54080e7          	jalr	-172(ra) # 1740 <oled_wait>
    17f4:	00c12503          	lw	a0,12(sp)
    17f8:	4a000793          	li	a5,1184
    17fc:	00050463          	beqz	a0,1804 <oled_init_mode+0xa4>
    1800:	42000793          	li	a5,1056
    1804:	00f42023          	sw	a5,0(s0)
    1808:	00000097          	auipc	ra,0x0
    180c:	f38080e7          	jalr	-200(ra) # 1740 <oled_wait>
    1810:	2fd00793          	li	a5,765
    1814:	00f42023          	sw	a5,0(s0)
    1818:	00000097          	auipc	ra,0x0
    181c:	f28080e7          	jalr	-216(ra) # 1740 <oled_wait>
    1820:	4b100793          	li	a5,1201
    1824:	00f42023          	sw	a5,0(s0)
    1828:	00000097          	auipc	ra,0x0
    182c:	f18080e7          	jalr	-232(ra) # 1740 <oled_wait>
    1830:	2a200793          	li	a5,674
    1834:	00f42023          	sw	a5,0(s0)
    1838:	00000097          	auipc	ra,0x0
    183c:	f08080e7          	jalr	-248(ra) # 1740 <oled_wait>
    1840:	40000793          	li	a5,1024
    1844:	00f42023          	sw	a5,0(s0)
    1848:	01812403          	lw	s0,24(sp)
    184c:	01c12083          	lw	ra,28(sp)
    1850:	02010113          	addi	sp,sp,32
    1854:	00000317          	auipc	t1,0x0
    1858:	eec30067          	jr	-276(t1) # 1740 <oled_wait>

0000185c <oled_init>:
    185c:	00000513          	li	a0,0
    1860:	00000317          	auipc	t1,0x0
    1864:	f0030067          	jr	-256(t1) # 1760 <oled_init_mode>

00001868 <oled_fullscreen>:
    1868:	ff010113          	addi	sp,sp,-16
    186c:	000057b7          	lui	a5,0x5
    1870:	00812423          	sw	s0,8(sp)
    1874:	1387a403          	lw	s0,312(a5) # 5138 <OLED>
    1878:	00112623          	sw	ra,12(sp)
    187c:	00912223          	sw	s1,4(sp)
    1880:	01212023          	sw	s2,0(sp)
    1884:	21500793          	li	a5,533
    1888:	00f42023          	sw	a5,0(s0)
    188c:	40000913          	li	s2,1024
    1890:	00000097          	auipc	ra,0x0
    1894:	eb0080e7          	jalr	-336(ra) # 1740 <oled_wait>
    1898:	47f00493          	li	s1,1151
    189c:	01242023          	sw	s2,0(s0)
    18a0:	00000097          	auipc	ra,0x0
    18a4:	ea0080e7          	jalr	-352(ra) # 1740 <oled_wait>
    18a8:	00942023          	sw	s1,0(s0)
    18ac:	00000097          	auipc	ra,0x0
    18b0:	e94080e7          	jalr	-364(ra) # 1740 <oled_wait>
    18b4:	27500793          	li	a5,629
    18b8:	00f42023          	sw	a5,0(s0)
    18bc:	00000097          	auipc	ra,0x0
    18c0:	e84080e7          	jalr	-380(ra) # 1740 <oled_wait>
    18c4:	01242023          	sw	s2,0(s0)
    18c8:	00000097          	auipc	ra,0x0
    18cc:	e78080e7          	jalr	-392(ra) # 1740 <oled_wait>
    18d0:	00942023          	sw	s1,0(s0)
    18d4:	00000097          	auipc	ra,0x0
    18d8:	e6c080e7          	jalr	-404(ra) # 1740 <oled_wait>
    18dc:	25c00793          	li	a5,604
    18e0:	00f42023          	sw	a5,0(s0)
    18e4:	00812403          	lw	s0,8(sp)
    18e8:	00c12083          	lw	ra,12(sp)
    18ec:	00412483          	lw	s1,4(sp)
    18f0:	00012903          	lw	s2,0(sp)
    18f4:	01010113          	addi	sp,sp,16
    18f8:	00000317          	auipc	t1,0x0
    18fc:	e4830067          	jr	-440(t1) # 1740 <oled_wait>

00001900 <oled_wait>:
    1900:	00000013          	nop
    1904:	00000013          	nop
    1908:	00000013          	nop
    190c:	00000013          	nop
    1910:	00000013          	nop
    1914:	00000013          	nop
    1918:	00000013          	nop
    191c:	00008067          	ret

00001920 <display_framebuffer>:
    1920:	00008537          	lui	a0,0x8
    1924:	9dc50513          	addi	a0,a0,-1572 # 79dc <framebuffer>
    1928:	00008067          	ret

0000192c <display_set_cursor>:
    192c:	000057b7          	lui	a5,0x5
    1930:	72a7ae23          	sw	a0,1852(a5) # 573c <cursor_x>
    1934:	000057b7          	lui	a5,0x5
    1938:	72b7ac23          	sw	a1,1848(a5) # 5738 <cursor_y>
    193c:	00008067          	ret

00001940 <display_set_front_back_color>:
    1940:	000057b7          	lui	a5,0x5
    1944:	72a78aa3          	sb	a0,1845(a5) # 5735 <front_color>
    1948:	000057b7          	lui	a5,0x5
    194c:	72b78a23          	sb	a1,1844(a5) # 5734 <back_color>
    1950:	00008067          	ret

00001954 <display_putchar>:
    1954:	00a00793          	li	a5,10
    1958:	000055b7          	lui	a1,0x5
    195c:	02f51663          	bne	a0,a5,1988 <display_putchar+0x34>
    1960:	00005737          	lui	a4,0x5
    1964:	73872783          	lw	a5,1848(a4) # 5738 <cursor_y>
    1968:	7205ae23          	sw	zero,1852(a1) # 573c <cursor_x>
    196c:	00878793          	addi	a5,a5,8
    1970:	72f72c23          	sw	a5,1848(a4)
    1974:	07f00713          	li	a4,127
    1978:	00f75663          	bge	a4,a5,1984 <display_putchar+0x30>
    197c:	000057b7          	lui	a5,0x5
    1980:	7207ac23          	sw	zero,1848(a5) # 5738 <cursor_y>
    1984:	00008067          	ret
    1988:	ff010113          	addi	sp,sp,-16
    198c:	00812623          	sw	s0,12(sp)
    1990:	01f00713          	li	a4,31
    1994:	73c5a783          	lw	a5,1852(a1)
    1998:	08a75a63          	bge	a4,a0,1a2c <display_putchar+0xd8>
    199c:	00005737          	lui	a4,0x5
    19a0:	73474f83          	lbu	t6,1844(a4) # 5734 <back_color>
    19a4:	00005737          	lui	a4,0x5
    19a8:	73574283          	lbu	t0,1845(a4) # 5735 <front_color>
    19ac:	000056b7          	lui	a3,0x5
    19b0:	00251713          	slli	a4,a0,0x2
    19b4:	30c68693          	addi	a3,a3,780 # 530c <font>
    19b8:	00a70733          	add	a4,a4,a0
    19bc:	00d70733          	add	a4,a4,a3
    19c0:	000056b7          	lui	a3,0x5
    19c4:	7386a683          	lw	a3,1848(a3) # 5738 <cursor_y>
    19c8:	00008637          	lui	a2,0x8
    19cc:	9dc60613          	addi	a2,a2,-1572 # 79dc <framebuffer>
    19d0:	00c686b3          	add	a3,a3,a2
    19d4:	00779613          	slli	a2,a5,0x7
    19d8:	00c686b3          	add	a3,a3,a2
    19dc:	00100f13          	li	t5,1
    19e0:	00000613          	li	a2,0
    19e4:	00500393          	li	t2,5
    19e8:	00800413          	li	s0,8
    19ec:	00cf1eb3          	sll	t4,t5,a2
    19f0:	00d608b3          	add	a7,a2,a3
    19f4:	00070813          	mv	a6,a4
    19f8:	00000513          	li	a0,0
    19fc:	f6084303          	lbu	t1,-160(a6)
    1a00:	00028e13          	mv	t3,t0
    1a04:	01d37333          	and	t1,t1,t4
    1a08:	00031463          	bnez	t1,1a10 <display_putchar+0xbc>
    1a0c:	000f8e13          	mv	t3,t6
    1a10:	01c88023          	sb	t3,0(a7)
    1a14:	00150513          	addi	a0,a0,1
    1a18:	00180813          	addi	a6,a6,1
    1a1c:	08088893          	addi	a7,a7,128
    1a20:	fc751ee3          	bne	a0,t2,19fc <display_putchar+0xa8>
    1a24:	00160613          	addi	a2,a2,1
    1a28:	fc8612e3          	bne	a2,s0,19ec <display_putchar+0x98>
    1a2c:	00578793          	addi	a5,a5,5
    1a30:	07f00713          	li	a4,127
    1a34:	00f74663          	blt	a4,a5,1a40 <display_putchar+0xec>
    1a38:	72f5ae23          	sw	a5,1852(a1)
    1a3c:	0240006f          	j	1a60 <display_putchar+0x10c>
    1a40:	000056b7          	lui	a3,0x5
    1a44:	7386a783          	lw	a5,1848(a3) # 5738 <cursor_y>
    1a48:	7205ae23          	sw	zero,1852(a1)
    1a4c:	00878793          	addi	a5,a5,8
    1a50:	72f6ac23          	sw	a5,1848(a3)
    1a54:	00f75663          	bge	a4,a5,1a60 <display_putchar+0x10c>
    1a58:	000057b7          	lui	a5,0x5
    1a5c:	7207ac23          	sw	zero,1848(a5) # 5738 <cursor_y>
    1a60:	00c12403          	lw	s0,12(sp)
    1a64:	01010113          	addi	sp,sp,16
    1a68:	00008067          	ret

00001a6c <display_refresh>:
    1a6c:	fe010113          	addi	sp,sp,-32
    1a70:	000057b7          	lui	a5,0x5
    1a74:	01212823          	sw	s2,16(sp)
    1a78:	1387a903          	lw	s2,312(a5) # 5138 <OLED>
    1a7c:	01312623          	sw	s3,12(sp)
    1a80:	000089b7          	lui	s3,0x8
    1a84:	00912a23          	sw	s1,20(sp)
    1a88:	01412423          	sw	s4,8(sp)
    1a8c:	00112e23          	sw	ra,28(sp)
    1a90:	00812c23          	sw	s0,24(sp)
    1a94:	00000493          	li	s1,0
    1a98:	9dc98993          	addi	s3,s3,-1572 # 79dc <framebuffer>
    1a9c:	00004a37          	lui	s4,0x4
    1aa0:	013487b3          	add	a5,s1,s3
    1aa4:	0007c403          	lbu	s0,0(a5)
    1aa8:	00148493          	addi	s1,s1,1
    1aac:	00245413          	srli	s0,s0,0x2
    1ab0:	40046413          	ori	s0,s0,1024
    1ab4:	00892023          	sw	s0,0(s2)
    1ab8:	00000097          	auipc	ra,0x0
    1abc:	e48080e7          	jalr	-440(ra) # 1900 <oled_wait>
    1ac0:	00892023          	sw	s0,0(s2)
    1ac4:	00000097          	auipc	ra,0x0
    1ac8:	e3c080e7          	jalr	-452(ra) # 1900 <oled_wait>
    1acc:	00892023          	sw	s0,0(s2)
    1ad0:	00000097          	auipc	ra,0x0
    1ad4:	e30080e7          	jalr	-464(ra) # 1900 <oled_wait>
    1ad8:	fd4494e3          	bne	s1,s4,1aa0 <display_refresh+0x34>
    1adc:	01c12083          	lw	ra,28(sp)
    1ae0:	01812403          	lw	s0,24(sp)
    1ae4:	01412483          	lw	s1,20(sp)
    1ae8:	01012903          	lw	s2,16(sp)
    1aec:	00c12983          	lw	s3,12(sp)
    1af0:	00812a03          	lw	s4,8(sp)
    1af4:	02010113          	addi	sp,sp,32
    1af8:	00008067          	ret

00001afc <print_string>:
    1afc:	ff010113          	addi	sp,sp,-16
    1b00:	00812423          	sw	s0,8(sp)
    1b04:	00912223          	sw	s1,4(sp)
    1b08:	00112623          	sw	ra,12(sp)
    1b0c:	00050413          	mv	s0,a0
    1b10:	000054b7          	lui	s1,0x5
    1b14:	00044503          	lbu	a0,0(s0)
    1b18:	00051c63          	bnez	a0,1b30 <print_string+0x34>
    1b1c:	00c12083          	lw	ra,12(sp)
    1b20:	00812403          	lw	s0,8(sp)
    1b24:	00412483          	lw	s1,4(sp)
    1b28:	01010113          	addi	sp,sp,16
    1b2c:	00008067          	ret
    1b30:	7404a783          	lw	a5,1856(s1) # 5740 <f_putchar>
    1b34:	00140413          	addi	s0,s0,1
    1b38:	000780e7          	jalr	a5
    1b3c:	fd9ff06f          	j	1b14 <print_string+0x18>

00001b40 <print_dec>:
    1b40:	ef010113          	addi	sp,sp,-272
    1b44:	10812423          	sw	s0,264(sp)
    1b48:	10912223          	sw	s1,260(sp)
    1b4c:	10112623          	sw	ra,268(sp)
    1b50:	11212023          	sw	s2,256(sp)
    1b54:	00050413          	mv	s0,a0
    1b58:	000054b7          	lui	s1,0x5
    1b5c:	08045063          	bgez	s0,1bdc <print_dec+0x9c>
    1b60:	7404a783          	lw	a5,1856(s1) # 5740 <f_putchar>
    1b64:	02d00513          	li	a0,45
    1b68:	40800433          	neg	s0,s0
    1b6c:	000780e7          	jalr	a5
    1b70:	fedff06f          	j	1b5c <print_dec+0x1c>
    1b74:	00040513          	mv	a0,s0
    1b78:	00a00593          	li	a1,10
    1b7c:	00000097          	auipc	ra,0x0
    1b80:	a20080e7          	jalr	-1504(ra) # 159c <__divsi3>
    1b84:	00251793          	slli	a5,a0,0x2
    1b88:	00f507b3          	add	a5,a0,a5
    1b8c:	00179793          	slli	a5,a5,0x1
    1b90:	40f40433          	sub	s0,s0,a5
    1b94:	00148493          	addi	s1,s1,1
    1b98:	fe848fa3          	sb	s0,-1(s1)
    1b9c:	00050413          	mv	s0,a0
    1ba0:	fc041ae3          	bnez	s0,1b74 <print_dec+0x34>
    1ba4:	fd2488e3          	beq	s1,s2,1b74 <print_dec+0x34>
    1ba8:	00005437          	lui	s0,0x5
    1bac:	fff4c503          	lbu	a0,-1(s1)
    1bb0:	74042783          	lw	a5,1856(s0) # 5740 <f_putchar>
    1bb4:	fff48493          	addi	s1,s1,-1
    1bb8:	03050513          	addi	a0,a0,48
    1bbc:	000780e7          	jalr	a5
    1bc0:	ff2496e3          	bne	s1,s2,1bac <print_dec+0x6c>
    1bc4:	10c12083          	lw	ra,268(sp)
    1bc8:	10812403          	lw	s0,264(sp)
    1bcc:	10412483          	lw	s1,260(sp)
    1bd0:	10012903          	lw	s2,256(sp)
    1bd4:	11010113          	addi	sp,sp,272
    1bd8:	00008067          	ret
    1bdc:	00010493          	mv	s1,sp
    1be0:	00010913          	mv	s2,sp
    1be4:	fbdff06f          	j	1ba0 <print_dec+0x60>

00001be8 <print_hex_digits>:
    1be8:	fe010113          	addi	sp,sp,-32
    1bec:	00812c23          	sw	s0,24(sp)
    1bf0:	00912a23          	sw	s1,20(sp)
    1bf4:	fff58413          	addi	s0,a1,-1
    1bf8:	000054b7          	lui	s1,0x5
    1bfc:	01212823          	sw	s2,16(sp)
    1c00:	01312623          	sw	s3,12(sp)
    1c04:	00112e23          	sw	ra,28(sp)
    1c08:	00050993          	mv	s3,a0
    1c0c:	00241413          	slli	s0,s0,0x2
    1c10:	2c448493          	addi	s1,s1,708 # 52c4 <LEDS+0x188>
    1c14:	00005937          	lui	s2,0x5
    1c18:	02045063          	bgez	s0,1c38 <print_hex_digits+0x50>
    1c1c:	01c12083          	lw	ra,28(sp)
    1c20:	01812403          	lw	s0,24(sp)
    1c24:	01412483          	lw	s1,20(sp)
    1c28:	01012903          	lw	s2,16(sp)
    1c2c:	00c12983          	lw	s3,12(sp)
    1c30:	02010113          	addi	sp,sp,32
    1c34:	00008067          	ret
    1c38:	0089d7b3          	srl	a5,s3,s0
    1c3c:	00f7f793          	andi	a5,a5,15
    1c40:	00f487b3          	add	a5,s1,a5
    1c44:	74092703          	lw	a4,1856(s2) # 5740 <f_putchar>
    1c48:	0007c503          	lbu	a0,0(a5)
    1c4c:	ffc40413          	addi	s0,s0,-4
    1c50:	000700e7          	jalr	a4
    1c54:	fc5ff06f          	j	1c18 <print_hex_digits+0x30>

00001c58 <print_hex>:
    1c58:	00800593          	li	a1,8
    1c5c:	00000317          	auipc	t1,0x0
    1c60:	f8c30067          	jr	-116(t1) # 1be8 <print_hex_digits>

00001c64 <printf>:
    1c64:	fa010113          	addi	sp,sp,-96
    1c68:	04f12a23          	sw	a5,84(sp)
    1c6c:	04410793          	addi	a5,sp,68
    1c70:	02812c23          	sw	s0,56(sp)
    1c74:	02912a23          	sw	s1,52(sp)
    1c78:	03212823          	sw	s2,48(sp)
    1c7c:	03312623          	sw	s3,44(sp)
    1c80:	03412423          	sw	s4,40(sp)
    1c84:	03512223          	sw	s5,36(sp)
    1c88:	03612023          	sw	s6,32(sp)
    1c8c:	02112e23          	sw	ra,60(sp)
    1c90:	01712e23          	sw	s7,28(sp)
    1c94:	00050413          	mv	s0,a0
    1c98:	04b12223          	sw	a1,68(sp)
    1c9c:	04c12423          	sw	a2,72(sp)
    1ca0:	04d12623          	sw	a3,76(sp)
    1ca4:	04e12823          	sw	a4,80(sp)
    1ca8:	05012c23          	sw	a6,88(sp)
    1cac:	05112e23          	sw	a7,92(sp)
    1cb0:	00f12623          	sw	a5,12(sp)
    1cb4:	02500913          	li	s2,37
    1cb8:	000054b7          	lui	s1,0x5
    1cbc:	07300993          	li	s3,115
    1cc0:	07800a13          	li	s4,120
    1cc4:	06400a93          	li	s5,100
    1cc8:	06300b13          	li	s6,99
    1ccc:	00044503          	lbu	a0,0(s0)
    1cd0:	02051863          	bnez	a0,1d00 <printf+0x9c>
    1cd4:	03c12083          	lw	ra,60(sp)
    1cd8:	03812403          	lw	s0,56(sp)
    1cdc:	03412483          	lw	s1,52(sp)
    1ce0:	03012903          	lw	s2,48(sp)
    1ce4:	02c12983          	lw	s3,44(sp)
    1ce8:	02812a03          	lw	s4,40(sp)
    1cec:	02412a83          	lw	s5,36(sp)
    1cf0:	02012b03          	lw	s6,32(sp)
    1cf4:	01c12b83          	lw	s7,28(sp)
    1cf8:	06010113          	addi	sp,sp,96
    1cfc:	00008067          	ret
    1d00:	09251a63          	bne	a0,s2,1d94 <printf+0x130>
    1d04:	00144503          	lbu	a0,1(s0)
    1d08:	00140b93          	addi	s7,s0,1
    1d0c:	03351463          	bne	a0,s3,1d34 <printf+0xd0>
    1d10:	00c12783          	lw	a5,12(sp)
    1d14:	0007a503          	lw	a0,0(a5)
    1d18:	00478713          	addi	a4,a5,4
    1d1c:	00e12623          	sw	a4,12(sp)
    1d20:	00000097          	auipc	ra,0x0
    1d24:	ddc080e7          	jalr	-548(ra) # 1afc <print_string>
    1d28:	000b8413          	mv	s0,s7
    1d2c:	00140413          	addi	s0,s0,1
    1d30:	f9dff06f          	j	1ccc <printf+0x68>
    1d34:	03451063          	bne	a0,s4,1d54 <printf+0xf0>
    1d38:	00c12783          	lw	a5,12(sp)
    1d3c:	0007a503          	lw	a0,0(a5)
    1d40:	00478713          	addi	a4,a5,4
    1d44:	00e12623          	sw	a4,12(sp)
    1d48:	00000097          	auipc	ra,0x0
    1d4c:	f10080e7          	jalr	-240(ra) # 1c58 <print_hex>
    1d50:	fd9ff06f          	j	1d28 <printf+0xc4>
    1d54:	03551063          	bne	a0,s5,1d74 <printf+0x110>
    1d58:	00c12783          	lw	a5,12(sp)
    1d5c:	0007a503          	lw	a0,0(a5)
    1d60:	00478713          	addi	a4,a5,4
    1d64:	00e12623          	sw	a4,12(sp)
    1d68:	00000097          	auipc	ra,0x0
    1d6c:	dd8080e7          	jalr	-552(ra) # 1b40 <print_dec>
    1d70:	fb9ff06f          	j	1d28 <printf+0xc4>
    1d74:	7404a783          	lw	a5,1856(s1) # 5740 <f_putchar>
    1d78:	01651a63          	bne	a0,s6,1d8c <printf+0x128>
    1d7c:	00c12703          	lw	a4,12(sp)
    1d80:	00072503          	lw	a0,0(a4)
    1d84:	00470693          	addi	a3,a4,4
    1d88:	00d12623          	sw	a3,12(sp)
    1d8c:	000780e7          	jalr	a5
    1d90:	f99ff06f          	j	1d28 <printf+0xc4>
    1d94:	7404a783          	lw	a5,1856(s1)
    1d98:	000780e7          	jalr	a5
    1d9c:	f91ff06f          	j	1d2c <printf+0xc8>

00001da0 <__mulsi3>:
    1da0:	00050793          	mv	a5,a0
    1da4:	00000513          	li	a0,0
    1da8:	00079463          	bnez	a5,1db0 <__mulsi3+0x10>
    1dac:	00008067          	ret
    1db0:	01f79693          	slli	a3,a5,0x1f
    1db4:	41f6d713          	srai	a4,a3,0x1f
    1db8:	00b77733          	and	a4,a4,a1
    1dbc:	00e50533          	add	a0,a0,a4
    1dc0:	0017d793          	srli	a5,a5,0x1
    1dc4:	00159593          	slli	a1,a1,0x1
    1dc8:	fe1ff06f          	j	1da8 <__mulsi3+0x8>

00001dcc <fat_list_insert_last>:
    1dcc:	00452783          	lw	a5,4(a0)
    1dd0:	04079263          	bnez	a5,1e14 <fat_list_insert_last+0x48>
    1dd4:	00052783          	lw	a5,0(a0)
    1dd8:	00079c63          	bnez	a5,1df0 <fat_list_insert_last+0x24>
    1ddc:	00b52023          	sw	a1,0(a0)
    1de0:	00b52223          	sw	a1,4(a0)
    1de4:	0005a023          	sw	zero,0(a1)
    1de8:	0005a223          	sw	zero,4(a1)
    1dec:	00008067          	ret
    1df0:	0007a703          	lw	a4,0(a5)
    1df4:	00f5a223          	sw	a5,4(a1)
    1df8:	00e5a023          	sw	a4,0(a1)
    1dfc:	00071863          	bnez	a4,1e0c <fat_list_insert_last+0x40>
    1e00:	00b52023          	sw	a1,0(a0)
    1e04:	00b7a023          	sw	a1,0(a5)
    1e08:	00008067          	ret
    1e0c:	00b72223          	sw	a1,4(a4)
    1e10:	ff5ff06f          	j	1e04 <fat_list_insert_last+0x38>
    1e14:	0047a703          	lw	a4,4(a5)
    1e18:	00f5a023          	sw	a5,0(a1)
    1e1c:	00e5a223          	sw	a4,4(a1)
    1e20:	00071863          	bnez	a4,1e30 <fat_list_insert_last+0x64>
    1e24:	00b52223          	sw	a1,4(a0)
    1e28:	00b7a223          	sw	a1,4(a5)
    1e2c:	00008067          	ret
    1e30:	00b72023          	sw	a1,0(a4)
    1e34:	ff5ff06f          	j	1e28 <fat_list_insert_last+0x5c>

00001e38 <FileString_StrCmpNoCase>:
    1e38:	00050e93          	mv	t4,a0
    1e3c:	00000793          	li	a5,0
    1e40:	01900e13          	li	t3,25
    1e44:	00c79663          	bne	a5,a2,1e50 <FileString_StrCmpNoCase+0x18>
    1e48:	00000513          	li	a0,0
    1e4c:	00008067          	ret
    1e50:	00fe8733          	add	a4,t4,a5
    1e54:	00074803          	lbu	a6,0(a4)
    1e58:	00f58733          	add	a4,a1,a5
    1e5c:	00074883          	lbu	a7,0(a4)
    1e60:	fbf80713          	addi	a4,a6,-65
    1e64:	0ff77713          	zext.b	a4,a4
    1e68:	00080693          	mv	a3,a6
    1e6c:	00ee6663          	bltu	t3,a4,1e78 <FileString_StrCmpNoCase+0x40>
    1e70:	02080693          	addi	a3,a6,32
    1e74:	0ff6f693          	zext.b	a3,a3
    1e78:	fbf88313          	addi	t1,a7,-65
    1e7c:	0ff37313          	zext.b	t1,t1
    1e80:	00088713          	mv	a4,a7
    1e84:	006e6663          	bltu	t3,t1,1e90 <FileString_StrCmpNoCase+0x58>
    1e88:	02088713          	addi	a4,a7,32
    1e8c:	0ff77713          	zext.b	a4,a4
    1e90:	40e68533          	sub	a0,a3,a4
    1e94:	00e69863          	bne	a3,a4,1ea4 <FileString_StrCmpNoCase+0x6c>
    1e98:	00178793          	addi	a5,a5,1
    1e9c:	00088463          	beqz	a7,1ea4 <FileString_StrCmpNoCase+0x6c>
    1ea0:	fa0812e3          	bnez	a6,1e44 <FileString_StrCmpNoCase+0xc>
    1ea4:	00008067          	ret

00001ea8 <FileString_GetExtension>:
    1ea8:	00050793          	mv	a5,a0
    1eac:	fff00713          	li	a4,-1
    1eb0:	02e00613          	li	a2,46
    1eb4:	0007c683          	lbu	a3,0(a5)
    1eb8:	00069663          	bnez	a3,1ec4 <FileString_GetExtension+0x1c>
    1ebc:	00070513          	mv	a0,a4
    1ec0:	00008067          	ret
    1ec4:	00c69463          	bne	a3,a2,1ecc <FileString_GetExtension+0x24>
    1ec8:	40a78733          	sub	a4,a5,a0
    1ecc:	00178793          	addi	a5,a5,1
    1ed0:	fe5ff06f          	j	1eb4 <FileString_GetExtension+0xc>

00001ed4 <fatfs_fat_writeback>:
    1ed4:	00059e63          	bnez	a1,1ef0 <fatfs_fat_writeback+0x1c>
    1ed8:	00000513          	li	a0,0
    1edc:	00008067          	ret
    1ee0:	00000513          	li	a0,0
    1ee4:	01c12083          	lw	ra,28(sp)
    1ee8:	02010113          	addi	sp,sp,32
    1eec:	00008067          	ret
    1ef0:	2045a783          	lw	a5,516(a1)
    1ef4:	04078e63          	beqz	a5,1f50 <fatfs_fat_writeback+0x7c>
    1ef8:	03852683          	lw	a3,56(a0)
    1efc:	00050793          	mv	a5,a0
    1f00:	04068663          	beqz	a3,1f4c <fatfs_fat_writeback+0x78>
    1f04:	0147a703          	lw	a4,20(a5)
    1f08:	2005a503          	lw	a0,512(a1)
    1f0c:	0207a803          	lw	a6,32(a5)
    1f10:	00100613          	li	a2,1
    1f14:	fe010113          	addi	sp,sp,-32
    1f18:	40e607b3          	sub	a5,a2,a4
    1f1c:	00112e23          	sw	ra,28(sp)
    1f20:	00a787b3          	add	a5,a5,a0
    1f24:	00f87663          	bgeu	a6,a5,1f30 <fatfs_fat_writeback+0x5c>
    1f28:	01070733          	add	a4,a4,a6
    1f2c:	40a70633          	sub	a2,a4,a0
    1f30:	00b12623          	sw	a1,12(sp)
    1f34:	000680e7          	jalr	a3
    1f38:	fa0504e3          	beqz	a0,1ee0 <fatfs_fat_writeback+0xc>
    1f3c:	00c12583          	lw	a1,12(sp)
    1f40:	00100513          	li	a0,1
    1f44:	2005a223          	sw	zero,516(a1)
    1f48:	f9dff06f          	j	1ee4 <fatfs_fat_writeback+0x10>
    1f4c:	2005a223          	sw	zero,516(a1)
    1f50:	00100513          	li	a0,1
    1f54:	00008067          	ret

00001f58 <fatfs_fat_read_sector>:
    1f58:	fe010113          	addi	sp,sp,-32
    1f5c:	01212823          	sw	s2,16(sp)
    1f60:	25452903          	lw	s2,596(a0)
    1f64:	00812c23          	sw	s0,24(sp)
    1f68:	00112e23          	sw	ra,28(sp)
    1f6c:	00912a23          	sw	s1,20(sp)
    1f70:	01312623          	sw	s3,12(sp)
    1f74:	00000413          	li	s0,0
    1f78:	04091463          	bnez	s2,1fc0 <fatfs_fat_read_sector+0x68>
    1f7c:	25452783          	lw	a5,596(a0)
    1f80:	00058493          	mv	s1,a1
    1f84:	00050993          	mv	s3,a0
    1f88:	20f42623          	sw	a5,524(s0)
    1f8c:	20442783          	lw	a5,516(s0)
    1f90:	24852a23          	sw	s0,596(a0)
    1f94:	08079863          	bnez	a5,2024 <fatfs_fat_read_sector+0xcc>
    1f98:	0349a783          	lw	a5,52(s3)
    1f9c:	20942023          	sw	s1,512(s0)
    1fa0:	00100613          	li	a2,1
    1fa4:	00040593          	mv	a1,s0
    1fa8:	00048513          	mv	a0,s1
    1fac:	000780e7          	jalr	a5
    1fb0:	08051463          	bnez	a0,2038 <fatfs_fat_read_sector+0xe0>
    1fb4:	fff00793          	li	a5,-1
    1fb8:	20f42023          	sw	a5,512(s0)
    1fbc:	0480006f          	j	2004 <fatfs_fat_read_sector+0xac>
    1fc0:	20092783          	lw	a5,512(s2)
    1fc4:	00f5e663          	bltu	a1,a5,1fd0 <fatfs_fat_read_sector+0x78>
    1fc8:	00178713          	addi	a4,a5,1
    1fcc:	02e5e463          	bltu	a1,a4,1ff4 <fatfs_fat_read_sector+0x9c>
    1fd0:	20c92783          	lw	a5,524(s2)
    1fd4:	00079663          	bnez	a5,1fe0 <fatfs_fat_read_sector+0x88>
    1fd8:	00040a63          	beqz	s0,1fec <fatfs_fat_read_sector+0x94>
    1fdc:	20042623          	sw	zero,524(s0)
    1fe0:	00090413          	mv	s0,s2
    1fe4:	20c92903          	lw	s2,524(s2)
    1fe8:	f91ff06f          	j	1f78 <fatfs_fat_read_sector+0x20>
    1fec:	24052a23          	sw	zero,596(a0)
    1ff0:	ff1ff06f          	j	1fe0 <fatfs_fat_read_sector+0x88>
    1ff4:	40f585b3          	sub	a1,a1,a5
    1ff8:	00959593          	slli	a1,a1,0x9
    1ffc:	00b905b3          	add	a1,s2,a1
    2000:	20b92423          	sw	a1,520(s2)
    2004:	01c12083          	lw	ra,28(sp)
    2008:	01812403          	lw	s0,24(sp)
    200c:	01412483          	lw	s1,20(sp)
    2010:	00c12983          	lw	s3,12(sp)
    2014:	00090513          	mv	a0,s2
    2018:	01012903          	lw	s2,16(sp)
    201c:	02010113          	addi	sp,sp,32
    2020:	00008067          	ret
    2024:	00040593          	mv	a1,s0
    2028:	00000097          	auipc	ra,0x0
    202c:	eac080e7          	jalr	-340(ra) # 1ed4 <fatfs_fat_writeback>
    2030:	f60514e3          	bnez	a0,1f98 <fatfs_fat_read_sector+0x40>
    2034:	fd1ff06f          	j	2004 <fatfs_fat_read_sector+0xac>
    2038:	20842423          	sw	s0,520(s0)
    203c:	00040913          	mv	s2,s0
    2040:	fc5ff06f          	j	2004 <fatfs_fat_read_sector+0xac>

00002044 <_allocate_file>:
    2044:	000057b7          	lui	a5,0x5
    2048:	74478793          	addi	a5,a5,1860 # 5744 <_free_file_list>
    204c:	0007a583          	lw	a1,0(a5)
    2050:	06058263          	beqz	a1,20b4 <_allocate_file+0x70>
    2054:	0005a703          	lw	a4,0(a1)
    2058:	fe010113          	addi	sp,sp,-32
    205c:	00112e23          	sw	ra,28(sp)
    2060:	0045a683          	lw	a3,4(a1)
    2064:	04071063          	bnez	a4,20a4 <_allocate_file+0x60>
    2068:	00d7a023          	sw	a3,0(a5)
    206c:	0045a683          	lw	a3,4(a1)
    2070:	02069e63          	bnez	a3,20ac <_allocate_file+0x68>
    2074:	00e7a223          	sw	a4,4(a5)
    2078:	00005537          	lui	a0,0x5
    207c:	74c50513          	addi	a0,a0,1868 # 574c <_open_file_list>
    2080:	00b12623          	sw	a1,12(sp)
    2084:	00000097          	auipc	ra,0x0
    2088:	d48080e7          	jalr	-696(ra) # 1dcc <fat_list_insert_last>
    208c:	00c12583          	lw	a1,12(sp)
    2090:	01c12083          	lw	ra,28(sp)
    2094:	bc458593          	addi	a1,a1,-1084
    2098:	00058513          	mv	a0,a1
    209c:	02010113          	addi	sp,sp,32
    20a0:	00008067          	ret
    20a4:	00d72223          	sw	a3,4(a4)
    20a8:	fc5ff06f          	j	206c <_allocate_file+0x28>
    20ac:	00e6a023          	sw	a4,0(a3)
    20b0:	fc9ff06f          	j	2078 <_allocate_file+0x34>
    20b4:	00058513          	mv	a0,a1
    20b8:	00008067          	ret

000020bc <_free_file>:
    20bc:	43c52783          	lw	a5,1084(a0)
    20c0:	44052703          	lw	a4,1088(a0)
    20c4:	43c50593          	addi	a1,a0,1084
    20c8:	02079663          	bnez	a5,20f4 <_free_file+0x38>
    20cc:	000056b7          	lui	a3,0x5
    20d0:	74e6a623          	sw	a4,1868(a3) # 574c <_open_file_list>
    20d4:	44052703          	lw	a4,1088(a0)
    20d8:	02071263          	bnez	a4,20fc <_free_file+0x40>
    20dc:	00005737          	lui	a4,0x5
    20e0:	74f72823          	sw	a5,1872(a4) # 5750 <_open_file_list+0x4>
    20e4:	00005537          	lui	a0,0x5
    20e8:	74450513          	addi	a0,a0,1860 # 5744 <_free_file_list>
    20ec:	00000317          	auipc	t1,0x0
    20f0:	ce030067          	jr	-800(t1) # 1dcc <fat_list_insert_last>
    20f4:	00e7a223          	sw	a4,4(a5)
    20f8:	fddff06f          	j	20d4 <_free_file+0x18>
    20fc:	00f72023          	sw	a5,0(a4)
    2100:	fe5ff06f          	j	20e4 <_free_file+0x28>

00002104 <fatfs_lba_of_cluster>:
    2104:	ff010113          	addi	sp,sp,-16
    2108:	00812423          	sw	s0,8(sp)
    210c:	00112623          	sw	ra,12(sp)
    2110:	00050413          	mv	s0,a0
    2114:	ffe58513          	addi	a0,a1,-2
    2118:	00044583          	lbu	a1,0(s0)
    211c:	00000097          	auipc	ra,0x0
    2120:	c84080e7          	jalr	-892(ra) # 1da0 <__mulsi3>
    2124:	00442783          	lw	a5,4(s0)
    2128:	00f50533          	add	a0,a0,a5
    212c:	03042783          	lw	a5,48(s0)
    2130:	00079863          	bnez	a5,2140 <fatfs_lba_of_cluster+0x3c>
    2134:	02845783          	lhu	a5,40(s0)
    2138:	4047d793          	srai	a5,a5,0x4
    213c:	00f50533          	add	a0,a0,a5
    2140:	00c12083          	lw	ra,12(sp)
    2144:	00812403          	lw	s0,8(sp)
    2148:	01010113          	addi	sp,sp,16
    214c:	00008067          	ret

00002150 <fatfs_sector_read>:
    2150:	03452783          	lw	a5,52(a0)
    2154:	00058713          	mv	a4,a1
    2158:	00070513          	mv	a0,a4
    215c:	00060593          	mv	a1,a2
    2160:	00068613          	mv	a2,a3
    2164:	00078067          	jr	a5

00002168 <fatfs_sector_write>:
    2168:	03852783          	lw	a5,56(a0)
    216c:	00058713          	mv	a4,a1
    2170:	00070513          	mv	a0,a4
    2174:	00060593          	mv	a1,a2
    2178:	00068613          	mv	a2,a3
    217c:	00078067          	jr	a5

00002180 <fatfs_write_sector>:
    2180:	03852703          	lw	a4,56(a0)
    2184:	0a070463          	beqz	a4,222c <fatfs_write_sector+0xac>
    2188:	03052883          	lw	a7,48(a0)
    218c:	00050793          	mv	a5,a0
    2190:	0115e833          	or	a6,a1,a7
    2194:	02081e63          	bnez	a6,21d0 <fatfs_write_sector+0x50>
    2198:	01052583          	lw	a1,16(a0)
    219c:	08b67863          	bgeu	a2,a1,222c <fatfs_write_sector+0xac>
    21a0:	01c52503          	lw	a0,28(a0)
    21a4:	00c7a583          	lw	a1,12(a5)
    21a8:	00b50533          	add	a0,a0,a1
    21ac:	00c50533          	add	a0,a0,a2
    21b0:	00068863          	beqz	a3,21c0 <fatfs_write_sector+0x40>
    21b4:	00100613          	li	a2,1
    21b8:	00068593          	mv	a1,a3
    21bc:	00070067          	jr	a4
    21c0:	24a7a223          	sw	a0,580(a5)
    21c4:	00100613          	li	a2,1
    21c8:	04478593          	addi	a1,a5,68
    21cc:	ff1ff06f          	j	21bc <fatfs_write_sector+0x3c>
    21d0:	fe010113          	addi	sp,sp,-32
    21d4:	00e12623          	sw	a4,12(sp)
    21d8:	00d12423          	sw	a3,8(sp)
    21dc:	00c12223          	sw	a2,4(sp)
    21e0:	00112e23          	sw	ra,28(sp)
    21e4:	00a12023          	sw	a0,0(sp)
    21e8:	00000097          	auipc	ra,0x0
    21ec:	f1c080e7          	jalr	-228(ra) # 2104 <fatfs_lba_of_cluster>
    21f0:	00412603          	lw	a2,4(sp)
    21f4:	00812683          	lw	a3,8(sp)
    21f8:	00012783          	lw	a5,0(sp)
    21fc:	00c12703          	lw	a4,12(sp)
    2200:	00a60533          	add	a0,a2,a0
    2204:	00068c63          	beqz	a3,221c <fatfs_write_sector+0x9c>
    2208:	00100613          	li	a2,1
    220c:	00068593          	mv	a1,a3
    2210:	01c12083          	lw	ra,28(sp)
    2214:	02010113          	addi	sp,sp,32
    2218:	fa5ff06f          	j	21bc <fatfs_write_sector+0x3c>
    221c:	24a7a223          	sw	a0,580(a5)
    2220:	00100613          	li	a2,1
    2224:	04478593          	addi	a1,a5,68
    2228:	fe9ff06f          	j	2210 <fatfs_write_sector+0x90>
    222c:	00000513          	li	a0,0
    2230:	00008067          	ret

00002234 <fl_init>:
    2234:	ff010113          	addi	sp,sp,-16
    2238:	00005537          	lui	a0,0x5
    223c:	000057b7          	lui	a5,0x5
    2240:	0000c5b7          	lui	a1,0xc
    2244:	00112623          	sw	ra,12(sp)
    2248:	74450513          	addi	a0,a0,1860 # 5744 <_free_file_list>
    224c:	74c78793          	addi	a5,a5,1868 # 574c <_open_file_list>
    2250:	28058593          	addi	a1,a1,640 # c280 <_files+0x43c>
    2254:	00052223          	sw	zero,4(a0)
    2258:	00052023          	sw	zero,0(a0)
    225c:	0007a223          	sw	zero,4(a5)
    2260:	0007a023          	sw	zero,0(a5)
    2264:	00000097          	auipc	ra,0x0
    2268:	b68080e7          	jalr	-1176(ra) # 1dcc <fat_list_insert_last>
    226c:	000057b7          	lui	a5,0x5
    2270:	0000c5b7          	lui	a1,0xc
    2274:	74478513          	addi	a0,a5,1860 # 5744 <_free_file_list>
    2278:	6c458593          	addi	a1,a1,1732 # c6c4 <_files+0x880>
    227c:	00000097          	auipc	ra,0x0
    2280:	b50080e7          	jalr	-1200(ra) # 1dcc <fat_list_insert_last>
    2284:	00c12083          	lw	ra,12(sp)
    2288:	000057b7          	lui	a5,0x5
    228c:	00100713          	li	a4,1
    2290:	74e7ac23          	sw	a4,1880(a5) # 5758 <_filelib_init>
    2294:	01010113          	addi	sp,sp,16
    2298:	00008067          	ret

0000229c <fl_closedir>:
    229c:	00000513          	li	a0,0
    22a0:	00008067          	ret

000022a4 <fatfs_lfn_cache_entry>:
    22a4:	0005c783          	lbu	a5,0(a1)
    22a8:	01300693          	li	a3,19
    22ac:	01f7f793          	andi	a5,a5,31
    22b0:	fff78713          	addi	a4,a5,-1
    22b4:	0ff77613          	zext.b	a2,a4
    22b8:	0ac6ea63          	bltu	a3,a2,236c <fatfs_lfn_cache_entry+0xc8>
    22bc:	10554683          	lbu	a3,261(a0)
    22c0:	00069463          	bnez	a3,22c8 <fatfs_lfn_cache_entry+0x24>
    22c4:	10f502a3          	sb	a5,261(a0)
    22c8:	00171793          	slli	a5,a4,0x1
    22cc:	00e787b3          	add	a5,a5,a4
    22d0:	0015c683          	lbu	a3,1(a1)
    22d4:	00279793          	slli	a5,a5,0x2
    22d8:	00e787b3          	add	a5,a5,a4
    22dc:	00f50533          	add	a0,a0,a5
    22e0:	00d50023          	sb	a3,0(a0)
    22e4:	0035c783          	lbu	a5,3(a1)
    22e8:	0ff00713          	li	a4,255
    22ec:	02000693          	li	a3,32
    22f0:	00f500a3          	sb	a5,1(a0)
    22f4:	0055c783          	lbu	a5,5(a1)
    22f8:	00f50123          	sb	a5,2(a0)
    22fc:	0075c783          	lbu	a5,7(a1)
    2300:	00f501a3          	sb	a5,3(a0)
    2304:	0095c783          	lbu	a5,9(a1)
    2308:	00f50223          	sb	a5,4(a0)
    230c:	00e5c783          	lbu	a5,14(a1)
    2310:	00f502a3          	sb	a5,5(a0)
    2314:	0105c783          	lbu	a5,16(a1)
    2318:	00f50323          	sb	a5,6(a0)
    231c:	0125c783          	lbu	a5,18(a1)
    2320:	00f503a3          	sb	a5,7(a0)
    2324:	0145c783          	lbu	a5,20(a1)
    2328:	00f50423          	sb	a5,8(a0)
    232c:	0165c783          	lbu	a5,22(a1)
    2330:	00f504a3          	sb	a5,9(a0)
    2334:	0185c783          	lbu	a5,24(a1)
    2338:	00f50523          	sb	a5,10(a0)
    233c:	01c5c783          	lbu	a5,28(a1)
    2340:	00f505a3          	sb	a5,11(a0)
    2344:	01e5c783          	lbu	a5,30(a1)
    2348:	00f50623          	sb	a5,12(a0)
    234c:	00d00793          	li	a5,13
    2350:	00054603          	lbu	a2,0(a0)
    2354:	00e61463          	bne	a2,a4,235c <fatfs_lfn_cache_entry+0xb8>
    2358:	00d50023          	sb	a3,0(a0)
    235c:	fff78793          	addi	a5,a5,-1
    2360:	0ff7f793          	zext.b	a5,a5
    2364:	00150513          	addi	a0,a0,1
    2368:	fe0794e3          	bnez	a5,2350 <fatfs_lfn_cache_entry+0xac>
    236c:	00008067          	ret

00002370 <fatfs_lfn_cache_get>:
    2370:	10554703          	lbu	a4,261(a0)
    2374:	01400793          	li	a5,20
    2378:	00f71663          	bne	a4,a5,2384 <fatfs_lfn_cache_get+0x14>
    237c:	10050223          	sb	zero,260(a0)
    2380:	00008067          	ret
    2384:	02070063          	beqz	a4,23a4 <fatfs_lfn_cache_get+0x34>
    2388:	00171793          	slli	a5,a4,0x1
    238c:	00e787b3          	add	a5,a5,a4
    2390:	00279793          	slli	a5,a5,0x2
    2394:	00e787b3          	add	a5,a5,a4
    2398:	00f507b3          	add	a5,a0,a5
    239c:	00078023          	sb	zero,0(a5)
    23a0:	00008067          	ret
    23a4:	00050023          	sb	zero,0(a0)
    23a8:	00008067          	ret

000023ac <fatfs_entry_lfn_text>:
    23ac:	00b54503          	lbu	a0,11(a0)
    23b0:	00f57513          	andi	a0,a0,15
    23b4:	ff150513          	addi	a0,a0,-15
    23b8:	00153513          	seqz	a0,a0
    23bc:	00008067          	ret

000023c0 <fatfs_entry_lfn_invalid>:
    23c0:	00054783          	lbu	a5,0(a0)
    23c4:	f1b78713          	addi	a4,a5,-229
    23c8:	02070263          	beqz	a4,23ec <fatfs_entry_lfn_invalid+0x2c>
    23cc:	02078063          	beqz	a5,23ec <fatfs_entry_lfn_invalid+0x2c>
    23d0:	00b54783          	lbu	a5,11(a0)
    23d4:	00800713          	li	a4,8
    23d8:	00100513          	li	a0,1
    23dc:	00e78a63          	beq	a5,a4,23f0 <fatfs_entry_lfn_invalid+0x30>
    23e0:	0067f793          	andi	a5,a5,6
    23e4:	00f03533          	snez	a0,a5
    23e8:	00008067          	ret
    23ec:	00100513          	li	a0,1
    23f0:	00008067          	ret

000023f4 <fatfs_entry_lfn_exists>:
    23f4:	00b5c783          	lbu	a5,11(a1)
    23f8:	00f00713          	li	a4,15
    23fc:	04e78063          	beq	a5,a4,243c <fatfs_entry_lfn_exists+0x48>
    2400:	0005c683          	lbu	a3,0(a1)
    2404:	f1b68713          	addi	a4,a3,-229
    2408:	00e03733          	snez	a4,a4
    240c:	00d036b3          	snez	a3,a3
    2410:	00d77733          	and	a4,a4,a3
    2414:	02070463          	beqz	a4,243c <fatfs_entry_lfn_exists+0x48>
    2418:	ff878713          	addi	a4,a5,-8
    241c:	02070063          	beqz	a4,243c <fatfs_entry_lfn_exists+0x48>
    2420:	0067f713          	andi	a4,a5,6
    2424:	00000793          	li	a5,0
    2428:	00071663          	bnez	a4,2434 <fatfs_entry_lfn_exists+0x40>
    242c:	10554783          	lbu	a5,261(a0)
    2430:	00f037b3          	snez	a5,a5
    2434:	00078513          	mv	a0,a5
    2438:	00008067          	ret
    243c:	00000793          	li	a5,0
    2440:	ff5ff06f          	j	2434 <fatfs_entry_lfn_exists+0x40>

00002444 <fatfs_entry_sfn_only>:
    2444:	00b54783          	lbu	a5,11(a0)
    2448:	00f00713          	li	a4,15
    244c:	02e78863          	beq	a5,a4,247c <fatfs_entry_sfn_only+0x38>
    2450:	00054683          	lbu	a3,0(a0)
    2454:	f1b68713          	addi	a4,a3,-229
    2458:	00e03733          	snez	a4,a4
    245c:	00d036b3          	snez	a3,a3
    2460:	00d77733          	and	a4,a4,a3
    2464:	00070c63          	beqz	a4,247c <fatfs_entry_sfn_only+0x38>
    2468:	ff878713          	addi	a4,a5,-8
    246c:	00070863          	beqz	a4,247c <fatfs_entry_sfn_only+0x38>
    2470:	0067f513          	andi	a0,a5,6
    2474:	00153513          	seqz	a0,a0
    2478:	00008067          	ret
    247c:	00000513          	li	a0,0
    2480:	00008067          	ret

00002484 <fatfs_entry_is_dir>:
    2484:	00b54503          	lbu	a0,11(a0)
    2488:	00455513          	srli	a0,a0,0x4
    248c:	00157513          	andi	a0,a0,1
    2490:	00008067          	ret

00002494 <fatfs_lfn_entries_required>:
    2494:	ff010113          	addi	sp,sp,-16
    2498:	00112623          	sw	ra,12(sp)
    249c:	fffff097          	auipc	ra,0xfffff
    24a0:	1f4080e7          	jalr	500(ra) # 1690 <strlen>
    24a4:	00050a63          	beqz	a0,24b8 <fatfs_lfn_entries_required+0x24>
    24a8:	00d00593          	li	a1,13
    24ac:	00c50513          	addi	a0,a0,12
    24b0:	fffff097          	auipc	ra,0xfffff
    24b4:	0ec080e7          	jalr	236(ra) # 159c <__divsi3>
    24b8:	00c12083          	lw	ra,12(sp)
    24bc:	01010113          	addi	sp,sp,16
    24c0:	00008067          	ret

000024c4 <fatfs_filename_to_lfn>:
    24c4:	f9010113          	addi	sp,sp,-112
    24c8:	06812423          	sw	s0,104(sp)
    24cc:	00058413          	mv	s0,a1
    24d0:	000055b7          	lui	a1,0x5
    24d4:	4ec58593          	addi	a1,a1,1260 # 54ec <font+0x1e0>
    24d8:	06912223          	sw	s1,100(sp)
    24dc:	05312e23          	sw	s3,92(sp)
    24e0:	00060493          	mv	s1,a2
    24e4:	00050993          	mv	s3,a0
    24e8:	03400613          	li	a2,52
    24ec:	01c10513          	addi	a0,sp,28
    24f0:	00d12623          	sw	a3,12(sp)
    24f4:	06112623          	sw	ra,108(sp)
    24f8:	07212023          	sw	s2,96(sp)
    24fc:	05412c23          	sw	s4,88(sp)
    2500:	fffff097          	auipc	ra,0xfffff
    2504:	16c080e7          	jalr	364(ra) # 166c <memcpy>
    2508:	00098513          	mv	a0,s3
    250c:	fffff097          	auipc	ra,0xfffff
    2510:	184080e7          	jalr	388(ra) # 1690 <strlen>
    2514:	00050913          	mv	s2,a0
    2518:	00098513          	mv	a0,s3
    251c:	00000097          	auipc	ra,0x0
    2520:	f78080e7          	jalr	-136(ra) # 2494 <fatfs_lfn_entries_required>
    2524:	00050a13          	mv	s4,a0
    2528:	02000613          	li	a2,32
    252c:	00000593          	li	a1,0
    2530:	00040513          	mv	a0,s0
    2534:	fffff097          	auipc	ra,0xfffff
    2538:	11c080e7          	jalr	284(ra) # 1650 <memset>
    253c:	fffa0713          	addi	a4,s4,-1 # 3fff <fatfs_set_fs_info_next_free_cluster+0x9f>
    2540:	00c12683          	lw	a3,12(sp)
    2544:	00148793          	addi	a5,s1,1
    2548:	00971463          	bne	a4,s1,2550 <fatfs_filename_to_lfn+0x8c>
    254c:	0407e793          	ori	a5,a5,64
    2550:	00149613          	slli	a2,s1,0x1
    2554:	00960633          	add	a2,a2,s1
    2558:	00f40023          	sb	a5,0(s0)
    255c:	00261613          	slli	a2,a2,0x2
    2560:	00f00793          	li	a5,15
    2564:	00f405a3          	sb	a5,11(s0)
    2568:	00d406a3          	sb	a3,13(s0)
    256c:	01c10793          	addi	a5,sp,28
    2570:	00960633          	add	a2,a2,s1
    2574:	fff00693          	li	a3,-1
    2578:	0007a703          	lw	a4,0(a5)
    257c:	00e40733          	add	a4,s0,a4
    2580:	05265063          	bge	a2,s2,25c0 <fatfs_filename_to_lfn+0xfc>
    2584:	00c985b3          	add	a1,s3,a2
    2588:	0005c583          	lbu	a1,0(a1)
    258c:	00b70023          	sb	a1,0(a4)
    2590:	00478793          	addi	a5,a5,4
    2594:	05010713          	addi	a4,sp,80
    2598:	00160613          	addi	a2,a2,1
    259c:	fce79ee3          	bne	a5,a4,2578 <fatfs_filename_to_lfn+0xb4>
    25a0:	06c12083          	lw	ra,108(sp)
    25a4:	06812403          	lw	s0,104(sp)
    25a8:	06412483          	lw	s1,100(sp)
    25ac:	06012903          	lw	s2,96(sp)
    25b0:	05c12983          	lw	s3,92(sp)
    25b4:	05812a03          	lw	s4,88(sp)
    25b8:	07010113          	addi	sp,sp,112
    25bc:	00008067          	ret
    25c0:	01261663          	bne	a2,s2,25cc <fatfs_filename_to_lfn+0x108>
    25c4:	00070023          	sb	zero,0(a4)
    25c8:	fc9ff06f          	j	2590 <fatfs_filename_to_lfn+0xcc>
    25cc:	00d70023          	sb	a3,0(a4)
    25d0:	00d700a3          	sb	a3,1(a4)
    25d4:	fbdff06f          	j	2590 <fatfs_filename_to_lfn+0xcc>

000025d8 <fatfs_sfn_create_entry>:
    25d8:	00000793          	li	a5,0
    25dc:	00b00813          	li	a6,11
    25e0:	00f508b3          	add	a7,a0,a5
    25e4:	0008c303          	lbu	t1,0(a7)
    25e8:	00f688b3          	add	a7,a3,a5
    25ec:	00178793          	addi	a5,a5,1
    25f0:	00688023          	sb	t1,0(a7)
    25f4:	ff0796e3          	bne	a5,a6,25e0 <fatfs_sfn_create_entry+0x8>
    25f8:	00e03733          	snez	a4,a4
    25fc:	40e00733          	neg	a4,a4
    2600:	02000793          	li	a5,32
    2604:	ff077713          	andi	a4,a4,-16
    2608:	00f70733          	add	a4,a4,a5
    260c:	00f68823          	sb	a5,16(a3)
    2610:	00f68923          	sb	a5,18(a3)
    2614:	00f68c23          	sb	a5,24(a3)
    2618:	01065793          	srli	a5,a2,0x10
    261c:	00f68a23          	sb	a5,20(a3)
    2620:	01865793          	srli	a5,a2,0x18
    2624:	00f68aa3          	sb	a5,21(a3)
    2628:	0085d793          	srli	a5,a1,0x8
    262c:	00c68d23          	sb	a2,26(a3)
    2630:	00b68e23          	sb	a1,28(a3)
    2634:	00865613          	srli	a2,a2,0x8
    2638:	00f68ea3          	sb	a5,29(a3)
    263c:	0105d793          	srli	a5,a1,0x10
    2640:	0185d593          	srli	a1,a1,0x18
    2644:	000686a3          	sb	zero,13(a3)
    2648:	00068723          	sb	zero,14(a3)
    264c:	000687a3          	sb	zero,15(a3)
    2650:	000688a3          	sb	zero,17(a3)
    2654:	000689a3          	sb	zero,19(a3)
    2658:	00068b23          	sb	zero,22(a3)
    265c:	00068ba3          	sb	zero,23(a3)
    2660:	00068ca3          	sb	zero,25(a3)
    2664:	00e685a3          	sb	a4,11(a3)
    2668:	00068623          	sb	zero,12(a3)
    266c:	00c68da3          	sb	a2,27(a3)
    2670:	00f68f23          	sb	a5,30(a3)
    2674:	00b68fa3          	sb	a1,31(a3)
    2678:	00008067          	ret

0000267c <fatfs_lfn_create_sfn>:
    267c:	fd010113          	addi	sp,sp,-48
    2680:	02912223          	sw	s1,36(sp)
    2684:	00050493          	mv	s1,a0
    2688:	00058513          	mv	a0,a1
    268c:	02812423          	sw	s0,40(sp)
    2690:	01312e23          	sw	s3,28(sp)
    2694:	00058413          	mv	s0,a1
    2698:	02112623          	sw	ra,44(sp)
    269c:	03212023          	sw	s2,32(sp)
    26a0:	fffff097          	auipc	ra,0xfffff
    26a4:	ff0080e7          	jalr	-16(ra) # 1690 <strlen>
    26a8:	00044783          	lbu	a5,0(s0)
    26ac:	02e00993          	li	s3,46
    26b0:	15378063          	beq	a5,s3,27f0 <fatfs_lfn_create_sfn+0x174>
    26b4:	00b00613          	li	a2,11
    26b8:	02000593          	li	a1,32
    26bc:	00050913          	mv	s2,a0
    26c0:	00048513          	mv	a0,s1
    26c4:	fffff097          	auipc	ra,0xfffff
    26c8:	f8c080e7          	jalr	-116(ra) # 1650 <memset>
    26cc:	00300613          	li	a2,3
    26d0:	02000593          	li	a1,32
    26d4:	00c10513          	addi	a0,sp,12
    26d8:	fffff097          	auipc	ra,0xfffff
    26dc:	f78080e7          	jalr	-136(ra) # 1650 <memset>
    26e0:	fff00793          	li	a5,-1
    26e4:	00000713          	li	a4,0
    26e8:	0d274263          	blt	a4,s2,27ac <fatfs_lfn_create_sfn+0x130>
    26ec:	fff00713          	li	a4,-1
    26f0:	0ee78863          	beq	a5,a4,27e0 <fatfs_lfn_create_sfn+0x164>
    26f4:	00178713          	addi	a4,a5,1
    26f8:	00c10693          	addi	a3,sp,12
    26fc:	00478613          	addi	a2,a5,4
    2700:	0ce61263          	bne	a2,a4,27c4 <fatfs_lfn_create_sfn+0x148>
    2704:	00000613          	li	a2,0
    2708:	00000693          	li	a3,0
    270c:	01900813          	li	a6,25
    2710:	00800893          	li	a7,8
    2714:	02f6de63          	bge	a3,a5,2750 <fatfs_lfn_create_sfn+0xd4>
    2718:	00d40733          	add	a4,s0,a3
    271c:	00074703          	lbu	a4,0(a4)
    2720:	fe070513          	addi	a0,a4,-32
    2724:	0c050263          	beqz	a0,27e8 <fatfs_lfn_create_sfn+0x16c>
    2728:	fd270593          	addi	a1,a4,-46
    272c:	0a058e63          	beqz	a1,27e8 <fatfs_lfn_create_sfn+0x16c>
    2730:	f9f70593          	addi	a1,a4,-97
    2734:	0ff5f593          	zext.b	a1,a1
    2738:	00c48333          	add	t1,s1,a2
    273c:	00160613          	addi	a2,a2,1
    2740:	00b86463          	bltu	a6,a1,2748 <fatfs_lfn_create_sfn+0xcc>
    2744:	0ff57713          	zext.b	a4,a0
    2748:	00e30023          	sb	a4,0(t1)
    274c:	09161e63          	bne	a2,a7,27e8 <fatfs_lfn_create_sfn+0x16c>
    2750:	00c10793          	addi	a5,sp,12
    2754:	00800693          	li	a3,8
    2758:	01900513          	li	a0,25
    275c:	00b00593          	li	a1,11
    2760:	0007c703          	lbu	a4,0(a5)
    2764:	f9f70613          	addi	a2,a4,-97
    2768:	0ff67613          	zext.b	a2,a2
    276c:	00c56663          	bltu	a0,a2,2778 <fatfs_lfn_create_sfn+0xfc>
    2770:	fe070713          	addi	a4,a4,-32
    2774:	0ff77713          	zext.b	a4,a4
    2778:	00d48633          	add	a2,s1,a3
    277c:	00e60023          	sb	a4,0(a2)
    2780:	00168693          	addi	a3,a3,1
    2784:	00178793          	addi	a5,a5,1
    2788:	fcb69ce3          	bne	a3,a1,2760 <fatfs_lfn_create_sfn+0xe4>
    278c:	00100513          	li	a0,1
    2790:	02c12083          	lw	ra,44(sp)
    2794:	02812403          	lw	s0,40(sp)
    2798:	02412483          	lw	s1,36(sp)
    279c:	02012903          	lw	s2,32(sp)
    27a0:	01c12983          	lw	s3,28(sp)
    27a4:	03010113          	addi	sp,sp,48
    27a8:	00008067          	ret
    27ac:	00e406b3          	add	a3,s0,a4
    27b0:	0006c683          	lbu	a3,0(a3)
    27b4:	01369463          	bne	a3,s3,27bc <fatfs_lfn_create_sfn+0x140>
    27b8:	00070793          	mv	a5,a4
    27bc:	00170713          	addi	a4,a4,1
    27c0:	f29ff06f          	j	26e8 <fatfs_lfn_create_sfn+0x6c>
    27c4:	01275863          	bge	a4,s2,27d4 <fatfs_lfn_create_sfn+0x158>
    27c8:	00e405b3          	add	a1,s0,a4
    27cc:	0005c583          	lbu	a1,0(a1)
    27d0:	00b68023          	sb	a1,0(a3)
    27d4:	00170713          	addi	a4,a4,1
    27d8:	00168693          	addi	a3,a3,1
    27dc:	f25ff06f          	j	2700 <fatfs_lfn_create_sfn+0x84>
    27e0:	00090793          	mv	a5,s2
    27e4:	f21ff06f          	j	2704 <fatfs_lfn_create_sfn+0x88>
    27e8:	00168693          	addi	a3,a3,1
    27ec:	f29ff06f          	j	2714 <fatfs_lfn_create_sfn+0x98>
    27f0:	00000513          	li	a0,0
    27f4:	f9dff06f          	j	2790 <fatfs_lfn_create_sfn+0x114>

000027f8 <fatfs_lfn_generate_tail>:
    27f8:	000187b7          	lui	a5,0x18
    27fc:	69f78793          	addi	a5,a5,1695 # 1869f <__stacktop+0x869f>
    2800:	16c7e463          	bltu	a5,a2,2968 <fatfs_lfn_generate_tail+0x170>
    2804:	fa010113          	addi	sp,sp,-96
    2808:	04812c23          	sw	s0,88(sp)
    280c:	04912a23          	sw	s1,84(sp)
    2810:	03712e23          	sw	s7,60(sp)
    2814:	00060413          	mv	s0,a2
    2818:	00058b93          	mv	s7,a1
    281c:	00c00613          	li	a2,12
    2820:	00000593          	li	a1,0
    2824:	00050493          	mv	s1,a0
    2828:	00410513          	addi	a0,sp,4
    282c:	04112e23          	sw	ra,92(sp)
    2830:	05312623          	sw	s3,76(sp)
    2834:	05412423          	sw	s4,72(sp)
    2838:	05612023          	sw	s6,64(sp)
    283c:	05212823          	sw	s2,80(sp)
    2840:	05512223          	sw	s5,68(sp)
    2844:	fffff097          	auipc	ra,0xfffff
    2848:	e0c080e7          	jalr	-500(ra) # 1650 <memset>
    284c:	000055b7          	lui	a1,0x5
    2850:	07e00793          	li	a5,126
    2854:	01100613          	li	a2,17
    2858:	2c458593          	addi	a1,a1,708 # 52c4 <LEDS+0x188>
    285c:	01c10513          	addi	a0,sp,28
    2860:	01010993          	addi	s3,sp,16
    2864:	00f10223          	sb	a5,4(sp)
    2868:	00098a13          	mv	s4,s3
    286c:	fffff097          	auipc	ra,0xfffff
    2870:	e00080e7          	jalr	-512(ra) # 166c <memcpy>
    2874:	00900b13          	li	s6,9
    2878:	00a00593          	li	a1,10
    287c:	00040513          	mv	a0,s0
    2880:	fffff097          	auipc	ra,0xfffff
    2884:	d6c080e7          	jalr	-660(ra) # 15ec <__umodsi3>
    2888:	03050793          	addi	a5,a0,48
    288c:	00278533          	add	a0,a5,sp
    2890:	fec54783          	lbu	a5,-20(a0)
    2894:	00098913          	mv	s2,s3
    2898:	00040513          	mv	a0,s0
    289c:	00a00593          	li	a1,10
    28a0:	00f98023          	sb	a5,0(s3)
    28a4:	00040a93          	mv	s5,s0
    28a8:	fffff097          	auipc	ra,0xfffff
    28ac:	cfc080e7          	jalr	-772(ra) # 15a4 <__udivsi3>
    28b0:	00198993          	addi	s3,s3,1
    28b4:	00050413          	mv	s0,a0
    28b8:	fd5b60e3          	bltu	s6,s5,2878 <fatfs_lfn_generate_tail+0x80>
    28bc:	00098023          	sb	zero,0(s3)
    28c0:	00410713          	addi	a4,sp,4
    28c4:	00090793          	mv	a5,s2
    28c8:	0947f663          	bgeu	a5,s4,2954 <fatfs_lfn_generate_tail+0x15c>
    28cc:	00f10713          	addi	a4,sp,15
    28d0:	00000793          	li	a5,0
    28d4:	00e96663          	bltu	s2,a4,28e0 <fatfs_lfn_generate_tail+0xe8>
    28d8:	41490933          	sub	s2,s2,s4
    28dc:	00190793          	addi	a5,s2,1
    28e0:	03078793          	addi	a5,a5,48
    28e4:	002787b3          	add	a5,a5,sp
    28e8:	000b8593          	mv	a1,s7
    28ec:	fc078aa3          	sb	zero,-43(a5)
    28f0:	00b00613          	li	a2,11
    28f4:	00048513          	mv	a0,s1
    28f8:	fffff097          	auipc	ra,0xfffff
    28fc:	d74080e7          	jalr	-652(ra) # 166c <memcpy>
    2900:	00410513          	addi	a0,sp,4
    2904:	fffff097          	auipc	ra,0xfffff
    2908:	d8c080e7          	jalr	-628(ra) # 1690 <strlen>
    290c:	40a484b3          	sub	s1,s1,a0
    2910:	00050613          	mv	a2,a0
    2914:	00410593          	addi	a1,sp,4
    2918:	00848513          	addi	a0,s1,8
    291c:	fffff097          	auipc	ra,0xfffff
    2920:	d50080e7          	jalr	-688(ra) # 166c <memcpy>
    2924:	05c12083          	lw	ra,92(sp)
    2928:	05812403          	lw	s0,88(sp)
    292c:	05412483          	lw	s1,84(sp)
    2930:	05012903          	lw	s2,80(sp)
    2934:	04c12983          	lw	s3,76(sp)
    2938:	04812a03          	lw	s4,72(sp)
    293c:	04412a83          	lw	s5,68(sp)
    2940:	04012b03          	lw	s6,64(sp)
    2944:	03c12b83          	lw	s7,60(sp)
    2948:	00100513          	li	a0,1
    294c:	06010113          	addi	sp,sp,96
    2950:	00008067          	ret
    2954:	0007c683          	lbu	a3,0(a5)
    2958:	00170713          	addi	a4,a4,1
    295c:	fff78793          	addi	a5,a5,-1
    2960:	00d70023          	sb	a3,0(a4)
    2964:	f65ff06f          	j	28c8 <fatfs_lfn_generate_tail+0xd0>
    2968:	00000513          	li	a0,0
    296c:	00008067          	ret

00002970 <fatfs_total_path_levels>:
    2970:	fff00793          	li	a5,-1
    2974:	06050263          	beqz	a0,29d8 <fatfs_total_path_levels+0x68>
    2978:	00054703          	lbu	a4,0(a0)
    297c:	02f00793          	li	a5,47
    2980:	00f71863          	bne	a4,a5,2990 <fatfs_total_path_levels+0x20>
    2984:	00150513          	addi	a0,a0,1
    2988:	00000793          	li	a5,0
    298c:	0400006f          	j	29cc <fatfs_total_path_levels+0x5c>
    2990:	00154703          	lbu	a4,1(a0)
    2994:	03a00793          	li	a5,58
    2998:	00f70a63          	beq	a4,a5,29ac <fatfs_total_path_levels+0x3c>
    299c:	00254683          	lbu	a3,2(a0)
    29a0:	05c00713          	li	a4,92
    29a4:	fff00793          	li	a5,-1
    29a8:	02e69863          	bne	a3,a4,29d8 <fatfs_total_path_levels+0x68>
    29ac:	00350513          	addi	a0,a0,3
    29b0:	05c00713          	li	a4,92
    29b4:	fd5ff06f          	j	2988 <fatfs_total_path_levels+0x18>
    29b8:	00150513          	addi	a0,a0,1
    29bc:	00e68663          	beq	a3,a4,29c8 <fatfs_total_path_levels+0x58>
    29c0:	00054683          	lbu	a3,0(a0)
    29c4:	fe069ae3          	bnez	a3,29b8 <fatfs_total_path_levels+0x48>
    29c8:	00178793          	addi	a5,a5,1
    29cc:	00054683          	lbu	a3,0(a0)
    29d0:	fe0698e3          	bnez	a3,29c0 <fatfs_total_path_levels+0x50>
    29d4:	fff78793          	addi	a5,a5,-1
    29d8:	00078513          	mv	a0,a5
    29dc:	00008067          	ret

000029e0 <fatfs_get_substring>:
    29e0:	0cd05e63          	blez	a3,2abc <fatfs_get_substring+0xdc>
    29e4:	0c050c63          	beqz	a0,2abc <fatfs_get_substring+0xdc>
    29e8:	fe010113          	addi	sp,sp,-32
    29ec:	00812c23          	sw	s0,24(sp)
    29f0:	00112e23          	sw	ra,28(sp)
    29f4:	00912a23          	sw	s1,20(sp)
    29f8:	00054483          	lbu	s1,0(a0)
    29fc:	02f00793          	li	a5,47
    2a00:	00150413          	addi	s0,a0,1
    2a04:	02f48463          	beq	s1,a5,2a2c <fatfs_get_substring+0x4c>
    2a08:	00154703          	lbu	a4,1(a0)
    2a0c:	03a00793          	li	a5,58
    2a10:	00f70a63          	beq	a4,a5,2a24 <fatfs_get_substring+0x44>
    2a14:	00254803          	lbu	a6,2(a0)
    2a18:	05c00713          	li	a4,92
    2a1c:	fff00793          	li	a5,-1
    2a20:	04e81c63          	bne	a6,a4,2a78 <fatfs_get_substring+0x98>
    2a24:	00350413          	addi	s0,a0,3
    2a28:	05c00493          	li	s1,92
    2a2c:	00040513          	mv	a0,s0
    2a30:	00d12623          	sw	a3,12(sp)
    2a34:	00c12423          	sw	a2,8(sp)
    2a38:	00b12223          	sw	a1,4(sp)
    2a3c:	fffff097          	auipc	ra,0xfffff
    2a40:	c54080e7          	jalr	-940(ra) # 1690 <strlen>
    2a44:	00c12683          	lw	a3,12(sp)
    2a48:	00412583          	lw	a1,4(sp)
    2a4c:	00812603          	lw	a2,8(sp)
    2a50:	00000713          	li	a4,0
    2a54:	00000813          	li	a6,0
    2a58:	00000793          	li	a5,0
    2a5c:	fff68693          	addi	a3,a3,-1
    2a60:	00e608b3          	add	a7,a2,a4
    2a64:	02a7c663          	blt	a5,a0,2a90 <fatfs_get_substring+0xb0>
    2a68:	00088023          	sb	zero,0(a7)
    2a6c:	00064783          	lbu	a5,0(a2)
    2a70:	0017b793          	seqz	a5,a5
    2a74:	40f007b3          	neg	a5,a5
    2a78:	01c12083          	lw	ra,28(sp)
    2a7c:	01812403          	lw	s0,24(sp)
    2a80:	01412483          	lw	s1,20(sp)
    2a84:	00078513          	mv	a0,a5
    2a88:	02010113          	addi	sp,sp,32
    2a8c:	00008067          	ret
    2a90:	00f40333          	add	t1,s0,a5
    2a94:	00034303          	lbu	t1,0(t1)
    2a98:	00931863          	bne	t1,s1,2aa8 <fatfs_get_substring+0xc8>
    2a9c:	00180813          	addi	a6,a6,1
    2aa0:	00178793          	addi	a5,a5,1
    2aa4:	fbdff06f          	j	2a60 <fatfs_get_substring+0x80>
    2aa8:	feb81ce3          	bne	a6,a1,2aa0 <fatfs_get_substring+0xc0>
    2aac:	fed75ae3          	bge	a4,a3,2aa0 <fatfs_get_substring+0xc0>
    2ab0:	00170713          	addi	a4,a4,1
    2ab4:	00688023          	sb	t1,0(a7)
    2ab8:	fe9ff06f          	j	2aa0 <fatfs_get_substring+0xc0>
    2abc:	fff00793          	li	a5,-1
    2ac0:	00078513          	mv	a0,a5
    2ac4:	00008067          	ret

00002ac8 <fatfs_split_path>:
    2ac8:	fd010113          	addi	sp,sp,-48
    2acc:	02912223          	sw	s1,36(sp)
    2ad0:	03212023          	sw	s2,32(sp)
    2ad4:	01312e23          	sw	s3,28(sp)
    2ad8:	01412c23          	sw	s4,24(sp)
    2adc:	02112623          	sw	ra,44(sp)
    2ae0:	02812423          	sw	s0,40(sp)
    2ae4:	01512a23          	sw	s5,20(sp)
    2ae8:	00050993          	mv	s3,a0
    2aec:	00058493          	mv	s1,a1
    2af0:	00060913          	mv	s2,a2
    2af4:	00068a13          	mv	s4,a3
    2af8:	00e12623          	sw	a4,12(sp)
    2afc:	00000097          	auipc	ra,0x0
    2b00:	e74080e7          	jalr	-396(ra) # 2970 <fatfs_total_path_levels>
    2b04:	fff00793          	li	a5,-1
    2b08:	02f51863          	bne	a0,a5,2b38 <fatfs_split_path+0x70>
    2b0c:	fff00413          	li	s0,-1
    2b10:	02c12083          	lw	ra,44(sp)
    2b14:	00040513          	mv	a0,s0
    2b18:	02812403          	lw	s0,40(sp)
    2b1c:	02412483          	lw	s1,36(sp)
    2b20:	02012903          	lw	s2,32(sp)
    2b24:	01c12983          	lw	s3,28(sp)
    2b28:	01812a03          	lw	s4,24(sp)
    2b2c:	01412a83          	lw	s5,20(sp)
    2b30:	03010113          	addi	sp,sp,48
    2b34:	00008067          	ret
    2b38:	00c12683          	lw	a3,12(sp)
    2b3c:	00050593          	mv	a1,a0
    2b40:	00a12623          	sw	a0,12(sp)
    2b44:	000a0613          	mv	a2,s4
    2b48:	00098513          	mv	a0,s3
    2b4c:	00000097          	auipc	ra,0x0
    2b50:	e94080e7          	jalr	-364(ra) # 29e0 <fatfs_get_substring>
    2b54:	00050413          	mv	s0,a0
    2b58:	fa051ae3          	bnez	a0,2b0c <fatfs_split_path+0x44>
    2b5c:	00c12583          	lw	a1,12(sp)
    2b60:	00059663          	bnez	a1,2b6c <fatfs_split_path+0xa4>
    2b64:	00048023          	sb	zero,0(s1)
    2b68:	fa9ff06f          	j	2b10 <fatfs_split_path+0x48>
    2b6c:	00098513          	mv	a0,s3
    2b70:	fffff097          	auipc	ra,0xfffff
    2b74:	b20080e7          	jalr	-1248(ra) # 1690 <strlen>
    2b78:	00050a93          	mv	s5,a0
    2b7c:	000a0513          	mv	a0,s4
    2b80:	fffff097          	auipc	ra,0xfffff
    2b84:	b10080e7          	jalr	-1264(ra) # 1690 <strlen>
    2b88:	40aa8633          	sub	a2,s5,a0
    2b8c:	00c95463          	bge	s2,a2,2b94 <fatfs_split_path+0xcc>
    2b90:	00090613          	mv	a2,s2
    2b94:	00048513          	mv	a0,s1
    2b98:	00098593          	mv	a1,s3
    2b9c:	00c12623          	sw	a2,12(sp)
    2ba0:	fffff097          	auipc	ra,0xfffff
    2ba4:	acc080e7          	jalr	-1332(ra) # 166c <memcpy>
    2ba8:	00c12603          	lw	a2,12(sp)
    2bac:	00c484b3          	add	s1,s1,a2
    2bb0:	fe048fa3          	sb	zero,-1(s1)
    2bb4:	f5dff06f          	j	2b10 <fatfs_split_path+0x48>

00002bb8 <fatfs_compare_names>:
    2bb8:	fd010113          	addi	sp,sp,-48
    2bbc:	02112623          	sw	ra,44(sp)
    2bc0:	03212023          	sw	s2,32(sp)
    2bc4:	01312e23          	sw	s3,28(sp)
    2bc8:	01412c23          	sw	s4,24(sp)
    2bcc:	01512a23          	sw	s5,20(sp)
    2bd0:	00058a13          	mv	s4,a1
    2bd4:	02812423          	sw	s0,40(sp)
    2bd8:	02912223          	sw	s1,36(sp)
    2bdc:	01612823          	sw	s6,16(sp)
    2be0:	01712623          	sw	s7,12(sp)
    2be4:	01812423          	sw	s8,8(sp)
    2be8:	00050a93          	mv	s5,a0
    2bec:	fffff097          	auipc	ra,0xfffff
    2bf0:	2bc080e7          	jalr	700(ra) # 1ea8 <FileString_GetExtension>
    2bf4:	00050993          	mv	s3,a0
    2bf8:	000a0513          	mv	a0,s4
    2bfc:	fffff097          	auipc	ra,0xfffff
    2c00:	2ac080e7          	jalr	684(ra) # 1ea8 <FileString_GetExtension>
    2c04:	fff00793          	li	a5,-1
    2c08:	00050913          	mv	s2,a0
    2c0c:	02f99e63          	bne	s3,a5,2c48 <fatfs_compare_names+0x90>
    2c10:	0f350063          	beq	a0,s3,2cf0 <fatfs_compare_names+0x138>
    2c14:	00000513          	li	a0,0
    2c18:	02c12083          	lw	ra,44(sp)
    2c1c:	02812403          	lw	s0,40(sp)
    2c20:	02412483          	lw	s1,36(sp)
    2c24:	02012903          	lw	s2,32(sp)
    2c28:	01c12983          	lw	s3,28(sp)
    2c2c:	01812a03          	lw	s4,24(sp)
    2c30:	01412a83          	lw	s5,20(sp)
    2c34:	01012b03          	lw	s6,16(sp)
    2c38:	00c12b83          	lw	s7,12(sp)
    2c3c:	00812c03          	lw	s8,8(sp)
    2c40:	03010113          	addi	sp,sp,48
    2c44:	00008067          	ret
    2c48:	fcf506e3          	beq	a0,a5,2c14 <fatfs_compare_names+0x5c>
    2c4c:	00198793          	addi	a5,s3,1
    2c50:	00fa8b33          	add	s6,s5,a5
    2c54:	00050413          	mv	s0,a0
    2c58:	00150793          	addi	a5,a0,1
    2c5c:	000b0513          	mv	a0,s6
    2c60:	00fa0bb3          	add	s7,s4,a5
    2c64:	fffff097          	auipc	ra,0xfffff
    2c68:	a2c080e7          	jalr	-1492(ra) # 1690 <strlen>
    2c6c:	00050c13          	mv	s8,a0
    2c70:	000b8513          	mv	a0,s7
    2c74:	00098493          	mv	s1,s3
    2c78:	fffff097          	auipc	ra,0xfffff
    2c7c:	a18080e7          	jalr	-1512(ra) # 1690 <strlen>
    2c80:	f8ac1ae3          	bne	s8,a0,2c14 <fatfs_compare_names+0x5c>
    2c84:	000b0513          	mv	a0,s6
    2c88:	fffff097          	auipc	ra,0xfffff
    2c8c:	a08080e7          	jalr	-1528(ra) # 1690 <strlen>
    2c90:	00050613          	mv	a2,a0
    2c94:	000b8593          	mv	a1,s7
    2c98:	000b0513          	mv	a0,s6
    2c9c:	fffff097          	auipc	ra,0xfffff
    2ca0:	19c080e7          	jalr	412(ra) # 1e38 <FileString_StrCmpNoCase>
    2ca4:	f60518e3          	bnez	a0,2c14 <fatfs_compare_names+0x5c>
    2ca8:	fff48793          	addi	a5,s1,-1
    2cac:	00fa87b3          	add	a5,s5,a5
    2cb0:	41378733          	sub	a4,a5,s3
    2cb4:	02000693          	li	a3,32
    2cb8:	06e79263          	bne	a5,a4,2d1c <fatfs_compare_names+0x164>
    2cbc:	fff40793          	addi	a5,s0,-1
    2cc0:	00fa07b3          	add	a5,s4,a5
    2cc4:	41278733          	sub	a4,a5,s2
    2cc8:	02000693          	li	a3,32
    2ccc:	06e79263          	bne	a5,a4,2d30 <fatfs_compare_names+0x178>
    2cd0:	f53912e3          	bne	s2,s3,2c14 <fatfs_compare_names+0x5c>
    2cd4:	00090613          	mv	a2,s2
    2cd8:	000a0593          	mv	a1,s4
    2cdc:	000a8513          	mv	a0,s5
    2ce0:	fffff097          	auipc	ra,0xfffff
    2ce4:	158080e7          	jalr	344(ra) # 1e38 <FileString_StrCmpNoCase>
    2ce8:	00153513          	seqz	a0,a0
    2cec:	f2dff06f          	j	2c18 <fatfs_compare_names+0x60>
    2cf0:	000a8513          	mv	a0,s5
    2cf4:	fffff097          	auipc	ra,0xfffff
    2cf8:	99c080e7          	jalr	-1636(ra) # 1690 <strlen>
    2cfc:	00050493          	mv	s1,a0
    2d00:	00050993          	mv	s3,a0
    2d04:	000a0513          	mv	a0,s4
    2d08:	fffff097          	auipc	ra,0xfffff
    2d0c:	988080e7          	jalr	-1656(ra) # 1690 <strlen>
    2d10:	00050413          	mv	s0,a0
    2d14:	00050913          	mv	s2,a0
    2d18:	f91ff06f          	j	2ca8 <fatfs_compare_names+0xf0>
    2d1c:	0007c603          	lbu	a2,0(a5)
    2d20:	f8d61ee3          	bne	a2,a3,2cbc <fatfs_compare_names+0x104>
    2d24:	415789b3          	sub	s3,a5,s5
    2d28:	fff78793          	addi	a5,a5,-1
    2d2c:	f8dff06f          	j	2cb8 <fatfs_compare_names+0x100>
    2d30:	0007c603          	lbu	a2,0(a5)
    2d34:	f8d61ee3          	bne	a2,a3,2cd0 <fatfs_compare_names+0x118>
    2d38:	41478933          	sub	s2,a5,s4
    2d3c:	fff78793          	addi	a5,a5,-1
    2d40:	f8dff06f          	j	2ccc <fatfs_compare_names+0x114>

00002d44 <_check_file_open>:
    2d44:	fe010113          	addi	sp,sp,-32
    2d48:	000057b7          	lui	a5,0x5
    2d4c:	00812c23          	sw	s0,24(sp)
    2d50:	74c7a403          	lw	s0,1868(a5) # 574c <_open_file_list>
    2d54:	00912a23          	sw	s1,20(sp)
    2d58:	00112e23          	sw	ra,28(sp)
    2d5c:	01212823          	sw	s2,16(sp)
    2d60:	01312623          	sw	s3,12(sp)
    2d64:	00050493          	mv	s1,a0
    2d68:	00041663          	bnez	s0,2d74 <_check_file_open+0x30>
    2d6c:	00000513          	li	a0,0
    2d70:	03c0006f          	j	2dac <_check_file_open+0x68>
    2d74:	bc440793          	addi	a5,s0,-1084
    2d78:	00f49663          	bne	s1,a5,2d84 <_check_file_open+0x40>
    2d7c:	00442403          	lw	s0,4(s0)
    2d80:	fe9ff06f          	j	2d68 <_check_file_open+0x24>
    2d84:	01448593          	addi	a1,s1,20
    2d88:	bd840513          	addi	a0,s0,-1064
    2d8c:	00000097          	auipc	ra,0x0
    2d90:	e2c080e7          	jalr	-468(ra) # 2bb8 <fatfs_compare_names>
    2d94:	fe0504e3          	beqz	a0,2d7c <_check_file_open+0x38>
    2d98:	11848593          	addi	a1,s1,280
    2d9c:	cdc40513          	addi	a0,s0,-804
    2da0:	00000097          	auipc	ra,0x0
    2da4:	e18080e7          	jalr	-488(ra) # 2bb8 <fatfs_compare_names>
    2da8:	fc050ae3          	beqz	a0,2d7c <_check_file_open+0x38>
    2dac:	01c12083          	lw	ra,28(sp)
    2db0:	01812403          	lw	s0,24(sp)
    2db4:	01412483          	lw	s1,20(sp)
    2db8:	01012903          	lw	s2,16(sp)
    2dbc:	00c12983          	lw	s3,12(sp)
    2dc0:	02010113          	addi	sp,sp,32
    2dc4:	00008067          	ret

00002dc8 <fatfs_get_sfn_display_name>:
    2dc8:	00000713          	li	a4,0
    2dcc:	02000613          	li	a2,32
    2dd0:	01900813          	li	a6,25
    2dd4:	0005c783          	lbu	a5,0(a1)
    2dd8:	00078663          	beqz	a5,2de4 <fatfs_get_sfn_display_name+0x1c>
    2ddc:	ff470693          	addi	a3,a4,-12
    2de0:	00069863          	bnez	a3,2df0 <fatfs_get_sfn_display_name+0x28>
    2de4:	00050023          	sb	zero,0(a0)
    2de8:	00100513          	li	a0,1
    2dec:	00008067          	ret
    2df0:	00158593          	addi	a1,a1,1
    2df4:	fec780e3          	beq	a5,a2,2dd4 <fatfs_get_sfn_display_name+0xc>
    2df8:	fbf78693          	addi	a3,a5,-65
    2dfc:	0ff6f693          	zext.b	a3,a3
    2e00:	00d86663          	bltu	a6,a3,2e0c <fatfs_get_sfn_display_name+0x44>
    2e04:	02078793          	addi	a5,a5,32
    2e08:	0ff7f793          	zext.b	a5,a5
    2e0c:	00f50023          	sb	a5,0(a0)
    2e10:	00170713          	addi	a4,a4,1
    2e14:	00150513          	addi	a0,a0,1
    2e18:	fbdff06f          	j	2dd4 <fatfs_get_sfn_display_name+0xc>

00002e1c <fatfs_fat_init>:
    2e1c:	ff010113          	addi	sp,sp,-16
    2e20:	00812423          	sw	s0,8(sp)
    2e24:	00912223          	sw	s1,4(sp)
    2e28:	00112623          	sw	ra,12(sp)
    2e2c:	fff00793          	li	a5,-1
    2e30:	25850493          	addi	s1,a0,600
    2e34:	00050413          	mv	s0,a0
    2e38:	44f52c23          	sw	a5,1112(a0)
    2e3c:	24052a23          	sw	zero,596(a0)
    2e40:	44052e23          	sw	zero,1116(a0)
    2e44:	20000613          	li	a2,512
    2e48:	00048513          	mv	a0,s1
    2e4c:	00000593          	li	a1,0
    2e50:	fffff097          	auipc	ra,0xfffff
    2e54:	800080e7          	jalr	-2048(ra) # 1650 <memset>
    2e58:	25442783          	lw	a5,596(s0)
    2e5c:	00c12083          	lw	ra,12(sp)
    2e60:	24942a23          	sw	s1,596(s0)
    2e64:	46042023          	sw	zero,1120(s0)
    2e68:	46f42223          	sw	a5,1124(s0)
    2e6c:	00812403          	lw	s0,8(sp)
    2e70:	00412483          	lw	s1,4(sp)
    2e74:	01010113          	addi	sp,sp,16
    2e78:	00008067          	ret

00002e7c <fatfs_init>:
    2e7c:	fd010113          	addi	sp,sp,-48
    2e80:	02812423          	sw	s0,40(sp)
    2e84:	02112623          	sw	ra,44(sp)
    2e88:	02912223          	sw	s1,36(sp)
    2e8c:	03212023          	sw	s2,32(sp)
    2e90:	01312e23          	sw	s3,28(sp)
    2e94:	fff00793          	li	a5,-1
    2e98:	24f52223          	sw	a5,580(a0)
    2e9c:	24052423          	sw	zero,584(a0)
    2ea0:	02052223          	sw	zero,36(a0)
    2ea4:	00050413          	mv	s0,a0
    2ea8:	00000097          	auipc	ra,0x0
    2eac:	f74080e7          	jalr	-140(ra) # 2e1c <fatfs_fat_init>
    2eb0:	03442783          	lw	a5,52(s0)
    2eb4:	02079463          	bnez	a5,2edc <fatfs_init+0x60>
    2eb8:	fff00713          	li	a4,-1
    2ebc:	02c12083          	lw	ra,44(sp)
    2ec0:	02812403          	lw	s0,40(sp)
    2ec4:	02412483          	lw	s1,36(sp)
    2ec8:	02012903          	lw	s2,32(sp)
    2ecc:	01c12983          	lw	s3,28(sp)
    2ed0:	00070513          	mv	a0,a4
    2ed4:	03010113          	addi	sp,sp,48
    2ed8:	00008067          	ret
    2edc:	04440593          	addi	a1,s0,68
    2ee0:	00100613          	li	a2,1
    2ee4:	00000513          	li	a0,0
    2ee8:	00b12623          	sw	a1,12(sp)
    2eec:	000780e7          	jalr	a5
    2ef0:	fc0504e3          	beqz	a0,2eb8 <fatfs_init+0x3c>
    2ef4:	24244703          	lbu	a4,578(s0)
    2ef8:	05500793          	li	a5,85
    2efc:	00c12583          	lw	a1,12(sp)
    2f00:	00f70663          	beq	a4,a5,2f0c <fatfs_init+0x90>
    2f04:	ffd00713          	li	a4,-3
    2f08:	fb5ff06f          	j	2ebc <fatfs_init+0x40>
    2f0c:	24344703          	lbu	a4,579(s0)
    2f10:	0aa00793          	li	a5,170
    2f14:	fef718e3          	bne	a4,a5,2f04 <fatfs_init+0x88>
    2f18:	20644783          	lbu	a5,518(s0)
    2f1c:	00600713          	li	a4,6
    2f20:	02f76463          	bltu	a4,a5,2f48 <fatfs_init+0xcc>
    2f24:	00400713          	li	a4,4
    2f28:	00f76663          	bltu	a4,a5,2f34 <fatfs_init+0xb8>
    2f2c:	00000513          	li	a0,0
    2f30:	02078663          	beqz	a5,2f5c <fatfs_init+0xe0>
    2f34:	20c45503          	lhu	a0,524(s0)
    2f38:	20a45783          	lhu	a5,522(s0)
    2f3c:	01051513          	slli	a0,a0,0x10
    2f40:	00f56533          	or	a0,a0,a5
    2f44:	0180006f          	j	2f5c <fatfs_init+0xe0>
    2f48:	00c00713          	li	a4,12
    2f4c:	12f76663          	bltu	a4,a5,3078 <fatfs_init+0x1fc>
    2f50:	00a00713          	li	a4,10
    2f54:	00000513          	li	a0,0
    2f58:	fcf76ee3          	bltu	a4,a5,2f34 <fatfs_init+0xb8>
    2f5c:	03442783          	lw	a5,52(s0)
    2f60:	00a42e23          	sw	a0,28(s0)
    2f64:	00100613          	li	a2,1
    2f68:	000780e7          	jalr	a5
    2f6c:	f40506e3          	beqz	a0,2eb8 <fatfs_init+0x3c>
    2f70:	05044783          	lbu	a5,80(s0)
    2f74:	04f44703          	lbu	a4,79(s0)
    2f78:	20000693          	li	a3,512
    2f7c:	00879793          	slli	a5,a5,0x8
    2f80:	00e7e7b3          	or	a5,a5,a4
    2f84:	ffe00713          	li	a4,-2
    2f88:	f2d79ae3          	bne	a5,a3,2ebc <fatfs_init+0x40>
    2f8c:	05644483          	lbu	s1,86(s0)
    2f90:	05544783          	lbu	a5,85(s0)
    2f94:	05144983          	lbu	s3,81(s0)
    2f98:	00849493          	slli	s1,s1,0x8
    2f9c:	05a45583          	lhu	a1,90(s0)
    2fa0:	00f4e4b3          	or	s1,s1,a5
    2fa4:	01340023          	sb	s3,0(s0)
    2fa8:	02941423          	sh	s1,40(s0)
    2fac:	05245903          	lhu	s2,82(s0)
    2fb0:	05444503          	lbu	a0,84(s0)
    2fb4:	00059463          	bnez	a1,2fbc <fatfs_init+0x140>
    2fb8:	06842583          	lw	a1,104(s0)
    2fbc:	07042783          	lw	a5,112(s0)
    2fc0:	02b42023          	sw	a1,32(s0)
    2fc4:	00549493          	slli	s1,s1,0x5
    2fc8:	00f42423          	sw	a5,8(s0)
    2fcc:	07445783          	lhu	a5,116(s0)
    2fd0:	1ff48493          	addi	s1,s1,511
    2fd4:	4094d493          	srai	s1,s1,0x9
    2fd8:	00f41c23          	sh	a5,24(s0)
    2fdc:	fffff097          	auipc	ra,0xfffff
    2fe0:	dc4080e7          	jalr	-572(ra) # 1da0 <__mulsi3>
    2fe4:	00a907b3          	add	a5,s2,a0
    2fe8:	00f42623          	sw	a5,12(s0)
    2fec:	01c42783          	lw	a5,28(s0)
    2ff0:	24245703          	lhu	a4,578(s0)
    2ff4:	00942823          	sw	s1,16(s0)
    2ff8:	00f907b3          	add	a5,s2,a5
    2ffc:	00f42a23          	sw	a5,20(s0)
    3000:	00f507b3          	add	a5,a0,a5
    3004:	00f42223          	sw	a5,4(s0)
    3008:	0000b7b7          	lui	a5,0xb
    300c:	a5578793          	addi	a5,a5,-1451 # aa55 <framebuffer+0x3079>
    3010:	eef71ae3          	bne	a4,a5,2f04 <fatfs_init+0x88>
    3014:	05844783          	lbu	a5,88(s0)
    3018:	05744703          	lbu	a4,87(s0)
    301c:	00879793          	slli	a5,a5,0x8
    3020:	00e7e7b3          	or	a5,a5,a4
    3024:	00079463          	bnez	a5,302c <fatfs_init+0x1b0>
    3028:	06442783          	lw	a5,100(s0)
    302c:	ffb00713          	li	a4,-5
    3030:	e80986e3          	beqz	s3,2ebc <fatfs_init+0x40>
    3034:	00990933          	add	s2,s2,s1
    3038:	00a90533          	add	a0,s2,a0
    303c:	40a78533          	sub	a0,a5,a0
    3040:	00098593          	mv	a1,s3
    3044:	ffffe097          	auipc	ra,0xffffe
    3048:	560080e7          	jalr	1376(ra) # 15a4 <__udivsi3>
    304c:	000017b7          	lui	a5,0x1
    3050:	ff478793          	addi	a5,a5,-12 # ff4 <sdcard_ponder+0x4>
    3054:	ffb00713          	li	a4,-5
    3058:	e6a7f2e3          	bgeu	a5,a0,2ebc <fatfs_init+0x40>
    305c:	000107b7          	lui	a5,0x10
    3060:	ff478793          	addi	a5,a5,-12 # fff4 <_files+0x41b0>
    3064:	02a7e663          	bltu	a5,a0,3090 <fatfs_init+0x214>
    3068:	00042423          	sw	zero,8(s0)
    306c:	02042823          	sw	zero,48(s0)
    3070:	00000713          	li	a4,0
    3074:	e49ff06f          	j	2ebc <fatfs_init+0x40>
    3078:	ff278793          	addi	a5,a5,-14
    307c:	0ff7f793          	zext.b	a5,a5
    3080:	00100713          	li	a4,1
    3084:	00000513          	li	a0,0
    3088:	eaf776e3          	bgeu	a4,a5,2f34 <fatfs_init+0xb8>
    308c:	ed1ff06f          	j	2f5c <fatfs_init+0xe0>
    3090:	00100793          	li	a5,1
    3094:	02f42823          	sw	a5,48(s0)
    3098:	fd9ff06f          	j	3070 <fatfs_init+0x1f4>

0000309c <fl_attach_media>:
    309c:	000057b7          	lui	a5,0x5
    30a0:	7587a783          	lw	a5,1880(a5) # 5758 <_filelib_init>
    30a4:	fe010113          	addi	sp,sp,-32
    30a8:	00812c23          	sw	s0,24(sp)
    30ac:	00112e23          	sw	ra,28(sp)
    30b0:	00050413          	mv	s0,a0
    30b4:	00079a63          	bnez	a5,30c8 <fl_attach_media+0x2c>
    30b8:	00b12623          	sw	a1,12(sp)
    30bc:	fffff097          	auipc	ra,0xfffff
    30c0:	178080e7          	jalr	376(ra) # 2234 <fl_init>
    30c4:	00c12583          	lw	a1,12(sp)
    30c8:	0000c7b7          	lui	a5,0xc
    30cc:	9dc78513          	addi	a0,a5,-1572 # b9dc <_fs>
    30d0:	02b52c23          	sw	a1,56(a0)
    30d4:	02852a23          	sw	s0,52(a0)
    30d8:	00000097          	auipc	ra,0x0
    30dc:	da4080e7          	jalr	-604(ra) # 2e7c <fatfs_init>
    30e0:	00050593          	mv	a1,a0
    30e4:	02050863          	beqz	a0,3114 <fl_attach_media+0x78>
    30e8:	00a12623          	sw	a0,12(sp)
    30ec:	00005537          	lui	a0,0x5
    30f0:	2d850513          	addi	a0,a0,728 # 52d8 <LEDS+0x19c>
    30f4:	fffff097          	auipc	ra,0xfffff
    30f8:	b70080e7          	jalr	-1168(ra) # 1c64 <printf>
    30fc:	00c12583          	lw	a1,12(sp)
    3100:	01c12083          	lw	ra,28(sp)
    3104:	01812403          	lw	s0,24(sp)
    3108:	00058513          	mv	a0,a1
    310c:	02010113          	addi	sp,sp,32
    3110:	00008067          	ret
    3114:	000057b7          	lui	a5,0x5
    3118:	00100713          	li	a4,1
    311c:	74e7aa23          	sw	a4,1876(a5) # 5754 <_filelib_valid>
    3120:	fe1ff06f          	j	3100 <fl_attach_media+0x64>

00003124 <fatfs_fat_purge>:
    3124:	25452583          	lw	a1,596(a0)
    3128:	fe010113          	addi	sp,sp,-32
    312c:	00812c23          	sw	s0,24(sp)
    3130:	00112e23          	sw	ra,28(sp)
    3134:	00050413          	mv	s0,a0
    3138:	00059663          	bnez	a1,3144 <fatfs_fat_purge+0x20>
    313c:	00100513          	li	a0,1
    3140:	02c0006f          	j	316c <fatfs_fat_purge+0x48>
    3144:	2045a783          	lw	a5,516(a1)
    3148:	00079663          	bnez	a5,3154 <fatfs_fat_purge+0x30>
    314c:	20c5a583          	lw	a1,524(a1)
    3150:	fe9ff06f          	j	3138 <fatfs_fat_purge+0x14>
    3154:	00040513          	mv	a0,s0
    3158:	00b12623          	sw	a1,12(sp)
    315c:	fffff097          	auipc	ra,0xfffff
    3160:	d78080e7          	jalr	-648(ra) # 1ed4 <fatfs_fat_writeback>
    3164:	00c12583          	lw	a1,12(sp)
    3168:	fe0512e3          	bnez	a0,314c <fatfs_fat_purge+0x28>
    316c:	01c12083          	lw	ra,28(sp)
    3170:	01812403          	lw	s0,24(sp)
    3174:	02010113          	addi	sp,sp,32
    3178:	00008067          	ret

0000317c <fatfs_find_next_cluster>:
    317c:	ff010113          	addi	sp,sp,-16
    3180:	00812423          	sw	s0,8(sp)
    3184:	01212023          	sw	s2,0(sp)
    3188:	00112623          	sw	ra,12(sp)
    318c:	00912223          	sw	s1,4(sp)
    3190:	00050913          	mv	s2,a0
    3194:	00200413          	li	s0,2
    3198:	00058463          	beqz	a1,31a0 <fatfs_find_next_cluster+0x24>
    319c:	00058413          	mv	s0,a1
    31a0:	03092783          	lw	a5,48(s2)
    31a4:	00745493          	srli	s1,s0,0x7
    31a8:	00079463          	bnez	a5,31b0 <fatfs_find_next_cluster+0x34>
    31ac:	00845493          	srli	s1,s0,0x8
    31b0:	01492583          	lw	a1,20(s2)
    31b4:	00090513          	mv	a0,s2
    31b8:	00b485b3          	add	a1,s1,a1
    31bc:	fffff097          	auipc	ra,0xfffff
    31c0:	d9c080e7          	jalr	-612(ra) # 1f58 <fatfs_fat_read_sector>
    31c4:	00050793          	mv	a5,a0
    31c8:	fff00513          	li	a0,-1
    31cc:	04078863          	beqz	a5,321c <fatfs_find_next_cluster+0xa0>
    31d0:	03092703          	lw	a4,48(s2)
    31d4:	2087a783          	lw	a5,520(a5)
    31d8:	04071e63          	bnez	a4,3234 <fatfs_find_next_cluster+0xb8>
    31dc:	00849493          	slli	s1,s1,0x8
    31e0:	40940433          	sub	s0,s0,s1
    31e4:	00141413          	slli	s0,s0,0x1
    31e8:	01041413          	slli	s0,s0,0x10
    31ec:	01045413          	srli	s0,s0,0x10
    31f0:	008787b3          	add	a5,a5,s0
    31f4:	0017c503          	lbu	a0,1(a5)
    31f8:	0007c783          	lbu	a5,0(a5)
    31fc:	00851513          	slli	a0,a0,0x8
    3200:	00f50533          	add	a0,a0,a5
    3204:	ffff07b7          	lui	a5,0xffff0
    3208:	00878793          	addi	a5,a5,8 # ffff0008 <__stacktop+0xfffe0008>
    320c:	00f507b3          	add	a5,a0,a5
    3210:	00700713          	li	a4,7
    3214:	00f76463          	bltu	a4,a5,321c <fatfs_find_next_cluster+0xa0>
    3218:	fff00513          	li	a0,-1
    321c:	00c12083          	lw	ra,12(sp)
    3220:	00812403          	lw	s0,8(sp)
    3224:	00412483          	lw	s1,4(sp)
    3228:	00012903          	lw	s2,0(sp)
    322c:	01010113          	addi	sp,sp,16
    3230:	00008067          	ret
    3234:	00749493          	slli	s1,s1,0x7
    3238:	40940433          	sub	s0,s0,s1
    323c:	00241413          	slli	s0,s0,0x2
    3240:	01041413          	slli	s0,s0,0x10
    3244:	01045413          	srli	s0,s0,0x10
    3248:	008787b3          	add	a5,a5,s0
    324c:	0037c503          	lbu	a0,3(a5)
    3250:	0027c703          	lbu	a4,2(a5)
    3254:	01851513          	slli	a0,a0,0x18
    3258:	01071713          	slli	a4,a4,0x10
    325c:	00e50533          	add	a0,a0,a4
    3260:	0007c703          	lbu	a4,0(a5)
    3264:	0017c783          	lbu	a5,1(a5)
    3268:	00e50533          	add	a0,a0,a4
    326c:	00879793          	slli	a5,a5,0x8
    3270:	00f50533          	add	a0,a0,a5
    3274:	00451513          	slli	a0,a0,0x4
    3278:	00455513          	srli	a0,a0,0x4
    327c:	f00007b7          	lui	a5,0xf0000
    3280:	f89ff06f          	j	3208 <fatfs_find_next_cluster+0x8c>

00003284 <fatfs_sector_reader>:
    3284:	03052783          	lw	a5,48(a0)
    3288:	fe010113          	addi	sp,sp,-32
    328c:	00812c23          	sw	s0,24(sp)
    3290:	01212823          	sw	s2,16(sp)
    3294:	01512223          	sw	s5,4(sp)
    3298:	00112e23          	sw	ra,28(sp)
    329c:	00912a23          	sw	s1,20(sp)
    32a0:	01312623          	sw	s3,12(sp)
    32a4:	01412423          	sw	s4,8(sp)
    32a8:	01612023          	sw	s6,0(sp)
    32ac:	00f5e7b3          	or	a5,a1,a5
    32b0:	00050413          	mv	s0,a0
    32b4:	00060913          	mv	s2,a2
    32b8:	00068a93          	mv	s5,a3
    32bc:	08079063          	bnez	a5,333c <fatfs_sector_reader+0xb8>
    32c0:	01052783          	lw	a5,16(a0)
    32c4:	02f66863          	bltu	a2,a5,32f4 <fatfs_sector_reader+0x70>
    32c8:	00000513          	li	a0,0
    32cc:	01c12083          	lw	ra,28(sp)
    32d0:	01812403          	lw	s0,24(sp)
    32d4:	01412483          	lw	s1,20(sp)
    32d8:	01012903          	lw	s2,16(sp)
    32dc:	00c12983          	lw	s3,12(sp)
    32e0:	00812a03          	lw	s4,8(sp)
    32e4:	00412a83          	lw	s5,4(sp)
    32e8:	00012b03          	lw	s6,0(sp)
    32ec:	02010113          	addi	sp,sp,32
    32f0:	00008067          	ret
    32f4:	01c52503          	lw	a0,28(a0)
    32f8:	00c42783          	lw	a5,12(s0)
    32fc:	00f50533          	add	a0,a0,a5
    3300:	01250533          	add	a0,a0,s2
    3304:	0a0a8663          	beqz	s5,33b0 <fatfs_sector_reader+0x12c>
    3308:	03442783          	lw	a5,52(s0)
    330c:	00100613          	li	a2,1
    3310:	000a8593          	mv	a1,s5
    3314:	01812403          	lw	s0,24(sp)
    3318:	01c12083          	lw	ra,28(sp)
    331c:	01412483          	lw	s1,20(sp)
    3320:	01012903          	lw	s2,16(sp)
    3324:	00c12983          	lw	s3,12(sp)
    3328:	00812a03          	lw	s4,8(sp)
    332c:	00412a83          	lw	s5,4(sp)
    3330:	00012b03          	lw	s6,0(sp)
    3334:	02010113          	addi	sp,sp,32
    3338:	00078067          	jr	a5 # f0000000 <__stacktop+0xefff0000>
    333c:	00054783          	lbu	a5,0(a0)
    3340:	00058493          	mv	s1,a1
    3344:	00060513          	mv	a0,a2
    3348:	00078593          	mv	a1,a5
    334c:	00078a13          	mv	s4,a5
    3350:	ffffe097          	auipc	ra,0xffffe
    3354:	254080e7          	jalr	596(ra) # 15a4 <__udivsi3>
    3358:	00050b13          	mv	s6,a0
    335c:	00000993          	li	s3,0
    3360:	03699a63          	bne	s3,s6,3394 <fatfs_sector_reader+0x110>
    3364:	fff00793          	li	a5,-1
    3368:	f6f480e3          	beq	s1,a5,32c8 <fatfs_sector_reader+0x44>
    336c:	000a0593          	mv	a1,s4
    3370:	00090513          	mv	a0,s2
    3374:	ffffe097          	auipc	ra,0xffffe
    3378:	278080e7          	jalr	632(ra) # 15ec <__umodsi3>
    337c:	00050913          	mv	s2,a0
    3380:	00048593          	mv	a1,s1
    3384:	00040513          	mv	a0,s0
    3388:	fffff097          	auipc	ra,0xfffff
    338c:	d7c080e7          	jalr	-644(ra) # 2104 <fatfs_lba_of_cluster>
    3390:	f71ff06f          	j	3300 <fatfs_sector_reader+0x7c>
    3394:	00048593          	mv	a1,s1
    3398:	00040513          	mv	a0,s0
    339c:	00000097          	auipc	ra,0x0
    33a0:	de0080e7          	jalr	-544(ra) # 317c <fatfs_find_next_cluster>
    33a4:	00050493          	mv	s1,a0
    33a8:	00198993          	addi	s3,s3,1
    33ac:	fb5ff06f          	j	3360 <fatfs_sector_reader+0xdc>
    33b0:	24442783          	lw	a5,580(s0)
    33b4:	00a78c63          	beq	a5,a0,33cc <fatfs_sector_reader+0x148>
    33b8:	03442783          	lw	a5,52(s0)
    33bc:	24a42223          	sw	a0,580(s0)
    33c0:	00100613          	li	a2,1
    33c4:	04440593          	addi	a1,s0,68
    33c8:	f4dff06f          	j	3314 <fatfs_sector_reader+0x90>
    33cc:	00100513          	li	a0,1
    33d0:	efdff06f          	j	32cc <fatfs_sector_reader+0x48>

000033d4 <fatfs_get_file_entry>:
    33d4:	eb010113          	addi	sp,sp,-336
    33d8:	14812423          	sw	s0,328(sp)
    33dc:	14912223          	sw	s1,324(sp)
    33e0:	13312e23          	sw	s3,316(sp)
    33e4:	13712623          	sw	s7,300(sp)
    33e8:	13812423          	sw	s8,296(sp)
    33ec:	13912223          	sw	s9,292(sp)
    33f0:	14112623          	sw	ra,332(sp)
    33f4:	15212023          	sw	s2,320(sp)
    33f8:	13412c23          	sw	s4,312(sp)
    33fc:	13512a23          	sw	s5,308(sp)
    3400:	13612823          	sw	s6,304(sp)
    3404:	00050993          	mv	s3,a0
    3408:	00058c93          	mv	s9,a1
    340c:	00060b93          	mv	s7,a2
    3410:	00068c13          	mv	s8,a3
    3414:	10010ea3          	sb	zero,285(sp)
    3418:	01810413          	addi	s0,sp,24
    341c:	11c10493          	addi	s1,sp,284
    3420:	00040513          	mv	a0,s0
    3424:	00d00613          	li	a2,13
    3428:	00000593          	li	a1,0
    342c:	00d40413          	addi	s0,s0,13
    3430:	ffffe097          	auipc	ra,0xffffe
    3434:	220080e7          	jalr	544(ra) # 1650 <memset>
    3438:	fe9414e3          	bne	s0,s1,3420 <fatfs_get_file_entry+0x4c>
    343c:	00000493          	li	s1,0
    3440:	24498a13          	addi	s4,s3,580
    3444:	00810913          	addi	s2,sp,8
    3448:	00800a93          	li	s5,8
    344c:	02e00b13          	li	s6,46
    3450:	00000693          	li	a3,0
    3454:	00048613          	mv	a2,s1
    3458:	000c8593          	mv	a1,s9
    345c:	00098513          	mv	a0,s3
    3460:	00000097          	auipc	ra,0x0
    3464:	e24080e7          	jalr	-476(ra) # 3284 <fatfs_sector_reader>
    3468:	08050c63          	beqz	a0,3500 <fatfs_get_file_entry+0x12c>
    346c:	00148493          	addi	s1,s1,1
    3470:	04498413          	addi	s0,s3,68
    3474:	00040513          	mv	a0,s0
    3478:	fffff097          	auipc	ra,0xfffff
    347c:	f34080e7          	jalr	-204(ra) # 23ac <fatfs_entry_lfn_text>
    3480:	02050063          	beqz	a0,34a0 <fatfs_get_file_entry+0xcc>
    3484:	00040593          	mv	a1,s0
    3488:	01810513          	addi	a0,sp,24
    348c:	fffff097          	auipc	ra,0xfffff
    3490:	e18080e7          	jalr	-488(ra) # 22a4 <fatfs_lfn_cache_entry>
    3494:	02040413          	addi	s0,s0,32
    3498:	fd441ee3          	bne	s0,s4,3474 <fatfs_get_file_entry+0xa0>
    349c:	fb5ff06f          	j	3450 <fatfs_get_file_entry+0x7c>
    34a0:	00040513          	mv	a0,s0
    34a4:	fffff097          	auipc	ra,0xfffff
    34a8:	f1c080e7          	jalr	-228(ra) # 23c0 <fatfs_entry_lfn_invalid>
    34ac:	00050663          	beqz	a0,34b8 <fatfs_get_file_entry+0xe4>
    34b0:	10010ea3          	sb	zero,285(sp)
    34b4:	fe1ff06f          	j	3494 <fatfs_get_file_entry+0xc0>
    34b8:	00040593          	mv	a1,s0
    34bc:	01810513          	addi	a0,sp,24
    34c0:	fffff097          	auipc	ra,0xfffff
    34c4:	f34080e7          	jalr	-204(ra) # 23f4 <fatfs_entry_lfn_exists>
    34c8:	06050663          	beqz	a0,3534 <fatfs_get_file_entry+0x160>
    34cc:	01810513          	addi	a0,sp,24
    34d0:	fffff097          	auipc	ra,0xfffff
    34d4:	ea0080e7          	jalr	-352(ra) # 2370 <fatfs_lfn_cache_get>
    34d8:	000b8593          	mv	a1,s7
    34dc:	fffff097          	auipc	ra,0xfffff
    34e0:	6dc080e7          	jalr	1756(ra) # 2bb8 <fatfs_compare_names>
    34e4:	fc0506e3          	beqz	a0,34b0 <fatfs_get_file_entry+0xdc>
    34e8:	02000613          	li	a2,32
    34ec:	00040593          	mv	a1,s0
    34f0:	000c0513          	mv	a0,s8
    34f4:	ffffe097          	auipc	ra,0xffffe
    34f8:	178080e7          	jalr	376(ra) # 166c <memcpy>
    34fc:	00100513          	li	a0,1
    3500:	14c12083          	lw	ra,332(sp)
    3504:	14812403          	lw	s0,328(sp)
    3508:	14412483          	lw	s1,324(sp)
    350c:	14012903          	lw	s2,320(sp)
    3510:	13c12983          	lw	s3,316(sp)
    3514:	13812a03          	lw	s4,312(sp)
    3518:	13412a83          	lw	s5,308(sp)
    351c:	13012b03          	lw	s6,304(sp)
    3520:	12c12b83          	lw	s7,300(sp)
    3524:	12812c03          	lw	s8,296(sp)
    3528:	12412c83          	lw	s9,292(sp)
    352c:	15010113          	addi	sp,sp,336
    3530:	00008067          	ret
    3534:	00040513          	mv	a0,s0
    3538:	fffff097          	auipc	ra,0xfffff
    353c:	f0c080e7          	jalr	-244(ra) # 2444 <fatfs_entry_sfn_only>
    3540:	f4050ae3          	beqz	a0,3494 <fatfs_get_file_entry+0xc0>
    3544:	00d00613          	li	a2,13
    3548:	00000593          	li	a1,0
    354c:	00090513          	mv	a0,s2
    3550:	ffffe097          	auipc	ra,0xffffe
    3554:	100080e7          	jalr	256(ra) # 1650 <memset>
    3558:	00000793          	li	a5,0
    355c:	00f406b3          	add	a3,s0,a5
    3560:	0006c683          	lbu	a3,0(a3)
    3564:	00f90733          	add	a4,s2,a5
    3568:	00178793          	addi	a5,a5,1
    356c:	00d70023          	sb	a3,0(a4)
    3570:	ff5796e3          	bne	a5,s5,355c <fatfs_get_file_entry+0x188>
    3574:	00844703          	lbu	a4,8(s0)
    3578:	00944783          	lbu	a5,9(s0)
    357c:	00a44683          	lbu	a3,10(s0)
    3580:	00e108a3          	sb	a4,17(sp)
    3584:	00f10923          	sb	a5,18(sp)
    3588:	fe070713          	addi	a4,a4,-32
    358c:	fe078793          	addi	a5,a5,-32
    3590:	00f037b3          	snez	a5,a5
    3594:	00e03733          	snez	a4,a4
    3598:	00d109a3          	sb	a3,19(sp)
    359c:	00e7e7b3          	or	a5,a5,a4
    35a0:	00079863          	bnez	a5,35b0 <fatfs_get_file_entry+0x1dc>
    35a4:	fe068693          	addi	a3,a3,-32
    35a8:	02000793          	li	a5,32
    35ac:	00068a63          	beqz	a3,35c0 <fatfs_get_file_entry+0x1ec>
    35b0:	00814703          	lbu	a4,8(sp)
    35b4:	02e00793          	li	a5,46
    35b8:	01671463          	bne	a4,s6,35c0 <fatfs_get_file_entry+0x1ec>
    35bc:	02000793          	li	a5,32
    35c0:	00f10823          	sb	a5,16(sp)
    35c4:	000b8593          	mv	a1,s7
    35c8:	00090513          	mv	a0,s2
    35cc:	f11ff06f          	j	34dc <fatfs_get_file_entry+0x108>

000035d0 <_open_directory>:
    35d0:	eb010113          	addi	sp,sp,-336
    35d4:	15212023          	sw	s2,320(sp)
    35d8:	0000c937          	lui	s2,0xc
    35dc:	9dc90913          	addi	s2,s2,-1572 # b9dc <_fs>
    35e0:	14812423          	sw	s0,328(sp)
    35e4:	00892403          	lw	s0,8(s2)
    35e8:	14912223          	sw	s1,324(sp)
    35ec:	13312e23          	sw	s3,316(sp)
    35f0:	13412c23          	sw	s4,312(sp)
    35f4:	13512a23          	sw	s5,308(sp)
    35f8:	13612823          	sw	s6,304(sp)
    35fc:	14112623          	sw	ra,332(sp)
    3600:	00050a13          	mv	s4,a0
    3604:	00058a93          	mv	s5,a1
    3608:	fffff097          	auipc	ra,0xfffff
    360c:	368080e7          	jalr	872(ra) # 2970 <fatfs_total_path_levels>
    3610:	00050b13          	mv	s6,a0
    3614:	00000493          	li	s1,0
    3618:	fff00993          	li	s3,-1
    361c:	009b5863          	bge	s6,s1,362c <_open_directory+0x5c>
    3620:	008aa023          	sw	s0,0(s5)
    3624:	00100513          	li	a0,1
    3628:	0240006f          	j	364c <_open_directory+0x7c>
    362c:	10400693          	li	a3,260
    3630:	02c10613          	addi	a2,sp,44
    3634:	00048593          	mv	a1,s1
    3638:	000a0513          	mv	a0,s4
    363c:	fffff097          	auipc	ra,0xfffff
    3640:	3a4080e7          	jalr	932(ra) # 29e0 <fatfs_get_substring>
    3644:	03351863          	bne	a0,s3,3674 <_open_directory+0xa4>
    3648:	00000513          	li	a0,0
    364c:	14c12083          	lw	ra,332(sp)
    3650:	14812403          	lw	s0,328(sp)
    3654:	14412483          	lw	s1,324(sp)
    3658:	14012903          	lw	s2,320(sp)
    365c:	13c12983          	lw	s3,316(sp)
    3660:	13812a03          	lw	s4,312(sp)
    3664:	13412a83          	lw	s5,308(sp)
    3668:	13012b03          	lw	s6,304(sp)
    366c:	15010113          	addi	sp,sp,336
    3670:	00008067          	ret
    3674:	00c10693          	addi	a3,sp,12
    3678:	02c10613          	addi	a2,sp,44
    367c:	00040593          	mv	a1,s0
    3680:	00090513          	mv	a0,s2
    3684:	00000097          	auipc	ra,0x0
    3688:	d50080e7          	jalr	-688(ra) # 33d4 <fatfs_get_file_entry>
    368c:	fa050ee3          	beqz	a0,3648 <_open_directory+0x78>
    3690:	01714783          	lbu	a5,23(sp)
    3694:	0107f793          	andi	a5,a5,16
    3698:	fa0788e3          	beqz	a5,3648 <_open_directory+0x78>
    369c:	02015403          	lhu	s0,32(sp)
    36a0:	02615783          	lhu	a5,38(sp)
    36a4:	00148493          	addi	s1,s1,1
    36a8:	01041413          	slli	s0,s0,0x10
    36ac:	00f40433          	add	s0,s0,a5
    36b0:	f6dff06f          	j	361c <_open_directory+0x4c>

000036b4 <fl_opendir>:
    36b4:	fe010113          	addi	sp,sp,-32
    36b8:	fff00793          	li	a5,-1
    36bc:	00f12623          	sw	a5,12(sp)
    36c0:	000057b7          	lui	a5,0x5
    36c4:	7587a783          	lw	a5,1880(a5) # 5758 <_filelib_init>
    36c8:	00812c23          	sw	s0,24(sp)
    36cc:	01212823          	sw	s2,16(sp)
    36d0:	00112e23          	sw	ra,28(sp)
    36d4:	00912a23          	sw	s1,20(sp)
    36d8:	00050913          	mv	s2,a0
    36dc:	00058413          	mv	s0,a1
    36e0:	00079663          	bnez	a5,36ec <fl_opendir+0x38>
    36e4:	fffff097          	auipc	ra,0xfffff
    36e8:	b50080e7          	jalr	-1200(ra) # 2234 <fl_init>
    36ec:	0000c4b7          	lui	s1,0xc
    36f0:	9dc48493          	addi	s1,s1,-1572 # b9dc <_fs>
    36f4:	03c4a783          	lw	a5,60(s1)
    36f8:	00078463          	beqz	a5,3700 <fl_opendir+0x4c>
    36fc:	000780e7          	jalr	a5
    3700:	00090513          	mv	a0,s2
    3704:	fffff097          	auipc	ra,0xfffff
    3708:	26c080e7          	jalr	620(ra) # 2970 <fatfs_total_path_levels>
    370c:	fff00793          	li	a5,-1
    3710:	02f51063          	bne	a0,a5,3730 <fl_opendir+0x7c>
    3714:	0084a783          	lw	a5,8(s1)
    3718:	00f12623          	sw	a5,12(sp)
    371c:	00c12783          	lw	a5,12(sp)
    3720:	00042023          	sw	zero,0(s0)
    3724:	00040423          	sb	zero,8(s0)
    3728:	00f42223          	sw	a5,4(s0)
    372c:	0180006f          	j	3744 <fl_opendir+0x90>
    3730:	00c10593          	addi	a1,sp,12
    3734:	00090513          	mv	a0,s2
    3738:	00000097          	auipc	ra,0x0
    373c:	e98080e7          	jalr	-360(ra) # 35d0 <_open_directory>
    3740:	fc051ee3          	bnez	a0,371c <fl_opendir+0x68>
    3744:	0404a783          	lw	a5,64(s1)
    3748:	00078463          	beqz	a5,3750 <fl_opendir+0x9c>
    374c:	000780e7          	jalr	a5
    3750:	00c12703          	lw	a4,12(sp)
    3754:	fff00793          	li	a5,-1
    3758:	00f71463          	bne	a4,a5,3760 <fl_opendir+0xac>
    375c:	00000413          	li	s0,0
    3760:	01c12083          	lw	ra,28(sp)
    3764:	00040513          	mv	a0,s0
    3768:	01812403          	lw	s0,24(sp)
    376c:	01412483          	lw	s1,20(sp)
    3770:	01012903          	lw	s2,16(sp)
    3774:	02010113          	addi	sp,sp,32
    3778:	00008067          	ret

0000377c <_open_file>:
    377c:	fc010113          	addi	sp,sp,-64
    3780:	03312623          	sw	s3,44(sp)
    3784:	02112e23          	sw	ra,60(sp)
    3788:	02812c23          	sw	s0,56(sp)
    378c:	02912a23          	sw	s1,52(sp)
    3790:	03212823          	sw	s2,48(sp)
    3794:	00050993          	mv	s3,a0
    3798:	fffff097          	auipc	ra,0xfffff
    379c:	8ac080e7          	jalr	-1876(ra) # 2044 <_allocate_file>
    37a0:	06050463          	beqz	a0,3808 <_open_file+0x8c>
    37a4:	01450913          	addi	s2,a0,20
    37a8:	00050413          	mv	s0,a0
    37ac:	10400613          	li	a2,260
    37b0:	00000593          	li	a1,0
    37b4:	00090513          	mv	a0,s2
    37b8:	ffffe097          	auipc	ra,0xffffe
    37bc:	e98080e7          	jalr	-360(ra) # 1650 <memset>
    37c0:	11840493          	addi	s1,s0,280
    37c4:	10400613          	li	a2,260
    37c8:	00000593          	li	a1,0
    37cc:	00048513          	mv	a0,s1
    37d0:	ffffe097          	auipc	ra,0xffffe
    37d4:	e80080e7          	jalr	-384(ra) # 1650 <memset>
    37d8:	10400713          	li	a4,260
    37dc:	00048693          	mv	a3,s1
    37e0:	00070613          	mv	a2,a4
    37e4:	00090593          	mv	a1,s2
    37e8:	00098513          	mv	a0,s3
    37ec:	fffff097          	auipc	ra,0xfffff
    37f0:	2dc080e7          	jalr	732(ra) # 2ac8 <fatfs_split_path>
    37f4:	fff00793          	li	a5,-1
    37f8:	02f51a63          	bne	a0,a5,382c <_open_file+0xb0>
    37fc:	00040513          	mv	a0,s0
    3800:	fffff097          	auipc	ra,0xfffff
    3804:	8bc080e7          	jalr	-1860(ra) # 20bc <_free_file>
    3808:	00000413          	li	s0,0
    380c:	03c12083          	lw	ra,60(sp)
    3810:	00040513          	mv	a0,s0
    3814:	03812403          	lw	s0,56(sp)
    3818:	03412483          	lw	s1,52(sp)
    381c:	03012903          	lw	s2,48(sp)
    3820:	02c12983          	lw	s3,44(sp)
    3824:	04010113          	addi	sp,sp,64
    3828:	00008067          	ret
    382c:	00040513          	mv	a0,s0
    3830:	fffff097          	auipc	ra,0xfffff
    3834:	514080e7          	jalr	1300(ra) # 2d44 <_check_file_open>
    3838:	fc0512e3          	bnez	a0,37fc <_open_file+0x80>
    383c:	01444783          	lbu	a5,20(s0)
    3840:	08079c63          	bnez	a5,38d8 <_open_file+0x15c>
    3844:	0000c7b7          	lui	a5,0xc
    3848:	9e47a783          	lw	a5,-1564(a5) # b9e4 <_fs+0x8>
    384c:	00f42023          	sw	a5,0(s0)
    3850:	00042583          	lw	a1,0(s0)
    3854:	00048613          	mv	a2,s1
    3858:	0000c4b7          	lui	s1,0xc
    385c:	00010693          	mv	a3,sp
    3860:	9dc48513          	addi	a0,s1,-1572 # b9dc <_fs>
    3864:	00000097          	auipc	ra,0x0
    3868:	b70080e7          	jalr	-1168(ra) # 33d4 <fatfs_get_file_entry>
    386c:	f80508e3          	beqz	a0,37fc <_open_file+0x80>
    3870:	00b14783          	lbu	a5,11(sp)
    3874:	0207f793          	andi	a5,a5,32
    3878:	f80782e3          	beqz	a5,37fc <_open_file+0x80>
    387c:	00b00613          	li	a2,11
    3880:	00010593          	mv	a1,sp
    3884:	21c40513          	addi	a0,s0,540
    3888:	ffffe097          	auipc	ra,0xffffe
    388c:	de4080e7          	jalr	-540(ra) # 166c <memcpy>
    3890:	01c12783          	lw	a5,28(sp)
    3894:	01a15703          	lhu	a4,26(sp)
    3898:	00042423          	sw	zero,8(s0)
    389c:	00f42623          	sw	a5,12(s0)
    38a0:	01415783          	lhu	a5,20(sp)
    38a4:	42042a23          	sw	zero,1076(s0)
    38a8:	00042823          	sw	zero,16(s0)
    38ac:	01079793          	slli	a5,a5,0x10
    38b0:	00e787b3          	add	a5,a5,a4
    38b4:	00f42223          	sw	a5,4(s0)
    38b8:	fff00793          	li	a5,-1
    38bc:	42f42823          	sw	a5,1072(s0)
    38c0:	22f42423          	sw	a5,552(s0)
    38c4:	22f42623          	sw	a5,556(s0)
    38c8:	9dc48513          	addi	a0,s1,-1572
    38cc:	00000097          	auipc	ra,0x0
    38d0:	858080e7          	jalr	-1960(ra) # 3124 <fatfs_fat_purge>
    38d4:	f39ff06f          	j	380c <_open_file+0x90>
    38d8:	00040593          	mv	a1,s0
    38dc:	00090513          	mv	a0,s2
    38e0:	00000097          	auipc	ra,0x0
    38e4:	cf0080e7          	jalr	-784(ra) # 35d0 <_open_directory>
    38e8:	f60514e3          	bnez	a0,3850 <_open_file+0xd4>
    38ec:	f11ff06f          	j	37fc <_open_file+0x80>

000038f0 <fatfs_sfn_exists>:
    38f0:	fe010113          	addi	sp,sp,-32
    38f4:	01212823          	sw	s2,16(sp)
    38f8:	01312623          	sw	s3,12(sp)
    38fc:	01412423          	sw	s4,8(sp)
    3900:	01512223          	sw	s5,4(sp)
    3904:	01612023          	sw	s6,0(sp)
    3908:	00112e23          	sw	ra,28(sp)
    390c:	00812c23          	sw	s0,24(sp)
    3910:	00912a23          	sw	s1,20(sp)
    3914:	00050993          	mv	s3,a0
    3918:	00058a93          	mv	s5,a1
    391c:	00060b13          	mv	s6,a2
    3920:	00000913          	li	s2,0
    3924:	24450a13          	addi	s4,a0,580
    3928:	00000693          	li	a3,0
    392c:	00090613          	mv	a2,s2
    3930:	000a8593          	mv	a1,s5
    3934:	00098513          	mv	a0,s3
    3938:	00000097          	auipc	ra,0x0
    393c:	94c080e7          	jalr	-1716(ra) # 3284 <fatfs_sector_reader>
    3940:	00050413          	mv	s0,a0
    3944:	06050263          	beqz	a0,39a8 <fatfs_sfn_exists+0xb8>
    3948:	00190913          	addi	s2,s2,1
    394c:	04498493          	addi	s1,s3,68
    3950:	00048513          	mv	a0,s1
    3954:	fffff097          	auipc	ra,0xfffff
    3958:	a58080e7          	jalr	-1448(ra) # 23ac <fatfs_entry_lfn_text>
    395c:	00050863          	beqz	a0,396c <fatfs_sfn_exists+0x7c>
    3960:	02048493          	addi	s1,s1,32
    3964:	ff4496e3          	bne	s1,s4,3950 <fatfs_sfn_exists+0x60>
    3968:	fc1ff06f          	j	3928 <fatfs_sfn_exists+0x38>
    396c:	00048513          	mv	a0,s1
    3970:	fffff097          	auipc	ra,0xfffff
    3974:	a50080e7          	jalr	-1456(ra) # 23c0 <fatfs_entry_lfn_invalid>
    3978:	fe0514e3          	bnez	a0,3960 <fatfs_sfn_exists+0x70>
    397c:	00048513          	mv	a0,s1
    3980:	fffff097          	auipc	ra,0xfffff
    3984:	ac4080e7          	jalr	-1340(ra) # 2444 <fatfs_entry_sfn_only>
    3988:	00050413          	mv	s0,a0
    398c:	fc050ae3          	beqz	a0,3960 <fatfs_sfn_exists+0x70>
    3990:	00b00613          	li	a2,11
    3994:	000b0593          	mv	a1,s6
    3998:	00048513          	mv	a0,s1
    399c:	ffffe097          	auipc	ra,0xffffe
    39a0:	d14080e7          	jalr	-748(ra) # 16b0 <strncmp>
    39a4:	fa051ee3          	bnez	a0,3960 <fatfs_sfn_exists+0x70>
    39a8:	01c12083          	lw	ra,28(sp)
    39ac:	00040513          	mv	a0,s0
    39b0:	01812403          	lw	s0,24(sp)
    39b4:	01412483          	lw	s1,20(sp)
    39b8:	01012903          	lw	s2,16(sp)
    39bc:	00c12983          	lw	s3,12(sp)
    39c0:	00812a03          	lw	s4,8(sp)
    39c4:	00412a83          	lw	s5,4(sp)
    39c8:	00012b03          	lw	s6,0(sp)
    39cc:	02010113          	addi	sp,sp,32
    39d0:	00008067          	ret

000039d4 <fatfs_update_file_length>:
    39d4:	03852783          	lw	a5,56(a0)
    39d8:	14078e63          	beqz	a5,3b34 <fatfs_update_file_length+0x160>
    39dc:	fd010113          	addi	sp,sp,-48
    39e0:	02912223          	sw	s1,36(sp)
    39e4:	03212023          	sw	s2,32(sp)
    39e8:	01312e23          	sw	s3,28(sp)
    39ec:	01412c23          	sw	s4,24(sp)
    39f0:	01612823          	sw	s6,16(sp)
    39f4:	01712623          	sw	s7,12(sp)
    39f8:	02112623          	sw	ra,44(sp)
    39fc:	02812423          	sw	s0,40(sp)
    3a00:	01512a23          	sw	s5,20(sp)
    3a04:	00068913          	mv	s2,a3
    3a08:	00060b93          	mv	s7,a2
    3a0c:	00058b13          	mv	s6,a1
    3a10:	00050493          	mv	s1,a0
    3a14:	00000993          	li	s3,0
    3a18:	24450a13          	addi	s4,a0,580
    3a1c:	00000693          	li	a3,0
    3a20:	00098613          	mv	a2,s3
    3a24:	000b0593          	mv	a1,s6
    3a28:	00048513          	mv	a0,s1
    3a2c:	00000097          	auipc	ra,0x0
    3a30:	858080e7          	jalr	-1960(ra) # 3284 <fatfs_sector_reader>
    3a34:	0c050863          	beqz	a0,3b04 <fatfs_update_file_length+0x130>
    3a38:	04448413          	addi	s0,s1,68
    3a3c:	00198993          	addi	s3,s3,1
    3a40:	00040a93          	mv	s5,s0
    3a44:	00040513          	mv	a0,s0
    3a48:	fffff097          	auipc	ra,0xfffff
    3a4c:	964080e7          	jalr	-1692(ra) # 23ac <fatfs_entry_lfn_text>
    3a50:	0a051463          	bnez	a0,3af8 <fatfs_update_file_length+0x124>
    3a54:	00040513          	mv	a0,s0
    3a58:	fffff097          	auipc	ra,0xfffff
    3a5c:	968080e7          	jalr	-1688(ra) # 23c0 <fatfs_entry_lfn_invalid>
    3a60:	08051c63          	bnez	a0,3af8 <fatfs_update_file_length+0x124>
    3a64:	00040513          	mv	a0,s0
    3a68:	fffff097          	auipc	ra,0xfffff
    3a6c:	9dc080e7          	jalr	-1572(ra) # 2444 <fatfs_entry_sfn_only>
    3a70:	08050463          	beqz	a0,3af8 <fatfs_update_file_length+0x124>
    3a74:	00b00613          	li	a2,11
    3a78:	000b8593          	mv	a1,s7
    3a7c:	00040513          	mv	a0,s0
    3a80:	ffffe097          	auipc	ra,0xffffe
    3a84:	c30080e7          	jalr	-976(ra) # 16b0 <strncmp>
    3a88:	06051863          	bnez	a0,3af8 <fatfs_update_file_length+0x124>
    3a8c:	00895793          	srli	a5,s2,0x8
    3a90:	01240e23          	sb	s2,28(s0)
    3a94:	00f40ea3          	sb	a5,29(s0)
    3a98:	01095793          	srli	a5,s2,0x10
    3a9c:	01895913          	srli	s2,s2,0x18
    3aa0:	00f40f23          	sb	a5,30(s0)
    3aa4:	01240fa3          	sb	s2,31(s0)
    3aa8:	00040593          	mv	a1,s0
    3aac:	02000613          	li	a2,32
    3ab0:	00040513          	mv	a0,s0
    3ab4:	ffffe097          	auipc	ra,0xffffe
    3ab8:	bb8080e7          	jalr	-1096(ra) # 166c <memcpy>
    3abc:	02812403          	lw	s0,40(sp)
    3ac0:	0384a783          	lw	a5,56(s1)
    3ac4:	2444a503          	lw	a0,580(s1)
    3ac8:	02c12083          	lw	ra,44(sp)
    3acc:	02412483          	lw	s1,36(sp)
    3ad0:	02012903          	lw	s2,32(sp)
    3ad4:	01c12983          	lw	s3,28(sp)
    3ad8:	01812a03          	lw	s4,24(sp)
    3adc:	01012b03          	lw	s6,16(sp)
    3ae0:	00c12b83          	lw	s7,12(sp)
    3ae4:	000a8593          	mv	a1,s5
    3ae8:	01412a83          	lw	s5,20(sp)
    3aec:	00100613          	li	a2,1
    3af0:	03010113          	addi	sp,sp,48
    3af4:	00078067          	jr	a5
    3af8:	02040413          	addi	s0,s0,32
    3afc:	f54414e3          	bne	s0,s4,3a44 <fatfs_update_file_length+0x70>
    3b00:	f1dff06f          	j	3a1c <fatfs_update_file_length+0x48>
    3b04:	02c12083          	lw	ra,44(sp)
    3b08:	02812403          	lw	s0,40(sp)
    3b0c:	02412483          	lw	s1,36(sp)
    3b10:	02012903          	lw	s2,32(sp)
    3b14:	01c12983          	lw	s3,28(sp)
    3b18:	01812a03          	lw	s4,24(sp)
    3b1c:	01412a83          	lw	s5,20(sp)
    3b20:	01012b03          	lw	s6,16(sp)
    3b24:	00c12b83          	lw	s7,12(sp)
    3b28:	00000513          	li	a0,0
    3b2c:	03010113          	addi	sp,sp,48
    3b30:	00008067          	ret
    3b34:	00000513          	li	a0,0
    3b38:	00008067          	ret

00003b3c <fatfs_list_directory_next>:
    3b3c:	ec010113          	addi	sp,sp,-320
    3b40:	13212823          	sw	s2,304(sp)
    3b44:	13312623          	sw	s3,300(sp)
    3b48:	13412423          	sw	s4,296(sp)
    3b4c:	13512223          	sw	s5,292(sp)
    3b50:	13612023          	sw	s6,288(sp)
    3b54:	12112e23          	sw	ra,316(sp)
    3b58:	12812c23          	sw	s0,312(sp)
    3b5c:	12912a23          	sw	s1,308(sp)
    3b60:	00050a13          	mv	s4,a0
    3b64:	00058913          	mv	s2,a1
    3b68:	00060993          	mv	s3,a2
    3b6c:	10010ea3          	sb	zero,285(sp)
    3b70:	04450a93          	addi	s5,a0,68
    3b74:	00f00b13          	li	s6,15
    3b78:	00092603          	lw	a2,0(s2)
    3b7c:	00492583          	lw	a1,4(s2)
    3b80:	00000693          	li	a3,0
    3b84:	000a0513          	mv	a0,s4
    3b88:	fffff097          	auipc	ra,0xfffff
    3b8c:	6fc080e7          	jalr	1788(ra) # 3284 <fatfs_sector_reader>
    3b90:	10050c63          	beqz	a0,3ca8 <fatfs_list_directory_next+0x16c>
    3b94:	00894483          	lbu	s1,8(s2)
    3b98:	00549413          	slli	s0,s1,0x5
    3b9c:	008a8433          	add	s0,s5,s0
    3ba0:	009b7c63          	bgeu	s6,s1,3bb8 <fatfs_list_directory_next+0x7c>
    3ba4:	00092783          	lw	a5,0(s2)
    3ba8:	00090423          	sb	zero,8(s2)
    3bac:	00178793          	addi	a5,a5,1
    3bb0:	00f92023          	sw	a5,0(s2)
    3bb4:	fc5ff06f          	j	3b78 <fatfs_list_directory_next+0x3c>
    3bb8:	00040513          	mv	a0,s0
    3bbc:	ffffe097          	auipc	ra,0xffffe
    3bc0:	7f0080e7          	jalr	2032(ra) # 23ac <fatfs_entry_lfn_text>
    3bc4:	02050263          	beqz	a0,3be8 <fatfs_list_directory_next+0xac>
    3bc8:	00040593          	mv	a1,s0
    3bcc:	01810513          	addi	a0,sp,24
    3bd0:	ffffe097          	auipc	ra,0xffffe
    3bd4:	6d4080e7          	jalr	1748(ra) # 22a4 <fatfs_lfn_cache_entry>
    3bd8:	00148493          	addi	s1,s1,1
    3bdc:	0ff4f493          	zext.b	s1,s1
    3be0:	02040413          	addi	s0,s0,32
    3be4:	fbdff06f          	j	3ba0 <fatfs_list_directory_next+0x64>
    3be8:	00040513          	mv	a0,s0
    3bec:	ffffe097          	auipc	ra,0xffffe
    3bf0:	7d4080e7          	jalr	2004(ra) # 23c0 <fatfs_entry_lfn_invalid>
    3bf4:	00050663          	beqz	a0,3c00 <fatfs_list_directory_next+0xc4>
    3bf8:	10010ea3          	sb	zero,285(sp)
    3bfc:	fddff06f          	j	3bd8 <fatfs_list_directory_next+0x9c>
    3c00:	00040593          	mv	a1,s0
    3c04:	01810513          	addi	a0,sp,24
    3c08:	ffffe097          	auipc	ra,0xffffe
    3c0c:	7ec080e7          	jalr	2028(ra) # 23f4 <fatfs_entry_lfn_exists>
    3c10:	0c050063          	beqz	a0,3cd0 <fatfs_list_directory_next+0x194>
    3c14:	01810513          	addi	a0,sp,24
    3c18:	ffffe097          	auipc	ra,0xffffe
    3c1c:	758080e7          	jalr	1880(ra) # 2370 <fatfs_lfn_cache_get>
    3c20:	00050593          	mv	a1,a0
    3c24:	10300613          	li	a2,259
    3c28:	00098513          	mv	a0,s3
    3c2c:	ffffe097          	auipc	ra,0xffffe
    3c30:	ac4080e7          	jalr	-1340(ra) # 16f0 <strncpy>
    3c34:	00040513          	mv	a0,s0
    3c38:	fffff097          	auipc	ra,0xfffff
    3c3c:	84c080e7          	jalr	-1972(ra) # 2484 <fatfs_entry_is_dir>
    3c40:	10a98223          	sb	a0,260(s3)
    3c44:	01d44783          	lbu	a5,29(s0)
    3c48:	01c44703          	lbu	a4,28(s0)
    3c4c:	00148493          	addi	s1,s1,1
    3c50:	00879793          	slli	a5,a5,0x8
    3c54:	00e7e7b3          	or	a5,a5,a4
    3c58:	01e44703          	lbu	a4,30(s0)
    3c5c:	00100513          	li	a0,1
    3c60:	01071713          	slli	a4,a4,0x10
    3c64:	00f76733          	or	a4,a4,a5
    3c68:	01f44783          	lbu	a5,31(s0)
    3c6c:	01879793          	slli	a5,a5,0x18
    3c70:	00e7e7b3          	or	a5,a5,a4
    3c74:	10f9a623          	sw	a5,268(s3)
    3c78:	01544783          	lbu	a5,21(s0)
    3c7c:	01444703          	lbu	a4,20(s0)
    3c80:	01a44683          	lbu	a3,26(s0)
    3c84:	00879793          	slli	a5,a5,0x8
    3c88:	00e7e7b3          	or	a5,a5,a4
    3c8c:	01b44703          	lbu	a4,27(s0)
    3c90:	01079793          	slli	a5,a5,0x10
    3c94:	00871713          	slli	a4,a4,0x8
    3c98:	00d76733          	or	a4,a4,a3
    3c9c:	00e7e7b3          	or	a5,a5,a4
    3ca0:	10f9a423          	sw	a5,264(s3)
    3ca4:	00990423          	sb	s1,8(s2)
    3ca8:	13c12083          	lw	ra,316(sp)
    3cac:	13812403          	lw	s0,312(sp)
    3cb0:	13412483          	lw	s1,308(sp)
    3cb4:	13012903          	lw	s2,304(sp)
    3cb8:	12c12983          	lw	s3,300(sp)
    3cbc:	12812a03          	lw	s4,296(sp)
    3cc0:	12412a83          	lw	s5,292(sp)
    3cc4:	12012b03          	lw	s6,288(sp)
    3cc8:	14010113          	addi	sp,sp,320
    3ccc:	00008067          	ret
    3cd0:	00040513          	mv	a0,s0
    3cd4:	ffffe097          	auipc	ra,0xffffe
    3cd8:	770080e7          	jalr	1904(ra) # 2444 <fatfs_entry_sfn_only>
    3cdc:	ee050ee3          	beqz	a0,3bd8 <fatfs_list_directory_next+0x9c>
    3ce0:	00810a13          	addi	s4,sp,8
    3ce4:	00d00613          	li	a2,13
    3ce8:	00000593          	li	a1,0
    3cec:	000a0513          	mv	a0,s4
    3cf0:	10010ea3          	sb	zero,285(sp)
    3cf4:	ffffe097          	auipc	ra,0xffffe
    3cf8:	95c080e7          	jalr	-1700(ra) # 1650 <memset>
    3cfc:	00000793          	li	a5,0
    3d00:	00800713          	li	a4,8
    3d04:	00f40633          	add	a2,s0,a5
    3d08:	00064603          	lbu	a2,0(a2)
    3d0c:	00fa06b3          	add	a3,s4,a5
    3d10:	00178793          	addi	a5,a5,1
    3d14:	00c68023          	sb	a2,0(a3)
    3d18:	fee796e3          	bne	a5,a4,3d04 <fatfs_list_directory_next+0x1c8>
    3d1c:	00844783          	lbu	a5,8(s0)
    3d20:	00944703          	lbu	a4,9(s0)
    3d24:	00a44683          	lbu	a3,10(s0)
    3d28:	00f108a3          	sb	a5,17(sp)
    3d2c:	00e10923          	sb	a4,18(sp)
    3d30:	fe078793          	addi	a5,a5,-32
    3d34:	fe070713          	addi	a4,a4,-32
    3d38:	00f037b3          	snez	a5,a5
    3d3c:	00e03733          	snez	a4,a4
    3d40:	00d109a3          	sb	a3,19(sp)
    3d44:	00e7e7b3          	or	a5,a5,a4
    3d48:	00079863          	bnez	a5,3d58 <fatfs_list_directory_next+0x21c>
    3d4c:	fe068693          	addi	a3,a3,-32
    3d50:	02000793          	li	a5,32
    3d54:	00068a63          	beqz	a3,3d68 <fatfs_list_directory_next+0x22c>
    3d58:	00814703          	lbu	a4,8(sp)
    3d5c:	02e00793          	li	a5,46
    3d60:	00f71463          	bne	a4,a5,3d68 <fatfs_list_directory_next+0x22c>
    3d64:	02000793          	li	a5,32
    3d68:	000a0593          	mv	a1,s4
    3d6c:	00098513          	mv	a0,s3
    3d70:	00f10823          	sb	a5,16(sp)
    3d74:	fffff097          	auipc	ra,0xfffff
    3d78:	054080e7          	jalr	84(ra) # 2dc8 <fatfs_get_sfn_display_name>
    3d7c:	eb9ff06f          	j	3c34 <fatfs_list_directory_next+0xf8>

00003d80 <fl_readdir>:
    3d80:	000057b7          	lui	a5,0x5
    3d84:	7587a783          	lw	a5,1880(a5) # 5758 <_filelib_init>
    3d88:	fd010113          	addi	sp,sp,-48
    3d8c:	03212023          	sw	s2,32(sp)
    3d90:	01312e23          	sw	s3,28(sp)
    3d94:	02112623          	sw	ra,44(sp)
    3d98:	02812423          	sw	s0,40(sp)
    3d9c:	02912223          	sw	s1,36(sp)
    3da0:	00050913          	mv	s2,a0
    3da4:	00058993          	mv	s3,a1
    3da8:	00079663          	bnez	a5,3db4 <fl_readdir+0x34>
    3dac:	ffffe097          	auipc	ra,0xffffe
    3db0:	488080e7          	jalr	1160(ra) # 2234 <fl_init>
    3db4:	0000c4b7          	lui	s1,0xc
    3db8:	9dc48413          	addi	s0,s1,-1572 # b9dc <_fs>
    3dbc:	03c42783          	lw	a5,60(s0)
    3dc0:	00078463          	beqz	a5,3dc8 <fl_readdir+0x48>
    3dc4:	000780e7          	jalr	a5
    3dc8:	00098613          	mv	a2,s3
    3dcc:	00090593          	mv	a1,s2
    3dd0:	9dc48513          	addi	a0,s1,-1572
    3dd4:	00000097          	auipc	ra,0x0
    3dd8:	d68080e7          	jalr	-664(ra) # 3b3c <fatfs_list_directory_next>
    3ddc:	04042783          	lw	a5,64(s0)
    3de0:	00078863          	beqz	a5,3df0 <fl_readdir+0x70>
    3de4:	00a12623          	sw	a0,12(sp)
    3de8:	000780e7          	jalr	a5
    3dec:	00c12503          	lw	a0,12(sp)
    3df0:	02c12083          	lw	ra,44(sp)
    3df4:	02812403          	lw	s0,40(sp)
    3df8:	00154513          	xori	a0,a0,1
    3dfc:	02412483          	lw	s1,36(sp)
    3e00:	02012903          	lw	s2,32(sp)
    3e04:	01c12983          	lw	s3,28(sp)
    3e08:	40a00533          	neg	a0,a0
    3e0c:	03010113          	addi	sp,sp,48
    3e10:	00008067          	ret

00003e14 <_read_sectors>:
    3e14:	fd010113          	addi	sp,sp,-48
    3e18:	01512a23          	sw	s5,20(sp)
    3e1c:	0000cab7          	lui	s5,0xc
    3e20:	01312e23          	sw	s3,28(sp)
    3e24:	9dcac983          	lbu	s3,-1572(s5) # b9dc <_fs>
    3e28:	01612823          	sw	s6,16(sp)
    3e2c:	00058b13          	mv	s6,a1
    3e30:	02912223          	sw	s1,36(sp)
    3e34:	00098593          	mv	a1,s3
    3e38:	00050493          	mv	s1,a0
    3e3c:	000b0513          	mv	a0,s6
    3e40:	02112623          	sw	ra,44(sp)
    3e44:	02812423          	sw	s0,40(sp)
    3e48:	01412c23          	sw	s4,24(sp)
    3e4c:	00068413          	mv	s0,a3
    3e50:	01712623          	sw	s7,12(sp)
    3e54:	01812423          	sw	s8,8(sp)
    3e58:	03212023          	sw	s2,32(sp)
    3e5c:	00060c13          	mv	s8,a2
    3e60:	ffffd097          	auipc	ra,0xffffd
    3e64:	744080e7          	jalr	1860(ra) # 15a4 <__udivsi3>
    3e68:	00050a13          	mv	s4,a0
    3e6c:	00098593          	mv	a1,s3
    3e70:	000b0513          	mv	a0,s6
    3e74:	ffffd097          	auipc	ra,0xffffd
    3e78:	778080e7          	jalr	1912(ra) # 15ec <__umodsi3>
    3e7c:	00a407b3          	add	a5,s0,a0
    3e80:	00050b93          	mv	s7,a0
    3e84:	00f9fe63          	bgeu	s3,a5,3ea0 <_read_sectors+0x8c>
    3e88:	000a0593          	mv	a1,s4
    3e8c:	00098513          	mv	a0,s3
    3e90:	ffffe097          	auipc	ra,0xffffe
    3e94:	f10080e7          	jalr	-240(ra) # 1da0 <__mulsi3>
    3e98:	416987b3          	sub	a5,s3,s6
    3e9c:	00f50433          	add	s0,a0,a5
    3ea0:	2284a903          	lw	s2,552(s1)
    3ea4:	07491863          	bne	s2,s4,3f14 <_read_sectors+0x100>
    3ea8:	22c4a583          	lw	a1,556(s1)
    3eac:	fff00793          	li	a5,-1
    3eb0:	02f58663          	beq	a1,a5,3edc <_read_sectors+0xc8>
    3eb4:	9dca8513          	addi	a0,s5,-1572
    3eb8:	ffffe097          	auipc	ra,0xffffe
    3ebc:	24c080e7          	jalr	588(ra) # 2104 <fatfs_lba_of_cluster>
    3ec0:	017505b3          	add	a1,a0,s7
    3ec4:	00040693          	mv	a3,s0
    3ec8:	000c0613          	mv	a2,s8
    3ecc:	9dca8513          	addi	a0,s5,-1572
    3ed0:	ffffe097          	auipc	ra,0xffffe
    3ed4:	280080e7          	jalr	640(ra) # 2150 <fatfs_sector_read>
    3ed8:	00051463          	bnez	a0,3ee0 <_read_sectors+0xcc>
    3edc:	00000413          	li	s0,0
    3ee0:	02c12083          	lw	ra,44(sp)
    3ee4:	00040513          	mv	a0,s0
    3ee8:	02812403          	lw	s0,40(sp)
    3eec:	02412483          	lw	s1,36(sp)
    3ef0:	02012903          	lw	s2,32(sp)
    3ef4:	01c12983          	lw	s3,28(sp)
    3ef8:	01812a03          	lw	s4,24(sp)
    3efc:	01412a83          	lw	s5,20(sp)
    3f00:	01012b03          	lw	s6,16(sp)
    3f04:	00c12b83          	lw	s7,12(sp)
    3f08:	00812c03          	lw	s8,8(sp)
    3f0c:	03010113          	addi	sp,sp,48
    3f10:	00008067          	ret
    3f14:	033b6463          	bltu	s6,s3,3f3c <_read_sectors+0x128>
    3f18:	00190793          	addi	a5,s2,1
    3f1c:	03479063          	bne	a5,s4,3f3c <_read_sectors+0x128>
    3f20:	22c4a583          	lw	a1,556(s1)
    3f24:	03496263          	bltu	s2,s4,3f48 <_read_sectors+0x134>
    3f28:	fff00793          	li	a5,-1
    3f2c:	faf588e3          	beq	a1,a5,3edc <_read_sectors+0xc8>
    3f30:	22b4a623          	sw	a1,556(s1)
    3f34:	2344a423          	sw	s4,552(s1)
    3f38:	f7dff06f          	j	3eb4 <_read_sectors+0xa0>
    3f3c:	0044a583          	lw	a1,4(s1)
    3f40:	00000913          	li	s2,0
    3f44:	fe1ff06f          	j	3f24 <_read_sectors+0x110>
    3f48:	9dca8513          	addi	a0,s5,-1572
    3f4c:	fffff097          	auipc	ra,0xfffff
    3f50:	230080e7          	jalr	560(ra) # 317c <fatfs_find_next_cluster>
    3f54:	00050593          	mv	a1,a0
    3f58:	00190913          	addi	s2,s2,1
    3f5c:	fc9ff06f          	j	3f24 <_read_sectors+0x110>

00003f60 <fatfs_set_fs_info_next_free_cluster>:
    3f60:	03052783          	lw	a5,48(a0)
    3f64:	0a078463          	beqz	a5,400c <fatfs_set_fs_info_next_free_cluster+0xac>
    3f68:	fe010113          	addi	sp,sp,-32
    3f6c:	01c52783          	lw	a5,28(a0)
    3f70:	00912a23          	sw	s1,20(sp)
    3f74:	00058493          	mv	s1,a1
    3f78:	01855583          	lhu	a1,24(a0)
    3f7c:	00812c23          	sw	s0,24(sp)
    3f80:	00112e23          	sw	ra,28(sp)
    3f84:	00f585b3          	add	a1,a1,a5
    3f88:	00050413          	mv	s0,a0
    3f8c:	ffffe097          	auipc	ra,0xffffe
    3f90:	fcc080e7          	jalr	-52(ra) # 1f58 <fatfs_fat_read_sector>
    3f94:	00050593          	mv	a1,a0
    3f98:	06050063          	beqz	a0,3ff8 <fatfs_set_fs_info_next_free_cluster+0x98>
    3f9c:	20852783          	lw	a5,520(a0)
    3fa0:	0084d713          	srli	a4,s1,0x8
    3fa4:	00100613          	li	a2,1
    3fa8:	1e978623          	sb	s1,492(a5)
    3fac:	20852783          	lw	a5,520(a0)
    3fb0:	1ee786a3          	sb	a4,493(a5)
    3fb4:	20852783          	lw	a5,520(a0)
    3fb8:	0104d713          	srli	a4,s1,0x10
    3fbc:	1ee78723          	sb	a4,494(a5)
    3fc0:	20852783          	lw	a5,520(a0)
    3fc4:	0184d713          	srli	a4,s1,0x18
    3fc8:	1ee787a3          	sb	a4,495(a5)
    3fcc:	03842783          	lw	a5,56(s0)
    3fd0:	20c52223          	sw	a2,516(a0)
    3fd4:	02942223          	sw	s1,36(s0)
    3fd8:	00078a63          	beqz	a5,3fec <fatfs_set_fs_info_next_free_cluster+0x8c>
    3fdc:	20052503          	lw	a0,512(a0)
    3fe0:	00b12623          	sw	a1,12(sp)
    3fe4:	000780e7          	jalr	a5
    3fe8:	00c12583          	lw	a1,12(sp)
    3fec:	fff00793          	li	a5,-1
    3ff0:	20f5a023          	sw	a5,512(a1)
    3ff4:	2005a223          	sw	zero,516(a1)
    3ff8:	01c12083          	lw	ra,28(sp)
    3ffc:	01812403          	lw	s0,24(sp)
    4000:	01412483          	lw	s1,20(sp)
    4004:	02010113          	addi	sp,sp,32
    4008:	00008067          	ret
    400c:	00008067          	ret

00004010 <fatfs_find_blank_cluster>:
    4010:	fd010113          	addi	sp,sp,-48
    4014:	01312e23          	sw	s3,28(sp)
    4018:	100009b7          	lui	s3,0x10000
    401c:	02912223          	sw	s1,36(sp)
    4020:	03212023          	sw	s2,32(sp)
    4024:	02112623          	sw	ra,44(sp)
    4028:	02812423          	sw	s0,40(sp)
    402c:	00050913          	mv	s2,a0
    4030:	00058493          	mv	s1,a1
    4034:	fff98993          	addi	s3,s3,-1 # fffffff <__stacktop+0xffeffff>
    4038:	03092783          	lw	a5,48(s2)
    403c:	0074d413          	srli	s0,s1,0x7
    4040:	00079463          	bnez	a5,4048 <fatfs_find_blank_cluster+0x38>
    4044:	0084d413          	srli	s0,s1,0x8
    4048:	02092783          	lw	a5,32(s2)
    404c:	0cf47863          	bgeu	s0,a5,411c <fatfs_find_blank_cluster+0x10c>
    4050:	01492583          	lw	a1,20(s2)
    4054:	00090513          	mv	a0,s2
    4058:	00c12623          	sw	a2,12(sp)
    405c:	00b405b3          	add	a1,s0,a1
    4060:	ffffe097          	auipc	ra,0xffffe
    4064:	ef8080e7          	jalr	-264(ra) # 1f58 <fatfs_fat_read_sector>
    4068:	0a050a63          	beqz	a0,411c <fatfs_find_blank_cluster+0x10c>
    406c:	03092783          	lw	a5,48(s2)
    4070:	20852703          	lw	a4,520(a0)
    4074:	00c12603          	lw	a2,12(sp)
    4078:	04079a63          	bnez	a5,40cc <fatfs_find_blank_cluster+0xbc>
    407c:	00841413          	slli	s0,s0,0x8
    4080:	40848433          	sub	s0,s1,s0
    4084:	00141413          	slli	s0,s0,0x1
    4088:	01041413          	slli	s0,s0,0x10
    408c:	01045413          	srli	s0,s0,0x10
    4090:	00870733          	add	a4,a4,s0
    4094:	00174783          	lbu	a5,1(a4)
    4098:	00074703          	lbu	a4,0(a4)
    409c:	00879793          	slli	a5,a5,0x8
    40a0:	00e787b3          	add	a5,a5,a4
    40a4:	06079863          	bnez	a5,4114 <fatfs_find_blank_cluster+0x104>
    40a8:	00962023          	sw	s1,0(a2)
    40ac:	00100513          	li	a0,1
    40b0:	02c12083          	lw	ra,44(sp)
    40b4:	02812403          	lw	s0,40(sp)
    40b8:	02412483          	lw	s1,36(sp)
    40bc:	02012903          	lw	s2,32(sp)
    40c0:	01c12983          	lw	s3,28(sp)
    40c4:	03010113          	addi	sp,sp,48
    40c8:	00008067          	ret
    40cc:	00741413          	slli	s0,s0,0x7
    40d0:	40848433          	sub	s0,s1,s0
    40d4:	00241413          	slli	s0,s0,0x2
    40d8:	01041413          	slli	s0,s0,0x10
    40dc:	01045413          	srli	s0,s0,0x10
    40e0:	00870733          	add	a4,a4,s0
    40e4:	00374783          	lbu	a5,3(a4)
    40e8:	00274683          	lbu	a3,2(a4)
    40ec:	01879793          	slli	a5,a5,0x18
    40f0:	01069693          	slli	a3,a3,0x10
    40f4:	00d787b3          	add	a5,a5,a3
    40f8:	00074683          	lbu	a3,0(a4)
    40fc:	00174703          	lbu	a4,1(a4)
    4100:	00d787b3          	add	a5,a5,a3
    4104:	00871713          	slli	a4,a4,0x8
    4108:	00e787b3          	add	a5,a5,a4
    410c:	0137f7b3          	and	a5,a5,s3
    4110:	f95ff06f          	j	40a4 <fatfs_find_blank_cluster+0x94>
    4114:	00148493          	addi	s1,s1,1
    4118:	f21ff06f          	j	4038 <fatfs_find_blank_cluster+0x28>
    411c:	00000513          	li	a0,0
    4120:	f91ff06f          	j	40b0 <fatfs_find_blank_cluster+0xa0>

00004124 <fatfs_fat_set_cluster>:
    4124:	03052783          	lw	a5,48(a0)
    4128:	fe010113          	addi	sp,sp,-32
    412c:	00812c23          	sw	s0,24(sp)
    4130:	00912a23          	sw	s1,20(sp)
    4134:	01212823          	sw	s2,16(sp)
    4138:	00112e23          	sw	ra,28(sp)
    413c:	00050913          	mv	s2,a0
    4140:	00058413          	mv	s0,a1
    4144:	0085d493          	srli	s1,a1,0x8
    4148:	00078463          	beqz	a5,4150 <fatfs_fat_set_cluster+0x2c>
    414c:	0075d493          	srli	s1,a1,0x7
    4150:	01492583          	lw	a1,20(s2)
    4154:	00090513          	mv	a0,s2
    4158:	00c12623          	sw	a2,12(sp)
    415c:	00b485b3          	add	a1,s1,a1
    4160:	ffffe097          	auipc	ra,0xffffe
    4164:	df8080e7          	jalr	-520(ra) # 1f58 <fatfs_fat_read_sector>
    4168:	00050793          	mv	a5,a0
    416c:	00000513          	li	a0,0
    4170:	04078663          	beqz	a5,41bc <fatfs_fat_set_cluster+0x98>
    4174:	03092683          	lw	a3,48(s2)
    4178:	2087a703          	lw	a4,520(a5)
    417c:	00c12603          	lw	a2,12(sp)
    4180:	04069a63          	bnez	a3,41d4 <fatfs_fat_set_cluster+0xb0>
    4184:	00849493          	slli	s1,s1,0x8
    4188:	40940433          	sub	s0,s0,s1
    418c:	00141413          	slli	s0,s0,0x1
    4190:	01041413          	slli	s0,s0,0x10
    4194:	01045413          	srli	s0,s0,0x10
    4198:	00870733          	add	a4,a4,s0
    419c:	00c70023          	sb	a2,0(a4)
    41a0:	2087a703          	lw	a4,520(a5)
    41a4:	00865613          	srli	a2,a2,0x8
    41a8:	00870733          	add	a4,a4,s0
    41ac:	00c700a3          	sb	a2,1(a4)
    41b0:	00100713          	li	a4,1
    41b4:	20e7a223          	sw	a4,516(a5)
    41b8:	00100513          	li	a0,1
    41bc:	01c12083          	lw	ra,28(sp)
    41c0:	01812403          	lw	s0,24(sp)
    41c4:	01412483          	lw	s1,20(sp)
    41c8:	01012903          	lw	s2,16(sp)
    41cc:	02010113          	addi	sp,sp,32
    41d0:	00008067          	ret
    41d4:	00749493          	slli	s1,s1,0x7
    41d8:	40940433          	sub	s0,s0,s1
    41dc:	00241413          	slli	s0,s0,0x2
    41e0:	01041413          	slli	s0,s0,0x10
    41e4:	01045413          	srli	s0,s0,0x10
    41e8:	00870733          	add	a4,a4,s0
    41ec:	00c70023          	sb	a2,0(a4)
    41f0:	2087a703          	lw	a4,520(a5)
    41f4:	00865693          	srli	a3,a2,0x8
    41f8:	00870733          	add	a4,a4,s0
    41fc:	00d700a3          	sb	a3,1(a4)
    4200:	2087a703          	lw	a4,520(a5)
    4204:	01065693          	srli	a3,a2,0x10
    4208:	01865613          	srli	a2,a2,0x18
    420c:	00870733          	add	a4,a4,s0
    4210:	00d70123          	sb	a3,2(a4)
    4214:	2087a703          	lw	a4,520(a5)
    4218:	00870733          	add	a4,a4,s0
    421c:	00c701a3          	sb	a2,3(a4)
    4220:	f91ff06f          	j	41b0 <fatfs_fat_set_cluster+0x8c>

00004224 <fatfs_free_cluster_chain>:
    4224:	fe010113          	addi	sp,sp,-32
    4228:	00812c23          	sw	s0,24(sp)
    422c:	00912a23          	sw	s1,20(sp)
    4230:	00112e23          	sw	ra,28(sp)
    4234:	01212823          	sw	s2,16(sp)
    4238:	00050493          	mv	s1,a0
    423c:	ffd00413          	li	s0,-3
    4240:	fff58793          	addi	a5,a1,-1
    4244:	02f47063          	bgeu	s0,a5,4264 <fatfs_free_cluster_chain+0x40>
    4248:	01c12083          	lw	ra,28(sp)
    424c:	01812403          	lw	s0,24(sp)
    4250:	01412483          	lw	s1,20(sp)
    4254:	01012903          	lw	s2,16(sp)
    4258:	00100513          	li	a0,1
    425c:	02010113          	addi	sp,sp,32
    4260:	00008067          	ret
    4264:	00048513          	mv	a0,s1
    4268:	00b12623          	sw	a1,12(sp)
    426c:	fffff097          	auipc	ra,0xfffff
    4270:	f10080e7          	jalr	-240(ra) # 317c <fatfs_find_next_cluster>
    4274:	00c12583          	lw	a1,12(sp)
    4278:	00050913          	mv	s2,a0
    427c:	00000613          	li	a2,0
    4280:	00048513          	mv	a0,s1
    4284:	00000097          	auipc	ra,0x0
    4288:	ea0080e7          	jalr	-352(ra) # 4124 <fatfs_fat_set_cluster>
    428c:	00090593          	mv	a1,s2
    4290:	fb1ff06f          	j	4240 <fatfs_free_cluster_chain+0x1c>

00004294 <fatfs_fat_add_cluster_to_chain>:
    4294:	fd010113          	addi	sp,sp,-48
    4298:	02912223          	sw	s1,36(sp)
    429c:	02112623          	sw	ra,44(sp)
    42a0:	02812423          	sw	s0,40(sp)
    42a4:	03212023          	sw	s2,32(sp)
    42a8:	01312e23          	sw	s3,28(sp)
    42ac:	fff00493          	li	s1,-1
    42b0:	02959263          	bne	a1,s1,42d4 <fatfs_fat_add_cluster_to_chain+0x40>
    42b4:	00000513          	li	a0,0
    42b8:	02c12083          	lw	ra,44(sp)
    42bc:	02812403          	lw	s0,40(sp)
    42c0:	02412483          	lw	s1,36(sp)
    42c4:	02012903          	lw	s2,32(sp)
    42c8:	01c12983          	lw	s3,28(sp)
    42cc:	03010113          	addi	sp,sp,48
    42d0:	00008067          	ret
    42d4:	00050913          	mv	s2,a0
    42d8:	00058413          	mv	s0,a1
    42dc:	00060993          	mv	s3,a2
    42e0:	00040593          	mv	a1,s0
    42e4:	00090513          	mv	a0,s2
    42e8:	00812623          	sw	s0,12(sp)
    42ec:	fffff097          	auipc	ra,0xfffff
    42f0:	e90080e7          	jalr	-368(ra) # 317c <fatfs_find_next_cluster>
    42f4:	00050413          	mv	s0,a0
    42f8:	fa050ee3          	beqz	a0,42b4 <fatfs_fat_add_cluster_to_chain+0x20>
    42fc:	00c12583          	lw	a1,12(sp)
    4300:	fe9510e3          	bne	a0,s1,42e0 <fatfs_fat_add_cluster_to_chain+0x4c>
    4304:	00098613          	mv	a2,s3
    4308:	00090513          	mv	a0,s2
    430c:	00000097          	auipc	ra,0x0
    4310:	e18080e7          	jalr	-488(ra) # 4124 <fatfs_fat_set_cluster>
    4314:	00040613          	mv	a2,s0
    4318:	00098593          	mv	a1,s3
    431c:	00090513          	mv	a0,s2
    4320:	00000097          	auipc	ra,0x0
    4324:	e04080e7          	jalr	-508(ra) # 4124 <fatfs_fat_set_cluster>
    4328:	00100513          	li	a0,1
    432c:	f8dff06f          	j	42b8 <fatfs_fat_add_cluster_to_chain+0x24>

00004330 <fatfs_add_free_space>:
    4330:	02452783          	lw	a5,36(a0)
    4334:	fd010113          	addi	sp,sp,-48
    4338:	02812423          	sw	s0,40(sp)
    433c:	01312e23          	sw	s3,28(sp)
    4340:	01412c23          	sw	s4,24(sp)
    4344:	0005a983          	lw	s3,0(a1)
    4348:	01512a23          	sw	s5,20(sp)
    434c:	00058a13          	mv	s4,a1
    4350:	02112623          	sw	ra,44(sp)
    4354:	02912223          	sw	s1,36(sp)
    4358:	03212023          	sw	s2,32(sp)
    435c:	fff00593          	li	a1,-1
    4360:	00050413          	mv	s0,a0
    4364:	00060a93          	mv	s5,a2
    4368:	00b78663          	beq	a5,a1,4374 <fatfs_add_free_space+0x44>
    436c:	00000097          	auipc	ra,0x0
    4370:	bf4080e7          	jalr	-1036(ra) # 3f60 <fatfs_set_fs_info_next_free_cluster>
    4374:	00000493          	li	s1,0
    4378:	03549663          	bne	s1,s5,43a4 <fatfs_add_free_space+0x74>
    437c:	00100513          	li	a0,1
    4380:	02c12083          	lw	ra,44(sp)
    4384:	02812403          	lw	s0,40(sp)
    4388:	02412483          	lw	s1,36(sp)
    438c:	02012903          	lw	s2,32(sp)
    4390:	01c12983          	lw	s3,28(sp)
    4394:	01812a03          	lw	s4,24(sp)
    4398:	01412a83          	lw	s5,20(sp)
    439c:	03010113          	addi	sp,sp,48
    43a0:	00008067          	ret
    43a4:	00842583          	lw	a1,8(s0)
    43a8:	00c10613          	addi	a2,sp,12
    43ac:	00040513          	mv	a0,s0
    43b0:	00000097          	auipc	ra,0x0
    43b4:	c60080e7          	jalr	-928(ra) # 4010 <fatfs_find_blank_cluster>
    43b8:	fc0504e3          	beqz	a0,4380 <fatfs_add_free_space+0x50>
    43bc:	00c12903          	lw	s2,12(sp)
    43c0:	00098593          	mv	a1,s3
    43c4:	00040513          	mv	a0,s0
    43c8:	00090613          	mv	a2,s2
    43cc:	00000097          	auipc	ra,0x0
    43d0:	d58080e7          	jalr	-680(ra) # 4124 <fatfs_fat_set_cluster>
    43d4:	fff00613          	li	a2,-1
    43d8:	00090593          	mv	a1,s2
    43dc:	00040513          	mv	a0,s0
    43e0:	00000097          	auipc	ra,0x0
    43e4:	d44080e7          	jalr	-700(ra) # 4124 <fatfs_fat_set_cluster>
    43e8:	00049463          	bnez	s1,43f0 <fatfs_add_free_space+0xc0>
    43ec:	012a2023          	sw	s2,0(s4)
    43f0:	00148493          	addi	s1,s1,1
    43f4:	00090993          	mv	s3,s2
    43f8:	f81ff06f          	j	4378 <fatfs_add_free_space+0x48>

000043fc <_write_sectors>:
    43fc:	fb010113          	addi	sp,sp,-80
    4400:	03512a23          	sw	s5,52(sp)
    4404:	0000cab7          	lui	s5,0xc
    4408:	04112623          	sw	ra,76(sp)
    440c:	04812423          	sw	s0,72(sp)
    4410:	04912223          	sw	s1,68(sp)
    4414:	03412c23          	sw	s4,56(sp)
    4418:	03612823          	sw	s6,48(sp)
    441c:	03712623          	sw	s7,44(sp)
    4420:	03812423          	sw	s8,40(sp)
    4424:	03912223          	sw	s9,36(sp)
    4428:	03a12023          	sw	s10,32(sp)
    442c:	05212023          	sw	s2,64(sp)
    4430:	03312e23          	sw	s3,60(sp)
    4434:	9dca8b93          	addi	s7,s5,-1572 # b9dc <_fs>
    4438:	000bc983          	lbu	s3,0(s7)
    443c:	00058b13          	mv	s6,a1
    4440:	fff00793          	li	a5,-1
    4444:	00098593          	mv	a1,s3
    4448:	00050493          	mv	s1,a0
    444c:	000b0513          	mv	a0,s6
    4450:	00068c13          	mv	s8,a3
    4454:	00f12e23          	sw	a5,28(sp)
    4458:	00060d13          	mv	s10,a2
    445c:	ffffd097          	auipc	ra,0xffffd
    4460:	148080e7          	jalr	328(ra) # 15a4 <__udivsi3>
    4464:	00050a13          	mv	s4,a0
    4468:	00098593          	mv	a1,s3
    446c:	000b0513          	mv	a0,s6
    4470:	ffffd097          	auipc	ra,0xffffd
    4474:	17c080e7          	jalr	380(ra) # 15ec <__umodsi3>
    4478:	00ac07b3          	add	a5,s8,a0
    447c:	00050c93          	mv	s9,a0
    4480:	000c0413          	mv	s0,s8
    4484:	00f9fe63          	bgeu	s3,a5,44a0 <_write_sectors+0xa4>
    4488:	000a0593          	mv	a1,s4
    448c:	00098513          	mv	a0,s3
    4490:	ffffe097          	auipc	ra,0xffffe
    4494:	910080e7          	jalr	-1776(ra) # 1da0 <__mulsi3>
    4498:	416987b3          	sub	a5,s3,s6
    449c:	00f50433          	add	s0,a0,a5
    44a0:	2284a903          	lw	s2,552(s1)
    44a4:	03491a63          	bne	s2,s4,44d8 <_write_sectors+0xdc>
    44a8:	22c4a583          	lw	a1,556(s1)
    44ac:	9dca8513          	addi	a0,s5,-1572
    44b0:	ffffe097          	auipc	ra,0xffffe
    44b4:	c54080e7          	jalr	-940(ra) # 2104 <fatfs_lba_of_cluster>
    44b8:	019505b3          	add	a1,a0,s9
    44bc:	00040693          	mv	a3,s0
    44c0:	000d0613          	mv	a2,s10
    44c4:	9dca8513          	addi	a0,s5,-1572
    44c8:	ffffe097          	auipc	ra,0xffffe
    44cc:	ca0080e7          	jalr	-864(ra) # 2168 <fatfs_sector_write>
    44d0:	04050a63          	beqz	a0,4524 <_write_sectors+0x128>
    44d4:	0540006f          	j	4528 <_write_sectors+0x12c>
    44d8:	093b6663          	bltu	s6,s3,4564 <_write_sectors+0x168>
    44dc:	00190793          	addi	a5,s2,1
    44e0:	09479263          	bne	a5,s4,4564 <_write_sectors+0x168>
    44e4:	22c4a583          	lw	a1,556(s1)
    44e8:	fff00b13          	li	s6,-1
    44ec:	09496263          	bltu	s2,s4,4570 <_write_sectors+0x174>
    44f0:	fff00793          	li	a5,-1
    44f4:	0af59463          	bne	a1,a5,459c <_write_sectors+0x1a0>
    44f8:	000bc583          	lbu	a1,0(s7)
    44fc:	fff58513          	addi	a0,a1,-1
    4500:	01850533          	add	a0,a0,s8
    4504:	ffffd097          	auipc	ra,0xffffd
    4508:	0a0080e7          	jalr	160(ra) # 15a4 <__udivsi3>
    450c:	00050613          	mv	a2,a0
    4510:	01c10593          	addi	a1,sp,28
    4514:	000b8513          	mv	a0,s7
    4518:	00000097          	auipc	ra,0x0
    451c:	e18080e7          	jalr	-488(ra) # 4330 <fatfs_add_free_space>
    4520:	06051c63          	bnez	a0,4598 <_write_sectors+0x19c>
    4524:	00000413          	li	s0,0
    4528:	04c12083          	lw	ra,76(sp)
    452c:	00040513          	mv	a0,s0
    4530:	04812403          	lw	s0,72(sp)
    4534:	04412483          	lw	s1,68(sp)
    4538:	04012903          	lw	s2,64(sp)
    453c:	03c12983          	lw	s3,60(sp)
    4540:	03812a03          	lw	s4,56(sp)
    4544:	03412a83          	lw	s5,52(sp)
    4548:	03012b03          	lw	s6,48(sp)
    454c:	02c12b83          	lw	s7,44(sp)
    4550:	02812c03          	lw	s8,40(sp)
    4554:	02412c83          	lw	s9,36(sp)
    4558:	02012d03          	lw	s10,32(sp)
    455c:	05010113          	addi	sp,sp,80
    4560:	00008067          	ret
    4564:	0044a583          	lw	a1,4(s1)
    4568:	00000913          	li	s2,0
    456c:	f7dff06f          	j	44e8 <_write_sectors+0xec>
    4570:	9dca8513          	addi	a0,s5,-1572
    4574:	00b12623          	sw	a1,12(sp)
    4578:	fffff097          	auipc	ra,0xfffff
    457c:	c04080e7          	jalr	-1020(ra) # 317c <fatfs_find_next_cluster>
    4580:	00c12583          	lw	a1,12(sp)
    4584:	00b12e23          	sw	a1,28(sp)
    4588:	f76508e3          	beq	a0,s6,44f8 <_write_sectors+0xfc>
    458c:	00190913          	addi	s2,s2,1
    4590:	00050593          	mv	a1,a0
    4594:	f59ff06f          	j	44ec <_write_sectors+0xf0>
    4598:	01c12583          	lw	a1,28(sp)
    459c:	22b4a623          	sw	a1,556(s1)
    45a0:	2344a423          	sw	s4,552(s1)
    45a4:	f09ff06f          	j	44ac <_write_sectors+0xb0>

000045a8 <fl_fflush>:
    45a8:	000057b7          	lui	a5,0x5
    45ac:	7587a783          	lw	a5,1880(a5) # 5758 <_filelib_init>
    45b0:	ff010113          	addi	sp,sp,-16
    45b4:	00812423          	sw	s0,8(sp)
    45b8:	00112623          	sw	ra,12(sp)
    45bc:	00912223          	sw	s1,4(sp)
    45c0:	00050413          	mv	s0,a0
    45c4:	00079663          	bnez	a5,45d0 <fl_fflush+0x28>
    45c8:	ffffe097          	auipc	ra,0xffffe
    45cc:	c6c080e7          	jalr	-916(ra) # 2234 <fl_init>
    45d0:	04040663          	beqz	s0,461c <fl_fflush+0x74>
    45d4:	0000c4b7          	lui	s1,0xc
    45d8:	9dc48493          	addi	s1,s1,-1572 # b9dc <_fs>
    45dc:	03c4a783          	lw	a5,60(s1)
    45e0:	00078463          	beqz	a5,45e8 <fl_fflush+0x40>
    45e4:	000780e7          	jalr	a5
    45e8:	43442783          	lw	a5,1076(s0)
    45ec:	02078263          	beqz	a5,4610 <fl_fflush+0x68>
    45f0:	43042583          	lw	a1,1072(s0)
    45f4:	00100693          	li	a3,1
    45f8:	23040613          	addi	a2,s0,560
    45fc:	00040513          	mv	a0,s0
    4600:	00000097          	auipc	ra,0x0
    4604:	dfc080e7          	jalr	-516(ra) # 43fc <_write_sectors>
    4608:	00050463          	beqz	a0,4610 <fl_fflush+0x68>
    460c:	42042a23          	sw	zero,1076(s0)
    4610:	0404a783          	lw	a5,64(s1)
    4614:	00078463          	beqz	a5,461c <fl_fflush+0x74>
    4618:	000780e7          	jalr	a5
    461c:	00c12083          	lw	ra,12(sp)
    4620:	00812403          	lw	s0,8(sp)
    4624:	00412483          	lw	s1,4(sp)
    4628:	00000513          	li	a0,0
    462c:	01010113          	addi	sp,sp,16
    4630:	00008067          	ret

00004634 <fl_fclose>:
    4634:	000057b7          	lui	a5,0x5
    4638:	7587a783          	lw	a5,1880(a5) # 5758 <_filelib_init>
    463c:	ff010113          	addi	sp,sp,-16
    4640:	00812423          	sw	s0,8(sp)
    4644:	00112623          	sw	ra,12(sp)
    4648:	00912223          	sw	s1,4(sp)
    464c:	01212023          	sw	s2,0(sp)
    4650:	00050413          	mv	s0,a0
    4654:	00079663          	bnez	a5,4660 <fl_fclose+0x2c>
    4658:	ffffe097          	auipc	ra,0xffffe
    465c:	bdc080e7          	jalr	-1060(ra) # 2234 <fl_init>
    4660:	08040c63          	beqz	s0,46f8 <fl_fclose+0xc4>
    4664:	0000c4b7          	lui	s1,0xc
    4668:	9dc48913          	addi	s2,s1,-1572 # b9dc <_fs>
    466c:	03c92783          	lw	a5,60(s2)
    4670:	00078463          	beqz	a5,4678 <fl_fclose+0x44>
    4674:	000780e7          	jalr	a5
    4678:	00040513          	mv	a0,s0
    467c:	00000097          	auipc	ra,0x0
    4680:	f2c080e7          	jalr	-212(ra) # 45a8 <fl_fflush>
    4684:	01042783          	lw	a5,16(s0)
    4688:	00078e63          	beqz	a5,46a4 <fl_fclose+0x70>
    468c:	00c42683          	lw	a3,12(s0)
    4690:	00042583          	lw	a1,0(s0)
    4694:	21c40613          	addi	a2,s0,540
    4698:	9dc48513          	addi	a0,s1,-1572
    469c:	fffff097          	auipc	ra,0xfffff
    46a0:	338080e7          	jalr	824(ra) # 39d4 <fatfs_update_file_length>
    46a4:	fff00793          	li	a5,-1
    46a8:	42f42823          	sw	a5,1072(s0)
    46ac:	00040513          	mv	a0,s0
    46b0:	00042423          	sw	zero,8(s0)
    46b4:	00042623          	sw	zero,12(s0)
    46b8:	00042223          	sw	zero,4(s0)
    46bc:	42042a23          	sw	zero,1076(s0)
    46c0:	00042823          	sw	zero,16(s0)
    46c4:	ffffe097          	auipc	ra,0xffffe
    46c8:	9f8080e7          	jalr	-1544(ra) # 20bc <_free_file>
    46cc:	9dc48513          	addi	a0,s1,-1572
    46d0:	fffff097          	auipc	ra,0xfffff
    46d4:	a54080e7          	jalr	-1452(ra) # 3124 <fatfs_fat_purge>
    46d8:	04092783          	lw	a5,64(s2)
    46dc:	00078e63          	beqz	a5,46f8 <fl_fclose+0xc4>
    46e0:	00812403          	lw	s0,8(sp)
    46e4:	00c12083          	lw	ra,12(sp)
    46e8:	00412483          	lw	s1,4(sp)
    46ec:	00012903          	lw	s2,0(sp)
    46f0:	01010113          	addi	sp,sp,16
    46f4:	00078067          	jr	a5
    46f8:	00c12083          	lw	ra,12(sp)
    46fc:	00812403          	lw	s0,8(sp)
    4700:	00412483          	lw	s1,4(sp)
    4704:	00012903          	lw	s2,0(sp)
    4708:	01010113          	addi	sp,sp,16
    470c:	00008067          	ret

00004710 <fl_fread>:
    4710:	000057b7          	lui	a5,0x5
    4714:	7587a783          	lw	a5,1880(a5) # 5758 <_filelib_init>
    4718:	fc010113          	addi	sp,sp,-64
    471c:	02812c23          	sw	s0,56(sp)
    4720:	03512223          	sw	s5,36(sp)
    4724:	02112e23          	sw	ra,60(sp)
    4728:	02912a23          	sw	s1,52(sp)
    472c:	03212823          	sw	s2,48(sp)
    4730:	03312623          	sw	s3,44(sp)
    4734:	03412423          	sw	s4,40(sp)
    4738:	03612023          	sw	s6,32(sp)
    473c:	01712e23          	sw	s7,28(sp)
    4740:	01812c23          	sw	s8,24(sp)
    4744:	01912a23          	sw	s9,20(sp)
    4748:	00050a93          	mv	s5,a0
    474c:	00068413          	mv	s0,a3
    4750:	00058513          	mv	a0,a1
    4754:	00079e63          	bnez	a5,4770 <fl_fread+0x60>
    4758:	00c12623          	sw	a2,12(sp)
    475c:	00b12423          	sw	a1,8(sp)
    4760:	ffffe097          	auipc	ra,0xffffe
    4764:	ad4080e7          	jalr	-1324(ra) # 2234 <fl_init>
    4768:	00c12603          	lw	a2,12(sp)
    476c:	00812503          	lw	a0,8(sp)
    4770:	14040e63          	beqz	s0,48cc <fl_fread+0x1bc>
    4774:	140a8c63          	beqz	s5,48cc <fl_fread+0x1bc>
    4778:	43844783          	lbu	a5,1080(s0)
    477c:	fff00493          	li	s1,-1
    4780:	0017f793          	andi	a5,a5,1
    4784:	04078863          	beqz	a5,47d4 <fl_fread+0xc4>
    4788:	00060593          	mv	a1,a2
    478c:	ffffd097          	auipc	ra,0xffffd
    4790:	614080e7          	jalr	1556(ra) # 1da0 <__mulsi3>
    4794:	00050493          	mv	s1,a0
    4798:	02050e63          	beqz	a0,47d4 <fl_fread+0xc4>
    479c:	00842583          	lw	a1,8(s0)
    47a0:	00c42783          	lw	a5,12(s0)
    47a4:	12f5f463          	bgeu	a1,a5,48cc <fl_fread+0x1bc>
    47a8:	00b50733          	add	a4,a0,a1
    47ac:	00e7f463          	bgeu	a5,a4,47b4 <fl_fread+0xa4>
    47b0:	40b784b3          	sub	s1,a5,a1
    47b4:	0095da13          	srli	s4,a1,0x9
    47b8:	1ff5f913          	andi	s2,a1,511
    47bc:	00000993          	li	s3,0
    47c0:	23040b13          	addi	s6,s0,560
    47c4:	20000b93          	li	s7,512
    47c8:	1ff00c13          	li	s8,511
    47cc:	0499c063          	blt	s3,s1,480c <fl_fread+0xfc>
    47d0:	00098493          	mv	s1,s3
    47d4:	03c12083          	lw	ra,60(sp)
    47d8:	03812403          	lw	s0,56(sp)
    47dc:	03012903          	lw	s2,48(sp)
    47e0:	02c12983          	lw	s3,44(sp)
    47e4:	02812a03          	lw	s4,40(sp)
    47e8:	02412a83          	lw	s5,36(sp)
    47ec:	02012b03          	lw	s6,32(sp)
    47f0:	01c12b83          	lw	s7,28(sp)
    47f4:	01812c03          	lw	s8,24(sp)
    47f8:	01412c83          	lw	s9,20(sp)
    47fc:	00048513          	mv	a0,s1
    4800:	03412483          	lw	s1,52(sp)
    4804:	04010113          	addi	sp,sp,64
    4808:	00008067          	ret
    480c:	04091663          	bnez	s2,4858 <fl_fread+0x148>
    4810:	413486b3          	sub	a3,s1,s3
    4814:	04dc5263          	bge	s8,a3,4858 <fl_fread+0x148>
    4818:	4096d693          	srai	a3,a3,0x9
    481c:	013a8633          	add	a2,s5,s3
    4820:	000a0593          	mv	a1,s4
    4824:	00040513          	mv	a0,s0
    4828:	fffff097          	auipc	ra,0xfffff
    482c:	5ec080e7          	jalr	1516(ra) # 3e14 <_read_sectors>
    4830:	fa0500e3          	beqz	a0,47d0 <fl_fread+0xc0>
    4834:	00951c93          	slli	s9,a0,0x9
    4838:	000c8613          	mv	a2,s9
    483c:	00aa0a33          	add	s4,s4,a0
    4840:	00842783          	lw	a5,8(s0)
    4844:	00c989b3          	add	s3,s3,a2
    4848:	00000913          	li	s2,0
    484c:	019787b3          	add	a5,a5,s9
    4850:	00f42423          	sw	a5,8(s0)
    4854:	f79ff06f          	j	47cc <fl_fread+0xbc>
    4858:	43042783          	lw	a5,1072(s0)
    485c:	03478e63          	beq	a5,s4,4898 <fl_fread+0x188>
    4860:	43442783          	lw	a5,1076(s0)
    4864:	00078863          	beqz	a5,4874 <fl_fread+0x164>
    4868:	00040513          	mv	a0,s0
    486c:	00000097          	auipc	ra,0x0
    4870:	d3c080e7          	jalr	-708(ra) # 45a8 <fl_fflush>
    4874:	00100693          	li	a3,1
    4878:	000b0613          	mv	a2,s6
    487c:	000a0593          	mv	a1,s4
    4880:	00040513          	mv	a0,s0
    4884:	fffff097          	auipc	ra,0xfffff
    4888:	590080e7          	jalr	1424(ra) # 3e14 <_read_sectors>
    488c:	f40502e3          	beqz	a0,47d0 <fl_fread+0xc0>
    4890:	43442823          	sw	s4,1072(s0)
    4894:	42042a23          	sw	zero,1076(s0)
    4898:	412b87b3          	sub	a5,s7,s2
    489c:	41348633          	sub	a2,s1,s3
    48a0:	00c7d463          	bge	a5,a2,48a8 <fl_fread+0x198>
    48a4:	00078613          	mv	a2,a5
    48a8:	012b05b3          	add	a1,s6,s2
    48ac:	013a8533          	add	a0,s5,s3
    48b0:	00060c93          	mv	s9,a2
    48b4:	00c12423          	sw	a2,8(sp)
    48b8:	ffffd097          	auipc	ra,0xffffd
    48bc:	db4080e7          	jalr	-588(ra) # 166c <memcpy>
    48c0:	00812603          	lw	a2,8(sp)
    48c4:	001a0a13          	addi	s4,s4,1
    48c8:	f79ff06f          	j	4840 <fl_fread+0x130>
    48cc:	fff00493          	li	s1,-1
    48d0:	f05ff06f          	j	47d4 <fl_fread+0xc4>

000048d4 <fatfs_allocate_free_space>:
    48d4:	fd010113          	addi	sp,sp,-48
    48d8:	02112623          	sw	ra,44(sp)
    48dc:	02812423          	sw	s0,40(sp)
    48e0:	02912223          	sw	s1,36(sp)
    48e4:	03212023          	sw	s2,32(sp)
    48e8:	01312e23          	sw	s3,28(sp)
    48ec:	01412c23          	sw	s4,24(sp)
    48f0:	01512a23          	sw	s5,20(sp)
    48f4:	02069863          	bnez	a3,4924 <fatfs_allocate_free_space+0x50>
    48f8:	00000413          	li	s0,0
    48fc:	02c12083          	lw	ra,44(sp)
    4900:	00040513          	mv	a0,s0
    4904:	02812403          	lw	s0,40(sp)
    4908:	02412483          	lw	s1,36(sp)
    490c:	02012903          	lw	s2,32(sp)
    4910:	01c12983          	lw	s3,28(sp)
    4914:	01812a03          	lw	s4,24(sp)
    4918:	01412a83          	lw	s5,20(sp)
    491c:	03010113          	addi	sp,sp,48
    4920:	00008067          	ret
    4924:	02452783          	lw	a5,36(a0)
    4928:	00058a13          	mv	s4,a1
    492c:	fff00593          	li	a1,-1
    4930:	00050493          	mv	s1,a0
    4934:	00068913          	mv	s2,a3
    4938:	00060993          	mv	s3,a2
    493c:	00b78663          	beq	a5,a1,4948 <fatfs_allocate_free_space+0x74>
    4940:	fffff097          	auipc	ra,0xfffff
    4944:	620080e7          	jalr	1568(ra) # 3f60 <fatfs_set_fs_info_next_free_cluster>
    4948:	0004c783          	lbu	a5,0(s1)
    494c:	00090513          	mv	a0,s2
    4950:	00979a93          	slli	s5,a5,0x9
    4954:	000a8593          	mv	a1,s5
    4958:	ffffd097          	auipc	ra,0xffffd
    495c:	c4c080e7          	jalr	-948(ra) # 15a4 <__udivsi3>
    4960:	00050413          	mv	s0,a0
    4964:	00050593          	mv	a1,a0
    4968:	000a8513          	mv	a0,s5
    496c:	ffffd097          	auipc	ra,0xffffd
    4970:	434080e7          	jalr	1076(ra) # 1da0 <__mulsi3>
    4974:	41250533          	sub	a0,a0,s2
    4978:	00a03533          	snez	a0,a0
    497c:	00a40933          	add	s2,s0,a0
    4980:	040a0463          	beqz	s4,49c8 <fatfs_allocate_free_space+0xf4>
    4984:	0084a583          	lw	a1,8(s1)
    4988:	00c10613          	addi	a2,sp,12
    498c:	00048513          	mv	a0,s1
    4990:	fffff097          	auipc	ra,0xfffff
    4994:	680080e7          	jalr	1664(ra) # 4010 <fatfs_find_blank_cluster>
    4998:	00050413          	mv	s0,a0
    499c:	f4050ee3          	beqz	a0,48f8 <fatfs_allocate_free_space+0x24>
    49a0:	00100793          	li	a5,1
    49a4:	02f91663          	bne	s2,a5,49d0 <fatfs_allocate_free_space+0xfc>
    49a8:	00c12903          	lw	s2,12(sp)
    49ac:	fff00613          	li	a2,-1
    49b0:	00048513          	mv	a0,s1
    49b4:	00090593          	mv	a1,s2
    49b8:	fffff097          	auipc	ra,0xfffff
    49bc:	76c080e7          	jalr	1900(ra) # 4124 <fatfs_fat_set_cluster>
    49c0:	0129a023          	sw	s2,0(s3)
    49c4:	f39ff06f          	j	48fc <fatfs_allocate_free_space+0x28>
    49c8:	0009a783          	lw	a5,0(s3)
    49cc:	00f12623          	sw	a5,12(sp)
    49d0:	00090613          	mv	a2,s2
    49d4:	00c10593          	addi	a1,sp,12
    49d8:	00048513          	mv	a0,s1
    49dc:	00000097          	auipc	ra,0x0
    49e0:	954080e7          	jalr	-1708(ra) # 4330 <fatfs_add_free_space>
    49e4:	00050413          	mv	s0,a0
    49e8:	f15ff06f          	j	48fc <fatfs_allocate_free_space+0x28>

000049ec <fatfs_add_file_entry>:
    49ec:	03852883          	lw	a7,56(a0)
    49f0:	30088e63          	beqz	a7,4d0c <fatfs_add_file_entry+0x320>
    49f4:	f8010113          	addi	sp,sp,-128
    49f8:	06812c23          	sw	s0,120(sp)
    49fc:	00050413          	mv	s0,a0
    4a00:	00060513          	mv	a0,a2
    4a04:	06912a23          	sw	s1,116(sp)
    4a08:	07512223          	sw	s5,100(sp)
    4a0c:	00f12c23          	sw	a5,24(sp)
    4a10:	00e12a23          	sw	a4,20(sp)
    4a14:	06112e23          	sw	ra,124(sp)
    4a18:	07212823          	sw	s2,112(sp)
    4a1c:	07312623          	sw	s3,108(sp)
    4a20:	07412423          	sw	s4,104(sp)
    4a24:	07612023          	sw	s6,96(sp)
    4a28:	05712e23          	sw	s7,92(sp)
    4a2c:	05812c23          	sw	s8,88(sp)
    4a30:	05912a23          	sw	s9,84(sp)
    4a34:	05a12823          	sw	s10,80(sp)
    4a38:	05b12623          	sw	s11,76(sp)
    4a3c:	01012e23          	sw	a6,28(sp)
    4a40:	00068a93          	mv	s5,a3
    4a44:	00c12823          	sw	a2,16(sp)
    4a48:	00b12423          	sw	a1,8(sp)
    4a4c:	ffffe097          	auipc	ra,0xffffe
    4a50:	a48080e7          	jalr	-1464(ra) # 2494 <fatfs_lfn_entries_required>
    4a54:	00150713          	addi	a4,a0,1
    4a58:	00100793          	li	a5,1
    4a5c:	00050493          	mv	s1,a0
    4a60:	2ae7f263          	bgeu	a5,a4,4d04 <fatfs_add_file_entry+0x318>
    4a64:	00000a13          	li	s4,0
    4a68:	00000993          	li	s3,0
    4a6c:	00000913          	li	s2,0
    4a70:	00000c93          	li	s9,0
    4a74:	00000b13          	li	s6,0
    4a78:	01000c13          	li	s8,16
    4a7c:	00812583          	lw	a1,8(sp)
    4a80:	00000693          	li	a3,0
    4a84:	000b0613          	mv	a2,s6
    4a88:	00040513          	mv	a0,s0
    4a8c:	000b0b93          	mv	s7,s6
    4a90:	ffffe097          	auipc	ra,0xffffe
    4a94:	7f4080e7          	jalr	2036(ra) # 3284 <fatfs_sector_reader>
    4a98:	18050463          	beqz	a0,4c20 <fatfs_add_file_entry+0x234>
    4a9c:	001b0b13          	addi	s6,s6,1
    4aa0:	04440793          	addi	a5,s0,68
    4aa4:	000c8d13          	mv	s10,s9
    4aa8:	00000d93          	li	s11,0
    4aac:	00078513          	mv	a0,a5
    4ab0:	00f12623          	sw	a5,12(sp)
    4ab4:	ffffe097          	auipc	ra,0xffffe
    4ab8:	8f8080e7          	jalr	-1800(ra) # 23ac <fatfs_entry_lfn_text>
    4abc:	00c12783          	lw	a5,12(sp)
    4ac0:	00050c93          	mv	s9,a0
    4ac4:	02050c63          	beqz	a0,4afc <fatfs_add_file_entry+0x110>
    4ac8:	020d0463          	beqz	s10,4af0 <fatfs_add_file_entry+0x104>
    4acc:	00090c93          	mv	s9,s2
    4ad0:	000c8913          	mv	s2,s9
    4ad4:	001d0c93          	addi	s9,s10,1
    4ad8:	001d8d93          	addi	s11,s11,1
    4adc:	0ffdfd93          	zext.b	s11,s11
    4ae0:	02078793          	addi	a5,a5,32
    4ae4:	f98d8ce3          	beq	s11,s8,4a7c <fatfs_add_file_entry+0x90>
    4ae8:	000c8d13          	mv	s10,s9
    4aec:	fc1ff06f          	j	4aac <fatfs_add_file_entry+0xc0>
    4af0:	000d8a13          	mv	s4,s11
    4af4:	000b8993          	mv	s3,s7
    4af8:	fd9ff06f          	j	4ad0 <fatfs_add_file_entry+0xe4>
    4afc:	0007c683          	lbu	a3,0(a5)
    4b00:	0e500713          	li	a4,229
    4b04:	10e69863          	bne	a3,a4,4c14 <fatfs_add_file_entry+0x228>
    4b08:	000d1863          	bnez	s10,4b18 <fatfs_add_file_entry+0x12c>
    4b0c:	000d8a13          	mv	s4,s11
    4b10:	000b8993          	mv	s3,s7
    4b14:	00100913          	li	s2,1
    4b18:	fa9d4ee3          	blt	s10,s1,4ad4 <fatfs_add_file_entry+0xe8>
    4b1c:	00ba8693          	addi	a3,s5,11
    4b20:	000a8713          	mv	a4,s5
    4b24:	00000913          	li	s2,0
    4b28:	00074603          	lbu	a2,0(a4)
    4b2c:	00195793          	srli	a5,s2,0x1
    4b30:	00791913          	slli	s2,s2,0x7
    4b34:	012787b3          	add	a5,a5,s2
    4b38:	00170713          	addi	a4,a4,1
    4b3c:	00c787b3          	add	a5,a5,a2
    4b40:	0ff7f913          	zext.b	s2,a5
    4b44:	fed712e3          	bne	a4,a3,4b28 <fatfs_add_file_entry+0x13c>
    4b48:	00098b13          	mv	s6,s3
    4b4c:	00000d13          	li	s10,0
    4b50:	01000b93          	li	s7,16
    4b54:	00812583          	lw	a1,8(sp)
    4b58:	00000693          	li	a3,0
    4b5c:	000b0613          	mv	a2,s6
    4b60:	00040513          	mv	a0,s0
    4b64:	ffffe097          	auipc	ra,0xffffe
    4b68:	720080e7          	jalr	1824(ra) # 3284 <fatfs_sector_reader>
    4b6c:	18050c63          	beqz	a0,4d04 <fatfs_add_file_entry+0x318>
    4b70:	04440c93          	addi	s9,s0,68
    4b74:	413b0db3          	sub	s11,s6,s3
    4b78:	00000793          	li	a5,0
    4b7c:	00000c13          	li	s8,0
    4b80:	01912623          	sw	s9,12(sp)
    4b84:	000d1663          	bnez	s10,4b90 <fatfs_add_file_entry+0x1a4>
    4b88:	154c1863          	bne	s8,s4,4cd8 <fatfs_add_file_entry+0x2ec>
    4b8c:	140d9663          	bnez	s11,4cd8 <fatfs_add_file_entry+0x2ec>
    4b90:	12049263          	bnez	s1,4cb4 <fatfs_add_file_entry+0x2c8>
    4b94:	01c12703          	lw	a4,28(sp)
    4b98:	01412603          	lw	a2,20(sp)
    4b9c:	01812583          	lw	a1,24(sp)
    4ba0:	02010693          	addi	a3,sp,32
    4ba4:	000a8513          	mv	a0,s5
    4ba8:	ffffe097          	auipc	ra,0xffffe
    4bac:	a30080e7          	jalr	-1488(ra) # 25d8 <fatfs_sfn_create_entry>
    4bb0:	02000613          	li	a2,32
    4bb4:	00c105b3          	add	a1,sp,a2
    4bb8:	000c8513          	mv	a0,s9
    4bbc:	ffffd097          	auipc	ra,0xffffd
    4bc0:	ab0080e7          	jalr	-1360(ra) # 166c <memcpy>
    4bc4:	03842783          	lw	a5,56(s0)
    4bc8:	00c12583          	lw	a1,12(sp)
    4bcc:	24442503          	lw	a0,580(s0)
    4bd0:	00100613          	li	a2,1
    4bd4:	000780e7          	jalr	a5
    4bd8:	07c12083          	lw	ra,124(sp)
    4bdc:	07812403          	lw	s0,120(sp)
    4be0:	07412483          	lw	s1,116(sp)
    4be4:	07012903          	lw	s2,112(sp)
    4be8:	06c12983          	lw	s3,108(sp)
    4bec:	06812a03          	lw	s4,104(sp)
    4bf0:	06412a83          	lw	s5,100(sp)
    4bf4:	06012b03          	lw	s6,96(sp)
    4bf8:	05c12b83          	lw	s7,92(sp)
    4bfc:	05812c03          	lw	s8,88(sp)
    4c00:	05412c83          	lw	s9,84(sp)
    4c04:	05012d03          	lw	s10,80(sp)
    4c08:	04c12d83          	lw	s11,76(sp)
    4c0c:	08010113          	addi	sp,sp,128
    4c10:	00008067          	ret
    4c14:	ee068ae3          	beqz	a3,4b08 <fatfs_add_file_entry+0x11c>
    4c18:	00000913          	li	s2,0
    4c1c:	ebdff06f          	j	4ad8 <fatfs_add_file_entry+0xec>
    4c20:	00842583          	lw	a1,8(s0)
    4c24:	02010613          	addi	a2,sp,32
    4c28:	00040513          	mv	a0,s0
    4c2c:	fffff097          	auipc	ra,0xfffff
    4c30:	3e4080e7          	jalr	996(ra) # 4010 <fatfs_find_blank_cluster>
    4c34:	0c050863          	beqz	a0,4d04 <fatfs_add_file_entry+0x318>
    4c38:	02012b83          	lw	s7,32(sp)
    4c3c:	00812583          	lw	a1,8(sp)
    4c40:	00040513          	mv	a0,s0
    4c44:	000b8613          	mv	a2,s7
    4c48:	fffff097          	auipc	ra,0xfffff
    4c4c:	64c080e7          	jalr	1612(ra) # 4294 <fatfs_fat_add_cluster_to_chain>
    4c50:	0a050a63          	beqz	a0,4d04 <fatfs_add_file_entry+0x318>
    4c54:	20000613          	li	a2,512
    4c58:	00000593          	li	a1,0
    4c5c:	04440513          	addi	a0,s0,68
    4c60:	ffffd097          	auipc	ra,0xffffd
    4c64:	9f0080e7          	jalr	-1552(ra) # 1650 <memset>
    4c68:	00000c13          	li	s8,0
    4c6c:	00044783          	lbu	a5,0(s0)
    4c70:	00fc6a63          	bltu	s8,a5,4c84 <fatfs_add_file_entry+0x298>
    4c74:	ea0914e3          	bnez	s2,4b1c <fatfs_add_file_entry+0x130>
    4c78:	000b0993          	mv	s3,s6
    4c7c:	00000a13          	li	s4,0
    4c80:	e9dff06f          	j	4b1c <fatfs_add_file_entry+0x130>
    4c84:	00000693          	li	a3,0
    4c88:	000c0613          	mv	a2,s8
    4c8c:	000b8593          	mv	a1,s7
    4c90:	00040513          	mv	a0,s0
    4c94:	ffffd097          	auipc	ra,0xffffd
    4c98:	4ec080e7          	jalr	1260(ra) # 2180 <fatfs_write_sector>
    4c9c:	06050463          	beqz	a0,4d04 <fatfs_add_file_entry+0x318>
    4ca0:	001c0c13          	addi	s8,s8,1
    4ca4:	0ffc7c13          	zext.b	s8,s8
    4ca8:	fc5ff06f          	j	4c6c <fatfs_add_file_entry+0x280>
    4cac:	001b0b13          	addi	s6,s6,1
    4cb0:	ea5ff06f          	j	4b54 <fatfs_add_file_entry+0x168>
    4cb4:	01012503          	lw	a0,16(sp)
    4cb8:	fff48493          	addi	s1,s1,-1
    4cbc:	00090693          	mv	a3,s2
    4cc0:	00048613          	mv	a2,s1
    4cc4:	000c8593          	mv	a1,s9
    4cc8:	ffffd097          	auipc	ra,0xffffd
    4ccc:	7fc080e7          	jalr	2044(ra) # 24c4 <fatfs_filename_to_lfn>
    4cd0:	00100d13          	li	s10,1
    4cd4:	000d0793          	mv	a5,s10
    4cd8:	001c0c13          	addi	s8,s8,1
    4cdc:	0ffc7c13          	zext.b	s8,s8
    4ce0:	020c8c93          	addi	s9,s9,32
    4ce4:	eb7c10e3          	bne	s8,s7,4b84 <fatfs_add_file_entry+0x198>
    4ce8:	fc0782e3          	beqz	a5,4cac <fatfs_add_file_entry+0x2c0>
    4cec:	03842783          	lw	a5,56(s0)
    4cf0:	00c12583          	lw	a1,12(sp)
    4cf4:	24442503          	lw	a0,580(s0)
    4cf8:	00100613          	li	a2,1
    4cfc:	000780e7          	jalr	a5
    4d00:	fa0516e3          	bnez	a0,4cac <fatfs_add_file_entry+0x2c0>
    4d04:	00000513          	li	a0,0
    4d08:	ed1ff06f          	j	4bd8 <fatfs_add_file_entry+0x1ec>
    4d0c:	00000513          	li	a0,0
    4d10:	00008067          	ret

00004d14 <fl_fopen>:
    4d14:	000057b7          	lui	a5,0x5
    4d18:	7587a783          	lw	a5,1880(a5) # 5758 <_filelib_init>
    4d1c:	fa010113          	addi	sp,sp,-96
    4d20:	05212823          	sw	s2,80(sp)
    4d24:	03a12823          	sw	s10,48(sp)
    4d28:	04112e23          	sw	ra,92(sp)
    4d2c:	04812c23          	sw	s0,88(sp)
    4d30:	04912a23          	sw	s1,84(sp)
    4d34:	05312623          	sw	s3,76(sp)
    4d38:	05412423          	sw	s4,72(sp)
    4d3c:	05512223          	sw	s5,68(sp)
    4d40:	05612023          	sw	s6,64(sp)
    4d44:	03712e23          	sw	s7,60(sp)
    4d48:	03812c23          	sw	s8,56(sp)
    4d4c:	03912a23          	sw	s9,52(sp)
    4d50:	00050d13          	mv	s10,a0
    4d54:	00058913          	mv	s2,a1
    4d58:	00079663          	bnez	a5,4d64 <fl_fopen+0x50>
    4d5c:	ffffd097          	auipc	ra,0xffffd
    4d60:	4d8080e7          	jalr	1240(ra) # 2234 <fl_init>
    4d64:	000057b7          	lui	a5,0x5
    4d68:	7547a783          	lw	a5,1876(a5) # 5754 <_filelib_valid>
    4d6c:	00193713          	seqz	a4,s2
    4d70:	0017b793          	seqz	a5,a5
    4d74:	00e7e7b3          	or	a5,a5,a4
    4d78:	36079e63          	bnez	a5,50f4 <fl_fopen+0x3e0>
    4d7c:	360d0c63          	beqz	s10,50f4 <fl_fopen+0x3e0>
    4d80:	00000493          	li	s1,0
    4d84:	00000413          	li	s0,0
    4d88:	05700993          	li	s3,87
    4d8c:	07200a13          	li	s4,114
    4d90:	07700b13          	li	s6,119
    4d94:	06100b93          	li	s7,97
    4d98:	06200c13          	li	s8,98
    4d9c:	04100a93          	li	s5,65
    4da0:	04200c93          	li	s9,66
    4da4:	00090513          	mv	a0,s2
    4da8:	ffffd097          	auipc	ra,0xffffd
    4dac:	8e8080e7          	jalr	-1816(ra) # 1690 <strlen>
    4db0:	10a44a63          	blt	s0,a0,4ec4 <fl_fopen+0x1b0>
    4db4:	0000c9b7          	lui	s3,0xc
    4db8:	9dc98a13          	addi	s4,s3,-1572 # b9dc <_fs>
    4dbc:	038a2783          	lw	a5,56(s4)
    4dc0:	00079463          	bnez	a5,4dc8 <fl_fopen+0xb4>
    4dc4:	fd94f493          	andi	s1,s1,-39
    4dc8:	03ca2783          	lw	a5,60(s4)
    4dcc:	00078463          	beqz	a5,4dd4 <fl_fopen+0xc0>
    4dd0:	000780e7          	jalr	a5
    4dd4:	0014f793          	andi	a5,s1,1
    4dd8:	18079263          	bnez	a5,4f5c <fl_fopen+0x248>
    4ddc:	0204f793          	andi	a5,s1,32
    4de0:	08078c63          	beqz	a5,4e78 <fl_fopen+0x164>
    4de4:	038a2783          	lw	a5,56(s4)
    4de8:	06078a63          	beqz	a5,4e5c <fl_fopen+0x148>
    4dec:	ffffd097          	auipc	ra,0xffffd
    4df0:	258080e7          	jalr	600(ra) # 2044 <_allocate_file>
    4df4:	00050413          	mv	s0,a0
    4df8:	06050263          	beqz	a0,4e5c <fl_fopen+0x148>
    4dfc:	01450a93          	addi	s5,a0,20
    4e00:	10400613          	li	a2,260
    4e04:	00000593          	li	a1,0
    4e08:	000a8513          	mv	a0,s5
    4e0c:	ffffd097          	auipc	ra,0xffffd
    4e10:	844080e7          	jalr	-1980(ra) # 1650 <memset>
    4e14:	11840b13          	addi	s6,s0,280
    4e18:	10400613          	li	a2,260
    4e1c:	00000593          	li	a1,0
    4e20:	000b0513          	mv	a0,s6
    4e24:	ffffd097          	auipc	ra,0xffffd
    4e28:	82c080e7          	jalr	-2004(ra) # 1650 <memset>
    4e2c:	10400713          	li	a4,260
    4e30:	000b0693          	mv	a3,s6
    4e34:	00070613          	mv	a2,a4
    4e38:	000a8593          	mv	a1,s5
    4e3c:	000d0513          	mv	a0,s10
    4e40:	ffffe097          	auipc	ra,0xffffe
    4e44:	c88080e7          	jalr	-888(ra) # 2ac8 <fatfs_split_path>
    4e48:	fff00793          	li	a5,-1
    4e4c:	12f51663          	bne	a0,a5,4f78 <fl_fopen+0x264>
    4e50:	00040513          	mv	a0,s0
    4e54:	ffffd097          	auipc	ra,0xffffd
    4e58:	268080e7          	jalr	616(ra) # 20bc <_free_file>
    4e5c:	00000413          	li	s0,0
    4e60:	0214f793          	andi	a5,s1,33
    4e64:	02000713          	li	a4,32
    4e68:	28e79263          	bne	a5,a4,50ec <fl_fopen+0x3d8>
    4e6c:	10041263          	bnez	s0,4f70 <fl_fopen+0x25c>
    4e70:	0064f793          	andi	a5,s1,6
    4e74:	26079463          	bnez	a5,50dc <fl_fopen+0x3c8>
    4e78:	00000413          	li	s0,0
    4e7c:	040a2783          	lw	a5,64(s4)
    4e80:	00078463          	beqz	a5,4e88 <fl_fopen+0x174>
    4e84:	000780e7          	jalr	a5
    4e88:	05c12083          	lw	ra,92(sp)
    4e8c:	00040513          	mv	a0,s0
    4e90:	05812403          	lw	s0,88(sp)
    4e94:	05412483          	lw	s1,84(sp)
    4e98:	05012903          	lw	s2,80(sp)
    4e9c:	04c12983          	lw	s3,76(sp)
    4ea0:	04812a03          	lw	s4,72(sp)
    4ea4:	04412a83          	lw	s5,68(sp)
    4ea8:	04012b03          	lw	s6,64(sp)
    4eac:	03c12b83          	lw	s7,60(sp)
    4eb0:	03812c03          	lw	s8,56(sp)
    4eb4:	03412c83          	lw	s9,52(sp)
    4eb8:	03012d03          	lw	s10,48(sp)
    4ebc:	06010113          	addi	sp,sp,96
    4ec0:	00008067          	ret
    4ec4:	008907b3          	add	a5,s2,s0
    4ec8:	0007c783          	lbu	a5,0(a5)
    4ecc:	05378863          	beq	a5,s3,4f1c <fl_fopen+0x208>
    4ed0:	02f9e863          	bltu	s3,a5,4f00 <fl_fopen+0x1ec>
    4ed4:	05578863          	beq	a5,s5,4f24 <fl_fopen+0x210>
    4ed8:	00faea63          	bltu	s5,a5,4eec <fl_fopen+0x1d8>
    4edc:	02b00713          	li	a4,43
    4ee0:	04e78663          	beq	a5,a4,4f2c <fl_fopen+0x218>
    4ee4:	00140413          	addi	s0,s0,1
    4ee8:	ebdff06f          	j	4da4 <fl_fopen+0x90>
    4eec:	03978263          	beq	a5,s9,4f10 <fl_fopen+0x1fc>
    4ef0:	05200713          	li	a4,82
    4ef4:	fee798e3          	bne	a5,a4,4ee4 <fl_fopen+0x1d0>
    4ef8:	0014e493          	ori	s1,s1,1
    4efc:	fe9ff06f          	j	4ee4 <fl_fopen+0x1d0>
    4f00:	ff478ce3          	beq	a5,s4,4ef8 <fl_fopen+0x1e4>
    4f04:	00fa6a63          	bltu	s4,a5,4f18 <fl_fopen+0x204>
    4f08:	01778e63          	beq	a5,s7,4f24 <fl_fopen+0x210>
    4f0c:	fd879ce3          	bne	a5,s8,4ee4 <fl_fopen+0x1d0>
    4f10:	0084e493          	ori	s1,s1,8
    4f14:	fd1ff06f          	j	4ee4 <fl_fopen+0x1d0>
    4f18:	fd6796e3          	bne	a5,s6,4ee4 <fl_fopen+0x1d0>
    4f1c:	0324e493          	ori	s1,s1,50
    4f20:	fc5ff06f          	j	4ee4 <fl_fopen+0x1d0>
    4f24:	0264e493          	ori	s1,s1,38
    4f28:	fbdff06f          	j	4ee4 <fl_fopen+0x1d0>
    4f2c:	0014f793          	andi	a5,s1,1
    4f30:	00078663          	beqz	a5,4f3c <fl_fopen+0x228>
    4f34:	0024e493          	ori	s1,s1,2
    4f38:	fadff06f          	j	4ee4 <fl_fopen+0x1d0>
    4f3c:	0024f793          	andi	a5,s1,2
    4f40:	00078663          	beqz	a5,4f4c <fl_fopen+0x238>
    4f44:	0314e493          	ori	s1,s1,49
    4f48:	f9dff06f          	j	4ee4 <fl_fopen+0x1d0>
    4f4c:	0044f793          	andi	a5,s1,4
    4f50:	f8078ae3          	beqz	a5,4ee4 <fl_fopen+0x1d0>
    4f54:	0274e493          	ori	s1,s1,39
    4f58:	f8dff06f          	j	4ee4 <fl_fopen+0x1d0>
    4f5c:	000d0513          	mv	a0,s10
    4f60:	fffff097          	auipc	ra,0xfffff
    4f64:	81c080e7          	jalr	-2020(ra) # 377c <_open_file>
    4f68:	00050413          	mv	s0,a0
    4f6c:	e60508e3          	beqz	a0,4ddc <fl_fopen+0xc8>
    4f70:	42940c23          	sb	s1,1080(s0)
    4f74:	f09ff06f          	j	4e7c <fl_fopen+0x168>
    4f78:	00040513          	mv	a0,s0
    4f7c:	ffffe097          	auipc	ra,0xffffe
    4f80:	dc8080e7          	jalr	-568(ra) # 2d44 <_check_file_open>
    4f84:	00050913          	mv	s2,a0
    4f88:	ec0514e3          	bnez	a0,4e50 <fl_fopen+0x13c>
    4f8c:	01444783          	lbu	a5,20(s0)
    4f90:	0e079663          	bnez	a5,507c <fl_fopen+0x368>
    4f94:	008a2783          	lw	a5,8(s4)
    4f98:	00f42023          	sw	a5,0(s0)
    4f9c:	00042583          	lw	a1,0(s0)
    4fa0:	01010693          	addi	a3,sp,16
    4fa4:	000b0613          	mv	a2,s6
    4fa8:	9dc98513          	addi	a0,s3,-1572
    4fac:	ffffe097          	auipc	ra,0xffffe
    4fb0:	428080e7          	jalr	1064(ra) # 33d4 <fatfs_get_file_entry>
    4fb4:	00100693          	li	a3,1
    4fb8:	e8d50ce3          	beq	a0,a3,4e50 <fl_fopen+0x13c>
    4fbc:	00042223          	sw	zero,4(s0)
    4fc0:	00440613          	addi	a2,s0,4
    4fc4:	00068593          	mv	a1,a3
    4fc8:	9dc98513          	addi	a0,s3,-1572
    4fcc:	00000097          	auipc	ra,0x0
    4fd0:	908080e7          	jalr	-1784(ra) # 48d4 <fatfs_allocate_free_space>
    4fd4:	e6050ee3          	beqz	a0,4e50 <fl_fopen+0x13c>
    4fd8:	00002ab7          	lui	s5,0x2
    4fdc:	21c40b93          	addi	s7,s0,540
    4fe0:	9dc98c13          	addi	s8,s3,-1572
    4fe4:	70fa8a93          	addi	s5,s5,1807 # 270f <fatfs_lfn_create_sfn+0x93>
    4fe8:	000b0593          	mv	a1,s6
    4fec:	00410513          	addi	a0,sp,4
    4ff0:	ffffd097          	auipc	ra,0xffffd
    4ff4:	68c080e7          	jalr	1676(ra) # 267c <fatfs_lfn_create_sfn>
    4ff8:	08090e63          	beqz	s2,5094 <fl_fopen+0x380>
    4ffc:	00090613          	mv	a2,s2
    5000:	00410593          	addi	a1,sp,4
    5004:	000b8513          	mv	a0,s7
    5008:	ffffd097          	auipc	ra,0xffffd
    500c:	7f0080e7          	jalr	2032(ra) # 27f8 <fatfs_lfn_generate_tail>
    5010:	00042583          	lw	a1,0(s0)
    5014:	000b8613          	mv	a2,s7
    5018:	000c0513          	mv	a0,s8
    501c:	fffff097          	auipc	ra,0xfffff
    5020:	8d4080e7          	jalr	-1836(ra) # 38f0 <fatfs_sfn_exists>
    5024:	00050663          	beqz	a0,5030 <fl_fopen+0x31c>
    5028:	00190913          	addi	s2,s2,1
    502c:	fb591ee3          	bne	s2,s5,4fe8 <fl_fopen+0x2d4>
    5030:	00442703          	lw	a4,4(s0)
    5034:	000027b7          	lui	a5,0x2
    5038:	70f78793          	addi	a5,a5,1807 # 270f <fatfs_lfn_create_sfn+0x93>
    503c:	00070593          	mv	a1,a4
    5040:	02f90663          	beq	s2,a5,506c <fl_fopen+0x358>
    5044:	00042583          	lw	a1,0(s0)
    5048:	00000813          	li	a6,0
    504c:	00000793          	li	a5,0
    5050:	000b8693          	mv	a3,s7
    5054:	000b0613          	mv	a2,s6
    5058:	9dc98513          	addi	a0,s3,-1572
    505c:	00000097          	auipc	ra,0x0
    5060:	990080e7          	jalr	-1648(ra) # 49ec <fatfs_add_file_entry>
    5064:	04051463          	bnez	a0,50ac <fl_fopen+0x398>
    5068:	00442583          	lw	a1,4(s0)
    506c:	9dc98513          	addi	a0,s3,-1572
    5070:	fffff097          	auipc	ra,0xfffff
    5074:	1b4080e7          	jalr	436(ra) # 4224 <fatfs_free_cluster_chain>
    5078:	dd9ff06f          	j	4e50 <fl_fopen+0x13c>
    507c:	00040593          	mv	a1,s0
    5080:	000a8513          	mv	a0,s5
    5084:	ffffe097          	auipc	ra,0xffffe
    5088:	54c080e7          	jalr	1356(ra) # 35d0 <_open_directory>
    508c:	f00518e3          	bnez	a0,4f9c <fl_fopen+0x288>
    5090:	dc1ff06f          	j	4e50 <fl_fopen+0x13c>
    5094:	00b00613          	li	a2,11
    5098:	00410593          	addi	a1,sp,4
    509c:	000b8513          	mv	a0,s7
    50a0:	ffffc097          	auipc	ra,0xffffc
    50a4:	5cc080e7          	jalr	1484(ra) # 166c <memcpy>
    50a8:	f69ff06f          	j	5010 <fl_fopen+0x2fc>
    50ac:	fff00793          	li	a5,-1
    50b0:	00042623          	sw	zero,12(s0)
    50b4:	00042423          	sw	zero,8(s0)
    50b8:	42f42823          	sw	a5,1072(s0)
    50bc:	42042a23          	sw	zero,1076(s0)
    50c0:	00042823          	sw	zero,16(s0)
    50c4:	22f42423          	sw	a5,552(s0)
    50c8:	22f42623          	sw	a5,556(s0)
    50cc:	9dc98513          	addi	a0,s3,-1572
    50d0:	ffffe097          	auipc	ra,0xffffe
    50d4:	054080e7          	jalr	84(ra) # 3124 <fatfs_fat_purge>
    50d8:	d89ff06f          	j	4e60 <fl_fopen+0x14c>
    50dc:	000d0513          	mv	a0,s10
    50e0:	ffffe097          	auipc	ra,0xffffe
    50e4:	69c080e7          	jalr	1692(ra) # 377c <_open_file>
    50e8:	00050413          	mv	s0,a0
    50ec:	e80412e3          	bnez	s0,4f70 <fl_fopen+0x25c>
    50f0:	d89ff06f          	j	4e78 <fl_fopen+0x164>
    50f4:	00000413          	li	s0,0
    50f8:	d91ff06f          	j	4e88 <fl_fopen+0x174>

000050fc <album_count>:
    50fc:	00000008                                ....

00005100 <cmd16>:
    5100:	02000050 00001500                       P.......

00005108 <acmd41>:
    5108:	00004069 00000100                       i@......

00005110 <cmd55>:
    5110:	00000077 00000100                       w.......

00005118 <cmd8>:
    5118:	01000048 000087aa                       H.......

00005120 <cmd0>:
    5120:	00000040 00009500                       @.......

00005128 <AUDIO>:
    5128:	00018000                                ....

0000512c <BUTTONS>:
    512c:	00010100                                ....

00005130 <SDCARD>:
    5130:	00010080                                ....

00005134 <OLED_RST>:
    5134:	00010010                                ....

00005138 <OLED>:
    5138:	00010008                                ....

0000513c <LEDS>:
    513c:	00010004 00006272 756f532f 2f73646e     ....rb../Sounds/
    514c:	63696c63 61722e6b 00000077 756f532f     click.raw.../Sou
    515c:	2f73646e 61616179 61722e79 00000077     nds/yaaay.raw...
    516c:	756f532f 2f73646e 72617473 2e707574     /Sounds/startup.
    517c:	00776172 68636946 20726569 72746e69     raw.Fichier intr
    518c:	6176756f 3a656c62 0a73250a 00000000     ouvable:.%s.....
    519c:	7463654c 3a657275 0a73250a 00000000     Lecture:.%s.....
    51ac:	53554150 20202045 000a2020 20202020     PAUSE     ..    
    51bc:	20202020 20202020 20202020 20202020                     
    51cc:	20202020 0000000a 203d3d3d 75626c41         ....=== Albu
    51dc:	3d20736d 0a0a3d3d 00000000 000a7325     ms ===......%s..
    51ec:	75637541 6966206e 65696863 61642072     Aucun fichier da
    51fc:	0a3a736e 000a7325 75707061 73206569     ns:.%s..appuie s
    520c:	6c207275 6f632065 64206564 000a2065     ur le code de ..
    521c:	72766564 6c69756f 6567616c 00000a20     devrouillage ...
    522c:	72756f70 63636120 72656465 20a0c320     pour acceder .. 
    523c:	0a20616c 00000000 74736970 65732065     la .....piste se
    524c:	74657263 0a212065 00000000 746e6968     crete !.....hint
    525c:	36203a20 35203320 000a3420 6ca9c346      : 6 3 5 4..F..l
    526c:	74696369 6f697461 2120736e 0000000a     icitations !....
    527c:	203d3d3d 74736950 3d207365 0a0a3d3d     === Pistes ===..
    528c:	00000000 74696e49 2e445320 000a2e2e     ....Init SD.....
    529c:	4f204453 000a2e4b 766f632f 722e7265     SD OK.../cover.r
    52ac:	00007761 206e6946 7463656c 2e657275     aw..Fin lecture.
    52bc:	0000000a 0000002f 33323130 37363534     ..../...01234567
    52cc:	42413938 46454443 00000000 5f544146     89ABCDEF....FAT_
    52dc:	203a5346 6f727245 6f632072 20646c75     FS: Error could 
    52ec:	20746f6e 64616f6c 54414620 74656420     not load FAT det
    52fc:	736c6961 64252820 0a0d2129 00000000     ails (%d)!......

0000530c <font>:
    530c:	00000000 00002f00 00030000 14000003     ...../..........
    531c:	143e143e 3a2b6a2e 08122600 171c3224     >.>..j+:.&..$2..
    532c:	03003415 00000000 0000211e 001e2100     .4.......!...!..
    533c:	08220000 0822081c 0000081c 00002040     .."...".....@ ..
    534c:	00080800 00200000 20000000 02040810     ...... .... ....
    535c:	3f21213f 003f0100 253d0000 25002725     ?!!?..?...=%%'.%
    536c:	003f2525 3f040407 25252700 253f003d     %%?....?.'%%=.?%
    537c:	01003d25 00030539 3f25253f 25252700     %=..9...?%%?.'%%
    538c:	0028003f 40000000 00000028 00110a04     ?.(....@(.......
    539c:	00141400 0a110000 01000004 0007052d     ............-...
    53ac:	253d213f 09093f1f 253f003f 3f003c27     ?!=%.?..?.?%'<.?
    53bc:	00212121 1e21213f 25253f00 053f0025     !!!.?!!..?%%%.?.
    53cc:	3f000505 003d2521 3f04043f 213f2100     ...?!%=.?..?.!?!
    53dc:	20380000 3f013f21 003b0404 2020203f     ..8 !?.?..;.?   
    53ec:	3f013f00 023f3f01 3f003f04 003f2121     .?.?.??..?.?!!?.
    53fc:	0f09093f 31213f00 093f003f 27002f39     ?....?!1?.?.9/.'
    540c:	003d2525 013f0101 20203f01 100f003f     %%=...?..?  ?...
    541c:	3f001f30 3f203f20 3b04043b 38080f00     0..? ? ?;..;...8
    542c:	2931000f 3f002325 00000021 04081020     ..1)%#.?!... ...
    543c:	003f2102 01020000 20000201 00000020     .!?........  ...
    544c:	00000201 24243800 243f003c 3c003c24     .....8$$<.?$$<.<
    545c:	00242424 3f24243c 2c2c3c00 3f04002c     $$$.<$$?.<,,,..?
    546c:	bc000005 00fca4a4 3c04043f 00003d00     ........?..<.=..
    547c:	fd800000 3f000000 00340808 0000003f     .......?..4.?...
    548c:	3c043c00 043c3c04 3c003c04 003c2424     .<.<.<<..<.<$$<.
    549c:	3c2424fc 24243c00 083c00fc 2c000004     .$$<.<$$..<....,
    54ac:	003c2c2c 00243f04 20203c00 100c003c     ,,<..?$..<  <...
    54bc:	3c001c30 3c203c20 34080834 a0a0bc00     0..< < <4..4....
    54cc:	342400fc 0400242c 0000213f 0000003f     ..$4,$..?!..?...
    54dc:	043f2100 02010000 00000102 00000000     .!?.............
    54ec:	00000001 00000003 00000005 00000007     ................
    54fc:	00000009 0000000e 00000010 00000012     ................
    550c:	00000014 00000016 00000018 0000001c     ................
    551c:	0000001e                                ....

00005520 <albums>:
    5520:	626c412f 00316d75 00000000 00000000     /Album1.........
	...
    5560:	626c412f 00326d75 00000000 00000000     /Album2.........
	...
    55a0:	626c412f 00336d75 00000000 00000000     /Album3.........
	...
    55e0:	626c412f 00346d75 00000000 00000000     /Album4.........
	...
    5620:	626c412f 00356d75 00000000 00000000     /Album5.........
	...
    5660:	626c412f 00366d75 00000000 00000000     /Album6.........
	...
    56a0:	626c412f 00376d75 00000000 00000000     /Album7.........
	...
    56e0:	6365732f 5f746572 646c6f66 00007265     /secret_folder..
	...

00005720 <current_track>:
    5720:	00000000                                ....

00005724 <current_album>:
    5724:	00000000                                ....

00005728 <file_count>:
    5728:	00000000                                ....

0000572c <prev_btn>:
    572c:	00000000                                ....

00005730 <sdcard_while_loading_callback>:
    5730:	00000000                                ....

00005734 <back_color>:
	...

00005735 <front_color>:
    5735:	                                         ...

00005738 <cursor_y>:
    5738:	00000000                                ....

0000573c <cursor_x>:
    573c:	00000000                                ....

00005740 <f_putchar>:
    5740:	00000000                                ....

00005744 <_free_file_list>:
	...

0000574c <_open_file_list>:
	...

00005754 <_filelib_valid>:
    5754:	00000000                                ....

00005758 <_filelib_init>:
    5758:	00000000                                ....
