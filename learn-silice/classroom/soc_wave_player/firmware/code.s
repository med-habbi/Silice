
code.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <_start>:
       0:	00010137          	lui	sp,0x10
       4:	00001097          	auipc	ra,0x1
       8:	cfc080e7          	jalr	-772(ra) # d00 <main>
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
      34:	ed010113          	addi	sp,sp,-304 # fed0 <_files+0x407c>
      38:	00651513          	slli	a0,a0,0x6
      3c:	53078793          	addi	a5,a5,1328 # 5530 <albums>
      40:	12812423          	sw	s0,296(sp)
      44:	00410593          	addi	a1,sp,4
      48:	00005437          	lui	s0,0x5
      4c:	00a78533          	add	a0,a5,a0
      50:	12112623          	sw	ra,300(sp)
      54:	12912223          	sw	s1,292(sp)
      58:	72042c23          	sw	zero,1848(s0) # 5738 <file_count>
      5c:	00003097          	auipc	ra,0x3
      60:	648080e7          	jalr	1608(ra) # 36a4 <fl_opendir>
      64:	02050a63          	beqz	a0,98 <scan_files_in_album+0x68>
      68:	01010593          	addi	a1,sp,16
      6c:	01f00493          	li	s1,31
      70:	00410513          	addi	a0,sp,4
      74:	00004097          	auipc	ra,0x4
      78:	cfc080e7          	jalr	-772(ra) # 3d70 <fl_readdir>
      7c:	00051863          	bnez	a0,8c <scan_files_in_album+0x5c>
      80:	73842703          	lw	a4,1848(s0)
      84:	01010593          	addi	a1,sp,16
      88:	02e4d263          	bge	s1,a4,ac <scan_files_in_album+0x7c>
      8c:	00410513          	addi	a0,sp,4
      90:	00002097          	auipc	ra,0x2
      94:	1fc080e7          	jalr	508(ra) # 228c <fl_closedir>
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
      c4:	76c78793          	addi	a5,a5,1900 # 576c <files>
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
      f4:	72e42c23          	sw	a4,1848(s0)
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
     11c:	1187a403          	lw	s0,280(a5) # 5118 <AUDIO>
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
     158:	4ec080e7          	jalr	1260(ra) # 1640 <memset>
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
     198:	13058593          	addi	a1,a1,304 # 5130 <LEDS+0x4>
     19c:	13450513          	addi	a0,a0,308 # 5134 <LEDS+0x8>
     1a0:	00112e23          	sw	ra,28(sp)
     1a4:	00812c23          	sw	s0,24(sp)
     1a8:	00912a23          	sw	s1,20(sp)
     1ac:	01212823          	sw	s2,16(sp)
     1b0:	00005097          	auipc	ra,0x5
     1b4:	b54080e7          	jalr	-1196(ra) # 4d04 <fl_fopen>
     1b8:	06050263          	beqz	a0,21c <click_sound+0x90>
     1bc:	000057b7          	lui	a5,0x5
     1c0:	1187a903          	lw	s2,280(a5) # 5118 <AUDIO>
     1c4:	00050693          	mv	a3,a0
     1c8:	1ff00493          	li	s1,511
     1cc:	00092403          	lw	s0,0(s2)
     1d0:	20000613          	li	a2,512
     1d4:	00100593          	li	a1,1
     1d8:	00040513          	mv	a0,s0
     1dc:	00d12623          	sw	a3,12(sp)
     1e0:	00004097          	auipc	ra,0x4
     1e4:	520080e7          	jalr	1312(ra) # 4700 <fl_fread>
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
     218:	41030067          	jr	1040(t1) # 4624 <fl_fclose>
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
     240:	13058593          	addi	a1,a1,304 # 5130 <LEDS+0x4>
     244:	14850513          	addi	a0,a0,328 # 5148 <LEDS+0x1c>
     248:	00112e23          	sw	ra,28(sp)
     24c:	00812c23          	sw	s0,24(sp)
     250:	00912a23          	sw	s1,20(sp)
     254:	01212823          	sw	s2,16(sp)
     258:	00005097          	auipc	ra,0x5
     25c:	aac080e7          	jalr	-1364(ra) # 4d04 <fl_fopen>
     260:	06050263          	beqz	a0,2c4 <yaaay_sound+0x90>
     264:	000057b7          	lui	a5,0x5
     268:	1187a903          	lw	s2,280(a5) # 5118 <AUDIO>
     26c:	00050693          	mv	a3,a0
     270:	1ff00493          	li	s1,511
     274:	00092403          	lw	s0,0(s2)
     278:	20000613          	li	a2,512
     27c:	00100593          	li	a1,1
     280:	00040513          	mv	a0,s0
     284:	00d12623          	sw	a3,12(sp)
     288:	00004097          	auipc	ra,0x4
     28c:	478080e7          	jalr	1144(ra) # 4700 <fl_fread>
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
     2c0:	36830067          	jr	872(t1) # 4624 <fl_fclose>
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
     2e8:	13058593          	addi	a1,a1,304 # 5130 <LEDS+0x4>
     2ec:	15c50513          	addi	a0,a0,348 # 515c <LEDS+0x30>
     2f0:	00112e23          	sw	ra,28(sp)
     2f4:	00812c23          	sw	s0,24(sp)
     2f8:	00912a23          	sw	s1,20(sp)
     2fc:	01212823          	sw	s2,16(sp)
     300:	00005097          	auipc	ra,0x5
     304:	a04080e7          	jalr	-1532(ra) # 4d04 <fl_fopen>
     308:	06050263          	beqz	a0,36c <startup_sound+0x90>
     30c:	000057b7          	lui	a5,0x5
     310:	1187a903          	lw	s2,280(a5) # 5118 <AUDIO>
     314:	00050693          	mv	a3,a0
     318:	1ff00493          	li	s1,511
     31c:	00092403          	lw	s0,0(s2)
     320:	20000613          	li	a2,512
     324:	00100593          	li	a1,1
     328:	00040513          	mv	a0,s0
     32c:	00d12623          	sw	a3,12(sp)
     330:	00004097          	auipc	ra,0x4
     334:	3d0080e7          	jalr	976(ra) # 4700 <fl_fread>
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
     368:	2c030067          	jr	704(t1) # 4624 <fl_fclose>
     36c:	01c12083          	lw	ra,28(sp)
     370:	01812403          	lw	s0,24(sp)
     374:	01412483          	lw	s1,20(sp)
     378:	01012903          	lw	s2,16(sp)
     37c:	02010113          	addi	sp,sp,32
     380:	00008067          	ret

00000384 <play_music>:
     384:	000055b7          	lui	a1,0x5
     388:	fb010113          	addi	sp,sp,-80
     38c:	13058593          	addi	a1,a1,304 # 5130 <LEDS+0x4>
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
     3cc:	93c080e7          	jalr	-1732(ra) # 4d04 <fl_fopen>
     3d0:	06051a63          	bnez	a0,444 <play_music+0xc0>
     3d4:	00000593          	li	a1,0
     3d8:	00001097          	auipc	ra,0x1
     3dc:	544080e7          	jalr	1348(ra) # 191c <display_set_cursor>
     3e0:	00000593          	li	a1,0
     3e4:	0ff00513          	li	a0,255
     3e8:	00001097          	auipc	ra,0x1
     3ec:	548080e7          	jalr	1352(ra) # 1930 <display_set_front_back_color>
     3f0:	00005537          	lui	a0,0x5
     3f4:	00040593          	mv	a1,s0
     3f8:	17050513          	addi	a0,a0,368 # 5170 <LEDS+0x44>
     3fc:	00002097          	auipc	ra,0x2
     400:	858080e7          	jalr	-1960(ra) # 1c54 <printf>
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
     440:	62030067          	jr	1568(t1) # 1a5c <display_refresh>
     444:	00000593          	li	a1,0
     448:	00050d13          	mv	s10,a0
     44c:	00000513          	li	a0,0
     450:	00001097          	auipc	ra,0x1
     454:	4cc080e7          	jalr	1228(ra) # 191c <display_set_cursor>
     458:	0ff00593          	li	a1,255
     45c:	00000513          	li	a0,0
     460:	00001097          	auipc	ra,0x1
     464:	4d0080e7          	jalr	1232(ra) # 1930 <display_set_front_back_color>
     468:	00005937          	lui	s2,0x5
     46c:	73092703          	lw	a4,1840(s2) # 5730 <current_track>
     470:	000055b7          	lui	a1,0x5
     474:	76c58593          	addi	a1,a1,1900 # 576c <files>
     478:	00671793          	slli	a5,a4,0x6
     47c:	00e787b3          	add	a5,a5,a4
     480:	00279793          	slli	a5,a5,0x2
     484:	00005537          	lui	a0,0x5
     488:	00f585b3          	add	a1,a1,a5
     48c:	18c50513          	addi	a0,a0,396 # 518c <LEDS+0x60>
     490:	00001097          	auipc	ra,0x1
     494:	7c4080e7          	jalr	1988(ra) # 1c54 <printf>
     498:	00001097          	auipc	ra,0x1
     49c:	5c4080e7          	jalr	1476(ra) # 1a5c <display_refresh>
     4a0:	000057b7          	lui	a5,0x5
     4a4:	11c7a983          	lw	s3,284(a5) # 511c <BUTTONS>
     4a8:	00005437          	lui	s0,0x5
     4ac:	00000a13          	li	s4,0
     4b0:	0009a783          	lw	a5,0(s3)
     4b4:	00100b93          	li	s7,1
     4b8:	72f42e23          	sw	a5,1852(s0) # 573c <prev_btn>
     4bc:	000057b7          	lui	a5,0x5
     4c0:	1187ad83          	lw	s11,280(a5) # 5118 <AUDIO>
     4c4:	000057b7          	lui	a5,0x5
     4c8:	12c7a783          	lw	a5,300(a5) # 512c <LEDS>
     4cc:	00f12423          	sw	a5,8(sp)
     4d0:	000057b7          	lui	a5,0x5
     4d4:	19c78793          	addi	a5,a5,412 # 519c <LEDS+0x70>
     4d8:	00f12623          	sw	a5,12(sp)
     4dc:	000dab03          	lw	s6,0(s11)
     4e0:	000d0693          	mv	a3,s10
     4e4:	20000613          	li	a2,512
     4e8:	00100593          	li	a1,1
     4ec:	000b0513          	mv	a0,s6
     4f0:	00004097          	auipc	ra,0x4
     4f4:	210080e7          	jalr	528(ra) # 4700 <fl_fread>
     4f8:	00050a93          	mv	s5,a0
     4fc:	06a05463          	blez	a0,564 <play_music+0x1e0>
     500:	000057b7          	lui	a5,0x5
     504:	1a878793          	addi	a5,a5,424 # 51a8 <LEDS+0x7c>
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
     550:	73c42783          	lw	a5,1852(s0)
     554:	0027f793          	andi	a5,a5,2
     558:	06079463          	bnez	a5,5c0 <play_music+0x23c>
     55c:	00000097          	auipc	ra,0x0
     560:	bb4080e7          	jalr	-1100(ra) # 110 <clear_audio>
     564:	000d0513          	mv	a0,s10
     568:	00004097          	auipc	ra,0x4
     56c:	0bc080e7          	jalr	188(ra) # 4624 <fl_fclose>
     570:	000057b7          	lui	a5,0x5
     574:	12c7a783          	lw	a5,300(a5) # 512c <LEDS>
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
     5c8:	73c42783          	lw	a5,1852(s0)
     5cc:	0047f793          	andi	a5,a5,4
     5d0:	08079463          	bnez	a5,658 <play_music+0x2d4>
     5d4:	00000097          	auipc	ra,0x0
     5d8:	bb8080e7          	jalr	-1096(ra) # 18c <click_sound>
     5dc:	00001097          	auipc	ra,0x1
     5e0:	334080e7          	jalr	820(ra) # 1910 <display_framebuffer>
     5e4:	06400613          	li	a2,100
     5e8:	00000593          	li	a1,0
     5ec:	00001097          	auipc	ra,0x1
     5f0:	054080e7          	jalr	84(ra) # 1640 <memset>
     5f4:	00000593          	li	a1,0
     5f8:	00000513          	li	a0,0
     5fc:	00001097          	auipc	ra,0x1
     600:	320080e7          	jalr	800(ra) # 191c <display_set_cursor>
     604:	0ff00593          	li	a1,255
     608:	00000513          	li	a0,0
     60c:	00001097          	auipc	ra,0x1
     610:	324080e7          	jalr	804(ra) # 1930 <display_set_front_back_color>
     614:	00c12503          	lw	a0,12(sp)
     618:	00001097          	auipc	ra,0x1
     61c:	63c080e7          	jalr	1596(ra) # 1c54 <printf>
     620:	00412503          	lw	a0,4(sp)
     624:	00001097          	auipc	ra,0x1
     628:	630080e7          	jalr	1584(ra) # 1c54 <printf>
     62c:	00001097          	auipc	ra,0x1
     630:	430080e7          	jalr	1072(ra) # 1a5c <display_refresh>
     634:	0009ac83          	lw	s9,0(s3)
     638:	004cf793          	andi	a5,s9,4
     63c:	08078863          	beqz	a5,6cc <play_music+0x348>
     640:	73c42783          	lw	a5,1852(s0)
     644:	0047f793          	andi	a5,a5,4
     648:	08079263          	bnez	a5,6cc <play_music+0x348>
     64c:	00000097          	auipc	ra,0x0
     650:	b40080e7          	jalr	-1216(ra) # 18c <click_sound>
     654:	73942e23          	sw	s9,1852(s0)
     658:	020c7793          	andi	a5,s8,32
     65c:	06078c63          	beqz	a5,6d4 <play_music+0x350>
     660:	73c42783          	lw	a5,1852(s0)
     664:	0207f793          	andi	a5,a5,32
     668:	06079663          	bnez	a5,6d4 <play_music+0x350>
     66c:	73092503          	lw	a0,1840(s2)
     670:	000057b7          	lui	a5,0x5
     674:	7387a583          	lw	a1,1848(a5) # 5738 <file_count>
     678:	00150513          	addi	a0,a0,1
     67c:	00001097          	auipc	ra,0x1
     680:	f94080e7          	jalr	-108(ra) # 1610 <__modsi3>
     684:	04812403          	lw	s0,72(sp)
     688:	72a92823          	sw	a0,1840(s2)
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
     6c8:	f6030067          	jr	-160(t1) # 4624 <fl_fclose>
     6cc:	73942e23          	sw	s9,1852(s0)
     6d0:	f0dff06f          	j	5dc <play_music+0x258>
     6d4:	040c7793          	andi	a5,s8,64
     6d8:	02078463          	beqz	a5,700 <play_music+0x37c>
     6dc:	73c42783          	lw	a5,1852(s0)
     6e0:	0407f793          	andi	a5,a5,64
     6e4:	00079e63          	bnez	a5,700 <play_music+0x37c>
     6e8:	73092503          	lw	a0,1840(s2)
     6ec:	000057b7          	lui	a5,0x5
     6f0:	7387a583          	lw	a1,1848(a5) # 5738 <file_count>
     6f4:	fff50513          	addi	a0,a0,-1
     6f8:	00b50533          	add	a0,a0,a1
     6fc:	f81ff06f          	j	67c <play_music+0x2f8>
     700:	009a4a33          	xor	s4,s4,s1
     704:	73842e23          	sw	s8,1852(s0)
     708:	e05ff06f          	j	50c <play_music+0x188>

0000070c <select_album>:
     70c:	000057b7          	lui	a5,0x5
     710:	11c7a783          	lw	a5,284(a5) # 511c <BUTTONS>
     714:	fd010113          	addi	sp,sp,-48
     718:	01512a23          	sw	s5,20(sp)
     71c:	00078a93          	mv	s5,a5
     720:	0007a783          	lw	a5,0(a5)
     724:	03212023          	sw	s2,32(sp)
     728:	00005937          	lui	s2,0x5
     72c:	72f92e23          	sw	a5,1852(s2) # 573c <prev_btn>
     730:	000057b7          	lui	a5,0x5
     734:	01712623          	sw	s7,12(sp)
     738:	1c478b93          	addi	s7,a5,452 # 51c4 <LEDS+0x98>
     73c:	000057b7          	lui	a5,0x5
     740:	02812423          	sw	s0,40(sp)
     744:	01312e23          	sw	s3,28(sp)
     748:	01612823          	sw	s6,16(sp)
     74c:	02112623          	sw	ra,44(sp)
     750:	02912223          	sw	s1,36(sp)
     754:	01412c23          	sw	s4,24(sp)
     758:	00000413          	li	s0,0
     75c:	000059b7          	lui	s3,0x5
     760:	1d878b13          	addi	s6,a5,472 # 51d8 <LEDS+0xac>
     764:	00001097          	auipc	ra,0x1
     768:	1ac080e7          	jalr	428(ra) # 1910 <display_framebuffer>
     76c:	00004637          	lui	a2,0x4
     770:	00000593          	li	a1,0
     774:	00001097          	auipc	ra,0x1
     778:	ecc080e7          	jalr	-308(ra) # 1640 <memset>
     77c:	00000593          	li	a1,0
     780:	00000513          	li	a0,0
     784:	00001097          	auipc	ra,0x1
     788:	198080e7          	jalr	408(ra) # 191c <display_set_cursor>
     78c:	0ff00593          	li	a1,255
     790:	00000513          	li	a0,0
     794:	00001097          	auipc	ra,0x1
     798:	19c080e7          	jalr	412(ra) # 1930 <display_set_front_back_color>
     79c:	000b8513          	mv	a0,s7
     7a0:	000054b7          	lui	s1,0x5
     7a4:	00001097          	auipc	ra,0x1
     7a8:	4b0080e7          	jalr	1200(ra) # 1c54 <printf>
     7ac:	53048493          	addi	s1,s1,1328 # 5530 <albums>
     7b0:	00000a13          	li	s4,0
     7b4:	0ec9a783          	lw	a5,236(s3) # 50ec <album_count>
     7b8:	0efa4063          	blt	s4,a5,898 <select_album+0x18c>
     7bc:	00001097          	auipc	ra,0x1
     7c0:	2a0080e7          	jalr	672(ra) # 1a5c <display_refresh>
     7c4:	000aaa03          	lw	s4,0(s5)
     7c8:	010a7793          	andi	a5,s4,16
     7cc:	02078663          	beqz	a5,7f8 <select_album+0xec>
     7d0:	73c92483          	lw	s1,1852(s2)
     7d4:	0104f493          	andi	s1,s1,16
     7d8:	02049063          	bnez	s1,7f8 <select_album+0xec>
     7dc:	0ec9a783          	lw	a5,236(s3)
     7e0:	00140413          	addi	s0,s0,1
     7e4:	00f45463          	bge	s0,a5,7ec <select_album+0xe0>
     7e8:	00040493          	mv	s1,s0
     7ec:	00000097          	auipc	ra,0x0
     7f0:	9a0080e7          	jalr	-1632(ra) # 18c <click_sound>
     7f4:	00048413          	mv	s0,s1
     7f8:	008a7793          	andi	a5,s4,8
     7fc:	02078463          	beqz	a5,824 <select_album+0x118>
     800:	73c92783          	lw	a5,1852(s2)
     804:	0087f793          	andi	a5,a5,8
     808:	00079e63          	bnez	a5,824 <select_album+0x118>
     80c:	fff40413          	addi	s0,s0,-1
     810:	00045663          	bgez	s0,81c <select_album+0x110>
     814:	0ec9a403          	lw	s0,236(s3)
     818:	fff40413          	addi	s0,s0,-1
     81c:	00000097          	auipc	ra,0x0
     820:	970080e7          	jalr	-1680(ra) # 18c <click_sound>
     824:	004a7793          	andi	a5,s4,4
     828:	00100493          	li	s1,1
     82c:	02078063          	beqz	a5,84c <select_album+0x140>
     830:	73c92483          	lw	s1,1852(s2)
     834:	0044f493          	andi	s1,s1,4
     838:	08049e63          	bnez	s1,8d4 <select_album+0x1c8>
     83c:	00000097          	auipc	ra,0x0
     840:	950080e7          	jalr	-1712(ra) # 18c <click_sound>
     844:	000057b7          	lui	a5,0x5
     848:	7287aa23          	sw	s0,1844(a5) # 5734 <current_album>
     84c:	0000c537          	lui	a0,0xc
     850:	35050513          	addi	a0,a0,848 # c350 <_files+0x4fc>
     854:	73492e23          	sw	s4,1852(s2)
     858:	fffff097          	auipc	ra,0xfffff
     85c:	7c4080e7          	jalr	1988(ra) # 1c <pause>
     860:	f00492e3          	bnez	s1,764 <select_album+0x58>
     864:	02c12083          	lw	ra,44(sp)
     868:	02812403          	lw	s0,40(sp)
     86c:	000057b7          	lui	a5,0x5
     870:	7347a503          	lw	a0,1844(a5) # 5734 <current_album>
     874:	02412483          	lw	s1,36(sp)
     878:	02012903          	lw	s2,32(sp)
     87c:	01c12983          	lw	s3,28(sp)
     880:	01812a03          	lw	s4,24(sp)
     884:	01412a83          	lw	s5,20(sp)
     888:	01012b03          	lw	s6,16(sp)
     88c:	00c12b83          	lw	s7,12(sp)
     890:	03010113          	addi	sp,sp,48
     894:	00008067          	ret
     898:	028a1863          	bne	s4,s0,8c8 <select_album+0x1bc>
     89c:	0ff00593          	li	a1,255
     8a0:	00000513          	li	a0,0
     8a4:	00001097          	auipc	ra,0x1
     8a8:	08c080e7          	jalr	140(ra) # 1930 <display_set_front_back_color>
     8ac:	00048593          	mv	a1,s1
     8b0:	000b0513          	mv	a0,s6
     8b4:	00001097          	auipc	ra,0x1
     8b8:	3a0080e7          	jalr	928(ra) # 1c54 <printf>
     8bc:	001a0a13          	addi	s4,s4,1
     8c0:	04048493          	addi	s1,s1,64
     8c4:	ef1ff06f          	j	7b4 <select_album+0xa8>
     8c8:	00000593          	li	a1,0
     8cc:	0ff00513          	li	a0,255
     8d0:	fd5ff06f          	j	8a4 <select_album+0x198>
     8d4:	00100493          	li	s1,1
     8d8:	f75ff06f          	j	84c <select_album+0x140>

000008dc <select_track>:
     8dc:	fd010113          	addi	sp,sp,-48
     8e0:	000057b7          	lui	a5,0x5
     8e4:	01512a23          	sw	s5,20(sp)
     8e8:	11c7aa83          	lw	s5,284(a5) # 511c <BUTTONS>
     8ec:	02912223          	sw	s1,36(sp)
     8f0:	01412c23          	sw	s4,24(sp)
     8f4:	000aa783          	lw	a5,0(s5)
     8f8:	000054b7          	lui	s1,0x5
     8fc:	00005a37          	lui	s4,0x5
     900:	72f4ae23          	sw	a5,1852(s1) # 573c <prev_btn>
     904:	738a2783          	lw	a5,1848(s4) # 5738 <file_count>
     908:	02812423          	sw	s0,40(sp)
     90c:	02112623          	sw	ra,44(sp)
     910:	03212023          	sw	s2,32(sp)
     914:	01312e23          	sw	s3,28(sp)
     918:	01612823          	sw	s6,16(sp)
     91c:	01712623          	sw	s7,12(sp)
     920:	01812423          	sw	s8,8(sp)
     924:	00005437          	lui	s0,0x5
     928:	0a079863          	bnez	a5,9d8 <select_track+0xfc>
     92c:	00001097          	auipc	ra,0x1
     930:	fe4080e7          	jalr	-28(ra) # 1910 <display_framebuffer>
     934:	00004637          	lui	a2,0x4
     938:	00000593          	li	a1,0
     93c:	00001097          	auipc	ra,0x1
     940:	d04080e7          	jalr	-764(ra) # 1640 <memset>
     944:	00000593          	li	a1,0
     948:	00000513          	li	a0,0
     94c:	00001097          	auipc	ra,0x1
     950:	fd0080e7          	jalr	-48(ra) # 191c <display_set_cursor>
     954:	00000593          	li	a1,0
     958:	0ff00513          	li	a0,255
     95c:	00001097          	auipc	ra,0x1
     960:	fd4080e7          	jalr	-44(ra) # 1930 <display_set_front_back_color>
     964:	73442783          	lw	a5,1844(s0) # 5734 <current_album>
     968:	000055b7          	lui	a1,0x5
     96c:	53058593          	addi	a1,a1,1328 # 5530 <albums>
     970:	00679793          	slli	a5,a5,0x6
     974:	00005537          	lui	a0,0x5
     978:	00f585b3          	add	a1,a1,a5
     97c:	1dc50513          	addi	a0,a0,476 # 51dc <LEDS+0xb0>
     980:	00001097          	auipc	ra,0x1
     984:	2d4080e7          	jalr	724(ra) # 1c54 <printf>
     988:	00001097          	auipc	ra,0x1
     98c:	0d4080e7          	jalr	212(ra) # 1a5c <display_refresh>
     990:	001e8537          	lui	a0,0x1e8
     994:	48050513          	addi	a0,a0,1152 # 1e8480 <__stacktop+0x1d8480>
     998:	fffff097          	auipc	ra,0xfffff
     99c:	684080e7          	jalr	1668(ra) # 1c <pause>
     9a0:	fff00413          	li	s0,-1
     9a4:	02c12083          	lw	ra,44(sp)
     9a8:	00040513          	mv	a0,s0
     9ac:	02812403          	lw	s0,40(sp)
     9b0:	02412483          	lw	s1,36(sp)
     9b4:	02012903          	lw	s2,32(sp)
     9b8:	01c12983          	lw	s3,28(sp)
     9bc:	01812a03          	lw	s4,24(sp)
     9c0:	01412a83          	lw	s5,20(sp)
     9c4:	01012b03          	lw	s6,16(sp)
     9c8:	00c12b83          	lw	s7,12(sp)
     9cc:	00812c03          	lw	s8,8(sp)
     9d0:	03010113          	addi	sp,sp,48
     9d4:	00008067          	ret
     9d8:	73442703          	lw	a4,1844(s0)
     9dc:	00700793          	li	a5,7
     9e0:	18f71263          	bne	a4,a5,b64 <select_track+0x288>
     9e4:	00001097          	auipc	ra,0x1
     9e8:	f2c080e7          	jalr	-212(ra) # 1910 <display_framebuffer>
     9ec:	00004637          	lui	a2,0x4
     9f0:	00000593          	li	a1,0
     9f4:	00001097          	auipc	ra,0x1
     9f8:	c4c080e7          	jalr	-948(ra) # 1640 <memset>
     9fc:	00000593          	li	a1,0
     a00:	00000513          	li	a0,0
     a04:	00001097          	auipc	ra,0x1
     a08:	f18080e7          	jalr	-232(ra) # 191c <display_set_cursor>
     a0c:	00000593          	li	a1,0
     a10:	0ff00513          	li	a0,255
     a14:	00001097          	auipc	ra,0x1
     a18:	f1c080e7          	jalr	-228(ra) # 1930 <display_set_front_back_color>
     a1c:	00005537          	lui	a0,0x5
     a20:	1f450513          	addi	a0,a0,500 # 51f4 <LEDS+0xc8>
     a24:	00001097          	auipc	ra,0x1
     a28:	230080e7          	jalr	560(ra) # 1c54 <printf>
     a2c:	00005537          	lui	a0,0x5
     a30:	20c50513          	addi	a0,a0,524 # 520c <LEDS+0xe0>
     a34:	00001097          	auipc	ra,0x1
     a38:	220080e7          	jalr	544(ra) # 1c54 <printf>
     a3c:	00005537          	lui	a0,0x5
     a40:	21c50513          	addi	a0,a0,540 # 521c <LEDS+0xf0>
     a44:	00001097          	auipc	ra,0x1
     a48:	210080e7          	jalr	528(ra) # 1c54 <printf>
     a4c:	00005537          	lui	a0,0x5
     a50:	23450513          	addi	a0,a0,564 # 5234 <LEDS+0x108>
     a54:	00001097          	auipc	ra,0x1
     a58:	200080e7          	jalr	512(ra) # 1c54 <printf>
     a5c:	00005537          	lui	a0,0x5
     a60:	24850513          	addi	a0,a0,584 # 5248 <LEDS+0x11c>
     a64:	00001097          	auipc	ra,0x1
     a68:	1f0080e7          	jalr	496(ra) # 1c54 <printf>
     a6c:	00001097          	auipc	ra,0x1
     a70:	ff0080e7          	jalr	-16(ra) # 1a5c <display_refresh>
     a74:	00000713          	li	a4,0
     a78:	00000793          	li	a5,0
     a7c:	00000693          	li	a3,0
     a80:	00100613          	li	a2,1
     a84:	000aa403          	lw	s0,0(s5)
     a88:	04047593          	andi	a1,s0,64
     a8c:	00058863          	beqz	a1,a9c <select_track+0x1c0>
     a90:	73c4a583          	lw	a1,1852(s1)
     a94:	0405f593          	andi	a1,a1,64
     a98:	00058463          	beqz	a1,aa0 <select_track+0x1c4>
     a9c:	fec694e3          	bne	a3,a2,a84 <select_track+0x1a8>
     aa0:	00847693          	andi	a3,s0,8
     aa4:	00068863          	beqz	a3,ab4 <select_track+0x1d8>
     aa8:	73c4a683          	lw	a3,1852(s1)
     aac:	0086f693          	andi	a3,a3,8
     ab0:	00068663          	beqz	a3,abc <select_track+0x1e0>
     ab4:	00100693          	li	a3,1
     ab8:	fcc796e3          	bne	a5,a2,a84 <select_track+0x1a8>
     abc:	02047793          	andi	a5,s0,32
     ac0:	00078863          	beqz	a5,ad0 <select_track+0x1f4>
     ac4:	73c4a783          	lw	a5,1852(s1)
     ac8:	0207f793          	andi	a5,a5,32
     acc:	00078463          	beqz	a5,ad4 <select_track+0x1f8>
     ad0:	1cc71263          	bne	a4,a2,c94 <select_track+0x3b8>
     ad4:	01047793          	andi	a5,s0,16
     ad8:	1a078463          	beqz	a5,c80 <select_track+0x3a4>
     adc:	73c4a783          	lw	a5,1852(s1)
     ae0:	0107f793          	andi	a5,a5,16
     ae4:	18079e63          	bnez	a5,c80 <select_track+0x3a4>
     ae8:	fffff097          	auipc	ra,0xfffff
     aec:	74c080e7          	jalr	1868(ra) # 234 <yaaay_sound>
     af0:	00001097          	auipc	ra,0x1
     af4:	e20080e7          	jalr	-480(ra) # 1910 <display_framebuffer>
     af8:	00004637          	lui	a2,0x4
     afc:	00000593          	li	a1,0
     b00:	00001097          	auipc	ra,0x1
     b04:	b40080e7          	jalr	-1216(ra) # 1640 <memset>
     b08:	00000593          	li	a1,0
     b0c:	00000513          	li	a0,0
     b10:	00001097          	auipc	ra,0x1
     b14:	e0c080e7          	jalr	-500(ra) # 191c <display_set_cursor>
     b18:	00000593          	li	a1,0
     b1c:	0ff00513          	li	a0,255
     b20:	00001097          	auipc	ra,0x1
     b24:	e10080e7          	jalr	-496(ra) # 1930 <display_set_front_back_color>
     b28:	00005537          	lui	a0,0x5
     b2c:	25850513          	addi	a0,a0,600 # 5258 <LEDS+0x12c>
     b30:	00001097          	auipc	ra,0x1
     b34:	124080e7          	jalr	292(ra) # 1c54 <printf>
     b38:	00001097          	auipc	ra,0x1
     b3c:	f24080e7          	jalr	-220(ra) # 1a5c <display_refresh>
     b40:	00005537          	lui	a0,0x5
     b44:	26c50513          	addi	a0,a0,620 # 526c <LEDS+0x140>
     b48:	00000097          	auipc	ra,0x0
     b4c:	83c080e7          	jalr	-1988(ra) # 384 <play_music>
     b50:	00031537          	lui	a0,0x31
     b54:	d4050513          	addi	a0,a0,-704 # 30d40 <__stacktop+0x20d40>
     b58:	fffff097          	auipc	ra,0xfffff
     b5c:	4c4080e7          	jalr	1220(ra) # 1c <pause>
     b60:	7284ae23          	sw	s0,1852(s1)
     b64:	000057b7          	lui	a5,0x5
     b68:	28c78c13          	addi	s8,a5,652 # 528c <LEDS+0x160>
     b6c:	000057b7          	lui	a5,0x5
     b70:	00000413          	li	s0,0
     b74:	00005b37          	lui	s6,0x5
     b78:	1d878b93          	addi	s7,a5,472 # 51d8 <LEDS+0xac>
     b7c:	00001097          	auipc	ra,0x1
     b80:	d94080e7          	jalr	-620(ra) # 1910 <display_framebuffer>
     b84:	00004637          	lui	a2,0x4
     b88:	00000593          	li	a1,0
     b8c:	00001097          	auipc	ra,0x1
     b90:	ab4080e7          	jalr	-1356(ra) # 1640 <memset>
     b94:	00000593          	li	a1,0
     b98:	00000513          	li	a0,0
     b9c:	00001097          	auipc	ra,0x1
     ba0:	d80080e7          	jalr	-640(ra) # 191c <display_set_cursor>
     ba4:	0ff00593          	li	a1,255
     ba8:	00000513          	li	a0,0
     bac:	00001097          	auipc	ra,0x1
     bb0:	d84080e7          	jalr	-636(ra) # 1930 <display_set_front_back_color>
     bb4:	000c0513          	mv	a0,s8
     bb8:	00001097          	auipc	ra,0x1
     bbc:	09c080e7          	jalr	156(ra) # 1c54 <printf>
     bc0:	76cb0993          	addi	s3,s6,1900 # 576c <files>
     bc4:	00000913          	li	s2,0
     bc8:	738a2783          	lw	a5,1848(s4)
     bcc:	0cf94a63          	blt	s2,a5,ca0 <select_track+0x3c4>
     bd0:	00001097          	auipc	ra,0x1
     bd4:	e8c080e7          	jalr	-372(ra) # 1a5c <display_refresh>
     bd8:	000aa983          	lw	s3,0(s5)
     bdc:	0109f793          	andi	a5,s3,16
     be0:	02078663          	beqz	a5,c0c <select_track+0x330>
     be4:	73c4a903          	lw	s2,1852(s1)
     be8:	01097913          	andi	s2,s2,16
     bec:	02091063          	bnez	s2,c0c <select_track+0x330>
     bf0:	738a2783          	lw	a5,1848(s4)
     bf4:	00140413          	addi	s0,s0,1
     bf8:	00f45463          	bge	s0,a5,c00 <select_track+0x324>
     bfc:	00040913          	mv	s2,s0
     c00:	fffff097          	auipc	ra,0xfffff
     c04:	58c080e7          	jalr	1420(ra) # 18c <click_sound>
     c08:	00090413          	mv	s0,s2
     c0c:	0089f793          	andi	a5,s3,8
     c10:	02078463          	beqz	a5,c38 <select_track+0x35c>
     c14:	73c4a783          	lw	a5,1852(s1)
     c18:	0087f793          	andi	a5,a5,8
     c1c:	00079e63          	bnez	a5,c38 <select_track+0x35c>
     c20:	fff40413          	addi	s0,s0,-1
     c24:	00045663          	bgez	s0,c30 <select_track+0x354>
     c28:	738a2403          	lw	s0,1848(s4)
     c2c:	fff40413          	addi	s0,s0,-1
     c30:	fffff097          	auipc	ra,0xfffff
     c34:	55c080e7          	jalr	1372(ra) # 18c <click_sound>
     c38:	0049f793          	andi	a5,s3,4
     c3c:	00100913          	li	s2,1
     c40:	02078063          	beqz	a5,c60 <select_track+0x384>
     c44:	73c4a903          	lw	s2,1852(s1)
     c48:	00497913          	andi	s2,s2,4
     c4c:	08091863          	bnez	s2,cdc <select_track+0x400>
     c50:	fffff097          	auipc	ra,0xfffff
     c54:	53c080e7          	jalr	1340(ra) # 18c <click_sound>
     c58:	000057b7          	lui	a5,0x5
     c5c:	7287a823          	sw	s0,1840(a5) # 5730 <current_track>
     c60:	0019f793          	andi	a5,s3,1
     c64:	08078063          	beqz	a5,ce4 <select_track+0x408>
     c68:	73c4a783          	lw	a5,1852(s1)
     c6c:	0017f793          	andi	a5,a5,1
     c70:	06079a63          	bnez	a5,ce4 <select_track+0x408>
     c74:	fffff097          	auipc	ra,0xfffff
     c78:	518080e7          	jalr	1304(ra) # 18c <click_sound>
     c7c:	d25ff06f          	j	9a0 <select_track+0xc4>
     c80:	00100713          	li	a4,1
     c84:	7284ae23          	sw	s0,1852(s1)
     c88:	00070793          	mv	a5,a4
     c8c:	00070693          	mv	a3,a4
     c90:	df5ff06f          	j	a84 <select_track+0x1a8>
     c94:	00100793          	li	a5,1
     c98:	00078693          	mv	a3,a5
     c9c:	de9ff06f          	j	a84 <select_track+0x1a8>
     ca0:	03241863          	bne	s0,s2,cd0 <select_track+0x3f4>
     ca4:	0ff00593          	li	a1,255
     ca8:	00000513          	li	a0,0
     cac:	00001097          	auipc	ra,0x1
     cb0:	c84080e7          	jalr	-892(ra) # 1930 <display_set_front_back_color>
     cb4:	00098593          	mv	a1,s3
     cb8:	000b8513          	mv	a0,s7
     cbc:	00001097          	auipc	ra,0x1
     cc0:	f98080e7          	jalr	-104(ra) # 1c54 <printf>
     cc4:	00190913          	addi	s2,s2,1
     cc8:	10498993          	addi	s3,s3,260
     ccc:	efdff06f          	j	bc8 <select_track+0x2ec>
     cd0:	00000593          	li	a1,0
     cd4:	0ff00513          	li	a0,255
     cd8:	fd5ff06f          	j	cac <select_track+0x3d0>
     cdc:	00100913          	li	s2,1
     ce0:	f81ff06f          	j	c60 <select_track+0x384>
     ce4:	0000c537          	lui	a0,0xc
     ce8:	35050513          	addi	a0,a0,848 # c350 <_files+0x4fc>
     cec:	7334ae23          	sw	s3,1852(s1)
     cf0:	fffff097          	auipc	ra,0xfffff
     cf4:	32c080e7          	jalr	812(ra) # 1c <pause>
     cf8:	e80912e3          	bnez	s2,b7c <select_track+0x2a0>
     cfc:	ca9ff06f          	j	9a4 <select_track+0xc8>

00000d00 <main>:
     d00:	000027b7          	lui	a5,0x2
     d04:	fd010113          	addi	sp,sp,-48
     d08:	00005737          	lui	a4,0x5
     d0c:	94478793          	addi	a5,a5,-1724 # 1944 <display_putchar>
     d10:	02112623          	sw	ra,44(sp)
     d14:	74f72823          	sw	a5,1872(a4) # 5750 <f_putchar>
     d18:	02812423          	sw	s0,40(sp)
     d1c:	02912223          	sw	s1,36(sp)
     d20:	03212023          	sw	s2,32(sp)
     d24:	01312e23          	sw	s3,28(sp)
     d28:	01412c23          	sw	s4,24(sp)
     d2c:	01512a23          	sw	s5,20(sp)
     d30:	01612823          	sw	s6,16(sp)
     d34:	01712623          	sw	s7,12(sp)
     d38:	01812423          	sw	s8,8(sp)
     d3c:	01912223          	sw	s9,4(sp)
     d40:	00001097          	auipc	ra,0x1
     d44:	b0c080e7          	jalr	-1268(ra) # 184c <oled_init>
     d48:	00001097          	auipc	ra,0x1
     d4c:	b10080e7          	jalr	-1264(ra) # 1858 <oled_fullscreen>
     d50:	00001097          	auipc	ra,0x1
     d54:	bc0080e7          	jalr	-1088(ra) # 1910 <display_framebuffer>
     d58:	00004637          	lui	a2,0x4
     d5c:	00000593          	li	a1,0
     d60:	00001097          	auipc	ra,0x1
     d64:	8e0080e7          	jalr	-1824(ra) # 1640 <memset>
     d68:	00001097          	auipc	ra,0x1
     d6c:	cf4080e7          	jalr	-780(ra) # 1a5c <display_refresh>
     d70:	00000593          	li	a1,0
     d74:	00000513          	li	a0,0
     d78:	00001097          	auipc	ra,0x1
     d7c:	ba4080e7          	jalr	-1116(ra) # 191c <display_set_cursor>
     d80:	00000593          	li	a1,0
     d84:	0ff00513          	li	a0,255
     d88:	00001097          	auipc	ra,0x1
     d8c:	ba8080e7          	jalr	-1112(ra) # 1930 <display_set_front_back_color>
     d90:	00005537          	lui	a0,0x5
     d94:	2a050513          	addi	a0,a0,672 # 52a0 <LEDS+0x174>
     d98:	00001097          	auipc	ra,0x1
     d9c:	ebc080e7          	jalr	-324(ra) # 1c54 <printf>
     da0:	000014b7          	lui	s1,0x1
     da4:	00001437          	lui	s0,0x1
     da8:	00001097          	auipc	ra,0x1
     dac:	cb4080e7          	jalr	-844(ra) # 1a5c <display_refresh>
     db0:	58448493          	addi	s1,s1,1412 # 1584 <sdcard_writesector>
     db4:	00000097          	auipc	ra,0x0
     db8:	62c080e7          	jalr	1580(ra) # 13e0 <sdcard_init>
     dbc:	53040413          	addi	s0,s0,1328 # 1530 <sdcard_readsector>
     dc0:	00001097          	auipc	ra,0x1
     dc4:	464080e7          	jalr	1124(ra) # 2224 <fl_init>
     dc8:	00048593          	mv	a1,s1
     dcc:	00040513          	mv	a0,s0
     dd0:	00002097          	auipc	ra,0x2
     dd4:	2bc080e7          	jalr	700(ra) # 308c <fl_attach_media>
     dd8:	fe0518e3          	bnez	a0,dc8 <main+0xc8>
     ddc:	00005537          	lui	a0,0x5
     de0:	2ac50513          	addi	a0,a0,684 # 52ac <LEDS+0x180>
     de4:	00001097          	auipc	ra,0x1
     de8:	e70080e7          	jalr	-400(ra) # 1c54 <printf>
     dec:	00001097          	auipc	ra,0x1
     df0:	c70080e7          	jalr	-912(ra) # 1a5c <display_refresh>
     df4:	fffff097          	auipc	ra,0xfffff
     df8:	4e8080e7          	jalr	1256(ra) # 2dc <startup_sound>
     dfc:	fffff097          	auipc	ra,0xfffff
     e00:	314080e7          	jalr	788(ra) # 110 <clear_audio>
     e04:	000057b7          	lui	a5,0x5
     e08:	2b478c13          	addi	s8,a5,692 # 52b4 <LEDS+0x188>
     e0c:	000057b7          	lui	a5,0x5
     e10:	13078c93          	addi	s9,a5,304 # 5130 <LEDS+0x4>
     e14:	000057b7          	lui	a5,0x5
     e18:	11c7ab03          	lw	s6,284(a5) # 511c <BUTTONS>
     e1c:	000074b7          	lui	s1,0x7
     e20:	00005937          	lui	s2,0x5
     e24:	7ec48493          	addi	s1,s1,2028 # 77ec <tmp1>
     e28:	53090913          	addi	s2,s2,1328 # 5530 <albums>
     e2c:	00005a37          	lui	s4,0x5
     e30:	00000097          	auipc	ra,0x0
     e34:	8dc080e7          	jalr	-1828(ra) # 70c <select_album>
     e38:	734a2503          	lw	a0,1844(s4) # 5734 <current_album>
     e3c:	fffff097          	auipc	ra,0xfffff
     e40:	1f4080e7          	jalr	500(ra) # 30 <scan_files_in_album>
     e44:	00000097          	auipc	ra,0x0
     e48:	a98080e7          	jalr	-1384(ra) # 8dc <select_track>
     e4c:	fe0542e3          	bltz	a0,e30 <main+0x130>
     e50:	734a2583          	lw	a1,1844(s4)
     e54:	00005ab7          	lui	s5,0x5
     e58:	72aaa823          	sw	a0,1840(s5) # 5730 <current_track>
     e5c:	00659593          	slli	a1,a1,0x6
     e60:	00b905b3          	add	a1,s2,a1
     e64:	00048513          	mv	a0,s1
     e68:	00048023          	sb	zero,0(s1)
     e6c:	00001097          	auipc	ra,0x1
     e70:	898080e7          	jalr	-1896(ra) # 1704 <strcat>
     e74:	000c0593          	mv	a1,s8
     e78:	00048513          	mv	a0,s1
     e7c:	00001097          	auipc	ra,0x1
     e80:	888080e7          	jalr	-1912(ra) # 1704 <strcat>
     e84:	000c8593          	mv	a1,s9
     e88:	00048513          	mv	a0,s1
     e8c:	00004097          	auipc	ra,0x4
     e90:	e78080e7          	jalr	-392(ra) # 4d04 <fl_fopen>
     e94:	00050413          	mv	s0,a0
     e98:	02050a63          	beqz	a0,ecc <main+0x1cc>
     e9c:	00001097          	auipc	ra,0x1
     ea0:	a74080e7          	jalr	-1420(ra) # 1910 <display_framebuffer>
     ea4:	00040693          	mv	a3,s0
     ea8:	00004637          	lui	a2,0x4
     eac:	00100593          	li	a1,1
     eb0:	00004097          	auipc	ra,0x4
     eb4:	850080e7          	jalr	-1968(ra) # 4700 <fl_fread>
     eb8:	00001097          	auipc	ra,0x1
     ebc:	ba4080e7          	jalr	-1116(ra) # 1a5c <display_refresh>
     ec0:	00040513          	mv	a0,s0
     ec4:	00003097          	auipc	ra,0x3
     ec8:	760080e7          	jalr	1888(ra) # 4624 <fl_fclose>
     ecc:	fffff097          	auipc	ra,0xfffff
     ed0:	244080e7          	jalr	580(ra) # 110 <clear_audio>
     ed4:	00008437          	lui	s0,0x8
     ed8:	000057b7          	lui	a5,0x5
     edc:	000059b7          	lui	s3,0x5
     ee0:	8ec40413          	addi	s0,s0,-1812 # 78ec <tmp>
     ee4:	2d078b93          	addi	s7,a5,720 # 52d0 <LEDS+0x1a4>
     ee8:	76c98993          	addi	s3,s3,1900 # 576c <files>
     eec:	734a2583          	lw	a1,1844(s4)
     ef0:	00040513          	mv	a0,s0
     ef4:	00040023          	sb	zero,0(s0)
     ef8:	00659593          	slli	a1,a1,0x6
     efc:	00b905b3          	add	a1,s2,a1
     f00:	00001097          	auipc	ra,0x1
     f04:	804080e7          	jalr	-2044(ra) # 1704 <strcat>
     f08:	000b8593          	mv	a1,s7
     f0c:	00040513          	mv	a0,s0
     f10:	00000097          	auipc	ra,0x0
     f14:	7f4080e7          	jalr	2036(ra) # 1704 <strcat>
     f18:	730aa783          	lw	a5,1840(s5)
     f1c:	00040513          	mv	a0,s0
     f20:	00679593          	slli	a1,a5,0x6
     f24:	00f585b3          	add	a1,a1,a5
     f28:	00259593          	slli	a1,a1,0x2
     f2c:	00b985b3          	add	a1,s3,a1
     f30:	00000097          	auipc	ra,0x0
     f34:	7d4080e7          	jalr	2004(ra) # 1704 <strcat>
     f38:	00040513          	mv	a0,s0
     f3c:	fffff097          	auipc	ra,0xfffff
     f40:	448080e7          	jalr	1096(ra) # 384 <play_music>
     f44:	000b2783          	lw	a5,0(s6)
     f48:	0027f793          	andi	a5,a5,2
     f4c:	fa0780e3          	beqz	a5,eec <main+0x1ec>
     f50:	00001097          	auipc	ra,0x1
     f54:	9c0080e7          	jalr	-1600(ra) # 1910 <display_framebuffer>
     f58:	00004637          	lui	a2,0x4
     f5c:	00000593          	li	a1,0
     f60:	00000097          	auipc	ra,0x0
     f64:	6e0080e7          	jalr	1760(ra) # 1640 <memset>
     f68:	00000593          	li	a1,0
     f6c:	00000513          	li	a0,0
     f70:	00001097          	auipc	ra,0x1
     f74:	9ac080e7          	jalr	-1620(ra) # 191c <display_set_cursor>
     f78:	00000593          	li	a1,0
     f7c:	0ff00513          	li	a0,255
     f80:	00001097          	auipc	ra,0x1
     f84:	9b0080e7          	jalr	-1616(ra) # 1930 <display_set_front_back_color>
     f88:	00005537          	lui	a0,0x5
     f8c:	2c050513          	addi	a0,a0,704 # 52c0 <LEDS+0x194>
     f90:	00001097          	auipc	ra,0x1
     f94:	cc4080e7          	jalr	-828(ra) # 1c54 <printf>
     f98:	00001097          	auipc	ra,0x1
     f9c:	ac4080e7          	jalr	-1340(ra) # 1a5c <display_refresh>
     fa0:	000f4537          	lui	a0,0xf4
     fa4:	24050513          	addi	a0,a0,576 # f4240 <__stacktop+0xe4240>
     fa8:	fffff097          	auipc	ra,0xfffff
     fac:	074080e7          	jalr	116(ra) # 1c <pause>
     fb0:	e7dff06f          	j	e2c <main+0x12c>

00000fb4 <pause>:
     fb4:	c0002773          	rdcycle	a4
     fb8:	c00027f3          	rdcycle	a5
     fbc:	40e787b3          	sub	a5,a5,a4
     fc0:	fea7ece3          	bltu	a5,a0,fb8 <pause+0x4>
     fc4:	00008067          	ret

00000fc8 <sdcard_idle>:
     fc8:	00008067          	ret

00000fcc <sdcard_select>:
     fcc:	000057b7          	lui	a5,0x5
     fd0:	1207a783          	lw	a5,288(a5) # 5120 <SDCARD>
     fd4:	00200713          	li	a4,2
     fd8:	00e7a023          	sw	a4,0(a5)
     fdc:	00008067          	ret

00000fe0 <sdcard_ponder>:
     fe0:	000056b7          	lui	a3,0x5
     fe4:	1206a683          	lw	a3,288(a3) # 5120 <SDCARD>
     fe8:	01000793          	li	a5,16
     fec:	00000713          	li	a4,0
     ff0:	00676613          	ori	a2,a4,6
     ff4:	00c6a023          	sw	a2,0(a3)
     ff8:	00174713          	xori	a4,a4,1
     ffc:	00000013          	nop
    1000:	fff78793          	addi	a5,a5,-1
    1004:	fe0796e3          	bnez	a5,ff0 <sdcard_ponder+0x10>
    1008:	00008067          	ret

0000100c <sdcard_unselect>:
    100c:	000057b7          	lui	a5,0x5
    1010:	1207a783          	lw	a5,288(a5) # 5120 <SDCARD>
    1014:	00600713          	li	a4,6
    1018:	00e7a023          	sw	a4,0(a5)
    101c:	00008067          	ret

00001020 <sdcard_send>:
    1020:	000057b7          	lui	a5,0x5
    1024:	1207a783          	lw	a5,288(a5) # 5120 <SDCARD>
    1028:	00655713          	srli	a4,a0,0x6
    102c:	00277713          	andi	a4,a4,2
    1030:	00e7a023          	sw	a4,0(a5)
    1034:	00176713          	ori	a4,a4,1
    1038:	00e7a023          	sw	a4,0(a5)
    103c:	00555713          	srli	a4,a0,0x5
    1040:	00277713          	andi	a4,a4,2
    1044:	00e7a023          	sw	a4,0(a5)
    1048:	00176713          	ori	a4,a4,1
    104c:	00e7a023          	sw	a4,0(a5)
    1050:	00455713          	srli	a4,a0,0x4
    1054:	00277713          	andi	a4,a4,2
    1058:	00e7a023          	sw	a4,0(a5)
    105c:	00176713          	ori	a4,a4,1
    1060:	00e7a023          	sw	a4,0(a5)
    1064:	00355713          	srli	a4,a0,0x3
    1068:	00277713          	andi	a4,a4,2
    106c:	00e7a023          	sw	a4,0(a5)
    1070:	00176713          	ori	a4,a4,1
    1074:	00e7a023          	sw	a4,0(a5)
    1078:	00255713          	srli	a4,a0,0x2
    107c:	00277713          	andi	a4,a4,2
    1080:	00e7a023          	sw	a4,0(a5)
    1084:	00176713          	ori	a4,a4,1
    1088:	00e7a023          	sw	a4,0(a5)
    108c:	00155713          	srli	a4,a0,0x1
    1090:	00277713          	andi	a4,a4,2
    1094:	00e7a023          	sw	a4,0(a5)
    1098:	00176713          	ori	a4,a4,1
    109c:	00e7a023          	sw	a4,0(a5)
    10a0:	00257713          	andi	a4,a0,2
    10a4:	00e7a023          	sw	a4,0(a5)
    10a8:	00151513          	slli	a0,a0,0x1
    10ac:	00176713          	ori	a4,a4,1
    10b0:	00e7a023          	sw	a4,0(a5)
    10b4:	00257513          	andi	a0,a0,2
    10b8:	00a7a023          	sw	a0,0(a5)
    10bc:	00156513          	ori	a0,a0,1
    10c0:	00a7a023          	sw	a0,0(a5)
    10c4:	00200713          	li	a4,2
    10c8:	00e7a023          	sw	a4,0(a5)
    10cc:	000057b7          	lui	a5,0x5
    10d0:	7407a783          	lw	a5,1856(a5) # 5740 <sdcard_while_loading_callback>
    10d4:	00078067          	jr	a5

000010d8 <sdcard_read>:
    10d8:	fd010113          	addi	sp,sp,-48
    10dc:	fff50793          	addi	a5,a0,-1
    10e0:	03212023          	sw	s2,32(sp)
    10e4:	00100913          	li	s2,1
    10e8:	00f91933          	sll	s2,s2,a5
    10ec:	000057b7          	lui	a5,0x5
    10f0:	01312e23          	sw	s3,28(sp)
    10f4:	1207a983          	lw	s3,288(a5) # 5120 <SDCARD>
    10f8:	02812423          	sw	s0,40(sp)
    10fc:	02912223          	sw	s1,36(sp)
    1100:	01412c23          	sw	s4,24(sp)
    1104:	01512a23          	sw	s5,20(sp)
    1108:	01612823          	sw	s6,16(sp)
    110c:	02112623          	sw	ra,44(sp)
    1110:	0ff00413          	li	s0,255
    1114:	00000493          	li	s1,0
    1118:	00300a13          	li	s4,3
    111c:	00200a93          	li	s5,2
    1120:	00005b37          	lui	s6,0x5
    1124:	02058c63          	beqz	a1,115c <sdcard_read+0x84>
    1128:	012477b3          	and	a5,s0,s2
    112c:	02079a63          	bnez	a5,1160 <sdcard_read+0x88>
    1130:	02c12083          	lw	ra,44(sp)
    1134:	0ff47513          	zext.b	a0,s0
    1138:	02812403          	lw	s0,40(sp)
    113c:	02412483          	lw	s1,36(sp)
    1140:	02012903          	lw	s2,32(sp)
    1144:	01c12983          	lw	s3,28(sp)
    1148:	01812a03          	lw	s4,24(sp)
    114c:	01412a83          	lw	s5,20(sp)
    1150:	01012b03          	lw	s6,16(sp)
    1154:	03010113          	addi	sp,sp,48
    1158:	00008067          	ret
    115c:	fca4dae3          	bge	s1,a0,1130 <sdcard_read+0x58>
    1160:	0149a023          	sw	s4,0(s3)
    1164:	0159a023          	sw	s5,0(s3)
    1168:	0009a783          	lw	a5,0(s3)
    116c:	00141413          	slli	s0,s0,0x1
    1170:	00b12623          	sw	a1,12(sp)
    1174:	00f46433          	or	s0,s0,a5
    1178:	740b2783          	lw	a5,1856(s6) # 5740 <sdcard_while_loading_callback>
    117c:	00a12423          	sw	a0,8(sp)
    1180:	00148493          	addi	s1,s1,1
    1184:	000780e7          	jalr	a5
    1188:	00c12583          	lw	a1,12(sp)
    118c:	00812503          	lw	a0,8(sp)
    1190:	f95ff06f          	j	1124 <sdcard_read+0x4c>

00001194 <sdcard_get>:
    1194:	fe010113          	addi	sp,sp,-32
    1198:	00112e23          	sw	ra,28(sp)
    119c:	00812c23          	sw	s0,24(sp)
    11a0:	00912a23          	sw	s1,20(sp)
    11a4:	00050413          	mv	s0,a0
    11a8:	00b12623          	sw	a1,12(sp)
    11ac:	00000097          	auipc	ra,0x0
    11b0:	e20080e7          	jalr	-480(ra) # fcc <sdcard_select>
    11b4:	00c12583          	lw	a1,12(sp)
    11b8:	00040513          	mv	a0,s0
    11bc:	00100493          	li	s1,1
    11c0:	00000097          	auipc	ra,0x0
    11c4:	f18080e7          	jalr	-232(ra) # 10d8 <sdcard_read>
    11c8:	00345413          	srli	s0,s0,0x3
    11cc:	0284c463          	blt	s1,s0,11f4 <sdcard_get+0x60>
    11d0:	00a12623          	sw	a0,12(sp)
    11d4:	00000097          	auipc	ra,0x0
    11d8:	e38080e7          	jalr	-456(ra) # 100c <sdcard_unselect>
    11dc:	01c12083          	lw	ra,28(sp)
    11e0:	01812403          	lw	s0,24(sp)
    11e4:	00c12503          	lw	a0,12(sp)
    11e8:	01412483          	lw	s1,20(sp)
    11ec:	02010113          	addi	sp,sp,32
    11f0:	00008067          	ret
    11f4:	00000593          	li	a1,0
    11f8:	00800513          	li	a0,8
    11fc:	00000097          	auipc	ra,0x0
    1200:	edc080e7          	jalr	-292(ra) # 10d8 <sdcard_read>
    1204:	00148493          	addi	s1,s1,1
    1208:	fc5ff06f          	j	11cc <sdcard_get+0x38>

0000120c <sdcard_cmd>:
    120c:	ff010113          	addi	sp,sp,-16
    1210:	00812423          	sw	s0,8(sp)
    1214:	00912223          	sw	s1,4(sp)
    1218:	01212023          	sw	s2,0(sp)
    121c:	00112623          	sw	ra,12(sp)
    1220:	00050913          	mv	s2,a0
    1224:	00000413          	li	s0,0
    1228:	00000097          	auipc	ra,0x0
    122c:	da4080e7          	jalr	-604(ra) # fcc <sdcard_select>
    1230:	00600493          	li	s1,6
    1234:	008907b3          	add	a5,s2,s0
    1238:	0007c503          	lbu	a0,0(a5)
    123c:	00140413          	addi	s0,s0,1
    1240:	00000097          	auipc	ra,0x0
    1244:	de0080e7          	jalr	-544(ra) # 1020 <sdcard_send>
    1248:	fe9416e3          	bne	s0,s1,1234 <sdcard_cmd+0x28>
    124c:	00812403          	lw	s0,8(sp)
    1250:	00c12083          	lw	ra,12(sp)
    1254:	00412483          	lw	s1,4(sp)
    1258:	00012903          	lw	s2,0(sp)
    125c:	01010113          	addi	sp,sp,16
    1260:	00000317          	auipc	t1,0x0
    1264:	dac30067          	jr	-596(t1) # 100c <sdcard_unselect>

00001268 <sdcard_start_sector>:
    1268:	ff010113          	addi	sp,sp,-16
    126c:	00112623          	sw	ra,12(sp)
    1270:	00812423          	sw	s0,8(sp)
    1274:	00050413          	mv	s0,a0
    1278:	00000097          	auipc	ra,0x0
    127c:	d54080e7          	jalr	-684(ra) # fcc <sdcard_select>
    1280:	05100513          	li	a0,81
    1284:	00000097          	auipc	ra,0x0
    1288:	d9c080e7          	jalr	-612(ra) # 1020 <sdcard_send>
    128c:	01845513          	srli	a0,s0,0x18
    1290:	00000097          	auipc	ra,0x0
    1294:	d90080e7          	jalr	-624(ra) # 1020 <sdcard_send>
    1298:	41045513          	srai	a0,s0,0x10
    129c:	0ff57513          	zext.b	a0,a0
    12a0:	00000097          	auipc	ra,0x0
    12a4:	d80080e7          	jalr	-640(ra) # 1020 <sdcard_send>
    12a8:	40845513          	srai	a0,s0,0x8
    12ac:	0ff57513          	zext.b	a0,a0
    12b0:	00000097          	auipc	ra,0x0
    12b4:	d70080e7          	jalr	-656(ra) # 1020 <sdcard_send>
    12b8:	0ff47513          	zext.b	a0,s0
    12bc:	00000097          	auipc	ra,0x0
    12c0:	d64080e7          	jalr	-668(ra) # 1020 <sdcard_send>
    12c4:	05500513          	li	a0,85
    12c8:	00000097          	auipc	ra,0x0
    12cc:	d58080e7          	jalr	-680(ra) # 1020 <sdcard_send>
    12d0:	00000097          	auipc	ra,0x0
    12d4:	d3c080e7          	jalr	-708(ra) # 100c <sdcard_unselect>
    12d8:	00812403          	lw	s0,8(sp)
    12dc:	00c12083          	lw	ra,12(sp)
    12e0:	00100593          	li	a1,1
    12e4:	00800513          	li	a0,8
    12e8:	01010113          	addi	sp,sp,16
    12ec:	00000317          	auipc	t1,0x0
    12f0:	ea830067          	jr	-344(t1) # 1194 <sdcard_get>

000012f4 <sdcard_read_sector>:
    12f4:	ff010113          	addi	sp,sp,-16
    12f8:	00812423          	sw	s0,8(sp)
    12fc:	00112623          	sw	ra,12(sp)
    1300:	00912223          	sw	s1,4(sp)
    1304:	01212023          	sw	s2,0(sp)
    1308:	00058413          	mv	s0,a1
    130c:	00000097          	auipc	ra,0x0
    1310:	f5c080e7          	jalr	-164(ra) # 1268 <sdcard_start_sector>
    1314:	04051863          	bnez	a0,1364 <sdcard_read_sector+0x70>
    1318:	00100593          	li	a1,1
    131c:	00058513          	mv	a0,a1
    1320:	00000097          	auipc	ra,0x0
    1324:	e74080e7          	jalr	-396(ra) # 1194 <sdcard_get>
    1328:	00000493          	li	s1,0
    132c:	20000913          	li	s2,512
    1330:	00000593          	li	a1,0
    1334:	00800513          	li	a0,8
    1338:	00000097          	auipc	ra,0x0
    133c:	e5c080e7          	jalr	-420(ra) # 1194 <sdcard_get>
    1340:	009407b3          	add	a5,s0,s1
    1344:	00a78023          	sb	a0,0(a5)
    1348:	00148493          	addi	s1,s1,1
    134c:	ff2492e3          	bne	s1,s2,1330 <sdcard_read_sector+0x3c>
    1350:	00100593          	li	a1,1
    1354:	01000513          	li	a0,16
    1358:	20040413          	addi	s0,s0,512
    135c:	00000097          	auipc	ra,0x0
    1360:	e38080e7          	jalr	-456(ra) # 1194 <sdcard_get>
    1364:	00c12083          	lw	ra,12(sp)
    1368:	00040513          	mv	a0,s0
    136c:	00812403          	lw	s0,8(sp)
    1370:	00412483          	lw	s1,4(sp)
    1374:	00012903          	lw	s2,0(sp)
    1378:	01010113          	addi	sp,sp,16
    137c:	00008067          	ret

00001380 <sdcard_preinit>:
    1380:	ff010113          	addi	sp,sp,-16
    1384:	000057b7          	lui	a5,0x5
    1388:	00812423          	sw	s0,8(sp)
    138c:	1207a403          	lw	s0,288(a5) # 5120 <SDCARD>
    1390:	00112623          	sw	ra,12(sp)
    1394:	00600793          	li	a5,6
    1398:	01313537          	lui	a0,0x1313
    139c:	00f42023          	sw	a5,0(s0)
    13a0:	d0050513          	addi	a0,a0,-768 # 1312d00 <__stacktop+0x1302d00>
    13a4:	00000097          	auipc	ra,0x0
    13a8:	c10080e7          	jalr	-1008(ra) # fb4 <pause>
    13ac:	0a000793          	li	a5,160
    13b0:	00000713          	li	a4,0
    13b4:	00676693          	ori	a3,a4,6
    13b8:	00d42023          	sw	a3,0(s0)
    13bc:	fff78793          	addi	a5,a5,-1
    13c0:	00174713          	xori	a4,a4,1
    13c4:	fe0798e3          	bnez	a5,13b4 <sdcard_preinit+0x34>
    13c8:	00600793          	li	a5,6
    13cc:	00c12083          	lw	ra,12(sp)
    13d0:	00f42023          	sw	a5,0(s0)
    13d4:	00812403          	lw	s0,8(sp)
    13d8:	01010113          	addi	sp,sp,16
    13dc:	00008067          	ret

000013e0 <sdcard_init>:
    13e0:	000017b7          	lui	a5,0x1
    13e4:	fc878793          	addi	a5,a5,-56 # fc8 <sdcard_idle>
    13e8:	00005737          	lui	a4,0x5
    13ec:	fe010113          	addi	sp,sp,-32
    13f0:	74f72023          	sw	a5,1856(a4) # 5740 <sdcard_while_loading_callback>
    13f4:	000057b7          	lui	a5,0x5
    13f8:	00812c23          	sw	s0,24(sp)
    13fc:	00912a23          	sw	s1,20(sp)
    1400:	00112e23          	sw	ra,28(sp)
    1404:	11078493          	addi	s1,a5,272 # 5110 <cmd0>
    1408:	0ff00413          	li	s0,255
    140c:	00000097          	auipc	ra,0x0
    1410:	f74080e7          	jalr	-140(ra) # 1380 <sdcard_preinit>
    1414:	00048513          	mv	a0,s1
    1418:	00000097          	auipc	ra,0x0
    141c:	df4080e7          	jalr	-524(ra) # 120c <sdcard_cmd>
    1420:	00100593          	li	a1,1
    1424:	00800513          	li	a0,8
    1428:	00000097          	auipc	ra,0x0
    142c:	d6c080e7          	jalr	-660(ra) # 1194 <sdcard_get>
    1430:	00a12623          	sw	a0,12(sp)
    1434:	00000097          	auipc	ra,0x0
    1438:	bac080e7          	jalr	-1108(ra) # fe0 <sdcard_ponder>
    143c:	00c12503          	lw	a0,12(sp)
    1440:	00851c63          	bne	a0,s0,1458 <sdcard_init+0x78>
    1444:	01313537          	lui	a0,0x1313
    1448:	d0050513          	addi	a0,a0,-768 # 1312d00 <__stacktop+0x1302d00>
    144c:	00000097          	auipc	ra,0x0
    1450:	b68080e7          	jalr	-1176(ra) # fb4 <pause>
    1454:	fb9ff06f          	j	140c <sdcard_init+0x2c>
    1458:	00005537          	lui	a0,0x5
    145c:	10850513          	addi	a0,a0,264 # 5108 <cmd8>
    1460:	00000097          	auipc	ra,0x0
    1464:	dac080e7          	jalr	-596(ra) # 120c <sdcard_cmd>
    1468:	00100593          	li	a1,1
    146c:	02800513          	li	a0,40
    1470:	00000097          	auipc	ra,0x0
    1474:	d24080e7          	jalr	-732(ra) # 1194 <sdcard_get>
    1478:	00000097          	auipc	ra,0x0
    147c:	b68080e7          	jalr	-1176(ra) # fe0 <sdcard_ponder>
    1480:	000057b7          	lui	a5,0x5
    1484:	10078413          	addi	s0,a5,256 # 5100 <cmd55>
    1488:	000057b7          	lui	a5,0x5
    148c:	0f878493          	addi	s1,a5,248 # 50f8 <acmd41>
    1490:	00040513          	mv	a0,s0
    1494:	00000097          	auipc	ra,0x0
    1498:	d78080e7          	jalr	-648(ra) # 120c <sdcard_cmd>
    149c:	00100593          	li	a1,1
    14a0:	00800513          	li	a0,8
    14a4:	00000097          	auipc	ra,0x0
    14a8:	cf0080e7          	jalr	-784(ra) # 1194 <sdcard_get>
    14ac:	00000097          	auipc	ra,0x0
    14b0:	b34080e7          	jalr	-1228(ra) # fe0 <sdcard_ponder>
    14b4:	00048513          	mv	a0,s1
    14b8:	00000097          	auipc	ra,0x0
    14bc:	d54080e7          	jalr	-684(ra) # 120c <sdcard_cmd>
    14c0:	00100593          	li	a1,1
    14c4:	00800513          	li	a0,8
    14c8:	00000097          	auipc	ra,0x0
    14cc:	ccc080e7          	jalr	-820(ra) # 1194 <sdcard_get>
    14d0:	00a12623          	sw	a0,12(sp)
    14d4:	00000097          	auipc	ra,0x0
    14d8:	b0c080e7          	jalr	-1268(ra) # fe0 <sdcard_ponder>
    14dc:	00c12503          	lw	a0,12(sp)
    14e0:	00050c63          	beqz	a0,14f8 <sdcard_init+0x118>
    14e4:	001e8537          	lui	a0,0x1e8
    14e8:	48050513          	addi	a0,a0,1152 # 1e8480 <__stacktop+0x1d8480>
    14ec:	00000097          	auipc	ra,0x0
    14f0:	ac8080e7          	jalr	-1336(ra) # fb4 <pause>
    14f4:	f9dff06f          	j	1490 <sdcard_init+0xb0>
    14f8:	00005537          	lui	a0,0x5
    14fc:	0f050513          	addi	a0,a0,240 # 50f0 <cmd16>
    1500:	00000097          	auipc	ra,0x0
    1504:	d0c080e7          	jalr	-756(ra) # 120c <sdcard_cmd>
    1508:	00100593          	li	a1,1
    150c:	00800513          	li	a0,8
    1510:	00000097          	auipc	ra,0x0
    1514:	c84080e7          	jalr	-892(ra) # 1194 <sdcard_get>
    1518:	01812403          	lw	s0,24(sp)
    151c:	01c12083          	lw	ra,28(sp)
    1520:	01412483          	lw	s1,20(sp)
    1524:	02010113          	addi	sp,sp,32
    1528:	00000317          	auipc	t1,0x0
    152c:	ab830067          	jr	-1352(t1) # fe0 <sdcard_ponder>

00001530 <sdcard_readsector>:
    1530:	04060663          	beqz	a2,157c <sdcard_readsector+0x4c>
    1534:	ff010113          	addi	sp,sp,-16
    1538:	00812423          	sw	s0,8(sp)
    153c:	00912223          	sw	s1,4(sp)
    1540:	00112623          	sw	ra,12(sp)
    1544:	00050413          	mv	s0,a0
    1548:	00a604b3          	add	s1,a2,a0
    154c:	00040513          	mv	a0,s0
    1550:	00000097          	auipc	ra,0x0
    1554:	da4080e7          	jalr	-604(ra) # 12f4 <sdcard_read_sector>
    1558:	00140413          	addi	s0,s0,1
    155c:	00050593          	mv	a1,a0
    1560:	fe9416e3          	bne	s0,s1,154c <sdcard_readsector+0x1c>
    1564:	00c12083          	lw	ra,12(sp)
    1568:	00812403          	lw	s0,8(sp)
    156c:	00412483          	lw	s1,4(sp)
    1570:	00100513          	li	a0,1
    1574:	01010113          	addi	sp,sp,16
    1578:	00008067          	ret
    157c:	00000513          	li	a0,0
    1580:	00008067          	ret

00001584 <sdcard_writesector>:
    1584:	00000513          	li	a0,0
    1588:	00008067          	ret

0000158c <__divsi3>:
    158c:	06054063          	bltz	a0,15ec <__umodsi3+0x10>
    1590:	0605c663          	bltz	a1,15fc <__umodsi3+0x20>

00001594 <__udivsi3>:
    1594:	00058613          	mv	a2,a1
    1598:	00050593          	mv	a1,a0
    159c:	fff00513          	li	a0,-1
    15a0:	02060c63          	beqz	a2,15d8 <__udivsi3+0x44>
    15a4:	00100693          	li	a3,1
    15a8:	00b67a63          	bgeu	a2,a1,15bc <__udivsi3+0x28>
    15ac:	00c05863          	blez	a2,15bc <__udivsi3+0x28>
    15b0:	00161613          	slli	a2,a2,0x1
    15b4:	00169693          	slli	a3,a3,0x1
    15b8:	feb66ae3          	bltu	a2,a1,15ac <__udivsi3+0x18>
    15bc:	00000513          	li	a0,0
    15c0:	00c5e663          	bltu	a1,a2,15cc <__udivsi3+0x38>
    15c4:	40c585b3          	sub	a1,a1,a2
    15c8:	00d56533          	or	a0,a0,a3
    15cc:	0016d693          	srli	a3,a3,0x1
    15d0:	00165613          	srli	a2,a2,0x1
    15d4:	fe0696e3          	bnez	a3,15c0 <__udivsi3+0x2c>
    15d8:	00008067          	ret

000015dc <__umodsi3>:
    15dc:	00008293          	mv	t0,ra
    15e0:	fb5ff0ef          	jal	1594 <__udivsi3>
    15e4:	00058513          	mv	a0,a1
    15e8:	00028067          	jr	t0
    15ec:	40a00533          	neg	a0,a0
    15f0:	0005d863          	bgez	a1,1600 <__umodsi3+0x24>
    15f4:	40b005b3          	neg	a1,a1
    15f8:	f95ff06f          	j	158c <__divsi3>
    15fc:	40b005b3          	neg	a1,a1
    1600:	00008293          	mv	t0,ra
    1604:	f89ff0ef          	jal	158c <__divsi3>
    1608:	40a00533          	neg	a0,a0
    160c:	00028067          	jr	t0

00001610 <__modsi3>:
    1610:	00008293          	mv	t0,ra
    1614:	0005ca63          	bltz	a1,1628 <__modsi3+0x18>
    1618:	00054c63          	bltz	a0,1630 <__modsi3+0x20>
    161c:	f79ff0ef          	jal	1594 <__udivsi3>
    1620:	00058513          	mv	a0,a1
    1624:	00028067          	jr	t0
    1628:	40b005b3          	neg	a1,a1
    162c:	fe0558e3          	bgez	a0,161c <__modsi3+0xc>
    1630:	40a00533          	neg	a0,a0
    1634:	f61ff0ef          	jal	1594 <__udivsi3>
    1638:	40b00533          	neg	a0,a1
    163c:	00028067          	jr	t0

00001640 <memset>:
    1640:	00c50633          	add	a2,a0,a2
    1644:	00050793          	mv	a5,a0
    1648:	00c79463          	bne	a5,a2,1650 <memset+0x10>
    164c:	00008067          	ret
    1650:	00178793          	addi	a5,a5,1
    1654:	feb78fa3          	sb	a1,-1(a5)
    1658:	ff1ff06f          	j	1648 <memset+0x8>

0000165c <memcpy>:
    165c:	00000793          	li	a5,0
    1660:	00c79463          	bne	a5,a2,1668 <memcpy+0xc>
    1664:	00008067          	ret
    1668:	00f58733          	add	a4,a1,a5
    166c:	00074683          	lbu	a3,0(a4)
    1670:	00f50733          	add	a4,a0,a5
    1674:	00178793          	addi	a5,a5,1
    1678:	00d70023          	sb	a3,0(a4)
    167c:	fe5ff06f          	j	1660 <memcpy+0x4>

00001680 <strlen>:
    1680:	00000793          	li	a5,0
    1684:	00f50733          	add	a4,a0,a5
    1688:	00074703          	lbu	a4,0(a4)
    168c:	00071663          	bnez	a4,1698 <strlen+0x18>
    1690:	00078513          	mv	a0,a5
    1694:	00008067          	ret
    1698:	00178793          	addi	a5,a5,1
    169c:	fe9ff06f          	j	1684 <strlen+0x4>

000016a0 <strncmp>:
    16a0:	00000793          	li	a5,0
    16a4:	00c79663          	bne	a5,a2,16b0 <strncmp+0x10>
    16a8:	00000513          	li	a0,0
    16ac:	00008067          	ret
    16b0:	00f50733          	add	a4,a0,a5
    16b4:	00074683          	lbu	a3,0(a4)
    16b8:	00f58733          	add	a4,a1,a5
    16bc:	00074703          	lbu	a4,0(a4)
    16c0:	00e6e863          	bltu	a3,a4,16d0 <strncmp+0x30>
    16c4:	00d76a63          	bltu	a4,a3,16d8 <strncmp+0x38>
    16c8:	00178793          	addi	a5,a5,1
    16cc:	fd9ff06f          	j	16a4 <strncmp+0x4>
    16d0:	fff00513          	li	a0,-1
    16d4:	00008067          	ret
    16d8:	00100513          	li	a0,1
    16dc:	00008067          	ret

000016e0 <strncpy>:
    16e0:	00000793          	li	a5,0
    16e4:	00c79463          	bne	a5,a2,16ec <strncpy+0xc>
    16e8:	00008067          	ret
    16ec:	00f58733          	add	a4,a1,a5
    16f0:	00074683          	lbu	a3,0(a4)
    16f4:	00f50733          	add	a4,a0,a5
    16f8:	00178793          	addi	a5,a5,1
    16fc:	00d70023          	sb	a3,0(a4)
    1700:	fe5ff06f          	j	16e4 <strncpy+0x4>

00001704 <strcat>:
    1704:	00050793          	mv	a5,a0
    1708:	0007c683          	lbu	a3,0(a5)
    170c:	00078713          	mv	a4,a5
    1710:	00178793          	addi	a5,a5,1
    1714:	fe069ae3          	bnez	a3,1708 <strcat+0x4>
    1718:	0005c783          	lbu	a5,0(a1)
    171c:	00158593          	addi	a1,a1,1
    1720:	00170713          	addi	a4,a4,1
    1724:	fef70fa3          	sb	a5,-1(a4)
    1728:	fe0798e3          	bnez	a5,1718 <strcat+0x14>
    172c:	00008067          	ret

00001730 <oled_wait>:
    1730:	00000013          	nop
    1734:	00000013          	nop
    1738:	00000013          	nop
    173c:	00000013          	nop
    1740:	00000013          	nop
    1744:	00000013          	nop
    1748:	00000013          	nop
    174c:	00008067          	ret

00001750 <oled_init_mode>:
    1750:	000057b7          	lui	a5,0x5
    1754:	1247a703          	lw	a4,292(a5) # 5124 <OLED_RST>
    1758:	fe010113          	addi	sp,sp,-32
    175c:	00112e23          	sw	ra,28(sp)
    1760:	00812c23          	sw	s0,24(sp)
    1764:	00072023          	sw	zero,0(a4)
    1768:	00040737          	lui	a4,0x40
    176c:	00000013          	nop
    1770:	fff70713          	addi	a4,a4,-1 # 3ffff <__stacktop+0x2ffff>
    1774:	fe071ce3          	bnez	a4,176c <oled_init_mode+0x1c>
    1778:	1247a703          	lw	a4,292(a5)
    177c:	00100693          	li	a3,1
    1780:	00d72023          	sw	a3,0(a4)
    1784:	00040737          	lui	a4,0x40
    1788:	00000013          	nop
    178c:	fff70713          	addi	a4,a4,-1 # 3ffff <__stacktop+0x2ffff>
    1790:	fe071ce3          	bnez	a4,1788 <oled_init_mode+0x38>
    1794:	1247a783          	lw	a5,292(a5)
    1798:	0007a023          	sw	zero,0(a5)
    179c:	000407b7          	lui	a5,0x40
    17a0:	00000013          	nop
    17a4:	fff78793          	addi	a5,a5,-1 # 3ffff <__stacktop+0x2ffff>
    17a8:	fe079ce3          	bnez	a5,17a0 <oled_init_mode+0x50>
    17ac:	00005737          	lui	a4,0x5
    17b0:	12872783          	lw	a5,296(a4) # 5128 <OLED>
    17b4:	2af00693          	li	a3,687
    17b8:	00d7a023          	sw	a3,0(a5)
    17bc:	000407b7          	lui	a5,0x40
    17c0:	00000013          	nop
    17c4:	fff78793          	addi	a5,a5,-1 # 3ffff <__stacktop+0x2ffff>
    17c8:	fe079ce3          	bnez	a5,17c0 <oled_init_mode+0x70>
    17cc:	12872403          	lw	s0,296(a4)
    17d0:	2a000793          	li	a5,672
    17d4:	00a12623          	sw	a0,12(sp)
    17d8:	00f42023          	sw	a5,0(s0)
    17dc:	00000097          	auipc	ra,0x0
    17e0:	f54080e7          	jalr	-172(ra) # 1730 <oled_wait>
    17e4:	00c12503          	lw	a0,12(sp)
    17e8:	4a000793          	li	a5,1184
    17ec:	00050463          	beqz	a0,17f4 <oled_init_mode+0xa4>
    17f0:	42000793          	li	a5,1056
    17f4:	00f42023          	sw	a5,0(s0)
    17f8:	00000097          	auipc	ra,0x0
    17fc:	f38080e7          	jalr	-200(ra) # 1730 <oled_wait>
    1800:	2fd00793          	li	a5,765
    1804:	00f42023          	sw	a5,0(s0)
    1808:	00000097          	auipc	ra,0x0
    180c:	f28080e7          	jalr	-216(ra) # 1730 <oled_wait>
    1810:	4b100793          	li	a5,1201
    1814:	00f42023          	sw	a5,0(s0)
    1818:	00000097          	auipc	ra,0x0
    181c:	f18080e7          	jalr	-232(ra) # 1730 <oled_wait>
    1820:	2a200793          	li	a5,674
    1824:	00f42023          	sw	a5,0(s0)
    1828:	00000097          	auipc	ra,0x0
    182c:	f08080e7          	jalr	-248(ra) # 1730 <oled_wait>
    1830:	40000793          	li	a5,1024
    1834:	00f42023          	sw	a5,0(s0)
    1838:	01812403          	lw	s0,24(sp)
    183c:	01c12083          	lw	ra,28(sp)
    1840:	02010113          	addi	sp,sp,32
    1844:	00000317          	auipc	t1,0x0
    1848:	eec30067          	jr	-276(t1) # 1730 <oled_wait>

0000184c <oled_init>:
    184c:	00000513          	li	a0,0
    1850:	00000317          	auipc	t1,0x0
    1854:	f0030067          	jr	-256(t1) # 1750 <oled_init_mode>

00001858 <oled_fullscreen>:
    1858:	ff010113          	addi	sp,sp,-16
    185c:	000057b7          	lui	a5,0x5
    1860:	00812423          	sw	s0,8(sp)
    1864:	1287a403          	lw	s0,296(a5) # 5128 <OLED>
    1868:	00112623          	sw	ra,12(sp)
    186c:	00912223          	sw	s1,4(sp)
    1870:	01212023          	sw	s2,0(sp)
    1874:	21500793          	li	a5,533
    1878:	00f42023          	sw	a5,0(s0)
    187c:	40000913          	li	s2,1024
    1880:	00000097          	auipc	ra,0x0
    1884:	eb0080e7          	jalr	-336(ra) # 1730 <oled_wait>
    1888:	47f00493          	li	s1,1151
    188c:	01242023          	sw	s2,0(s0)
    1890:	00000097          	auipc	ra,0x0
    1894:	ea0080e7          	jalr	-352(ra) # 1730 <oled_wait>
    1898:	00942023          	sw	s1,0(s0)
    189c:	00000097          	auipc	ra,0x0
    18a0:	e94080e7          	jalr	-364(ra) # 1730 <oled_wait>
    18a4:	27500793          	li	a5,629
    18a8:	00f42023          	sw	a5,0(s0)
    18ac:	00000097          	auipc	ra,0x0
    18b0:	e84080e7          	jalr	-380(ra) # 1730 <oled_wait>
    18b4:	01242023          	sw	s2,0(s0)
    18b8:	00000097          	auipc	ra,0x0
    18bc:	e78080e7          	jalr	-392(ra) # 1730 <oled_wait>
    18c0:	00942023          	sw	s1,0(s0)
    18c4:	00000097          	auipc	ra,0x0
    18c8:	e6c080e7          	jalr	-404(ra) # 1730 <oled_wait>
    18cc:	25c00793          	li	a5,604
    18d0:	00f42023          	sw	a5,0(s0)
    18d4:	00812403          	lw	s0,8(sp)
    18d8:	00c12083          	lw	ra,12(sp)
    18dc:	00412483          	lw	s1,4(sp)
    18e0:	00012903          	lw	s2,0(sp)
    18e4:	01010113          	addi	sp,sp,16
    18e8:	00000317          	auipc	t1,0x0
    18ec:	e4830067          	jr	-440(t1) # 1730 <oled_wait>

000018f0 <oled_wait>:
    18f0:	00000013          	nop
    18f4:	00000013          	nop
    18f8:	00000013          	nop
    18fc:	00000013          	nop
    1900:	00000013          	nop
    1904:	00000013          	nop
    1908:	00000013          	nop
    190c:	00008067          	ret

00001910 <display_framebuffer>:
    1910:	00008537          	lui	a0,0x8
    1914:	9ec50513          	addi	a0,a0,-1556 # 79ec <framebuffer>
    1918:	00008067          	ret

0000191c <display_set_cursor>:
    191c:	000057b7          	lui	a5,0x5
    1920:	74a7a623          	sw	a0,1868(a5) # 574c <cursor_x>
    1924:	000057b7          	lui	a5,0x5
    1928:	74b7a423          	sw	a1,1864(a5) # 5748 <cursor_y>
    192c:	00008067          	ret

00001930 <display_set_front_back_color>:
    1930:	000057b7          	lui	a5,0x5
    1934:	74a782a3          	sb	a0,1861(a5) # 5745 <front_color>
    1938:	000057b7          	lui	a5,0x5
    193c:	74b78223          	sb	a1,1860(a5) # 5744 <back_color>
    1940:	00008067          	ret

00001944 <display_putchar>:
    1944:	00a00793          	li	a5,10
    1948:	000055b7          	lui	a1,0x5
    194c:	02f51663          	bne	a0,a5,1978 <display_putchar+0x34>
    1950:	00005737          	lui	a4,0x5
    1954:	74872783          	lw	a5,1864(a4) # 5748 <cursor_y>
    1958:	7405a623          	sw	zero,1868(a1) # 574c <cursor_x>
    195c:	00878793          	addi	a5,a5,8
    1960:	74f72423          	sw	a5,1864(a4)
    1964:	07f00713          	li	a4,127
    1968:	00f75663          	bge	a4,a5,1974 <display_putchar+0x30>
    196c:	000057b7          	lui	a5,0x5
    1970:	7407a423          	sw	zero,1864(a5) # 5748 <cursor_y>
    1974:	00008067          	ret
    1978:	ff010113          	addi	sp,sp,-16
    197c:	00812623          	sw	s0,12(sp)
    1980:	01f00713          	li	a4,31
    1984:	74c5a783          	lw	a5,1868(a1)
    1988:	08a75a63          	bge	a4,a0,1a1c <display_putchar+0xd8>
    198c:	00005737          	lui	a4,0x5
    1990:	74474f83          	lbu	t6,1860(a4) # 5744 <back_color>
    1994:	00005737          	lui	a4,0x5
    1998:	74574283          	lbu	t0,1861(a4) # 5745 <front_color>
    199c:	000056b7          	lui	a3,0x5
    19a0:	00251713          	slli	a4,a0,0x2
    19a4:	31c68693          	addi	a3,a3,796 # 531c <font>
    19a8:	00a70733          	add	a4,a4,a0
    19ac:	00d70733          	add	a4,a4,a3
    19b0:	000056b7          	lui	a3,0x5
    19b4:	7486a683          	lw	a3,1864(a3) # 5748 <cursor_y>
    19b8:	00008637          	lui	a2,0x8
    19bc:	9ec60613          	addi	a2,a2,-1556 # 79ec <framebuffer>
    19c0:	00c686b3          	add	a3,a3,a2
    19c4:	00779613          	slli	a2,a5,0x7
    19c8:	00c686b3          	add	a3,a3,a2
    19cc:	00100f13          	li	t5,1
    19d0:	00000613          	li	a2,0
    19d4:	00500393          	li	t2,5
    19d8:	00800413          	li	s0,8
    19dc:	00cf1eb3          	sll	t4,t5,a2
    19e0:	00d608b3          	add	a7,a2,a3
    19e4:	00070813          	mv	a6,a4
    19e8:	00000513          	li	a0,0
    19ec:	f6084303          	lbu	t1,-160(a6)
    19f0:	00028e13          	mv	t3,t0
    19f4:	01d37333          	and	t1,t1,t4
    19f8:	00031463          	bnez	t1,1a00 <display_putchar+0xbc>
    19fc:	000f8e13          	mv	t3,t6
    1a00:	01c88023          	sb	t3,0(a7)
    1a04:	00150513          	addi	a0,a0,1
    1a08:	00180813          	addi	a6,a6,1
    1a0c:	08088893          	addi	a7,a7,128
    1a10:	fc751ee3          	bne	a0,t2,19ec <display_putchar+0xa8>
    1a14:	00160613          	addi	a2,a2,1
    1a18:	fc8612e3          	bne	a2,s0,19dc <display_putchar+0x98>
    1a1c:	00578793          	addi	a5,a5,5
    1a20:	07f00713          	li	a4,127
    1a24:	00f74663          	blt	a4,a5,1a30 <display_putchar+0xec>
    1a28:	74f5a623          	sw	a5,1868(a1)
    1a2c:	0240006f          	j	1a50 <display_putchar+0x10c>
    1a30:	000056b7          	lui	a3,0x5
    1a34:	7486a783          	lw	a5,1864(a3) # 5748 <cursor_y>
    1a38:	7405a623          	sw	zero,1868(a1)
    1a3c:	00878793          	addi	a5,a5,8
    1a40:	74f6a423          	sw	a5,1864(a3)
    1a44:	00f75663          	bge	a4,a5,1a50 <display_putchar+0x10c>
    1a48:	000057b7          	lui	a5,0x5
    1a4c:	7407a423          	sw	zero,1864(a5) # 5748 <cursor_y>
    1a50:	00c12403          	lw	s0,12(sp)
    1a54:	01010113          	addi	sp,sp,16
    1a58:	00008067          	ret

00001a5c <display_refresh>:
    1a5c:	fe010113          	addi	sp,sp,-32
    1a60:	000057b7          	lui	a5,0x5
    1a64:	01212823          	sw	s2,16(sp)
    1a68:	1287a903          	lw	s2,296(a5) # 5128 <OLED>
    1a6c:	01312623          	sw	s3,12(sp)
    1a70:	000089b7          	lui	s3,0x8
    1a74:	00912a23          	sw	s1,20(sp)
    1a78:	01412423          	sw	s4,8(sp)
    1a7c:	00112e23          	sw	ra,28(sp)
    1a80:	00812c23          	sw	s0,24(sp)
    1a84:	00000493          	li	s1,0
    1a88:	9ec98993          	addi	s3,s3,-1556 # 79ec <framebuffer>
    1a8c:	00004a37          	lui	s4,0x4
    1a90:	013487b3          	add	a5,s1,s3
    1a94:	0007c403          	lbu	s0,0(a5)
    1a98:	00148493          	addi	s1,s1,1
    1a9c:	00245413          	srli	s0,s0,0x2
    1aa0:	40046413          	ori	s0,s0,1024
    1aa4:	00892023          	sw	s0,0(s2)
    1aa8:	00000097          	auipc	ra,0x0
    1aac:	e48080e7          	jalr	-440(ra) # 18f0 <oled_wait>
    1ab0:	00892023          	sw	s0,0(s2)
    1ab4:	00000097          	auipc	ra,0x0
    1ab8:	e3c080e7          	jalr	-452(ra) # 18f0 <oled_wait>
    1abc:	00892023          	sw	s0,0(s2)
    1ac0:	00000097          	auipc	ra,0x0
    1ac4:	e30080e7          	jalr	-464(ra) # 18f0 <oled_wait>
    1ac8:	fd4494e3          	bne	s1,s4,1a90 <display_refresh+0x34>
    1acc:	01c12083          	lw	ra,28(sp)
    1ad0:	01812403          	lw	s0,24(sp)
    1ad4:	01412483          	lw	s1,20(sp)
    1ad8:	01012903          	lw	s2,16(sp)
    1adc:	00c12983          	lw	s3,12(sp)
    1ae0:	00812a03          	lw	s4,8(sp)
    1ae4:	02010113          	addi	sp,sp,32
    1ae8:	00008067          	ret

00001aec <print_string>:
    1aec:	ff010113          	addi	sp,sp,-16
    1af0:	00812423          	sw	s0,8(sp)
    1af4:	00912223          	sw	s1,4(sp)
    1af8:	00112623          	sw	ra,12(sp)
    1afc:	00050413          	mv	s0,a0
    1b00:	000054b7          	lui	s1,0x5
    1b04:	00044503          	lbu	a0,0(s0)
    1b08:	00051c63          	bnez	a0,1b20 <print_string+0x34>
    1b0c:	00c12083          	lw	ra,12(sp)
    1b10:	00812403          	lw	s0,8(sp)
    1b14:	00412483          	lw	s1,4(sp)
    1b18:	01010113          	addi	sp,sp,16
    1b1c:	00008067          	ret
    1b20:	7504a783          	lw	a5,1872(s1) # 5750 <f_putchar>
    1b24:	00140413          	addi	s0,s0,1
    1b28:	000780e7          	jalr	a5
    1b2c:	fd9ff06f          	j	1b04 <print_string+0x18>

00001b30 <print_dec>:
    1b30:	ef010113          	addi	sp,sp,-272
    1b34:	10812423          	sw	s0,264(sp)
    1b38:	10912223          	sw	s1,260(sp)
    1b3c:	10112623          	sw	ra,268(sp)
    1b40:	11212023          	sw	s2,256(sp)
    1b44:	00050413          	mv	s0,a0
    1b48:	000054b7          	lui	s1,0x5
    1b4c:	08045063          	bgez	s0,1bcc <print_dec+0x9c>
    1b50:	7504a783          	lw	a5,1872(s1) # 5750 <f_putchar>
    1b54:	02d00513          	li	a0,45
    1b58:	40800433          	neg	s0,s0
    1b5c:	000780e7          	jalr	a5
    1b60:	fedff06f          	j	1b4c <print_dec+0x1c>
    1b64:	00040513          	mv	a0,s0
    1b68:	00a00593          	li	a1,10
    1b6c:	00000097          	auipc	ra,0x0
    1b70:	a20080e7          	jalr	-1504(ra) # 158c <__divsi3>
    1b74:	00251793          	slli	a5,a0,0x2
    1b78:	00f507b3          	add	a5,a0,a5
    1b7c:	00179793          	slli	a5,a5,0x1
    1b80:	40f40433          	sub	s0,s0,a5
    1b84:	00148493          	addi	s1,s1,1
    1b88:	fe848fa3          	sb	s0,-1(s1)
    1b8c:	00050413          	mv	s0,a0
    1b90:	fc041ae3          	bnez	s0,1b64 <print_dec+0x34>
    1b94:	fd2488e3          	beq	s1,s2,1b64 <print_dec+0x34>
    1b98:	00005437          	lui	s0,0x5
    1b9c:	fff4c503          	lbu	a0,-1(s1)
    1ba0:	75042783          	lw	a5,1872(s0) # 5750 <f_putchar>
    1ba4:	fff48493          	addi	s1,s1,-1
    1ba8:	03050513          	addi	a0,a0,48
    1bac:	000780e7          	jalr	a5
    1bb0:	ff2496e3          	bne	s1,s2,1b9c <print_dec+0x6c>
    1bb4:	10c12083          	lw	ra,268(sp)
    1bb8:	10812403          	lw	s0,264(sp)
    1bbc:	10412483          	lw	s1,260(sp)
    1bc0:	10012903          	lw	s2,256(sp)
    1bc4:	11010113          	addi	sp,sp,272
    1bc8:	00008067          	ret
    1bcc:	00010493          	mv	s1,sp
    1bd0:	00010913          	mv	s2,sp
    1bd4:	fbdff06f          	j	1b90 <print_dec+0x60>

00001bd8 <print_hex_digits>:
    1bd8:	fe010113          	addi	sp,sp,-32
    1bdc:	00812c23          	sw	s0,24(sp)
    1be0:	00912a23          	sw	s1,20(sp)
    1be4:	fff58413          	addi	s0,a1,-1
    1be8:	000054b7          	lui	s1,0x5
    1bec:	01212823          	sw	s2,16(sp)
    1bf0:	01312623          	sw	s3,12(sp)
    1bf4:	00112e23          	sw	ra,28(sp)
    1bf8:	00050993          	mv	s3,a0
    1bfc:	00241413          	slli	s0,s0,0x2
    1c00:	2d448493          	addi	s1,s1,724 # 52d4 <LEDS+0x1a8>
    1c04:	00005937          	lui	s2,0x5
    1c08:	02045063          	bgez	s0,1c28 <print_hex_digits+0x50>
    1c0c:	01c12083          	lw	ra,28(sp)
    1c10:	01812403          	lw	s0,24(sp)
    1c14:	01412483          	lw	s1,20(sp)
    1c18:	01012903          	lw	s2,16(sp)
    1c1c:	00c12983          	lw	s3,12(sp)
    1c20:	02010113          	addi	sp,sp,32
    1c24:	00008067          	ret
    1c28:	0089d7b3          	srl	a5,s3,s0
    1c2c:	00f7f793          	andi	a5,a5,15
    1c30:	00f487b3          	add	a5,s1,a5
    1c34:	75092703          	lw	a4,1872(s2) # 5750 <f_putchar>
    1c38:	0007c503          	lbu	a0,0(a5)
    1c3c:	ffc40413          	addi	s0,s0,-4
    1c40:	000700e7          	jalr	a4
    1c44:	fc5ff06f          	j	1c08 <print_hex_digits+0x30>

00001c48 <print_hex>:
    1c48:	00800593          	li	a1,8
    1c4c:	00000317          	auipc	t1,0x0
    1c50:	f8c30067          	jr	-116(t1) # 1bd8 <print_hex_digits>

00001c54 <printf>:
    1c54:	fa010113          	addi	sp,sp,-96
    1c58:	04f12a23          	sw	a5,84(sp)
    1c5c:	04410793          	addi	a5,sp,68
    1c60:	02812c23          	sw	s0,56(sp)
    1c64:	02912a23          	sw	s1,52(sp)
    1c68:	03212823          	sw	s2,48(sp)
    1c6c:	03312623          	sw	s3,44(sp)
    1c70:	03412423          	sw	s4,40(sp)
    1c74:	03512223          	sw	s5,36(sp)
    1c78:	03612023          	sw	s6,32(sp)
    1c7c:	02112e23          	sw	ra,60(sp)
    1c80:	01712e23          	sw	s7,28(sp)
    1c84:	00050413          	mv	s0,a0
    1c88:	04b12223          	sw	a1,68(sp)
    1c8c:	04c12423          	sw	a2,72(sp)
    1c90:	04d12623          	sw	a3,76(sp)
    1c94:	04e12823          	sw	a4,80(sp)
    1c98:	05012c23          	sw	a6,88(sp)
    1c9c:	05112e23          	sw	a7,92(sp)
    1ca0:	00f12623          	sw	a5,12(sp)
    1ca4:	02500913          	li	s2,37
    1ca8:	000054b7          	lui	s1,0x5
    1cac:	07300993          	li	s3,115
    1cb0:	07800a13          	li	s4,120
    1cb4:	06400a93          	li	s5,100
    1cb8:	06300b13          	li	s6,99
    1cbc:	00044503          	lbu	a0,0(s0)
    1cc0:	02051863          	bnez	a0,1cf0 <printf+0x9c>
    1cc4:	03c12083          	lw	ra,60(sp)
    1cc8:	03812403          	lw	s0,56(sp)
    1ccc:	03412483          	lw	s1,52(sp)
    1cd0:	03012903          	lw	s2,48(sp)
    1cd4:	02c12983          	lw	s3,44(sp)
    1cd8:	02812a03          	lw	s4,40(sp)
    1cdc:	02412a83          	lw	s5,36(sp)
    1ce0:	02012b03          	lw	s6,32(sp)
    1ce4:	01c12b83          	lw	s7,28(sp)
    1ce8:	06010113          	addi	sp,sp,96
    1cec:	00008067          	ret
    1cf0:	09251a63          	bne	a0,s2,1d84 <printf+0x130>
    1cf4:	00144503          	lbu	a0,1(s0)
    1cf8:	00140b93          	addi	s7,s0,1
    1cfc:	03351463          	bne	a0,s3,1d24 <printf+0xd0>
    1d00:	00c12783          	lw	a5,12(sp)
    1d04:	0007a503          	lw	a0,0(a5)
    1d08:	00478713          	addi	a4,a5,4
    1d0c:	00e12623          	sw	a4,12(sp)
    1d10:	00000097          	auipc	ra,0x0
    1d14:	ddc080e7          	jalr	-548(ra) # 1aec <print_string>
    1d18:	000b8413          	mv	s0,s7
    1d1c:	00140413          	addi	s0,s0,1
    1d20:	f9dff06f          	j	1cbc <printf+0x68>
    1d24:	03451063          	bne	a0,s4,1d44 <printf+0xf0>
    1d28:	00c12783          	lw	a5,12(sp)
    1d2c:	0007a503          	lw	a0,0(a5)
    1d30:	00478713          	addi	a4,a5,4
    1d34:	00e12623          	sw	a4,12(sp)
    1d38:	00000097          	auipc	ra,0x0
    1d3c:	f10080e7          	jalr	-240(ra) # 1c48 <print_hex>
    1d40:	fd9ff06f          	j	1d18 <printf+0xc4>
    1d44:	03551063          	bne	a0,s5,1d64 <printf+0x110>
    1d48:	00c12783          	lw	a5,12(sp)
    1d4c:	0007a503          	lw	a0,0(a5)
    1d50:	00478713          	addi	a4,a5,4
    1d54:	00e12623          	sw	a4,12(sp)
    1d58:	00000097          	auipc	ra,0x0
    1d5c:	dd8080e7          	jalr	-552(ra) # 1b30 <print_dec>
    1d60:	fb9ff06f          	j	1d18 <printf+0xc4>
    1d64:	7504a783          	lw	a5,1872(s1) # 5750 <f_putchar>
    1d68:	01651a63          	bne	a0,s6,1d7c <printf+0x128>
    1d6c:	00c12703          	lw	a4,12(sp)
    1d70:	00072503          	lw	a0,0(a4)
    1d74:	00470693          	addi	a3,a4,4
    1d78:	00d12623          	sw	a3,12(sp)
    1d7c:	000780e7          	jalr	a5
    1d80:	f99ff06f          	j	1d18 <printf+0xc4>
    1d84:	7504a783          	lw	a5,1872(s1)
    1d88:	000780e7          	jalr	a5
    1d8c:	f91ff06f          	j	1d1c <printf+0xc8>

00001d90 <__mulsi3>:
    1d90:	00050793          	mv	a5,a0
    1d94:	00000513          	li	a0,0
    1d98:	00079463          	bnez	a5,1da0 <__mulsi3+0x10>
    1d9c:	00008067          	ret
    1da0:	01f79693          	slli	a3,a5,0x1f
    1da4:	41f6d713          	srai	a4,a3,0x1f
    1da8:	00b77733          	and	a4,a4,a1
    1dac:	00e50533          	add	a0,a0,a4
    1db0:	0017d793          	srli	a5,a5,0x1
    1db4:	00159593          	slli	a1,a1,0x1
    1db8:	fe1ff06f          	j	1d98 <__mulsi3+0x8>

00001dbc <fat_list_insert_last>:
    1dbc:	00452783          	lw	a5,4(a0)
    1dc0:	04079263          	bnez	a5,1e04 <fat_list_insert_last+0x48>
    1dc4:	00052783          	lw	a5,0(a0)
    1dc8:	00079c63          	bnez	a5,1de0 <fat_list_insert_last+0x24>
    1dcc:	00b52023          	sw	a1,0(a0)
    1dd0:	00b52223          	sw	a1,4(a0)
    1dd4:	0005a023          	sw	zero,0(a1)
    1dd8:	0005a223          	sw	zero,4(a1)
    1ddc:	00008067          	ret
    1de0:	0007a703          	lw	a4,0(a5)
    1de4:	00f5a223          	sw	a5,4(a1)
    1de8:	00e5a023          	sw	a4,0(a1)
    1dec:	00071863          	bnez	a4,1dfc <fat_list_insert_last+0x40>
    1df0:	00b52023          	sw	a1,0(a0)
    1df4:	00b7a023          	sw	a1,0(a5)
    1df8:	00008067          	ret
    1dfc:	00b72223          	sw	a1,4(a4)
    1e00:	ff5ff06f          	j	1df4 <fat_list_insert_last+0x38>
    1e04:	0047a703          	lw	a4,4(a5)
    1e08:	00f5a023          	sw	a5,0(a1)
    1e0c:	00e5a223          	sw	a4,4(a1)
    1e10:	00071863          	bnez	a4,1e20 <fat_list_insert_last+0x64>
    1e14:	00b52223          	sw	a1,4(a0)
    1e18:	00b7a223          	sw	a1,4(a5)
    1e1c:	00008067          	ret
    1e20:	00b72023          	sw	a1,0(a4)
    1e24:	ff5ff06f          	j	1e18 <fat_list_insert_last+0x5c>

00001e28 <FileString_StrCmpNoCase>:
    1e28:	00050e93          	mv	t4,a0
    1e2c:	00000793          	li	a5,0
    1e30:	01900e13          	li	t3,25
    1e34:	00c79663          	bne	a5,a2,1e40 <FileString_StrCmpNoCase+0x18>
    1e38:	00000513          	li	a0,0
    1e3c:	00008067          	ret
    1e40:	00fe8733          	add	a4,t4,a5
    1e44:	00074803          	lbu	a6,0(a4)
    1e48:	00f58733          	add	a4,a1,a5
    1e4c:	00074883          	lbu	a7,0(a4)
    1e50:	fbf80713          	addi	a4,a6,-65
    1e54:	0ff77713          	zext.b	a4,a4
    1e58:	00080693          	mv	a3,a6
    1e5c:	00ee6663          	bltu	t3,a4,1e68 <FileString_StrCmpNoCase+0x40>
    1e60:	02080693          	addi	a3,a6,32
    1e64:	0ff6f693          	zext.b	a3,a3
    1e68:	fbf88313          	addi	t1,a7,-65
    1e6c:	0ff37313          	zext.b	t1,t1
    1e70:	00088713          	mv	a4,a7
    1e74:	006e6663          	bltu	t3,t1,1e80 <FileString_StrCmpNoCase+0x58>
    1e78:	02088713          	addi	a4,a7,32
    1e7c:	0ff77713          	zext.b	a4,a4
    1e80:	40e68533          	sub	a0,a3,a4
    1e84:	00e69863          	bne	a3,a4,1e94 <FileString_StrCmpNoCase+0x6c>
    1e88:	00178793          	addi	a5,a5,1
    1e8c:	00088463          	beqz	a7,1e94 <FileString_StrCmpNoCase+0x6c>
    1e90:	fa0812e3          	bnez	a6,1e34 <FileString_StrCmpNoCase+0xc>
    1e94:	00008067          	ret

00001e98 <FileString_GetExtension>:
    1e98:	00050793          	mv	a5,a0
    1e9c:	fff00713          	li	a4,-1
    1ea0:	02e00613          	li	a2,46
    1ea4:	0007c683          	lbu	a3,0(a5)
    1ea8:	00069663          	bnez	a3,1eb4 <FileString_GetExtension+0x1c>
    1eac:	00070513          	mv	a0,a4
    1eb0:	00008067          	ret
    1eb4:	00c69463          	bne	a3,a2,1ebc <FileString_GetExtension+0x24>
    1eb8:	40a78733          	sub	a4,a5,a0
    1ebc:	00178793          	addi	a5,a5,1
    1ec0:	fe5ff06f          	j	1ea4 <FileString_GetExtension+0xc>

00001ec4 <fatfs_fat_writeback>:
    1ec4:	00059e63          	bnez	a1,1ee0 <fatfs_fat_writeback+0x1c>
    1ec8:	00000513          	li	a0,0
    1ecc:	00008067          	ret
    1ed0:	00000513          	li	a0,0
    1ed4:	01c12083          	lw	ra,28(sp)
    1ed8:	02010113          	addi	sp,sp,32
    1edc:	00008067          	ret
    1ee0:	2045a783          	lw	a5,516(a1)
    1ee4:	04078e63          	beqz	a5,1f40 <fatfs_fat_writeback+0x7c>
    1ee8:	03852683          	lw	a3,56(a0)
    1eec:	00050793          	mv	a5,a0
    1ef0:	04068663          	beqz	a3,1f3c <fatfs_fat_writeback+0x78>
    1ef4:	0147a703          	lw	a4,20(a5)
    1ef8:	2005a503          	lw	a0,512(a1)
    1efc:	0207a803          	lw	a6,32(a5)
    1f00:	00100613          	li	a2,1
    1f04:	fe010113          	addi	sp,sp,-32
    1f08:	40e607b3          	sub	a5,a2,a4
    1f0c:	00112e23          	sw	ra,28(sp)
    1f10:	00a787b3          	add	a5,a5,a0
    1f14:	00f87663          	bgeu	a6,a5,1f20 <fatfs_fat_writeback+0x5c>
    1f18:	01070733          	add	a4,a4,a6
    1f1c:	40a70633          	sub	a2,a4,a0
    1f20:	00b12623          	sw	a1,12(sp)
    1f24:	000680e7          	jalr	a3
    1f28:	fa0504e3          	beqz	a0,1ed0 <fatfs_fat_writeback+0xc>
    1f2c:	00c12583          	lw	a1,12(sp)
    1f30:	00100513          	li	a0,1
    1f34:	2005a223          	sw	zero,516(a1)
    1f38:	f9dff06f          	j	1ed4 <fatfs_fat_writeback+0x10>
    1f3c:	2005a223          	sw	zero,516(a1)
    1f40:	00100513          	li	a0,1
    1f44:	00008067          	ret

00001f48 <fatfs_fat_read_sector>:
    1f48:	fe010113          	addi	sp,sp,-32
    1f4c:	01212823          	sw	s2,16(sp)
    1f50:	25452903          	lw	s2,596(a0)
    1f54:	00812c23          	sw	s0,24(sp)
    1f58:	00112e23          	sw	ra,28(sp)
    1f5c:	00912a23          	sw	s1,20(sp)
    1f60:	01312623          	sw	s3,12(sp)
    1f64:	00000413          	li	s0,0
    1f68:	04091463          	bnez	s2,1fb0 <fatfs_fat_read_sector+0x68>
    1f6c:	25452783          	lw	a5,596(a0)
    1f70:	00058493          	mv	s1,a1
    1f74:	00050993          	mv	s3,a0
    1f78:	20f42623          	sw	a5,524(s0)
    1f7c:	20442783          	lw	a5,516(s0)
    1f80:	24852a23          	sw	s0,596(a0)
    1f84:	08079863          	bnez	a5,2014 <fatfs_fat_read_sector+0xcc>
    1f88:	0349a783          	lw	a5,52(s3)
    1f8c:	20942023          	sw	s1,512(s0)
    1f90:	00100613          	li	a2,1
    1f94:	00040593          	mv	a1,s0
    1f98:	00048513          	mv	a0,s1
    1f9c:	000780e7          	jalr	a5
    1fa0:	08051463          	bnez	a0,2028 <fatfs_fat_read_sector+0xe0>
    1fa4:	fff00793          	li	a5,-1
    1fa8:	20f42023          	sw	a5,512(s0)
    1fac:	0480006f          	j	1ff4 <fatfs_fat_read_sector+0xac>
    1fb0:	20092783          	lw	a5,512(s2)
    1fb4:	00f5e663          	bltu	a1,a5,1fc0 <fatfs_fat_read_sector+0x78>
    1fb8:	00178713          	addi	a4,a5,1
    1fbc:	02e5e463          	bltu	a1,a4,1fe4 <fatfs_fat_read_sector+0x9c>
    1fc0:	20c92783          	lw	a5,524(s2)
    1fc4:	00079663          	bnez	a5,1fd0 <fatfs_fat_read_sector+0x88>
    1fc8:	00040a63          	beqz	s0,1fdc <fatfs_fat_read_sector+0x94>
    1fcc:	20042623          	sw	zero,524(s0)
    1fd0:	00090413          	mv	s0,s2
    1fd4:	20c92903          	lw	s2,524(s2)
    1fd8:	f91ff06f          	j	1f68 <fatfs_fat_read_sector+0x20>
    1fdc:	24052a23          	sw	zero,596(a0)
    1fe0:	ff1ff06f          	j	1fd0 <fatfs_fat_read_sector+0x88>
    1fe4:	40f585b3          	sub	a1,a1,a5
    1fe8:	00959593          	slli	a1,a1,0x9
    1fec:	00b905b3          	add	a1,s2,a1
    1ff0:	20b92423          	sw	a1,520(s2)
    1ff4:	01c12083          	lw	ra,28(sp)
    1ff8:	01812403          	lw	s0,24(sp)
    1ffc:	01412483          	lw	s1,20(sp)
    2000:	00c12983          	lw	s3,12(sp)
    2004:	00090513          	mv	a0,s2
    2008:	01012903          	lw	s2,16(sp)
    200c:	02010113          	addi	sp,sp,32
    2010:	00008067          	ret
    2014:	00040593          	mv	a1,s0
    2018:	00000097          	auipc	ra,0x0
    201c:	eac080e7          	jalr	-340(ra) # 1ec4 <fatfs_fat_writeback>
    2020:	f60514e3          	bnez	a0,1f88 <fatfs_fat_read_sector+0x40>
    2024:	fd1ff06f          	j	1ff4 <fatfs_fat_read_sector+0xac>
    2028:	20842423          	sw	s0,520(s0)
    202c:	00040913          	mv	s2,s0
    2030:	fc5ff06f          	j	1ff4 <fatfs_fat_read_sector+0xac>

00002034 <_allocate_file>:
    2034:	000057b7          	lui	a5,0x5
    2038:	75478793          	addi	a5,a5,1876 # 5754 <_free_file_list>
    203c:	0007a583          	lw	a1,0(a5)
    2040:	06058263          	beqz	a1,20a4 <_allocate_file+0x70>
    2044:	0005a703          	lw	a4,0(a1)
    2048:	fe010113          	addi	sp,sp,-32
    204c:	00112e23          	sw	ra,28(sp)
    2050:	0045a683          	lw	a3,4(a1)
    2054:	04071063          	bnez	a4,2094 <_allocate_file+0x60>
    2058:	00d7a023          	sw	a3,0(a5)
    205c:	0045a683          	lw	a3,4(a1)
    2060:	02069e63          	bnez	a3,209c <_allocate_file+0x68>
    2064:	00e7a223          	sw	a4,4(a5)
    2068:	00005537          	lui	a0,0x5
    206c:	75c50513          	addi	a0,a0,1884 # 575c <_open_file_list>
    2070:	00b12623          	sw	a1,12(sp)
    2074:	00000097          	auipc	ra,0x0
    2078:	d48080e7          	jalr	-696(ra) # 1dbc <fat_list_insert_last>
    207c:	00c12583          	lw	a1,12(sp)
    2080:	01c12083          	lw	ra,28(sp)
    2084:	bc458593          	addi	a1,a1,-1084
    2088:	00058513          	mv	a0,a1
    208c:	02010113          	addi	sp,sp,32
    2090:	00008067          	ret
    2094:	00d72223          	sw	a3,4(a4)
    2098:	fc5ff06f          	j	205c <_allocate_file+0x28>
    209c:	00e6a023          	sw	a4,0(a3)
    20a0:	fc9ff06f          	j	2068 <_allocate_file+0x34>
    20a4:	00058513          	mv	a0,a1
    20a8:	00008067          	ret

000020ac <_free_file>:
    20ac:	43c52783          	lw	a5,1084(a0)
    20b0:	44052703          	lw	a4,1088(a0)
    20b4:	43c50593          	addi	a1,a0,1084
    20b8:	02079663          	bnez	a5,20e4 <_free_file+0x38>
    20bc:	000056b7          	lui	a3,0x5
    20c0:	74e6ae23          	sw	a4,1884(a3) # 575c <_open_file_list>
    20c4:	44052703          	lw	a4,1088(a0)
    20c8:	02071263          	bnez	a4,20ec <_free_file+0x40>
    20cc:	00005737          	lui	a4,0x5
    20d0:	76f72023          	sw	a5,1888(a4) # 5760 <_open_file_list+0x4>
    20d4:	00005537          	lui	a0,0x5
    20d8:	75450513          	addi	a0,a0,1876 # 5754 <_free_file_list>
    20dc:	00000317          	auipc	t1,0x0
    20e0:	ce030067          	jr	-800(t1) # 1dbc <fat_list_insert_last>
    20e4:	00e7a223          	sw	a4,4(a5)
    20e8:	fddff06f          	j	20c4 <_free_file+0x18>
    20ec:	00f72023          	sw	a5,0(a4)
    20f0:	fe5ff06f          	j	20d4 <_free_file+0x28>

000020f4 <fatfs_lba_of_cluster>:
    20f4:	ff010113          	addi	sp,sp,-16
    20f8:	00812423          	sw	s0,8(sp)
    20fc:	00112623          	sw	ra,12(sp)
    2100:	00050413          	mv	s0,a0
    2104:	ffe58513          	addi	a0,a1,-2
    2108:	00044583          	lbu	a1,0(s0)
    210c:	00000097          	auipc	ra,0x0
    2110:	c84080e7          	jalr	-892(ra) # 1d90 <__mulsi3>
    2114:	00442783          	lw	a5,4(s0)
    2118:	00f50533          	add	a0,a0,a5
    211c:	03042783          	lw	a5,48(s0)
    2120:	00079863          	bnez	a5,2130 <fatfs_lba_of_cluster+0x3c>
    2124:	02845783          	lhu	a5,40(s0)
    2128:	4047d793          	srai	a5,a5,0x4
    212c:	00f50533          	add	a0,a0,a5
    2130:	00c12083          	lw	ra,12(sp)
    2134:	00812403          	lw	s0,8(sp)
    2138:	01010113          	addi	sp,sp,16
    213c:	00008067          	ret

00002140 <fatfs_sector_read>:
    2140:	03452783          	lw	a5,52(a0)
    2144:	00058713          	mv	a4,a1
    2148:	00070513          	mv	a0,a4
    214c:	00060593          	mv	a1,a2
    2150:	00068613          	mv	a2,a3
    2154:	00078067          	jr	a5

00002158 <fatfs_sector_write>:
    2158:	03852783          	lw	a5,56(a0)
    215c:	00058713          	mv	a4,a1
    2160:	00070513          	mv	a0,a4
    2164:	00060593          	mv	a1,a2
    2168:	00068613          	mv	a2,a3
    216c:	00078067          	jr	a5

00002170 <fatfs_write_sector>:
    2170:	03852703          	lw	a4,56(a0)
    2174:	0a070463          	beqz	a4,221c <fatfs_write_sector+0xac>
    2178:	03052883          	lw	a7,48(a0)
    217c:	00050793          	mv	a5,a0
    2180:	0115e833          	or	a6,a1,a7
    2184:	02081e63          	bnez	a6,21c0 <fatfs_write_sector+0x50>
    2188:	01052583          	lw	a1,16(a0)
    218c:	08b67863          	bgeu	a2,a1,221c <fatfs_write_sector+0xac>
    2190:	01c52503          	lw	a0,28(a0)
    2194:	00c7a583          	lw	a1,12(a5)
    2198:	00b50533          	add	a0,a0,a1
    219c:	00c50533          	add	a0,a0,a2
    21a0:	00068863          	beqz	a3,21b0 <fatfs_write_sector+0x40>
    21a4:	00100613          	li	a2,1
    21a8:	00068593          	mv	a1,a3
    21ac:	00070067          	jr	a4
    21b0:	24a7a223          	sw	a0,580(a5)
    21b4:	00100613          	li	a2,1
    21b8:	04478593          	addi	a1,a5,68
    21bc:	ff1ff06f          	j	21ac <fatfs_write_sector+0x3c>
    21c0:	fe010113          	addi	sp,sp,-32
    21c4:	00e12623          	sw	a4,12(sp)
    21c8:	00d12423          	sw	a3,8(sp)
    21cc:	00c12223          	sw	a2,4(sp)
    21d0:	00112e23          	sw	ra,28(sp)
    21d4:	00a12023          	sw	a0,0(sp)
    21d8:	00000097          	auipc	ra,0x0
    21dc:	f1c080e7          	jalr	-228(ra) # 20f4 <fatfs_lba_of_cluster>
    21e0:	00412603          	lw	a2,4(sp)
    21e4:	00812683          	lw	a3,8(sp)
    21e8:	00012783          	lw	a5,0(sp)
    21ec:	00c12703          	lw	a4,12(sp)
    21f0:	00a60533          	add	a0,a2,a0
    21f4:	00068c63          	beqz	a3,220c <fatfs_write_sector+0x9c>
    21f8:	00100613          	li	a2,1
    21fc:	00068593          	mv	a1,a3
    2200:	01c12083          	lw	ra,28(sp)
    2204:	02010113          	addi	sp,sp,32
    2208:	fa5ff06f          	j	21ac <fatfs_write_sector+0x3c>
    220c:	24a7a223          	sw	a0,580(a5)
    2210:	00100613          	li	a2,1
    2214:	04478593          	addi	a1,a5,68
    2218:	fe9ff06f          	j	2200 <fatfs_write_sector+0x90>
    221c:	00000513          	li	a0,0
    2220:	00008067          	ret

00002224 <fl_init>:
    2224:	ff010113          	addi	sp,sp,-16
    2228:	00005537          	lui	a0,0x5
    222c:	000057b7          	lui	a5,0x5
    2230:	0000c5b7          	lui	a1,0xc
    2234:	00112623          	sw	ra,12(sp)
    2238:	75450513          	addi	a0,a0,1876 # 5754 <_free_file_list>
    223c:	75c78793          	addi	a5,a5,1884 # 575c <_open_file_list>
    2240:	29058593          	addi	a1,a1,656 # c290 <_files+0x43c>
    2244:	00052223          	sw	zero,4(a0)
    2248:	00052023          	sw	zero,0(a0)
    224c:	0007a223          	sw	zero,4(a5)
    2250:	0007a023          	sw	zero,0(a5)
    2254:	00000097          	auipc	ra,0x0
    2258:	b68080e7          	jalr	-1176(ra) # 1dbc <fat_list_insert_last>
    225c:	000057b7          	lui	a5,0x5
    2260:	0000c5b7          	lui	a1,0xc
    2264:	75478513          	addi	a0,a5,1876 # 5754 <_free_file_list>
    2268:	6d458593          	addi	a1,a1,1748 # c6d4 <_files+0x880>
    226c:	00000097          	auipc	ra,0x0
    2270:	b50080e7          	jalr	-1200(ra) # 1dbc <fat_list_insert_last>
    2274:	00c12083          	lw	ra,12(sp)
    2278:	000057b7          	lui	a5,0x5
    227c:	00100713          	li	a4,1
    2280:	76e7a423          	sw	a4,1896(a5) # 5768 <_filelib_init>
    2284:	01010113          	addi	sp,sp,16
    2288:	00008067          	ret

0000228c <fl_closedir>:
    228c:	00000513          	li	a0,0
    2290:	00008067          	ret

00002294 <fatfs_lfn_cache_entry>:
    2294:	0005c783          	lbu	a5,0(a1)
    2298:	01300693          	li	a3,19
    229c:	01f7f793          	andi	a5,a5,31
    22a0:	fff78713          	addi	a4,a5,-1
    22a4:	0ff77613          	zext.b	a2,a4
    22a8:	0ac6ea63          	bltu	a3,a2,235c <fatfs_lfn_cache_entry+0xc8>
    22ac:	10554683          	lbu	a3,261(a0)
    22b0:	00069463          	bnez	a3,22b8 <fatfs_lfn_cache_entry+0x24>
    22b4:	10f502a3          	sb	a5,261(a0)
    22b8:	00171793          	slli	a5,a4,0x1
    22bc:	00e787b3          	add	a5,a5,a4
    22c0:	0015c683          	lbu	a3,1(a1)
    22c4:	00279793          	slli	a5,a5,0x2
    22c8:	00e787b3          	add	a5,a5,a4
    22cc:	00f50533          	add	a0,a0,a5
    22d0:	00d50023          	sb	a3,0(a0)
    22d4:	0035c783          	lbu	a5,3(a1)
    22d8:	0ff00713          	li	a4,255
    22dc:	02000693          	li	a3,32
    22e0:	00f500a3          	sb	a5,1(a0)
    22e4:	0055c783          	lbu	a5,5(a1)
    22e8:	00f50123          	sb	a5,2(a0)
    22ec:	0075c783          	lbu	a5,7(a1)
    22f0:	00f501a3          	sb	a5,3(a0)
    22f4:	0095c783          	lbu	a5,9(a1)
    22f8:	00f50223          	sb	a5,4(a0)
    22fc:	00e5c783          	lbu	a5,14(a1)
    2300:	00f502a3          	sb	a5,5(a0)
    2304:	0105c783          	lbu	a5,16(a1)
    2308:	00f50323          	sb	a5,6(a0)
    230c:	0125c783          	lbu	a5,18(a1)
    2310:	00f503a3          	sb	a5,7(a0)
    2314:	0145c783          	lbu	a5,20(a1)
    2318:	00f50423          	sb	a5,8(a0)
    231c:	0165c783          	lbu	a5,22(a1)
    2320:	00f504a3          	sb	a5,9(a0)
    2324:	0185c783          	lbu	a5,24(a1)
    2328:	00f50523          	sb	a5,10(a0)
    232c:	01c5c783          	lbu	a5,28(a1)
    2330:	00f505a3          	sb	a5,11(a0)
    2334:	01e5c783          	lbu	a5,30(a1)
    2338:	00f50623          	sb	a5,12(a0)
    233c:	00d00793          	li	a5,13
    2340:	00054603          	lbu	a2,0(a0)
    2344:	00e61463          	bne	a2,a4,234c <fatfs_lfn_cache_entry+0xb8>
    2348:	00d50023          	sb	a3,0(a0)
    234c:	fff78793          	addi	a5,a5,-1
    2350:	0ff7f793          	zext.b	a5,a5
    2354:	00150513          	addi	a0,a0,1
    2358:	fe0794e3          	bnez	a5,2340 <fatfs_lfn_cache_entry+0xac>
    235c:	00008067          	ret

00002360 <fatfs_lfn_cache_get>:
    2360:	10554703          	lbu	a4,261(a0)
    2364:	01400793          	li	a5,20
    2368:	00f71663          	bne	a4,a5,2374 <fatfs_lfn_cache_get+0x14>
    236c:	10050223          	sb	zero,260(a0)
    2370:	00008067          	ret
    2374:	02070063          	beqz	a4,2394 <fatfs_lfn_cache_get+0x34>
    2378:	00171793          	slli	a5,a4,0x1
    237c:	00e787b3          	add	a5,a5,a4
    2380:	00279793          	slli	a5,a5,0x2
    2384:	00e787b3          	add	a5,a5,a4
    2388:	00f507b3          	add	a5,a0,a5
    238c:	00078023          	sb	zero,0(a5)
    2390:	00008067          	ret
    2394:	00050023          	sb	zero,0(a0)
    2398:	00008067          	ret

0000239c <fatfs_entry_lfn_text>:
    239c:	00b54503          	lbu	a0,11(a0)
    23a0:	00f57513          	andi	a0,a0,15
    23a4:	ff150513          	addi	a0,a0,-15
    23a8:	00153513          	seqz	a0,a0
    23ac:	00008067          	ret

000023b0 <fatfs_entry_lfn_invalid>:
    23b0:	00054783          	lbu	a5,0(a0)
    23b4:	f1b78713          	addi	a4,a5,-229
    23b8:	02070263          	beqz	a4,23dc <fatfs_entry_lfn_invalid+0x2c>
    23bc:	02078063          	beqz	a5,23dc <fatfs_entry_lfn_invalid+0x2c>
    23c0:	00b54783          	lbu	a5,11(a0)
    23c4:	00800713          	li	a4,8
    23c8:	00100513          	li	a0,1
    23cc:	00e78a63          	beq	a5,a4,23e0 <fatfs_entry_lfn_invalid+0x30>
    23d0:	0067f793          	andi	a5,a5,6
    23d4:	00f03533          	snez	a0,a5
    23d8:	00008067          	ret
    23dc:	00100513          	li	a0,1
    23e0:	00008067          	ret

000023e4 <fatfs_entry_lfn_exists>:
    23e4:	00b5c783          	lbu	a5,11(a1)
    23e8:	00f00713          	li	a4,15
    23ec:	04e78063          	beq	a5,a4,242c <fatfs_entry_lfn_exists+0x48>
    23f0:	0005c683          	lbu	a3,0(a1)
    23f4:	f1b68713          	addi	a4,a3,-229
    23f8:	00e03733          	snez	a4,a4
    23fc:	00d036b3          	snez	a3,a3
    2400:	00d77733          	and	a4,a4,a3
    2404:	02070463          	beqz	a4,242c <fatfs_entry_lfn_exists+0x48>
    2408:	ff878713          	addi	a4,a5,-8
    240c:	02070063          	beqz	a4,242c <fatfs_entry_lfn_exists+0x48>
    2410:	0067f713          	andi	a4,a5,6
    2414:	00000793          	li	a5,0
    2418:	00071663          	bnez	a4,2424 <fatfs_entry_lfn_exists+0x40>
    241c:	10554783          	lbu	a5,261(a0)
    2420:	00f037b3          	snez	a5,a5
    2424:	00078513          	mv	a0,a5
    2428:	00008067          	ret
    242c:	00000793          	li	a5,0
    2430:	ff5ff06f          	j	2424 <fatfs_entry_lfn_exists+0x40>

00002434 <fatfs_entry_sfn_only>:
    2434:	00b54783          	lbu	a5,11(a0)
    2438:	00f00713          	li	a4,15
    243c:	02e78863          	beq	a5,a4,246c <fatfs_entry_sfn_only+0x38>
    2440:	00054683          	lbu	a3,0(a0)
    2444:	f1b68713          	addi	a4,a3,-229
    2448:	00e03733          	snez	a4,a4
    244c:	00d036b3          	snez	a3,a3
    2450:	00d77733          	and	a4,a4,a3
    2454:	00070c63          	beqz	a4,246c <fatfs_entry_sfn_only+0x38>
    2458:	ff878713          	addi	a4,a5,-8
    245c:	00070863          	beqz	a4,246c <fatfs_entry_sfn_only+0x38>
    2460:	0067f513          	andi	a0,a5,6
    2464:	00153513          	seqz	a0,a0
    2468:	00008067          	ret
    246c:	00000513          	li	a0,0
    2470:	00008067          	ret

00002474 <fatfs_entry_is_dir>:
    2474:	00b54503          	lbu	a0,11(a0)
    2478:	00455513          	srli	a0,a0,0x4
    247c:	00157513          	andi	a0,a0,1
    2480:	00008067          	ret

00002484 <fatfs_lfn_entries_required>:
    2484:	ff010113          	addi	sp,sp,-16
    2488:	00112623          	sw	ra,12(sp)
    248c:	fffff097          	auipc	ra,0xfffff
    2490:	1f4080e7          	jalr	500(ra) # 1680 <strlen>
    2494:	00050a63          	beqz	a0,24a8 <fatfs_lfn_entries_required+0x24>
    2498:	00d00593          	li	a1,13
    249c:	00c50513          	addi	a0,a0,12
    24a0:	fffff097          	auipc	ra,0xfffff
    24a4:	0ec080e7          	jalr	236(ra) # 158c <__divsi3>
    24a8:	00c12083          	lw	ra,12(sp)
    24ac:	01010113          	addi	sp,sp,16
    24b0:	00008067          	ret

000024b4 <fatfs_filename_to_lfn>:
    24b4:	f9010113          	addi	sp,sp,-112
    24b8:	06812423          	sw	s0,104(sp)
    24bc:	00058413          	mv	s0,a1
    24c0:	000055b7          	lui	a1,0x5
    24c4:	4fc58593          	addi	a1,a1,1276 # 54fc <font+0x1e0>
    24c8:	06912223          	sw	s1,100(sp)
    24cc:	05312e23          	sw	s3,92(sp)
    24d0:	00060493          	mv	s1,a2
    24d4:	00050993          	mv	s3,a0
    24d8:	03400613          	li	a2,52
    24dc:	01c10513          	addi	a0,sp,28
    24e0:	00d12623          	sw	a3,12(sp)
    24e4:	06112623          	sw	ra,108(sp)
    24e8:	07212023          	sw	s2,96(sp)
    24ec:	05412c23          	sw	s4,88(sp)
    24f0:	fffff097          	auipc	ra,0xfffff
    24f4:	16c080e7          	jalr	364(ra) # 165c <memcpy>
    24f8:	00098513          	mv	a0,s3
    24fc:	fffff097          	auipc	ra,0xfffff
    2500:	184080e7          	jalr	388(ra) # 1680 <strlen>
    2504:	00050913          	mv	s2,a0
    2508:	00098513          	mv	a0,s3
    250c:	00000097          	auipc	ra,0x0
    2510:	f78080e7          	jalr	-136(ra) # 2484 <fatfs_lfn_entries_required>
    2514:	00050a13          	mv	s4,a0
    2518:	02000613          	li	a2,32
    251c:	00000593          	li	a1,0
    2520:	00040513          	mv	a0,s0
    2524:	fffff097          	auipc	ra,0xfffff
    2528:	11c080e7          	jalr	284(ra) # 1640 <memset>
    252c:	fffa0713          	addi	a4,s4,-1 # 3fff <fatfs_set_fs_info_next_free_cluster+0xaf>
    2530:	00c12683          	lw	a3,12(sp)
    2534:	00148793          	addi	a5,s1,1
    2538:	00971463          	bne	a4,s1,2540 <fatfs_filename_to_lfn+0x8c>
    253c:	0407e793          	ori	a5,a5,64
    2540:	00149613          	slli	a2,s1,0x1
    2544:	00960633          	add	a2,a2,s1
    2548:	00f40023          	sb	a5,0(s0)
    254c:	00261613          	slli	a2,a2,0x2
    2550:	00f00793          	li	a5,15
    2554:	00f405a3          	sb	a5,11(s0)
    2558:	00d406a3          	sb	a3,13(s0)
    255c:	01c10793          	addi	a5,sp,28
    2560:	00960633          	add	a2,a2,s1
    2564:	fff00693          	li	a3,-1
    2568:	0007a703          	lw	a4,0(a5)
    256c:	00e40733          	add	a4,s0,a4
    2570:	05265063          	bge	a2,s2,25b0 <fatfs_filename_to_lfn+0xfc>
    2574:	00c985b3          	add	a1,s3,a2
    2578:	0005c583          	lbu	a1,0(a1)
    257c:	00b70023          	sb	a1,0(a4)
    2580:	00478793          	addi	a5,a5,4
    2584:	05010713          	addi	a4,sp,80
    2588:	00160613          	addi	a2,a2,1
    258c:	fce79ee3          	bne	a5,a4,2568 <fatfs_filename_to_lfn+0xb4>
    2590:	06c12083          	lw	ra,108(sp)
    2594:	06812403          	lw	s0,104(sp)
    2598:	06412483          	lw	s1,100(sp)
    259c:	06012903          	lw	s2,96(sp)
    25a0:	05c12983          	lw	s3,92(sp)
    25a4:	05812a03          	lw	s4,88(sp)
    25a8:	07010113          	addi	sp,sp,112
    25ac:	00008067          	ret
    25b0:	01261663          	bne	a2,s2,25bc <fatfs_filename_to_lfn+0x108>
    25b4:	00070023          	sb	zero,0(a4)
    25b8:	fc9ff06f          	j	2580 <fatfs_filename_to_lfn+0xcc>
    25bc:	00d70023          	sb	a3,0(a4)
    25c0:	00d700a3          	sb	a3,1(a4)
    25c4:	fbdff06f          	j	2580 <fatfs_filename_to_lfn+0xcc>

000025c8 <fatfs_sfn_create_entry>:
    25c8:	00000793          	li	a5,0
    25cc:	00b00813          	li	a6,11
    25d0:	00f508b3          	add	a7,a0,a5
    25d4:	0008c303          	lbu	t1,0(a7)
    25d8:	00f688b3          	add	a7,a3,a5
    25dc:	00178793          	addi	a5,a5,1
    25e0:	00688023          	sb	t1,0(a7)
    25e4:	ff0796e3          	bne	a5,a6,25d0 <fatfs_sfn_create_entry+0x8>
    25e8:	00e03733          	snez	a4,a4
    25ec:	40e00733          	neg	a4,a4
    25f0:	02000793          	li	a5,32
    25f4:	ff077713          	andi	a4,a4,-16
    25f8:	00f70733          	add	a4,a4,a5
    25fc:	00f68823          	sb	a5,16(a3)
    2600:	00f68923          	sb	a5,18(a3)
    2604:	00f68c23          	sb	a5,24(a3)
    2608:	01065793          	srli	a5,a2,0x10
    260c:	00f68a23          	sb	a5,20(a3)
    2610:	01865793          	srli	a5,a2,0x18
    2614:	00f68aa3          	sb	a5,21(a3)
    2618:	0085d793          	srli	a5,a1,0x8
    261c:	00c68d23          	sb	a2,26(a3)
    2620:	00b68e23          	sb	a1,28(a3)
    2624:	00865613          	srli	a2,a2,0x8
    2628:	00f68ea3          	sb	a5,29(a3)
    262c:	0105d793          	srli	a5,a1,0x10
    2630:	0185d593          	srli	a1,a1,0x18
    2634:	000686a3          	sb	zero,13(a3)
    2638:	00068723          	sb	zero,14(a3)
    263c:	000687a3          	sb	zero,15(a3)
    2640:	000688a3          	sb	zero,17(a3)
    2644:	000689a3          	sb	zero,19(a3)
    2648:	00068b23          	sb	zero,22(a3)
    264c:	00068ba3          	sb	zero,23(a3)
    2650:	00068ca3          	sb	zero,25(a3)
    2654:	00e685a3          	sb	a4,11(a3)
    2658:	00068623          	sb	zero,12(a3)
    265c:	00c68da3          	sb	a2,27(a3)
    2660:	00f68f23          	sb	a5,30(a3)
    2664:	00b68fa3          	sb	a1,31(a3)
    2668:	00008067          	ret

0000266c <fatfs_lfn_create_sfn>:
    266c:	fd010113          	addi	sp,sp,-48
    2670:	02912223          	sw	s1,36(sp)
    2674:	00050493          	mv	s1,a0
    2678:	00058513          	mv	a0,a1
    267c:	02812423          	sw	s0,40(sp)
    2680:	01312e23          	sw	s3,28(sp)
    2684:	00058413          	mv	s0,a1
    2688:	02112623          	sw	ra,44(sp)
    268c:	03212023          	sw	s2,32(sp)
    2690:	fffff097          	auipc	ra,0xfffff
    2694:	ff0080e7          	jalr	-16(ra) # 1680 <strlen>
    2698:	00044783          	lbu	a5,0(s0)
    269c:	02e00993          	li	s3,46
    26a0:	15378063          	beq	a5,s3,27e0 <fatfs_lfn_create_sfn+0x174>
    26a4:	00b00613          	li	a2,11
    26a8:	02000593          	li	a1,32
    26ac:	00050913          	mv	s2,a0
    26b0:	00048513          	mv	a0,s1
    26b4:	fffff097          	auipc	ra,0xfffff
    26b8:	f8c080e7          	jalr	-116(ra) # 1640 <memset>
    26bc:	00300613          	li	a2,3
    26c0:	02000593          	li	a1,32
    26c4:	00c10513          	addi	a0,sp,12
    26c8:	fffff097          	auipc	ra,0xfffff
    26cc:	f78080e7          	jalr	-136(ra) # 1640 <memset>
    26d0:	fff00793          	li	a5,-1
    26d4:	00000713          	li	a4,0
    26d8:	0d274263          	blt	a4,s2,279c <fatfs_lfn_create_sfn+0x130>
    26dc:	fff00713          	li	a4,-1
    26e0:	0ee78863          	beq	a5,a4,27d0 <fatfs_lfn_create_sfn+0x164>
    26e4:	00178713          	addi	a4,a5,1
    26e8:	00c10693          	addi	a3,sp,12
    26ec:	00478613          	addi	a2,a5,4
    26f0:	0ce61263          	bne	a2,a4,27b4 <fatfs_lfn_create_sfn+0x148>
    26f4:	00000613          	li	a2,0
    26f8:	00000693          	li	a3,0
    26fc:	01900813          	li	a6,25
    2700:	00800893          	li	a7,8
    2704:	02f6de63          	bge	a3,a5,2740 <fatfs_lfn_create_sfn+0xd4>
    2708:	00d40733          	add	a4,s0,a3
    270c:	00074703          	lbu	a4,0(a4)
    2710:	fe070513          	addi	a0,a4,-32
    2714:	0c050263          	beqz	a0,27d8 <fatfs_lfn_create_sfn+0x16c>
    2718:	fd270593          	addi	a1,a4,-46
    271c:	0a058e63          	beqz	a1,27d8 <fatfs_lfn_create_sfn+0x16c>
    2720:	f9f70593          	addi	a1,a4,-97
    2724:	0ff5f593          	zext.b	a1,a1
    2728:	00c48333          	add	t1,s1,a2
    272c:	00160613          	addi	a2,a2,1
    2730:	00b86463          	bltu	a6,a1,2738 <fatfs_lfn_create_sfn+0xcc>
    2734:	0ff57713          	zext.b	a4,a0
    2738:	00e30023          	sb	a4,0(t1)
    273c:	09161e63          	bne	a2,a7,27d8 <fatfs_lfn_create_sfn+0x16c>
    2740:	00c10793          	addi	a5,sp,12
    2744:	00800693          	li	a3,8
    2748:	01900513          	li	a0,25
    274c:	00b00593          	li	a1,11
    2750:	0007c703          	lbu	a4,0(a5)
    2754:	f9f70613          	addi	a2,a4,-97
    2758:	0ff67613          	zext.b	a2,a2
    275c:	00c56663          	bltu	a0,a2,2768 <fatfs_lfn_create_sfn+0xfc>
    2760:	fe070713          	addi	a4,a4,-32
    2764:	0ff77713          	zext.b	a4,a4
    2768:	00d48633          	add	a2,s1,a3
    276c:	00e60023          	sb	a4,0(a2)
    2770:	00168693          	addi	a3,a3,1
    2774:	00178793          	addi	a5,a5,1
    2778:	fcb69ce3          	bne	a3,a1,2750 <fatfs_lfn_create_sfn+0xe4>
    277c:	00100513          	li	a0,1
    2780:	02c12083          	lw	ra,44(sp)
    2784:	02812403          	lw	s0,40(sp)
    2788:	02412483          	lw	s1,36(sp)
    278c:	02012903          	lw	s2,32(sp)
    2790:	01c12983          	lw	s3,28(sp)
    2794:	03010113          	addi	sp,sp,48
    2798:	00008067          	ret
    279c:	00e406b3          	add	a3,s0,a4
    27a0:	0006c683          	lbu	a3,0(a3)
    27a4:	01369463          	bne	a3,s3,27ac <fatfs_lfn_create_sfn+0x140>
    27a8:	00070793          	mv	a5,a4
    27ac:	00170713          	addi	a4,a4,1
    27b0:	f29ff06f          	j	26d8 <fatfs_lfn_create_sfn+0x6c>
    27b4:	01275863          	bge	a4,s2,27c4 <fatfs_lfn_create_sfn+0x158>
    27b8:	00e405b3          	add	a1,s0,a4
    27bc:	0005c583          	lbu	a1,0(a1)
    27c0:	00b68023          	sb	a1,0(a3)
    27c4:	00170713          	addi	a4,a4,1
    27c8:	00168693          	addi	a3,a3,1
    27cc:	f25ff06f          	j	26f0 <fatfs_lfn_create_sfn+0x84>
    27d0:	00090793          	mv	a5,s2
    27d4:	f21ff06f          	j	26f4 <fatfs_lfn_create_sfn+0x88>
    27d8:	00168693          	addi	a3,a3,1
    27dc:	f29ff06f          	j	2704 <fatfs_lfn_create_sfn+0x98>
    27e0:	00000513          	li	a0,0
    27e4:	f9dff06f          	j	2780 <fatfs_lfn_create_sfn+0x114>

000027e8 <fatfs_lfn_generate_tail>:
    27e8:	000187b7          	lui	a5,0x18
    27ec:	69f78793          	addi	a5,a5,1695 # 1869f <__stacktop+0x869f>
    27f0:	16c7e463          	bltu	a5,a2,2958 <fatfs_lfn_generate_tail+0x170>
    27f4:	fa010113          	addi	sp,sp,-96
    27f8:	04812c23          	sw	s0,88(sp)
    27fc:	04912a23          	sw	s1,84(sp)
    2800:	03712e23          	sw	s7,60(sp)
    2804:	00060413          	mv	s0,a2
    2808:	00058b93          	mv	s7,a1
    280c:	00c00613          	li	a2,12
    2810:	00000593          	li	a1,0
    2814:	00050493          	mv	s1,a0
    2818:	00410513          	addi	a0,sp,4
    281c:	04112e23          	sw	ra,92(sp)
    2820:	05312623          	sw	s3,76(sp)
    2824:	05412423          	sw	s4,72(sp)
    2828:	05612023          	sw	s6,64(sp)
    282c:	05212823          	sw	s2,80(sp)
    2830:	05512223          	sw	s5,68(sp)
    2834:	fffff097          	auipc	ra,0xfffff
    2838:	e0c080e7          	jalr	-500(ra) # 1640 <memset>
    283c:	000055b7          	lui	a1,0x5
    2840:	07e00793          	li	a5,126
    2844:	01100613          	li	a2,17
    2848:	2d458593          	addi	a1,a1,724 # 52d4 <LEDS+0x1a8>
    284c:	01c10513          	addi	a0,sp,28
    2850:	01010993          	addi	s3,sp,16
    2854:	00f10223          	sb	a5,4(sp)
    2858:	00098a13          	mv	s4,s3
    285c:	fffff097          	auipc	ra,0xfffff
    2860:	e00080e7          	jalr	-512(ra) # 165c <memcpy>
    2864:	00900b13          	li	s6,9
    2868:	00a00593          	li	a1,10
    286c:	00040513          	mv	a0,s0
    2870:	fffff097          	auipc	ra,0xfffff
    2874:	d6c080e7          	jalr	-660(ra) # 15dc <__umodsi3>
    2878:	03050793          	addi	a5,a0,48
    287c:	00278533          	add	a0,a5,sp
    2880:	fec54783          	lbu	a5,-20(a0)
    2884:	00098913          	mv	s2,s3
    2888:	00040513          	mv	a0,s0
    288c:	00a00593          	li	a1,10
    2890:	00f98023          	sb	a5,0(s3)
    2894:	00040a93          	mv	s5,s0
    2898:	fffff097          	auipc	ra,0xfffff
    289c:	cfc080e7          	jalr	-772(ra) # 1594 <__udivsi3>
    28a0:	00198993          	addi	s3,s3,1
    28a4:	00050413          	mv	s0,a0
    28a8:	fd5b60e3          	bltu	s6,s5,2868 <fatfs_lfn_generate_tail+0x80>
    28ac:	00098023          	sb	zero,0(s3)
    28b0:	00410713          	addi	a4,sp,4
    28b4:	00090793          	mv	a5,s2
    28b8:	0947f663          	bgeu	a5,s4,2944 <fatfs_lfn_generate_tail+0x15c>
    28bc:	00f10713          	addi	a4,sp,15
    28c0:	00000793          	li	a5,0
    28c4:	00e96663          	bltu	s2,a4,28d0 <fatfs_lfn_generate_tail+0xe8>
    28c8:	41490933          	sub	s2,s2,s4
    28cc:	00190793          	addi	a5,s2,1
    28d0:	03078793          	addi	a5,a5,48
    28d4:	002787b3          	add	a5,a5,sp
    28d8:	000b8593          	mv	a1,s7
    28dc:	fc078aa3          	sb	zero,-43(a5)
    28e0:	00b00613          	li	a2,11
    28e4:	00048513          	mv	a0,s1
    28e8:	fffff097          	auipc	ra,0xfffff
    28ec:	d74080e7          	jalr	-652(ra) # 165c <memcpy>
    28f0:	00410513          	addi	a0,sp,4
    28f4:	fffff097          	auipc	ra,0xfffff
    28f8:	d8c080e7          	jalr	-628(ra) # 1680 <strlen>
    28fc:	40a484b3          	sub	s1,s1,a0
    2900:	00050613          	mv	a2,a0
    2904:	00410593          	addi	a1,sp,4
    2908:	00848513          	addi	a0,s1,8
    290c:	fffff097          	auipc	ra,0xfffff
    2910:	d50080e7          	jalr	-688(ra) # 165c <memcpy>
    2914:	05c12083          	lw	ra,92(sp)
    2918:	05812403          	lw	s0,88(sp)
    291c:	05412483          	lw	s1,84(sp)
    2920:	05012903          	lw	s2,80(sp)
    2924:	04c12983          	lw	s3,76(sp)
    2928:	04812a03          	lw	s4,72(sp)
    292c:	04412a83          	lw	s5,68(sp)
    2930:	04012b03          	lw	s6,64(sp)
    2934:	03c12b83          	lw	s7,60(sp)
    2938:	00100513          	li	a0,1
    293c:	06010113          	addi	sp,sp,96
    2940:	00008067          	ret
    2944:	0007c683          	lbu	a3,0(a5)
    2948:	00170713          	addi	a4,a4,1
    294c:	fff78793          	addi	a5,a5,-1
    2950:	00d70023          	sb	a3,0(a4)
    2954:	f65ff06f          	j	28b8 <fatfs_lfn_generate_tail+0xd0>
    2958:	00000513          	li	a0,0
    295c:	00008067          	ret

00002960 <fatfs_total_path_levels>:
    2960:	fff00793          	li	a5,-1
    2964:	06050263          	beqz	a0,29c8 <fatfs_total_path_levels+0x68>
    2968:	00054703          	lbu	a4,0(a0)
    296c:	02f00793          	li	a5,47
    2970:	00f71863          	bne	a4,a5,2980 <fatfs_total_path_levels+0x20>
    2974:	00150513          	addi	a0,a0,1
    2978:	00000793          	li	a5,0
    297c:	0400006f          	j	29bc <fatfs_total_path_levels+0x5c>
    2980:	00154703          	lbu	a4,1(a0)
    2984:	03a00793          	li	a5,58
    2988:	00f70a63          	beq	a4,a5,299c <fatfs_total_path_levels+0x3c>
    298c:	00254683          	lbu	a3,2(a0)
    2990:	05c00713          	li	a4,92
    2994:	fff00793          	li	a5,-1
    2998:	02e69863          	bne	a3,a4,29c8 <fatfs_total_path_levels+0x68>
    299c:	00350513          	addi	a0,a0,3
    29a0:	05c00713          	li	a4,92
    29a4:	fd5ff06f          	j	2978 <fatfs_total_path_levels+0x18>
    29a8:	00150513          	addi	a0,a0,1
    29ac:	00e68663          	beq	a3,a4,29b8 <fatfs_total_path_levels+0x58>
    29b0:	00054683          	lbu	a3,0(a0)
    29b4:	fe069ae3          	bnez	a3,29a8 <fatfs_total_path_levels+0x48>
    29b8:	00178793          	addi	a5,a5,1
    29bc:	00054683          	lbu	a3,0(a0)
    29c0:	fe0698e3          	bnez	a3,29b0 <fatfs_total_path_levels+0x50>
    29c4:	fff78793          	addi	a5,a5,-1
    29c8:	00078513          	mv	a0,a5
    29cc:	00008067          	ret

000029d0 <fatfs_get_substring>:
    29d0:	0cd05e63          	blez	a3,2aac <fatfs_get_substring+0xdc>
    29d4:	0c050c63          	beqz	a0,2aac <fatfs_get_substring+0xdc>
    29d8:	fe010113          	addi	sp,sp,-32
    29dc:	00812c23          	sw	s0,24(sp)
    29e0:	00112e23          	sw	ra,28(sp)
    29e4:	00912a23          	sw	s1,20(sp)
    29e8:	00054483          	lbu	s1,0(a0)
    29ec:	02f00793          	li	a5,47
    29f0:	00150413          	addi	s0,a0,1
    29f4:	02f48463          	beq	s1,a5,2a1c <fatfs_get_substring+0x4c>
    29f8:	00154703          	lbu	a4,1(a0)
    29fc:	03a00793          	li	a5,58
    2a00:	00f70a63          	beq	a4,a5,2a14 <fatfs_get_substring+0x44>
    2a04:	00254803          	lbu	a6,2(a0)
    2a08:	05c00713          	li	a4,92
    2a0c:	fff00793          	li	a5,-1
    2a10:	04e81c63          	bne	a6,a4,2a68 <fatfs_get_substring+0x98>
    2a14:	00350413          	addi	s0,a0,3
    2a18:	05c00493          	li	s1,92
    2a1c:	00040513          	mv	a0,s0
    2a20:	00d12623          	sw	a3,12(sp)
    2a24:	00c12423          	sw	a2,8(sp)
    2a28:	00b12223          	sw	a1,4(sp)
    2a2c:	fffff097          	auipc	ra,0xfffff
    2a30:	c54080e7          	jalr	-940(ra) # 1680 <strlen>
    2a34:	00c12683          	lw	a3,12(sp)
    2a38:	00412583          	lw	a1,4(sp)
    2a3c:	00812603          	lw	a2,8(sp)
    2a40:	00000713          	li	a4,0
    2a44:	00000813          	li	a6,0
    2a48:	00000793          	li	a5,0
    2a4c:	fff68693          	addi	a3,a3,-1
    2a50:	00e608b3          	add	a7,a2,a4
    2a54:	02a7c663          	blt	a5,a0,2a80 <fatfs_get_substring+0xb0>
    2a58:	00088023          	sb	zero,0(a7)
    2a5c:	00064783          	lbu	a5,0(a2)
    2a60:	0017b793          	seqz	a5,a5
    2a64:	40f007b3          	neg	a5,a5
    2a68:	01c12083          	lw	ra,28(sp)
    2a6c:	01812403          	lw	s0,24(sp)
    2a70:	01412483          	lw	s1,20(sp)
    2a74:	00078513          	mv	a0,a5
    2a78:	02010113          	addi	sp,sp,32
    2a7c:	00008067          	ret
    2a80:	00f40333          	add	t1,s0,a5
    2a84:	00034303          	lbu	t1,0(t1)
    2a88:	00931863          	bne	t1,s1,2a98 <fatfs_get_substring+0xc8>
    2a8c:	00180813          	addi	a6,a6,1
    2a90:	00178793          	addi	a5,a5,1
    2a94:	fbdff06f          	j	2a50 <fatfs_get_substring+0x80>
    2a98:	feb81ce3          	bne	a6,a1,2a90 <fatfs_get_substring+0xc0>
    2a9c:	fed75ae3          	bge	a4,a3,2a90 <fatfs_get_substring+0xc0>
    2aa0:	00170713          	addi	a4,a4,1
    2aa4:	00688023          	sb	t1,0(a7)
    2aa8:	fe9ff06f          	j	2a90 <fatfs_get_substring+0xc0>
    2aac:	fff00793          	li	a5,-1
    2ab0:	00078513          	mv	a0,a5
    2ab4:	00008067          	ret

00002ab8 <fatfs_split_path>:
    2ab8:	fd010113          	addi	sp,sp,-48
    2abc:	02912223          	sw	s1,36(sp)
    2ac0:	03212023          	sw	s2,32(sp)
    2ac4:	01312e23          	sw	s3,28(sp)
    2ac8:	01412c23          	sw	s4,24(sp)
    2acc:	02112623          	sw	ra,44(sp)
    2ad0:	02812423          	sw	s0,40(sp)
    2ad4:	01512a23          	sw	s5,20(sp)
    2ad8:	00050993          	mv	s3,a0
    2adc:	00058493          	mv	s1,a1
    2ae0:	00060913          	mv	s2,a2
    2ae4:	00068a13          	mv	s4,a3
    2ae8:	00e12623          	sw	a4,12(sp)
    2aec:	00000097          	auipc	ra,0x0
    2af0:	e74080e7          	jalr	-396(ra) # 2960 <fatfs_total_path_levels>
    2af4:	fff00793          	li	a5,-1
    2af8:	02f51863          	bne	a0,a5,2b28 <fatfs_split_path+0x70>
    2afc:	fff00413          	li	s0,-1
    2b00:	02c12083          	lw	ra,44(sp)
    2b04:	00040513          	mv	a0,s0
    2b08:	02812403          	lw	s0,40(sp)
    2b0c:	02412483          	lw	s1,36(sp)
    2b10:	02012903          	lw	s2,32(sp)
    2b14:	01c12983          	lw	s3,28(sp)
    2b18:	01812a03          	lw	s4,24(sp)
    2b1c:	01412a83          	lw	s5,20(sp)
    2b20:	03010113          	addi	sp,sp,48
    2b24:	00008067          	ret
    2b28:	00c12683          	lw	a3,12(sp)
    2b2c:	00050593          	mv	a1,a0
    2b30:	00a12623          	sw	a0,12(sp)
    2b34:	000a0613          	mv	a2,s4
    2b38:	00098513          	mv	a0,s3
    2b3c:	00000097          	auipc	ra,0x0
    2b40:	e94080e7          	jalr	-364(ra) # 29d0 <fatfs_get_substring>
    2b44:	00050413          	mv	s0,a0
    2b48:	fa051ae3          	bnez	a0,2afc <fatfs_split_path+0x44>
    2b4c:	00c12583          	lw	a1,12(sp)
    2b50:	00059663          	bnez	a1,2b5c <fatfs_split_path+0xa4>
    2b54:	00048023          	sb	zero,0(s1)
    2b58:	fa9ff06f          	j	2b00 <fatfs_split_path+0x48>
    2b5c:	00098513          	mv	a0,s3
    2b60:	fffff097          	auipc	ra,0xfffff
    2b64:	b20080e7          	jalr	-1248(ra) # 1680 <strlen>
    2b68:	00050a93          	mv	s5,a0
    2b6c:	000a0513          	mv	a0,s4
    2b70:	fffff097          	auipc	ra,0xfffff
    2b74:	b10080e7          	jalr	-1264(ra) # 1680 <strlen>
    2b78:	40aa8633          	sub	a2,s5,a0
    2b7c:	00c95463          	bge	s2,a2,2b84 <fatfs_split_path+0xcc>
    2b80:	00090613          	mv	a2,s2
    2b84:	00048513          	mv	a0,s1
    2b88:	00098593          	mv	a1,s3
    2b8c:	00c12623          	sw	a2,12(sp)
    2b90:	fffff097          	auipc	ra,0xfffff
    2b94:	acc080e7          	jalr	-1332(ra) # 165c <memcpy>
    2b98:	00c12603          	lw	a2,12(sp)
    2b9c:	00c484b3          	add	s1,s1,a2
    2ba0:	fe048fa3          	sb	zero,-1(s1)
    2ba4:	f5dff06f          	j	2b00 <fatfs_split_path+0x48>

00002ba8 <fatfs_compare_names>:
    2ba8:	fd010113          	addi	sp,sp,-48
    2bac:	02112623          	sw	ra,44(sp)
    2bb0:	03212023          	sw	s2,32(sp)
    2bb4:	01312e23          	sw	s3,28(sp)
    2bb8:	01412c23          	sw	s4,24(sp)
    2bbc:	01512a23          	sw	s5,20(sp)
    2bc0:	00058a13          	mv	s4,a1
    2bc4:	02812423          	sw	s0,40(sp)
    2bc8:	02912223          	sw	s1,36(sp)
    2bcc:	01612823          	sw	s6,16(sp)
    2bd0:	01712623          	sw	s7,12(sp)
    2bd4:	01812423          	sw	s8,8(sp)
    2bd8:	00050a93          	mv	s5,a0
    2bdc:	fffff097          	auipc	ra,0xfffff
    2be0:	2bc080e7          	jalr	700(ra) # 1e98 <FileString_GetExtension>
    2be4:	00050993          	mv	s3,a0
    2be8:	000a0513          	mv	a0,s4
    2bec:	fffff097          	auipc	ra,0xfffff
    2bf0:	2ac080e7          	jalr	684(ra) # 1e98 <FileString_GetExtension>
    2bf4:	fff00793          	li	a5,-1
    2bf8:	00050913          	mv	s2,a0
    2bfc:	02f99e63          	bne	s3,a5,2c38 <fatfs_compare_names+0x90>
    2c00:	0f350063          	beq	a0,s3,2ce0 <fatfs_compare_names+0x138>
    2c04:	00000513          	li	a0,0
    2c08:	02c12083          	lw	ra,44(sp)
    2c0c:	02812403          	lw	s0,40(sp)
    2c10:	02412483          	lw	s1,36(sp)
    2c14:	02012903          	lw	s2,32(sp)
    2c18:	01c12983          	lw	s3,28(sp)
    2c1c:	01812a03          	lw	s4,24(sp)
    2c20:	01412a83          	lw	s5,20(sp)
    2c24:	01012b03          	lw	s6,16(sp)
    2c28:	00c12b83          	lw	s7,12(sp)
    2c2c:	00812c03          	lw	s8,8(sp)
    2c30:	03010113          	addi	sp,sp,48
    2c34:	00008067          	ret
    2c38:	fcf506e3          	beq	a0,a5,2c04 <fatfs_compare_names+0x5c>
    2c3c:	00198793          	addi	a5,s3,1
    2c40:	00fa8b33          	add	s6,s5,a5
    2c44:	00050413          	mv	s0,a0
    2c48:	00150793          	addi	a5,a0,1
    2c4c:	000b0513          	mv	a0,s6
    2c50:	00fa0bb3          	add	s7,s4,a5
    2c54:	fffff097          	auipc	ra,0xfffff
    2c58:	a2c080e7          	jalr	-1492(ra) # 1680 <strlen>
    2c5c:	00050c13          	mv	s8,a0
    2c60:	000b8513          	mv	a0,s7
    2c64:	00098493          	mv	s1,s3
    2c68:	fffff097          	auipc	ra,0xfffff
    2c6c:	a18080e7          	jalr	-1512(ra) # 1680 <strlen>
    2c70:	f8ac1ae3          	bne	s8,a0,2c04 <fatfs_compare_names+0x5c>
    2c74:	000b0513          	mv	a0,s6
    2c78:	fffff097          	auipc	ra,0xfffff
    2c7c:	a08080e7          	jalr	-1528(ra) # 1680 <strlen>
    2c80:	00050613          	mv	a2,a0
    2c84:	000b8593          	mv	a1,s7
    2c88:	000b0513          	mv	a0,s6
    2c8c:	fffff097          	auipc	ra,0xfffff
    2c90:	19c080e7          	jalr	412(ra) # 1e28 <FileString_StrCmpNoCase>
    2c94:	f60518e3          	bnez	a0,2c04 <fatfs_compare_names+0x5c>
    2c98:	fff48793          	addi	a5,s1,-1
    2c9c:	00fa87b3          	add	a5,s5,a5
    2ca0:	41378733          	sub	a4,a5,s3
    2ca4:	02000693          	li	a3,32
    2ca8:	06e79263          	bne	a5,a4,2d0c <fatfs_compare_names+0x164>
    2cac:	fff40793          	addi	a5,s0,-1
    2cb0:	00fa07b3          	add	a5,s4,a5
    2cb4:	41278733          	sub	a4,a5,s2
    2cb8:	02000693          	li	a3,32
    2cbc:	06e79263          	bne	a5,a4,2d20 <fatfs_compare_names+0x178>
    2cc0:	f53912e3          	bne	s2,s3,2c04 <fatfs_compare_names+0x5c>
    2cc4:	00090613          	mv	a2,s2
    2cc8:	000a0593          	mv	a1,s4
    2ccc:	000a8513          	mv	a0,s5
    2cd0:	fffff097          	auipc	ra,0xfffff
    2cd4:	158080e7          	jalr	344(ra) # 1e28 <FileString_StrCmpNoCase>
    2cd8:	00153513          	seqz	a0,a0
    2cdc:	f2dff06f          	j	2c08 <fatfs_compare_names+0x60>
    2ce0:	000a8513          	mv	a0,s5
    2ce4:	fffff097          	auipc	ra,0xfffff
    2ce8:	99c080e7          	jalr	-1636(ra) # 1680 <strlen>
    2cec:	00050493          	mv	s1,a0
    2cf0:	00050993          	mv	s3,a0
    2cf4:	000a0513          	mv	a0,s4
    2cf8:	fffff097          	auipc	ra,0xfffff
    2cfc:	988080e7          	jalr	-1656(ra) # 1680 <strlen>
    2d00:	00050413          	mv	s0,a0
    2d04:	00050913          	mv	s2,a0
    2d08:	f91ff06f          	j	2c98 <fatfs_compare_names+0xf0>
    2d0c:	0007c603          	lbu	a2,0(a5)
    2d10:	f8d61ee3          	bne	a2,a3,2cac <fatfs_compare_names+0x104>
    2d14:	415789b3          	sub	s3,a5,s5
    2d18:	fff78793          	addi	a5,a5,-1
    2d1c:	f8dff06f          	j	2ca8 <fatfs_compare_names+0x100>
    2d20:	0007c603          	lbu	a2,0(a5)
    2d24:	f8d61ee3          	bne	a2,a3,2cc0 <fatfs_compare_names+0x118>
    2d28:	41478933          	sub	s2,a5,s4
    2d2c:	fff78793          	addi	a5,a5,-1
    2d30:	f8dff06f          	j	2cbc <fatfs_compare_names+0x114>

00002d34 <_check_file_open>:
    2d34:	fe010113          	addi	sp,sp,-32
    2d38:	000057b7          	lui	a5,0x5
    2d3c:	00812c23          	sw	s0,24(sp)
    2d40:	75c7a403          	lw	s0,1884(a5) # 575c <_open_file_list>
    2d44:	00912a23          	sw	s1,20(sp)
    2d48:	00112e23          	sw	ra,28(sp)
    2d4c:	01212823          	sw	s2,16(sp)
    2d50:	01312623          	sw	s3,12(sp)
    2d54:	00050493          	mv	s1,a0
    2d58:	00041663          	bnez	s0,2d64 <_check_file_open+0x30>
    2d5c:	00000513          	li	a0,0
    2d60:	03c0006f          	j	2d9c <_check_file_open+0x68>
    2d64:	bc440793          	addi	a5,s0,-1084
    2d68:	00f49663          	bne	s1,a5,2d74 <_check_file_open+0x40>
    2d6c:	00442403          	lw	s0,4(s0)
    2d70:	fe9ff06f          	j	2d58 <_check_file_open+0x24>
    2d74:	01448593          	addi	a1,s1,20
    2d78:	bd840513          	addi	a0,s0,-1064
    2d7c:	00000097          	auipc	ra,0x0
    2d80:	e2c080e7          	jalr	-468(ra) # 2ba8 <fatfs_compare_names>
    2d84:	fe0504e3          	beqz	a0,2d6c <_check_file_open+0x38>
    2d88:	11848593          	addi	a1,s1,280
    2d8c:	cdc40513          	addi	a0,s0,-804
    2d90:	00000097          	auipc	ra,0x0
    2d94:	e18080e7          	jalr	-488(ra) # 2ba8 <fatfs_compare_names>
    2d98:	fc050ae3          	beqz	a0,2d6c <_check_file_open+0x38>
    2d9c:	01c12083          	lw	ra,28(sp)
    2da0:	01812403          	lw	s0,24(sp)
    2da4:	01412483          	lw	s1,20(sp)
    2da8:	01012903          	lw	s2,16(sp)
    2dac:	00c12983          	lw	s3,12(sp)
    2db0:	02010113          	addi	sp,sp,32
    2db4:	00008067          	ret

00002db8 <fatfs_get_sfn_display_name>:
    2db8:	00000713          	li	a4,0
    2dbc:	02000613          	li	a2,32
    2dc0:	01900813          	li	a6,25
    2dc4:	0005c783          	lbu	a5,0(a1)
    2dc8:	00078663          	beqz	a5,2dd4 <fatfs_get_sfn_display_name+0x1c>
    2dcc:	ff470693          	addi	a3,a4,-12
    2dd0:	00069863          	bnez	a3,2de0 <fatfs_get_sfn_display_name+0x28>
    2dd4:	00050023          	sb	zero,0(a0)
    2dd8:	00100513          	li	a0,1
    2ddc:	00008067          	ret
    2de0:	00158593          	addi	a1,a1,1
    2de4:	fec780e3          	beq	a5,a2,2dc4 <fatfs_get_sfn_display_name+0xc>
    2de8:	fbf78693          	addi	a3,a5,-65
    2dec:	0ff6f693          	zext.b	a3,a3
    2df0:	00d86663          	bltu	a6,a3,2dfc <fatfs_get_sfn_display_name+0x44>
    2df4:	02078793          	addi	a5,a5,32
    2df8:	0ff7f793          	zext.b	a5,a5
    2dfc:	00f50023          	sb	a5,0(a0)
    2e00:	00170713          	addi	a4,a4,1
    2e04:	00150513          	addi	a0,a0,1
    2e08:	fbdff06f          	j	2dc4 <fatfs_get_sfn_display_name+0xc>

00002e0c <fatfs_fat_init>:
    2e0c:	ff010113          	addi	sp,sp,-16
    2e10:	00812423          	sw	s0,8(sp)
    2e14:	00912223          	sw	s1,4(sp)
    2e18:	00112623          	sw	ra,12(sp)
    2e1c:	fff00793          	li	a5,-1
    2e20:	25850493          	addi	s1,a0,600
    2e24:	00050413          	mv	s0,a0
    2e28:	44f52c23          	sw	a5,1112(a0)
    2e2c:	24052a23          	sw	zero,596(a0)
    2e30:	44052e23          	sw	zero,1116(a0)
    2e34:	20000613          	li	a2,512
    2e38:	00048513          	mv	a0,s1
    2e3c:	00000593          	li	a1,0
    2e40:	fffff097          	auipc	ra,0xfffff
    2e44:	800080e7          	jalr	-2048(ra) # 1640 <memset>
    2e48:	25442783          	lw	a5,596(s0)
    2e4c:	00c12083          	lw	ra,12(sp)
    2e50:	24942a23          	sw	s1,596(s0)
    2e54:	46042023          	sw	zero,1120(s0)
    2e58:	46f42223          	sw	a5,1124(s0)
    2e5c:	00812403          	lw	s0,8(sp)
    2e60:	00412483          	lw	s1,4(sp)
    2e64:	01010113          	addi	sp,sp,16
    2e68:	00008067          	ret

00002e6c <fatfs_init>:
    2e6c:	fd010113          	addi	sp,sp,-48
    2e70:	02812423          	sw	s0,40(sp)
    2e74:	02112623          	sw	ra,44(sp)
    2e78:	02912223          	sw	s1,36(sp)
    2e7c:	03212023          	sw	s2,32(sp)
    2e80:	01312e23          	sw	s3,28(sp)
    2e84:	fff00793          	li	a5,-1
    2e88:	24f52223          	sw	a5,580(a0)
    2e8c:	24052423          	sw	zero,584(a0)
    2e90:	02052223          	sw	zero,36(a0)
    2e94:	00050413          	mv	s0,a0
    2e98:	00000097          	auipc	ra,0x0
    2e9c:	f74080e7          	jalr	-140(ra) # 2e0c <fatfs_fat_init>
    2ea0:	03442783          	lw	a5,52(s0)
    2ea4:	02079463          	bnez	a5,2ecc <fatfs_init+0x60>
    2ea8:	fff00713          	li	a4,-1
    2eac:	02c12083          	lw	ra,44(sp)
    2eb0:	02812403          	lw	s0,40(sp)
    2eb4:	02412483          	lw	s1,36(sp)
    2eb8:	02012903          	lw	s2,32(sp)
    2ebc:	01c12983          	lw	s3,28(sp)
    2ec0:	00070513          	mv	a0,a4
    2ec4:	03010113          	addi	sp,sp,48
    2ec8:	00008067          	ret
    2ecc:	04440593          	addi	a1,s0,68
    2ed0:	00100613          	li	a2,1
    2ed4:	00000513          	li	a0,0
    2ed8:	00b12623          	sw	a1,12(sp)
    2edc:	000780e7          	jalr	a5
    2ee0:	fc0504e3          	beqz	a0,2ea8 <fatfs_init+0x3c>
    2ee4:	24244703          	lbu	a4,578(s0)
    2ee8:	05500793          	li	a5,85
    2eec:	00c12583          	lw	a1,12(sp)
    2ef0:	00f70663          	beq	a4,a5,2efc <fatfs_init+0x90>
    2ef4:	ffd00713          	li	a4,-3
    2ef8:	fb5ff06f          	j	2eac <fatfs_init+0x40>
    2efc:	24344703          	lbu	a4,579(s0)
    2f00:	0aa00793          	li	a5,170
    2f04:	fef718e3          	bne	a4,a5,2ef4 <fatfs_init+0x88>
    2f08:	20644783          	lbu	a5,518(s0)
    2f0c:	00600713          	li	a4,6
    2f10:	02f76463          	bltu	a4,a5,2f38 <fatfs_init+0xcc>
    2f14:	00400713          	li	a4,4
    2f18:	00f76663          	bltu	a4,a5,2f24 <fatfs_init+0xb8>
    2f1c:	00000513          	li	a0,0
    2f20:	02078663          	beqz	a5,2f4c <fatfs_init+0xe0>
    2f24:	20c45503          	lhu	a0,524(s0)
    2f28:	20a45783          	lhu	a5,522(s0)
    2f2c:	01051513          	slli	a0,a0,0x10
    2f30:	00f56533          	or	a0,a0,a5
    2f34:	0180006f          	j	2f4c <fatfs_init+0xe0>
    2f38:	00c00713          	li	a4,12
    2f3c:	12f76663          	bltu	a4,a5,3068 <fatfs_init+0x1fc>
    2f40:	00a00713          	li	a4,10
    2f44:	00000513          	li	a0,0
    2f48:	fcf76ee3          	bltu	a4,a5,2f24 <fatfs_init+0xb8>
    2f4c:	03442783          	lw	a5,52(s0)
    2f50:	00a42e23          	sw	a0,28(s0)
    2f54:	00100613          	li	a2,1
    2f58:	000780e7          	jalr	a5
    2f5c:	f40506e3          	beqz	a0,2ea8 <fatfs_init+0x3c>
    2f60:	05044783          	lbu	a5,80(s0)
    2f64:	04f44703          	lbu	a4,79(s0)
    2f68:	20000693          	li	a3,512
    2f6c:	00879793          	slli	a5,a5,0x8
    2f70:	00e7e7b3          	or	a5,a5,a4
    2f74:	ffe00713          	li	a4,-2
    2f78:	f2d79ae3          	bne	a5,a3,2eac <fatfs_init+0x40>
    2f7c:	05644483          	lbu	s1,86(s0)
    2f80:	05544783          	lbu	a5,85(s0)
    2f84:	05144983          	lbu	s3,81(s0)
    2f88:	00849493          	slli	s1,s1,0x8
    2f8c:	05a45583          	lhu	a1,90(s0)
    2f90:	00f4e4b3          	or	s1,s1,a5
    2f94:	01340023          	sb	s3,0(s0)
    2f98:	02941423          	sh	s1,40(s0)
    2f9c:	05245903          	lhu	s2,82(s0)
    2fa0:	05444503          	lbu	a0,84(s0)
    2fa4:	00059463          	bnez	a1,2fac <fatfs_init+0x140>
    2fa8:	06842583          	lw	a1,104(s0)
    2fac:	07042783          	lw	a5,112(s0)
    2fb0:	02b42023          	sw	a1,32(s0)
    2fb4:	00549493          	slli	s1,s1,0x5
    2fb8:	00f42423          	sw	a5,8(s0)
    2fbc:	07445783          	lhu	a5,116(s0)
    2fc0:	1ff48493          	addi	s1,s1,511
    2fc4:	4094d493          	srai	s1,s1,0x9
    2fc8:	00f41c23          	sh	a5,24(s0)
    2fcc:	fffff097          	auipc	ra,0xfffff
    2fd0:	dc4080e7          	jalr	-572(ra) # 1d90 <__mulsi3>
    2fd4:	00a907b3          	add	a5,s2,a0
    2fd8:	00f42623          	sw	a5,12(s0)
    2fdc:	01c42783          	lw	a5,28(s0)
    2fe0:	24245703          	lhu	a4,578(s0)
    2fe4:	00942823          	sw	s1,16(s0)
    2fe8:	00f907b3          	add	a5,s2,a5
    2fec:	00f42a23          	sw	a5,20(s0)
    2ff0:	00f507b3          	add	a5,a0,a5
    2ff4:	00f42223          	sw	a5,4(s0)
    2ff8:	0000b7b7          	lui	a5,0xb
    2ffc:	a5578793          	addi	a5,a5,-1451 # aa55 <framebuffer+0x3069>
    3000:	eef71ae3          	bne	a4,a5,2ef4 <fatfs_init+0x88>
    3004:	05844783          	lbu	a5,88(s0)
    3008:	05744703          	lbu	a4,87(s0)
    300c:	00879793          	slli	a5,a5,0x8
    3010:	00e7e7b3          	or	a5,a5,a4
    3014:	00079463          	bnez	a5,301c <fatfs_init+0x1b0>
    3018:	06442783          	lw	a5,100(s0)
    301c:	ffb00713          	li	a4,-5
    3020:	e80986e3          	beqz	s3,2eac <fatfs_init+0x40>
    3024:	00990933          	add	s2,s2,s1
    3028:	00a90533          	add	a0,s2,a0
    302c:	40a78533          	sub	a0,a5,a0
    3030:	00098593          	mv	a1,s3
    3034:	ffffe097          	auipc	ra,0xffffe
    3038:	560080e7          	jalr	1376(ra) # 1594 <__udivsi3>
    303c:	000017b7          	lui	a5,0x1
    3040:	ff478793          	addi	a5,a5,-12 # ff4 <sdcard_ponder+0x14>
    3044:	ffb00713          	li	a4,-5
    3048:	e6a7f2e3          	bgeu	a5,a0,2eac <fatfs_init+0x40>
    304c:	000107b7          	lui	a5,0x10
    3050:	ff478793          	addi	a5,a5,-12 # fff4 <_files+0x41a0>
    3054:	02a7e663          	bltu	a5,a0,3080 <fatfs_init+0x214>
    3058:	00042423          	sw	zero,8(s0)
    305c:	02042823          	sw	zero,48(s0)
    3060:	00000713          	li	a4,0
    3064:	e49ff06f          	j	2eac <fatfs_init+0x40>
    3068:	ff278793          	addi	a5,a5,-14
    306c:	0ff7f793          	zext.b	a5,a5
    3070:	00100713          	li	a4,1
    3074:	00000513          	li	a0,0
    3078:	eaf776e3          	bgeu	a4,a5,2f24 <fatfs_init+0xb8>
    307c:	ed1ff06f          	j	2f4c <fatfs_init+0xe0>
    3080:	00100793          	li	a5,1
    3084:	02f42823          	sw	a5,48(s0)
    3088:	fd9ff06f          	j	3060 <fatfs_init+0x1f4>

0000308c <fl_attach_media>:
    308c:	000057b7          	lui	a5,0x5
    3090:	7687a783          	lw	a5,1896(a5) # 5768 <_filelib_init>
    3094:	fe010113          	addi	sp,sp,-32
    3098:	00812c23          	sw	s0,24(sp)
    309c:	00112e23          	sw	ra,28(sp)
    30a0:	00050413          	mv	s0,a0
    30a4:	00079a63          	bnez	a5,30b8 <fl_attach_media+0x2c>
    30a8:	00b12623          	sw	a1,12(sp)
    30ac:	fffff097          	auipc	ra,0xfffff
    30b0:	178080e7          	jalr	376(ra) # 2224 <fl_init>
    30b4:	00c12583          	lw	a1,12(sp)
    30b8:	0000c7b7          	lui	a5,0xc
    30bc:	9ec78513          	addi	a0,a5,-1556 # b9ec <_fs>
    30c0:	02b52c23          	sw	a1,56(a0)
    30c4:	02852a23          	sw	s0,52(a0)
    30c8:	00000097          	auipc	ra,0x0
    30cc:	da4080e7          	jalr	-604(ra) # 2e6c <fatfs_init>
    30d0:	00050593          	mv	a1,a0
    30d4:	02050863          	beqz	a0,3104 <fl_attach_media+0x78>
    30d8:	00a12623          	sw	a0,12(sp)
    30dc:	00005537          	lui	a0,0x5
    30e0:	2e850513          	addi	a0,a0,744 # 52e8 <LEDS+0x1bc>
    30e4:	fffff097          	auipc	ra,0xfffff
    30e8:	b70080e7          	jalr	-1168(ra) # 1c54 <printf>
    30ec:	00c12583          	lw	a1,12(sp)
    30f0:	01c12083          	lw	ra,28(sp)
    30f4:	01812403          	lw	s0,24(sp)
    30f8:	00058513          	mv	a0,a1
    30fc:	02010113          	addi	sp,sp,32
    3100:	00008067          	ret
    3104:	000057b7          	lui	a5,0x5
    3108:	00100713          	li	a4,1
    310c:	76e7a223          	sw	a4,1892(a5) # 5764 <_filelib_valid>
    3110:	fe1ff06f          	j	30f0 <fl_attach_media+0x64>

00003114 <fatfs_fat_purge>:
    3114:	25452583          	lw	a1,596(a0)
    3118:	fe010113          	addi	sp,sp,-32
    311c:	00812c23          	sw	s0,24(sp)
    3120:	00112e23          	sw	ra,28(sp)
    3124:	00050413          	mv	s0,a0
    3128:	00059663          	bnez	a1,3134 <fatfs_fat_purge+0x20>
    312c:	00100513          	li	a0,1
    3130:	02c0006f          	j	315c <fatfs_fat_purge+0x48>
    3134:	2045a783          	lw	a5,516(a1)
    3138:	00079663          	bnez	a5,3144 <fatfs_fat_purge+0x30>
    313c:	20c5a583          	lw	a1,524(a1)
    3140:	fe9ff06f          	j	3128 <fatfs_fat_purge+0x14>
    3144:	00040513          	mv	a0,s0
    3148:	00b12623          	sw	a1,12(sp)
    314c:	fffff097          	auipc	ra,0xfffff
    3150:	d78080e7          	jalr	-648(ra) # 1ec4 <fatfs_fat_writeback>
    3154:	00c12583          	lw	a1,12(sp)
    3158:	fe0512e3          	bnez	a0,313c <fatfs_fat_purge+0x28>
    315c:	01c12083          	lw	ra,28(sp)
    3160:	01812403          	lw	s0,24(sp)
    3164:	02010113          	addi	sp,sp,32
    3168:	00008067          	ret

0000316c <fatfs_find_next_cluster>:
    316c:	ff010113          	addi	sp,sp,-16
    3170:	00812423          	sw	s0,8(sp)
    3174:	01212023          	sw	s2,0(sp)
    3178:	00112623          	sw	ra,12(sp)
    317c:	00912223          	sw	s1,4(sp)
    3180:	00050913          	mv	s2,a0
    3184:	00200413          	li	s0,2
    3188:	00058463          	beqz	a1,3190 <fatfs_find_next_cluster+0x24>
    318c:	00058413          	mv	s0,a1
    3190:	03092783          	lw	a5,48(s2)
    3194:	00745493          	srli	s1,s0,0x7
    3198:	00079463          	bnez	a5,31a0 <fatfs_find_next_cluster+0x34>
    319c:	00845493          	srli	s1,s0,0x8
    31a0:	01492583          	lw	a1,20(s2)
    31a4:	00090513          	mv	a0,s2
    31a8:	00b485b3          	add	a1,s1,a1
    31ac:	fffff097          	auipc	ra,0xfffff
    31b0:	d9c080e7          	jalr	-612(ra) # 1f48 <fatfs_fat_read_sector>
    31b4:	00050793          	mv	a5,a0
    31b8:	fff00513          	li	a0,-1
    31bc:	04078863          	beqz	a5,320c <fatfs_find_next_cluster+0xa0>
    31c0:	03092703          	lw	a4,48(s2)
    31c4:	2087a783          	lw	a5,520(a5)
    31c8:	04071e63          	bnez	a4,3224 <fatfs_find_next_cluster+0xb8>
    31cc:	00849493          	slli	s1,s1,0x8
    31d0:	40940433          	sub	s0,s0,s1
    31d4:	00141413          	slli	s0,s0,0x1
    31d8:	01041413          	slli	s0,s0,0x10
    31dc:	01045413          	srli	s0,s0,0x10
    31e0:	008787b3          	add	a5,a5,s0
    31e4:	0017c503          	lbu	a0,1(a5)
    31e8:	0007c783          	lbu	a5,0(a5)
    31ec:	00851513          	slli	a0,a0,0x8
    31f0:	00f50533          	add	a0,a0,a5
    31f4:	ffff07b7          	lui	a5,0xffff0
    31f8:	00878793          	addi	a5,a5,8 # ffff0008 <__stacktop+0xfffe0008>
    31fc:	00f507b3          	add	a5,a0,a5
    3200:	00700713          	li	a4,7
    3204:	00f76463          	bltu	a4,a5,320c <fatfs_find_next_cluster+0xa0>
    3208:	fff00513          	li	a0,-1
    320c:	00c12083          	lw	ra,12(sp)
    3210:	00812403          	lw	s0,8(sp)
    3214:	00412483          	lw	s1,4(sp)
    3218:	00012903          	lw	s2,0(sp)
    321c:	01010113          	addi	sp,sp,16
    3220:	00008067          	ret
    3224:	00749493          	slli	s1,s1,0x7
    3228:	40940433          	sub	s0,s0,s1
    322c:	00241413          	slli	s0,s0,0x2
    3230:	01041413          	slli	s0,s0,0x10
    3234:	01045413          	srli	s0,s0,0x10
    3238:	008787b3          	add	a5,a5,s0
    323c:	0037c503          	lbu	a0,3(a5)
    3240:	0027c703          	lbu	a4,2(a5)
    3244:	01851513          	slli	a0,a0,0x18
    3248:	01071713          	slli	a4,a4,0x10
    324c:	00e50533          	add	a0,a0,a4
    3250:	0007c703          	lbu	a4,0(a5)
    3254:	0017c783          	lbu	a5,1(a5)
    3258:	00e50533          	add	a0,a0,a4
    325c:	00879793          	slli	a5,a5,0x8
    3260:	00f50533          	add	a0,a0,a5
    3264:	00451513          	slli	a0,a0,0x4
    3268:	00455513          	srli	a0,a0,0x4
    326c:	f00007b7          	lui	a5,0xf0000
    3270:	f89ff06f          	j	31f8 <fatfs_find_next_cluster+0x8c>

00003274 <fatfs_sector_reader>:
    3274:	03052783          	lw	a5,48(a0)
    3278:	fe010113          	addi	sp,sp,-32
    327c:	00812c23          	sw	s0,24(sp)
    3280:	01212823          	sw	s2,16(sp)
    3284:	01512223          	sw	s5,4(sp)
    3288:	00112e23          	sw	ra,28(sp)
    328c:	00912a23          	sw	s1,20(sp)
    3290:	01312623          	sw	s3,12(sp)
    3294:	01412423          	sw	s4,8(sp)
    3298:	01612023          	sw	s6,0(sp)
    329c:	00f5e7b3          	or	a5,a1,a5
    32a0:	00050413          	mv	s0,a0
    32a4:	00060913          	mv	s2,a2
    32a8:	00068a93          	mv	s5,a3
    32ac:	08079063          	bnez	a5,332c <fatfs_sector_reader+0xb8>
    32b0:	01052783          	lw	a5,16(a0)
    32b4:	02f66863          	bltu	a2,a5,32e4 <fatfs_sector_reader+0x70>
    32b8:	00000513          	li	a0,0
    32bc:	01c12083          	lw	ra,28(sp)
    32c0:	01812403          	lw	s0,24(sp)
    32c4:	01412483          	lw	s1,20(sp)
    32c8:	01012903          	lw	s2,16(sp)
    32cc:	00c12983          	lw	s3,12(sp)
    32d0:	00812a03          	lw	s4,8(sp)
    32d4:	00412a83          	lw	s5,4(sp)
    32d8:	00012b03          	lw	s6,0(sp)
    32dc:	02010113          	addi	sp,sp,32
    32e0:	00008067          	ret
    32e4:	01c52503          	lw	a0,28(a0)
    32e8:	00c42783          	lw	a5,12(s0)
    32ec:	00f50533          	add	a0,a0,a5
    32f0:	01250533          	add	a0,a0,s2
    32f4:	0a0a8663          	beqz	s5,33a0 <fatfs_sector_reader+0x12c>
    32f8:	03442783          	lw	a5,52(s0)
    32fc:	00100613          	li	a2,1
    3300:	000a8593          	mv	a1,s5
    3304:	01812403          	lw	s0,24(sp)
    3308:	01c12083          	lw	ra,28(sp)
    330c:	01412483          	lw	s1,20(sp)
    3310:	01012903          	lw	s2,16(sp)
    3314:	00c12983          	lw	s3,12(sp)
    3318:	00812a03          	lw	s4,8(sp)
    331c:	00412a83          	lw	s5,4(sp)
    3320:	00012b03          	lw	s6,0(sp)
    3324:	02010113          	addi	sp,sp,32
    3328:	00078067          	jr	a5 # f0000000 <__stacktop+0xefff0000>
    332c:	00054783          	lbu	a5,0(a0)
    3330:	00058493          	mv	s1,a1
    3334:	00060513          	mv	a0,a2
    3338:	00078593          	mv	a1,a5
    333c:	00078a13          	mv	s4,a5
    3340:	ffffe097          	auipc	ra,0xffffe
    3344:	254080e7          	jalr	596(ra) # 1594 <__udivsi3>
    3348:	00050b13          	mv	s6,a0
    334c:	00000993          	li	s3,0
    3350:	03699a63          	bne	s3,s6,3384 <fatfs_sector_reader+0x110>
    3354:	fff00793          	li	a5,-1
    3358:	f6f480e3          	beq	s1,a5,32b8 <fatfs_sector_reader+0x44>
    335c:	000a0593          	mv	a1,s4
    3360:	00090513          	mv	a0,s2
    3364:	ffffe097          	auipc	ra,0xffffe
    3368:	278080e7          	jalr	632(ra) # 15dc <__umodsi3>
    336c:	00050913          	mv	s2,a0
    3370:	00048593          	mv	a1,s1
    3374:	00040513          	mv	a0,s0
    3378:	fffff097          	auipc	ra,0xfffff
    337c:	d7c080e7          	jalr	-644(ra) # 20f4 <fatfs_lba_of_cluster>
    3380:	f71ff06f          	j	32f0 <fatfs_sector_reader+0x7c>
    3384:	00048593          	mv	a1,s1
    3388:	00040513          	mv	a0,s0
    338c:	00000097          	auipc	ra,0x0
    3390:	de0080e7          	jalr	-544(ra) # 316c <fatfs_find_next_cluster>
    3394:	00050493          	mv	s1,a0
    3398:	00198993          	addi	s3,s3,1
    339c:	fb5ff06f          	j	3350 <fatfs_sector_reader+0xdc>
    33a0:	24442783          	lw	a5,580(s0)
    33a4:	00a78c63          	beq	a5,a0,33bc <fatfs_sector_reader+0x148>
    33a8:	03442783          	lw	a5,52(s0)
    33ac:	24a42223          	sw	a0,580(s0)
    33b0:	00100613          	li	a2,1
    33b4:	04440593          	addi	a1,s0,68
    33b8:	f4dff06f          	j	3304 <fatfs_sector_reader+0x90>
    33bc:	00100513          	li	a0,1
    33c0:	efdff06f          	j	32bc <fatfs_sector_reader+0x48>

000033c4 <fatfs_get_file_entry>:
    33c4:	eb010113          	addi	sp,sp,-336
    33c8:	14812423          	sw	s0,328(sp)
    33cc:	14912223          	sw	s1,324(sp)
    33d0:	13312e23          	sw	s3,316(sp)
    33d4:	13712623          	sw	s7,300(sp)
    33d8:	13812423          	sw	s8,296(sp)
    33dc:	13912223          	sw	s9,292(sp)
    33e0:	14112623          	sw	ra,332(sp)
    33e4:	15212023          	sw	s2,320(sp)
    33e8:	13412c23          	sw	s4,312(sp)
    33ec:	13512a23          	sw	s5,308(sp)
    33f0:	13612823          	sw	s6,304(sp)
    33f4:	00050993          	mv	s3,a0
    33f8:	00058c93          	mv	s9,a1
    33fc:	00060b93          	mv	s7,a2
    3400:	00068c13          	mv	s8,a3
    3404:	10010ea3          	sb	zero,285(sp)
    3408:	01810413          	addi	s0,sp,24
    340c:	11c10493          	addi	s1,sp,284
    3410:	00040513          	mv	a0,s0
    3414:	00d00613          	li	a2,13
    3418:	00000593          	li	a1,0
    341c:	00d40413          	addi	s0,s0,13
    3420:	ffffe097          	auipc	ra,0xffffe
    3424:	220080e7          	jalr	544(ra) # 1640 <memset>
    3428:	fe9414e3          	bne	s0,s1,3410 <fatfs_get_file_entry+0x4c>
    342c:	00000493          	li	s1,0
    3430:	24498a13          	addi	s4,s3,580
    3434:	00810913          	addi	s2,sp,8
    3438:	00800a93          	li	s5,8
    343c:	02e00b13          	li	s6,46
    3440:	00000693          	li	a3,0
    3444:	00048613          	mv	a2,s1
    3448:	000c8593          	mv	a1,s9
    344c:	00098513          	mv	a0,s3
    3450:	00000097          	auipc	ra,0x0
    3454:	e24080e7          	jalr	-476(ra) # 3274 <fatfs_sector_reader>
    3458:	08050c63          	beqz	a0,34f0 <fatfs_get_file_entry+0x12c>
    345c:	00148493          	addi	s1,s1,1
    3460:	04498413          	addi	s0,s3,68
    3464:	00040513          	mv	a0,s0
    3468:	fffff097          	auipc	ra,0xfffff
    346c:	f34080e7          	jalr	-204(ra) # 239c <fatfs_entry_lfn_text>
    3470:	02050063          	beqz	a0,3490 <fatfs_get_file_entry+0xcc>
    3474:	00040593          	mv	a1,s0
    3478:	01810513          	addi	a0,sp,24
    347c:	fffff097          	auipc	ra,0xfffff
    3480:	e18080e7          	jalr	-488(ra) # 2294 <fatfs_lfn_cache_entry>
    3484:	02040413          	addi	s0,s0,32
    3488:	fd441ee3          	bne	s0,s4,3464 <fatfs_get_file_entry+0xa0>
    348c:	fb5ff06f          	j	3440 <fatfs_get_file_entry+0x7c>
    3490:	00040513          	mv	a0,s0
    3494:	fffff097          	auipc	ra,0xfffff
    3498:	f1c080e7          	jalr	-228(ra) # 23b0 <fatfs_entry_lfn_invalid>
    349c:	00050663          	beqz	a0,34a8 <fatfs_get_file_entry+0xe4>
    34a0:	10010ea3          	sb	zero,285(sp)
    34a4:	fe1ff06f          	j	3484 <fatfs_get_file_entry+0xc0>
    34a8:	00040593          	mv	a1,s0
    34ac:	01810513          	addi	a0,sp,24
    34b0:	fffff097          	auipc	ra,0xfffff
    34b4:	f34080e7          	jalr	-204(ra) # 23e4 <fatfs_entry_lfn_exists>
    34b8:	06050663          	beqz	a0,3524 <fatfs_get_file_entry+0x160>
    34bc:	01810513          	addi	a0,sp,24
    34c0:	fffff097          	auipc	ra,0xfffff
    34c4:	ea0080e7          	jalr	-352(ra) # 2360 <fatfs_lfn_cache_get>
    34c8:	000b8593          	mv	a1,s7
    34cc:	fffff097          	auipc	ra,0xfffff
    34d0:	6dc080e7          	jalr	1756(ra) # 2ba8 <fatfs_compare_names>
    34d4:	fc0506e3          	beqz	a0,34a0 <fatfs_get_file_entry+0xdc>
    34d8:	02000613          	li	a2,32
    34dc:	00040593          	mv	a1,s0
    34e0:	000c0513          	mv	a0,s8
    34e4:	ffffe097          	auipc	ra,0xffffe
    34e8:	178080e7          	jalr	376(ra) # 165c <memcpy>
    34ec:	00100513          	li	a0,1
    34f0:	14c12083          	lw	ra,332(sp)
    34f4:	14812403          	lw	s0,328(sp)
    34f8:	14412483          	lw	s1,324(sp)
    34fc:	14012903          	lw	s2,320(sp)
    3500:	13c12983          	lw	s3,316(sp)
    3504:	13812a03          	lw	s4,312(sp)
    3508:	13412a83          	lw	s5,308(sp)
    350c:	13012b03          	lw	s6,304(sp)
    3510:	12c12b83          	lw	s7,300(sp)
    3514:	12812c03          	lw	s8,296(sp)
    3518:	12412c83          	lw	s9,292(sp)
    351c:	15010113          	addi	sp,sp,336
    3520:	00008067          	ret
    3524:	00040513          	mv	a0,s0
    3528:	fffff097          	auipc	ra,0xfffff
    352c:	f0c080e7          	jalr	-244(ra) # 2434 <fatfs_entry_sfn_only>
    3530:	f4050ae3          	beqz	a0,3484 <fatfs_get_file_entry+0xc0>
    3534:	00d00613          	li	a2,13
    3538:	00000593          	li	a1,0
    353c:	00090513          	mv	a0,s2
    3540:	ffffe097          	auipc	ra,0xffffe
    3544:	100080e7          	jalr	256(ra) # 1640 <memset>
    3548:	00000793          	li	a5,0
    354c:	00f406b3          	add	a3,s0,a5
    3550:	0006c683          	lbu	a3,0(a3)
    3554:	00f90733          	add	a4,s2,a5
    3558:	00178793          	addi	a5,a5,1
    355c:	00d70023          	sb	a3,0(a4)
    3560:	ff5796e3          	bne	a5,s5,354c <fatfs_get_file_entry+0x188>
    3564:	00844703          	lbu	a4,8(s0)
    3568:	00944783          	lbu	a5,9(s0)
    356c:	00a44683          	lbu	a3,10(s0)
    3570:	00e108a3          	sb	a4,17(sp)
    3574:	00f10923          	sb	a5,18(sp)
    3578:	fe070713          	addi	a4,a4,-32
    357c:	fe078793          	addi	a5,a5,-32
    3580:	00f037b3          	snez	a5,a5
    3584:	00e03733          	snez	a4,a4
    3588:	00d109a3          	sb	a3,19(sp)
    358c:	00e7e7b3          	or	a5,a5,a4
    3590:	00079863          	bnez	a5,35a0 <fatfs_get_file_entry+0x1dc>
    3594:	fe068693          	addi	a3,a3,-32
    3598:	02000793          	li	a5,32
    359c:	00068a63          	beqz	a3,35b0 <fatfs_get_file_entry+0x1ec>
    35a0:	00814703          	lbu	a4,8(sp)
    35a4:	02e00793          	li	a5,46
    35a8:	01671463          	bne	a4,s6,35b0 <fatfs_get_file_entry+0x1ec>
    35ac:	02000793          	li	a5,32
    35b0:	00f10823          	sb	a5,16(sp)
    35b4:	000b8593          	mv	a1,s7
    35b8:	00090513          	mv	a0,s2
    35bc:	f11ff06f          	j	34cc <fatfs_get_file_entry+0x108>

000035c0 <_open_directory>:
    35c0:	eb010113          	addi	sp,sp,-336
    35c4:	15212023          	sw	s2,320(sp)
    35c8:	0000c937          	lui	s2,0xc
    35cc:	9ec90913          	addi	s2,s2,-1556 # b9ec <_fs>
    35d0:	14812423          	sw	s0,328(sp)
    35d4:	00892403          	lw	s0,8(s2)
    35d8:	14912223          	sw	s1,324(sp)
    35dc:	13312e23          	sw	s3,316(sp)
    35e0:	13412c23          	sw	s4,312(sp)
    35e4:	13512a23          	sw	s5,308(sp)
    35e8:	13612823          	sw	s6,304(sp)
    35ec:	14112623          	sw	ra,332(sp)
    35f0:	00050a13          	mv	s4,a0
    35f4:	00058a93          	mv	s5,a1
    35f8:	fffff097          	auipc	ra,0xfffff
    35fc:	368080e7          	jalr	872(ra) # 2960 <fatfs_total_path_levels>
    3600:	00050b13          	mv	s6,a0
    3604:	00000493          	li	s1,0
    3608:	fff00993          	li	s3,-1
    360c:	009b5863          	bge	s6,s1,361c <_open_directory+0x5c>
    3610:	008aa023          	sw	s0,0(s5)
    3614:	00100513          	li	a0,1
    3618:	0240006f          	j	363c <_open_directory+0x7c>
    361c:	10400693          	li	a3,260
    3620:	02c10613          	addi	a2,sp,44
    3624:	00048593          	mv	a1,s1
    3628:	000a0513          	mv	a0,s4
    362c:	fffff097          	auipc	ra,0xfffff
    3630:	3a4080e7          	jalr	932(ra) # 29d0 <fatfs_get_substring>
    3634:	03351863          	bne	a0,s3,3664 <_open_directory+0xa4>
    3638:	00000513          	li	a0,0
    363c:	14c12083          	lw	ra,332(sp)
    3640:	14812403          	lw	s0,328(sp)
    3644:	14412483          	lw	s1,324(sp)
    3648:	14012903          	lw	s2,320(sp)
    364c:	13c12983          	lw	s3,316(sp)
    3650:	13812a03          	lw	s4,312(sp)
    3654:	13412a83          	lw	s5,308(sp)
    3658:	13012b03          	lw	s6,304(sp)
    365c:	15010113          	addi	sp,sp,336
    3660:	00008067          	ret
    3664:	00c10693          	addi	a3,sp,12
    3668:	02c10613          	addi	a2,sp,44
    366c:	00040593          	mv	a1,s0
    3670:	00090513          	mv	a0,s2
    3674:	00000097          	auipc	ra,0x0
    3678:	d50080e7          	jalr	-688(ra) # 33c4 <fatfs_get_file_entry>
    367c:	fa050ee3          	beqz	a0,3638 <_open_directory+0x78>
    3680:	01714783          	lbu	a5,23(sp)
    3684:	0107f793          	andi	a5,a5,16
    3688:	fa0788e3          	beqz	a5,3638 <_open_directory+0x78>
    368c:	02015403          	lhu	s0,32(sp)
    3690:	02615783          	lhu	a5,38(sp)
    3694:	00148493          	addi	s1,s1,1
    3698:	01041413          	slli	s0,s0,0x10
    369c:	00f40433          	add	s0,s0,a5
    36a0:	f6dff06f          	j	360c <_open_directory+0x4c>

000036a4 <fl_opendir>:
    36a4:	fe010113          	addi	sp,sp,-32
    36a8:	fff00793          	li	a5,-1
    36ac:	00f12623          	sw	a5,12(sp)
    36b0:	000057b7          	lui	a5,0x5
    36b4:	7687a783          	lw	a5,1896(a5) # 5768 <_filelib_init>
    36b8:	00812c23          	sw	s0,24(sp)
    36bc:	01212823          	sw	s2,16(sp)
    36c0:	00112e23          	sw	ra,28(sp)
    36c4:	00912a23          	sw	s1,20(sp)
    36c8:	00050913          	mv	s2,a0
    36cc:	00058413          	mv	s0,a1
    36d0:	00079663          	bnez	a5,36dc <fl_opendir+0x38>
    36d4:	fffff097          	auipc	ra,0xfffff
    36d8:	b50080e7          	jalr	-1200(ra) # 2224 <fl_init>
    36dc:	0000c4b7          	lui	s1,0xc
    36e0:	9ec48493          	addi	s1,s1,-1556 # b9ec <_fs>
    36e4:	03c4a783          	lw	a5,60(s1)
    36e8:	00078463          	beqz	a5,36f0 <fl_opendir+0x4c>
    36ec:	000780e7          	jalr	a5
    36f0:	00090513          	mv	a0,s2
    36f4:	fffff097          	auipc	ra,0xfffff
    36f8:	26c080e7          	jalr	620(ra) # 2960 <fatfs_total_path_levels>
    36fc:	fff00793          	li	a5,-1
    3700:	02f51063          	bne	a0,a5,3720 <fl_opendir+0x7c>
    3704:	0084a783          	lw	a5,8(s1)
    3708:	00f12623          	sw	a5,12(sp)
    370c:	00c12783          	lw	a5,12(sp)
    3710:	00042023          	sw	zero,0(s0)
    3714:	00040423          	sb	zero,8(s0)
    3718:	00f42223          	sw	a5,4(s0)
    371c:	0180006f          	j	3734 <fl_opendir+0x90>
    3720:	00c10593          	addi	a1,sp,12
    3724:	00090513          	mv	a0,s2
    3728:	00000097          	auipc	ra,0x0
    372c:	e98080e7          	jalr	-360(ra) # 35c0 <_open_directory>
    3730:	fc051ee3          	bnez	a0,370c <fl_opendir+0x68>
    3734:	0404a783          	lw	a5,64(s1)
    3738:	00078463          	beqz	a5,3740 <fl_opendir+0x9c>
    373c:	000780e7          	jalr	a5
    3740:	00c12703          	lw	a4,12(sp)
    3744:	fff00793          	li	a5,-1
    3748:	00f71463          	bne	a4,a5,3750 <fl_opendir+0xac>
    374c:	00000413          	li	s0,0
    3750:	01c12083          	lw	ra,28(sp)
    3754:	00040513          	mv	a0,s0
    3758:	01812403          	lw	s0,24(sp)
    375c:	01412483          	lw	s1,20(sp)
    3760:	01012903          	lw	s2,16(sp)
    3764:	02010113          	addi	sp,sp,32
    3768:	00008067          	ret

0000376c <_open_file>:
    376c:	fc010113          	addi	sp,sp,-64
    3770:	03312623          	sw	s3,44(sp)
    3774:	02112e23          	sw	ra,60(sp)
    3778:	02812c23          	sw	s0,56(sp)
    377c:	02912a23          	sw	s1,52(sp)
    3780:	03212823          	sw	s2,48(sp)
    3784:	00050993          	mv	s3,a0
    3788:	fffff097          	auipc	ra,0xfffff
    378c:	8ac080e7          	jalr	-1876(ra) # 2034 <_allocate_file>
    3790:	06050463          	beqz	a0,37f8 <_open_file+0x8c>
    3794:	01450913          	addi	s2,a0,20
    3798:	00050413          	mv	s0,a0
    379c:	10400613          	li	a2,260
    37a0:	00000593          	li	a1,0
    37a4:	00090513          	mv	a0,s2
    37a8:	ffffe097          	auipc	ra,0xffffe
    37ac:	e98080e7          	jalr	-360(ra) # 1640 <memset>
    37b0:	11840493          	addi	s1,s0,280
    37b4:	10400613          	li	a2,260
    37b8:	00000593          	li	a1,0
    37bc:	00048513          	mv	a0,s1
    37c0:	ffffe097          	auipc	ra,0xffffe
    37c4:	e80080e7          	jalr	-384(ra) # 1640 <memset>
    37c8:	10400713          	li	a4,260
    37cc:	00048693          	mv	a3,s1
    37d0:	00070613          	mv	a2,a4
    37d4:	00090593          	mv	a1,s2
    37d8:	00098513          	mv	a0,s3
    37dc:	fffff097          	auipc	ra,0xfffff
    37e0:	2dc080e7          	jalr	732(ra) # 2ab8 <fatfs_split_path>
    37e4:	fff00793          	li	a5,-1
    37e8:	02f51a63          	bne	a0,a5,381c <_open_file+0xb0>
    37ec:	00040513          	mv	a0,s0
    37f0:	fffff097          	auipc	ra,0xfffff
    37f4:	8bc080e7          	jalr	-1860(ra) # 20ac <_free_file>
    37f8:	00000413          	li	s0,0
    37fc:	03c12083          	lw	ra,60(sp)
    3800:	00040513          	mv	a0,s0
    3804:	03812403          	lw	s0,56(sp)
    3808:	03412483          	lw	s1,52(sp)
    380c:	03012903          	lw	s2,48(sp)
    3810:	02c12983          	lw	s3,44(sp)
    3814:	04010113          	addi	sp,sp,64
    3818:	00008067          	ret
    381c:	00040513          	mv	a0,s0
    3820:	fffff097          	auipc	ra,0xfffff
    3824:	514080e7          	jalr	1300(ra) # 2d34 <_check_file_open>
    3828:	fc0512e3          	bnez	a0,37ec <_open_file+0x80>
    382c:	01444783          	lbu	a5,20(s0)
    3830:	08079c63          	bnez	a5,38c8 <_open_file+0x15c>
    3834:	0000c7b7          	lui	a5,0xc
    3838:	9f47a783          	lw	a5,-1548(a5) # b9f4 <_fs+0x8>
    383c:	00f42023          	sw	a5,0(s0)
    3840:	00042583          	lw	a1,0(s0)
    3844:	00048613          	mv	a2,s1
    3848:	0000c4b7          	lui	s1,0xc
    384c:	00010693          	mv	a3,sp
    3850:	9ec48513          	addi	a0,s1,-1556 # b9ec <_fs>
    3854:	00000097          	auipc	ra,0x0
    3858:	b70080e7          	jalr	-1168(ra) # 33c4 <fatfs_get_file_entry>
    385c:	f80508e3          	beqz	a0,37ec <_open_file+0x80>
    3860:	00b14783          	lbu	a5,11(sp)
    3864:	0207f793          	andi	a5,a5,32
    3868:	f80782e3          	beqz	a5,37ec <_open_file+0x80>
    386c:	00b00613          	li	a2,11
    3870:	00010593          	mv	a1,sp
    3874:	21c40513          	addi	a0,s0,540
    3878:	ffffe097          	auipc	ra,0xffffe
    387c:	de4080e7          	jalr	-540(ra) # 165c <memcpy>
    3880:	01c12783          	lw	a5,28(sp)
    3884:	01a15703          	lhu	a4,26(sp)
    3888:	00042423          	sw	zero,8(s0)
    388c:	00f42623          	sw	a5,12(s0)
    3890:	01415783          	lhu	a5,20(sp)
    3894:	42042a23          	sw	zero,1076(s0)
    3898:	00042823          	sw	zero,16(s0)
    389c:	01079793          	slli	a5,a5,0x10
    38a0:	00e787b3          	add	a5,a5,a4
    38a4:	00f42223          	sw	a5,4(s0)
    38a8:	fff00793          	li	a5,-1
    38ac:	42f42823          	sw	a5,1072(s0)
    38b0:	22f42423          	sw	a5,552(s0)
    38b4:	22f42623          	sw	a5,556(s0)
    38b8:	9ec48513          	addi	a0,s1,-1556
    38bc:	00000097          	auipc	ra,0x0
    38c0:	858080e7          	jalr	-1960(ra) # 3114 <fatfs_fat_purge>
    38c4:	f39ff06f          	j	37fc <_open_file+0x90>
    38c8:	00040593          	mv	a1,s0
    38cc:	00090513          	mv	a0,s2
    38d0:	00000097          	auipc	ra,0x0
    38d4:	cf0080e7          	jalr	-784(ra) # 35c0 <_open_directory>
    38d8:	f60514e3          	bnez	a0,3840 <_open_file+0xd4>
    38dc:	f11ff06f          	j	37ec <_open_file+0x80>

000038e0 <fatfs_sfn_exists>:
    38e0:	fe010113          	addi	sp,sp,-32
    38e4:	01212823          	sw	s2,16(sp)
    38e8:	01312623          	sw	s3,12(sp)
    38ec:	01412423          	sw	s4,8(sp)
    38f0:	01512223          	sw	s5,4(sp)
    38f4:	01612023          	sw	s6,0(sp)
    38f8:	00112e23          	sw	ra,28(sp)
    38fc:	00812c23          	sw	s0,24(sp)
    3900:	00912a23          	sw	s1,20(sp)
    3904:	00050993          	mv	s3,a0
    3908:	00058a93          	mv	s5,a1
    390c:	00060b13          	mv	s6,a2
    3910:	00000913          	li	s2,0
    3914:	24450a13          	addi	s4,a0,580
    3918:	00000693          	li	a3,0
    391c:	00090613          	mv	a2,s2
    3920:	000a8593          	mv	a1,s5
    3924:	00098513          	mv	a0,s3
    3928:	00000097          	auipc	ra,0x0
    392c:	94c080e7          	jalr	-1716(ra) # 3274 <fatfs_sector_reader>
    3930:	00050413          	mv	s0,a0
    3934:	06050263          	beqz	a0,3998 <fatfs_sfn_exists+0xb8>
    3938:	00190913          	addi	s2,s2,1
    393c:	04498493          	addi	s1,s3,68
    3940:	00048513          	mv	a0,s1
    3944:	fffff097          	auipc	ra,0xfffff
    3948:	a58080e7          	jalr	-1448(ra) # 239c <fatfs_entry_lfn_text>
    394c:	00050863          	beqz	a0,395c <fatfs_sfn_exists+0x7c>
    3950:	02048493          	addi	s1,s1,32
    3954:	ff4496e3          	bne	s1,s4,3940 <fatfs_sfn_exists+0x60>
    3958:	fc1ff06f          	j	3918 <fatfs_sfn_exists+0x38>
    395c:	00048513          	mv	a0,s1
    3960:	fffff097          	auipc	ra,0xfffff
    3964:	a50080e7          	jalr	-1456(ra) # 23b0 <fatfs_entry_lfn_invalid>
    3968:	fe0514e3          	bnez	a0,3950 <fatfs_sfn_exists+0x70>
    396c:	00048513          	mv	a0,s1
    3970:	fffff097          	auipc	ra,0xfffff
    3974:	ac4080e7          	jalr	-1340(ra) # 2434 <fatfs_entry_sfn_only>
    3978:	00050413          	mv	s0,a0
    397c:	fc050ae3          	beqz	a0,3950 <fatfs_sfn_exists+0x70>
    3980:	00b00613          	li	a2,11
    3984:	000b0593          	mv	a1,s6
    3988:	00048513          	mv	a0,s1
    398c:	ffffe097          	auipc	ra,0xffffe
    3990:	d14080e7          	jalr	-748(ra) # 16a0 <strncmp>
    3994:	fa051ee3          	bnez	a0,3950 <fatfs_sfn_exists+0x70>
    3998:	01c12083          	lw	ra,28(sp)
    399c:	00040513          	mv	a0,s0
    39a0:	01812403          	lw	s0,24(sp)
    39a4:	01412483          	lw	s1,20(sp)
    39a8:	01012903          	lw	s2,16(sp)
    39ac:	00c12983          	lw	s3,12(sp)
    39b0:	00812a03          	lw	s4,8(sp)
    39b4:	00412a83          	lw	s5,4(sp)
    39b8:	00012b03          	lw	s6,0(sp)
    39bc:	02010113          	addi	sp,sp,32
    39c0:	00008067          	ret

000039c4 <fatfs_update_file_length>:
    39c4:	03852783          	lw	a5,56(a0)
    39c8:	14078e63          	beqz	a5,3b24 <fatfs_update_file_length+0x160>
    39cc:	fd010113          	addi	sp,sp,-48
    39d0:	02912223          	sw	s1,36(sp)
    39d4:	03212023          	sw	s2,32(sp)
    39d8:	01312e23          	sw	s3,28(sp)
    39dc:	01412c23          	sw	s4,24(sp)
    39e0:	01612823          	sw	s6,16(sp)
    39e4:	01712623          	sw	s7,12(sp)
    39e8:	02112623          	sw	ra,44(sp)
    39ec:	02812423          	sw	s0,40(sp)
    39f0:	01512a23          	sw	s5,20(sp)
    39f4:	00068913          	mv	s2,a3
    39f8:	00060b93          	mv	s7,a2
    39fc:	00058b13          	mv	s6,a1
    3a00:	00050493          	mv	s1,a0
    3a04:	00000993          	li	s3,0
    3a08:	24450a13          	addi	s4,a0,580
    3a0c:	00000693          	li	a3,0
    3a10:	00098613          	mv	a2,s3
    3a14:	000b0593          	mv	a1,s6
    3a18:	00048513          	mv	a0,s1
    3a1c:	00000097          	auipc	ra,0x0
    3a20:	858080e7          	jalr	-1960(ra) # 3274 <fatfs_sector_reader>
    3a24:	0c050863          	beqz	a0,3af4 <fatfs_update_file_length+0x130>
    3a28:	04448413          	addi	s0,s1,68
    3a2c:	00198993          	addi	s3,s3,1
    3a30:	00040a93          	mv	s5,s0
    3a34:	00040513          	mv	a0,s0
    3a38:	fffff097          	auipc	ra,0xfffff
    3a3c:	964080e7          	jalr	-1692(ra) # 239c <fatfs_entry_lfn_text>
    3a40:	0a051463          	bnez	a0,3ae8 <fatfs_update_file_length+0x124>
    3a44:	00040513          	mv	a0,s0
    3a48:	fffff097          	auipc	ra,0xfffff
    3a4c:	968080e7          	jalr	-1688(ra) # 23b0 <fatfs_entry_lfn_invalid>
    3a50:	08051c63          	bnez	a0,3ae8 <fatfs_update_file_length+0x124>
    3a54:	00040513          	mv	a0,s0
    3a58:	fffff097          	auipc	ra,0xfffff
    3a5c:	9dc080e7          	jalr	-1572(ra) # 2434 <fatfs_entry_sfn_only>
    3a60:	08050463          	beqz	a0,3ae8 <fatfs_update_file_length+0x124>
    3a64:	00b00613          	li	a2,11
    3a68:	000b8593          	mv	a1,s7
    3a6c:	00040513          	mv	a0,s0
    3a70:	ffffe097          	auipc	ra,0xffffe
    3a74:	c30080e7          	jalr	-976(ra) # 16a0 <strncmp>
    3a78:	06051863          	bnez	a0,3ae8 <fatfs_update_file_length+0x124>
    3a7c:	00895793          	srli	a5,s2,0x8
    3a80:	01240e23          	sb	s2,28(s0)
    3a84:	00f40ea3          	sb	a5,29(s0)
    3a88:	01095793          	srli	a5,s2,0x10
    3a8c:	01895913          	srli	s2,s2,0x18
    3a90:	00f40f23          	sb	a5,30(s0)
    3a94:	01240fa3          	sb	s2,31(s0)
    3a98:	00040593          	mv	a1,s0
    3a9c:	02000613          	li	a2,32
    3aa0:	00040513          	mv	a0,s0
    3aa4:	ffffe097          	auipc	ra,0xffffe
    3aa8:	bb8080e7          	jalr	-1096(ra) # 165c <memcpy>
    3aac:	02812403          	lw	s0,40(sp)
    3ab0:	0384a783          	lw	a5,56(s1)
    3ab4:	2444a503          	lw	a0,580(s1)
    3ab8:	02c12083          	lw	ra,44(sp)
    3abc:	02412483          	lw	s1,36(sp)
    3ac0:	02012903          	lw	s2,32(sp)
    3ac4:	01c12983          	lw	s3,28(sp)
    3ac8:	01812a03          	lw	s4,24(sp)
    3acc:	01012b03          	lw	s6,16(sp)
    3ad0:	00c12b83          	lw	s7,12(sp)
    3ad4:	000a8593          	mv	a1,s5
    3ad8:	01412a83          	lw	s5,20(sp)
    3adc:	00100613          	li	a2,1
    3ae0:	03010113          	addi	sp,sp,48
    3ae4:	00078067          	jr	a5
    3ae8:	02040413          	addi	s0,s0,32
    3aec:	f54414e3          	bne	s0,s4,3a34 <fatfs_update_file_length+0x70>
    3af0:	f1dff06f          	j	3a0c <fatfs_update_file_length+0x48>
    3af4:	02c12083          	lw	ra,44(sp)
    3af8:	02812403          	lw	s0,40(sp)
    3afc:	02412483          	lw	s1,36(sp)
    3b00:	02012903          	lw	s2,32(sp)
    3b04:	01c12983          	lw	s3,28(sp)
    3b08:	01812a03          	lw	s4,24(sp)
    3b0c:	01412a83          	lw	s5,20(sp)
    3b10:	01012b03          	lw	s6,16(sp)
    3b14:	00c12b83          	lw	s7,12(sp)
    3b18:	00000513          	li	a0,0
    3b1c:	03010113          	addi	sp,sp,48
    3b20:	00008067          	ret
    3b24:	00000513          	li	a0,0
    3b28:	00008067          	ret

00003b2c <fatfs_list_directory_next>:
    3b2c:	ec010113          	addi	sp,sp,-320
    3b30:	13212823          	sw	s2,304(sp)
    3b34:	13312623          	sw	s3,300(sp)
    3b38:	13412423          	sw	s4,296(sp)
    3b3c:	13512223          	sw	s5,292(sp)
    3b40:	13612023          	sw	s6,288(sp)
    3b44:	12112e23          	sw	ra,316(sp)
    3b48:	12812c23          	sw	s0,312(sp)
    3b4c:	12912a23          	sw	s1,308(sp)
    3b50:	00050a13          	mv	s4,a0
    3b54:	00058913          	mv	s2,a1
    3b58:	00060993          	mv	s3,a2
    3b5c:	10010ea3          	sb	zero,285(sp)
    3b60:	04450a93          	addi	s5,a0,68
    3b64:	00f00b13          	li	s6,15
    3b68:	00092603          	lw	a2,0(s2)
    3b6c:	00492583          	lw	a1,4(s2)
    3b70:	00000693          	li	a3,0
    3b74:	000a0513          	mv	a0,s4
    3b78:	fffff097          	auipc	ra,0xfffff
    3b7c:	6fc080e7          	jalr	1788(ra) # 3274 <fatfs_sector_reader>
    3b80:	10050c63          	beqz	a0,3c98 <fatfs_list_directory_next+0x16c>
    3b84:	00894483          	lbu	s1,8(s2)
    3b88:	00549413          	slli	s0,s1,0x5
    3b8c:	008a8433          	add	s0,s5,s0
    3b90:	009b7c63          	bgeu	s6,s1,3ba8 <fatfs_list_directory_next+0x7c>
    3b94:	00092783          	lw	a5,0(s2)
    3b98:	00090423          	sb	zero,8(s2)
    3b9c:	00178793          	addi	a5,a5,1
    3ba0:	00f92023          	sw	a5,0(s2)
    3ba4:	fc5ff06f          	j	3b68 <fatfs_list_directory_next+0x3c>
    3ba8:	00040513          	mv	a0,s0
    3bac:	ffffe097          	auipc	ra,0xffffe
    3bb0:	7f0080e7          	jalr	2032(ra) # 239c <fatfs_entry_lfn_text>
    3bb4:	02050263          	beqz	a0,3bd8 <fatfs_list_directory_next+0xac>
    3bb8:	00040593          	mv	a1,s0
    3bbc:	01810513          	addi	a0,sp,24
    3bc0:	ffffe097          	auipc	ra,0xffffe
    3bc4:	6d4080e7          	jalr	1748(ra) # 2294 <fatfs_lfn_cache_entry>
    3bc8:	00148493          	addi	s1,s1,1
    3bcc:	0ff4f493          	zext.b	s1,s1
    3bd0:	02040413          	addi	s0,s0,32
    3bd4:	fbdff06f          	j	3b90 <fatfs_list_directory_next+0x64>
    3bd8:	00040513          	mv	a0,s0
    3bdc:	ffffe097          	auipc	ra,0xffffe
    3be0:	7d4080e7          	jalr	2004(ra) # 23b0 <fatfs_entry_lfn_invalid>
    3be4:	00050663          	beqz	a0,3bf0 <fatfs_list_directory_next+0xc4>
    3be8:	10010ea3          	sb	zero,285(sp)
    3bec:	fddff06f          	j	3bc8 <fatfs_list_directory_next+0x9c>
    3bf0:	00040593          	mv	a1,s0
    3bf4:	01810513          	addi	a0,sp,24
    3bf8:	ffffe097          	auipc	ra,0xffffe
    3bfc:	7ec080e7          	jalr	2028(ra) # 23e4 <fatfs_entry_lfn_exists>
    3c00:	0c050063          	beqz	a0,3cc0 <fatfs_list_directory_next+0x194>
    3c04:	01810513          	addi	a0,sp,24
    3c08:	ffffe097          	auipc	ra,0xffffe
    3c0c:	758080e7          	jalr	1880(ra) # 2360 <fatfs_lfn_cache_get>
    3c10:	00050593          	mv	a1,a0
    3c14:	10300613          	li	a2,259
    3c18:	00098513          	mv	a0,s3
    3c1c:	ffffe097          	auipc	ra,0xffffe
    3c20:	ac4080e7          	jalr	-1340(ra) # 16e0 <strncpy>
    3c24:	00040513          	mv	a0,s0
    3c28:	fffff097          	auipc	ra,0xfffff
    3c2c:	84c080e7          	jalr	-1972(ra) # 2474 <fatfs_entry_is_dir>
    3c30:	10a98223          	sb	a0,260(s3)
    3c34:	01d44783          	lbu	a5,29(s0)
    3c38:	01c44703          	lbu	a4,28(s0)
    3c3c:	00148493          	addi	s1,s1,1
    3c40:	00879793          	slli	a5,a5,0x8
    3c44:	00e7e7b3          	or	a5,a5,a4
    3c48:	01e44703          	lbu	a4,30(s0)
    3c4c:	00100513          	li	a0,1
    3c50:	01071713          	slli	a4,a4,0x10
    3c54:	00f76733          	or	a4,a4,a5
    3c58:	01f44783          	lbu	a5,31(s0)
    3c5c:	01879793          	slli	a5,a5,0x18
    3c60:	00e7e7b3          	or	a5,a5,a4
    3c64:	10f9a623          	sw	a5,268(s3)
    3c68:	01544783          	lbu	a5,21(s0)
    3c6c:	01444703          	lbu	a4,20(s0)
    3c70:	01a44683          	lbu	a3,26(s0)
    3c74:	00879793          	slli	a5,a5,0x8
    3c78:	00e7e7b3          	or	a5,a5,a4
    3c7c:	01b44703          	lbu	a4,27(s0)
    3c80:	01079793          	slli	a5,a5,0x10
    3c84:	00871713          	slli	a4,a4,0x8
    3c88:	00d76733          	or	a4,a4,a3
    3c8c:	00e7e7b3          	or	a5,a5,a4
    3c90:	10f9a423          	sw	a5,264(s3)
    3c94:	00990423          	sb	s1,8(s2)
    3c98:	13c12083          	lw	ra,316(sp)
    3c9c:	13812403          	lw	s0,312(sp)
    3ca0:	13412483          	lw	s1,308(sp)
    3ca4:	13012903          	lw	s2,304(sp)
    3ca8:	12c12983          	lw	s3,300(sp)
    3cac:	12812a03          	lw	s4,296(sp)
    3cb0:	12412a83          	lw	s5,292(sp)
    3cb4:	12012b03          	lw	s6,288(sp)
    3cb8:	14010113          	addi	sp,sp,320
    3cbc:	00008067          	ret
    3cc0:	00040513          	mv	a0,s0
    3cc4:	ffffe097          	auipc	ra,0xffffe
    3cc8:	770080e7          	jalr	1904(ra) # 2434 <fatfs_entry_sfn_only>
    3ccc:	ee050ee3          	beqz	a0,3bc8 <fatfs_list_directory_next+0x9c>
    3cd0:	00810a13          	addi	s4,sp,8
    3cd4:	00d00613          	li	a2,13
    3cd8:	00000593          	li	a1,0
    3cdc:	000a0513          	mv	a0,s4
    3ce0:	10010ea3          	sb	zero,285(sp)
    3ce4:	ffffe097          	auipc	ra,0xffffe
    3ce8:	95c080e7          	jalr	-1700(ra) # 1640 <memset>
    3cec:	00000793          	li	a5,0
    3cf0:	00800713          	li	a4,8
    3cf4:	00f40633          	add	a2,s0,a5
    3cf8:	00064603          	lbu	a2,0(a2)
    3cfc:	00fa06b3          	add	a3,s4,a5
    3d00:	00178793          	addi	a5,a5,1
    3d04:	00c68023          	sb	a2,0(a3)
    3d08:	fee796e3          	bne	a5,a4,3cf4 <fatfs_list_directory_next+0x1c8>
    3d0c:	00844783          	lbu	a5,8(s0)
    3d10:	00944703          	lbu	a4,9(s0)
    3d14:	00a44683          	lbu	a3,10(s0)
    3d18:	00f108a3          	sb	a5,17(sp)
    3d1c:	00e10923          	sb	a4,18(sp)
    3d20:	fe078793          	addi	a5,a5,-32
    3d24:	fe070713          	addi	a4,a4,-32
    3d28:	00f037b3          	snez	a5,a5
    3d2c:	00e03733          	snez	a4,a4
    3d30:	00d109a3          	sb	a3,19(sp)
    3d34:	00e7e7b3          	or	a5,a5,a4
    3d38:	00079863          	bnez	a5,3d48 <fatfs_list_directory_next+0x21c>
    3d3c:	fe068693          	addi	a3,a3,-32
    3d40:	02000793          	li	a5,32
    3d44:	00068a63          	beqz	a3,3d58 <fatfs_list_directory_next+0x22c>
    3d48:	00814703          	lbu	a4,8(sp)
    3d4c:	02e00793          	li	a5,46
    3d50:	00f71463          	bne	a4,a5,3d58 <fatfs_list_directory_next+0x22c>
    3d54:	02000793          	li	a5,32
    3d58:	000a0593          	mv	a1,s4
    3d5c:	00098513          	mv	a0,s3
    3d60:	00f10823          	sb	a5,16(sp)
    3d64:	fffff097          	auipc	ra,0xfffff
    3d68:	054080e7          	jalr	84(ra) # 2db8 <fatfs_get_sfn_display_name>
    3d6c:	eb9ff06f          	j	3c24 <fatfs_list_directory_next+0xf8>

00003d70 <fl_readdir>:
    3d70:	000057b7          	lui	a5,0x5
    3d74:	7687a783          	lw	a5,1896(a5) # 5768 <_filelib_init>
    3d78:	fd010113          	addi	sp,sp,-48
    3d7c:	03212023          	sw	s2,32(sp)
    3d80:	01312e23          	sw	s3,28(sp)
    3d84:	02112623          	sw	ra,44(sp)
    3d88:	02812423          	sw	s0,40(sp)
    3d8c:	02912223          	sw	s1,36(sp)
    3d90:	00050913          	mv	s2,a0
    3d94:	00058993          	mv	s3,a1
    3d98:	00079663          	bnez	a5,3da4 <fl_readdir+0x34>
    3d9c:	ffffe097          	auipc	ra,0xffffe
    3da0:	488080e7          	jalr	1160(ra) # 2224 <fl_init>
    3da4:	0000c4b7          	lui	s1,0xc
    3da8:	9ec48413          	addi	s0,s1,-1556 # b9ec <_fs>
    3dac:	03c42783          	lw	a5,60(s0)
    3db0:	00078463          	beqz	a5,3db8 <fl_readdir+0x48>
    3db4:	000780e7          	jalr	a5
    3db8:	00098613          	mv	a2,s3
    3dbc:	00090593          	mv	a1,s2
    3dc0:	9ec48513          	addi	a0,s1,-1556
    3dc4:	00000097          	auipc	ra,0x0
    3dc8:	d68080e7          	jalr	-664(ra) # 3b2c <fatfs_list_directory_next>
    3dcc:	04042783          	lw	a5,64(s0)
    3dd0:	00078863          	beqz	a5,3de0 <fl_readdir+0x70>
    3dd4:	00a12623          	sw	a0,12(sp)
    3dd8:	000780e7          	jalr	a5
    3ddc:	00c12503          	lw	a0,12(sp)
    3de0:	02c12083          	lw	ra,44(sp)
    3de4:	02812403          	lw	s0,40(sp)
    3de8:	00154513          	xori	a0,a0,1
    3dec:	02412483          	lw	s1,36(sp)
    3df0:	02012903          	lw	s2,32(sp)
    3df4:	01c12983          	lw	s3,28(sp)
    3df8:	40a00533          	neg	a0,a0
    3dfc:	03010113          	addi	sp,sp,48
    3e00:	00008067          	ret

00003e04 <_read_sectors>:
    3e04:	fd010113          	addi	sp,sp,-48
    3e08:	01512a23          	sw	s5,20(sp)
    3e0c:	0000cab7          	lui	s5,0xc
    3e10:	01312e23          	sw	s3,28(sp)
    3e14:	9ecac983          	lbu	s3,-1556(s5) # b9ec <_fs>
    3e18:	01612823          	sw	s6,16(sp)
    3e1c:	00058b13          	mv	s6,a1
    3e20:	02912223          	sw	s1,36(sp)
    3e24:	00098593          	mv	a1,s3
    3e28:	00050493          	mv	s1,a0
    3e2c:	000b0513          	mv	a0,s6
    3e30:	02112623          	sw	ra,44(sp)
    3e34:	02812423          	sw	s0,40(sp)
    3e38:	01412c23          	sw	s4,24(sp)
    3e3c:	00068413          	mv	s0,a3
    3e40:	01712623          	sw	s7,12(sp)
    3e44:	01812423          	sw	s8,8(sp)
    3e48:	03212023          	sw	s2,32(sp)
    3e4c:	00060c13          	mv	s8,a2
    3e50:	ffffd097          	auipc	ra,0xffffd
    3e54:	744080e7          	jalr	1860(ra) # 1594 <__udivsi3>
    3e58:	00050a13          	mv	s4,a0
    3e5c:	00098593          	mv	a1,s3
    3e60:	000b0513          	mv	a0,s6
    3e64:	ffffd097          	auipc	ra,0xffffd
    3e68:	778080e7          	jalr	1912(ra) # 15dc <__umodsi3>
    3e6c:	00a407b3          	add	a5,s0,a0
    3e70:	00050b93          	mv	s7,a0
    3e74:	00f9fe63          	bgeu	s3,a5,3e90 <_read_sectors+0x8c>
    3e78:	000a0593          	mv	a1,s4
    3e7c:	00098513          	mv	a0,s3
    3e80:	ffffe097          	auipc	ra,0xffffe
    3e84:	f10080e7          	jalr	-240(ra) # 1d90 <__mulsi3>
    3e88:	416987b3          	sub	a5,s3,s6
    3e8c:	00f50433          	add	s0,a0,a5
    3e90:	2284a903          	lw	s2,552(s1)
    3e94:	07491863          	bne	s2,s4,3f04 <_read_sectors+0x100>
    3e98:	22c4a583          	lw	a1,556(s1)
    3e9c:	fff00793          	li	a5,-1
    3ea0:	02f58663          	beq	a1,a5,3ecc <_read_sectors+0xc8>
    3ea4:	9eca8513          	addi	a0,s5,-1556
    3ea8:	ffffe097          	auipc	ra,0xffffe
    3eac:	24c080e7          	jalr	588(ra) # 20f4 <fatfs_lba_of_cluster>
    3eb0:	017505b3          	add	a1,a0,s7
    3eb4:	00040693          	mv	a3,s0
    3eb8:	000c0613          	mv	a2,s8
    3ebc:	9eca8513          	addi	a0,s5,-1556
    3ec0:	ffffe097          	auipc	ra,0xffffe
    3ec4:	280080e7          	jalr	640(ra) # 2140 <fatfs_sector_read>
    3ec8:	00051463          	bnez	a0,3ed0 <_read_sectors+0xcc>
    3ecc:	00000413          	li	s0,0
    3ed0:	02c12083          	lw	ra,44(sp)
    3ed4:	00040513          	mv	a0,s0
    3ed8:	02812403          	lw	s0,40(sp)
    3edc:	02412483          	lw	s1,36(sp)
    3ee0:	02012903          	lw	s2,32(sp)
    3ee4:	01c12983          	lw	s3,28(sp)
    3ee8:	01812a03          	lw	s4,24(sp)
    3eec:	01412a83          	lw	s5,20(sp)
    3ef0:	01012b03          	lw	s6,16(sp)
    3ef4:	00c12b83          	lw	s7,12(sp)
    3ef8:	00812c03          	lw	s8,8(sp)
    3efc:	03010113          	addi	sp,sp,48
    3f00:	00008067          	ret
    3f04:	033b6463          	bltu	s6,s3,3f2c <_read_sectors+0x128>
    3f08:	00190793          	addi	a5,s2,1
    3f0c:	03479063          	bne	a5,s4,3f2c <_read_sectors+0x128>
    3f10:	22c4a583          	lw	a1,556(s1)
    3f14:	03496263          	bltu	s2,s4,3f38 <_read_sectors+0x134>
    3f18:	fff00793          	li	a5,-1
    3f1c:	faf588e3          	beq	a1,a5,3ecc <_read_sectors+0xc8>
    3f20:	22b4a623          	sw	a1,556(s1)
    3f24:	2344a423          	sw	s4,552(s1)
    3f28:	f7dff06f          	j	3ea4 <_read_sectors+0xa0>
    3f2c:	0044a583          	lw	a1,4(s1)
    3f30:	00000913          	li	s2,0
    3f34:	fe1ff06f          	j	3f14 <_read_sectors+0x110>
    3f38:	9eca8513          	addi	a0,s5,-1556
    3f3c:	fffff097          	auipc	ra,0xfffff
    3f40:	230080e7          	jalr	560(ra) # 316c <fatfs_find_next_cluster>
    3f44:	00050593          	mv	a1,a0
    3f48:	00190913          	addi	s2,s2,1
    3f4c:	fc9ff06f          	j	3f14 <_read_sectors+0x110>

00003f50 <fatfs_set_fs_info_next_free_cluster>:
    3f50:	03052783          	lw	a5,48(a0)
    3f54:	0a078463          	beqz	a5,3ffc <fatfs_set_fs_info_next_free_cluster+0xac>
    3f58:	fe010113          	addi	sp,sp,-32
    3f5c:	01c52783          	lw	a5,28(a0)
    3f60:	00912a23          	sw	s1,20(sp)
    3f64:	00058493          	mv	s1,a1
    3f68:	01855583          	lhu	a1,24(a0)
    3f6c:	00812c23          	sw	s0,24(sp)
    3f70:	00112e23          	sw	ra,28(sp)
    3f74:	00f585b3          	add	a1,a1,a5
    3f78:	00050413          	mv	s0,a0
    3f7c:	ffffe097          	auipc	ra,0xffffe
    3f80:	fcc080e7          	jalr	-52(ra) # 1f48 <fatfs_fat_read_sector>
    3f84:	00050593          	mv	a1,a0
    3f88:	06050063          	beqz	a0,3fe8 <fatfs_set_fs_info_next_free_cluster+0x98>
    3f8c:	20852783          	lw	a5,520(a0)
    3f90:	0084d713          	srli	a4,s1,0x8
    3f94:	00100613          	li	a2,1
    3f98:	1e978623          	sb	s1,492(a5)
    3f9c:	20852783          	lw	a5,520(a0)
    3fa0:	1ee786a3          	sb	a4,493(a5)
    3fa4:	20852783          	lw	a5,520(a0)
    3fa8:	0104d713          	srli	a4,s1,0x10
    3fac:	1ee78723          	sb	a4,494(a5)
    3fb0:	20852783          	lw	a5,520(a0)
    3fb4:	0184d713          	srli	a4,s1,0x18
    3fb8:	1ee787a3          	sb	a4,495(a5)
    3fbc:	03842783          	lw	a5,56(s0)
    3fc0:	20c52223          	sw	a2,516(a0)
    3fc4:	02942223          	sw	s1,36(s0)
    3fc8:	00078a63          	beqz	a5,3fdc <fatfs_set_fs_info_next_free_cluster+0x8c>
    3fcc:	20052503          	lw	a0,512(a0)
    3fd0:	00b12623          	sw	a1,12(sp)
    3fd4:	000780e7          	jalr	a5
    3fd8:	00c12583          	lw	a1,12(sp)
    3fdc:	fff00793          	li	a5,-1
    3fe0:	20f5a023          	sw	a5,512(a1)
    3fe4:	2005a223          	sw	zero,516(a1)
    3fe8:	01c12083          	lw	ra,28(sp)
    3fec:	01812403          	lw	s0,24(sp)
    3ff0:	01412483          	lw	s1,20(sp)
    3ff4:	02010113          	addi	sp,sp,32
    3ff8:	00008067          	ret
    3ffc:	00008067          	ret

00004000 <fatfs_find_blank_cluster>:
    4000:	fd010113          	addi	sp,sp,-48
    4004:	01312e23          	sw	s3,28(sp)
    4008:	100009b7          	lui	s3,0x10000
    400c:	02912223          	sw	s1,36(sp)
    4010:	03212023          	sw	s2,32(sp)
    4014:	02112623          	sw	ra,44(sp)
    4018:	02812423          	sw	s0,40(sp)
    401c:	00050913          	mv	s2,a0
    4020:	00058493          	mv	s1,a1
    4024:	fff98993          	addi	s3,s3,-1 # fffffff <__stacktop+0xffeffff>
    4028:	03092783          	lw	a5,48(s2)
    402c:	0074d413          	srli	s0,s1,0x7
    4030:	00079463          	bnez	a5,4038 <fatfs_find_blank_cluster+0x38>
    4034:	0084d413          	srli	s0,s1,0x8
    4038:	02092783          	lw	a5,32(s2)
    403c:	0cf47863          	bgeu	s0,a5,410c <fatfs_find_blank_cluster+0x10c>
    4040:	01492583          	lw	a1,20(s2)
    4044:	00090513          	mv	a0,s2
    4048:	00c12623          	sw	a2,12(sp)
    404c:	00b405b3          	add	a1,s0,a1
    4050:	ffffe097          	auipc	ra,0xffffe
    4054:	ef8080e7          	jalr	-264(ra) # 1f48 <fatfs_fat_read_sector>
    4058:	0a050a63          	beqz	a0,410c <fatfs_find_blank_cluster+0x10c>
    405c:	03092783          	lw	a5,48(s2)
    4060:	20852703          	lw	a4,520(a0)
    4064:	00c12603          	lw	a2,12(sp)
    4068:	04079a63          	bnez	a5,40bc <fatfs_find_blank_cluster+0xbc>
    406c:	00841413          	slli	s0,s0,0x8
    4070:	40848433          	sub	s0,s1,s0
    4074:	00141413          	slli	s0,s0,0x1
    4078:	01041413          	slli	s0,s0,0x10
    407c:	01045413          	srli	s0,s0,0x10
    4080:	00870733          	add	a4,a4,s0
    4084:	00174783          	lbu	a5,1(a4)
    4088:	00074703          	lbu	a4,0(a4)
    408c:	00879793          	slli	a5,a5,0x8
    4090:	00e787b3          	add	a5,a5,a4
    4094:	06079863          	bnez	a5,4104 <fatfs_find_blank_cluster+0x104>
    4098:	00962023          	sw	s1,0(a2)
    409c:	00100513          	li	a0,1
    40a0:	02c12083          	lw	ra,44(sp)
    40a4:	02812403          	lw	s0,40(sp)
    40a8:	02412483          	lw	s1,36(sp)
    40ac:	02012903          	lw	s2,32(sp)
    40b0:	01c12983          	lw	s3,28(sp)
    40b4:	03010113          	addi	sp,sp,48
    40b8:	00008067          	ret
    40bc:	00741413          	slli	s0,s0,0x7
    40c0:	40848433          	sub	s0,s1,s0
    40c4:	00241413          	slli	s0,s0,0x2
    40c8:	01041413          	slli	s0,s0,0x10
    40cc:	01045413          	srli	s0,s0,0x10
    40d0:	00870733          	add	a4,a4,s0
    40d4:	00374783          	lbu	a5,3(a4)
    40d8:	00274683          	lbu	a3,2(a4)
    40dc:	01879793          	slli	a5,a5,0x18
    40e0:	01069693          	slli	a3,a3,0x10
    40e4:	00d787b3          	add	a5,a5,a3
    40e8:	00074683          	lbu	a3,0(a4)
    40ec:	00174703          	lbu	a4,1(a4)
    40f0:	00d787b3          	add	a5,a5,a3
    40f4:	00871713          	slli	a4,a4,0x8
    40f8:	00e787b3          	add	a5,a5,a4
    40fc:	0137f7b3          	and	a5,a5,s3
    4100:	f95ff06f          	j	4094 <fatfs_find_blank_cluster+0x94>
    4104:	00148493          	addi	s1,s1,1
    4108:	f21ff06f          	j	4028 <fatfs_find_blank_cluster+0x28>
    410c:	00000513          	li	a0,0
    4110:	f91ff06f          	j	40a0 <fatfs_find_blank_cluster+0xa0>

00004114 <fatfs_fat_set_cluster>:
    4114:	03052783          	lw	a5,48(a0)
    4118:	fe010113          	addi	sp,sp,-32
    411c:	00812c23          	sw	s0,24(sp)
    4120:	00912a23          	sw	s1,20(sp)
    4124:	01212823          	sw	s2,16(sp)
    4128:	00112e23          	sw	ra,28(sp)
    412c:	00050913          	mv	s2,a0
    4130:	00058413          	mv	s0,a1
    4134:	0085d493          	srli	s1,a1,0x8
    4138:	00078463          	beqz	a5,4140 <fatfs_fat_set_cluster+0x2c>
    413c:	0075d493          	srli	s1,a1,0x7
    4140:	01492583          	lw	a1,20(s2)
    4144:	00090513          	mv	a0,s2
    4148:	00c12623          	sw	a2,12(sp)
    414c:	00b485b3          	add	a1,s1,a1
    4150:	ffffe097          	auipc	ra,0xffffe
    4154:	df8080e7          	jalr	-520(ra) # 1f48 <fatfs_fat_read_sector>
    4158:	00050793          	mv	a5,a0
    415c:	00000513          	li	a0,0
    4160:	04078663          	beqz	a5,41ac <fatfs_fat_set_cluster+0x98>
    4164:	03092683          	lw	a3,48(s2)
    4168:	2087a703          	lw	a4,520(a5)
    416c:	00c12603          	lw	a2,12(sp)
    4170:	04069a63          	bnez	a3,41c4 <fatfs_fat_set_cluster+0xb0>
    4174:	00849493          	slli	s1,s1,0x8
    4178:	40940433          	sub	s0,s0,s1
    417c:	00141413          	slli	s0,s0,0x1
    4180:	01041413          	slli	s0,s0,0x10
    4184:	01045413          	srli	s0,s0,0x10
    4188:	00870733          	add	a4,a4,s0
    418c:	00c70023          	sb	a2,0(a4)
    4190:	2087a703          	lw	a4,520(a5)
    4194:	00865613          	srli	a2,a2,0x8
    4198:	00870733          	add	a4,a4,s0
    419c:	00c700a3          	sb	a2,1(a4)
    41a0:	00100713          	li	a4,1
    41a4:	20e7a223          	sw	a4,516(a5)
    41a8:	00100513          	li	a0,1
    41ac:	01c12083          	lw	ra,28(sp)
    41b0:	01812403          	lw	s0,24(sp)
    41b4:	01412483          	lw	s1,20(sp)
    41b8:	01012903          	lw	s2,16(sp)
    41bc:	02010113          	addi	sp,sp,32
    41c0:	00008067          	ret
    41c4:	00749493          	slli	s1,s1,0x7
    41c8:	40940433          	sub	s0,s0,s1
    41cc:	00241413          	slli	s0,s0,0x2
    41d0:	01041413          	slli	s0,s0,0x10
    41d4:	01045413          	srli	s0,s0,0x10
    41d8:	00870733          	add	a4,a4,s0
    41dc:	00c70023          	sb	a2,0(a4)
    41e0:	2087a703          	lw	a4,520(a5)
    41e4:	00865693          	srli	a3,a2,0x8
    41e8:	00870733          	add	a4,a4,s0
    41ec:	00d700a3          	sb	a3,1(a4)
    41f0:	2087a703          	lw	a4,520(a5)
    41f4:	01065693          	srli	a3,a2,0x10
    41f8:	01865613          	srli	a2,a2,0x18
    41fc:	00870733          	add	a4,a4,s0
    4200:	00d70123          	sb	a3,2(a4)
    4204:	2087a703          	lw	a4,520(a5)
    4208:	00870733          	add	a4,a4,s0
    420c:	00c701a3          	sb	a2,3(a4)
    4210:	f91ff06f          	j	41a0 <fatfs_fat_set_cluster+0x8c>

00004214 <fatfs_free_cluster_chain>:
    4214:	fe010113          	addi	sp,sp,-32
    4218:	00812c23          	sw	s0,24(sp)
    421c:	00912a23          	sw	s1,20(sp)
    4220:	00112e23          	sw	ra,28(sp)
    4224:	01212823          	sw	s2,16(sp)
    4228:	00050493          	mv	s1,a0
    422c:	ffd00413          	li	s0,-3
    4230:	fff58793          	addi	a5,a1,-1
    4234:	02f47063          	bgeu	s0,a5,4254 <fatfs_free_cluster_chain+0x40>
    4238:	01c12083          	lw	ra,28(sp)
    423c:	01812403          	lw	s0,24(sp)
    4240:	01412483          	lw	s1,20(sp)
    4244:	01012903          	lw	s2,16(sp)
    4248:	00100513          	li	a0,1
    424c:	02010113          	addi	sp,sp,32
    4250:	00008067          	ret
    4254:	00048513          	mv	a0,s1
    4258:	00b12623          	sw	a1,12(sp)
    425c:	fffff097          	auipc	ra,0xfffff
    4260:	f10080e7          	jalr	-240(ra) # 316c <fatfs_find_next_cluster>
    4264:	00c12583          	lw	a1,12(sp)
    4268:	00050913          	mv	s2,a0
    426c:	00000613          	li	a2,0
    4270:	00048513          	mv	a0,s1
    4274:	00000097          	auipc	ra,0x0
    4278:	ea0080e7          	jalr	-352(ra) # 4114 <fatfs_fat_set_cluster>
    427c:	00090593          	mv	a1,s2
    4280:	fb1ff06f          	j	4230 <fatfs_free_cluster_chain+0x1c>

00004284 <fatfs_fat_add_cluster_to_chain>:
    4284:	fd010113          	addi	sp,sp,-48
    4288:	02912223          	sw	s1,36(sp)
    428c:	02112623          	sw	ra,44(sp)
    4290:	02812423          	sw	s0,40(sp)
    4294:	03212023          	sw	s2,32(sp)
    4298:	01312e23          	sw	s3,28(sp)
    429c:	fff00493          	li	s1,-1
    42a0:	02959263          	bne	a1,s1,42c4 <fatfs_fat_add_cluster_to_chain+0x40>
    42a4:	00000513          	li	a0,0
    42a8:	02c12083          	lw	ra,44(sp)
    42ac:	02812403          	lw	s0,40(sp)
    42b0:	02412483          	lw	s1,36(sp)
    42b4:	02012903          	lw	s2,32(sp)
    42b8:	01c12983          	lw	s3,28(sp)
    42bc:	03010113          	addi	sp,sp,48
    42c0:	00008067          	ret
    42c4:	00050913          	mv	s2,a0
    42c8:	00058413          	mv	s0,a1
    42cc:	00060993          	mv	s3,a2
    42d0:	00040593          	mv	a1,s0
    42d4:	00090513          	mv	a0,s2
    42d8:	00812623          	sw	s0,12(sp)
    42dc:	fffff097          	auipc	ra,0xfffff
    42e0:	e90080e7          	jalr	-368(ra) # 316c <fatfs_find_next_cluster>
    42e4:	00050413          	mv	s0,a0
    42e8:	fa050ee3          	beqz	a0,42a4 <fatfs_fat_add_cluster_to_chain+0x20>
    42ec:	00c12583          	lw	a1,12(sp)
    42f0:	fe9510e3          	bne	a0,s1,42d0 <fatfs_fat_add_cluster_to_chain+0x4c>
    42f4:	00098613          	mv	a2,s3
    42f8:	00090513          	mv	a0,s2
    42fc:	00000097          	auipc	ra,0x0
    4300:	e18080e7          	jalr	-488(ra) # 4114 <fatfs_fat_set_cluster>
    4304:	00040613          	mv	a2,s0
    4308:	00098593          	mv	a1,s3
    430c:	00090513          	mv	a0,s2
    4310:	00000097          	auipc	ra,0x0
    4314:	e04080e7          	jalr	-508(ra) # 4114 <fatfs_fat_set_cluster>
    4318:	00100513          	li	a0,1
    431c:	f8dff06f          	j	42a8 <fatfs_fat_add_cluster_to_chain+0x24>

00004320 <fatfs_add_free_space>:
    4320:	02452783          	lw	a5,36(a0)
    4324:	fd010113          	addi	sp,sp,-48
    4328:	02812423          	sw	s0,40(sp)
    432c:	01312e23          	sw	s3,28(sp)
    4330:	01412c23          	sw	s4,24(sp)
    4334:	0005a983          	lw	s3,0(a1)
    4338:	01512a23          	sw	s5,20(sp)
    433c:	00058a13          	mv	s4,a1
    4340:	02112623          	sw	ra,44(sp)
    4344:	02912223          	sw	s1,36(sp)
    4348:	03212023          	sw	s2,32(sp)
    434c:	fff00593          	li	a1,-1
    4350:	00050413          	mv	s0,a0
    4354:	00060a93          	mv	s5,a2
    4358:	00b78663          	beq	a5,a1,4364 <fatfs_add_free_space+0x44>
    435c:	00000097          	auipc	ra,0x0
    4360:	bf4080e7          	jalr	-1036(ra) # 3f50 <fatfs_set_fs_info_next_free_cluster>
    4364:	00000493          	li	s1,0
    4368:	03549663          	bne	s1,s5,4394 <fatfs_add_free_space+0x74>
    436c:	00100513          	li	a0,1
    4370:	02c12083          	lw	ra,44(sp)
    4374:	02812403          	lw	s0,40(sp)
    4378:	02412483          	lw	s1,36(sp)
    437c:	02012903          	lw	s2,32(sp)
    4380:	01c12983          	lw	s3,28(sp)
    4384:	01812a03          	lw	s4,24(sp)
    4388:	01412a83          	lw	s5,20(sp)
    438c:	03010113          	addi	sp,sp,48
    4390:	00008067          	ret
    4394:	00842583          	lw	a1,8(s0)
    4398:	00c10613          	addi	a2,sp,12
    439c:	00040513          	mv	a0,s0
    43a0:	00000097          	auipc	ra,0x0
    43a4:	c60080e7          	jalr	-928(ra) # 4000 <fatfs_find_blank_cluster>
    43a8:	fc0504e3          	beqz	a0,4370 <fatfs_add_free_space+0x50>
    43ac:	00c12903          	lw	s2,12(sp)
    43b0:	00098593          	mv	a1,s3
    43b4:	00040513          	mv	a0,s0
    43b8:	00090613          	mv	a2,s2
    43bc:	00000097          	auipc	ra,0x0
    43c0:	d58080e7          	jalr	-680(ra) # 4114 <fatfs_fat_set_cluster>
    43c4:	fff00613          	li	a2,-1
    43c8:	00090593          	mv	a1,s2
    43cc:	00040513          	mv	a0,s0
    43d0:	00000097          	auipc	ra,0x0
    43d4:	d44080e7          	jalr	-700(ra) # 4114 <fatfs_fat_set_cluster>
    43d8:	00049463          	bnez	s1,43e0 <fatfs_add_free_space+0xc0>
    43dc:	012a2023          	sw	s2,0(s4)
    43e0:	00148493          	addi	s1,s1,1
    43e4:	00090993          	mv	s3,s2
    43e8:	f81ff06f          	j	4368 <fatfs_add_free_space+0x48>

000043ec <_write_sectors>:
    43ec:	fb010113          	addi	sp,sp,-80
    43f0:	03512a23          	sw	s5,52(sp)
    43f4:	0000cab7          	lui	s5,0xc
    43f8:	04112623          	sw	ra,76(sp)
    43fc:	04812423          	sw	s0,72(sp)
    4400:	04912223          	sw	s1,68(sp)
    4404:	03412c23          	sw	s4,56(sp)
    4408:	03612823          	sw	s6,48(sp)
    440c:	03712623          	sw	s7,44(sp)
    4410:	03812423          	sw	s8,40(sp)
    4414:	03912223          	sw	s9,36(sp)
    4418:	03a12023          	sw	s10,32(sp)
    441c:	05212023          	sw	s2,64(sp)
    4420:	03312e23          	sw	s3,60(sp)
    4424:	9eca8b93          	addi	s7,s5,-1556 # b9ec <_fs>
    4428:	000bc983          	lbu	s3,0(s7)
    442c:	00058b13          	mv	s6,a1
    4430:	fff00793          	li	a5,-1
    4434:	00098593          	mv	a1,s3
    4438:	00050493          	mv	s1,a0
    443c:	000b0513          	mv	a0,s6
    4440:	00068c13          	mv	s8,a3
    4444:	00f12e23          	sw	a5,28(sp)
    4448:	00060d13          	mv	s10,a2
    444c:	ffffd097          	auipc	ra,0xffffd
    4450:	148080e7          	jalr	328(ra) # 1594 <__udivsi3>
    4454:	00050a13          	mv	s4,a0
    4458:	00098593          	mv	a1,s3
    445c:	000b0513          	mv	a0,s6
    4460:	ffffd097          	auipc	ra,0xffffd
    4464:	17c080e7          	jalr	380(ra) # 15dc <__umodsi3>
    4468:	00ac07b3          	add	a5,s8,a0
    446c:	00050c93          	mv	s9,a0
    4470:	000c0413          	mv	s0,s8
    4474:	00f9fe63          	bgeu	s3,a5,4490 <_write_sectors+0xa4>
    4478:	000a0593          	mv	a1,s4
    447c:	00098513          	mv	a0,s3
    4480:	ffffe097          	auipc	ra,0xffffe
    4484:	910080e7          	jalr	-1776(ra) # 1d90 <__mulsi3>
    4488:	416987b3          	sub	a5,s3,s6
    448c:	00f50433          	add	s0,a0,a5
    4490:	2284a903          	lw	s2,552(s1)
    4494:	03491a63          	bne	s2,s4,44c8 <_write_sectors+0xdc>
    4498:	22c4a583          	lw	a1,556(s1)
    449c:	9eca8513          	addi	a0,s5,-1556
    44a0:	ffffe097          	auipc	ra,0xffffe
    44a4:	c54080e7          	jalr	-940(ra) # 20f4 <fatfs_lba_of_cluster>
    44a8:	019505b3          	add	a1,a0,s9
    44ac:	00040693          	mv	a3,s0
    44b0:	000d0613          	mv	a2,s10
    44b4:	9eca8513          	addi	a0,s5,-1556
    44b8:	ffffe097          	auipc	ra,0xffffe
    44bc:	ca0080e7          	jalr	-864(ra) # 2158 <fatfs_sector_write>
    44c0:	04050a63          	beqz	a0,4514 <_write_sectors+0x128>
    44c4:	0540006f          	j	4518 <_write_sectors+0x12c>
    44c8:	093b6663          	bltu	s6,s3,4554 <_write_sectors+0x168>
    44cc:	00190793          	addi	a5,s2,1
    44d0:	09479263          	bne	a5,s4,4554 <_write_sectors+0x168>
    44d4:	22c4a583          	lw	a1,556(s1)
    44d8:	fff00b13          	li	s6,-1
    44dc:	09496263          	bltu	s2,s4,4560 <_write_sectors+0x174>
    44e0:	fff00793          	li	a5,-1
    44e4:	0af59463          	bne	a1,a5,458c <_write_sectors+0x1a0>
    44e8:	000bc583          	lbu	a1,0(s7)
    44ec:	fff58513          	addi	a0,a1,-1
    44f0:	01850533          	add	a0,a0,s8
    44f4:	ffffd097          	auipc	ra,0xffffd
    44f8:	0a0080e7          	jalr	160(ra) # 1594 <__udivsi3>
    44fc:	00050613          	mv	a2,a0
    4500:	01c10593          	addi	a1,sp,28
    4504:	000b8513          	mv	a0,s7
    4508:	00000097          	auipc	ra,0x0
    450c:	e18080e7          	jalr	-488(ra) # 4320 <fatfs_add_free_space>
    4510:	06051c63          	bnez	a0,4588 <_write_sectors+0x19c>
    4514:	00000413          	li	s0,0
    4518:	04c12083          	lw	ra,76(sp)
    451c:	00040513          	mv	a0,s0
    4520:	04812403          	lw	s0,72(sp)
    4524:	04412483          	lw	s1,68(sp)
    4528:	04012903          	lw	s2,64(sp)
    452c:	03c12983          	lw	s3,60(sp)
    4530:	03812a03          	lw	s4,56(sp)
    4534:	03412a83          	lw	s5,52(sp)
    4538:	03012b03          	lw	s6,48(sp)
    453c:	02c12b83          	lw	s7,44(sp)
    4540:	02812c03          	lw	s8,40(sp)
    4544:	02412c83          	lw	s9,36(sp)
    4548:	02012d03          	lw	s10,32(sp)
    454c:	05010113          	addi	sp,sp,80
    4550:	00008067          	ret
    4554:	0044a583          	lw	a1,4(s1)
    4558:	00000913          	li	s2,0
    455c:	f7dff06f          	j	44d8 <_write_sectors+0xec>
    4560:	9eca8513          	addi	a0,s5,-1556
    4564:	00b12623          	sw	a1,12(sp)
    4568:	fffff097          	auipc	ra,0xfffff
    456c:	c04080e7          	jalr	-1020(ra) # 316c <fatfs_find_next_cluster>
    4570:	00c12583          	lw	a1,12(sp)
    4574:	00b12e23          	sw	a1,28(sp)
    4578:	f76508e3          	beq	a0,s6,44e8 <_write_sectors+0xfc>
    457c:	00190913          	addi	s2,s2,1
    4580:	00050593          	mv	a1,a0
    4584:	f59ff06f          	j	44dc <_write_sectors+0xf0>
    4588:	01c12583          	lw	a1,28(sp)
    458c:	22b4a623          	sw	a1,556(s1)
    4590:	2344a423          	sw	s4,552(s1)
    4594:	f09ff06f          	j	449c <_write_sectors+0xb0>

00004598 <fl_fflush>:
    4598:	000057b7          	lui	a5,0x5
    459c:	7687a783          	lw	a5,1896(a5) # 5768 <_filelib_init>
    45a0:	ff010113          	addi	sp,sp,-16
    45a4:	00812423          	sw	s0,8(sp)
    45a8:	00112623          	sw	ra,12(sp)
    45ac:	00912223          	sw	s1,4(sp)
    45b0:	00050413          	mv	s0,a0
    45b4:	00079663          	bnez	a5,45c0 <fl_fflush+0x28>
    45b8:	ffffe097          	auipc	ra,0xffffe
    45bc:	c6c080e7          	jalr	-916(ra) # 2224 <fl_init>
    45c0:	04040663          	beqz	s0,460c <fl_fflush+0x74>
    45c4:	0000c4b7          	lui	s1,0xc
    45c8:	9ec48493          	addi	s1,s1,-1556 # b9ec <_fs>
    45cc:	03c4a783          	lw	a5,60(s1)
    45d0:	00078463          	beqz	a5,45d8 <fl_fflush+0x40>
    45d4:	000780e7          	jalr	a5
    45d8:	43442783          	lw	a5,1076(s0)
    45dc:	02078263          	beqz	a5,4600 <fl_fflush+0x68>
    45e0:	43042583          	lw	a1,1072(s0)
    45e4:	00100693          	li	a3,1
    45e8:	23040613          	addi	a2,s0,560
    45ec:	00040513          	mv	a0,s0
    45f0:	00000097          	auipc	ra,0x0
    45f4:	dfc080e7          	jalr	-516(ra) # 43ec <_write_sectors>
    45f8:	00050463          	beqz	a0,4600 <fl_fflush+0x68>
    45fc:	42042a23          	sw	zero,1076(s0)
    4600:	0404a783          	lw	a5,64(s1)
    4604:	00078463          	beqz	a5,460c <fl_fflush+0x74>
    4608:	000780e7          	jalr	a5
    460c:	00c12083          	lw	ra,12(sp)
    4610:	00812403          	lw	s0,8(sp)
    4614:	00412483          	lw	s1,4(sp)
    4618:	00000513          	li	a0,0
    461c:	01010113          	addi	sp,sp,16
    4620:	00008067          	ret

00004624 <fl_fclose>:
    4624:	000057b7          	lui	a5,0x5
    4628:	7687a783          	lw	a5,1896(a5) # 5768 <_filelib_init>
    462c:	ff010113          	addi	sp,sp,-16
    4630:	00812423          	sw	s0,8(sp)
    4634:	00112623          	sw	ra,12(sp)
    4638:	00912223          	sw	s1,4(sp)
    463c:	01212023          	sw	s2,0(sp)
    4640:	00050413          	mv	s0,a0
    4644:	00079663          	bnez	a5,4650 <fl_fclose+0x2c>
    4648:	ffffe097          	auipc	ra,0xffffe
    464c:	bdc080e7          	jalr	-1060(ra) # 2224 <fl_init>
    4650:	08040c63          	beqz	s0,46e8 <fl_fclose+0xc4>
    4654:	0000c4b7          	lui	s1,0xc
    4658:	9ec48913          	addi	s2,s1,-1556 # b9ec <_fs>
    465c:	03c92783          	lw	a5,60(s2)
    4660:	00078463          	beqz	a5,4668 <fl_fclose+0x44>
    4664:	000780e7          	jalr	a5
    4668:	00040513          	mv	a0,s0
    466c:	00000097          	auipc	ra,0x0
    4670:	f2c080e7          	jalr	-212(ra) # 4598 <fl_fflush>
    4674:	01042783          	lw	a5,16(s0)
    4678:	00078e63          	beqz	a5,4694 <fl_fclose+0x70>
    467c:	00c42683          	lw	a3,12(s0)
    4680:	00042583          	lw	a1,0(s0)
    4684:	21c40613          	addi	a2,s0,540
    4688:	9ec48513          	addi	a0,s1,-1556
    468c:	fffff097          	auipc	ra,0xfffff
    4690:	338080e7          	jalr	824(ra) # 39c4 <fatfs_update_file_length>
    4694:	fff00793          	li	a5,-1
    4698:	42f42823          	sw	a5,1072(s0)
    469c:	00040513          	mv	a0,s0
    46a0:	00042423          	sw	zero,8(s0)
    46a4:	00042623          	sw	zero,12(s0)
    46a8:	00042223          	sw	zero,4(s0)
    46ac:	42042a23          	sw	zero,1076(s0)
    46b0:	00042823          	sw	zero,16(s0)
    46b4:	ffffe097          	auipc	ra,0xffffe
    46b8:	9f8080e7          	jalr	-1544(ra) # 20ac <_free_file>
    46bc:	9ec48513          	addi	a0,s1,-1556
    46c0:	fffff097          	auipc	ra,0xfffff
    46c4:	a54080e7          	jalr	-1452(ra) # 3114 <fatfs_fat_purge>
    46c8:	04092783          	lw	a5,64(s2)
    46cc:	00078e63          	beqz	a5,46e8 <fl_fclose+0xc4>
    46d0:	00812403          	lw	s0,8(sp)
    46d4:	00c12083          	lw	ra,12(sp)
    46d8:	00412483          	lw	s1,4(sp)
    46dc:	00012903          	lw	s2,0(sp)
    46e0:	01010113          	addi	sp,sp,16
    46e4:	00078067          	jr	a5
    46e8:	00c12083          	lw	ra,12(sp)
    46ec:	00812403          	lw	s0,8(sp)
    46f0:	00412483          	lw	s1,4(sp)
    46f4:	00012903          	lw	s2,0(sp)
    46f8:	01010113          	addi	sp,sp,16
    46fc:	00008067          	ret

00004700 <fl_fread>:
    4700:	000057b7          	lui	a5,0x5
    4704:	7687a783          	lw	a5,1896(a5) # 5768 <_filelib_init>
    4708:	fc010113          	addi	sp,sp,-64
    470c:	02812c23          	sw	s0,56(sp)
    4710:	03512223          	sw	s5,36(sp)
    4714:	02112e23          	sw	ra,60(sp)
    4718:	02912a23          	sw	s1,52(sp)
    471c:	03212823          	sw	s2,48(sp)
    4720:	03312623          	sw	s3,44(sp)
    4724:	03412423          	sw	s4,40(sp)
    4728:	03612023          	sw	s6,32(sp)
    472c:	01712e23          	sw	s7,28(sp)
    4730:	01812c23          	sw	s8,24(sp)
    4734:	01912a23          	sw	s9,20(sp)
    4738:	00050a93          	mv	s5,a0
    473c:	00068413          	mv	s0,a3
    4740:	00058513          	mv	a0,a1
    4744:	00079e63          	bnez	a5,4760 <fl_fread+0x60>
    4748:	00c12623          	sw	a2,12(sp)
    474c:	00b12423          	sw	a1,8(sp)
    4750:	ffffe097          	auipc	ra,0xffffe
    4754:	ad4080e7          	jalr	-1324(ra) # 2224 <fl_init>
    4758:	00c12603          	lw	a2,12(sp)
    475c:	00812503          	lw	a0,8(sp)
    4760:	14040e63          	beqz	s0,48bc <fl_fread+0x1bc>
    4764:	140a8c63          	beqz	s5,48bc <fl_fread+0x1bc>
    4768:	43844783          	lbu	a5,1080(s0)
    476c:	fff00493          	li	s1,-1
    4770:	0017f793          	andi	a5,a5,1
    4774:	04078863          	beqz	a5,47c4 <fl_fread+0xc4>
    4778:	00060593          	mv	a1,a2
    477c:	ffffd097          	auipc	ra,0xffffd
    4780:	614080e7          	jalr	1556(ra) # 1d90 <__mulsi3>
    4784:	00050493          	mv	s1,a0
    4788:	02050e63          	beqz	a0,47c4 <fl_fread+0xc4>
    478c:	00842583          	lw	a1,8(s0)
    4790:	00c42783          	lw	a5,12(s0)
    4794:	12f5f463          	bgeu	a1,a5,48bc <fl_fread+0x1bc>
    4798:	00b50733          	add	a4,a0,a1
    479c:	00e7f463          	bgeu	a5,a4,47a4 <fl_fread+0xa4>
    47a0:	40b784b3          	sub	s1,a5,a1
    47a4:	0095da13          	srli	s4,a1,0x9
    47a8:	1ff5f913          	andi	s2,a1,511
    47ac:	00000993          	li	s3,0
    47b0:	23040b13          	addi	s6,s0,560
    47b4:	20000b93          	li	s7,512
    47b8:	1ff00c13          	li	s8,511
    47bc:	0499c063          	blt	s3,s1,47fc <fl_fread+0xfc>
    47c0:	00098493          	mv	s1,s3
    47c4:	03c12083          	lw	ra,60(sp)
    47c8:	03812403          	lw	s0,56(sp)
    47cc:	03012903          	lw	s2,48(sp)
    47d0:	02c12983          	lw	s3,44(sp)
    47d4:	02812a03          	lw	s4,40(sp)
    47d8:	02412a83          	lw	s5,36(sp)
    47dc:	02012b03          	lw	s6,32(sp)
    47e0:	01c12b83          	lw	s7,28(sp)
    47e4:	01812c03          	lw	s8,24(sp)
    47e8:	01412c83          	lw	s9,20(sp)
    47ec:	00048513          	mv	a0,s1
    47f0:	03412483          	lw	s1,52(sp)
    47f4:	04010113          	addi	sp,sp,64
    47f8:	00008067          	ret
    47fc:	04091663          	bnez	s2,4848 <fl_fread+0x148>
    4800:	413486b3          	sub	a3,s1,s3
    4804:	04dc5263          	bge	s8,a3,4848 <fl_fread+0x148>
    4808:	4096d693          	srai	a3,a3,0x9
    480c:	013a8633          	add	a2,s5,s3
    4810:	000a0593          	mv	a1,s4
    4814:	00040513          	mv	a0,s0
    4818:	fffff097          	auipc	ra,0xfffff
    481c:	5ec080e7          	jalr	1516(ra) # 3e04 <_read_sectors>
    4820:	fa0500e3          	beqz	a0,47c0 <fl_fread+0xc0>
    4824:	00951c93          	slli	s9,a0,0x9
    4828:	000c8613          	mv	a2,s9
    482c:	00aa0a33          	add	s4,s4,a0
    4830:	00842783          	lw	a5,8(s0)
    4834:	00c989b3          	add	s3,s3,a2
    4838:	00000913          	li	s2,0
    483c:	019787b3          	add	a5,a5,s9
    4840:	00f42423          	sw	a5,8(s0)
    4844:	f79ff06f          	j	47bc <fl_fread+0xbc>
    4848:	43042783          	lw	a5,1072(s0)
    484c:	03478e63          	beq	a5,s4,4888 <fl_fread+0x188>
    4850:	43442783          	lw	a5,1076(s0)
    4854:	00078863          	beqz	a5,4864 <fl_fread+0x164>
    4858:	00040513          	mv	a0,s0
    485c:	00000097          	auipc	ra,0x0
    4860:	d3c080e7          	jalr	-708(ra) # 4598 <fl_fflush>
    4864:	00100693          	li	a3,1
    4868:	000b0613          	mv	a2,s6
    486c:	000a0593          	mv	a1,s4
    4870:	00040513          	mv	a0,s0
    4874:	fffff097          	auipc	ra,0xfffff
    4878:	590080e7          	jalr	1424(ra) # 3e04 <_read_sectors>
    487c:	f40502e3          	beqz	a0,47c0 <fl_fread+0xc0>
    4880:	43442823          	sw	s4,1072(s0)
    4884:	42042a23          	sw	zero,1076(s0)
    4888:	412b87b3          	sub	a5,s7,s2
    488c:	41348633          	sub	a2,s1,s3
    4890:	00c7d463          	bge	a5,a2,4898 <fl_fread+0x198>
    4894:	00078613          	mv	a2,a5
    4898:	012b05b3          	add	a1,s6,s2
    489c:	013a8533          	add	a0,s5,s3
    48a0:	00060c93          	mv	s9,a2
    48a4:	00c12423          	sw	a2,8(sp)
    48a8:	ffffd097          	auipc	ra,0xffffd
    48ac:	db4080e7          	jalr	-588(ra) # 165c <memcpy>
    48b0:	00812603          	lw	a2,8(sp)
    48b4:	001a0a13          	addi	s4,s4,1
    48b8:	f79ff06f          	j	4830 <fl_fread+0x130>
    48bc:	fff00493          	li	s1,-1
    48c0:	f05ff06f          	j	47c4 <fl_fread+0xc4>

000048c4 <fatfs_allocate_free_space>:
    48c4:	fd010113          	addi	sp,sp,-48
    48c8:	02112623          	sw	ra,44(sp)
    48cc:	02812423          	sw	s0,40(sp)
    48d0:	02912223          	sw	s1,36(sp)
    48d4:	03212023          	sw	s2,32(sp)
    48d8:	01312e23          	sw	s3,28(sp)
    48dc:	01412c23          	sw	s4,24(sp)
    48e0:	01512a23          	sw	s5,20(sp)
    48e4:	02069863          	bnez	a3,4914 <fatfs_allocate_free_space+0x50>
    48e8:	00000413          	li	s0,0
    48ec:	02c12083          	lw	ra,44(sp)
    48f0:	00040513          	mv	a0,s0
    48f4:	02812403          	lw	s0,40(sp)
    48f8:	02412483          	lw	s1,36(sp)
    48fc:	02012903          	lw	s2,32(sp)
    4900:	01c12983          	lw	s3,28(sp)
    4904:	01812a03          	lw	s4,24(sp)
    4908:	01412a83          	lw	s5,20(sp)
    490c:	03010113          	addi	sp,sp,48
    4910:	00008067          	ret
    4914:	02452783          	lw	a5,36(a0)
    4918:	00058a13          	mv	s4,a1
    491c:	fff00593          	li	a1,-1
    4920:	00050493          	mv	s1,a0
    4924:	00068913          	mv	s2,a3
    4928:	00060993          	mv	s3,a2
    492c:	00b78663          	beq	a5,a1,4938 <fatfs_allocate_free_space+0x74>
    4930:	fffff097          	auipc	ra,0xfffff
    4934:	620080e7          	jalr	1568(ra) # 3f50 <fatfs_set_fs_info_next_free_cluster>
    4938:	0004c783          	lbu	a5,0(s1)
    493c:	00090513          	mv	a0,s2
    4940:	00979a93          	slli	s5,a5,0x9
    4944:	000a8593          	mv	a1,s5
    4948:	ffffd097          	auipc	ra,0xffffd
    494c:	c4c080e7          	jalr	-948(ra) # 1594 <__udivsi3>
    4950:	00050413          	mv	s0,a0
    4954:	00050593          	mv	a1,a0
    4958:	000a8513          	mv	a0,s5
    495c:	ffffd097          	auipc	ra,0xffffd
    4960:	434080e7          	jalr	1076(ra) # 1d90 <__mulsi3>
    4964:	41250533          	sub	a0,a0,s2
    4968:	00a03533          	snez	a0,a0
    496c:	00a40933          	add	s2,s0,a0
    4970:	040a0463          	beqz	s4,49b8 <fatfs_allocate_free_space+0xf4>
    4974:	0084a583          	lw	a1,8(s1)
    4978:	00c10613          	addi	a2,sp,12
    497c:	00048513          	mv	a0,s1
    4980:	fffff097          	auipc	ra,0xfffff
    4984:	680080e7          	jalr	1664(ra) # 4000 <fatfs_find_blank_cluster>
    4988:	00050413          	mv	s0,a0
    498c:	f4050ee3          	beqz	a0,48e8 <fatfs_allocate_free_space+0x24>
    4990:	00100793          	li	a5,1
    4994:	02f91663          	bne	s2,a5,49c0 <fatfs_allocate_free_space+0xfc>
    4998:	00c12903          	lw	s2,12(sp)
    499c:	fff00613          	li	a2,-1
    49a0:	00048513          	mv	a0,s1
    49a4:	00090593          	mv	a1,s2
    49a8:	fffff097          	auipc	ra,0xfffff
    49ac:	76c080e7          	jalr	1900(ra) # 4114 <fatfs_fat_set_cluster>
    49b0:	0129a023          	sw	s2,0(s3)
    49b4:	f39ff06f          	j	48ec <fatfs_allocate_free_space+0x28>
    49b8:	0009a783          	lw	a5,0(s3)
    49bc:	00f12623          	sw	a5,12(sp)
    49c0:	00090613          	mv	a2,s2
    49c4:	00c10593          	addi	a1,sp,12
    49c8:	00048513          	mv	a0,s1
    49cc:	00000097          	auipc	ra,0x0
    49d0:	954080e7          	jalr	-1708(ra) # 4320 <fatfs_add_free_space>
    49d4:	00050413          	mv	s0,a0
    49d8:	f15ff06f          	j	48ec <fatfs_allocate_free_space+0x28>

000049dc <fatfs_add_file_entry>:
    49dc:	03852883          	lw	a7,56(a0)
    49e0:	30088e63          	beqz	a7,4cfc <fatfs_add_file_entry+0x320>
    49e4:	f8010113          	addi	sp,sp,-128
    49e8:	06812c23          	sw	s0,120(sp)
    49ec:	00050413          	mv	s0,a0
    49f0:	00060513          	mv	a0,a2
    49f4:	06912a23          	sw	s1,116(sp)
    49f8:	07512223          	sw	s5,100(sp)
    49fc:	00f12c23          	sw	a5,24(sp)
    4a00:	00e12a23          	sw	a4,20(sp)
    4a04:	06112e23          	sw	ra,124(sp)
    4a08:	07212823          	sw	s2,112(sp)
    4a0c:	07312623          	sw	s3,108(sp)
    4a10:	07412423          	sw	s4,104(sp)
    4a14:	07612023          	sw	s6,96(sp)
    4a18:	05712e23          	sw	s7,92(sp)
    4a1c:	05812c23          	sw	s8,88(sp)
    4a20:	05912a23          	sw	s9,84(sp)
    4a24:	05a12823          	sw	s10,80(sp)
    4a28:	05b12623          	sw	s11,76(sp)
    4a2c:	01012e23          	sw	a6,28(sp)
    4a30:	00068a93          	mv	s5,a3
    4a34:	00c12823          	sw	a2,16(sp)
    4a38:	00b12423          	sw	a1,8(sp)
    4a3c:	ffffe097          	auipc	ra,0xffffe
    4a40:	a48080e7          	jalr	-1464(ra) # 2484 <fatfs_lfn_entries_required>
    4a44:	00150713          	addi	a4,a0,1
    4a48:	00100793          	li	a5,1
    4a4c:	00050493          	mv	s1,a0
    4a50:	2ae7f263          	bgeu	a5,a4,4cf4 <fatfs_add_file_entry+0x318>
    4a54:	00000a13          	li	s4,0
    4a58:	00000993          	li	s3,0
    4a5c:	00000913          	li	s2,0
    4a60:	00000c93          	li	s9,0
    4a64:	00000b13          	li	s6,0
    4a68:	01000c13          	li	s8,16
    4a6c:	00812583          	lw	a1,8(sp)
    4a70:	00000693          	li	a3,0
    4a74:	000b0613          	mv	a2,s6
    4a78:	00040513          	mv	a0,s0
    4a7c:	000b0b93          	mv	s7,s6
    4a80:	ffffe097          	auipc	ra,0xffffe
    4a84:	7f4080e7          	jalr	2036(ra) # 3274 <fatfs_sector_reader>
    4a88:	18050463          	beqz	a0,4c10 <fatfs_add_file_entry+0x234>
    4a8c:	001b0b13          	addi	s6,s6,1
    4a90:	04440793          	addi	a5,s0,68
    4a94:	000c8d13          	mv	s10,s9
    4a98:	00000d93          	li	s11,0
    4a9c:	00078513          	mv	a0,a5
    4aa0:	00f12623          	sw	a5,12(sp)
    4aa4:	ffffe097          	auipc	ra,0xffffe
    4aa8:	8f8080e7          	jalr	-1800(ra) # 239c <fatfs_entry_lfn_text>
    4aac:	00c12783          	lw	a5,12(sp)
    4ab0:	00050c93          	mv	s9,a0
    4ab4:	02050c63          	beqz	a0,4aec <fatfs_add_file_entry+0x110>
    4ab8:	020d0463          	beqz	s10,4ae0 <fatfs_add_file_entry+0x104>
    4abc:	00090c93          	mv	s9,s2
    4ac0:	000c8913          	mv	s2,s9
    4ac4:	001d0c93          	addi	s9,s10,1
    4ac8:	001d8d93          	addi	s11,s11,1
    4acc:	0ffdfd93          	zext.b	s11,s11
    4ad0:	02078793          	addi	a5,a5,32
    4ad4:	f98d8ce3          	beq	s11,s8,4a6c <fatfs_add_file_entry+0x90>
    4ad8:	000c8d13          	mv	s10,s9
    4adc:	fc1ff06f          	j	4a9c <fatfs_add_file_entry+0xc0>
    4ae0:	000d8a13          	mv	s4,s11
    4ae4:	000b8993          	mv	s3,s7
    4ae8:	fd9ff06f          	j	4ac0 <fatfs_add_file_entry+0xe4>
    4aec:	0007c683          	lbu	a3,0(a5)
    4af0:	0e500713          	li	a4,229
    4af4:	10e69863          	bne	a3,a4,4c04 <fatfs_add_file_entry+0x228>
    4af8:	000d1863          	bnez	s10,4b08 <fatfs_add_file_entry+0x12c>
    4afc:	000d8a13          	mv	s4,s11
    4b00:	000b8993          	mv	s3,s7
    4b04:	00100913          	li	s2,1
    4b08:	fa9d4ee3          	blt	s10,s1,4ac4 <fatfs_add_file_entry+0xe8>
    4b0c:	00ba8693          	addi	a3,s5,11
    4b10:	000a8713          	mv	a4,s5
    4b14:	00000913          	li	s2,0
    4b18:	00074603          	lbu	a2,0(a4)
    4b1c:	00195793          	srli	a5,s2,0x1
    4b20:	00791913          	slli	s2,s2,0x7
    4b24:	012787b3          	add	a5,a5,s2
    4b28:	00170713          	addi	a4,a4,1
    4b2c:	00c787b3          	add	a5,a5,a2
    4b30:	0ff7f913          	zext.b	s2,a5
    4b34:	fed712e3          	bne	a4,a3,4b18 <fatfs_add_file_entry+0x13c>
    4b38:	00098b13          	mv	s6,s3
    4b3c:	00000d13          	li	s10,0
    4b40:	01000b93          	li	s7,16
    4b44:	00812583          	lw	a1,8(sp)
    4b48:	00000693          	li	a3,0
    4b4c:	000b0613          	mv	a2,s6
    4b50:	00040513          	mv	a0,s0
    4b54:	ffffe097          	auipc	ra,0xffffe
    4b58:	720080e7          	jalr	1824(ra) # 3274 <fatfs_sector_reader>
    4b5c:	18050c63          	beqz	a0,4cf4 <fatfs_add_file_entry+0x318>
    4b60:	04440c93          	addi	s9,s0,68
    4b64:	413b0db3          	sub	s11,s6,s3
    4b68:	00000793          	li	a5,0
    4b6c:	00000c13          	li	s8,0
    4b70:	01912623          	sw	s9,12(sp)
    4b74:	000d1663          	bnez	s10,4b80 <fatfs_add_file_entry+0x1a4>
    4b78:	154c1863          	bne	s8,s4,4cc8 <fatfs_add_file_entry+0x2ec>
    4b7c:	140d9663          	bnez	s11,4cc8 <fatfs_add_file_entry+0x2ec>
    4b80:	12049263          	bnez	s1,4ca4 <fatfs_add_file_entry+0x2c8>
    4b84:	01c12703          	lw	a4,28(sp)
    4b88:	01412603          	lw	a2,20(sp)
    4b8c:	01812583          	lw	a1,24(sp)
    4b90:	02010693          	addi	a3,sp,32
    4b94:	000a8513          	mv	a0,s5
    4b98:	ffffe097          	auipc	ra,0xffffe
    4b9c:	a30080e7          	jalr	-1488(ra) # 25c8 <fatfs_sfn_create_entry>
    4ba0:	02000613          	li	a2,32
    4ba4:	00c105b3          	add	a1,sp,a2
    4ba8:	000c8513          	mv	a0,s9
    4bac:	ffffd097          	auipc	ra,0xffffd
    4bb0:	ab0080e7          	jalr	-1360(ra) # 165c <memcpy>
    4bb4:	03842783          	lw	a5,56(s0)
    4bb8:	00c12583          	lw	a1,12(sp)
    4bbc:	24442503          	lw	a0,580(s0)
    4bc0:	00100613          	li	a2,1
    4bc4:	000780e7          	jalr	a5
    4bc8:	07c12083          	lw	ra,124(sp)
    4bcc:	07812403          	lw	s0,120(sp)
    4bd0:	07412483          	lw	s1,116(sp)
    4bd4:	07012903          	lw	s2,112(sp)
    4bd8:	06c12983          	lw	s3,108(sp)
    4bdc:	06812a03          	lw	s4,104(sp)
    4be0:	06412a83          	lw	s5,100(sp)
    4be4:	06012b03          	lw	s6,96(sp)
    4be8:	05c12b83          	lw	s7,92(sp)
    4bec:	05812c03          	lw	s8,88(sp)
    4bf0:	05412c83          	lw	s9,84(sp)
    4bf4:	05012d03          	lw	s10,80(sp)
    4bf8:	04c12d83          	lw	s11,76(sp)
    4bfc:	08010113          	addi	sp,sp,128
    4c00:	00008067          	ret
    4c04:	ee068ae3          	beqz	a3,4af8 <fatfs_add_file_entry+0x11c>
    4c08:	00000913          	li	s2,0
    4c0c:	ebdff06f          	j	4ac8 <fatfs_add_file_entry+0xec>
    4c10:	00842583          	lw	a1,8(s0)
    4c14:	02010613          	addi	a2,sp,32
    4c18:	00040513          	mv	a0,s0
    4c1c:	fffff097          	auipc	ra,0xfffff
    4c20:	3e4080e7          	jalr	996(ra) # 4000 <fatfs_find_blank_cluster>
    4c24:	0c050863          	beqz	a0,4cf4 <fatfs_add_file_entry+0x318>
    4c28:	02012b83          	lw	s7,32(sp)
    4c2c:	00812583          	lw	a1,8(sp)
    4c30:	00040513          	mv	a0,s0
    4c34:	000b8613          	mv	a2,s7
    4c38:	fffff097          	auipc	ra,0xfffff
    4c3c:	64c080e7          	jalr	1612(ra) # 4284 <fatfs_fat_add_cluster_to_chain>
    4c40:	0a050a63          	beqz	a0,4cf4 <fatfs_add_file_entry+0x318>
    4c44:	20000613          	li	a2,512
    4c48:	00000593          	li	a1,0
    4c4c:	04440513          	addi	a0,s0,68
    4c50:	ffffd097          	auipc	ra,0xffffd
    4c54:	9f0080e7          	jalr	-1552(ra) # 1640 <memset>
    4c58:	00000c13          	li	s8,0
    4c5c:	00044783          	lbu	a5,0(s0)
    4c60:	00fc6a63          	bltu	s8,a5,4c74 <fatfs_add_file_entry+0x298>
    4c64:	ea0914e3          	bnez	s2,4b0c <fatfs_add_file_entry+0x130>
    4c68:	000b0993          	mv	s3,s6
    4c6c:	00000a13          	li	s4,0
    4c70:	e9dff06f          	j	4b0c <fatfs_add_file_entry+0x130>
    4c74:	00000693          	li	a3,0
    4c78:	000c0613          	mv	a2,s8
    4c7c:	000b8593          	mv	a1,s7
    4c80:	00040513          	mv	a0,s0
    4c84:	ffffd097          	auipc	ra,0xffffd
    4c88:	4ec080e7          	jalr	1260(ra) # 2170 <fatfs_write_sector>
    4c8c:	06050463          	beqz	a0,4cf4 <fatfs_add_file_entry+0x318>
    4c90:	001c0c13          	addi	s8,s8,1
    4c94:	0ffc7c13          	zext.b	s8,s8
    4c98:	fc5ff06f          	j	4c5c <fatfs_add_file_entry+0x280>
    4c9c:	001b0b13          	addi	s6,s6,1
    4ca0:	ea5ff06f          	j	4b44 <fatfs_add_file_entry+0x168>
    4ca4:	01012503          	lw	a0,16(sp)
    4ca8:	fff48493          	addi	s1,s1,-1
    4cac:	00090693          	mv	a3,s2
    4cb0:	00048613          	mv	a2,s1
    4cb4:	000c8593          	mv	a1,s9
    4cb8:	ffffd097          	auipc	ra,0xffffd
    4cbc:	7fc080e7          	jalr	2044(ra) # 24b4 <fatfs_filename_to_lfn>
    4cc0:	00100d13          	li	s10,1
    4cc4:	000d0793          	mv	a5,s10
    4cc8:	001c0c13          	addi	s8,s8,1
    4ccc:	0ffc7c13          	zext.b	s8,s8
    4cd0:	020c8c93          	addi	s9,s9,32
    4cd4:	eb7c10e3          	bne	s8,s7,4b74 <fatfs_add_file_entry+0x198>
    4cd8:	fc0782e3          	beqz	a5,4c9c <fatfs_add_file_entry+0x2c0>
    4cdc:	03842783          	lw	a5,56(s0)
    4ce0:	00c12583          	lw	a1,12(sp)
    4ce4:	24442503          	lw	a0,580(s0)
    4ce8:	00100613          	li	a2,1
    4cec:	000780e7          	jalr	a5
    4cf0:	fa0516e3          	bnez	a0,4c9c <fatfs_add_file_entry+0x2c0>
    4cf4:	00000513          	li	a0,0
    4cf8:	ed1ff06f          	j	4bc8 <fatfs_add_file_entry+0x1ec>
    4cfc:	00000513          	li	a0,0
    4d00:	00008067          	ret

00004d04 <fl_fopen>:
    4d04:	000057b7          	lui	a5,0x5
    4d08:	7687a783          	lw	a5,1896(a5) # 5768 <_filelib_init>
    4d0c:	fa010113          	addi	sp,sp,-96
    4d10:	05212823          	sw	s2,80(sp)
    4d14:	03a12823          	sw	s10,48(sp)
    4d18:	04112e23          	sw	ra,92(sp)
    4d1c:	04812c23          	sw	s0,88(sp)
    4d20:	04912a23          	sw	s1,84(sp)
    4d24:	05312623          	sw	s3,76(sp)
    4d28:	05412423          	sw	s4,72(sp)
    4d2c:	05512223          	sw	s5,68(sp)
    4d30:	05612023          	sw	s6,64(sp)
    4d34:	03712e23          	sw	s7,60(sp)
    4d38:	03812c23          	sw	s8,56(sp)
    4d3c:	03912a23          	sw	s9,52(sp)
    4d40:	00050d13          	mv	s10,a0
    4d44:	00058913          	mv	s2,a1
    4d48:	00079663          	bnez	a5,4d54 <fl_fopen+0x50>
    4d4c:	ffffd097          	auipc	ra,0xffffd
    4d50:	4d8080e7          	jalr	1240(ra) # 2224 <fl_init>
    4d54:	000057b7          	lui	a5,0x5
    4d58:	7647a783          	lw	a5,1892(a5) # 5764 <_filelib_valid>
    4d5c:	00193713          	seqz	a4,s2
    4d60:	0017b793          	seqz	a5,a5
    4d64:	00e7e7b3          	or	a5,a5,a4
    4d68:	36079e63          	bnez	a5,50e4 <fl_fopen+0x3e0>
    4d6c:	360d0c63          	beqz	s10,50e4 <fl_fopen+0x3e0>
    4d70:	00000493          	li	s1,0
    4d74:	00000413          	li	s0,0
    4d78:	05700993          	li	s3,87
    4d7c:	07200a13          	li	s4,114
    4d80:	07700b13          	li	s6,119
    4d84:	06100b93          	li	s7,97
    4d88:	06200c13          	li	s8,98
    4d8c:	04100a93          	li	s5,65
    4d90:	04200c93          	li	s9,66
    4d94:	00090513          	mv	a0,s2
    4d98:	ffffd097          	auipc	ra,0xffffd
    4d9c:	8e8080e7          	jalr	-1816(ra) # 1680 <strlen>
    4da0:	10a44a63          	blt	s0,a0,4eb4 <fl_fopen+0x1b0>
    4da4:	0000c9b7          	lui	s3,0xc
    4da8:	9ec98a13          	addi	s4,s3,-1556 # b9ec <_fs>
    4dac:	038a2783          	lw	a5,56(s4)
    4db0:	00079463          	bnez	a5,4db8 <fl_fopen+0xb4>
    4db4:	fd94f493          	andi	s1,s1,-39
    4db8:	03ca2783          	lw	a5,60(s4)
    4dbc:	00078463          	beqz	a5,4dc4 <fl_fopen+0xc0>
    4dc0:	000780e7          	jalr	a5
    4dc4:	0014f793          	andi	a5,s1,1
    4dc8:	18079263          	bnez	a5,4f4c <fl_fopen+0x248>
    4dcc:	0204f793          	andi	a5,s1,32
    4dd0:	08078c63          	beqz	a5,4e68 <fl_fopen+0x164>
    4dd4:	038a2783          	lw	a5,56(s4)
    4dd8:	06078a63          	beqz	a5,4e4c <fl_fopen+0x148>
    4ddc:	ffffd097          	auipc	ra,0xffffd
    4de0:	258080e7          	jalr	600(ra) # 2034 <_allocate_file>
    4de4:	00050413          	mv	s0,a0
    4de8:	06050263          	beqz	a0,4e4c <fl_fopen+0x148>
    4dec:	01450a93          	addi	s5,a0,20
    4df0:	10400613          	li	a2,260
    4df4:	00000593          	li	a1,0
    4df8:	000a8513          	mv	a0,s5
    4dfc:	ffffd097          	auipc	ra,0xffffd
    4e00:	844080e7          	jalr	-1980(ra) # 1640 <memset>
    4e04:	11840b13          	addi	s6,s0,280
    4e08:	10400613          	li	a2,260
    4e0c:	00000593          	li	a1,0
    4e10:	000b0513          	mv	a0,s6
    4e14:	ffffd097          	auipc	ra,0xffffd
    4e18:	82c080e7          	jalr	-2004(ra) # 1640 <memset>
    4e1c:	10400713          	li	a4,260
    4e20:	000b0693          	mv	a3,s6
    4e24:	00070613          	mv	a2,a4
    4e28:	000a8593          	mv	a1,s5
    4e2c:	000d0513          	mv	a0,s10
    4e30:	ffffe097          	auipc	ra,0xffffe
    4e34:	c88080e7          	jalr	-888(ra) # 2ab8 <fatfs_split_path>
    4e38:	fff00793          	li	a5,-1
    4e3c:	12f51663          	bne	a0,a5,4f68 <fl_fopen+0x264>
    4e40:	00040513          	mv	a0,s0
    4e44:	ffffd097          	auipc	ra,0xffffd
    4e48:	268080e7          	jalr	616(ra) # 20ac <_free_file>
    4e4c:	00000413          	li	s0,0
    4e50:	0214f793          	andi	a5,s1,33
    4e54:	02000713          	li	a4,32
    4e58:	28e79263          	bne	a5,a4,50dc <fl_fopen+0x3d8>
    4e5c:	10041263          	bnez	s0,4f60 <fl_fopen+0x25c>
    4e60:	0064f793          	andi	a5,s1,6
    4e64:	26079463          	bnez	a5,50cc <fl_fopen+0x3c8>
    4e68:	00000413          	li	s0,0
    4e6c:	040a2783          	lw	a5,64(s4)
    4e70:	00078463          	beqz	a5,4e78 <fl_fopen+0x174>
    4e74:	000780e7          	jalr	a5
    4e78:	05c12083          	lw	ra,92(sp)
    4e7c:	00040513          	mv	a0,s0
    4e80:	05812403          	lw	s0,88(sp)
    4e84:	05412483          	lw	s1,84(sp)
    4e88:	05012903          	lw	s2,80(sp)
    4e8c:	04c12983          	lw	s3,76(sp)
    4e90:	04812a03          	lw	s4,72(sp)
    4e94:	04412a83          	lw	s5,68(sp)
    4e98:	04012b03          	lw	s6,64(sp)
    4e9c:	03c12b83          	lw	s7,60(sp)
    4ea0:	03812c03          	lw	s8,56(sp)
    4ea4:	03412c83          	lw	s9,52(sp)
    4ea8:	03012d03          	lw	s10,48(sp)
    4eac:	06010113          	addi	sp,sp,96
    4eb0:	00008067          	ret
    4eb4:	008907b3          	add	a5,s2,s0
    4eb8:	0007c783          	lbu	a5,0(a5)
    4ebc:	05378863          	beq	a5,s3,4f0c <fl_fopen+0x208>
    4ec0:	02f9e863          	bltu	s3,a5,4ef0 <fl_fopen+0x1ec>
    4ec4:	05578863          	beq	a5,s5,4f14 <fl_fopen+0x210>
    4ec8:	00faea63          	bltu	s5,a5,4edc <fl_fopen+0x1d8>
    4ecc:	02b00713          	li	a4,43
    4ed0:	04e78663          	beq	a5,a4,4f1c <fl_fopen+0x218>
    4ed4:	00140413          	addi	s0,s0,1
    4ed8:	ebdff06f          	j	4d94 <fl_fopen+0x90>
    4edc:	03978263          	beq	a5,s9,4f00 <fl_fopen+0x1fc>
    4ee0:	05200713          	li	a4,82
    4ee4:	fee798e3          	bne	a5,a4,4ed4 <fl_fopen+0x1d0>
    4ee8:	0014e493          	ori	s1,s1,1
    4eec:	fe9ff06f          	j	4ed4 <fl_fopen+0x1d0>
    4ef0:	ff478ce3          	beq	a5,s4,4ee8 <fl_fopen+0x1e4>
    4ef4:	00fa6a63          	bltu	s4,a5,4f08 <fl_fopen+0x204>
    4ef8:	01778e63          	beq	a5,s7,4f14 <fl_fopen+0x210>
    4efc:	fd879ce3          	bne	a5,s8,4ed4 <fl_fopen+0x1d0>
    4f00:	0084e493          	ori	s1,s1,8
    4f04:	fd1ff06f          	j	4ed4 <fl_fopen+0x1d0>
    4f08:	fd6796e3          	bne	a5,s6,4ed4 <fl_fopen+0x1d0>
    4f0c:	0324e493          	ori	s1,s1,50
    4f10:	fc5ff06f          	j	4ed4 <fl_fopen+0x1d0>
    4f14:	0264e493          	ori	s1,s1,38
    4f18:	fbdff06f          	j	4ed4 <fl_fopen+0x1d0>
    4f1c:	0014f793          	andi	a5,s1,1
    4f20:	00078663          	beqz	a5,4f2c <fl_fopen+0x228>
    4f24:	0024e493          	ori	s1,s1,2
    4f28:	fadff06f          	j	4ed4 <fl_fopen+0x1d0>
    4f2c:	0024f793          	andi	a5,s1,2
    4f30:	00078663          	beqz	a5,4f3c <fl_fopen+0x238>
    4f34:	0314e493          	ori	s1,s1,49
    4f38:	f9dff06f          	j	4ed4 <fl_fopen+0x1d0>
    4f3c:	0044f793          	andi	a5,s1,4
    4f40:	f8078ae3          	beqz	a5,4ed4 <fl_fopen+0x1d0>
    4f44:	0274e493          	ori	s1,s1,39
    4f48:	f8dff06f          	j	4ed4 <fl_fopen+0x1d0>
    4f4c:	000d0513          	mv	a0,s10
    4f50:	fffff097          	auipc	ra,0xfffff
    4f54:	81c080e7          	jalr	-2020(ra) # 376c <_open_file>
    4f58:	00050413          	mv	s0,a0
    4f5c:	e60508e3          	beqz	a0,4dcc <fl_fopen+0xc8>
    4f60:	42940c23          	sb	s1,1080(s0)
    4f64:	f09ff06f          	j	4e6c <fl_fopen+0x168>
    4f68:	00040513          	mv	a0,s0
    4f6c:	ffffe097          	auipc	ra,0xffffe
    4f70:	dc8080e7          	jalr	-568(ra) # 2d34 <_check_file_open>
    4f74:	00050913          	mv	s2,a0
    4f78:	ec0514e3          	bnez	a0,4e40 <fl_fopen+0x13c>
    4f7c:	01444783          	lbu	a5,20(s0)
    4f80:	0e079663          	bnez	a5,506c <fl_fopen+0x368>
    4f84:	008a2783          	lw	a5,8(s4)
    4f88:	00f42023          	sw	a5,0(s0)
    4f8c:	00042583          	lw	a1,0(s0)
    4f90:	01010693          	addi	a3,sp,16
    4f94:	000b0613          	mv	a2,s6
    4f98:	9ec98513          	addi	a0,s3,-1556
    4f9c:	ffffe097          	auipc	ra,0xffffe
    4fa0:	428080e7          	jalr	1064(ra) # 33c4 <fatfs_get_file_entry>
    4fa4:	00100693          	li	a3,1
    4fa8:	e8d50ce3          	beq	a0,a3,4e40 <fl_fopen+0x13c>
    4fac:	00042223          	sw	zero,4(s0)
    4fb0:	00440613          	addi	a2,s0,4
    4fb4:	00068593          	mv	a1,a3
    4fb8:	9ec98513          	addi	a0,s3,-1556
    4fbc:	00000097          	auipc	ra,0x0
    4fc0:	908080e7          	jalr	-1784(ra) # 48c4 <fatfs_allocate_free_space>
    4fc4:	e6050ee3          	beqz	a0,4e40 <fl_fopen+0x13c>
    4fc8:	00002ab7          	lui	s5,0x2
    4fcc:	21c40b93          	addi	s7,s0,540
    4fd0:	9ec98c13          	addi	s8,s3,-1556
    4fd4:	70fa8a93          	addi	s5,s5,1807 # 270f <fatfs_lfn_create_sfn+0xa3>
    4fd8:	000b0593          	mv	a1,s6
    4fdc:	00410513          	addi	a0,sp,4
    4fe0:	ffffd097          	auipc	ra,0xffffd
    4fe4:	68c080e7          	jalr	1676(ra) # 266c <fatfs_lfn_create_sfn>
    4fe8:	08090e63          	beqz	s2,5084 <fl_fopen+0x380>
    4fec:	00090613          	mv	a2,s2
    4ff0:	00410593          	addi	a1,sp,4
    4ff4:	000b8513          	mv	a0,s7
    4ff8:	ffffd097          	auipc	ra,0xffffd
    4ffc:	7f0080e7          	jalr	2032(ra) # 27e8 <fatfs_lfn_generate_tail>
    5000:	00042583          	lw	a1,0(s0)
    5004:	000b8613          	mv	a2,s7
    5008:	000c0513          	mv	a0,s8
    500c:	fffff097          	auipc	ra,0xfffff
    5010:	8d4080e7          	jalr	-1836(ra) # 38e0 <fatfs_sfn_exists>
    5014:	00050663          	beqz	a0,5020 <fl_fopen+0x31c>
    5018:	00190913          	addi	s2,s2,1
    501c:	fb591ee3          	bne	s2,s5,4fd8 <fl_fopen+0x2d4>
    5020:	00442703          	lw	a4,4(s0)
    5024:	000027b7          	lui	a5,0x2
    5028:	70f78793          	addi	a5,a5,1807 # 270f <fatfs_lfn_create_sfn+0xa3>
    502c:	00070593          	mv	a1,a4
    5030:	02f90663          	beq	s2,a5,505c <fl_fopen+0x358>
    5034:	00042583          	lw	a1,0(s0)
    5038:	00000813          	li	a6,0
    503c:	00000793          	li	a5,0
    5040:	000b8693          	mv	a3,s7
    5044:	000b0613          	mv	a2,s6
    5048:	9ec98513          	addi	a0,s3,-1556
    504c:	00000097          	auipc	ra,0x0
    5050:	990080e7          	jalr	-1648(ra) # 49dc <fatfs_add_file_entry>
    5054:	04051463          	bnez	a0,509c <fl_fopen+0x398>
    5058:	00442583          	lw	a1,4(s0)
    505c:	9ec98513          	addi	a0,s3,-1556
    5060:	fffff097          	auipc	ra,0xfffff
    5064:	1b4080e7          	jalr	436(ra) # 4214 <fatfs_free_cluster_chain>
    5068:	dd9ff06f          	j	4e40 <fl_fopen+0x13c>
    506c:	00040593          	mv	a1,s0
    5070:	000a8513          	mv	a0,s5
    5074:	ffffe097          	auipc	ra,0xffffe
    5078:	54c080e7          	jalr	1356(ra) # 35c0 <_open_directory>
    507c:	f00518e3          	bnez	a0,4f8c <fl_fopen+0x288>
    5080:	dc1ff06f          	j	4e40 <fl_fopen+0x13c>
    5084:	00b00613          	li	a2,11
    5088:	00410593          	addi	a1,sp,4
    508c:	000b8513          	mv	a0,s7
    5090:	ffffc097          	auipc	ra,0xffffc
    5094:	5cc080e7          	jalr	1484(ra) # 165c <memcpy>
    5098:	f69ff06f          	j	5000 <fl_fopen+0x2fc>
    509c:	fff00793          	li	a5,-1
    50a0:	00042623          	sw	zero,12(s0)
    50a4:	00042423          	sw	zero,8(s0)
    50a8:	42f42823          	sw	a5,1072(s0)
    50ac:	42042a23          	sw	zero,1076(s0)
    50b0:	00042823          	sw	zero,16(s0)
    50b4:	22f42423          	sw	a5,552(s0)
    50b8:	22f42623          	sw	a5,556(s0)
    50bc:	9ec98513          	addi	a0,s3,-1556
    50c0:	ffffe097          	auipc	ra,0xffffe
    50c4:	054080e7          	jalr	84(ra) # 3114 <fatfs_fat_purge>
    50c8:	d89ff06f          	j	4e50 <fl_fopen+0x14c>
    50cc:	000d0513          	mv	a0,s10
    50d0:	ffffe097          	auipc	ra,0xffffe
    50d4:	69c080e7          	jalr	1692(ra) # 376c <_open_file>
    50d8:	00050413          	mv	s0,a0
    50dc:	e80412e3          	bnez	s0,4f60 <fl_fopen+0x25c>
    50e0:	d89ff06f          	j	4e68 <fl_fopen+0x164>
    50e4:	00000413          	li	s0,0
    50e8:	d91ff06f          	j	4e78 <fl_fopen+0x174>

000050ec <album_count>:
    50ec:	00000008                                ....

000050f0 <cmd16>:
    50f0:	02000050 00001500                       P.......

000050f8 <acmd41>:
    50f8:	00004069 00000100                       i@......

00005100 <cmd55>:
    5100:	00000077 00000100                       w.......

00005108 <cmd8>:
    5108:	01000048 000087aa                       H.......

00005110 <cmd0>:
    5110:	00000040 00009500                       @.......

00005118 <AUDIO>:
    5118:	00018000                                ....

0000511c <BUTTONS>:
    511c:	00010100                                ....

00005120 <SDCARD>:
    5120:	00010080                                ....

00005124 <OLED_RST>:
    5124:	00010010                                ....

00005128 <OLED>:
    5128:	00010008                                ....

0000512c <LEDS>:
    512c:	00010004 00006272 756f532f 2f73646e     ....rb../Sounds/
    513c:	63696c63 61722e6b 00000077 756f532f     click.raw.../Sou
    514c:	2f73646e 61616179 61722e79 00000077     nds/yaaay.raw...
    515c:	756f532f 2f73646e 72617473 2e707574     /Sounds/startup.
    516c:	00776172 68636946 20726569 72746e69     raw.Fichier intr
    517c:	6176756f 3a656c62 0a73250a 00000000     ouvable:.%s.....
    518c:	7463654c 3a657275 0a73250a 00000000     Lecture:.%s.....
    519c:	53554150 20202045 000a2020 20202020     PAUSE     ..    
    51ac:	20202020 20202020 20202020 20202020                     
    51bc:	20202020 0000000a 203d3d3d 75626c41         ....=== Albu
    51cc:	3d20736d 0a0a3d3d 00000000 000a7325     ms ===......%s..
    51dc:	75637541 6966206e 65696863 61642072     Aucun fichier da
    51ec:	0a3a736e 000a7325 75707061 73206569     ns:.%s..appuie s
    51fc:	6c207275 6f632065 64206564 000a2065     ur le code de ..
    520c:	72766564 6c69756f 6567616c 00000a20     devrouillage ...
    521c:	72756f70 63636120 72656465 20a0c320     pour acceder .. 
    522c:	0a20616c 00000000 74736970 65732065     la .....piste se
    523c:	74657263 0a212065 00000000 746e6968     crete !.....hint
    524c:	36203a20 35203320 000a3420 6ca9c346      : 6 3 5 4..F..l
    525c:	74696369 6f697461 2120736e 0000000a     icitations !....
    526c:	6365732f 5f746572 646c6f66 732f7265     /secret_folder/s
    527c:	65726365 72745f74 2e6b6361 00776172     ecret_track.raw.
    528c:	203d3d3d 74736950 3d207365 0a0a3d3d     === Pistes ===..
    529c:	00000000 74696e49 2e445320 000a2e2e     ....Init SD.....
    52ac:	4f204453 000a2e4b 766f632f 722e7265     SD OK.../cover.r
    52bc:	00007761 206e6946 7463656c 2e657275     aw..Fin lecture.
    52cc:	0000000a 0000002f 33323130 37363534     ..../...01234567
    52dc:	42413938 46454443 00000000 5f544146     89ABCDEF....FAT_
    52ec:	203a5346 6f727245 6f632072 20646c75     FS: Error could 
    52fc:	20746f6e 64616f6c 54414620 74656420     not load FAT det
    530c:	736c6961 64252820 0a0d2129 00000000     ails (%d)!......

0000531c <font>:
    531c:	00000000 00002f00 00030000 14000003     ...../..........
    532c:	143e143e 3a2b6a2e 08122600 171c3224     >.>..j+:.&..$2..
    533c:	03003415 00000000 0000211e 001e2100     .4.......!...!..
    534c:	08220000 0822081c 0000081c 00002040     .."...".....@ ..
    535c:	00080800 00200000 20000000 02040810     ...... .... ....
    536c:	3f21213f 003f0100 253d0000 25002725     ?!!?..?...=%%'.%
    537c:	003f2525 3f040407 25252700 253f003d     %%?....?.'%%=.?%
    538c:	01003d25 00030539 3f25253f 25252700     %=..9...?%%?.'%%
    539c:	0028003f 40000000 00000028 00110a04     ?.(....@(.......
    53ac:	00141400 0a110000 01000004 0007052d     ............-...
    53bc:	253d213f 09093f1f 253f003f 3f003c27     ?!=%.?..?.?%'<.?
    53cc:	00212121 1e21213f 25253f00 053f0025     !!!.?!!..?%%%.?.
    53dc:	3f000505 003d2521 3f04043f 213f2100     ...?!%=.?..?.!?!
    53ec:	20380000 3f013f21 003b0404 2020203f     ..8 !?.?..;.?   
    53fc:	3f013f00 023f3f01 3f003f04 003f2121     .?.?.??..?.?!!?.
    540c:	0f09093f 31213f00 093f003f 27002f39     ?....?!1?.?.9/.'
    541c:	003d2525 013f0101 20203f01 100f003f     %%=...?..?  ?...
    542c:	3f001f30 3f203f20 3b04043b 38080f00     0..? ? ?;..;...8
    543c:	2931000f 3f002325 00000021 04081020     ..1)%#.?!... ...
    544c:	003f2102 01020000 20000201 00000020     .!?........  ...
    545c:	00000201 24243800 243f003c 3c003c24     .....8$$<.?$$<.<
    546c:	00242424 3f24243c 2c2c3c00 3f04002c     $$$.<$$?.<,,,..?
    547c:	bc000005 00fca4a4 3c04043f 00003d00     ........?..<.=..
    548c:	fd800000 3f000000 00340808 0000003f     .......?..4.?...
    549c:	3c043c00 043c3c04 3c003c04 003c2424     .<.<.<<..<.<$$<.
    54ac:	3c2424fc 24243c00 083c00fc 2c000004     .$$<.<$$..<....,
    54bc:	003c2c2c 00243f04 20203c00 100c003c     ,,<..?$..<  <...
    54cc:	3c001c30 3c203c20 34080834 a0a0bc00     0..< < <4..4....
    54dc:	342400fc 0400242c 0000213f 0000003f     ..$4,$..?!..?...
    54ec:	043f2100 02010000 00000102 00000000     .!?.............
    54fc:	00000001 00000003 00000005 00000007     ................
    550c:	00000009 0000000e 00000010 00000012     ................
    551c:	00000014 00000016 00000018 0000001c     ................
    552c:	0000001e                                ....

00005530 <albums>:
    5530:	626c412f 00316d75 00000000 00000000     /Album1.........
	...
    5570:	626c412f 00326d75 00000000 00000000     /Album2.........
	...
    55b0:	626c412f 00336d75 00000000 00000000     /Album3.........
	...
    55f0:	626c412f 00346d75 00000000 00000000     /Album4.........
	...
    5630:	626c412f 00356d75 00000000 00000000     /Album5.........
	...
    5670:	626c412f 00366d75 00000000 00000000     /Album6.........
	...
    56b0:	626c412f 00376d75 00000000 00000000     /Album7.........
	...
    56f0:	6365732f 5f746572 646c6f66 00007265     /secret_folder..
	...

00005730 <current_track>:
    5730:	00000000                                ....

00005734 <current_album>:
    5734:	00000000                                ....

00005738 <file_count>:
    5738:	00000000                                ....

0000573c <prev_btn>:
    573c:	00000000                                ....

00005740 <sdcard_while_loading_callback>:
    5740:	00000000                                ....

00005744 <back_color>:
	...

00005745 <front_color>:
    5745:	                                         ...

00005748 <cursor_y>:
    5748:	00000000                                ....

0000574c <cursor_x>:
    574c:	00000000                                ....

00005750 <f_putchar>:
    5750:	00000000                                ....

00005754 <_free_file_list>:
	...

0000575c <_open_file_list>:
	...

00005764 <_filelib_valid>:
    5764:	00000000                                ....

00005768 <_filelib_init>:
    5768:	00000000                                ....
