
code.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <_start>:
       0:	00010137          	lui	sp,0x10
       4:	00001097          	auipc	ra,0x1
       8:	aa0080e7          	jalr	-1376(ra) # aa4 <main>
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
      34:	ed010113          	addi	sp,sp,-304 # fed0 <_files+0x4384>
      38:	00651513          	slli	a0,a0,0x6
      3c:	22878793          	addi	a5,a5,552 # 5228 <albums>
      40:	12812423          	sw	s0,296(sp)
      44:	00410593          	addi	a1,sp,4
      48:	00005437          	lui	s0,0x5
      4c:	00a78533          	add	a0,a5,a0
      50:	12112623          	sw	ra,300(sp)
      54:	12912223          	sw	s1,292(sp)
      58:	42042823          	sw	zero,1072(s0) # 5430 <file_count>
      5c:	00003097          	auipc	ra,0x3
      60:	3ec080e7          	jalr	1004(ra) # 3448 <fl_opendir>
      64:	02050a63          	beqz	a0,98 <scan_files_in_album+0x68>
      68:	01010593          	addi	a1,sp,16
      6c:	01f00493          	li	s1,31
      70:	00410513          	addi	a0,sp,4
      74:	00004097          	auipc	ra,0x4
      78:	aa0080e7          	jalr	-1376(ra) # 3b14 <fl_readdir>
      7c:	00051863          	bnez	a0,8c <scan_files_in_album+0x5c>
      80:	43042703          	lw	a4,1072(s0)
      84:	01010593          	addi	a1,sp,16
      88:	02e4d263          	bge	s1,a4,ac <scan_files_in_album+0x7c>
      8c:	00410513          	addi	a0,sp,4
      90:	00002097          	auipc	ra,0x2
      94:	fa0080e7          	jalr	-96(ra) # 2030 <fl_closedir>
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
      c4:	46478793          	addi	a5,a5,1124 # 5464 <files>
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
      f4:	42e42823          	sw	a4,1072(s0)
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
     11c:	ebc7a403          	lw	s0,-324(a5) # 4ebc <AUDIO>
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
     158:	290080e7          	jalr	656(ra) # 13e4 <memset>
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
     198:	ed458593          	addi	a1,a1,-300 # 4ed4 <LEDS+0x4>
     19c:	ed850513          	addi	a0,a0,-296 # 4ed8 <LEDS+0x8>
     1a0:	00112e23          	sw	ra,28(sp)
     1a4:	00812c23          	sw	s0,24(sp)
     1a8:	00912a23          	sw	s1,20(sp)
     1ac:	01212823          	sw	s2,16(sp)
     1b0:	00005097          	auipc	ra,0x5
     1b4:	8f8080e7          	jalr	-1800(ra) # 4aa8 <fl_fopen>
     1b8:	06050263          	beqz	a0,21c <click_sound+0x90>
     1bc:	000057b7          	lui	a5,0x5
     1c0:	ebc7a903          	lw	s2,-324(a5) # 4ebc <AUDIO>
     1c4:	00050693          	mv	a3,a0
     1c8:	1ff00493          	li	s1,511
     1cc:	00092403          	lw	s0,0(s2)
     1d0:	20000613          	li	a2,512
     1d4:	00100593          	li	a1,1
     1d8:	00040513          	mv	a0,s0
     1dc:	00d12623          	sw	a3,12(sp)
     1e0:	00004097          	auipc	ra,0x4
     1e4:	2c4080e7          	jalr	708(ra) # 44a4 <fl_fread>
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
     218:	1b430067          	jr	436(t1) # 43c8 <fl_fclose>
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
     240:	ed458593          	addi	a1,a1,-300 # 4ed4 <LEDS+0x4>
     244:	eec50513          	addi	a0,a0,-276 # 4eec <LEDS+0x1c>
     248:	00112e23          	sw	ra,28(sp)
     24c:	00812c23          	sw	s0,24(sp)
     250:	00912a23          	sw	s1,20(sp)
     254:	01212823          	sw	s2,16(sp)
     258:	00005097          	auipc	ra,0x5
     25c:	850080e7          	jalr	-1968(ra) # 4aa8 <fl_fopen>
     260:	06050263          	beqz	a0,2c4 <startup_sound+0x90>
     264:	000057b7          	lui	a5,0x5
     268:	ebc7a903          	lw	s2,-324(a5) # 4ebc <AUDIO>
     26c:	00050693          	mv	a3,a0
     270:	1ff00493          	li	s1,511
     274:	00092403          	lw	s0,0(s2)
     278:	20000613          	li	a2,512
     27c:	00100593          	li	a1,1
     280:	00040513          	mv	a0,s0
     284:	00d12623          	sw	a3,12(sp)
     288:	00004097          	auipc	ra,0x4
     28c:	21c080e7          	jalr	540(ra) # 44a4 <fl_fread>
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
     2c0:	10c30067          	jr	268(t1) # 43c8 <fl_fclose>
     2c4:	01c12083          	lw	ra,28(sp)
     2c8:	01812403          	lw	s0,24(sp)
     2cc:	01412483          	lw	s1,20(sp)
     2d0:	01012903          	lw	s2,16(sp)
     2d4:	02010113          	addi	sp,sp,32
     2d8:	00008067          	ret

000002dc <play_music>:
     2dc:	000055b7          	lui	a1,0x5
     2e0:	fb010113          	addi	sp,sp,-80
     2e4:	ed458593          	addi	a1,a1,-300 # 4ed4 <LEDS+0x4>
     2e8:	04812423          	sw	s0,72(sp)
     2ec:	04112623          	sw	ra,76(sp)
     2f0:	04912223          	sw	s1,68(sp)
     2f4:	05212023          	sw	s2,64(sp)
     2f8:	03312e23          	sw	s3,60(sp)
     2fc:	03412c23          	sw	s4,56(sp)
     300:	03512a23          	sw	s5,52(sp)
     304:	03612823          	sw	s6,48(sp)
     308:	03712623          	sw	s7,44(sp)
     30c:	03812423          	sw	s8,40(sp)
     310:	03912223          	sw	s9,36(sp)
     314:	03a12023          	sw	s10,32(sp)
     318:	01b12e23          	sw	s11,28(sp)
     31c:	00050413          	mv	s0,a0
     320:	00004097          	auipc	ra,0x4
     324:	788080e7          	jalr	1928(ra) # 4aa8 <fl_fopen>
     328:	06051a63          	bnez	a0,39c <play_music+0xc0>
     32c:	00000593          	li	a1,0
     330:	00001097          	auipc	ra,0x1
     334:	390080e7          	jalr	912(ra) # 16c0 <display_set_cursor>
     338:	00000593          	li	a1,0
     33c:	0ff00513          	li	a0,255
     340:	00001097          	auipc	ra,0x1
     344:	394080e7          	jalr	916(ra) # 16d4 <display_set_front_back_color>
     348:	00005537          	lui	a0,0x5
     34c:	00040593          	mv	a1,s0
     350:	f0050513          	addi	a0,a0,-256 # 4f00 <LEDS+0x30>
     354:	00001097          	auipc	ra,0x1
     358:	6a4080e7          	jalr	1700(ra) # 19f8 <printf>
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
     398:	46c30067          	jr	1132(t1) # 1800 <display_refresh>
     39c:	00000593          	li	a1,0
     3a0:	00050d13          	mv	s10,a0
     3a4:	00000513          	li	a0,0
     3a8:	00001097          	auipc	ra,0x1
     3ac:	318080e7          	jalr	792(ra) # 16c0 <display_set_cursor>
     3b0:	0ff00593          	li	a1,255
     3b4:	00000513          	li	a0,0
     3b8:	00001097          	auipc	ra,0x1
     3bc:	31c080e7          	jalr	796(ra) # 16d4 <display_set_front_back_color>
     3c0:	00005937          	lui	s2,0x5
     3c4:	42892703          	lw	a4,1064(s2) # 5428 <current_track>
     3c8:	000055b7          	lui	a1,0x5
     3cc:	46458593          	addi	a1,a1,1124 # 5464 <files>
     3d0:	00671793          	slli	a5,a4,0x6
     3d4:	00e787b3          	add	a5,a5,a4
     3d8:	00279793          	slli	a5,a5,0x2
     3dc:	00005537          	lui	a0,0x5
     3e0:	00f585b3          	add	a1,a1,a5
     3e4:	f1c50513          	addi	a0,a0,-228 # 4f1c <LEDS+0x4c>
     3e8:	00001097          	auipc	ra,0x1
     3ec:	610080e7          	jalr	1552(ra) # 19f8 <printf>
     3f0:	00001097          	auipc	ra,0x1
     3f4:	410080e7          	jalr	1040(ra) # 1800 <display_refresh>
     3f8:	000057b7          	lui	a5,0x5
     3fc:	ec07a983          	lw	s3,-320(a5) # 4ec0 <BUTTONS>
     400:	00005437          	lui	s0,0x5
     404:	00000a13          	li	s4,0
     408:	0009a783          	lw	a5,0(s3)
     40c:	00100b93          	li	s7,1
     410:	42f42a23          	sw	a5,1076(s0) # 5434 <prev_btn>
     414:	000057b7          	lui	a5,0x5
     418:	ebc7ad83          	lw	s11,-324(a5) # 4ebc <AUDIO>
     41c:	000057b7          	lui	a5,0x5
     420:	ed07a783          	lw	a5,-304(a5) # 4ed0 <LEDS>
     424:	00f12423          	sw	a5,8(sp)
     428:	000057b7          	lui	a5,0x5
     42c:	f2c78793          	addi	a5,a5,-212 # 4f2c <LEDS+0x5c>
     430:	00f12623          	sw	a5,12(sp)
     434:	000dab03          	lw	s6,0(s11)
     438:	000d0693          	mv	a3,s10
     43c:	20000613          	li	a2,512
     440:	00100593          	li	a1,1
     444:	000b0513          	mv	a0,s6
     448:	00004097          	auipc	ra,0x4
     44c:	05c080e7          	jalr	92(ra) # 44a4 <fl_fread>
     450:	00050a93          	mv	s5,a0
     454:	02a05063          	blez	a0,474 <play_music+0x198>
     458:	000057b7          	lui	a5,0x5
     45c:	f3878793          	addi	a5,a5,-200 # 4f38 <LEDS+0x68>
     460:	00f12223          	sw	a5,4(sp)
     464:	000da783          	lw	a5,0(s11)
     468:	06fb0063          	beq	s6,a5,4c8 <play_music+0x1ec>
     46c:	1ff00793          	li	a5,511
     470:	fd57c2e3          	blt	a5,s5,434 <play_music+0x158>
     474:	000d0513          	mv	a0,s10
     478:	00004097          	auipc	ra,0x4
     47c:	f50080e7          	jalr	-176(ra) # 43c8 <fl_fclose>
     480:	000057b7          	lui	a5,0x5
     484:	ed07a783          	lw	a5,-304(a5) # 4ed0 <LEDS>
     488:	04c12083          	lw	ra,76(sp)
     48c:	04812403          	lw	s0,72(sp)
     490:	0007a023          	sw	zero,0(a5)
     494:	04412483          	lw	s1,68(sp)
     498:	04012903          	lw	s2,64(sp)
     49c:	03c12983          	lw	s3,60(sp)
     4a0:	03812a03          	lw	s4,56(sp)
     4a4:	03412a83          	lw	s5,52(sp)
     4a8:	03012b03          	lw	s6,48(sp)
     4ac:	02c12b83          	lw	s7,44(sp)
     4b0:	02812c03          	lw	s8,40(sp)
     4b4:	02412c83          	lw	s9,36(sp)
     4b8:	02012d03          	lw	s10,32(sp)
     4bc:	01c12d83          	lw	s11,28(sp)
     4c0:	05010113          	addi	sp,sp,80
     4c4:	00008067          	ret
     4c8:	fffb8493          	addi	s1,s7,-1
     4cc:	f80b8793          	addi	a5,s7,-128
     4d0:	0014b493          	seqz	s1,s1
     4d4:	0017b793          	seqz	a5,a5
     4d8:	0009ac03          	lw	s8,0(s3)
     4dc:	00f4e4b3          	or	s1,s1,a5
     4e0:	129a0863          	beq	s4,s1,610 <play_music+0x334>
     4e4:	001b9b93          	slli	s7,s7,0x1
     4e8:	00812783          	lw	a5,8(sp)
     4ec:	0177a023          	sw	s7,0(a5)
     4f0:	002c7793          	andi	a5,s8,2
     4f4:	00078863          	beqz	a5,504 <play_music+0x228>
     4f8:	43442783          	lw	a5,1076(s0)
     4fc:	0027f793          	andi	a5,a5,2
     500:	f6078ae3          	beqz	a5,474 <play_music+0x198>
     504:	004c7793          	andi	a5,s8,4
     508:	08078a63          	beqz	a5,59c <play_music+0x2c0>
     50c:	43442783          	lw	a5,1076(s0)
     510:	0047f793          	andi	a5,a5,4
     514:	08079463          	bnez	a5,59c <play_music+0x2c0>
     518:	00000097          	auipc	ra,0x0
     51c:	c74080e7          	jalr	-908(ra) # 18c <click_sound>
     520:	00001097          	auipc	ra,0x1
     524:	194080e7          	jalr	404(ra) # 16b4 <display_framebuffer>
     528:	06400613          	li	a2,100
     52c:	00000593          	li	a1,0
     530:	00001097          	auipc	ra,0x1
     534:	eb4080e7          	jalr	-332(ra) # 13e4 <memset>
     538:	00000593          	li	a1,0
     53c:	00000513          	li	a0,0
     540:	00001097          	auipc	ra,0x1
     544:	180080e7          	jalr	384(ra) # 16c0 <display_set_cursor>
     548:	0ff00593          	li	a1,255
     54c:	00000513          	li	a0,0
     550:	00001097          	auipc	ra,0x1
     554:	184080e7          	jalr	388(ra) # 16d4 <display_set_front_back_color>
     558:	00c12503          	lw	a0,12(sp)
     55c:	00001097          	auipc	ra,0x1
     560:	49c080e7          	jalr	1180(ra) # 19f8 <printf>
     564:	00412503          	lw	a0,4(sp)
     568:	00001097          	auipc	ra,0x1
     56c:	490080e7          	jalr	1168(ra) # 19f8 <printf>
     570:	00001097          	auipc	ra,0x1
     574:	290080e7          	jalr	656(ra) # 1800 <display_refresh>
     578:	0009ac83          	lw	s9,0(s3)
     57c:	004cf793          	andi	a5,s9,4
     580:	08078c63          	beqz	a5,618 <play_music+0x33c>
     584:	43442783          	lw	a5,1076(s0)
     588:	0047f793          	andi	a5,a5,4
     58c:	08079663          	bnez	a5,618 <play_music+0x33c>
     590:	00000097          	auipc	ra,0x0
     594:	bfc080e7          	jalr	-1028(ra) # 18c <click_sound>
     598:	43942a23          	sw	s9,1076(s0)
     59c:	020c7793          	andi	a5,s8,32
     5a0:	08078063          	beqz	a5,620 <play_music+0x344>
     5a4:	43442783          	lw	a5,1076(s0)
     5a8:	0207f793          	andi	a5,a5,32
     5ac:	06079a63          	bnez	a5,620 <play_music+0x344>
     5b0:	42892503          	lw	a0,1064(s2)
     5b4:	000057b7          	lui	a5,0x5
     5b8:	4307a583          	lw	a1,1072(a5) # 5430 <file_count>
     5bc:	00150513          	addi	a0,a0,1
     5c0:	00001097          	auipc	ra,0x1
     5c4:	df4080e7          	jalr	-524(ra) # 13b4 <__modsi3>
     5c8:	04812403          	lw	s0,72(sp)
     5cc:	42a92423          	sw	a0,1064(s2)
     5d0:	04c12083          	lw	ra,76(sp)
     5d4:	04412483          	lw	s1,68(sp)
     5d8:	04012903          	lw	s2,64(sp)
     5dc:	03c12983          	lw	s3,60(sp)
     5e0:	03812a03          	lw	s4,56(sp)
     5e4:	03412a83          	lw	s5,52(sp)
     5e8:	03012b03          	lw	s6,48(sp)
     5ec:	02c12b83          	lw	s7,44(sp)
     5f0:	02812c03          	lw	s8,40(sp)
     5f4:	02412c83          	lw	s9,36(sp)
     5f8:	01c12d83          	lw	s11,28(sp)
     5fc:	000d0513          	mv	a0,s10
     600:	02012d03          	lw	s10,32(sp)
     604:	05010113          	addi	sp,sp,80
     608:	00004317          	auipc	t1,0x4
     60c:	dc030067          	jr	-576(t1) # 43c8 <fl_fclose>
     610:	401bdb93          	srai	s7,s7,0x1
     614:	ed5ff06f          	j	4e8 <play_music+0x20c>
     618:	43942a23          	sw	s9,1076(s0)
     61c:	f05ff06f          	j	520 <play_music+0x244>
     620:	040c7793          	andi	a5,s8,64
     624:	02078463          	beqz	a5,64c <play_music+0x370>
     628:	43442783          	lw	a5,1076(s0)
     62c:	0407f793          	andi	a5,a5,64
     630:	00079e63          	bnez	a5,64c <play_music+0x370>
     634:	42892503          	lw	a0,1064(s2)
     638:	000057b7          	lui	a5,0x5
     63c:	4307a583          	lw	a1,1072(a5) # 5430 <file_count>
     640:	fff50513          	addi	a0,a0,-1
     644:	00b50533          	add	a0,a0,a1
     648:	f79ff06f          	j	5c0 <play_music+0x2e4>
     64c:	009a4a33          	xor	s4,s4,s1
     650:	43842a23          	sw	s8,1076(s0)
     654:	e11ff06f          	j	464 <play_music+0x188>

00000658 <select_album>:
     658:	000057b7          	lui	a5,0x5
     65c:	ec07a783          	lw	a5,-320(a5) # 4ec0 <BUTTONS>
     660:	fd010113          	addi	sp,sp,-48
     664:	01512a23          	sw	s5,20(sp)
     668:	00078a93          	mv	s5,a5
     66c:	0007a783          	lw	a5,0(a5)
     670:	03212023          	sw	s2,32(sp)
     674:	00005937          	lui	s2,0x5
     678:	42f92a23          	sw	a5,1076(s2) # 5434 <prev_btn>
     67c:	000057b7          	lui	a5,0x5
     680:	01712623          	sw	s7,12(sp)
     684:	f5478b93          	addi	s7,a5,-172 # 4f54 <LEDS+0x84>
     688:	000057b7          	lui	a5,0x5
     68c:	02812423          	sw	s0,40(sp)
     690:	01312e23          	sw	s3,28(sp)
     694:	01612823          	sw	s6,16(sp)
     698:	02112623          	sw	ra,44(sp)
     69c:	02912223          	sw	s1,36(sp)
     6a0:	01412c23          	sw	s4,24(sp)
     6a4:	00000413          	li	s0,0
     6a8:	000059b7          	lui	s3,0x5
     6ac:	f6878b13          	addi	s6,a5,-152 # 4f68 <LEDS+0x98>
     6b0:	00001097          	auipc	ra,0x1
     6b4:	004080e7          	jalr	4(ra) # 16b4 <display_framebuffer>
     6b8:	00004637          	lui	a2,0x4
     6bc:	00000593          	li	a1,0
     6c0:	00001097          	auipc	ra,0x1
     6c4:	d24080e7          	jalr	-732(ra) # 13e4 <memset>
     6c8:	00000593          	li	a1,0
     6cc:	00000513          	li	a0,0
     6d0:	00001097          	auipc	ra,0x1
     6d4:	ff0080e7          	jalr	-16(ra) # 16c0 <display_set_cursor>
     6d8:	0ff00593          	li	a1,255
     6dc:	00000513          	li	a0,0
     6e0:	00001097          	auipc	ra,0x1
     6e4:	ff4080e7          	jalr	-12(ra) # 16d4 <display_set_front_back_color>
     6e8:	000b8513          	mv	a0,s7
     6ec:	000054b7          	lui	s1,0x5
     6f0:	00001097          	auipc	ra,0x1
     6f4:	308080e7          	jalr	776(ra) # 19f8 <printf>
     6f8:	22848493          	addi	s1,s1,552 # 5228 <albums>
     6fc:	00000a13          	li	s4,0
     700:	e909a783          	lw	a5,-368(s3) # 4e90 <album_count>
     704:	0efa4063          	blt	s4,a5,7e4 <select_album+0x18c>
     708:	00001097          	auipc	ra,0x1
     70c:	0f8080e7          	jalr	248(ra) # 1800 <display_refresh>
     710:	000aaa03          	lw	s4,0(s5)
     714:	010a7793          	andi	a5,s4,16
     718:	02078663          	beqz	a5,744 <select_album+0xec>
     71c:	43492483          	lw	s1,1076(s2)
     720:	0104f493          	andi	s1,s1,16
     724:	02049063          	bnez	s1,744 <select_album+0xec>
     728:	e909a783          	lw	a5,-368(s3)
     72c:	00140413          	addi	s0,s0,1
     730:	00f45463          	bge	s0,a5,738 <select_album+0xe0>
     734:	00040493          	mv	s1,s0
     738:	00000097          	auipc	ra,0x0
     73c:	a54080e7          	jalr	-1452(ra) # 18c <click_sound>
     740:	00048413          	mv	s0,s1
     744:	008a7793          	andi	a5,s4,8
     748:	02078463          	beqz	a5,770 <select_album+0x118>
     74c:	43492783          	lw	a5,1076(s2)
     750:	0087f793          	andi	a5,a5,8
     754:	00079e63          	bnez	a5,770 <select_album+0x118>
     758:	fff40413          	addi	s0,s0,-1
     75c:	00045663          	bgez	s0,768 <select_album+0x110>
     760:	e909a403          	lw	s0,-368(s3)
     764:	fff40413          	addi	s0,s0,-1
     768:	00000097          	auipc	ra,0x0
     76c:	a24080e7          	jalr	-1500(ra) # 18c <click_sound>
     770:	004a7793          	andi	a5,s4,4
     774:	00100493          	li	s1,1
     778:	02078063          	beqz	a5,798 <select_album+0x140>
     77c:	43492483          	lw	s1,1076(s2)
     780:	0044f493          	andi	s1,s1,4
     784:	08049e63          	bnez	s1,820 <select_album+0x1c8>
     788:	00000097          	auipc	ra,0x0
     78c:	a04080e7          	jalr	-1532(ra) # 18c <click_sound>
     790:	000057b7          	lui	a5,0x5
     794:	4287a623          	sw	s0,1068(a5) # 542c <current_album>
     798:	0000c537          	lui	a0,0xc
     79c:	35050513          	addi	a0,a0,848 # c350 <_files+0x804>
     7a0:	43492a23          	sw	s4,1076(s2)
     7a4:	00000097          	auipc	ra,0x0
     7a8:	878080e7          	jalr	-1928(ra) # 1c <pause>
     7ac:	f00492e3          	bnez	s1,6b0 <select_album+0x58>
     7b0:	02c12083          	lw	ra,44(sp)
     7b4:	02812403          	lw	s0,40(sp)
     7b8:	000057b7          	lui	a5,0x5
     7bc:	42c7a503          	lw	a0,1068(a5) # 542c <current_album>
     7c0:	02412483          	lw	s1,36(sp)
     7c4:	02012903          	lw	s2,32(sp)
     7c8:	01c12983          	lw	s3,28(sp)
     7cc:	01812a03          	lw	s4,24(sp)
     7d0:	01412a83          	lw	s5,20(sp)
     7d4:	01012b03          	lw	s6,16(sp)
     7d8:	00c12b83          	lw	s7,12(sp)
     7dc:	03010113          	addi	sp,sp,48
     7e0:	00008067          	ret
     7e4:	028a1863          	bne	s4,s0,814 <select_album+0x1bc>
     7e8:	0ff00593          	li	a1,255
     7ec:	00000513          	li	a0,0
     7f0:	00001097          	auipc	ra,0x1
     7f4:	ee4080e7          	jalr	-284(ra) # 16d4 <display_set_front_back_color>
     7f8:	00048593          	mv	a1,s1
     7fc:	000b0513          	mv	a0,s6
     800:	00001097          	auipc	ra,0x1
     804:	1f8080e7          	jalr	504(ra) # 19f8 <printf>
     808:	001a0a13          	addi	s4,s4,1
     80c:	04048493          	addi	s1,s1,64
     810:	ef1ff06f          	j	700 <select_album+0xa8>
     814:	00000593          	li	a1,0
     818:	0ff00513          	li	a0,255
     81c:	fd5ff06f          	j	7f0 <select_album+0x198>
     820:	00100493          	li	s1,1
     824:	f75ff06f          	j	798 <select_album+0x140>

00000828 <select_track>:
     828:	000057b7          	lui	a5,0x5
     82c:	ec07a783          	lw	a5,-320(a5) # 4ec0 <BUTTONS>
     830:	fd010113          	addi	sp,sp,-48
     834:	01612823          	sw	s6,16(sp)
     838:	00078b13          	mv	s6,a5
     83c:	0007a783          	lw	a5,0(a5)
     840:	03212023          	sw	s2,32(sp)
     844:	01412c23          	sw	s4,24(sp)
     848:	00005937          	lui	s2,0x5
     84c:	00005a37          	lui	s4,0x5
     850:	42f92a23          	sw	a5,1076(s2) # 5434 <prev_btn>
     854:	430a2783          	lw	a5,1072(s4) # 5430 <file_count>
     858:	02112623          	sw	ra,44(sp)
     85c:	02812423          	sw	s0,40(sp)
     860:	02912223          	sw	s1,36(sp)
     864:	01312e23          	sw	s3,28(sp)
     868:	01512a23          	sw	s5,20(sp)
     86c:	01712623          	sw	s7,12(sp)
     870:	01812423          	sw	s8,8(sp)
     874:	12078063          	beqz	a5,994 <select_track+0x16c>
     878:	000057b7          	lui	a5,0x5
     87c:	f8478c13          	addi	s8,a5,-124 # 4f84 <LEDS+0xb4>
     880:	000057b7          	lui	a5,0x5
     884:	00000413          	li	s0,0
     888:	00005ab7          	lui	s5,0x5
     88c:	f6878b93          	addi	s7,a5,-152 # 4f68 <LEDS+0x98>
     890:	00001097          	auipc	ra,0x1
     894:	e24080e7          	jalr	-476(ra) # 16b4 <display_framebuffer>
     898:	00004637          	lui	a2,0x4
     89c:	00000593          	li	a1,0
     8a0:	00001097          	auipc	ra,0x1
     8a4:	b44080e7          	jalr	-1212(ra) # 13e4 <memset>
     8a8:	00000593          	li	a1,0
     8ac:	00000513          	li	a0,0
     8b0:	00001097          	auipc	ra,0x1
     8b4:	e10080e7          	jalr	-496(ra) # 16c0 <display_set_cursor>
     8b8:	0ff00593          	li	a1,255
     8bc:	00000513          	li	a0,0
     8c0:	00001097          	auipc	ra,0x1
     8c4:	e14080e7          	jalr	-492(ra) # 16d4 <display_set_front_back_color>
     8c8:	000c0513          	mv	a0,s8
     8cc:	00001097          	auipc	ra,0x1
     8d0:	12c080e7          	jalr	300(ra) # 19f8 <printf>
     8d4:	464a8993          	addi	s3,s5,1124 # 5464 <files>
     8d8:	00000493          	li	s1,0
     8dc:	430a2783          	lw	a5,1072(s4)
     8e0:	16f4c263          	blt	s1,a5,a44 <select_track+0x21c>
     8e4:	00001097          	auipc	ra,0x1
     8e8:	f1c080e7          	jalr	-228(ra) # 1800 <display_refresh>
     8ec:	000b2983          	lw	s3,0(s6)
     8f0:	0109f793          	andi	a5,s3,16
     8f4:	02078663          	beqz	a5,920 <select_track+0xf8>
     8f8:	43492483          	lw	s1,1076(s2)
     8fc:	0104f493          	andi	s1,s1,16
     900:	02049063          	bnez	s1,920 <select_track+0xf8>
     904:	430a2783          	lw	a5,1072(s4)
     908:	00140413          	addi	s0,s0,1
     90c:	00f45463          	bge	s0,a5,914 <select_track+0xec>
     910:	00040493          	mv	s1,s0
     914:	00000097          	auipc	ra,0x0
     918:	878080e7          	jalr	-1928(ra) # 18c <click_sound>
     91c:	00048413          	mv	s0,s1
     920:	0089f793          	andi	a5,s3,8
     924:	02078463          	beqz	a5,94c <select_track+0x124>
     928:	43492783          	lw	a5,1076(s2)
     92c:	0087f793          	andi	a5,a5,8
     930:	00079e63          	bnez	a5,94c <select_track+0x124>
     934:	fff40413          	addi	s0,s0,-1
     938:	00045663          	bgez	s0,944 <select_track+0x11c>
     93c:	430a2403          	lw	s0,1072(s4)
     940:	fff40413          	addi	s0,s0,-1
     944:	00000097          	auipc	ra,0x0
     948:	848080e7          	jalr	-1976(ra) # 18c <click_sound>
     94c:	0049f793          	andi	a5,s3,4
     950:	00100493          	li	s1,1
     954:	02078063          	beqz	a5,974 <select_track+0x14c>
     958:	43492483          	lw	s1,1076(s2)
     95c:	0044f493          	andi	s1,s1,4
     960:	12049063          	bnez	s1,a80 <select_track+0x258>
     964:	00000097          	auipc	ra,0x0
     968:	828080e7          	jalr	-2008(ra) # 18c <click_sound>
     96c:	000057b7          	lui	a5,0x5
     970:	4287a423          	sw	s0,1064(a5) # 5428 <current_track>
     974:	0019f793          	andi	a5,s3,1
     978:	10078863          	beqz	a5,a88 <select_track+0x260>
     97c:	43492783          	lw	a5,1076(s2)
     980:	0017f793          	andi	a5,a5,1
     984:	10079263          	bnez	a5,a88 <select_track+0x260>
     988:	00000097          	auipc	ra,0x0
     98c:	804080e7          	jalr	-2044(ra) # 18c <click_sound>
     990:	07c0006f          	j	a0c <select_track+0x1e4>
     994:	00001097          	auipc	ra,0x1
     998:	d20080e7          	jalr	-736(ra) # 16b4 <display_framebuffer>
     99c:	00004637          	lui	a2,0x4
     9a0:	00000593          	li	a1,0
     9a4:	00001097          	auipc	ra,0x1
     9a8:	a40080e7          	jalr	-1472(ra) # 13e4 <memset>
     9ac:	00000593          	li	a1,0
     9b0:	00000513          	li	a0,0
     9b4:	00001097          	auipc	ra,0x1
     9b8:	d0c080e7          	jalr	-756(ra) # 16c0 <display_set_cursor>
     9bc:	00000593          	li	a1,0
     9c0:	0ff00513          	li	a0,255
     9c4:	00001097          	auipc	ra,0x1
     9c8:	d10080e7          	jalr	-752(ra) # 16d4 <display_set_front_back_color>
     9cc:	000057b7          	lui	a5,0x5
     9d0:	42c7a783          	lw	a5,1068(a5) # 542c <current_album>
     9d4:	000055b7          	lui	a1,0x5
     9d8:	22858593          	addi	a1,a1,552 # 5228 <albums>
     9dc:	00679793          	slli	a5,a5,0x6
     9e0:	00005537          	lui	a0,0x5
     9e4:	00f585b3          	add	a1,a1,a5
     9e8:	f6c50513          	addi	a0,a0,-148 # 4f6c <LEDS+0x9c>
     9ec:	00001097          	auipc	ra,0x1
     9f0:	00c080e7          	jalr	12(ra) # 19f8 <printf>
     9f4:	00001097          	auipc	ra,0x1
     9f8:	e0c080e7          	jalr	-500(ra) # 1800 <display_refresh>
     9fc:	001e8537          	lui	a0,0x1e8
     a00:	48050513          	addi	a0,a0,1152 # 1e8480 <__stacktop+0x1d8480>
     a04:	fffff097          	auipc	ra,0xfffff
     a08:	618080e7          	jalr	1560(ra) # 1c <pause>
     a0c:	fff00413          	li	s0,-1
     a10:	02c12083          	lw	ra,44(sp)
     a14:	00040513          	mv	a0,s0
     a18:	02812403          	lw	s0,40(sp)
     a1c:	02412483          	lw	s1,36(sp)
     a20:	02012903          	lw	s2,32(sp)
     a24:	01c12983          	lw	s3,28(sp)
     a28:	01812a03          	lw	s4,24(sp)
     a2c:	01412a83          	lw	s5,20(sp)
     a30:	01012b03          	lw	s6,16(sp)
     a34:	00c12b83          	lw	s7,12(sp)
     a38:	00812c03          	lw	s8,8(sp)
     a3c:	03010113          	addi	sp,sp,48
     a40:	00008067          	ret
     a44:	02849863          	bne	s1,s0,a74 <select_track+0x24c>
     a48:	0ff00593          	li	a1,255
     a4c:	00000513          	li	a0,0
     a50:	00001097          	auipc	ra,0x1
     a54:	c84080e7          	jalr	-892(ra) # 16d4 <display_set_front_back_color>
     a58:	00098593          	mv	a1,s3
     a5c:	000b8513          	mv	a0,s7
     a60:	00001097          	auipc	ra,0x1
     a64:	f98080e7          	jalr	-104(ra) # 19f8 <printf>
     a68:	00148493          	addi	s1,s1,1
     a6c:	10498993          	addi	s3,s3,260
     a70:	e6dff06f          	j	8dc <select_track+0xb4>
     a74:	00000593          	li	a1,0
     a78:	0ff00513          	li	a0,255
     a7c:	fd5ff06f          	j	a50 <select_track+0x228>
     a80:	00100493          	li	s1,1
     a84:	ef1ff06f          	j	974 <select_track+0x14c>
     a88:	0000c537          	lui	a0,0xc
     a8c:	35050513          	addi	a0,a0,848 # c350 <_files+0x804>
     a90:	43392a23          	sw	s3,1076(s2)
     a94:	fffff097          	auipc	ra,0xfffff
     a98:	588080e7          	jalr	1416(ra) # 1c <pause>
     a9c:	de049ae3          	bnez	s1,890 <select_track+0x68>
     aa0:	f71ff06f          	j	a10 <select_track+0x1e8>

00000aa4 <main>:
     aa4:	000017b7          	lui	a5,0x1
     aa8:	fd010113          	addi	sp,sp,-48
     aac:	00005737          	lui	a4,0x5
     ab0:	6e878793          	addi	a5,a5,1768 # 16e8 <display_putchar>
     ab4:	02112623          	sw	ra,44(sp)
     ab8:	44f72423          	sw	a5,1096(a4) # 5448 <f_putchar>
     abc:	02812423          	sw	s0,40(sp)
     ac0:	02912223          	sw	s1,36(sp)
     ac4:	03212023          	sw	s2,32(sp)
     ac8:	01312e23          	sw	s3,28(sp)
     acc:	01412c23          	sw	s4,24(sp)
     ad0:	01512a23          	sw	s5,20(sp)
     ad4:	01612823          	sw	s6,16(sp)
     ad8:	01712623          	sw	s7,12(sp)
     adc:	01812423          	sw	s8,8(sp)
     ae0:	01912223          	sw	s9,4(sp)
     ae4:	00001097          	auipc	ra,0x1
     ae8:	b0c080e7          	jalr	-1268(ra) # 15f0 <oled_init>
     aec:	00001097          	auipc	ra,0x1
     af0:	b10080e7          	jalr	-1264(ra) # 15fc <oled_fullscreen>
     af4:	00001097          	auipc	ra,0x1
     af8:	bc0080e7          	jalr	-1088(ra) # 16b4 <display_framebuffer>
     afc:	00004637          	lui	a2,0x4
     b00:	00000593          	li	a1,0
     b04:	00001097          	auipc	ra,0x1
     b08:	8e0080e7          	jalr	-1824(ra) # 13e4 <memset>
     b0c:	00001097          	auipc	ra,0x1
     b10:	cf4080e7          	jalr	-780(ra) # 1800 <display_refresh>
     b14:	00000593          	li	a1,0
     b18:	00000513          	li	a0,0
     b1c:	00001097          	auipc	ra,0x1
     b20:	ba4080e7          	jalr	-1116(ra) # 16c0 <display_set_cursor>
     b24:	00000593          	li	a1,0
     b28:	0ff00513          	li	a0,255
     b2c:	00001097          	auipc	ra,0x1
     b30:	ba8080e7          	jalr	-1112(ra) # 16d4 <display_set_front_back_color>
     b34:	00005537          	lui	a0,0x5
     b38:	f9850513          	addi	a0,a0,-104 # 4f98 <LEDS+0xc8>
     b3c:	00001097          	auipc	ra,0x1
     b40:	ebc080e7          	jalr	-324(ra) # 19f8 <printf>
     b44:	000014b7          	lui	s1,0x1
     b48:	00001437          	lui	s0,0x1
     b4c:	00001097          	auipc	ra,0x1
     b50:	cb4080e7          	jalr	-844(ra) # 1800 <display_refresh>
     b54:	32848493          	addi	s1,s1,808 # 1328 <sdcard_writesector>
     b58:	00000097          	auipc	ra,0x0
     b5c:	62c080e7          	jalr	1580(ra) # 1184 <sdcard_init>
     b60:	2d440413          	addi	s0,s0,724 # 12d4 <sdcard_readsector>
     b64:	00001097          	auipc	ra,0x1
     b68:	464080e7          	jalr	1124(ra) # 1fc8 <fl_init>
     b6c:	00048593          	mv	a1,s1
     b70:	00040513          	mv	a0,s0
     b74:	00002097          	auipc	ra,0x2
     b78:	2bc080e7          	jalr	700(ra) # 2e30 <fl_attach_media>
     b7c:	fe0518e3          	bnez	a0,b6c <main+0xc8>
     b80:	00005537          	lui	a0,0x5
     b84:	fa450513          	addi	a0,a0,-92 # 4fa4 <LEDS+0xd4>
     b88:	00001097          	auipc	ra,0x1
     b8c:	e70080e7          	jalr	-400(ra) # 19f8 <printf>
     b90:	00001097          	auipc	ra,0x1
     b94:	c70080e7          	jalr	-912(ra) # 1800 <display_refresh>
     b98:	fffff097          	auipc	ra,0xfffff
     b9c:	69c080e7          	jalr	1692(ra) # 234 <startup_sound>
     ba0:	fffff097          	auipc	ra,0xfffff
     ba4:	570080e7          	jalr	1392(ra) # 110 <clear_audio>
     ba8:	000057b7          	lui	a5,0x5
     bac:	fac78c13          	addi	s8,a5,-84 # 4fac <LEDS+0xdc>
     bb0:	000057b7          	lui	a5,0x5
     bb4:	ed478c93          	addi	s9,a5,-300 # 4ed4 <LEDS+0x4>
     bb8:	000057b7          	lui	a5,0x5
     bbc:	ec07ab03          	lw	s6,-320(a5) # 4ec0 <BUTTONS>
     bc0:	000074b7          	lui	s1,0x7
     bc4:	00005937          	lui	s2,0x5
     bc8:	4e448493          	addi	s1,s1,1252 # 74e4 <tmp1>
     bcc:	22890913          	addi	s2,s2,552 # 5228 <albums>
     bd0:	00005a37          	lui	s4,0x5
     bd4:	00000097          	auipc	ra,0x0
     bd8:	a84080e7          	jalr	-1404(ra) # 658 <select_album>
     bdc:	42ca2503          	lw	a0,1068(s4) # 542c <current_album>
     be0:	fffff097          	auipc	ra,0xfffff
     be4:	450080e7          	jalr	1104(ra) # 30 <scan_files_in_album>
     be8:	00000097          	auipc	ra,0x0
     bec:	c40080e7          	jalr	-960(ra) # 828 <select_track>
     bf0:	fe0542e3          	bltz	a0,bd4 <main+0x130>
     bf4:	42ca2583          	lw	a1,1068(s4)
     bf8:	00005ab7          	lui	s5,0x5
     bfc:	42aaa423          	sw	a0,1064(s5) # 5428 <current_track>
     c00:	00659593          	slli	a1,a1,0x6
     c04:	00b905b3          	add	a1,s2,a1
     c08:	00048513          	mv	a0,s1
     c0c:	00048023          	sb	zero,0(s1)
     c10:	00001097          	auipc	ra,0x1
     c14:	898080e7          	jalr	-1896(ra) # 14a8 <strcat>
     c18:	000c0593          	mv	a1,s8
     c1c:	00048513          	mv	a0,s1
     c20:	00001097          	auipc	ra,0x1
     c24:	888080e7          	jalr	-1912(ra) # 14a8 <strcat>
     c28:	000c8593          	mv	a1,s9
     c2c:	00048513          	mv	a0,s1
     c30:	00004097          	auipc	ra,0x4
     c34:	e78080e7          	jalr	-392(ra) # 4aa8 <fl_fopen>
     c38:	00050413          	mv	s0,a0
     c3c:	02050a63          	beqz	a0,c70 <main+0x1cc>
     c40:	00001097          	auipc	ra,0x1
     c44:	a74080e7          	jalr	-1420(ra) # 16b4 <display_framebuffer>
     c48:	00040693          	mv	a3,s0
     c4c:	00004637          	lui	a2,0x4
     c50:	00100593          	li	a1,1
     c54:	00004097          	auipc	ra,0x4
     c58:	850080e7          	jalr	-1968(ra) # 44a4 <fl_fread>
     c5c:	00001097          	auipc	ra,0x1
     c60:	ba4080e7          	jalr	-1116(ra) # 1800 <display_refresh>
     c64:	00040513          	mv	a0,s0
     c68:	00003097          	auipc	ra,0x3
     c6c:	760080e7          	jalr	1888(ra) # 43c8 <fl_fclose>
     c70:	fffff097          	auipc	ra,0xfffff
     c74:	4a0080e7          	jalr	1184(ra) # 110 <clear_audio>
     c78:	00007437          	lui	s0,0x7
     c7c:	000057b7          	lui	a5,0x5
     c80:	000059b7          	lui	s3,0x5
     c84:	5e440413          	addi	s0,s0,1508 # 75e4 <tmp>
     c88:	fc878b93          	addi	s7,a5,-56 # 4fc8 <LEDS+0xf8>
     c8c:	46498993          	addi	s3,s3,1124 # 5464 <files>
     c90:	42ca2583          	lw	a1,1068(s4)
     c94:	00040513          	mv	a0,s0
     c98:	00040023          	sb	zero,0(s0)
     c9c:	00659593          	slli	a1,a1,0x6
     ca0:	00b905b3          	add	a1,s2,a1
     ca4:	00001097          	auipc	ra,0x1
     ca8:	804080e7          	jalr	-2044(ra) # 14a8 <strcat>
     cac:	000b8593          	mv	a1,s7
     cb0:	00040513          	mv	a0,s0
     cb4:	00000097          	auipc	ra,0x0
     cb8:	7f4080e7          	jalr	2036(ra) # 14a8 <strcat>
     cbc:	428aa783          	lw	a5,1064(s5)
     cc0:	00040513          	mv	a0,s0
     cc4:	00679593          	slli	a1,a5,0x6
     cc8:	00f585b3          	add	a1,a1,a5
     ccc:	00259593          	slli	a1,a1,0x2
     cd0:	00b985b3          	add	a1,s3,a1
     cd4:	00000097          	auipc	ra,0x0
     cd8:	7d4080e7          	jalr	2004(ra) # 14a8 <strcat>
     cdc:	00040513          	mv	a0,s0
     ce0:	fffff097          	auipc	ra,0xfffff
     ce4:	5fc080e7          	jalr	1532(ra) # 2dc <play_music>
     ce8:	000b2783          	lw	a5,0(s6)
     cec:	0027f793          	andi	a5,a5,2
     cf0:	fa0780e3          	beqz	a5,c90 <main+0x1ec>
     cf4:	00001097          	auipc	ra,0x1
     cf8:	9c0080e7          	jalr	-1600(ra) # 16b4 <display_framebuffer>
     cfc:	00004637          	lui	a2,0x4
     d00:	00000593          	li	a1,0
     d04:	00000097          	auipc	ra,0x0
     d08:	6e0080e7          	jalr	1760(ra) # 13e4 <memset>
     d0c:	00000593          	li	a1,0
     d10:	00000513          	li	a0,0
     d14:	00001097          	auipc	ra,0x1
     d18:	9ac080e7          	jalr	-1620(ra) # 16c0 <display_set_cursor>
     d1c:	00000593          	li	a1,0
     d20:	0ff00513          	li	a0,255
     d24:	00001097          	auipc	ra,0x1
     d28:	9b0080e7          	jalr	-1616(ra) # 16d4 <display_set_front_back_color>
     d2c:	00005537          	lui	a0,0x5
     d30:	fb850513          	addi	a0,a0,-72 # 4fb8 <LEDS+0xe8>
     d34:	00001097          	auipc	ra,0x1
     d38:	cc4080e7          	jalr	-828(ra) # 19f8 <printf>
     d3c:	00001097          	auipc	ra,0x1
     d40:	ac4080e7          	jalr	-1340(ra) # 1800 <display_refresh>
     d44:	000f4537          	lui	a0,0xf4
     d48:	24050513          	addi	a0,a0,576 # f4240 <__stacktop+0xe4240>
     d4c:	fffff097          	auipc	ra,0xfffff
     d50:	2d0080e7          	jalr	720(ra) # 1c <pause>
     d54:	e7dff06f          	j	bd0 <main+0x12c>

00000d58 <pause>:
     d58:	c0002773          	rdcycle	a4
     d5c:	c00027f3          	rdcycle	a5
     d60:	40e787b3          	sub	a5,a5,a4
     d64:	fea7ece3          	bltu	a5,a0,d5c <pause+0x4>
     d68:	00008067          	ret

00000d6c <sdcard_idle>:
     d6c:	00008067          	ret

00000d70 <sdcard_select>:
     d70:	000057b7          	lui	a5,0x5
     d74:	ec47a783          	lw	a5,-316(a5) # 4ec4 <SDCARD>
     d78:	00200713          	li	a4,2
     d7c:	00e7a023          	sw	a4,0(a5)
     d80:	00008067          	ret

00000d84 <sdcard_ponder>:
     d84:	000056b7          	lui	a3,0x5
     d88:	ec46a683          	lw	a3,-316(a3) # 4ec4 <SDCARD>
     d8c:	01000793          	li	a5,16
     d90:	00000713          	li	a4,0
     d94:	00676613          	ori	a2,a4,6
     d98:	00c6a023          	sw	a2,0(a3)
     d9c:	00174713          	xori	a4,a4,1
     da0:	00000013          	nop
     da4:	fff78793          	addi	a5,a5,-1
     da8:	fe0796e3          	bnez	a5,d94 <sdcard_ponder+0x10>
     dac:	00008067          	ret

00000db0 <sdcard_unselect>:
     db0:	000057b7          	lui	a5,0x5
     db4:	ec47a783          	lw	a5,-316(a5) # 4ec4 <SDCARD>
     db8:	00600713          	li	a4,6
     dbc:	00e7a023          	sw	a4,0(a5)
     dc0:	00008067          	ret

00000dc4 <sdcard_send>:
     dc4:	000057b7          	lui	a5,0x5
     dc8:	ec47a783          	lw	a5,-316(a5) # 4ec4 <SDCARD>
     dcc:	00655713          	srli	a4,a0,0x6
     dd0:	00277713          	andi	a4,a4,2
     dd4:	00e7a023          	sw	a4,0(a5)
     dd8:	00176713          	ori	a4,a4,1
     ddc:	00e7a023          	sw	a4,0(a5)
     de0:	00555713          	srli	a4,a0,0x5
     de4:	00277713          	andi	a4,a4,2
     de8:	00e7a023          	sw	a4,0(a5)
     dec:	00176713          	ori	a4,a4,1
     df0:	00e7a023          	sw	a4,0(a5)
     df4:	00455713          	srli	a4,a0,0x4
     df8:	00277713          	andi	a4,a4,2
     dfc:	00e7a023          	sw	a4,0(a5)
     e00:	00176713          	ori	a4,a4,1
     e04:	00e7a023          	sw	a4,0(a5)
     e08:	00355713          	srli	a4,a0,0x3
     e0c:	00277713          	andi	a4,a4,2
     e10:	00e7a023          	sw	a4,0(a5)
     e14:	00176713          	ori	a4,a4,1
     e18:	00e7a023          	sw	a4,0(a5)
     e1c:	00255713          	srli	a4,a0,0x2
     e20:	00277713          	andi	a4,a4,2
     e24:	00e7a023          	sw	a4,0(a5)
     e28:	00176713          	ori	a4,a4,1
     e2c:	00e7a023          	sw	a4,0(a5)
     e30:	00155713          	srli	a4,a0,0x1
     e34:	00277713          	andi	a4,a4,2
     e38:	00e7a023          	sw	a4,0(a5)
     e3c:	00176713          	ori	a4,a4,1
     e40:	00e7a023          	sw	a4,0(a5)
     e44:	00257713          	andi	a4,a0,2
     e48:	00e7a023          	sw	a4,0(a5)
     e4c:	00151513          	slli	a0,a0,0x1
     e50:	00176713          	ori	a4,a4,1
     e54:	00e7a023          	sw	a4,0(a5)
     e58:	00257513          	andi	a0,a0,2
     e5c:	00a7a023          	sw	a0,0(a5)
     e60:	00156513          	ori	a0,a0,1
     e64:	00a7a023          	sw	a0,0(a5)
     e68:	00200713          	li	a4,2
     e6c:	00e7a023          	sw	a4,0(a5)
     e70:	000057b7          	lui	a5,0x5
     e74:	4387a783          	lw	a5,1080(a5) # 5438 <sdcard_while_loading_callback>
     e78:	00078067          	jr	a5

00000e7c <sdcard_read>:
     e7c:	fd010113          	addi	sp,sp,-48
     e80:	fff50793          	addi	a5,a0,-1
     e84:	03212023          	sw	s2,32(sp)
     e88:	00100913          	li	s2,1
     e8c:	00f91933          	sll	s2,s2,a5
     e90:	000057b7          	lui	a5,0x5
     e94:	01312e23          	sw	s3,28(sp)
     e98:	ec47a983          	lw	s3,-316(a5) # 4ec4 <SDCARD>
     e9c:	02812423          	sw	s0,40(sp)
     ea0:	02912223          	sw	s1,36(sp)
     ea4:	01412c23          	sw	s4,24(sp)
     ea8:	01512a23          	sw	s5,20(sp)
     eac:	01612823          	sw	s6,16(sp)
     eb0:	02112623          	sw	ra,44(sp)
     eb4:	0ff00413          	li	s0,255
     eb8:	00000493          	li	s1,0
     ebc:	00300a13          	li	s4,3
     ec0:	00200a93          	li	s5,2
     ec4:	00005b37          	lui	s6,0x5
     ec8:	02058c63          	beqz	a1,f00 <sdcard_read+0x84>
     ecc:	012477b3          	and	a5,s0,s2
     ed0:	02079a63          	bnez	a5,f04 <sdcard_read+0x88>
     ed4:	02c12083          	lw	ra,44(sp)
     ed8:	0ff47513          	zext.b	a0,s0
     edc:	02812403          	lw	s0,40(sp)
     ee0:	02412483          	lw	s1,36(sp)
     ee4:	02012903          	lw	s2,32(sp)
     ee8:	01c12983          	lw	s3,28(sp)
     eec:	01812a03          	lw	s4,24(sp)
     ef0:	01412a83          	lw	s5,20(sp)
     ef4:	01012b03          	lw	s6,16(sp)
     ef8:	03010113          	addi	sp,sp,48
     efc:	00008067          	ret
     f00:	fca4dae3          	bge	s1,a0,ed4 <sdcard_read+0x58>
     f04:	0149a023          	sw	s4,0(s3)
     f08:	0159a023          	sw	s5,0(s3)
     f0c:	0009a783          	lw	a5,0(s3)
     f10:	00141413          	slli	s0,s0,0x1
     f14:	00b12623          	sw	a1,12(sp)
     f18:	00f46433          	or	s0,s0,a5
     f1c:	438b2783          	lw	a5,1080(s6) # 5438 <sdcard_while_loading_callback>
     f20:	00a12423          	sw	a0,8(sp)
     f24:	00148493          	addi	s1,s1,1
     f28:	000780e7          	jalr	a5
     f2c:	00c12583          	lw	a1,12(sp)
     f30:	00812503          	lw	a0,8(sp)
     f34:	f95ff06f          	j	ec8 <sdcard_read+0x4c>

00000f38 <sdcard_get>:
     f38:	fe010113          	addi	sp,sp,-32
     f3c:	00112e23          	sw	ra,28(sp)
     f40:	00812c23          	sw	s0,24(sp)
     f44:	00912a23          	sw	s1,20(sp)
     f48:	00050413          	mv	s0,a0
     f4c:	00b12623          	sw	a1,12(sp)
     f50:	00000097          	auipc	ra,0x0
     f54:	e20080e7          	jalr	-480(ra) # d70 <sdcard_select>
     f58:	00c12583          	lw	a1,12(sp)
     f5c:	00040513          	mv	a0,s0
     f60:	00100493          	li	s1,1
     f64:	00000097          	auipc	ra,0x0
     f68:	f18080e7          	jalr	-232(ra) # e7c <sdcard_read>
     f6c:	00345413          	srli	s0,s0,0x3
     f70:	0284c463          	blt	s1,s0,f98 <sdcard_get+0x60>
     f74:	00a12623          	sw	a0,12(sp)
     f78:	00000097          	auipc	ra,0x0
     f7c:	e38080e7          	jalr	-456(ra) # db0 <sdcard_unselect>
     f80:	01c12083          	lw	ra,28(sp)
     f84:	01812403          	lw	s0,24(sp)
     f88:	00c12503          	lw	a0,12(sp)
     f8c:	01412483          	lw	s1,20(sp)
     f90:	02010113          	addi	sp,sp,32
     f94:	00008067          	ret
     f98:	00000593          	li	a1,0
     f9c:	00800513          	li	a0,8
     fa0:	00000097          	auipc	ra,0x0
     fa4:	edc080e7          	jalr	-292(ra) # e7c <sdcard_read>
     fa8:	00148493          	addi	s1,s1,1
     fac:	fc5ff06f          	j	f70 <sdcard_get+0x38>

00000fb0 <sdcard_cmd>:
     fb0:	ff010113          	addi	sp,sp,-16
     fb4:	00812423          	sw	s0,8(sp)
     fb8:	00912223          	sw	s1,4(sp)
     fbc:	01212023          	sw	s2,0(sp)
     fc0:	00112623          	sw	ra,12(sp)
     fc4:	00050913          	mv	s2,a0
     fc8:	00000413          	li	s0,0
     fcc:	00000097          	auipc	ra,0x0
     fd0:	da4080e7          	jalr	-604(ra) # d70 <sdcard_select>
     fd4:	00600493          	li	s1,6
     fd8:	008907b3          	add	a5,s2,s0
     fdc:	0007c503          	lbu	a0,0(a5)
     fe0:	00140413          	addi	s0,s0,1
     fe4:	00000097          	auipc	ra,0x0
     fe8:	de0080e7          	jalr	-544(ra) # dc4 <sdcard_send>
     fec:	fe9416e3          	bne	s0,s1,fd8 <sdcard_cmd+0x28>
     ff0:	00812403          	lw	s0,8(sp)
     ff4:	00c12083          	lw	ra,12(sp)
     ff8:	00412483          	lw	s1,4(sp)
     ffc:	00012903          	lw	s2,0(sp)
    1000:	01010113          	addi	sp,sp,16
    1004:	00000317          	auipc	t1,0x0
    1008:	dac30067          	jr	-596(t1) # db0 <sdcard_unselect>

0000100c <sdcard_start_sector>:
    100c:	ff010113          	addi	sp,sp,-16
    1010:	00112623          	sw	ra,12(sp)
    1014:	00812423          	sw	s0,8(sp)
    1018:	00050413          	mv	s0,a0
    101c:	00000097          	auipc	ra,0x0
    1020:	d54080e7          	jalr	-684(ra) # d70 <sdcard_select>
    1024:	05100513          	li	a0,81
    1028:	00000097          	auipc	ra,0x0
    102c:	d9c080e7          	jalr	-612(ra) # dc4 <sdcard_send>
    1030:	01845513          	srli	a0,s0,0x18
    1034:	00000097          	auipc	ra,0x0
    1038:	d90080e7          	jalr	-624(ra) # dc4 <sdcard_send>
    103c:	41045513          	srai	a0,s0,0x10
    1040:	0ff57513          	zext.b	a0,a0
    1044:	00000097          	auipc	ra,0x0
    1048:	d80080e7          	jalr	-640(ra) # dc4 <sdcard_send>
    104c:	40845513          	srai	a0,s0,0x8
    1050:	0ff57513          	zext.b	a0,a0
    1054:	00000097          	auipc	ra,0x0
    1058:	d70080e7          	jalr	-656(ra) # dc4 <sdcard_send>
    105c:	0ff47513          	zext.b	a0,s0
    1060:	00000097          	auipc	ra,0x0
    1064:	d64080e7          	jalr	-668(ra) # dc4 <sdcard_send>
    1068:	05500513          	li	a0,85
    106c:	00000097          	auipc	ra,0x0
    1070:	d58080e7          	jalr	-680(ra) # dc4 <sdcard_send>
    1074:	00000097          	auipc	ra,0x0
    1078:	d3c080e7          	jalr	-708(ra) # db0 <sdcard_unselect>
    107c:	00812403          	lw	s0,8(sp)
    1080:	00c12083          	lw	ra,12(sp)
    1084:	00100593          	li	a1,1
    1088:	00800513          	li	a0,8
    108c:	01010113          	addi	sp,sp,16
    1090:	00000317          	auipc	t1,0x0
    1094:	ea830067          	jr	-344(t1) # f38 <sdcard_get>

00001098 <sdcard_read_sector>:
    1098:	ff010113          	addi	sp,sp,-16
    109c:	00812423          	sw	s0,8(sp)
    10a0:	00112623          	sw	ra,12(sp)
    10a4:	00912223          	sw	s1,4(sp)
    10a8:	01212023          	sw	s2,0(sp)
    10ac:	00058413          	mv	s0,a1
    10b0:	00000097          	auipc	ra,0x0
    10b4:	f5c080e7          	jalr	-164(ra) # 100c <sdcard_start_sector>
    10b8:	04051863          	bnez	a0,1108 <sdcard_read_sector+0x70>
    10bc:	00100593          	li	a1,1
    10c0:	00058513          	mv	a0,a1
    10c4:	00000097          	auipc	ra,0x0
    10c8:	e74080e7          	jalr	-396(ra) # f38 <sdcard_get>
    10cc:	00000493          	li	s1,0
    10d0:	20000913          	li	s2,512
    10d4:	00000593          	li	a1,0
    10d8:	00800513          	li	a0,8
    10dc:	00000097          	auipc	ra,0x0
    10e0:	e5c080e7          	jalr	-420(ra) # f38 <sdcard_get>
    10e4:	009407b3          	add	a5,s0,s1
    10e8:	00a78023          	sb	a0,0(a5)
    10ec:	00148493          	addi	s1,s1,1
    10f0:	ff2492e3          	bne	s1,s2,10d4 <sdcard_read_sector+0x3c>
    10f4:	00100593          	li	a1,1
    10f8:	01000513          	li	a0,16
    10fc:	20040413          	addi	s0,s0,512
    1100:	00000097          	auipc	ra,0x0
    1104:	e38080e7          	jalr	-456(ra) # f38 <sdcard_get>
    1108:	00c12083          	lw	ra,12(sp)
    110c:	00040513          	mv	a0,s0
    1110:	00812403          	lw	s0,8(sp)
    1114:	00412483          	lw	s1,4(sp)
    1118:	00012903          	lw	s2,0(sp)
    111c:	01010113          	addi	sp,sp,16
    1120:	00008067          	ret

00001124 <sdcard_preinit>:
    1124:	ff010113          	addi	sp,sp,-16
    1128:	000057b7          	lui	a5,0x5
    112c:	00812423          	sw	s0,8(sp)
    1130:	ec47a403          	lw	s0,-316(a5) # 4ec4 <SDCARD>
    1134:	00112623          	sw	ra,12(sp)
    1138:	00600793          	li	a5,6
    113c:	01313537          	lui	a0,0x1313
    1140:	00f42023          	sw	a5,0(s0)
    1144:	d0050513          	addi	a0,a0,-768 # 1312d00 <__stacktop+0x1302d00>
    1148:	00000097          	auipc	ra,0x0
    114c:	c10080e7          	jalr	-1008(ra) # d58 <pause>
    1150:	0a000793          	li	a5,160
    1154:	00000713          	li	a4,0
    1158:	00676693          	ori	a3,a4,6
    115c:	00d42023          	sw	a3,0(s0)
    1160:	fff78793          	addi	a5,a5,-1
    1164:	00174713          	xori	a4,a4,1
    1168:	fe0798e3          	bnez	a5,1158 <sdcard_preinit+0x34>
    116c:	00600793          	li	a5,6
    1170:	00c12083          	lw	ra,12(sp)
    1174:	00f42023          	sw	a5,0(s0)
    1178:	00812403          	lw	s0,8(sp)
    117c:	01010113          	addi	sp,sp,16
    1180:	00008067          	ret

00001184 <sdcard_init>:
    1184:	000017b7          	lui	a5,0x1
    1188:	d6c78793          	addi	a5,a5,-660 # d6c <sdcard_idle>
    118c:	00005737          	lui	a4,0x5
    1190:	fe010113          	addi	sp,sp,-32
    1194:	42f72c23          	sw	a5,1080(a4) # 5438 <sdcard_while_loading_callback>
    1198:	000057b7          	lui	a5,0x5
    119c:	00812c23          	sw	s0,24(sp)
    11a0:	00912a23          	sw	s1,20(sp)
    11a4:	00112e23          	sw	ra,28(sp)
    11a8:	eb478493          	addi	s1,a5,-332 # 4eb4 <cmd0>
    11ac:	0ff00413          	li	s0,255
    11b0:	00000097          	auipc	ra,0x0
    11b4:	f74080e7          	jalr	-140(ra) # 1124 <sdcard_preinit>
    11b8:	00048513          	mv	a0,s1
    11bc:	00000097          	auipc	ra,0x0
    11c0:	df4080e7          	jalr	-524(ra) # fb0 <sdcard_cmd>
    11c4:	00100593          	li	a1,1
    11c8:	00800513          	li	a0,8
    11cc:	00000097          	auipc	ra,0x0
    11d0:	d6c080e7          	jalr	-660(ra) # f38 <sdcard_get>
    11d4:	00a12623          	sw	a0,12(sp)
    11d8:	00000097          	auipc	ra,0x0
    11dc:	bac080e7          	jalr	-1108(ra) # d84 <sdcard_ponder>
    11e0:	00c12503          	lw	a0,12(sp)
    11e4:	00851c63          	bne	a0,s0,11fc <sdcard_init+0x78>
    11e8:	01313537          	lui	a0,0x1313
    11ec:	d0050513          	addi	a0,a0,-768 # 1312d00 <__stacktop+0x1302d00>
    11f0:	00000097          	auipc	ra,0x0
    11f4:	b68080e7          	jalr	-1176(ra) # d58 <pause>
    11f8:	fb9ff06f          	j	11b0 <sdcard_init+0x2c>
    11fc:	00005537          	lui	a0,0x5
    1200:	eac50513          	addi	a0,a0,-340 # 4eac <cmd8>
    1204:	00000097          	auipc	ra,0x0
    1208:	dac080e7          	jalr	-596(ra) # fb0 <sdcard_cmd>
    120c:	00100593          	li	a1,1
    1210:	02800513          	li	a0,40
    1214:	00000097          	auipc	ra,0x0
    1218:	d24080e7          	jalr	-732(ra) # f38 <sdcard_get>
    121c:	00000097          	auipc	ra,0x0
    1220:	b68080e7          	jalr	-1176(ra) # d84 <sdcard_ponder>
    1224:	000057b7          	lui	a5,0x5
    1228:	ea478413          	addi	s0,a5,-348 # 4ea4 <cmd55>
    122c:	000057b7          	lui	a5,0x5
    1230:	e9c78493          	addi	s1,a5,-356 # 4e9c <acmd41>
    1234:	00040513          	mv	a0,s0
    1238:	00000097          	auipc	ra,0x0
    123c:	d78080e7          	jalr	-648(ra) # fb0 <sdcard_cmd>
    1240:	00100593          	li	a1,1
    1244:	00800513          	li	a0,8
    1248:	00000097          	auipc	ra,0x0
    124c:	cf0080e7          	jalr	-784(ra) # f38 <sdcard_get>
    1250:	00000097          	auipc	ra,0x0
    1254:	b34080e7          	jalr	-1228(ra) # d84 <sdcard_ponder>
    1258:	00048513          	mv	a0,s1
    125c:	00000097          	auipc	ra,0x0
    1260:	d54080e7          	jalr	-684(ra) # fb0 <sdcard_cmd>
    1264:	00100593          	li	a1,1
    1268:	00800513          	li	a0,8
    126c:	00000097          	auipc	ra,0x0
    1270:	ccc080e7          	jalr	-820(ra) # f38 <sdcard_get>
    1274:	00a12623          	sw	a0,12(sp)
    1278:	00000097          	auipc	ra,0x0
    127c:	b0c080e7          	jalr	-1268(ra) # d84 <sdcard_ponder>
    1280:	00c12503          	lw	a0,12(sp)
    1284:	00050c63          	beqz	a0,129c <sdcard_init+0x118>
    1288:	001e8537          	lui	a0,0x1e8
    128c:	48050513          	addi	a0,a0,1152 # 1e8480 <__stacktop+0x1d8480>
    1290:	00000097          	auipc	ra,0x0
    1294:	ac8080e7          	jalr	-1336(ra) # d58 <pause>
    1298:	f9dff06f          	j	1234 <sdcard_init+0xb0>
    129c:	00005537          	lui	a0,0x5
    12a0:	e9450513          	addi	a0,a0,-364 # 4e94 <cmd16>
    12a4:	00000097          	auipc	ra,0x0
    12a8:	d0c080e7          	jalr	-756(ra) # fb0 <sdcard_cmd>
    12ac:	00100593          	li	a1,1
    12b0:	00800513          	li	a0,8
    12b4:	00000097          	auipc	ra,0x0
    12b8:	c84080e7          	jalr	-892(ra) # f38 <sdcard_get>
    12bc:	01812403          	lw	s0,24(sp)
    12c0:	01c12083          	lw	ra,28(sp)
    12c4:	01412483          	lw	s1,20(sp)
    12c8:	02010113          	addi	sp,sp,32
    12cc:	00000317          	auipc	t1,0x0
    12d0:	ab830067          	jr	-1352(t1) # d84 <sdcard_ponder>

000012d4 <sdcard_readsector>:
    12d4:	04060663          	beqz	a2,1320 <sdcard_readsector+0x4c>
    12d8:	ff010113          	addi	sp,sp,-16
    12dc:	00812423          	sw	s0,8(sp)
    12e0:	00912223          	sw	s1,4(sp)
    12e4:	00112623          	sw	ra,12(sp)
    12e8:	00050413          	mv	s0,a0
    12ec:	00a604b3          	add	s1,a2,a0
    12f0:	00040513          	mv	a0,s0
    12f4:	00000097          	auipc	ra,0x0
    12f8:	da4080e7          	jalr	-604(ra) # 1098 <sdcard_read_sector>
    12fc:	00140413          	addi	s0,s0,1
    1300:	00050593          	mv	a1,a0
    1304:	fe9416e3          	bne	s0,s1,12f0 <sdcard_readsector+0x1c>
    1308:	00c12083          	lw	ra,12(sp)
    130c:	00812403          	lw	s0,8(sp)
    1310:	00412483          	lw	s1,4(sp)
    1314:	00100513          	li	a0,1
    1318:	01010113          	addi	sp,sp,16
    131c:	00008067          	ret
    1320:	00000513          	li	a0,0
    1324:	00008067          	ret

00001328 <sdcard_writesector>:
    1328:	00000513          	li	a0,0
    132c:	00008067          	ret

00001330 <__divsi3>:
    1330:	06054063          	bltz	a0,1390 <__umodsi3+0x10>
    1334:	0605c663          	bltz	a1,13a0 <__umodsi3+0x20>

00001338 <__udivsi3>:
    1338:	00058613          	mv	a2,a1
    133c:	00050593          	mv	a1,a0
    1340:	fff00513          	li	a0,-1
    1344:	02060c63          	beqz	a2,137c <__udivsi3+0x44>
    1348:	00100693          	li	a3,1
    134c:	00b67a63          	bgeu	a2,a1,1360 <__udivsi3+0x28>
    1350:	00c05863          	blez	a2,1360 <__udivsi3+0x28>
    1354:	00161613          	slli	a2,a2,0x1
    1358:	00169693          	slli	a3,a3,0x1
    135c:	feb66ae3          	bltu	a2,a1,1350 <__udivsi3+0x18>
    1360:	00000513          	li	a0,0
    1364:	00c5e663          	bltu	a1,a2,1370 <__udivsi3+0x38>
    1368:	40c585b3          	sub	a1,a1,a2
    136c:	00d56533          	or	a0,a0,a3
    1370:	0016d693          	srli	a3,a3,0x1
    1374:	00165613          	srli	a2,a2,0x1
    1378:	fe0696e3          	bnez	a3,1364 <__udivsi3+0x2c>
    137c:	00008067          	ret

00001380 <__umodsi3>:
    1380:	00008293          	mv	t0,ra
    1384:	fb5ff0ef          	jal	1338 <__udivsi3>
    1388:	00058513          	mv	a0,a1
    138c:	00028067          	jr	t0
    1390:	40a00533          	neg	a0,a0
    1394:	0005d863          	bgez	a1,13a4 <__umodsi3+0x24>
    1398:	40b005b3          	neg	a1,a1
    139c:	f95ff06f          	j	1330 <__divsi3>
    13a0:	40b005b3          	neg	a1,a1
    13a4:	00008293          	mv	t0,ra
    13a8:	f89ff0ef          	jal	1330 <__divsi3>
    13ac:	40a00533          	neg	a0,a0
    13b0:	00028067          	jr	t0

000013b4 <__modsi3>:
    13b4:	00008293          	mv	t0,ra
    13b8:	0005ca63          	bltz	a1,13cc <__modsi3+0x18>
    13bc:	00054c63          	bltz	a0,13d4 <__modsi3+0x20>
    13c0:	f79ff0ef          	jal	1338 <__udivsi3>
    13c4:	00058513          	mv	a0,a1
    13c8:	00028067          	jr	t0
    13cc:	40b005b3          	neg	a1,a1
    13d0:	fe0558e3          	bgez	a0,13c0 <__modsi3+0xc>
    13d4:	40a00533          	neg	a0,a0
    13d8:	f61ff0ef          	jal	1338 <__udivsi3>
    13dc:	40b00533          	neg	a0,a1
    13e0:	00028067          	jr	t0

000013e4 <memset>:
    13e4:	00c50633          	add	a2,a0,a2
    13e8:	00050793          	mv	a5,a0
    13ec:	00c79463          	bne	a5,a2,13f4 <memset+0x10>
    13f0:	00008067          	ret
    13f4:	00178793          	addi	a5,a5,1
    13f8:	feb78fa3          	sb	a1,-1(a5)
    13fc:	ff1ff06f          	j	13ec <memset+0x8>

00001400 <memcpy>:
    1400:	00000793          	li	a5,0
    1404:	00c79463          	bne	a5,a2,140c <memcpy+0xc>
    1408:	00008067          	ret
    140c:	00f58733          	add	a4,a1,a5
    1410:	00074683          	lbu	a3,0(a4)
    1414:	00f50733          	add	a4,a0,a5
    1418:	00178793          	addi	a5,a5,1
    141c:	00d70023          	sb	a3,0(a4)
    1420:	fe5ff06f          	j	1404 <memcpy+0x4>

00001424 <strlen>:
    1424:	00000793          	li	a5,0
    1428:	00f50733          	add	a4,a0,a5
    142c:	00074703          	lbu	a4,0(a4)
    1430:	00071663          	bnez	a4,143c <strlen+0x18>
    1434:	00078513          	mv	a0,a5
    1438:	00008067          	ret
    143c:	00178793          	addi	a5,a5,1
    1440:	fe9ff06f          	j	1428 <strlen+0x4>

00001444 <strncmp>:
    1444:	00000793          	li	a5,0
    1448:	00c79663          	bne	a5,a2,1454 <strncmp+0x10>
    144c:	00000513          	li	a0,0
    1450:	00008067          	ret
    1454:	00f50733          	add	a4,a0,a5
    1458:	00074683          	lbu	a3,0(a4)
    145c:	00f58733          	add	a4,a1,a5
    1460:	00074703          	lbu	a4,0(a4)
    1464:	00e6e863          	bltu	a3,a4,1474 <strncmp+0x30>
    1468:	00d76a63          	bltu	a4,a3,147c <strncmp+0x38>
    146c:	00178793          	addi	a5,a5,1
    1470:	fd9ff06f          	j	1448 <strncmp+0x4>
    1474:	fff00513          	li	a0,-1
    1478:	00008067          	ret
    147c:	00100513          	li	a0,1
    1480:	00008067          	ret

00001484 <strncpy>:
    1484:	00000793          	li	a5,0
    1488:	00c79463          	bne	a5,a2,1490 <strncpy+0xc>
    148c:	00008067          	ret
    1490:	00f58733          	add	a4,a1,a5
    1494:	00074683          	lbu	a3,0(a4)
    1498:	00f50733          	add	a4,a0,a5
    149c:	00178793          	addi	a5,a5,1
    14a0:	00d70023          	sb	a3,0(a4)
    14a4:	fe5ff06f          	j	1488 <strncpy+0x4>

000014a8 <strcat>:
    14a8:	00050793          	mv	a5,a0
    14ac:	0007c683          	lbu	a3,0(a5)
    14b0:	00078713          	mv	a4,a5
    14b4:	00178793          	addi	a5,a5,1
    14b8:	fe069ae3          	bnez	a3,14ac <strcat+0x4>
    14bc:	0005c783          	lbu	a5,0(a1)
    14c0:	00158593          	addi	a1,a1,1
    14c4:	00170713          	addi	a4,a4,1
    14c8:	fef70fa3          	sb	a5,-1(a4)
    14cc:	fe0798e3          	bnez	a5,14bc <strcat+0x14>
    14d0:	00008067          	ret

000014d4 <oled_wait>:
    14d4:	00000013          	nop
    14d8:	00000013          	nop
    14dc:	00000013          	nop
    14e0:	00000013          	nop
    14e4:	00000013          	nop
    14e8:	00000013          	nop
    14ec:	00000013          	nop
    14f0:	00008067          	ret

000014f4 <oled_init_mode>:
    14f4:	000057b7          	lui	a5,0x5
    14f8:	ec87a703          	lw	a4,-312(a5) # 4ec8 <OLED_RST>
    14fc:	fe010113          	addi	sp,sp,-32
    1500:	00112e23          	sw	ra,28(sp)
    1504:	00812c23          	sw	s0,24(sp)
    1508:	00072023          	sw	zero,0(a4)
    150c:	00040737          	lui	a4,0x40
    1510:	00000013          	nop
    1514:	fff70713          	addi	a4,a4,-1 # 3ffff <__stacktop+0x2ffff>
    1518:	fe071ce3          	bnez	a4,1510 <oled_init_mode+0x1c>
    151c:	ec87a703          	lw	a4,-312(a5)
    1520:	00100693          	li	a3,1
    1524:	00d72023          	sw	a3,0(a4)
    1528:	00040737          	lui	a4,0x40
    152c:	00000013          	nop
    1530:	fff70713          	addi	a4,a4,-1 # 3ffff <__stacktop+0x2ffff>
    1534:	fe071ce3          	bnez	a4,152c <oled_init_mode+0x38>
    1538:	ec87a783          	lw	a5,-312(a5)
    153c:	0007a023          	sw	zero,0(a5)
    1540:	000407b7          	lui	a5,0x40
    1544:	00000013          	nop
    1548:	fff78793          	addi	a5,a5,-1 # 3ffff <__stacktop+0x2ffff>
    154c:	fe079ce3          	bnez	a5,1544 <oled_init_mode+0x50>
    1550:	00005737          	lui	a4,0x5
    1554:	ecc72783          	lw	a5,-308(a4) # 4ecc <OLED>
    1558:	2af00693          	li	a3,687
    155c:	00d7a023          	sw	a3,0(a5)
    1560:	000407b7          	lui	a5,0x40
    1564:	00000013          	nop
    1568:	fff78793          	addi	a5,a5,-1 # 3ffff <__stacktop+0x2ffff>
    156c:	fe079ce3          	bnez	a5,1564 <oled_init_mode+0x70>
    1570:	ecc72403          	lw	s0,-308(a4)
    1574:	2a000793          	li	a5,672
    1578:	00a12623          	sw	a0,12(sp)
    157c:	00f42023          	sw	a5,0(s0)
    1580:	00000097          	auipc	ra,0x0
    1584:	f54080e7          	jalr	-172(ra) # 14d4 <oled_wait>
    1588:	00c12503          	lw	a0,12(sp)
    158c:	4a000793          	li	a5,1184
    1590:	00050463          	beqz	a0,1598 <oled_init_mode+0xa4>
    1594:	42000793          	li	a5,1056
    1598:	00f42023          	sw	a5,0(s0)
    159c:	00000097          	auipc	ra,0x0
    15a0:	f38080e7          	jalr	-200(ra) # 14d4 <oled_wait>
    15a4:	2fd00793          	li	a5,765
    15a8:	00f42023          	sw	a5,0(s0)
    15ac:	00000097          	auipc	ra,0x0
    15b0:	f28080e7          	jalr	-216(ra) # 14d4 <oled_wait>
    15b4:	4b100793          	li	a5,1201
    15b8:	00f42023          	sw	a5,0(s0)
    15bc:	00000097          	auipc	ra,0x0
    15c0:	f18080e7          	jalr	-232(ra) # 14d4 <oled_wait>
    15c4:	2a200793          	li	a5,674
    15c8:	00f42023          	sw	a5,0(s0)
    15cc:	00000097          	auipc	ra,0x0
    15d0:	f08080e7          	jalr	-248(ra) # 14d4 <oled_wait>
    15d4:	40000793          	li	a5,1024
    15d8:	00f42023          	sw	a5,0(s0)
    15dc:	01812403          	lw	s0,24(sp)
    15e0:	01c12083          	lw	ra,28(sp)
    15e4:	02010113          	addi	sp,sp,32
    15e8:	00000317          	auipc	t1,0x0
    15ec:	eec30067          	jr	-276(t1) # 14d4 <oled_wait>

000015f0 <oled_init>:
    15f0:	00000513          	li	a0,0
    15f4:	00000317          	auipc	t1,0x0
    15f8:	f0030067          	jr	-256(t1) # 14f4 <oled_init_mode>

000015fc <oled_fullscreen>:
    15fc:	ff010113          	addi	sp,sp,-16
    1600:	000057b7          	lui	a5,0x5
    1604:	00812423          	sw	s0,8(sp)
    1608:	ecc7a403          	lw	s0,-308(a5) # 4ecc <OLED>
    160c:	00112623          	sw	ra,12(sp)
    1610:	00912223          	sw	s1,4(sp)
    1614:	01212023          	sw	s2,0(sp)
    1618:	21500793          	li	a5,533
    161c:	00f42023          	sw	a5,0(s0)
    1620:	40000913          	li	s2,1024
    1624:	00000097          	auipc	ra,0x0
    1628:	eb0080e7          	jalr	-336(ra) # 14d4 <oled_wait>
    162c:	47f00493          	li	s1,1151
    1630:	01242023          	sw	s2,0(s0)
    1634:	00000097          	auipc	ra,0x0
    1638:	ea0080e7          	jalr	-352(ra) # 14d4 <oled_wait>
    163c:	00942023          	sw	s1,0(s0)
    1640:	00000097          	auipc	ra,0x0
    1644:	e94080e7          	jalr	-364(ra) # 14d4 <oled_wait>
    1648:	27500793          	li	a5,629
    164c:	00f42023          	sw	a5,0(s0)
    1650:	00000097          	auipc	ra,0x0
    1654:	e84080e7          	jalr	-380(ra) # 14d4 <oled_wait>
    1658:	01242023          	sw	s2,0(s0)
    165c:	00000097          	auipc	ra,0x0
    1660:	e78080e7          	jalr	-392(ra) # 14d4 <oled_wait>
    1664:	00942023          	sw	s1,0(s0)
    1668:	00000097          	auipc	ra,0x0
    166c:	e6c080e7          	jalr	-404(ra) # 14d4 <oled_wait>
    1670:	25c00793          	li	a5,604
    1674:	00f42023          	sw	a5,0(s0)
    1678:	00812403          	lw	s0,8(sp)
    167c:	00c12083          	lw	ra,12(sp)
    1680:	00412483          	lw	s1,4(sp)
    1684:	00012903          	lw	s2,0(sp)
    1688:	01010113          	addi	sp,sp,16
    168c:	00000317          	auipc	t1,0x0
    1690:	e4830067          	jr	-440(t1) # 14d4 <oled_wait>

00001694 <oled_wait>:
    1694:	00000013          	nop
    1698:	00000013          	nop
    169c:	00000013          	nop
    16a0:	00000013          	nop
    16a4:	00000013          	nop
    16a8:	00000013          	nop
    16ac:	00000013          	nop
    16b0:	00008067          	ret

000016b4 <display_framebuffer>:
    16b4:	00007537          	lui	a0,0x7
    16b8:	6e450513          	addi	a0,a0,1764 # 76e4 <framebuffer>
    16bc:	00008067          	ret

000016c0 <display_set_cursor>:
    16c0:	000057b7          	lui	a5,0x5
    16c4:	44a7a223          	sw	a0,1092(a5) # 5444 <cursor_x>
    16c8:	000057b7          	lui	a5,0x5
    16cc:	44b7a023          	sw	a1,1088(a5) # 5440 <cursor_y>
    16d0:	00008067          	ret

000016d4 <display_set_front_back_color>:
    16d4:	000057b7          	lui	a5,0x5
    16d8:	42a78ea3          	sb	a0,1085(a5) # 543d <front_color>
    16dc:	000057b7          	lui	a5,0x5
    16e0:	42b78e23          	sb	a1,1084(a5) # 543c <back_color>
    16e4:	00008067          	ret

000016e8 <display_putchar>:
    16e8:	00a00793          	li	a5,10
    16ec:	000055b7          	lui	a1,0x5
    16f0:	02f51663          	bne	a0,a5,171c <display_putchar+0x34>
    16f4:	00005737          	lui	a4,0x5
    16f8:	44072783          	lw	a5,1088(a4) # 5440 <cursor_y>
    16fc:	4405a223          	sw	zero,1092(a1) # 5444 <cursor_x>
    1700:	00878793          	addi	a5,a5,8
    1704:	44f72023          	sw	a5,1088(a4)
    1708:	07f00713          	li	a4,127
    170c:	00f75663          	bge	a4,a5,1718 <display_putchar+0x30>
    1710:	000057b7          	lui	a5,0x5
    1714:	4407a023          	sw	zero,1088(a5) # 5440 <cursor_y>
    1718:	00008067          	ret
    171c:	ff010113          	addi	sp,sp,-16
    1720:	00812623          	sw	s0,12(sp)
    1724:	01f00713          	li	a4,31
    1728:	4445a783          	lw	a5,1092(a1)
    172c:	08a75a63          	bge	a4,a0,17c0 <display_putchar+0xd8>
    1730:	00005737          	lui	a4,0x5
    1734:	43c74f83          	lbu	t6,1084(a4) # 543c <back_color>
    1738:	00005737          	lui	a4,0x5
    173c:	43d74283          	lbu	t0,1085(a4) # 543d <front_color>
    1740:	000056b7          	lui	a3,0x5
    1744:	00251713          	slli	a4,a0,0x2
    1748:	01468693          	addi	a3,a3,20 # 5014 <font>
    174c:	00a70733          	add	a4,a4,a0
    1750:	00d70733          	add	a4,a4,a3
    1754:	000056b7          	lui	a3,0x5
    1758:	4406a683          	lw	a3,1088(a3) # 5440 <cursor_y>
    175c:	00007637          	lui	a2,0x7
    1760:	6e460613          	addi	a2,a2,1764 # 76e4 <framebuffer>
    1764:	00c686b3          	add	a3,a3,a2
    1768:	00779613          	slli	a2,a5,0x7
    176c:	00c686b3          	add	a3,a3,a2
    1770:	00100f13          	li	t5,1
    1774:	00000613          	li	a2,0
    1778:	00500393          	li	t2,5
    177c:	00800413          	li	s0,8
    1780:	00cf1eb3          	sll	t4,t5,a2
    1784:	00d608b3          	add	a7,a2,a3
    1788:	00070813          	mv	a6,a4
    178c:	00000513          	li	a0,0
    1790:	f6084303          	lbu	t1,-160(a6)
    1794:	00028e13          	mv	t3,t0
    1798:	01d37333          	and	t1,t1,t4
    179c:	00031463          	bnez	t1,17a4 <display_putchar+0xbc>
    17a0:	000f8e13          	mv	t3,t6
    17a4:	01c88023          	sb	t3,0(a7)
    17a8:	00150513          	addi	a0,a0,1
    17ac:	00180813          	addi	a6,a6,1
    17b0:	08088893          	addi	a7,a7,128
    17b4:	fc751ee3          	bne	a0,t2,1790 <display_putchar+0xa8>
    17b8:	00160613          	addi	a2,a2,1
    17bc:	fc8612e3          	bne	a2,s0,1780 <display_putchar+0x98>
    17c0:	00578793          	addi	a5,a5,5
    17c4:	07f00713          	li	a4,127
    17c8:	00f74663          	blt	a4,a5,17d4 <display_putchar+0xec>
    17cc:	44f5a223          	sw	a5,1092(a1)
    17d0:	0240006f          	j	17f4 <display_putchar+0x10c>
    17d4:	000056b7          	lui	a3,0x5
    17d8:	4406a783          	lw	a5,1088(a3) # 5440 <cursor_y>
    17dc:	4405a223          	sw	zero,1092(a1)
    17e0:	00878793          	addi	a5,a5,8
    17e4:	44f6a023          	sw	a5,1088(a3)
    17e8:	00f75663          	bge	a4,a5,17f4 <display_putchar+0x10c>
    17ec:	000057b7          	lui	a5,0x5
    17f0:	4407a023          	sw	zero,1088(a5) # 5440 <cursor_y>
    17f4:	00c12403          	lw	s0,12(sp)
    17f8:	01010113          	addi	sp,sp,16
    17fc:	00008067          	ret

00001800 <display_refresh>:
    1800:	fe010113          	addi	sp,sp,-32
    1804:	000057b7          	lui	a5,0x5
    1808:	01212823          	sw	s2,16(sp)
    180c:	ecc7a903          	lw	s2,-308(a5) # 4ecc <OLED>
    1810:	01312623          	sw	s3,12(sp)
    1814:	000079b7          	lui	s3,0x7
    1818:	00912a23          	sw	s1,20(sp)
    181c:	01412423          	sw	s4,8(sp)
    1820:	00112e23          	sw	ra,28(sp)
    1824:	00812c23          	sw	s0,24(sp)
    1828:	00000493          	li	s1,0
    182c:	6e498993          	addi	s3,s3,1764 # 76e4 <framebuffer>
    1830:	00004a37          	lui	s4,0x4
    1834:	013487b3          	add	a5,s1,s3
    1838:	0007c403          	lbu	s0,0(a5)
    183c:	00148493          	addi	s1,s1,1
    1840:	00245413          	srli	s0,s0,0x2
    1844:	40046413          	ori	s0,s0,1024
    1848:	00892023          	sw	s0,0(s2)
    184c:	00000097          	auipc	ra,0x0
    1850:	e48080e7          	jalr	-440(ra) # 1694 <oled_wait>
    1854:	00892023          	sw	s0,0(s2)
    1858:	00000097          	auipc	ra,0x0
    185c:	e3c080e7          	jalr	-452(ra) # 1694 <oled_wait>
    1860:	00892023          	sw	s0,0(s2)
    1864:	00000097          	auipc	ra,0x0
    1868:	e30080e7          	jalr	-464(ra) # 1694 <oled_wait>
    186c:	fd4494e3          	bne	s1,s4,1834 <display_refresh+0x34>
    1870:	01c12083          	lw	ra,28(sp)
    1874:	01812403          	lw	s0,24(sp)
    1878:	01412483          	lw	s1,20(sp)
    187c:	01012903          	lw	s2,16(sp)
    1880:	00c12983          	lw	s3,12(sp)
    1884:	00812a03          	lw	s4,8(sp)
    1888:	02010113          	addi	sp,sp,32
    188c:	00008067          	ret

00001890 <print_string>:
    1890:	ff010113          	addi	sp,sp,-16
    1894:	00812423          	sw	s0,8(sp)
    1898:	00912223          	sw	s1,4(sp)
    189c:	00112623          	sw	ra,12(sp)
    18a0:	00050413          	mv	s0,a0
    18a4:	000054b7          	lui	s1,0x5
    18a8:	00044503          	lbu	a0,0(s0)
    18ac:	00051c63          	bnez	a0,18c4 <print_string+0x34>
    18b0:	00c12083          	lw	ra,12(sp)
    18b4:	00812403          	lw	s0,8(sp)
    18b8:	00412483          	lw	s1,4(sp)
    18bc:	01010113          	addi	sp,sp,16
    18c0:	00008067          	ret
    18c4:	4484a783          	lw	a5,1096(s1) # 5448 <f_putchar>
    18c8:	00140413          	addi	s0,s0,1
    18cc:	000780e7          	jalr	a5
    18d0:	fd9ff06f          	j	18a8 <print_string+0x18>

000018d4 <print_dec>:
    18d4:	ef010113          	addi	sp,sp,-272
    18d8:	10812423          	sw	s0,264(sp)
    18dc:	10912223          	sw	s1,260(sp)
    18e0:	10112623          	sw	ra,268(sp)
    18e4:	11212023          	sw	s2,256(sp)
    18e8:	00050413          	mv	s0,a0
    18ec:	000054b7          	lui	s1,0x5
    18f0:	08045063          	bgez	s0,1970 <print_dec+0x9c>
    18f4:	4484a783          	lw	a5,1096(s1) # 5448 <f_putchar>
    18f8:	02d00513          	li	a0,45
    18fc:	40800433          	neg	s0,s0
    1900:	000780e7          	jalr	a5
    1904:	fedff06f          	j	18f0 <print_dec+0x1c>
    1908:	00040513          	mv	a0,s0
    190c:	00a00593          	li	a1,10
    1910:	00000097          	auipc	ra,0x0
    1914:	a20080e7          	jalr	-1504(ra) # 1330 <__divsi3>
    1918:	00251793          	slli	a5,a0,0x2
    191c:	00f507b3          	add	a5,a0,a5
    1920:	00179793          	slli	a5,a5,0x1
    1924:	40f40433          	sub	s0,s0,a5
    1928:	00148493          	addi	s1,s1,1
    192c:	fe848fa3          	sb	s0,-1(s1)
    1930:	00050413          	mv	s0,a0
    1934:	fc041ae3          	bnez	s0,1908 <print_dec+0x34>
    1938:	fd2488e3          	beq	s1,s2,1908 <print_dec+0x34>
    193c:	00005437          	lui	s0,0x5
    1940:	fff4c503          	lbu	a0,-1(s1)
    1944:	44842783          	lw	a5,1096(s0) # 5448 <f_putchar>
    1948:	fff48493          	addi	s1,s1,-1
    194c:	03050513          	addi	a0,a0,48
    1950:	000780e7          	jalr	a5
    1954:	ff2496e3          	bne	s1,s2,1940 <print_dec+0x6c>
    1958:	10c12083          	lw	ra,268(sp)
    195c:	10812403          	lw	s0,264(sp)
    1960:	10412483          	lw	s1,260(sp)
    1964:	10012903          	lw	s2,256(sp)
    1968:	11010113          	addi	sp,sp,272
    196c:	00008067          	ret
    1970:	00010493          	mv	s1,sp
    1974:	00010913          	mv	s2,sp
    1978:	fbdff06f          	j	1934 <print_dec+0x60>

0000197c <print_hex_digits>:
    197c:	fe010113          	addi	sp,sp,-32
    1980:	00812c23          	sw	s0,24(sp)
    1984:	00912a23          	sw	s1,20(sp)
    1988:	fff58413          	addi	s0,a1,-1
    198c:	000054b7          	lui	s1,0x5
    1990:	01212823          	sw	s2,16(sp)
    1994:	01312623          	sw	s3,12(sp)
    1998:	00112e23          	sw	ra,28(sp)
    199c:	00050993          	mv	s3,a0
    19a0:	00241413          	slli	s0,s0,0x2
    19a4:	fcc48493          	addi	s1,s1,-52 # 4fcc <LEDS+0xfc>
    19a8:	00005937          	lui	s2,0x5
    19ac:	02045063          	bgez	s0,19cc <print_hex_digits+0x50>
    19b0:	01c12083          	lw	ra,28(sp)
    19b4:	01812403          	lw	s0,24(sp)
    19b8:	01412483          	lw	s1,20(sp)
    19bc:	01012903          	lw	s2,16(sp)
    19c0:	00c12983          	lw	s3,12(sp)
    19c4:	02010113          	addi	sp,sp,32
    19c8:	00008067          	ret
    19cc:	0089d7b3          	srl	a5,s3,s0
    19d0:	00f7f793          	andi	a5,a5,15
    19d4:	00f487b3          	add	a5,s1,a5
    19d8:	44892703          	lw	a4,1096(s2) # 5448 <f_putchar>
    19dc:	0007c503          	lbu	a0,0(a5)
    19e0:	ffc40413          	addi	s0,s0,-4
    19e4:	000700e7          	jalr	a4
    19e8:	fc5ff06f          	j	19ac <print_hex_digits+0x30>

000019ec <print_hex>:
    19ec:	00800593          	li	a1,8
    19f0:	00000317          	auipc	t1,0x0
    19f4:	f8c30067          	jr	-116(t1) # 197c <print_hex_digits>

000019f8 <printf>:
    19f8:	fa010113          	addi	sp,sp,-96
    19fc:	04f12a23          	sw	a5,84(sp)
    1a00:	04410793          	addi	a5,sp,68
    1a04:	02812c23          	sw	s0,56(sp)
    1a08:	02912a23          	sw	s1,52(sp)
    1a0c:	03212823          	sw	s2,48(sp)
    1a10:	03312623          	sw	s3,44(sp)
    1a14:	03412423          	sw	s4,40(sp)
    1a18:	03512223          	sw	s5,36(sp)
    1a1c:	03612023          	sw	s6,32(sp)
    1a20:	02112e23          	sw	ra,60(sp)
    1a24:	01712e23          	sw	s7,28(sp)
    1a28:	00050413          	mv	s0,a0
    1a2c:	04b12223          	sw	a1,68(sp)
    1a30:	04c12423          	sw	a2,72(sp)
    1a34:	04d12623          	sw	a3,76(sp)
    1a38:	04e12823          	sw	a4,80(sp)
    1a3c:	05012c23          	sw	a6,88(sp)
    1a40:	05112e23          	sw	a7,92(sp)
    1a44:	00f12623          	sw	a5,12(sp)
    1a48:	02500913          	li	s2,37
    1a4c:	000054b7          	lui	s1,0x5
    1a50:	07300993          	li	s3,115
    1a54:	07800a13          	li	s4,120
    1a58:	06400a93          	li	s5,100
    1a5c:	06300b13          	li	s6,99
    1a60:	00044503          	lbu	a0,0(s0)
    1a64:	02051863          	bnez	a0,1a94 <printf+0x9c>
    1a68:	03c12083          	lw	ra,60(sp)
    1a6c:	03812403          	lw	s0,56(sp)
    1a70:	03412483          	lw	s1,52(sp)
    1a74:	03012903          	lw	s2,48(sp)
    1a78:	02c12983          	lw	s3,44(sp)
    1a7c:	02812a03          	lw	s4,40(sp)
    1a80:	02412a83          	lw	s5,36(sp)
    1a84:	02012b03          	lw	s6,32(sp)
    1a88:	01c12b83          	lw	s7,28(sp)
    1a8c:	06010113          	addi	sp,sp,96
    1a90:	00008067          	ret
    1a94:	09251a63          	bne	a0,s2,1b28 <printf+0x130>
    1a98:	00144503          	lbu	a0,1(s0)
    1a9c:	00140b93          	addi	s7,s0,1
    1aa0:	03351463          	bne	a0,s3,1ac8 <printf+0xd0>
    1aa4:	00c12783          	lw	a5,12(sp)
    1aa8:	0007a503          	lw	a0,0(a5)
    1aac:	00478713          	addi	a4,a5,4
    1ab0:	00e12623          	sw	a4,12(sp)
    1ab4:	00000097          	auipc	ra,0x0
    1ab8:	ddc080e7          	jalr	-548(ra) # 1890 <print_string>
    1abc:	000b8413          	mv	s0,s7
    1ac0:	00140413          	addi	s0,s0,1
    1ac4:	f9dff06f          	j	1a60 <printf+0x68>
    1ac8:	03451063          	bne	a0,s4,1ae8 <printf+0xf0>
    1acc:	00c12783          	lw	a5,12(sp)
    1ad0:	0007a503          	lw	a0,0(a5)
    1ad4:	00478713          	addi	a4,a5,4
    1ad8:	00e12623          	sw	a4,12(sp)
    1adc:	00000097          	auipc	ra,0x0
    1ae0:	f10080e7          	jalr	-240(ra) # 19ec <print_hex>
    1ae4:	fd9ff06f          	j	1abc <printf+0xc4>
    1ae8:	03551063          	bne	a0,s5,1b08 <printf+0x110>
    1aec:	00c12783          	lw	a5,12(sp)
    1af0:	0007a503          	lw	a0,0(a5)
    1af4:	00478713          	addi	a4,a5,4
    1af8:	00e12623          	sw	a4,12(sp)
    1afc:	00000097          	auipc	ra,0x0
    1b00:	dd8080e7          	jalr	-552(ra) # 18d4 <print_dec>
    1b04:	fb9ff06f          	j	1abc <printf+0xc4>
    1b08:	4484a783          	lw	a5,1096(s1) # 5448 <f_putchar>
    1b0c:	01651a63          	bne	a0,s6,1b20 <printf+0x128>
    1b10:	00c12703          	lw	a4,12(sp)
    1b14:	00072503          	lw	a0,0(a4)
    1b18:	00470693          	addi	a3,a4,4
    1b1c:	00d12623          	sw	a3,12(sp)
    1b20:	000780e7          	jalr	a5
    1b24:	f99ff06f          	j	1abc <printf+0xc4>
    1b28:	4484a783          	lw	a5,1096(s1)
    1b2c:	000780e7          	jalr	a5
    1b30:	f91ff06f          	j	1ac0 <printf+0xc8>

00001b34 <__mulsi3>:
    1b34:	00050793          	mv	a5,a0
    1b38:	00000513          	li	a0,0
    1b3c:	00079463          	bnez	a5,1b44 <__mulsi3+0x10>
    1b40:	00008067          	ret
    1b44:	01f79693          	slli	a3,a5,0x1f
    1b48:	41f6d713          	srai	a4,a3,0x1f
    1b4c:	00b77733          	and	a4,a4,a1
    1b50:	00e50533          	add	a0,a0,a4
    1b54:	0017d793          	srli	a5,a5,0x1
    1b58:	00159593          	slli	a1,a1,0x1
    1b5c:	fe1ff06f          	j	1b3c <__mulsi3+0x8>

00001b60 <fat_list_insert_last>:
    1b60:	00452783          	lw	a5,4(a0)
    1b64:	04079263          	bnez	a5,1ba8 <fat_list_insert_last+0x48>
    1b68:	00052783          	lw	a5,0(a0)
    1b6c:	00079c63          	bnez	a5,1b84 <fat_list_insert_last+0x24>
    1b70:	00b52023          	sw	a1,0(a0)
    1b74:	00b52223          	sw	a1,4(a0)
    1b78:	0005a023          	sw	zero,0(a1)
    1b7c:	0005a223          	sw	zero,4(a1)
    1b80:	00008067          	ret
    1b84:	0007a703          	lw	a4,0(a5)
    1b88:	00f5a223          	sw	a5,4(a1)
    1b8c:	00e5a023          	sw	a4,0(a1)
    1b90:	00071863          	bnez	a4,1ba0 <fat_list_insert_last+0x40>
    1b94:	00b52023          	sw	a1,0(a0)
    1b98:	00b7a023          	sw	a1,0(a5)
    1b9c:	00008067          	ret
    1ba0:	00b72223          	sw	a1,4(a4)
    1ba4:	ff5ff06f          	j	1b98 <fat_list_insert_last+0x38>
    1ba8:	0047a703          	lw	a4,4(a5)
    1bac:	00f5a023          	sw	a5,0(a1)
    1bb0:	00e5a223          	sw	a4,4(a1)
    1bb4:	00071863          	bnez	a4,1bc4 <fat_list_insert_last+0x64>
    1bb8:	00b52223          	sw	a1,4(a0)
    1bbc:	00b7a223          	sw	a1,4(a5)
    1bc0:	00008067          	ret
    1bc4:	00b72023          	sw	a1,0(a4)
    1bc8:	ff5ff06f          	j	1bbc <fat_list_insert_last+0x5c>

00001bcc <FileString_StrCmpNoCase>:
    1bcc:	00050e93          	mv	t4,a0
    1bd0:	00000793          	li	a5,0
    1bd4:	01900e13          	li	t3,25
    1bd8:	00c79663          	bne	a5,a2,1be4 <FileString_StrCmpNoCase+0x18>
    1bdc:	00000513          	li	a0,0
    1be0:	00008067          	ret
    1be4:	00fe8733          	add	a4,t4,a5
    1be8:	00074803          	lbu	a6,0(a4)
    1bec:	00f58733          	add	a4,a1,a5
    1bf0:	00074883          	lbu	a7,0(a4)
    1bf4:	fbf80713          	addi	a4,a6,-65
    1bf8:	0ff77713          	zext.b	a4,a4
    1bfc:	00080693          	mv	a3,a6
    1c00:	00ee6663          	bltu	t3,a4,1c0c <FileString_StrCmpNoCase+0x40>
    1c04:	02080693          	addi	a3,a6,32
    1c08:	0ff6f693          	zext.b	a3,a3
    1c0c:	fbf88313          	addi	t1,a7,-65
    1c10:	0ff37313          	zext.b	t1,t1
    1c14:	00088713          	mv	a4,a7
    1c18:	006e6663          	bltu	t3,t1,1c24 <FileString_StrCmpNoCase+0x58>
    1c1c:	02088713          	addi	a4,a7,32
    1c20:	0ff77713          	zext.b	a4,a4
    1c24:	40e68533          	sub	a0,a3,a4
    1c28:	00e69863          	bne	a3,a4,1c38 <FileString_StrCmpNoCase+0x6c>
    1c2c:	00178793          	addi	a5,a5,1
    1c30:	00088463          	beqz	a7,1c38 <FileString_StrCmpNoCase+0x6c>
    1c34:	fa0812e3          	bnez	a6,1bd8 <FileString_StrCmpNoCase+0xc>
    1c38:	00008067          	ret

00001c3c <FileString_GetExtension>:
    1c3c:	00050793          	mv	a5,a0
    1c40:	fff00713          	li	a4,-1
    1c44:	02e00613          	li	a2,46
    1c48:	0007c683          	lbu	a3,0(a5)
    1c4c:	00069663          	bnez	a3,1c58 <FileString_GetExtension+0x1c>
    1c50:	00070513          	mv	a0,a4
    1c54:	00008067          	ret
    1c58:	00c69463          	bne	a3,a2,1c60 <FileString_GetExtension+0x24>
    1c5c:	40a78733          	sub	a4,a5,a0
    1c60:	00178793          	addi	a5,a5,1
    1c64:	fe5ff06f          	j	1c48 <FileString_GetExtension+0xc>

00001c68 <fatfs_fat_writeback>:
    1c68:	00059e63          	bnez	a1,1c84 <fatfs_fat_writeback+0x1c>
    1c6c:	00000513          	li	a0,0
    1c70:	00008067          	ret
    1c74:	00000513          	li	a0,0
    1c78:	01c12083          	lw	ra,28(sp)
    1c7c:	02010113          	addi	sp,sp,32
    1c80:	00008067          	ret
    1c84:	2045a783          	lw	a5,516(a1)
    1c88:	04078e63          	beqz	a5,1ce4 <fatfs_fat_writeback+0x7c>
    1c8c:	03852683          	lw	a3,56(a0)
    1c90:	00050793          	mv	a5,a0
    1c94:	04068663          	beqz	a3,1ce0 <fatfs_fat_writeback+0x78>
    1c98:	0147a703          	lw	a4,20(a5)
    1c9c:	2005a503          	lw	a0,512(a1)
    1ca0:	0207a803          	lw	a6,32(a5)
    1ca4:	00100613          	li	a2,1
    1ca8:	fe010113          	addi	sp,sp,-32
    1cac:	40e607b3          	sub	a5,a2,a4
    1cb0:	00112e23          	sw	ra,28(sp)
    1cb4:	00a787b3          	add	a5,a5,a0
    1cb8:	00f87663          	bgeu	a6,a5,1cc4 <fatfs_fat_writeback+0x5c>
    1cbc:	01070733          	add	a4,a4,a6
    1cc0:	40a70633          	sub	a2,a4,a0
    1cc4:	00b12623          	sw	a1,12(sp)
    1cc8:	000680e7          	jalr	a3
    1ccc:	fa0504e3          	beqz	a0,1c74 <fatfs_fat_writeback+0xc>
    1cd0:	00c12583          	lw	a1,12(sp)
    1cd4:	00100513          	li	a0,1
    1cd8:	2005a223          	sw	zero,516(a1)
    1cdc:	f9dff06f          	j	1c78 <fatfs_fat_writeback+0x10>
    1ce0:	2005a223          	sw	zero,516(a1)
    1ce4:	00100513          	li	a0,1
    1ce8:	00008067          	ret

00001cec <fatfs_fat_read_sector>:
    1cec:	fe010113          	addi	sp,sp,-32
    1cf0:	01212823          	sw	s2,16(sp)
    1cf4:	25452903          	lw	s2,596(a0)
    1cf8:	00812c23          	sw	s0,24(sp)
    1cfc:	00112e23          	sw	ra,28(sp)
    1d00:	00912a23          	sw	s1,20(sp)
    1d04:	01312623          	sw	s3,12(sp)
    1d08:	00000413          	li	s0,0
    1d0c:	04091463          	bnez	s2,1d54 <fatfs_fat_read_sector+0x68>
    1d10:	25452783          	lw	a5,596(a0)
    1d14:	00058493          	mv	s1,a1
    1d18:	00050993          	mv	s3,a0
    1d1c:	20f42623          	sw	a5,524(s0)
    1d20:	20442783          	lw	a5,516(s0)
    1d24:	24852a23          	sw	s0,596(a0)
    1d28:	08079863          	bnez	a5,1db8 <fatfs_fat_read_sector+0xcc>
    1d2c:	0349a783          	lw	a5,52(s3)
    1d30:	20942023          	sw	s1,512(s0)
    1d34:	00100613          	li	a2,1
    1d38:	00040593          	mv	a1,s0
    1d3c:	00048513          	mv	a0,s1
    1d40:	000780e7          	jalr	a5
    1d44:	08051463          	bnez	a0,1dcc <fatfs_fat_read_sector+0xe0>
    1d48:	fff00793          	li	a5,-1
    1d4c:	20f42023          	sw	a5,512(s0)
    1d50:	0480006f          	j	1d98 <fatfs_fat_read_sector+0xac>
    1d54:	20092783          	lw	a5,512(s2)
    1d58:	00f5e663          	bltu	a1,a5,1d64 <fatfs_fat_read_sector+0x78>
    1d5c:	00178713          	addi	a4,a5,1
    1d60:	02e5e463          	bltu	a1,a4,1d88 <fatfs_fat_read_sector+0x9c>
    1d64:	20c92783          	lw	a5,524(s2)
    1d68:	00079663          	bnez	a5,1d74 <fatfs_fat_read_sector+0x88>
    1d6c:	00040a63          	beqz	s0,1d80 <fatfs_fat_read_sector+0x94>
    1d70:	20042623          	sw	zero,524(s0)
    1d74:	00090413          	mv	s0,s2
    1d78:	20c92903          	lw	s2,524(s2)
    1d7c:	f91ff06f          	j	1d0c <fatfs_fat_read_sector+0x20>
    1d80:	24052a23          	sw	zero,596(a0)
    1d84:	ff1ff06f          	j	1d74 <fatfs_fat_read_sector+0x88>
    1d88:	40f585b3          	sub	a1,a1,a5
    1d8c:	00959593          	slli	a1,a1,0x9
    1d90:	00b905b3          	add	a1,s2,a1
    1d94:	20b92423          	sw	a1,520(s2)
    1d98:	01c12083          	lw	ra,28(sp)
    1d9c:	01812403          	lw	s0,24(sp)
    1da0:	01412483          	lw	s1,20(sp)
    1da4:	00c12983          	lw	s3,12(sp)
    1da8:	00090513          	mv	a0,s2
    1dac:	01012903          	lw	s2,16(sp)
    1db0:	02010113          	addi	sp,sp,32
    1db4:	00008067          	ret
    1db8:	00040593          	mv	a1,s0
    1dbc:	00000097          	auipc	ra,0x0
    1dc0:	eac080e7          	jalr	-340(ra) # 1c68 <fatfs_fat_writeback>
    1dc4:	f60514e3          	bnez	a0,1d2c <fatfs_fat_read_sector+0x40>
    1dc8:	fd1ff06f          	j	1d98 <fatfs_fat_read_sector+0xac>
    1dcc:	20842423          	sw	s0,520(s0)
    1dd0:	00040913          	mv	s2,s0
    1dd4:	fc5ff06f          	j	1d98 <fatfs_fat_read_sector+0xac>

00001dd8 <_allocate_file>:
    1dd8:	000057b7          	lui	a5,0x5
    1ddc:	44c78793          	addi	a5,a5,1100 # 544c <_free_file_list>
    1de0:	0007a583          	lw	a1,0(a5)
    1de4:	06058263          	beqz	a1,1e48 <_allocate_file+0x70>
    1de8:	0005a703          	lw	a4,0(a1)
    1dec:	fe010113          	addi	sp,sp,-32
    1df0:	00112e23          	sw	ra,28(sp)
    1df4:	0045a683          	lw	a3,4(a1)
    1df8:	04071063          	bnez	a4,1e38 <_allocate_file+0x60>
    1dfc:	00d7a023          	sw	a3,0(a5)
    1e00:	0045a683          	lw	a3,4(a1)
    1e04:	02069e63          	bnez	a3,1e40 <_allocate_file+0x68>
    1e08:	00e7a223          	sw	a4,4(a5)
    1e0c:	00005537          	lui	a0,0x5
    1e10:	45450513          	addi	a0,a0,1108 # 5454 <_open_file_list>
    1e14:	00b12623          	sw	a1,12(sp)
    1e18:	00000097          	auipc	ra,0x0
    1e1c:	d48080e7          	jalr	-696(ra) # 1b60 <fat_list_insert_last>
    1e20:	00c12583          	lw	a1,12(sp)
    1e24:	01c12083          	lw	ra,28(sp)
    1e28:	bc458593          	addi	a1,a1,-1084
    1e2c:	00058513          	mv	a0,a1
    1e30:	02010113          	addi	sp,sp,32
    1e34:	00008067          	ret
    1e38:	00d72223          	sw	a3,4(a4)
    1e3c:	fc5ff06f          	j	1e00 <_allocate_file+0x28>
    1e40:	00e6a023          	sw	a4,0(a3)
    1e44:	fc9ff06f          	j	1e0c <_allocate_file+0x34>
    1e48:	00058513          	mv	a0,a1
    1e4c:	00008067          	ret

00001e50 <_free_file>:
    1e50:	43c52783          	lw	a5,1084(a0)
    1e54:	44052703          	lw	a4,1088(a0)
    1e58:	43c50593          	addi	a1,a0,1084
    1e5c:	02079663          	bnez	a5,1e88 <_free_file+0x38>
    1e60:	000056b7          	lui	a3,0x5
    1e64:	44e6aa23          	sw	a4,1108(a3) # 5454 <_open_file_list>
    1e68:	44052703          	lw	a4,1088(a0)
    1e6c:	02071263          	bnez	a4,1e90 <_free_file+0x40>
    1e70:	00005737          	lui	a4,0x5
    1e74:	44f72c23          	sw	a5,1112(a4) # 5458 <_open_file_list+0x4>
    1e78:	00005537          	lui	a0,0x5
    1e7c:	44c50513          	addi	a0,a0,1100 # 544c <_free_file_list>
    1e80:	00000317          	auipc	t1,0x0
    1e84:	ce030067          	jr	-800(t1) # 1b60 <fat_list_insert_last>
    1e88:	00e7a223          	sw	a4,4(a5)
    1e8c:	fddff06f          	j	1e68 <_free_file+0x18>
    1e90:	00f72023          	sw	a5,0(a4)
    1e94:	fe5ff06f          	j	1e78 <_free_file+0x28>

00001e98 <fatfs_lba_of_cluster>:
    1e98:	ff010113          	addi	sp,sp,-16
    1e9c:	00812423          	sw	s0,8(sp)
    1ea0:	00112623          	sw	ra,12(sp)
    1ea4:	00050413          	mv	s0,a0
    1ea8:	ffe58513          	addi	a0,a1,-2
    1eac:	00044583          	lbu	a1,0(s0)
    1eb0:	00000097          	auipc	ra,0x0
    1eb4:	c84080e7          	jalr	-892(ra) # 1b34 <__mulsi3>
    1eb8:	00442783          	lw	a5,4(s0)
    1ebc:	00f50533          	add	a0,a0,a5
    1ec0:	03042783          	lw	a5,48(s0)
    1ec4:	00079863          	bnez	a5,1ed4 <fatfs_lba_of_cluster+0x3c>
    1ec8:	02845783          	lhu	a5,40(s0)
    1ecc:	4047d793          	srai	a5,a5,0x4
    1ed0:	00f50533          	add	a0,a0,a5
    1ed4:	00c12083          	lw	ra,12(sp)
    1ed8:	00812403          	lw	s0,8(sp)
    1edc:	01010113          	addi	sp,sp,16
    1ee0:	00008067          	ret

00001ee4 <fatfs_sector_read>:
    1ee4:	03452783          	lw	a5,52(a0)
    1ee8:	00058713          	mv	a4,a1
    1eec:	00070513          	mv	a0,a4
    1ef0:	00060593          	mv	a1,a2
    1ef4:	00068613          	mv	a2,a3
    1ef8:	00078067          	jr	a5

00001efc <fatfs_sector_write>:
    1efc:	03852783          	lw	a5,56(a0)
    1f00:	00058713          	mv	a4,a1
    1f04:	00070513          	mv	a0,a4
    1f08:	00060593          	mv	a1,a2
    1f0c:	00068613          	mv	a2,a3
    1f10:	00078067          	jr	a5

00001f14 <fatfs_write_sector>:
    1f14:	03852703          	lw	a4,56(a0)
    1f18:	0a070463          	beqz	a4,1fc0 <fatfs_write_sector+0xac>
    1f1c:	03052883          	lw	a7,48(a0)
    1f20:	00050793          	mv	a5,a0
    1f24:	0115e833          	or	a6,a1,a7
    1f28:	02081e63          	bnez	a6,1f64 <fatfs_write_sector+0x50>
    1f2c:	01052583          	lw	a1,16(a0)
    1f30:	08b67863          	bgeu	a2,a1,1fc0 <fatfs_write_sector+0xac>
    1f34:	01c52503          	lw	a0,28(a0)
    1f38:	00c7a583          	lw	a1,12(a5)
    1f3c:	00b50533          	add	a0,a0,a1
    1f40:	00c50533          	add	a0,a0,a2
    1f44:	00068863          	beqz	a3,1f54 <fatfs_write_sector+0x40>
    1f48:	00100613          	li	a2,1
    1f4c:	00068593          	mv	a1,a3
    1f50:	00070067          	jr	a4
    1f54:	24a7a223          	sw	a0,580(a5)
    1f58:	00100613          	li	a2,1
    1f5c:	04478593          	addi	a1,a5,68
    1f60:	ff1ff06f          	j	1f50 <fatfs_write_sector+0x3c>
    1f64:	fe010113          	addi	sp,sp,-32
    1f68:	00e12623          	sw	a4,12(sp)
    1f6c:	00d12423          	sw	a3,8(sp)
    1f70:	00c12223          	sw	a2,4(sp)
    1f74:	00112e23          	sw	ra,28(sp)
    1f78:	00a12023          	sw	a0,0(sp)
    1f7c:	00000097          	auipc	ra,0x0
    1f80:	f1c080e7          	jalr	-228(ra) # 1e98 <fatfs_lba_of_cluster>
    1f84:	00412603          	lw	a2,4(sp)
    1f88:	00812683          	lw	a3,8(sp)
    1f8c:	00012783          	lw	a5,0(sp)
    1f90:	00c12703          	lw	a4,12(sp)
    1f94:	00a60533          	add	a0,a2,a0
    1f98:	00068c63          	beqz	a3,1fb0 <fatfs_write_sector+0x9c>
    1f9c:	00100613          	li	a2,1
    1fa0:	00068593          	mv	a1,a3
    1fa4:	01c12083          	lw	ra,28(sp)
    1fa8:	02010113          	addi	sp,sp,32
    1fac:	fa5ff06f          	j	1f50 <fatfs_write_sector+0x3c>
    1fb0:	24a7a223          	sw	a0,580(a5)
    1fb4:	00100613          	li	a2,1
    1fb8:	04478593          	addi	a1,a5,68
    1fbc:	fe9ff06f          	j	1fa4 <fatfs_write_sector+0x90>
    1fc0:	00000513          	li	a0,0
    1fc4:	00008067          	ret

00001fc8 <fl_init>:
    1fc8:	ff010113          	addi	sp,sp,-16
    1fcc:	00005537          	lui	a0,0x5
    1fd0:	000057b7          	lui	a5,0x5
    1fd4:	0000c5b7          	lui	a1,0xc
    1fd8:	00112623          	sw	ra,12(sp)
    1fdc:	44c50513          	addi	a0,a0,1100 # 544c <_free_file_list>
    1fe0:	45478793          	addi	a5,a5,1108 # 5454 <_open_file_list>
    1fe4:	f8858593          	addi	a1,a1,-120 # bf88 <_files+0x43c>
    1fe8:	00052223          	sw	zero,4(a0)
    1fec:	00052023          	sw	zero,0(a0)
    1ff0:	0007a223          	sw	zero,4(a5)
    1ff4:	0007a023          	sw	zero,0(a5)
    1ff8:	00000097          	auipc	ra,0x0
    1ffc:	b68080e7          	jalr	-1176(ra) # 1b60 <fat_list_insert_last>
    2000:	000057b7          	lui	a5,0x5
    2004:	0000c5b7          	lui	a1,0xc
    2008:	44c78513          	addi	a0,a5,1100 # 544c <_free_file_list>
    200c:	3cc58593          	addi	a1,a1,972 # c3cc <_files+0x880>
    2010:	00000097          	auipc	ra,0x0
    2014:	b50080e7          	jalr	-1200(ra) # 1b60 <fat_list_insert_last>
    2018:	00c12083          	lw	ra,12(sp)
    201c:	000057b7          	lui	a5,0x5
    2020:	00100713          	li	a4,1
    2024:	46e7a023          	sw	a4,1120(a5) # 5460 <_filelib_init>
    2028:	01010113          	addi	sp,sp,16
    202c:	00008067          	ret

00002030 <fl_closedir>:
    2030:	00000513          	li	a0,0
    2034:	00008067          	ret

00002038 <fatfs_lfn_cache_entry>:
    2038:	0005c783          	lbu	a5,0(a1)
    203c:	01300693          	li	a3,19
    2040:	01f7f793          	andi	a5,a5,31
    2044:	fff78713          	addi	a4,a5,-1
    2048:	0ff77613          	zext.b	a2,a4
    204c:	0ac6ea63          	bltu	a3,a2,2100 <fatfs_lfn_cache_entry+0xc8>
    2050:	10554683          	lbu	a3,261(a0)
    2054:	00069463          	bnez	a3,205c <fatfs_lfn_cache_entry+0x24>
    2058:	10f502a3          	sb	a5,261(a0)
    205c:	00171793          	slli	a5,a4,0x1
    2060:	00e787b3          	add	a5,a5,a4
    2064:	0015c683          	lbu	a3,1(a1)
    2068:	00279793          	slli	a5,a5,0x2
    206c:	00e787b3          	add	a5,a5,a4
    2070:	00f50533          	add	a0,a0,a5
    2074:	00d50023          	sb	a3,0(a0)
    2078:	0035c783          	lbu	a5,3(a1)
    207c:	0ff00713          	li	a4,255
    2080:	02000693          	li	a3,32
    2084:	00f500a3          	sb	a5,1(a0)
    2088:	0055c783          	lbu	a5,5(a1)
    208c:	00f50123          	sb	a5,2(a0)
    2090:	0075c783          	lbu	a5,7(a1)
    2094:	00f501a3          	sb	a5,3(a0)
    2098:	0095c783          	lbu	a5,9(a1)
    209c:	00f50223          	sb	a5,4(a0)
    20a0:	00e5c783          	lbu	a5,14(a1)
    20a4:	00f502a3          	sb	a5,5(a0)
    20a8:	0105c783          	lbu	a5,16(a1)
    20ac:	00f50323          	sb	a5,6(a0)
    20b0:	0125c783          	lbu	a5,18(a1)
    20b4:	00f503a3          	sb	a5,7(a0)
    20b8:	0145c783          	lbu	a5,20(a1)
    20bc:	00f50423          	sb	a5,8(a0)
    20c0:	0165c783          	lbu	a5,22(a1)
    20c4:	00f504a3          	sb	a5,9(a0)
    20c8:	0185c783          	lbu	a5,24(a1)
    20cc:	00f50523          	sb	a5,10(a0)
    20d0:	01c5c783          	lbu	a5,28(a1)
    20d4:	00f505a3          	sb	a5,11(a0)
    20d8:	01e5c783          	lbu	a5,30(a1)
    20dc:	00f50623          	sb	a5,12(a0)
    20e0:	00d00793          	li	a5,13
    20e4:	00054603          	lbu	a2,0(a0)
    20e8:	00e61463          	bne	a2,a4,20f0 <fatfs_lfn_cache_entry+0xb8>
    20ec:	00d50023          	sb	a3,0(a0)
    20f0:	fff78793          	addi	a5,a5,-1
    20f4:	0ff7f793          	zext.b	a5,a5
    20f8:	00150513          	addi	a0,a0,1
    20fc:	fe0794e3          	bnez	a5,20e4 <fatfs_lfn_cache_entry+0xac>
    2100:	00008067          	ret

00002104 <fatfs_lfn_cache_get>:
    2104:	10554703          	lbu	a4,261(a0)
    2108:	01400793          	li	a5,20
    210c:	00f71663          	bne	a4,a5,2118 <fatfs_lfn_cache_get+0x14>
    2110:	10050223          	sb	zero,260(a0)
    2114:	00008067          	ret
    2118:	02070063          	beqz	a4,2138 <fatfs_lfn_cache_get+0x34>
    211c:	00171793          	slli	a5,a4,0x1
    2120:	00e787b3          	add	a5,a5,a4
    2124:	00279793          	slli	a5,a5,0x2
    2128:	00e787b3          	add	a5,a5,a4
    212c:	00f507b3          	add	a5,a0,a5
    2130:	00078023          	sb	zero,0(a5)
    2134:	00008067          	ret
    2138:	00050023          	sb	zero,0(a0)
    213c:	00008067          	ret

00002140 <fatfs_entry_lfn_text>:
    2140:	00b54503          	lbu	a0,11(a0)
    2144:	00f57513          	andi	a0,a0,15
    2148:	ff150513          	addi	a0,a0,-15
    214c:	00153513          	seqz	a0,a0
    2150:	00008067          	ret

00002154 <fatfs_entry_lfn_invalid>:
    2154:	00054783          	lbu	a5,0(a0)
    2158:	f1b78713          	addi	a4,a5,-229
    215c:	02070263          	beqz	a4,2180 <fatfs_entry_lfn_invalid+0x2c>
    2160:	02078063          	beqz	a5,2180 <fatfs_entry_lfn_invalid+0x2c>
    2164:	00b54783          	lbu	a5,11(a0)
    2168:	00800713          	li	a4,8
    216c:	00100513          	li	a0,1
    2170:	00e78a63          	beq	a5,a4,2184 <fatfs_entry_lfn_invalid+0x30>
    2174:	0067f793          	andi	a5,a5,6
    2178:	00f03533          	snez	a0,a5
    217c:	00008067          	ret
    2180:	00100513          	li	a0,1
    2184:	00008067          	ret

00002188 <fatfs_entry_lfn_exists>:
    2188:	00b5c783          	lbu	a5,11(a1)
    218c:	00f00713          	li	a4,15
    2190:	04e78063          	beq	a5,a4,21d0 <fatfs_entry_lfn_exists+0x48>
    2194:	0005c683          	lbu	a3,0(a1)
    2198:	f1b68713          	addi	a4,a3,-229
    219c:	00e03733          	snez	a4,a4
    21a0:	00d036b3          	snez	a3,a3
    21a4:	00d77733          	and	a4,a4,a3
    21a8:	02070463          	beqz	a4,21d0 <fatfs_entry_lfn_exists+0x48>
    21ac:	ff878713          	addi	a4,a5,-8
    21b0:	02070063          	beqz	a4,21d0 <fatfs_entry_lfn_exists+0x48>
    21b4:	0067f713          	andi	a4,a5,6
    21b8:	00000793          	li	a5,0
    21bc:	00071663          	bnez	a4,21c8 <fatfs_entry_lfn_exists+0x40>
    21c0:	10554783          	lbu	a5,261(a0)
    21c4:	00f037b3          	snez	a5,a5
    21c8:	00078513          	mv	a0,a5
    21cc:	00008067          	ret
    21d0:	00000793          	li	a5,0
    21d4:	ff5ff06f          	j	21c8 <fatfs_entry_lfn_exists+0x40>

000021d8 <fatfs_entry_sfn_only>:
    21d8:	00b54783          	lbu	a5,11(a0)
    21dc:	00f00713          	li	a4,15
    21e0:	02e78863          	beq	a5,a4,2210 <fatfs_entry_sfn_only+0x38>
    21e4:	00054683          	lbu	a3,0(a0)
    21e8:	f1b68713          	addi	a4,a3,-229
    21ec:	00e03733          	snez	a4,a4
    21f0:	00d036b3          	snez	a3,a3
    21f4:	00d77733          	and	a4,a4,a3
    21f8:	00070c63          	beqz	a4,2210 <fatfs_entry_sfn_only+0x38>
    21fc:	ff878713          	addi	a4,a5,-8
    2200:	00070863          	beqz	a4,2210 <fatfs_entry_sfn_only+0x38>
    2204:	0067f513          	andi	a0,a5,6
    2208:	00153513          	seqz	a0,a0
    220c:	00008067          	ret
    2210:	00000513          	li	a0,0
    2214:	00008067          	ret

00002218 <fatfs_entry_is_dir>:
    2218:	00b54503          	lbu	a0,11(a0)
    221c:	00455513          	srli	a0,a0,0x4
    2220:	00157513          	andi	a0,a0,1
    2224:	00008067          	ret

00002228 <fatfs_lfn_entries_required>:
    2228:	ff010113          	addi	sp,sp,-16
    222c:	00112623          	sw	ra,12(sp)
    2230:	fffff097          	auipc	ra,0xfffff
    2234:	1f4080e7          	jalr	500(ra) # 1424 <strlen>
    2238:	00050a63          	beqz	a0,224c <fatfs_lfn_entries_required+0x24>
    223c:	00d00593          	li	a1,13
    2240:	00c50513          	addi	a0,a0,12
    2244:	fffff097          	auipc	ra,0xfffff
    2248:	0ec080e7          	jalr	236(ra) # 1330 <__divsi3>
    224c:	00c12083          	lw	ra,12(sp)
    2250:	01010113          	addi	sp,sp,16
    2254:	00008067          	ret

00002258 <fatfs_filename_to_lfn>:
    2258:	f9010113          	addi	sp,sp,-112
    225c:	06812423          	sw	s0,104(sp)
    2260:	00058413          	mv	s0,a1
    2264:	000055b7          	lui	a1,0x5
    2268:	1f458593          	addi	a1,a1,500 # 51f4 <font+0x1e0>
    226c:	06912223          	sw	s1,100(sp)
    2270:	05312e23          	sw	s3,92(sp)
    2274:	00060493          	mv	s1,a2
    2278:	00050993          	mv	s3,a0
    227c:	03400613          	li	a2,52
    2280:	01c10513          	addi	a0,sp,28
    2284:	00d12623          	sw	a3,12(sp)
    2288:	06112623          	sw	ra,108(sp)
    228c:	07212023          	sw	s2,96(sp)
    2290:	05412c23          	sw	s4,88(sp)
    2294:	fffff097          	auipc	ra,0xfffff
    2298:	16c080e7          	jalr	364(ra) # 1400 <memcpy>
    229c:	00098513          	mv	a0,s3
    22a0:	fffff097          	auipc	ra,0xfffff
    22a4:	184080e7          	jalr	388(ra) # 1424 <strlen>
    22a8:	00050913          	mv	s2,a0
    22ac:	00098513          	mv	a0,s3
    22b0:	00000097          	auipc	ra,0x0
    22b4:	f78080e7          	jalr	-136(ra) # 2228 <fatfs_lfn_entries_required>
    22b8:	00050a13          	mv	s4,a0
    22bc:	02000613          	li	a2,32
    22c0:	00000593          	li	a1,0
    22c4:	00040513          	mv	a0,s0
    22c8:	fffff097          	auipc	ra,0xfffff
    22cc:	11c080e7          	jalr	284(ra) # 13e4 <memset>
    22d0:	fffa0713          	addi	a4,s4,-1 # 3fff <fatfs_free_cluster_chain+0x47>
    22d4:	00c12683          	lw	a3,12(sp)
    22d8:	00148793          	addi	a5,s1,1
    22dc:	00971463          	bne	a4,s1,22e4 <fatfs_filename_to_lfn+0x8c>
    22e0:	0407e793          	ori	a5,a5,64
    22e4:	00149613          	slli	a2,s1,0x1
    22e8:	00960633          	add	a2,a2,s1
    22ec:	00f40023          	sb	a5,0(s0)
    22f0:	00261613          	slli	a2,a2,0x2
    22f4:	00f00793          	li	a5,15
    22f8:	00f405a3          	sb	a5,11(s0)
    22fc:	00d406a3          	sb	a3,13(s0)
    2300:	01c10793          	addi	a5,sp,28
    2304:	00960633          	add	a2,a2,s1
    2308:	fff00693          	li	a3,-1
    230c:	0007a703          	lw	a4,0(a5)
    2310:	00e40733          	add	a4,s0,a4
    2314:	05265063          	bge	a2,s2,2354 <fatfs_filename_to_lfn+0xfc>
    2318:	00c985b3          	add	a1,s3,a2
    231c:	0005c583          	lbu	a1,0(a1)
    2320:	00b70023          	sb	a1,0(a4)
    2324:	00478793          	addi	a5,a5,4
    2328:	05010713          	addi	a4,sp,80
    232c:	00160613          	addi	a2,a2,1
    2330:	fce79ee3          	bne	a5,a4,230c <fatfs_filename_to_lfn+0xb4>
    2334:	06c12083          	lw	ra,108(sp)
    2338:	06812403          	lw	s0,104(sp)
    233c:	06412483          	lw	s1,100(sp)
    2340:	06012903          	lw	s2,96(sp)
    2344:	05c12983          	lw	s3,92(sp)
    2348:	05812a03          	lw	s4,88(sp)
    234c:	07010113          	addi	sp,sp,112
    2350:	00008067          	ret
    2354:	01261663          	bne	a2,s2,2360 <fatfs_filename_to_lfn+0x108>
    2358:	00070023          	sb	zero,0(a4)
    235c:	fc9ff06f          	j	2324 <fatfs_filename_to_lfn+0xcc>
    2360:	00d70023          	sb	a3,0(a4)
    2364:	00d700a3          	sb	a3,1(a4)
    2368:	fbdff06f          	j	2324 <fatfs_filename_to_lfn+0xcc>

0000236c <fatfs_sfn_create_entry>:
    236c:	00000793          	li	a5,0
    2370:	00b00813          	li	a6,11
    2374:	00f508b3          	add	a7,a0,a5
    2378:	0008c303          	lbu	t1,0(a7)
    237c:	00f688b3          	add	a7,a3,a5
    2380:	00178793          	addi	a5,a5,1
    2384:	00688023          	sb	t1,0(a7)
    2388:	ff0796e3          	bne	a5,a6,2374 <fatfs_sfn_create_entry+0x8>
    238c:	00e03733          	snez	a4,a4
    2390:	40e00733          	neg	a4,a4
    2394:	02000793          	li	a5,32
    2398:	ff077713          	andi	a4,a4,-16
    239c:	00f70733          	add	a4,a4,a5
    23a0:	00f68823          	sb	a5,16(a3)
    23a4:	00f68923          	sb	a5,18(a3)
    23a8:	00f68c23          	sb	a5,24(a3)
    23ac:	01065793          	srli	a5,a2,0x10
    23b0:	00f68a23          	sb	a5,20(a3)
    23b4:	01865793          	srli	a5,a2,0x18
    23b8:	00f68aa3          	sb	a5,21(a3)
    23bc:	0085d793          	srli	a5,a1,0x8
    23c0:	00c68d23          	sb	a2,26(a3)
    23c4:	00b68e23          	sb	a1,28(a3)
    23c8:	00865613          	srli	a2,a2,0x8
    23cc:	00f68ea3          	sb	a5,29(a3)
    23d0:	0105d793          	srli	a5,a1,0x10
    23d4:	0185d593          	srli	a1,a1,0x18
    23d8:	000686a3          	sb	zero,13(a3)
    23dc:	00068723          	sb	zero,14(a3)
    23e0:	000687a3          	sb	zero,15(a3)
    23e4:	000688a3          	sb	zero,17(a3)
    23e8:	000689a3          	sb	zero,19(a3)
    23ec:	00068b23          	sb	zero,22(a3)
    23f0:	00068ba3          	sb	zero,23(a3)
    23f4:	00068ca3          	sb	zero,25(a3)
    23f8:	00e685a3          	sb	a4,11(a3)
    23fc:	00068623          	sb	zero,12(a3)
    2400:	00c68da3          	sb	a2,27(a3)
    2404:	00f68f23          	sb	a5,30(a3)
    2408:	00b68fa3          	sb	a1,31(a3)
    240c:	00008067          	ret

00002410 <fatfs_lfn_create_sfn>:
    2410:	fd010113          	addi	sp,sp,-48
    2414:	02912223          	sw	s1,36(sp)
    2418:	00050493          	mv	s1,a0
    241c:	00058513          	mv	a0,a1
    2420:	02812423          	sw	s0,40(sp)
    2424:	01312e23          	sw	s3,28(sp)
    2428:	00058413          	mv	s0,a1
    242c:	02112623          	sw	ra,44(sp)
    2430:	03212023          	sw	s2,32(sp)
    2434:	fffff097          	auipc	ra,0xfffff
    2438:	ff0080e7          	jalr	-16(ra) # 1424 <strlen>
    243c:	00044783          	lbu	a5,0(s0)
    2440:	02e00993          	li	s3,46
    2444:	15378063          	beq	a5,s3,2584 <fatfs_lfn_create_sfn+0x174>
    2448:	00b00613          	li	a2,11
    244c:	02000593          	li	a1,32
    2450:	00050913          	mv	s2,a0
    2454:	00048513          	mv	a0,s1
    2458:	fffff097          	auipc	ra,0xfffff
    245c:	f8c080e7          	jalr	-116(ra) # 13e4 <memset>
    2460:	00300613          	li	a2,3
    2464:	02000593          	li	a1,32
    2468:	00c10513          	addi	a0,sp,12
    246c:	fffff097          	auipc	ra,0xfffff
    2470:	f78080e7          	jalr	-136(ra) # 13e4 <memset>
    2474:	fff00793          	li	a5,-1
    2478:	00000713          	li	a4,0
    247c:	0d274263          	blt	a4,s2,2540 <fatfs_lfn_create_sfn+0x130>
    2480:	fff00713          	li	a4,-1
    2484:	0ee78863          	beq	a5,a4,2574 <fatfs_lfn_create_sfn+0x164>
    2488:	00178713          	addi	a4,a5,1
    248c:	00c10693          	addi	a3,sp,12
    2490:	00478613          	addi	a2,a5,4
    2494:	0ce61263          	bne	a2,a4,2558 <fatfs_lfn_create_sfn+0x148>
    2498:	00000613          	li	a2,0
    249c:	00000693          	li	a3,0
    24a0:	01900813          	li	a6,25
    24a4:	00800893          	li	a7,8
    24a8:	02f6de63          	bge	a3,a5,24e4 <fatfs_lfn_create_sfn+0xd4>
    24ac:	00d40733          	add	a4,s0,a3
    24b0:	00074703          	lbu	a4,0(a4)
    24b4:	fe070513          	addi	a0,a4,-32
    24b8:	0c050263          	beqz	a0,257c <fatfs_lfn_create_sfn+0x16c>
    24bc:	fd270593          	addi	a1,a4,-46
    24c0:	0a058e63          	beqz	a1,257c <fatfs_lfn_create_sfn+0x16c>
    24c4:	f9f70593          	addi	a1,a4,-97
    24c8:	0ff5f593          	zext.b	a1,a1
    24cc:	00c48333          	add	t1,s1,a2
    24d0:	00160613          	addi	a2,a2,1
    24d4:	00b86463          	bltu	a6,a1,24dc <fatfs_lfn_create_sfn+0xcc>
    24d8:	0ff57713          	zext.b	a4,a0
    24dc:	00e30023          	sb	a4,0(t1)
    24e0:	09161e63          	bne	a2,a7,257c <fatfs_lfn_create_sfn+0x16c>
    24e4:	00c10793          	addi	a5,sp,12
    24e8:	00800693          	li	a3,8
    24ec:	01900513          	li	a0,25
    24f0:	00b00593          	li	a1,11
    24f4:	0007c703          	lbu	a4,0(a5)
    24f8:	f9f70613          	addi	a2,a4,-97
    24fc:	0ff67613          	zext.b	a2,a2
    2500:	00c56663          	bltu	a0,a2,250c <fatfs_lfn_create_sfn+0xfc>
    2504:	fe070713          	addi	a4,a4,-32
    2508:	0ff77713          	zext.b	a4,a4
    250c:	00d48633          	add	a2,s1,a3
    2510:	00e60023          	sb	a4,0(a2)
    2514:	00168693          	addi	a3,a3,1
    2518:	00178793          	addi	a5,a5,1
    251c:	fcb69ce3          	bne	a3,a1,24f4 <fatfs_lfn_create_sfn+0xe4>
    2520:	00100513          	li	a0,1
    2524:	02c12083          	lw	ra,44(sp)
    2528:	02812403          	lw	s0,40(sp)
    252c:	02412483          	lw	s1,36(sp)
    2530:	02012903          	lw	s2,32(sp)
    2534:	01c12983          	lw	s3,28(sp)
    2538:	03010113          	addi	sp,sp,48
    253c:	00008067          	ret
    2540:	00e406b3          	add	a3,s0,a4
    2544:	0006c683          	lbu	a3,0(a3)
    2548:	01369463          	bne	a3,s3,2550 <fatfs_lfn_create_sfn+0x140>
    254c:	00070793          	mv	a5,a4
    2550:	00170713          	addi	a4,a4,1
    2554:	f29ff06f          	j	247c <fatfs_lfn_create_sfn+0x6c>
    2558:	01275863          	bge	a4,s2,2568 <fatfs_lfn_create_sfn+0x158>
    255c:	00e405b3          	add	a1,s0,a4
    2560:	0005c583          	lbu	a1,0(a1)
    2564:	00b68023          	sb	a1,0(a3)
    2568:	00170713          	addi	a4,a4,1
    256c:	00168693          	addi	a3,a3,1
    2570:	f25ff06f          	j	2494 <fatfs_lfn_create_sfn+0x84>
    2574:	00090793          	mv	a5,s2
    2578:	f21ff06f          	j	2498 <fatfs_lfn_create_sfn+0x88>
    257c:	00168693          	addi	a3,a3,1
    2580:	f29ff06f          	j	24a8 <fatfs_lfn_create_sfn+0x98>
    2584:	00000513          	li	a0,0
    2588:	f9dff06f          	j	2524 <fatfs_lfn_create_sfn+0x114>

0000258c <fatfs_lfn_generate_tail>:
    258c:	000187b7          	lui	a5,0x18
    2590:	69f78793          	addi	a5,a5,1695 # 1869f <__stacktop+0x869f>
    2594:	16c7e463          	bltu	a5,a2,26fc <fatfs_lfn_generate_tail+0x170>
    2598:	fa010113          	addi	sp,sp,-96
    259c:	04812c23          	sw	s0,88(sp)
    25a0:	04912a23          	sw	s1,84(sp)
    25a4:	03712e23          	sw	s7,60(sp)
    25a8:	00060413          	mv	s0,a2
    25ac:	00058b93          	mv	s7,a1
    25b0:	00c00613          	li	a2,12
    25b4:	00000593          	li	a1,0
    25b8:	00050493          	mv	s1,a0
    25bc:	00410513          	addi	a0,sp,4
    25c0:	04112e23          	sw	ra,92(sp)
    25c4:	05312623          	sw	s3,76(sp)
    25c8:	05412423          	sw	s4,72(sp)
    25cc:	05612023          	sw	s6,64(sp)
    25d0:	05212823          	sw	s2,80(sp)
    25d4:	05512223          	sw	s5,68(sp)
    25d8:	fffff097          	auipc	ra,0xfffff
    25dc:	e0c080e7          	jalr	-500(ra) # 13e4 <memset>
    25e0:	000055b7          	lui	a1,0x5
    25e4:	07e00793          	li	a5,126
    25e8:	01100613          	li	a2,17
    25ec:	fcc58593          	addi	a1,a1,-52 # 4fcc <LEDS+0xfc>
    25f0:	01c10513          	addi	a0,sp,28
    25f4:	01010993          	addi	s3,sp,16
    25f8:	00f10223          	sb	a5,4(sp)
    25fc:	00098a13          	mv	s4,s3
    2600:	fffff097          	auipc	ra,0xfffff
    2604:	e00080e7          	jalr	-512(ra) # 1400 <memcpy>
    2608:	00900b13          	li	s6,9
    260c:	00a00593          	li	a1,10
    2610:	00040513          	mv	a0,s0
    2614:	fffff097          	auipc	ra,0xfffff
    2618:	d6c080e7          	jalr	-660(ra) # 1380 <__umodsi3>
    261c:	03050793          	addi	a5,a0,48
    2620:	00278533          	add	a0,a5,sp
    2624:	fec54783          	lbu	a5,-20(a0)
    2628:	00098913          	mv	s2,s3
    262c:	00040513          	mv	a0,s0
    2630:	00a00593          	li	a1,10
    2634:	00f98023          	sb	a5,0(s3)
    2638:	00040a93          	mv	s5,s0
    263c:	fffff097          	auipc	ra,0xfffff
    2640:	cfc080e7          	jalr	-772(ra) # 1338 <__udivsi3>
    2644:	00198993          	addi	s3,s3,1
    2648:	00050413          	mv	s0,a0
    264c:	fd5b60e3          	bltu	s6,s5,260c <fatfs_lfn_generate_tail+0x80>
    2650:	00098023          	sb	zero,0(s3)
    2654:	00410713          	addi	a4,sp,4
    2658:	00090793          	mv	a5,s2
    265c:	0947f663          	bgeu	a5,s4,26e8 <fatfs_lfn_generate_tail+0x15c>
    2660:	00f10713          	addi	a4,sp,15
    2664:	00000793          	li	a5,0
    2668:	00e96663          	bltu	s2,a4,2674 <fatfs_lfn_generate_tail+0xe8>
    266c:	41490933          	sub	s2,s2,s4
    2670:	00190793          	addi	a5,s2,1
    2674:	03078793          	addi	a5,a5,48
    2678:	002787b3          	add	a5,a5,sp
    267c:	000b8593          	mv	a1,s7
    2680:	fc078aa3          	sb	zero,-43(a5)
    2684:	00b00613          	li	a2,11
    2688:	00048513          	mv	a0,s1
    268c:	fffff097          	auipc	ra,0xfffff
    2690:	d74080e7          	jalr	-652(ra) # 1400 <memcpy>
    2694:	00410513          	addi	a0,sp,4
    2698:	fffff097          	auipc	ra,0xfffff
    269c:	d8c080e7          	jalr	-628(ra) # 1424 <strlen>
    26a0:	40a484b3          	sub	s1,s1,a0
    26a4:	00050613          	mv	a2,a0
    26a8:	00410593          	addi	a1,sp,4
    26ac:	00848513          	addi	a0,s1,8
    26b0:	fffff097          	auipc	ra,0xfffff
    26b4:	d50080e7          	jalr	-688(ra) # 1400 <memcpy>
    26b8:	05c12083          	lw	ra,92(sp)
    26bc:	05812403          	lw	s0,88(sp)
    26c0:	05412483          	lw	s1,84(sp)
    26c4:	05012903          	lw	s2,80(sp)
    26c8:	04c12983          	lw	s3,76(sp)
    26cc:	04812a03          	lw	s4,72(sp)
    26d0:	04412a83          	lw	s5,68(sp)
    26d4:	04012b03          	lw	s6,64(sp)
    26d8:	03c12b83          	lw	s7,60(sp)
    26dc:	00100513          	li	a0,1
    26e0:	06010113          	addi	sp,sp,96
    26e4:	00008067          	ret
    26e8:	0007c683          	lbu	a3,0(a5)
    26ec:	00170713          	addi	a4,a4,1
    26f0:	fff78793          	addi	a5,a5,-1
    26f4:	00d70023          	sb	a3,0(a4)
    26f8:	f65ff06f          	j	265c <fatfs_lfn_generate_tail+0xd0>
    26fc:	00000513          	li	a0,0
    2700:	00008067          	ret

00002704 <fatfs_total_path_levels>:
    2704:	fff00793          	li	a5,-1
    2708:	06050263          	beqz	a0,276c <fatfs_total_path_levels+0x68>
    270c:	00054703          	lbu	a4,0(a0)
    2710:	02f00793          	li	a5,47
    2714:	00f71863          	bne	a4,a5,2724 <fatfs_total_path_levels+0x20>
    2718:	00150513          	addi	a0,a0,1
    271c:	00000793          	li	a5,0
    2720:	0400006f          	j	2760 <fatfs_total_path_levels+0x5c>
    2724:	00154703          	lbu	a4,1(a0)
    2728:	03a00793          	li	a5,58
    272c:	00f70a63          	beq	a4,a5,2740 <fatfs_total_path_levels+0x3c>
    2730:	00254683          	lbu	a3,2(a0)
    2734:	05c00713          	li	a4,92
    2738:	fff00793          	li	a5,-1
    273c:	02e69863          	bne	a3,a4,276c <fatfs_total_path_levels+0x68>
    2740:	00350513          	addi	a0,a0,3
    2744:	05c00713          	li	a4,92
    2748:	fd5ff06f          	j	271c <fatfs_total_path_levels+0x18>
    274c:	00150513          	addi	a0,a0,1
    2750:	00e68663          	beq	a3,a4,275c <fatfs_total_path_levels+0x58>
    2754:	00054683          	lbu	a3,0(a0)
    2758:	fe069ae3          	bnez	a3,274c <fatfs_total_path_levels+0x48>
    275c:	00178793          	addi	a5,a5,1
    2760:	00054683          	lbu	a3,0(a0)
    2764:	fe0698e3          	bnez	a3,2754 <fatfs_total_path_levels+0x50>
    2768:	fff78793          	addi	a5,a5,-1
    276c:	00078513          	mv	a0,a5
    2770:	00008067          	ret

00002774 <fatfs_get_substring>:
    2774:	0cd05e63          	blez	a3,2850 <fatfs_get_substring+0xdc>
    2778:	0c050c63          	beqz	a0,2850 <fatfs_get_substring+0xdc>
    277c:	fe010113          	addi	sp,sp,-32
    2780:	00812c23          	sw	s0,24(sp)
    2784:	00112e23          	sw	ra,28(sp)
    2788:	00912a23          	sw	s1,20(sp)
    278c:	00054483          	lbu	s1,0(a0)
    2790:	02f00793          	li	a5,47
    2794:	00150413          	addi	s0,a0,1
    2798:	02f48463          	beq	s1,a5,27c0 <fatfs_get_substring+0x4c>
    279c:	00154703          	lbu	a4,1(a0)
    27a0:	03a00793          	li	a5,58
    27a4:	00f70a63          	beq	a4,a5,27b8 <fatfs_get_substring+0x44>
    27a8:	00254803          	lbu	a6,2(a0)
    27ac:	05c00713          	li	a4,92
    27b0:	fff00793          	li	a5,-1
    27b4:	04e81c63          	bne	a6,a4,280c <fatfs_get_substring+0x98>
    27b8:	00350413          	addi	s0,a0,3
    27bc:	05c00493          	li	s1,92
    27c0:	00040513          	mv	a0,s0
    27c4:	00d12623          	sw	a3,12(sp)
    27c8:	00c12423          	sw	a2,8(sp)
    27cc:	00b12223          	sw	a1,4(sp)
    27d0:	fffff097          	auipc	ra,0xfffff
    27d4:	c54080e7          	jalr	-940(ra) # 1424 <strlen>
    27d8:	00c12683          	lw	a3,12(sp)
    27dc:	00412583          	lw	a1,4(sp)
    27e0:	00812603          	lw	a2,8(sp)
    27e4:	00000713          	li	a4,0
    27e8:	00000813          	li	a6,0
    27ec:	00000793          	li	a5,0
    27f0:	fff68693          	addi	a3,a3,-1
    27f4:	00e608b3          	add	a7,a2,a4
    27f8:	02a7c663          	blt	a5,a0,2824 <fatfs_get_substring+0xb0>
    27fc:	00088023          	sb	zero,0(a7)
    2800:	00064783          	lbu	a5,0(a2)
    2804:	0017b793          	seqz	a5,a5
    2808:	40f007b3          	neg	a5,a5
    280c:	01c12083          	lw	ra,28(sp)
    2810:	01812403          	lw	s0,24(sp)
    2814:	01412483          	lw	s1,20(sp)
    2818:	00078513          	mv	a0,a5
    281c:	02010113          	addi	sp,sp,32
    2820:	00008067          	ret
    2824:	00f40333          	add	t1,s0,a5
    2828:	00034303          	lbu	t1,0(t1)
    282c:	00931863          	bne	t1,s1,283c <fatfs_get_substring+0xc8>
    2830:	00180813          	addi	a6,a6,1
    2834:	00178793          	addi	a5,a5,1
    2838:	fbdff06f          	j	27f4 <fatfs_get_substring+0x80>
    283c:	feb81ce3          	bne	a6,a1,2834 <fatfs_get_substring+0xc0>
    2840:	fed75ae3          	bge	a4,a3,2834 <fatfs_get_substring+0xc0>
    2844:	00170713          	addi	a4,a4,1
    2848:	00688023          	sb	t1,0(a7)
    284c:	fe9ff06f          	j	2834 <fatfs_get_substring+0xc0>
    2850:	fff00793          	li	a5,-1
    2854:	00078513          	mv	a0,a5
    2858:	00008067          	ret

0000285c <fatfs_split_path>:
    285c:	fd010113          	addi	sp,sp,-48
    2860:	02912223          	sw	s1,36(sp)
    2864:	03212023          	sw	s2,32(sp)
    2868:	01312e23          	sw	s3,28(sp)
    286c:	01412c23          	sw	s4,24(sp)
    2870:	02112623          	sw	ra,44(sp)
    2874:	02812423          	sw	s0,40(sp)
    2878:	01512a23          	sw	s5,20(sp)
    287c:	00050993          	mv	s3,a0
    2880:	00058493          	mv	s1,a1
    2884:	00060913          	mv	s2,a2
    2888:	00068a13          	mv	s4,a3
    288c:	00e12623          	sw	a4,12(sp)
    2890:	00000097          	auipc	ra,0x0
    2894:	e74080e7          	jalr	-396(ra) # 2704 <fatfs_total_path_levels>
    2898:	fff00793          	li	a5,-1
    289c:	02f51863          	bne	a0,a5,28cc <fatfs_split_path+0x70>
    28a0:	fff00413          	li	s0,-1
    28a4:	02c12083          	lw	ra,44(sp)
    28a8:	00040513          	mv	a0,s0
    28ac:	02812403          	lw	s0,40(sp)
    28b0:	02412483          	lw	s1,36(sp)
    28b4:	02012903          	lw	s2,32(sp)
    28b8:	01c12983          	lw	s3,28(sp)
    28bc:	01812a03          	lw	s4,24(sp)
    28c0:	01412a83          	lw	s5,20(sp)
    28c4:	03010113          	addi	sp,sp,48
    28c8:	00008067          	ret
    28cc:	00c12683          	lw	a3,12(sp)
    28d0:	00050593          	mv	a1,a0
    28d4:	00a12623          	sw	a0,12(sp)
    28d8:	000a0613          	mv	a2,s4
    28dc:	00098513          	mv	a0,s3
    28e0:	00000097          	auipc	ra,0x0
    28e4:	e94080e7          	jalr	-364(ra) # 2774 <fatfs_get_substring>
    28e8:	00050413          	mv	s0,a0
    28ec:	fa051ae3          	bnez	a0,28a0 <fatfs_split_path+0x44>
    28f0:	00c12583          	lw	a1,12(sp)
    28f4:	00059663          	bnez	a1,2900 <fatfs_split_path+0xa4>
    28f8:	00048023          	sb	zero,0(s1)
    28fc:	fa9ff06f          	j	28a4 <fatfs_split_path+0x48>
    2900:	00098513          	mv	a0,s3
    2904:	fffff097          	auipc	ra,0xfffff
    2908:	b20080e7          	jalr	-1248(ra) # 1424 <strlen>
    290c:	00050a93          	mv	s5,a0
    2910:	000a0513          	mv	a0,s4
    2914:	fffff097          	auipc	ra,0xfffff
    2918:	b10080e7          	jalr	-1264(ra) # 1424 <strlen>
    291c:	40aa8633          	sub	a2,s5,a0
    2920:	00c95463          	bge	s2,a2,2928 <fatfs_split_path+0xcc>
    2924:	00090613          	mv	a2,s2
    2928:	00048513          	mv	a0,s1
    292c:	00098593          	mv	a1,s3
    2930:	00c12623          	sw	a2,12(sp)
    2934:	fffff097          	auipc	ra,0xfffff
    2938:	acc080e7          	jalr	-1332(ra) # 1400 <memcpy>
    293c:	00c12603          	lw	a2,12(sp)
    2940:	00c484b3          	add	s1,s1,a2
    2944:	fe048fa3          	sb	zero,-1(s1)
    2948:	f5dff06f          	j	28a4 <fatfs_split_path+0x48>

0000294c <fatfs_compare_names>:
    294c:	fd010113          	addi	sp,sp,-48
    2950:	02112623          	sw	ra,44(sp)
    2954:	03212023          	sw	s2,32(sp)
    2958:	01312e23          	sw	s3,28(sp)
    295c:	01412c23          	sw	s4,24(sp)
    2960:	01512a23          	sw	s5,20(sp)
    2964:	00058a13          	mv	s4,a1
    2968:	02812423          	sw	s0,40(sp)
    296c:	02912223          	sw	s1,36(sp)
    2970:	01612823          	sw	s6,16(sp)
    2974:	01712623          	sw	s7,12(sp)
    2978:	01812423          	sw	s8,8(sp)
    297c:	00050a93          	mv	s5,a0
    2980:	fffff097          	auipc	ra,0xfffff
    2984:	2bc080e7          	jalr	700(ra) # 1c3c <FileString_GetExtension>
    2988:	00050993          	mv	s3,a0
    298c:	000a0513          	mv	a0,s4
    2990:	fffff097          	auipc	ra,0xfffff
    2994:	2ac080e7          	jalr	684(ra) # 1c3c <FileString_GetExtension>
    2998:	fff00793          	li	a5,-1
    299c:	00050913          	mv	s2,a0
    29a0:	02f99e63          	bne	s3,a5,29dc <fatfs_compare_names+0x90>
    29a4:	0f350063          	beq	a0,s3,2a84 <fatfs_compare_names+0x138>
    29a8:	00000513          	li	a0,0
    29ac:	02c12083          	lw	ra,44(sp)
    29b0:	02812403          	lw	s0,40(sp)
    29b4:	02412483          	lw	s1,36(sp)
    29b8:	02012903          	lw	s2,32(sp)
    29bc:	01c12983          	lw	s3,28(sp)
    29c0:	01812a03          	lw	s4,24(sp)
    29c4:	01412a83          	lw	s5,20(sp)
    29c8:	01012b03          	lw	s6,16(sp)
    29cc:	00c12b83          	lw	s7,12(sp)
    29d0:	00812c03          	lw	s8,8(sp)
    29d4:	03010113          	addi	sp,sp,48
    29d8:	00008067          	ret
    29dc:	fcf506e3          	beq	a0,a5,29a8 <fatfs_compare_names+0x5c>
    29e0:	00198793          	addi	a5,s3,1
    29e4:	00fa8b33          	add	s6,s5,a5
    29e8:	00050413          	mv	s0,a0
    29ec:	00150793          	addi	a5,a0,1
    29f0:	000b0513          	mv	a0,s6
    29f4:	00fa0bb3          	add	s7,s4,a5
    29f8:	fffff097          	auipc	ra,0xfffff
    29fc:	a2c080e7          	jalr	-1492(ra) # 1424 <strlen>
    2a00:	00050c13          	mv	s8,a0
    2a04:	000b8513          	mv	a0,s7
    2a08:	00098493          	mv	s1,s3
    2a0c:	fffff097          	auipc	ra,0xfffff
    2a10:	a18080e7          	jalr	-1512(ra) # 1424 <strlen>
    2a14:	f8ac1ae3          	bne	s8,a0,29a8 <fatfs_compare_names+0x5c>
    2a18:	000b0513          	mv	a0,s6
    2a1c:	fffff097          	auipc	ra,0xfffff
    2a20:	a08080e7          	jalr	-1528(ra) # 1424 <strlen>
    2a24:	00050613          	mv	a2,a0
    2a28:	000b8593          	mv	a1,s7
    2a2c:	000b0513          	mv	a0,s6
    2a30:	fffff097          	auipc	ra,0xfffff
    2a34:	19c080e7          	jalr	412(ra) # 1bcc <FileString_StrCmpNoCase>
    2a38:	f60518e3          	bnez	a0,29a8 <fatfs_compare_names+0x5c>
    2a3c:	fff48793          	addi	a5,s1,-1
    2a40:	00fa87b3          	add	a5,s5,a5
    2a44:	41378733          	sub	a4,a5,s3
    2a48:	02000693          	li	a3,32
    2a4c:	06e79263          	bne	a5,a4,2ab0 <fatfs_compare_names+0x164>
    2a50:	fff40793          	addi	a5,s0,-1
    2a54:	00fa07b3          	add	a5,s4,a5
    2a58:	41278733          	sub	a4,a5,s2
    2a5c:	02000693          	li	a3,32
    2a60:	06e79263          	bne	a5,a4,2ac4 <fatfs_compare_names+0x178>
    2a64:	f53912e3          	bne	s2,s3,29a8 <fatfs_compare_names+0x5c>
    2a68:	00090613          	mv	a2,s2
    2a6c:	000a0593          	mv	a1,s4
    2a70:	000a8513          	mv	a0,s5
    2a74:	fffff097          	auipc	ra,0xfffff
    2a78:	158080e7          	jalr	344(ra) # 1bcc <FileString_StrCmpNoCase>
    2a7c:	00153513          	seqz	a0,a0
    2a80:	f2dff06f          	j	29ac <fatfs_compare_names+0x60>
    2a84:	000a8513          	mv	a0,s5
    2a88:	fffff097          	auipc	ra,0xfffff
    2a8c:	99c080e7          	jalr	-1636(ra) # 1424 <strlen>
    2a90:	00050493          	mv	s1,a0
    2a94:	00050993          	mv	s3,a0
    2a98:	000a0513          	mv	a0,s4
    2a9c:	fffff097          	auipc	ra,0xfffff
    2aa0:	988080e7          	jalr	-1656(ra) # 1424 <strlen>
    2aa4:	00050413          	mv	s0,a0
    2aa8:	00050913          	mv	s2,a0
    2aac:	f91ff06f          	j	2a3c <fatfs_compare_names+0xf0>
    2ab0:	0007c603          	lbu	a2,0(a5)
    2ab4:	f8d61ee3          	bne	a2,a3,2a50 <fatfs_compare_names+0x104>
    2ab8:	415789b3          	sub	s3,a5,s5
    2abc:	fff78793          	addi	a5,a5,-1
    2ac0:	f8dff06f          	j	2a4c <fatfs_compare_names+0x100>
    2ac4:	0007c603          	lbu	a2,0(a5)
    2ac8:	f8d61ee3          	bne	a2,a3,2a64 <fatfs_compare_names+0x118>
    2acc:	41478933          	sub	s2,a5,s4
    2ad0:	fff78793          	addi	a5,a5,-1
    2ad4:	f8dff06f          	j	2a60 <fatfs_compare_names+0x114>

00002ad8 <_check_file_open>:
    2ad8:	fe010113          	addi	sp,sp,-32
    2adc:	000057b7          	lui	a5,0x5
    2ae0:	00812c23          	sw	s0,24(sp)
    2ae4:	4547a403          	lw	s0,1108(a5) # 5454 <_open_file_list>
    2ae8:	00912a23          	sw	s1,20(sp)
    2aec:	00112e23          	sw	ra,28(sp)
    2af0:	01212823          	sw	s2,16(sp)
    2af4:	01312623          	sw	s3,12(sp)
    2af8:	00050493          	mv	s1,a0
    2afc:	00041663          	bnez	s0,2b08 <_check_file_open+0x30>
    2b00:	00000513          	li	a0,0
    2b04:	03c0006f          	j	2b40 <_check_file_open+0x68>
    2b08:	bc440793          	addi	a5,s0,-1084
    2b0c:	00f49663          	bne	s1,a5,2b18 <_check_file_open+0x40>
    2b10:	00442403          	lw	s0,4(s0)
    2b14:	fe9ff06f          	j	2afc <_check_file_open+0x24>
    2b18:	01448593          	addi	a1,s1,20
    2b1c:	bd840513          	addi	a0,s0,-1064
    2b20:	00000097          	auipc	ra,0x0
    2b24:	e2c080e7          	jalr	-468(ra) # 294c <fatfs_compare_names>
    2b28:	fe0504e3          	beqz	a0,2b10 <_check_file_open+0x38>
    2b2c:	11848593          	addi	a1,s1,280
    2b30:	cdc40513          	addi	a0,s0,-804
    2b34:	00000097          	auipc	ra,0x0
    2b38:	e18080e7          	jalr	-488(ra) # 294c <fatfs_compare_names>
    2b3c:	fc050ae3          	beqz	a0,2b10 <_check_file_open+0x38>
    2b40:	01c12083          	lw	ra,28(sp)
    2b44:	01812403          	lw	s0,24(sp)
    2b48:	01412483          	lw	s1,20(sp)
    2b4c:	01012903          	lw	s2,16(sp)
    2b50:	00c12983          	lw	s3,12(sp)
    2b54:	02010113          	addi	sp,sp,32
    2b58:	00008067          	ret

00002b5c <fatfs_get_sfn_display_name>:
    2b5c:	00000713          	li	a4,0
    2b60:	02000613          	li	a2,32
    2b64:	01900813          	li	a6,25
    2b68:	0005c783          	lbu	a5,0(a1)
    2b6c:	00078663          	beqz	a5,2b78 <fatfs_get_sfn_display_name+0x1c>
    2b70:	ff470693          	addi	a3,a4,-12
    2b74:	00069863          	bnez	a3,2b84 <fatfs_get_sfn_display_name+0x28>
    2b78:	00050023          	sb	zero,0(a0)
    2b7c:	00100513          	li	a0,1
    2b80:	00008067          	ret
    2b84:	00158593          	addi	a1,a1,1
    2b88:	fec780e3          	beq	a5,a2,2b68 <fatfs_get_sfn_display_name+0xc>
    2b8c:	fbf78693          	addi	a3,a5,-65
    2b90:	0ff6f693          	zext.b	a3,a3
    2b94:	00d86663          	bltu	a6,a3,2ba0 <fatfs_get_sfn_display_name+0x44>
    2b98:	02078793          	addi	a5,a5,32
    2b9c:	0ff7f793          	zext.b	a5,a5
    2ba0:	00f50023          	sb	a5,0(a0)
    2ba4:	00170713          	addi	a4,a4,1
    2ba8:	00150513          	addi	a0,a0,1
    2bac:	fbdff06f          	j	2b68 <fatfs_get_sfn_display_name+0xc>

00002bb0 <fatfs_fat_init>:
    2bb0:	ff010113          	addi	sp,sp,-16
    2bb4:	00812423          	sw	s0,8(sp)
    2bb8:	00912223          	sw	s1,4(sp)
    2bbc:	00112623          	sw	ra,12(sp)
    2bc0:	fff00793          	li	a5,-1
    2bc4:	25850493          	addi	s1,a0,600
    2bc8:	00050413          	mv	s0,a0
    2bcc:	44f52c23          	sw	a5,1112(a0)
    2bd0:	24052a23          	sw	zero,596(a0)
    2bd4:	44052e23          	sw	zero,1116(a0)
    2bd8:	20000613          	li	a2,512
    2bdc:	00048513          	mv	a0,s1
    2be0:	00000593          	li	a1,0
    2be4:	fffff097          	auipc	ra,0xfffff
    2be8:	800080e7          	jalr	-2048(ra) # 13e4 <memset>
    2bec:	25442783          	lw	a5,596(s0)
    2bf0:	00c12083          	lw	ra,12(sp)
    2bf4:	24942a23          	sw	s1,596(s0)
    2bf8:	46042023          	sw	zero,1120(s0)
    2bfc:	46f42223          	sw	a5,1124(s0)
    2c00:	00812403          	lw	s0,8(sp)
    2c04:	00412483          	lw	s1,4(sp)
    2c08:	01010113          	addi	sp,sp,16
    2c0c:	00008067          	ret

00002c10 <fatfs_init>:
    2c10:	fd010113          	addi	sp,sp,-48
    2c14:	02812423          	sw	s0,40(sp)
    2c18:	02112623          	sw	ra,44(sp)
    2c1c:	02912223          	sw	s1,36(sp)
    2c20:	03212023          	sw	s2,32(sp)
    2c24:	01312e23          	sw	s3,28(sp)
    2c28:	fff00793          	li	a5,-1
    2c2c:	24f52223          	sw	a5,580(a0)
    2c30:	24052423          	sw	zero,584(a0)
    2c34:	02052223          	sw	zero,36(a0)
    2c38:	00050413          	mv	s0,a0
    2c3c:	00000097          	auipc	ra,0x0
    2c40:	f74080e7          	jalr	-140(ra) # 2bb0 <fatfs_fat_init>
    2c44:	03442783          	lw	a5,52(s0)
    2c48:	02079463          	bnez	a5,2c70 <fatfs_init+0x60>
    2c4c:	fff00713          	li	a4,-1
    2c50:	02c12083          	lw	ra,44(sp)
    2c54:	02812403          	lw	s0,40(sp)
    2c58:	02412483          	lw	s1,36(sp)
    2c5c:	02012903          	lw	s2,32(sp)
    2c60:	01c12983          	lw	s3,28(sp)
    2c64:	00070513          	mv	a0,a4
    2c68:	03010113          	addi	sp,sp,48
    2c6c:	00008067          	ret
    2c70:	04440593          	addi	a1,s0,68
    2c74:	00100613          	li	a2,1
    2c78:	00000513          	li	a0,0
    2c7c:	00b12623          	sw	a1,12(sp)
    2c80:	000780e7          	jalr	a5
    2c84:	fc0504e3          	beqz	a0,2c4c <fatfs_init+0x3c>
    2c88:	24244703          	lbu	a4,578(s0)
    2c8c:	05500793          	li	a5,85
    2c90:	00c12583          	lw	a1,12(sp)
    2c94:	00f70663          	beq	a4,a5,2ca0 <fatfs_init+0x90>
    2c98:	ffd00713          	li	a4,-3
    2c9c:	fb5ff06f          	j	2c50 <fatfs_init+0x40>
    2ca0:	24344703          	lbu	a4,579(s0)
    2ca4:	0aa00793          	li	a5,170
    2ca8:	fef718e3          	bne	a4,a5,2c98 <fatfs_init+0x88>
    2cac:	20644783          	lbu	a5,518(s0)
    2cb0:	00600713          	li	a4,6
    2cb4:	02f76463          	bltu	a4,a5,2cdc <fatfs_init+0xcc>
    2cb8:	00400713          	li	a4,4
    2cbc:	00f76663          	bltu	a4,a5,2cc8 <fatfs_init+0xb8>
    2cc0:	00000513          	li	a0,0
    2cc4:	02078663          	beqz	a5,2cf0 <fatfs_init+0xe0>
    2cc8:	20c45503          	lhu	a0,524(s0)
    2ccc:	20a45783          	lhu	a5,522(s0)
    2cd0:	01051513          	slli	a0,a0,0x10
    2cd4:	00f56533          	or	a0,a0,a5
    2cd8:	0180006f          	j	2cf0 <fatfs_init+0xe0>
    2cdc:	00c00713          	li	a4,12
    2ce0:	12f76663          	bltu	a4,a5,2e0c <fatfs_init+0x1fc>
    2ce4:	00a00713          	li	a4,10
    2ce8:	00000513          	li	a0,0
    2cec:	fcf76ee3          	bltu	a4,a5,2cc8 <fatfs_init+0xb8>
    2cf0:	03442783          	lw	a5,52(s0)
    2cf4:	00a42e23          	sw	a0,28(s0)
    2cf8:	00100613          	li	a2,1
    2cfc:	000780e7          	jalr	a5
    2d00:	f40506e3          	beqz	a0,2c4c <fatfs_init+0x3c>
    2d04:	05044783          	lbu	a5,80(s0)
    2d08:	04f44703          	lbu	a4,79(s0)
    2d0c:	20000693          	li	a3,512
    2d10:	00879793          	slli	a5,a5,0x8
    2d14:	00e7e7b3          	or	a5,a5,a4
    2d18:	ffe00713          	li	a4,-2
    2d1c:	f2d79ae3          	bne	a5,a3,2c50 <fatfs_init+0x40>
    2d20:	05644483          	lbu	s1,86(s0)
    2d24:	05544783          	lbu	a5,85(s0)
    2d28:	05144983          	lbu	s3,81(s0)
    2d2c:	00849493          	slli	s1,s1,0x8
    2d30:	05a45583          	lhu	a1,90(s0)
    2d34:	00f4e4b3          	or	s1,s1,a5
    2d38:	01340023          	sb	s3,0(s0)
    2d3c:	02941423          	sh	s1,40(s0)
    2d40:	05245903          	lhu	s2,82(s0)
    2d44:	05444503          	lbu	a0,84(s0)
    2d48:	00059463          	bnez	a1,2d50 <fatfs_init+0x140>
    2d4c:	06842583          	lw	a1,104(s0)
    2d50:	07042783          	lw	a5,112(s0)
    2d54:	02b42023          	sw	a1,32(s0)
    2d58:	00549493          	slli	s1,s1,0x5
    2d5c:	00f42423          	sw	a5,8(s0)
    2d60:	07445783          	lhu	a5,116(s0)
    2d64:	1ff48493          	addi	s1,s1,511
    2d68:	4094d493          	srai	s1,s1,0x9
    2d6c:	00f41c23          	sh	a5,24(s0)
    2d70:	fffff097          	auipc	ra,0xfffff
    2d74:	dc4080e7          	jalr	-572(ra) # 1b34 <__mulsi3>
    2d78:	00a907b3          	add	a5,s2,a0
    2d7c:	00f42623          	sw	a5,12(s0)
    2d80:	01c42783          	lw	a5,28(s0)
    2d84:	24245703          	lhu	a4,578(s0)
    2d88:	00942823          	sw	s1,16(s0)
    2d8c:	00f907b3          	add	a5,s2,a5
    2d90:	00f42a23          	sw	a5,20(s0)
    2d94:	00f507b3          	add	a5,a0,a5
    2d98:	00f42223          	sw	a5,4(s0)
    2d9c:	0000b7b7          	lui	a5,0xb
    2da0:	a5578793          	addi	a5,a5,-1451 # aa55 <framebuffer+0x3371>
    2da4:	eef71ae3          	bne	a4,a5,2c98 <fatfs_init+0x88>
    2da8:	05844783          	lbu	a5,88(s0)
    2dac:	05744703          	lbu	a4,87(s0)
    2db0:	00879793          	slli	a5,a5,0x8
    2db4:	00e7e7b3          	or	a5,a5,a4
    2db8:	00079463          	bnez	a5,2dc0 <fatfs_init+0x1b0>
    2dbc:	06442783          	lw	a5,100(s0)
    2dc0:	ffb00713          	li	a4,-5
    2dc4:	e80986e3          	beqz	s3,2c50 <fatfs_init+0x40>
    2dc8:	00990933          	add	s2,s2,s1
    2dcc:	00a90533          	add	a0,s2,a0
    2dd0:	40a78533          	sub	a0,a5,a0
    2dd4:	00098593          	mv	a1,s3
    2dd8:	ffffe097          	auipc	ra,0xffffe
    2ddc:	560080e7          	jalr	1376(ra) # 1338 <__udivsi3>
    2de0:	000017b7          	lui	a5,0x1
    2de4:	ff478793          	addi	a5,a5,-12 # ff4 <sdcard_cmd+0x44>
    2de8:	ffb00713          	li	a4,-5
    2dec:	e6a7f2e3          	bgeu	a5,a0,2c50 <fatfs_init+0x40>
    2df0:	000107b7          	lui	a5,0x10
    2df4:	ff478793          	addi	a5,a5,-12 # fff4 <_files+0x44a8>
    2df8:	02a7e663          	bltu	a5,a0,2e24 <fatfs_init+0x214>
    2dfc:	00042423          	sw	zero,8(s0)
    2e00:	02042823          	sw	zero,48(s0)
    2e04:	00000713          	li	a4,0
    2e08:	e49ff06f          	j	2c50 <fatfs_init+0x40>
    2e0c:	ff278793          	addi	a5,a5,-14
    2e10:	0ff7f793          	zext.b	a5,a5
    2e14:	00100713          	li	a4,1
    2e18:	00000513          	li	a0,0
    2e1c:	eaf776e3          	bgeu	a4,a5,2cc8 <fatfs_init+0xb8>
    2e20:	ed1ff06f          	j	2cf0 <fatfs_init+0xe0>
    2e24:	00100793          	li	a5,1
    2e28:	02f42823          	sw	a5,48(s0)
    2e2c:	fd9ff06f          	j	2e04 <fatfs_init+0x1f4>

00002e30 <fl_attach_media>:
    2e30:	000057b7          	lui	a5,0x5
    2e34:	4607a783          	lw	a5,1120(a5) # 5460 <_filelib_init>
    2e38:	fe010113          	addi	sp,sp,-32
    2e3c:	00812c23          	sw	s0,24(sp)
    2e40:	00112e23          	sw	ra,28(sp)
    2e44:	00050413          	mv	s0,a0
    2e48:	00079a63          	bnez	a5,2e5c <fl_attach_media+0x2c>
    2e4c:	00b12623          	sw	a1,12(sp)
    2e50:	fffff097          	auipc	ra,0xfffff
    2e54:	178080e7          	jalr	376(ra) # 1fc8 <fl_init>
    2e58:	00c12583          	lw	a1,12(sp)
    2e5c:	0000b7b7          	lui	a5,0xb
    2e60:	6e478513          	addi	a0,a5,1764 # b6e4 <_fs>
    2e64:	02b52c23          	sw	a1,56(a0)
    2e68:	02852a23          	sw	s0,52(a0)
    2e6c:	00000097          	auipc	ra,0x0
    2e70:	da4080e7          	jalr	-604(ra) # 2c10 <fatfs_init>
    2e74:	00050593          	mv	a1,a0
    2e78:	02050863          	beqz	a0,2ea8 <fl_attach_media+0x78>
    2e7c:	00a12623          	sw	a0,12(sp)
    2e80:	00005537          	lui	a0,0x5
    2e84:	fe050513          	addi	a0,a0,-32 # 4fe0 <LEDS+0x110>
    2e88:	fffff097          	auipc	ra,0xfffff
    2e8c:	b70080e7          	jalr	-1168(ra) # 19f8 <printf>
    2e90:	00c12583          	lw	a1,12(sp)
    2e94:	01c12083          	lw	ra,28(sp)
    2e98:	01812403          	lw	s0,24(sp)
    2e9c:	00058513          	mv	a0,a1
    2ea0:	02010113          	addi	sp,sp,32
    2ea4:	00008067          	ret
    2ea8:	000057b7          	lui	a5,0x5
    2eac:	00100713          	li	a4,1
    2eb0:	44e7ae23          	sw	a4,1116(a5) # 545c <_filelib_valid>
    2eb4:	fe1ff06f          	j	2e94 <fl_attach_media+0x64>

00002eb8 <fatfs_fat_purge>:
    2eb8:	25452583          	lw	a1,596(a0)
    2ebc:	fe010113          	addi	sp,sp,-32
    2ec0:	00812c23          	sw	s0,24(sp)
    2ec4:	00112e23          	sw	ra,28(sp)
    2ec8:	00050413          	mv	s0,a0
    2ecc:	00059663          	bnez	a1,2ed8 <fatfs_fat_purge+0x20>
    2ed0:	00100513          	li	a0,1
    2ed4:	02c0006f          	j	2f00 <fatfs_fat_purge+0x48>
    2ed8:	2045a783          	lw	a5,516(a1)
    2edc:	00079663          	bnez	a5,2ee8 <fatfs_fat_purge+0x30>
    2ee0:	20c5a583          	lw	a1,524(a1)
    2ee4:	fe9ff06f          	j	2ecc <fatfs_fat_purge+0x14>
    2ee8:	00040513          	mv	a0,s0
    2eec:	00b12623          	sw	a1,12(sp)
    2ef0:	fffff097          	auipc	ra,0xfffff
    2ef4:	d78080e7          	jalr	-648(ra) # 1c68 <fatfs_fat_writeback>
    2ef8:	00c12583          	lw	a1,12(sp)
    2efc:	fe0512e3          	bnez	a0,2ee0 <fatfs_fat_purge+0x28>
    2f00:	01c12083          	lw	ra,28(sp)
    2f04:	01812403          	lw	s0,24(sp)
    2f08:	02010113          	addi	sp,sp,32
    2f0c:	00008067          	ret

00002f10 <fatfs_find_next_cluster>:
    2f10:	ff010113          	addi	sp,sp,-16
    2f14:	00812423          	sw	s0,8(sp)
    2f18:	01212023          	sw	s2,0(sp)
    2f1c:	00112623          	sw	ra,12(sp)
    2f20:	00912223          	sw	s1,4(sp)
    2f24:	00050913          	mv	s2,a0
    2f28:	00200413          	li	s0,2
    2f2c:	00058463          	beqz	a1,2f34 <fatfs_find_next_cluster+0x24>
    2f30:	00058413          	mv	s0,a1
    2f34:	03092783          	lw	a5,48(s2)
    2f38:	00745493          	srli	s1,s0,0x7
    2f3c:	00079463          	bnez	a5,2f44 <fatfs_find_next_cluster+0x34>
    2f40:	00845493          	srli	s1,s0,0x8
    2f44:	01492583          	lw	a1,20(s2)
    2f48:	00090513          	mv	a0,s2
    2f4c:	00b485b3          	add	a1,s1,a1
    2f50:	fffff097          	auipc	ra,0xfffff
    2f54:	d9c080e7          	jalr	-612(ra) # 1cec <fatfs_fat_read_sector>
    2f58:	00050793          	mv	a5,a0
    2f5c:	fff00513          	li	a0,-1
    2f60:	04078863          	beqz	a5,2fb0 <fatfs_find_next_cluster+0xa0>
    2f64:	03092703          	lw	a4,48(s2)
    2f68:	2087a783          	lw	a5,520(a5)
    2f6c:	04071e63          	bnez	a4,2fc8 <fatfs_find_next_cluster+0xb8>
    2f70:	00849493          	slli	s1,s1,0x8
    2f74:	40940433          	sub	s0,s0,s1
    2f78:	00141413          	slli	s0,s0,0x1
    2f7c:	01041413          	slli	s0,s0,0x10
    2f80:	01045413          	srli	s0,s0,0x10
    2f84:	008787b3          	add	a5,a5,s0
    2f88:	0017c503          	lbu	a0,1(a5)
    2f8c:	0007c783          	lbu	a5,0(a5)
    2f90:	00851513          	slli	a0,a0,0x8
    2f94:	00f50533          	add	a0,a0,a5
    2f98:	ffff07b7          	lui	a5,0xffff0
    2f9c:	00878793          	addi	a5,a5,8 # ffff0008 <__stacktop+0xfffe0008>
    2fa0:	00f507b3          	add	a5,a0,a5
    2fa4:	00700713          	li	a4,7
    2fa8:	00f76463          	bltu	a4,a5,2fb0 <fatfs_find_next_cluster+0xa0>
    2fac:	fff00513          	li	a0,-1
    2fb0:	00c12083          	lw	ra,12(sp)
    2fb4:	00812403          	lw	s0,8(sp)
    2fb8:	00412483          	lw	s1,4(sp)
    2fbc:	00012903          	lw	s2,0(sp)
    2fc0:	01010113          	addi	sp,sp,16
    2fc4:	00008067          	ret
    2fc8:	00749493          	slli	s1,s1,0x7
    2fcc:	40940433          	sub	s0,s0,s1
    2fd0:	00241413          	slli	s0,s0,0x2
    2fd4:	01041413          	slli	s0,s0,0x10
    2fd8:	01045413          	srli	s0,s0,0x10
    2fdc:	008787b3          	add	a5,a5,s0
    2fe0:	0037c503          	lbu	a0,3(a5)
    2fe4:	0027c703          	lbu	a4,2(a5)
    2fe8:	01851513          	slli	a0,a0,0x18
    2fec:	01071713          	slli	a4,a4,0x10
    2ff0:	00e50533          	add	a0,a0,a4
    2ff4:	0007c703          	lbu	a4,0(a5)
    2ff8:	0017c783          	lbu	a5,1(a5)
    2ffc:	00e50533          	add	a0,a0,a4
    3000:	00879793          	slli	a5,a5,0x8
    3004:	00f50533          	add	a0,a0,a5
    3008:	00451513          	slli	a0,a0,0x4
    300c:	00455513          	srli	a0,a0,0x4
    3010:	f00007b7          	lui	a5,0xf0000
    3014:	f89ff06f          	j	2f9c <fatfs_find_next_cluster+0x8c>

00003018 <fatfs_sector_reader>:
    3018:	03052783          	lw	a5,48(a0)
    301c:	fe010113          	addi	sp,sp,-32
    3020:	00812c23          	sw	s0,24(sp)
    3024:	01212823          	sw	s2,16(sp)
    3028:	01512223          	sw	s5,4(sp)
    302c:	00112e23          	sw	ra,28(sp)
    3030:	00912a23          	sw	s1,20(sp)
    3034:	01312623          	sw	s3,12(sp)
    3038:	01412423          	sw	s4,8(sp)
    303c:	01612023          	sw	s6,0(sp)
    3040:	00f5e7b3          	or	a5,a1,a5
    3044:	00050413          	mv	s0,a0
    3048:	00060913          	mv	s2,a2
    304c:	00068a93          	mv	s5,a3
    3050:	08079063          	bnez	a5,30d0 <fatfs_sector_reader+0xb8>
    3054:	01052783          	lw	a5,16(a0)
    3058:	02f66863          	bltu	a2,a5,3088 <fatfs_sector_reader+0x70>
    305c:	00000513          	li	a0,0
    3060:	01c12083          	lw	ra,28(sp)
    3064:	01812403          	lw	s0,24(sp)
    3068:	01412483          	lw	s1,20(sp)
    306c:	01012903          	lw	s2,16(sp)
    3070:	00c12983          	lw	s3,12(sp)
    3074:	00812a03          	lw	s4,8(sp)
    3078:	00412a83          	lw	s5,4(sp)
    307c:	00012b03          	lw	s6,0(sp)
    3080:	02010113          	addi	sp,sp,32
    3084:	00008067          	ret
    3088:	01c52503          	lw	a0,28(a0)
    308c:	00c42783          	lw	a5,12(s0)
    3090:	00f50533          	add	a0,a0,a5
    3094:	01250533          	add	a0,a0,s2
    3098:	0a0a8663          	beqz	s5,3144 <fatfs_sector_reader+0x12c>
    309c:	03442783          	lw	a5,52(s0)
    30a0:	00100613          	li	a2,1
    30a4:	000a8593          	mv	a1,s5
    30a8:	01812403          	lw	s0,24(sp)
    30ac:	01c12083          	lw	ra,28(sp)
    30b0:	01412483          	lw	s1,20(sp)
    30b4:	01012903          	lw	s2,16(sp)
    30b8:	00c12983          	lw	s3,12(sp)
    30bc:	00812a03          	lw	s4,8(sp)
    30c0:	00412a83          	lw	s5,4(sp)
    30c4:	00012b03          	lw	s6,0(sp)
    30c8:	02010113          	addi	sp,sp,32
    30cc:	00078067          	jr	a5 # f0000000 <__stacktop+0xefff0000>
    30d0:	00054783          	lbu	a5,0(a0)
    30d4:	00058493          	mv	s1,a1
    30d8:	00060513          	mv	a0,a2
    30dc:	00078593          	mv	a1,a5
    30e0:	00078a13          	mv	s4,a5
    30e4:	ffffe097          	auipc	ra,0xffffe
    30e8:	254080e7          	jalr	596(ra) # 1338 <__udivsi3>
    30ec:	00050b13          	mv	s6,a0
    30f0:	00000993          	li	s3,0
    30f4:	03699a63          	bne	s3,s6,3128 <fatfs_sector_reader+0x110>
    30f8:	fff00793          	li	a5,-1
    30fc:	f6f480e3          	beq	s1,a5,305c <fatfs_sector_reader+0x44>
    3100:	000a0593          	mv	a1,s4
    3104:	00090513          	mv	a0,s2
    3108:	ffffe097          	auipc	ra,0xffffe
    310c:	278080e7          	jalr	632(ra) # 1380 <__umodsi3>
    3110:	00050913          	mv	s2,a0
    3114:	00048593          	mv	a1,s1
    3118:	00040513          	mv	a0,s0
    311c:	fffff097          	auipc	ra,0xfffff
    3120:	d7c080e7          	jalr	-644(ra) # 1e98 <fatfs_lba_of_cluster>
    3124:	f71ff06f          	j	3094 <fatfs_sector_reader+0x7c>
    3128:	00048593          	mv	a1,s1
    312c:	00040513          	mv	a0,s0
    3130:	00000097          	auipc	ra,0x0
    3134:	de0080e7          	jalr	-544(ra) # 2f10 <fatfs_find_next_cluster>
    3138:	00050493          	mv	s1,a0
    313c:	00198993          	addi	s3,s3,1
    3140:	fb5ff06f          	j	30f4 <fatfs_sector_reader+0xdc>
    3144:	24442783          	lw	a5,580(s0)
    3148:	00a78c63          	beq	a5,a0,3160 <fatfs_sector_reader+0x148>
    314c:	03442783          	lw	a5,52(s0)
    3150:	24a42223          	sw	a0,580(s0)
    3154:	00100613          	li	a2,1
    3158:	04440593          	addi	a1,s0,68
    315c:	f4dff06f          	j	30a8 <fatfs_sector_reader+0x90>
    3160:	00100513          	li	a0,1
    3164:	efdff06f          	j	3060 <fatfs_sector_reader+0x48>

00003168 <fatfs_get_file_entry>:
    3168:	eb010113          	addi	sp,sp,-336
    316c:	14812423          	sw	s0,328(sp)
    3170:	14912223          	sw	s1,324(sp)
    3174:	13312e23          	sw	s3,316(sp)
    3178:	13712623          	sw	s7,300(sp)
    317c:	13812423          	sw	s8,296(sp)
    3180:	13912223          	sw	s9,292(sp)
    3184:	14112623          	sw	ra,332(sp)
    3188:	15212023          	sw	s2,320(sp)
    318c:	13412c23          	sw	s4,312(sp)
    3190:	13512a23          	sw	s5,308(sp)
    3194:	13612823          	sw	s6,304(sp)
    3198:	00050993          	mv	s3,a0
    319c:	00058c93          	mv	s9,a1
    31a0:	00060b93          	mv	s7,a2
    31a4:	00068c13          	mv	s8,a3
    31a8:	10010ea3          	sb	zero,285(sp)
    31ac:	01810413          	addi	s0,sp,24
    31b0:	11c10493          	addi	s1,sp,284
    31b4:	00040513          	mv	a0,s0
    31b8:	00d00613          	li	a2,13
    31bc:	00000593          	li	a1,0
    31c0:	00d40413          	addi	s0,s0,13
    31c4:	ffffe097          	auipc	ra,0xffffe
    31c8:	220080e7          	jalr	544(ra) # 13e4 <memset>
    31cc:	fe9414e3          	bne	s0,s1,31b4 <fatfs_get_file_entry+0x4c>
    31d0:	00000493          	li	s1,0
    31d4:	24498a13          	addi	s4,s3,580
    31d8:	00810913          	addi	s2,sp,8
    31dc:	00800a93          	li	s5,8
    31e0:	02e00b13          	li	s6,46
    31e4:	00000693          	li	a3,0
    31e8:	00048613          	mv	a2,s1
    31ec:	000c8593          	mv	a1,s9
    31f0:	00098513          	mv	a0,s3
    31f4:	00000097          	auipc	ra,0x0
    31f8:	e24080e7          	jalr	-476(ra) # 3018 <fatfs_sector_reader>
    31fc:	08050c63          	beqz	a0,3294 <fatfs_get_file_entry+0x12c>
    3200:	00148493          	addi	s1,s1,1
    3204:	04498413          	addi	s0,s3,68
    3208:	00040513          	mv	a0,s0
    320c:	fffff097          	auipc	ra,0xfffff
    3210:	f34080e7          	jalr	-204(ra) # 2140 <fatfs_entry_lfn_text>
    3214:	02050063          	beqz	a0,3234 <fatfs_get_file_entry+0xcc>
    3218:	00040593          	mv	a1,s0
    321c:	01810513          	addi	a0,sp,24
    3220:	fffff097          	auipc	ra,0xfffff
    3224:	e18080e7          	jalr	-488(ra) # 2038 <fatfs_lfn_cache_entry>
    3228:	02040413          	addi	s0,s0,32
    322c:	fd441ee3          	bne	s0,s4,3208 <fatfs_get_file_entry+0xa0>
    3230:	fb5ff06f          	j	31e4 <fatfs_get_file_entry+0x7c>
    3234:	00040513          	mv	a0,s0
    3238:	fffff097          	auipc	ra,0xfffff
    323c:	f1c080e7          	jalr	-228(ra) # 2154 <fatfs_entry_lfn_invalid>
    3240:	00050663          	beqz	a0,324c <fatfs_get_file_entry+0xe4>
    3244:	10010ea3          	sb	zero,285(sp)
    3248:	fe1ff06f          	j	3228 <fatfs_get_file_entry+0xc0>
    324c:	00040593          	mv	a1,s0
    3250:	01810513          	addi	a0,sp,24
    3254:	fffff097          	auipc	ra,0xfffff
    3258:	f34080e7          	jalr	-204(ra) # 2188 <fatfs_entry_lfn_exists>
    325c:	06050663          	beqz	a0,32c8 <fatfs_get_file_entry+0x160>
    3260:	01810513          	addi	a0,sp,24
    3264:	fffff097          	auipc	ra,0xfffff
    3268:	ea0080e7          	jalr	-352(ra) # 2104 <fatfs_lfn_cache_get>
    326c:	000b8593          	mv	a1,s7
    3270:	fffff097          	auipc	ra,0xfffff
    3274:	6dc080e7          	jalr	1756(ra) # 294c <fatfs_compare_names>
    3278:	fc0506e3          	beqz	a0,3244 <fatfs_get_file_entry+0xdc>
    327c:	02000613          	li	a2,32
    3280:	00040593          	mv	a1,s0
    3284:	000c0513          	mv	a0,s8
    3288:	ffffe097          	auipc	ra,0xffffe
    328c:	178080e7          	jalr	376(ra) # 1400 <memcpy>
    3290:	00100513          	li	a0,1
    3294:	14c12083          	lw	ra,332(sp)
    3298:	14812403          	lw	s0,328(sp)
    329c:	14412483          	lw	s1,324(sp)
    32a0:	14012903          	lw	s2,320(sp)
    32a4:	13c12983          	lw	s3,316(sp)
    32a8:	13812a03          	lw	s4,312(sp)
    32ac:	13412a83          	lw	s5,308(sp)
    32b0:	13012b03          	lw	s6,304(sp)
    32b4:	12c12b83          	lw	s7,300(sp)
    32b8:	12812c03          	lw	s8,296(sp)
    32bc:	12412c83          	lw	s9,292(sp)
    32c0:	15010113          	addi	sp,sp,336
    32c4:	00008067          	ret
    32c8:	00040513          	mv	a0,s0
    32cc:	fffff097          	auipc	ra,0xfffff
    32d0:	f0c080e7          	jalr	-244(ra) # 21d8 <fatfs_entry_sfn_only>
    32d4:	f4050ae3          	beqz	a0,3228 <fatfs_get_file_entry+0xc0>
    32d8:	00d00613          	li	a2,13
    32dc:	00000593          	li	a1,0
    32e0:	00090513          	mv	a0,s2
    32e4:	ffffe097          	auipc	ra,0xffffe
    32e8:	100080e7          	jalr	256(ra) # 13e4 <memset>
    32ec:	00000793          	li	a5,0
    32f0:	00f406b3          	add	a3,s0,a5
    32f4:	0006c683          	lbu	a3,0(a3)
    32f8:	00f90733          	add	a4,s2,a5
    32fc:	00178793          	addi	a5,a5,1
    3300:	00d70023          	sb	a3,0(a4)
    3304:	ff5796e3          	bne	a5,s5,32f0 <fatfs_get_file_entry+0x188>
    3308:	00844703          	lbu	a4,8(s0)
    330c:	00944783          	lbu	a5,9(s0)
    3310:	00a44683          	lbu	a3,10(s0)
    3314:	00e108a3          	sb	a4,17(sp)
    3318:	00f10923          	sb	a5,18(sp)
    331c:	fe070713          	addi	a4,a4,-32
    3320:	fe078793          	addi	a5,a5,-32
    3324:	00f037b3          	snez	a5,a5
    3328:	00e03733          	snez	a4,a4
    332c:	00d109a3          	sb	a3,19(sp)
    3330:	00e7e7b3          	or	a5,a5,a4
    3334:	00079863          	bnez	a5,3344 <fatfs_get_file_entry+0x1dc>
    3338:	fe068693          	addi	a3,a3,-32
    333c:	02000793          	li	a5,32
    3340:	00068a63          	beqz	a3,3354 <fatfs_get_file_entry+0x1ec>
    3344:	00814703          	lbu	a4,8(sp)
    3348:	02e00793          	li	a5,46
    334c:	01671463          	bne	a4,s6,3354 <fatfs_get_file_entry+0x1ec>
    3350:	02000793          	li	a5,32
    3354:	00f10823          	sb	a5,16(sp)
    3358:	000b8593          	mv	a1,s7
    335c:	00090513          	mv	a0,s2
    3360:	f11ff06f          	j	3270 <fatfs_get_file_entry+0x108>

00003364 <_open_directory>:
    3364:	eb010113          	addi	sp,sp,-336
    3368:	15212023          	sw	s2,320(sp)
    336c:	0000b937          	lui	s2,0xb
    3370:	6e490913          	addi	s2,s2,1764 # b6e4 <_fs>
    3374:	14812423          	sw	s0,328(sp)
    3378:	00892403          	lw	s0,8(s2)
    337c:	14912223          	sw	s1,324(sp)
    3380:	13312e23          	sw	s3,316(sp)
    3384:	13412c23          	sw	s4,312(sp)
    3388:	13512a23          	sw	s5,308(sp)
    338c:	13612823          	sw	s6,304(sp)
    3390:	14112623          	sw	ra,332(sp)
    3394:	00050a13          	mv	s4,a0
    3398:	00058a93          	mv	s5,a1
    339c:	fffff097          	auipc	ra,0xfffff
    33a0:	368080e7          	jalr	872(ra) # 2704 <fatfs_total_path_levels>
    33a4:	00050b13          	mv	s6,a0
    33a8:	00000493          	li	s1,0
    33ac:	fff00993          	li	s3,-1
    33b0:	009b5863          	bge	s6,s1,33c0 <_open_directory+0x5c>
    33b4:	008aa023          	sw	s0,0(s5)
    33b8:	00100513          	li	a0,1
    33bc:	0240006f          	j	33e0 <_open_directory+0x7c>
    33c0:	10400693          	li	a3,260
    33c4:	02c10613          	addi	a2,sp,44
    33c8:	00048593          	mv	a1,s1
    33cc:	000a0513          	mv	a0,s4
    33d0:	fffff097          	auipc	ra,0xfffff
    33d4:	3a4080e7          	jalr	932(ra) # 2774 <fatfs_get_substring>
    33d8:	03351863          	bne	a0,s3,3408 <_open_directory+0xa4>
    33dc:	00000513          	li	a0,0
    33e0:	14c12083          	lw	ra,332(sp)
    33e4:	14812403          	lw	s0,328(sp)
    33e8:	14412483          	lw	s1,324(sp)
    33ec:	14012903          	lw	s2,320(sp)
    33f0:	13c12983          	lw	s3,316(sp)
    33f4:	13812a03          	lw	s4,312(sp)
    33f8:	13412a83          	lw	s5,308(sp)
    33fc:	13012b03          	lw	s6,304(sp)
    3400:	15010113          	addi	sp,sp,336
    3404:	00008067          	ret
    3408:	00c10693          	addi	a3,sp,12
    340c:	02c10613          	addi	a2,sp,44
    3410:	00040593          	mv	a1,s0
    3414:	00090513          	mv	a0,s2
    3418:	00000097          	auipc	ra,0x0
    341c:	d50080e7          	jalr	-688(ra) # 3168 <fatfs_get_file_entry>
    3420:	fa050ee3          	beqz	a0,33dc <_open_directory+0x78>
    3424:	01714783          	lbu	a5,23(sp)
    3428:	0107f793          	andi	a5,a5,16
    342c:	fa0788e3          	beqz	a5,33dc <_open_directory+0x78>
    3430:	02015403          	lhu	s0,32(sp)
    3434:	02615783          	lhu	a5,38(sp)
    3438:	00148493          	addi	s1,s1,1
    343c:	01041413          	slli	s0,s0,0x10
    3440:	00f40433          	add	s0,s0,a5
    3444:	f6dff06f          	j	33b0 <_open_directory+0x4c>

00003448 <fl_opendir>:
    3448:	fe010113          	addi	sp,sp,-32
    344c:	fff00793          	li	a5,-1
    3450:	00f12623          	sw	a5,12(sp)
    3454:	000057b7          	lui	a5,0x5
    3458:	4607a783          	lw	a5,1120(a5) # 5460 <_filelib_init>
    345c:	00812c23          	sw	s0,24(sp)
    3460:	01212823          	sw	s2,16(sp)
    3464:	00112e23          	sw	ra,28(sp)
    3468:	00912a23          	sw	s1,20(sp)
    346c:	00050913          	mv	s2,a0
    3470:	00058413          	mv	s0,a1
    3474:	00079663          	bnez	a5,3480 <fl_opendir+0x38>
    3478:	fffff097          	auipc	ra,0xfffff
    347c:	b50080e7          	jalr	-1200(ra) # 1fc8 <fl_init>
    3480:	0000b4b7          	lui	s1,0xb
    3484:	6e448493          	addi	s1,s1,1764 # b6e4 <_fs>
    3488:	03c4a783          	lw	a5,60(s1)
    348c:	00078463          	beqz	a5,3494 <fl_opendir+0x4c>
    3490:	000780e7          	jalr	a5
    3494:	00090513          	mv	a0,s2
    3498:	fffff097          	auipc	ra,0xfffff
    349c:	26c080e7          	jalr	620(ra) # 2704 <fatfs_total_path_levels>
    34a0:	fff00793          	li	a5,-1
    34a4:	02f51063          	bne	a0,a5,34c4 <fl_opendir+0x7c>
    34a8:	0084a783          	lw	a5,8(s1)
    34ac:	00f12623          	sw	a5,12(sp)
    34b0:	00c12783          	lw	a5,12(sp)
    34b4:	00042023          	sw	zero,0(s0)
    34b8:	00040423          	sb	zero,8(s0)
    34bc:	00f42223          	sw	a5,4(s0)
    34c0:	0180006f          	j	34d8 <fl_opendir+0x90>
    34c4:	00c10593          	addi	a1,sp,12
    34c8:	00090513          	mv	a0,s2
    34cc:	00000097          	auipc	ra,0x0
    34d0:	e98080e7          	jalr	-360(ra) # 3364 <_open_directory>
    34d4:	fc051ee3          	bnez	a0,34b0 <fl_opendir+0x68>
    34d8:	0404a783          	lw	a5,64(s1)
    34dc:	00078463          	beqz	a5,34e4 <fl_opendir+0x9c>
    34e0:	000780e7          	jalr	a5
    34e4:	00c12703          	lw	a4,12(sp)
    34e8:	fff00793          	li	a5,-1
    34ec:	00f71463          	bne	a4,a5,34f4 <fl_opendir+0xac>
    34f0:	00000413          	li	s0,0
    34f4:	01c12083          	lw	ra,28(sp)
    34f8:	00040513          	mv	a0,s0
    34fc:	01812403          	lw	s0,24(sp)
    3500:	01412483          	lw	s1,20(sp)
    3504:	01012903          	lw	s2,16(sp)
    3508:	02010113          	addi	sp,sp,32
    350c:	00008067          	ret

00003510 <_open_file>:
    3510:	fc010113          	addi	sp,sp,-64
    3514:	03312623          	sw	s3,44(sp)
    3518:	02112e23          	sw	ra,60(sp)
    351c:	02812c23          	sw	s0,56(sp)
    3520:	02912a23          	sw	s1,52(sp)
    3524:	03212823          	sw	s2,48(sp)
    3528:	00050993          	mv	s3,a0
    352c:	fffff097          	auipc	ra,0xfffff
    3530:	8ac080e7          	jalr	-1876(ra) # 1dd8 <_allocate_file>
    3534:	06050463          	beqz	a0,359c <_open_file+0x8c>
    3538:	01450913          	addi	s2,a0,20
    353c:	00050413          	mv	s0,a0
    3540:	10400613          	li	a2,260
    3544:	00000593          	li	a1,0
    3548:	00090513          	mv	a0,s2
    354c:	ffffe097          	auipc	ra,0xffffe
    3550:	e98080e7          	jalr	-360(ra) # 13e4 <memset>
    3554:	11840493          	addi	s1,s0,280
    3558:	10400613          	li	a2,260
    355c:	00000593          	li	a1,0
    3560:	00048513          	mv	a0,s1
    3564:	ffffe097          	auipc	ra,0xffffe
    3568:	e80080e7          	jalr	-384(ra) # 13e4 <memset>
    356c:	10400713          	li	a4,260
    3570:	00048693          	mv	a3,s1
    3574:	00070613          	mv	a2,a4
    3578:	00090593          	mv	a1,s2
    357c:	00098513          	mv	a0,s3
    3580:	fffff097          	auipc	ra,0xfffff
    3584:	2dc080e7          	jalr	732(ra) # 285c <fatfs_split_path>
    3588:	fff00793          	li	a5,-1
    358c:	02f51a63          	bne	a0,a5,35c0 <_open_file+0xb0>
    3590:	00040513          	mv	a0,s0
    3594:	fffff097          	auipc	ra,0xfffff
    3598:	8bc080e7          	jalr	-1860(ra) # 1e50 <_free_file>
    359c:	00000413          	li	s0,0
    35a0:	03c12083          	lw	ra,60(sp)
    35a4:	00040513          	mv	a0,s0
    35a8:	03812403          	lw	s0,56(sp)
    35ac:	03412483          	lw	s1,52(sp)
    35b0:	03012903          	lw	s2,48(sp)
    35b4:	02c12983          	lw	s3,44(sp)
    35b8:	04010113          	addi	sp,sp,64
    35bc:	00008067          	ret
    35c0:	00040513          	mv	a0,s0
    35c4:	fffff097          	auipc	ra,0xfffff
    35c8:	514080e7          	jalr	1300(ra) # 2ad8 <_check_file_open>
    35cc:	fc0512e3          	bnez	a0,3590 <_open_file+0x80>
    35d0:	01444783          	lbu	a5,20(s0)
    35d4:	08079c63          	bnez	a5,366c <_open_file+0x15c>
    35d8:	0000b7b7          	lui	a5,0xb
    35dc:	6ec7a783          	lw	a5,1772(a5) # b6ec <_fs+0x8>
    35e0:	00f42023          	sw	a5,0(s0)
    35e4:	00042583          	lw	a1,0(s0)
    35e8:	00048613          	mv	a2,s1
    35ec:	0000b4b7          	lui	s1,0xb
    35f0:	00010693          	mv	a3,sp
    35f4:	6e448513          	addi	a0,s1,1764 # b6e4 <_fs>
    35f8:	00000097          	auipc	ra,0x0
    35fc:	b70080e7          	jalr	-1168(ra) # 3168 <fatfs_get_file_entry>
    3600:	f80508e3          	beqz	a0,3590 <_open_file+0x80>
    3604:	00b14783          	lbu	a5,11(sp)
    3608:	0207f793          	andi	a5,a5,32
    360c:	f80782e3          	beqz	a5,3590 <_open_file+0x80>
    3610:	00b00613          	li	a2,11
    3614:	00010593          	mv	a1,sp
    3618:	21c40513          	addi	a0,s0,540
    361c:	ffffe097          	auipc	ra,0xffffe
    3620:	de4080e7          	jalr	-540(ra) # 1400 <memcpy>
    3624:	01c12783          	lw	a5,28(sp)
    3628:	01a15703          	lhu	a4,26(sp)
    362c:	00042423          	sw	zero,8(s0)
    3630:	00f42623          	sw	a5,12(s0)
    3634:	01415783          	lhu	a5,20(sp)
    3638:	42042a23          	sw	zero,1076(s0)
    363c:	00042823          	sw	zero,16(s0)
    3640:	01079793          	slli	a5,a5,0x10
    3644:	00e787b3          	add	a5,a5,a4
    3648:	00f42223          	sw	a5,4(s0)
    364c:	fff00793          	li	a5,-1
    3650:	42f42823          	sw	a5,1072(s0)
    3654:	22f42423          	sw	a5,552(s0)
    3658:	22f42623          	sw	a5,556(s0)
    365c:	6e448513          	addi	a0,s1,1764
    3660:	00000097          	auipc	ra,0x0
    3664:	858080e7          	jalr	-1960(ra) # 2eb8 <fatfs_fat_purge>
    3668:	f39ff06f          	j	35a0 <_open_file+0x90>
    366c:	00040593          	mv	a1,s0
    3670:	00090513          	mv	a0,s2
    3674:	00000097          	auipc	ra,0x0
    3678:	cf0080e7          	jalr	-784(ra) # 3364 <_open_directory>
    367c:	f60514e3          	bnez	a0,35e4 <_open_file+0xd4>
    3680:	f11ff06f          	j	3590 <_open_file+0x80>

00003684 <fatfs_sfn_exists>:
    3684:	fe010113          	addi	sp,sp,-32
    3688:	01212823          	sw	s2,16(sp)
    368c:	01312623          	sw	s3,12(sp)
    3690:	01412423          	sw	s4,8(sp)
    3694:	01512223          	sw	s5,4(sp)
    3698:	01612023          	sw	s6,0(sp)
    369c:	00112e23          	sw	ra,28(sp)
    36a0:	00812c23          	sw	s0,24(sp)
    36a4:	00912a23          	sw	s1,20(sp)
    36a8:	00050993          	mv	s3,a0
    36ac:	00058a93          	mv	s5,a1
    36b0:	00060b13          	mv	s6,a2
    36b4:	00000913          	li	s2,0
    36b8:	24450a13          	addi	s4,a0,580
    36bc:	00000693          	li	a3,0
    36c0:	00090613          	mv	a2,s2
    36c4:	000a8593          	mv	a1,s5
    36c8:	00098513          	mv	a0,s3
    36cc:	00000097          	auipc	ra,0x0
    36d0:	94c080e7          	jalr	-1716(ra) # 3018 <fatfs_sector_reader>
    36d4:	00050413          	mv	s0,a0
    36d8:	06050263          	beqz	a0,373c <fatfs_sfn_exists+0xb8>
    36dc:	00190913          	addi	s2,s2,1
    36e0:	04498493          	addi	s1,s3,68
    36e4:	00048513          	mv	a0,s1
    36e8:	fffff097          	auipc	ra,0xfffff
    36ec:	a58080e7          	jalr	-1448(ra) # 2140 <fatfs_entry_lfn_text>
    36f0:	00050863          	beqz	a0,3700 <fatfs_sfn_exists+0x7c>
    36f4:	02048493          	addi	s1,s1,32
    36f8:	ff4496e3          	bne	s1,s4,36e4 <fatfs_sfn_exists+0x60>
    36fc:	fc1ff06f          	j	36bc <fatfs_sfn_exists+0x38>
    3700:	00048513          	mv	a0,s1
    3704:	fffff097          	auipc	ra,0xfffff
    3708:	a50080e7          	jalr	-1456(ra) # 2154 <fatfs_entry_lfn_invalid>
    370c:	fe0514e3          	bnez	a0,36f4 <fatfs_sfn_exists+0x70>
    3710:	00048513          	mv	a0,s1
    3714:	fffff097          	auipc	ra,0xfffff
    3718:	ac4080e7          	jalr	-1340(ra) # 21d8 <fatfs_entry_sfn_only>
    371c:	00050413          	mv	s0,a0
    3720:	fc050ae3          	beqz	a0,36f4 <fatfs_sfn_exists+0x70>
    3724:	00b00613          	li	a2,11
    3728:	000b0593          	mv	a1,s6
    372c:	00048513          	mv	a0,s1
    3730:	ffffe097          	auipc	ra,0xffffe
    3734:	d14080e7          	jalr	-748(ra) # 1444 <strncmp>
    3738:	fa051ee3          	bnez	a0,36f4 <fatfs_sfn_exists+0x70>
    373c:	01c12083          	lw	ra,28(sp)
    3740:	00040513          	mv	a0,s0
    3744:	01812403          	lw	s0,24(sp)
    3748:	01412483          	lw	s1,20(sp)
    374c:	01012903          	lw	s2,16(sp)
    3750:	00c12983          	lw	s3,12(sp)
    3754:	00812a03          	lw	s4,8(sp)
    3758:	00412a83          	lw	s5,4(sp)
    375c:	00012b03          	lw	s6,0(sp)
    3760:	02010113          	addi	sp,sp,32
    3764:	00008067          	ret

00003768 <fatfs_update_file_length>:
    3768:	03852783          	lw	a5,56(a0)
    376c:	14078e63          	beqz	a5,38c8 <fatfs_update_file_length+0x160>
    3770:	fd010113          	addi	sp,sp,-48
    3774:	02912223          	sw	s1,36(sp)
    3778:	03212023          	sw	s2,32(sp)
    377c:	01312e23          	sw	s3,28(sp)
    3780:	01412c23          	sw	s4,24(sp)
    3784:	01612823          	sw	s6,16(sp)
    3788:	01712623          	sw	s7,12(sp)
    378c:	02112623          	sw	ra,44(sp)
    3790:	02812423          	sw	s0,40(sp)
    3794:	01512a23          	sw	s5,20(sp)
    3798:	00068913          	mv	s2,a3
    379c:	00060b93          	mv	s7,a2
    37a0:	00058b13          	mv	s6,a1
    37a4:	00050493          	mv	s1,a0
    37a8:	00000993          	li	s3,0
    37ac:	24450a13          	addi	s4,a0,580
    37b0:	00000693          	li	a3,0
    37b4:	00098613          	mv	a2,s3
    37b8:	000b0593          	mv	a1,s6
    37bc:	00048513          	mv	a0,s1
    37c0:	00000097          	auipc	ra,0x0
    37c4:	858080e7          	jalr	-1960(ra) # 3018 <fatfs_sector_reader>
    37c8:	0c050863          	beqz	a0,3898 <fatfs_update_file_length+0x130>
    37cc:	04448413          	addi	s0,s1,68
    37d0:	00198993          	addi	s3,s3,1
    37d4:	00040a93          	mv	s5,s0
    37d8:	00040513          	mv	a0,s0
    37dc:	fffff097          	auipc	ra,0xfffff
    37e0:	964080e7          	jalr	-1692(ra) # 2140 <fatfs_entry_lfn_text>
    37e4:	0a051463          	bnez	a0,388c <fatfs_update_file_length+0x124>
    37e8:	00040513          	mv	a0,s0
    37ec:	fffff097          	auipc	ra,0xfffff
    37f0:	968080e7          	jalr	-1688(ra) # 2154 <fatfs_entry_lfn_invalid>
    37f4:	08051c63          	bnez	a0,388c <fatfs_update_file_length+0x124>
    37f8:	00040513          	mv	a0,s0
    37fc:	fffff097          	auipc	ra,0xfffff
    3800:	9dc080e7          	jalr	-1572(ra) # 21d8 <fatfs_entry_sfn_only>
    3804:	08050463          	beqz	a0,388c <fatfs_update_file_length+0x124>
    3808:	00b00613          	li	a2,11
    380c:	000b8593          	mv	a1,s7
    3810:	00040513          	mv	a0,s0
    3814:	ffffe097          	auipc	ra,0xffffe
    3818:	c30080e7          	jalr	-976(ra) # 1444 <strncmp>
    381c:	06051863          	bnez	a0,388c <fatfs_update_file_length+0x124>
    3820:	00895793          	srli	a5,s2,0x8
    3824:	01240e23          	sb	s2,28(s0)
    3828:	00f40ea3          	sb	a5,29(s0)
    382c:	01095793          	srli	a5,s2,0x10
    3830:	01895913          	srli	s2,s2,0x18
    3834:	00f40f23          	sb	a5,30(s0)
    3838:	01240fa3          	sb	s2,31(s0)
    383c:	00040593          	mv	a1,s0
    3840:	02000613          	li	a2,32
    3844:	00040513          	mv	a0,s0
    3848:	ffffe097          	auipc	ra,0xffffe
    384c:	bb8080e7          	jalr	-1096(ra) # 1400 <memcpy>
    3850:	02812403          	lw	s0,40(sp)
    3854:	0384a783          	lw	a5,56(s1)
    3858:	2444a503          	lw	a0,580(s1)
    385c:	02c12083          	lw	ra,44(sp)
    3860:	02412483          	lw	s1,36(sp)
    3864:	02012903          	lw	s2,32(sp)
    3868:	01c12983          	lw	s3,28(sp)
    386c:	01812a03          	lw	s4,24(sp)
    3870:	01012b03          	lw	s6,16(sp)
    3874:	00c12b83          	lw	s7,12(sp)
    3878:	000a8593          	mv	a1,s5
    387c:	01412a83          	lw	s5,20(sp)
    3880:	00100613          	li	a2,1
    3884:	03010113          	addi	sp,sp,48
    3888:	00078067          	jr	a5
    388c:	02040413          	addi	s0,s0,32
    3890:	f54414e3          	bne	s0,s4,37d8 <fatfs_update_file_length+0x70>
    3894:	f1dff06f          	j	37b0 <fatfs_update_file_length+0x48>
    3898:	02c12083          	lw	ra,44(sp)
    389c:	02812403          	lw	s0,40(sp)
    38a0:	02412483          	lw	s1,36(sp)
    38a4:	02012903          	lw	s2,32(sp)
    38a8:	01c12983          	lw	s3,28(sp)
    38ac:	01812a03          	lw	s4,24(sp)
    38b0:	01412a83          	lw	s5,20(sp)
    38b4:	01012b03          	lw	s6,16(sp)
    38b8:	00c12b83          	lw	s7,12(sp)
    38bc:	00000513          	li	a0,0
    38c0:	03010113          	addi	sp,sp,48
    38c4:	00008067          	ret
    38c8:	00000513          	li	a0,0
    38cc:	00008067          	ret

000038d0 <fatfs_list_directory_next>:
    38d0:	ec010113          	addi	sp,sp,-320
    38d4:	13212823          	sw	s2,304(sp)
    38d8:	13312623          	sw	s3,300(sp)
    38dc:	13412423          	sw	s4,296(sp)
    38e0:	13512223          	sw	s5,292(sp)
    38e4:	13612023          	sw	s6,288(sp)
    38e8:	12112e23          	sw	ra,316(sp)
    38ec:	12812c23          	sw	s0,312(sp)
    38f0:	12912a23          	sw	s1,308(sp)
    38f4:	00050a13          	mv	s4,a0
    38f8:	00058913          	mv	s2,a1
    38fc:	00060993          	mv	s3,a2
    3900:	10010ea3          	sb	zero,285(sp)
    3904:	04450a93          	addi	s5,a0,68
    3908:	00f00b13          	li	s6,15
    390c:	00092603          	lw	a2,0(s2)
    3910:	00492583          	lw	a1,4(s2)
    3914:	00000693          	li	a3,0
    3918:	000a0513          	mv	a0,s4
    391c:	fffff097          	auipc	ra,0xfffff
    3920:	6fc080e7          	jalr	1788(ra) # 3018 <fatfs_sector_reader>
    3924:	10050c63          	beqz	a0,3a3c <fatfs_list_directory_next+0x16c>
    3928:	00894483          	lbu	s1,8(s2)
    392c:	00549413          	slli	s0,s1,0x5
    3930:	008a8433          	add	s0,s5,s0
    3934:	009b7c63          	bgeu	s6,s1,394c <fatfs_list_directory_next+0x7c>
    3938:	00092783          	lw	a5,0(s2)
    393c:	00090423          	sb	zero,8(s2)
    3940:	00178793          	addi	a5,a5,1
    3944:	00f92023          	sw	a5,0(s2)
    3948:	fc5ff06f          	j	390c <fatfs_list_directory_next+0x3c>
    394c:	00040513          	mv	a0,s0
    3950:	ffffe097          	auipc	ra,0xffffe
    3954:	7f0080e7          	jalr	2032(ra) # 2140 <fatfs_entry_lfn_text>
    3958:	02050263          	beqz	a0,397c <fatfs_list_directory_next+0xac>
    395c:	00040593          	mv	a1,s0
    3960:	01810513          	addi	a0,sp,24
    3964:	ffffe097          	auipc	ra,0xffffe
    3968:	6d4080e7          	jalr	1748(ra) # 2038 <fatfs_lfn_cache_entry>
    396c:	00148493          	addi	s1,s1,1
    3970:	0ff4f493          	zext.b	s1,s1
    3974:	02040413          	addi	s0,s0,32
    3978:	fbdff06f          	j	3934 <fatfs_list_directory_next+0x64>
    397c:	00040513          	mv	a0,s0
    3980:	ffffe097          	auipc	ra,0xffffe
    3984:	7d4080e7          	jalr	2004(ra) # 2154 <fatfs_entry_lfn_invalid>
    3988:	00050663          	beqz	a0,3994 <fatfs_list_directory_next+0xc4>
    398c:	10010ea3          	sb	zero,285(sp)
    3990:	fddff06f          	j	396c <fatfs_list_directory_next+0x9c>
    3994:	00040593          	mv	a1,s0
    3998:	01810513          	addi	a0,sp,24
    399c:	ffffe097          	auipc	ra,0xffffe
    39a0:	7ec080e7          	jalr	2028(ra) # 2188 <fatfs_entry_lfn_exists>
    39a4:	0c050063          	beqz	a0,3a64 <fatfs_list_directory_next+0x194>
    39a8:	01810513          	addi	a0,sp,24
    39ac:	ffffe097          	auipc	ra,0xffffe
    39b0:	758080e7          	jalr	1880(ra) # 2104 <fatfs_lfn_cache_get>
    39b4:	00050593          	mv	a1,a0
    39b8:	10300613          	li	a2,259
    39bc:	00098513          	mv	a0,s3
    39c0:	ffffe097          	auipc	ra,0xffffe
    39c4:	ac4080e7          	jalr	-1340(ra) # 1484 <strncpy>
    39c8:	00040513          	mv	a0,s0
    39cc:	fffff097          	auipc	ra,0xfffff
    39d0:	84c080e7          	jalr	-1972(ra) # 2218 <fatfs_entry_is_dir>
    39d4:	10a98223          	sb	a0,260(s3)
    39d8:	01d44783          	lbu	a5,29(s0)
    39dc:	01c44703          	lbu	a4,28(s0)
    39e0:	00148493          	addi	s1,s1,1
    39e4:	00879793          	slli	a5,a5,0x8
    39e8:	00e7e7b3          	or	a5,a5,a4
    39ec:	01e44703          	lbu	a4,30(s0)
    39f0:	00100513          	li	a0,1
    39f4:	01071713          	slli	a4,a4,0x10
    39f8:	00f76733          	or	a4,a4,a5
    39fc:	01f44783          	lbu	a5,31(s0)
    3a00:	01879793          	slli	a5,a5,0x18
    3a04:	00e7e7b3          	or	a5,a5,a4
    3a08:	10f9a623          	sw	a5,268(s3)
    3a0c:	01544783          	lbu	a5,21(s0)
    3a10:	01444703          	lbu	a4,20(s0)
    3a14:	01a44683          	lbu	a3,26(s0)
    3a18:	00879793          	slli	a5,a5,0x8
    3a1c:	00e7e7b3          	or	a5,a5,a4
    3a20:	01b44703          	lbu	a4,27(s0)
    3a24:	01079793          	slli	a5,a5,0x10
    3a28:	00871713          	slli	a4,a4,0x8
    3a2c:	00d76733          	or	a4,a4,a3
    3a30:	00e7e7b3          	or	a5,a5,a4
    3a34:	10f9a423          	sw	a5,264(s3)
    3a38:	00990423          	sb	s1,8(s2)
    3a3c:	13c12083          	lw	ra,316(sp)
    3a40:	13812403          	lw	s0,312(sp)
    3a44:	13412483          	lw	s1,308(sp)
    3a48:	13012903          	lw	s2,304(sp)
    3a4c:	12c12983          	lw	s3,300(sp)
    3a50:	12812a03          	lw	s4,296(sp)
    3a54:	12412a83          	lw	s5,292(sp)
    3a58:	12012b03          	lw	s6,288(sp)
    3a5c:	14010113          	addi	sp,sp,320
    3a60:	00008067          	ret
    3a64:	00040513          	mv	a0,s0
    3a68:	ffffe097          	auipc	ra,0xffffe
    3a6c:	770080e7          	jalr	1904(ra) # 21d8 <fatfs_entry_sfn_only>
    3a70:	ee050ee3          	beqz	a0,396c <fatfs_list_directory_next+0x9c>
    3a74:	00810a13          	addi	s4,sp,8
    3a78:	00d00613          	li	a2,13
    3a7c:	00000593          	li	a1,0
    3a80:	000a0513          	mv	a0,s4
    3a84:	10010ea3          	sb	zero,285(sp)
    3a88:	ffffe097          	auipc	ra,0xffffe
    3a8c:	95c080e7          	jalr	-1700(ra) # 13e4 <memset>
    3a90:	00000793          	li	a5,0
    3a94:	00800713          	li	a4,8
    3a98:	00f40633          	add	a2,s0,a5
    3a9c:	00064603          	lbu	a2,0(a2)
    3aa0:	00fa06b3          	add	a3,s4,a5
    3aa4:	00178793          	addi	a5,a5,1
    3aa8:	00c68023          	sb	a2,0(a3)
    3aac:	fee796e3          	bne	a5,a4,3a98 <fatfs_list_directory_next+0x1c8>
    3ab0:	00844783          	lbu	a5,8(s0)
    3ab4:	00944703          	lbu	a4,9(s0)
    3ab8:	00a44683          	lbu	a3,10(s0)
    3abc:	00f108a3          	sb	a5,17(sp)
    3ac0:	00e10923          	sb	a4,18(sp)
    3ac4:	fe078793          	addi	a5,a5,-32
    3ac8:	fe070713          	addi	a4,a4,-32
    3acc:	00f037b3          	snez	a5,a5
    3ad0:	00e03733          	snez	a4,a4
    3ad4:	00d109a3          	sb	a3,19(sp)
    3ad8:	00e7e7b3          	or	a5,a5,a4
    3adc:	00079863          	bnez	a5,3aec <fatfs_list_directory_next+0x21c>
    3ae0:	fe068693          	addi	a3,a3,-32
    3ae4:	02000793          	li	a5,32
    3ae8:	00068a63          	beqz	a3,3afc <fatfs_list_directory_next+0x22c>
    3aec:	00814703          	lbu	a4,8(sp)
    3af0:	02e00793          	li	a5,46
    3af4:	00f71463          	bne	a4,a5,3afc <fatfs_list_directory_next+0x22c>
    3af8:	02000793          	li	a5,32
    3afc:	000a0593          	mv	a1,s4
    3b00:	00098513          	mv	a0,s3
    3b04:	00f10823          	sb	a5,16(sp)
    3b08:	fffff097          	auipc	ra,0xfffff
    3b0c:	054080e7          	jalr	84(ra) # 2b5c <fatfs_get_sfn_display_name>
    3b10:	eb9ff06f          	j	39c8 <fatfs_list_directory_next+0xf8>

00003b14 <fl_readdir>:
    3b14:	000057b7          	lui	a5,0x5
    3b18:	4607a783          	lw	a5,1120(a5) # 5460 <_filelib_init>
    3b1c:	fd010113          	addi	sp,sp,-48
    3b20:	03212023          	sw	s2,32(sp)
    3b24:	01312e23          	sw	s3,28(sp)
    3b28:	02112623          	sw	ra,44(sp)
    3b2c:	02812423          	sw	s0,40(sp)
    3b30:	02912223          	sw	s1,36(sp)
    3b34:	00050913          	mv	s2,a0
    3b38:	00058993          	mv	s3,a1
    3b3c:	00079663          	bnez	a5,3b48 <fl_readdir+0x34>
    3b40:	ffffe097          	auipc	ra,0xffffe
    3b44:	488080e7          	jalr	1160(ra) # 1fc8 <fl_init>
    3b48:	0000b4b7          	lui	s1,0xb
    3b4c:	6e448413          	addi	s0,s1,1764 # b6e4 <_fs>
    3b50:	03c42783          	lw	a5,60(s0)
    3b54:	00078463          	beqz	a5,3b5c <fl_readdir+0x48>
    3b58:	000780e7          	jalr	a5
    3b5c:	00098613          	mv	a2,s3
    3b60:	00090593          	mv	a1,s2
    3b64:	6e448513          	addi	a0,s1,1764
    3b68:	00000097          	auipc	ra,0x0
    3b6c:	d68080e7          	jalr	-664(ra) # 38d0 <fatfs_list_directory_next>
    3b70:	04042783          	lw	a5,64(s0)
    3b74:	00078863          	beqz	a5,3b84 <fl_readdir+0x70>
    3b78:	00a12623          	sw	a0,12(sp)
    3b7c:	000780e7          	jalr	a5
    3b80:	00c12503          	lw	a0,12(sp)
    3b84:	02c12083          	lw	ra,44(sp)
    3b88:	02812403          	lw	s0,40(sp)
    3b8c:	00154513          	xori	a0,a0,1
    3b90:	02412483          	lw	s1,36(sp)
    3b94:	02012903          	lw	s2,32(sp)
    3b98:	01c12983          	lw	s3,28(sp)
    3b9c:	40a00533          	neg	a0,a0
    3ba0:	03010113          	addi	sp,sp,48
    3ba4:	00008067          	ret

00003ba8 <_read_sectors>:
    3ba8:	fd010113          	addi	sp,sp,-48
    3bac:	01512a23          	sw	s5,20(sp)
    3bb0:	0000bab7          	lui	s5,0xb
    3bb4:	01312e23          	sw	s3,28(sp)
    3bb8:	6e4ac983          	lbu	s3,1764(s5) # b6e4 <_fs>
    3bbc:	01612823          	sw	s6,16(sp)
    3bc0:	00058b13          	mv	s6,a1
    3bc4:	02912223          	sw	s1,36(sp)
    3bc8:	00098593          	mv	a1,s3
    3bcc:	00050493          	mv	s1,a0
    3bd0:	000b0513          	mv	a0,s6
    3bd4:	02112623          	sw	ra,44(sp)
    3bd8:	02812423          	sw	s0,40(sp)
    3bdc:	01412c23          	sw	s4,24(sp)
    3be0:	00068413          	mv	s0,a3
    3be4:	01712623          	sw	s7,12(sp)
    3be8:	01812423          	sw	s8,8(sp)
    3bec:	03212023          	sw	s2,32(sp)
    3bf0:	00060c13          	mv	s8,a2
    3bf4:	ffffd097          	auipc	ra,0xffffd
    3bf8:	744080e7          	jalr	1860(ra) # 1338 <__udivsi3>
    3bfc:	00050a13          	mv	s4,a0
    3c00:	00098593          	mv	a1,s3
    3c04:	000b0513          	mv	a0,s6
    3c08:	ffffd097          	auipc	ra,0xffffd
    3c0c:	778080e7          	jalr	1912(ra) # 1380 <__umodsi3>
    3c10:	00a407b3          	add	a5,s0,a0
    3c14:	00050b93          	mv	s7,a0
    3c18:	00f9fe63          	bgeu	s3,a5,3c34 <_read_sectors+0x8c>
    3c1c:	000a0593          	mv	a1,s4
    3c20:	00098513          	mv	a0,s3
    3c24:	ffffe097          	auipc	ra,0xffffe
    3c28:	f10080e7          	jalr	-240(ra) # 1b34 <__mulsi3>
    3c2c:	416987b3          	sub	a5,s3,s6
    3c30:	00f50433          	add	s0,a0,a5
    3c34:	2284a903          	lw	s2,552(s1)
    3c38:	07491863          	bne	s2,s4,3ca8 <_read_sectors+0x100>
    3c3c:	22c4a583          	lw	a1,556(s1)
    3c40:	fff00793          	li	a5,-1
    3c44:	02f58663          	beq	a1,a5,3c70 <_read_sectors+0xc8>
    3c48:	6e4a8513          	addi	a0,s5,1764
    3c4c:	ffffe097          	auipc	ra,0xffffe
    3c50:	24c080e7          	jalr	588(ra) # 1e98 <fatfs_lba_of_cluster>
    3c54:	017505b3          	add	a1,a0,s7
    3c58:	00040693          	mv	a3,s0
    3c5c:	000c0613          	mv	a2,s8
    3c60:	6e4a8513          	addi	a0,s5,1764
    3c64:	ffffe097          	auipc	ra,0xffffe
    3c68:	280080e7          	jalr	640(ra) # 1ee4 <fatfs_sector_read>
    3c6c:	00051463          	bnez	a0,3c74 <_read_sectors+0xcc>
    3c70:	00000413          	li	s0,0
    3c74:	02c12083          	lw	ra,44(sp)
    3c78:	00040513          	mv	a0,s0
    3c7c:	02812403          	lw	s0,40(sp)
    3c80:	02412483          	lw	s1,36(sp)
    3c84:	02012903          	lw	s2,32(sp)
    3c88:	01c12983          	lw	s3,28(sp)
    3c8c:	01812a03          	lw	s4,24(sp)
    3c90:	01412a83          	lw	s5,20(sp)
    3c94:	01012b03          	lw	s6,16(sp)
    3c98:	00c12b83          	lw	s7,12(sp)
    3c9c:	00812c03          	lw	s8,8(sp)
    3ca0:	03010113          	addi	sp,sp,48
    3ca4:	00008067          	ret
    3ca8:	033b6463          	bltu	s6,s3,3cd0 <_read_sectors+0x128>
    3cac:	00190793          	addi	a5,s2,1
    3cb0:	03479063          	bne	a5,s4,3cd0 <_read_sectors+0x128>
    3cb4:	22c4a583          	lw	a1,556(s1)
    3cb8:	03496263          	bltu	s2,s4,3cdc <_read_sectors+0x134>
    3cbc:	fff00793          	li	a5,-1
    3cc0:	faf588e3          	beq	a1,a5,3c70 <_read_sectors+0xc8>
    3cc4:	22b4a623          	sw	a1,556(s1)
    3cc8:	2344a423          	sw	s4,552(s1)
    3ccc:	f7dff06f          	j	3c48 <_read_sectors+0xa0>
    3cd0:	0044a583          	lw	a1,4(s1)
    3cd4:	00000913          	li	s2,0
    3cd8:	fe1ff06f          	j	3cb8 <_read_sectors+0x110>
    3cdc:	6e4a8513          	addi	a0,s5,1764
    3ce0:	fffff097          	auipc	ra,0xfffff
    3ce4:	230080e7          	jalr	560(ra) # 2f10 <fatfs_find_next_cluster>
    3ce8:	00050593          	mv	a1,a0
    3cec:	00190913          	addi	s2,s2,1
    3cf0:	fc9ff06f          	j	3cb8 <_read_sectors+0x110>

00003cf4 <fatfs_set_fs_info_next_free_cluster>:
    3cf4:	03052783          	lw	a5,48(a0)
    3cf8:	0a078463          	beqz	a5,3da0 <fatfs_set_fs_info_next_free_cluster+0xac>
    3cfc:	fe010113          	addi	sp,sp,-32
    3d00:	01c52783          	lw	a5,28(a0)
    3d04:	00912a23          	sw	s1,20(sp)
    3d08:	00058493          	mv	s1,a1
    3d0c:	01855583          	lhu	a1,24(a0)
    3d10:	00812c23          	sw	s0,24(sp)
    3d14:	00112e23          	sw	ra,28(sp)
    3d18:	00f585b3          	add	a1,a1,a5
    3d1c:	00050413          	mv	s0,a0
    3d20:	ffffe097          	auipc	ra,0xffffe
    3d24:	fcc080e7          	jalr	-52(ra) # 1cec <fatfs_fat_read_sector>
    3d28:	00050593          	mv	a1,a0
    3d2c:	06050063          	beqz	a0,3d8c <fatfs_set_fs_info_next_free_cluster+0x98>
    3d30:	20852783          	lw	a5,520(a0)
    3d34:	0084d713          	srli	a4,s1,0x8
    3d38:	00100613          	li	a2,1
    3d3c:	1e978623          	sb	s1,492(a5)
    3d40:	20852783          	lw	a5,520(a0)
    3d44:	1ee786a3          	sb	a4,493(a5)
    3d48:	20852783          	lw	a5,520(a0)
    3d4c:	0104d713          	srli	a4,s1,0x10
    3d50:	1ee78723          	sb	a4,494(a5)
    3d54:	20852783          	lw	a5,520(a0)
    3d58:	0184d713          	srli	a4,s1,0x18
    3d5c:	1ee787a3          	sb	a4,495(a5)
    3d60:	03842783          	lw	a5,56(s0)
    3d64:	20c52223          	sw	a2,516(a0)
    3d68:	02942223          	sw	s1,36(s0)
    3d6c:	00078a63          	beqz	a5,3d80 <fatfs_set_fs_info_next_free_cluster+0x8c>
    3d70:	20052503          	lw	a0,512(a0)
    3d74:	00b12623          	sw	a1,12(sp)
    3d78:	000780e7          	jalr	a5
    3d7c:	00c12583          	lw	a1,12(sp)
    3d80:	fff00793          	li	a5,-1
    3d84:	20f5a023          	sw	a5,512(a1)
    3d88:	2005a223          	sw	zero,516(a1)
    3d8c:	01c12083          	lw	ra,28(sp)
    3d90:	01812403          	lw	s0,24(sp)
    3d94:	01412483          	lw	s1,20(sp)
    3d98:	02010113          	addi	sp,sp,32
    3d9c:	00008067          	ret
    3da0:	00008067          	ret

00003da4 <fatfs_find_blank_cluster>:
    3da4:	fd010113          	addi	sp,sp,-48
    3da8:	01312e23          	sw	s3,28(sp)
    3dac:	100009b7          	lui	s3,0x10000
    3db0:	02912223          	sw	s1,36(sp)
    3db4:	03212023          	sw	s2,32(sp)
    3db8:	02112623          	sw	ra,44(sp)
    3dbc:	02812423          	sw	s0,40(sp)
    3dc0:	00050913          	mv	s2,a0
    3dc4:	00058493          	mv	s1,a1
    3dc8:	fff98993          	addi	s3,s3,-1 # fffffff <__stacktop+0xffeffff>
    3dcc:	03092783          	lw	a5,48(s2)
    3dd0:	0074d413          	srli	s0,s1,0x7
    3dd4:	00079463          	bnez	a5,3ddc <fatfs_find_blank_cluster+0x38>
    3dd8:	0084d413          	srli	s0,s1,0x8
    3ddc:	02092783          	lw	a5,32(s2)
    3de0:	0cf47863          	bgeu	s0,a5,3eb0 <fatfs_find_blank_cluster+0x10c>
    3de4:	01492583          	lw	a1,20(s2)
    3de8:	00090513          	mv	a0,s2
    3dec:	00c12623          	sw	a2,12(sp)
    3df0:	00b405b3          	add	a1,s0,a1
    3df4:	ffffe097          	auipc	ra,0xffffe
    3df8:	ef8080e7          	jalr	-264(ra) # 1cec <fatfs_fat_read_sector>
    3dfc:	0a050a63          	beqz	a0,3eb0 <fatfs_find_blank_cluster+0x10c>
    3e00:	03092783          	lw	a5,48(s2)
    3e04:	20852703          	lw	a4,520(a0)
    3e08:	00c12603          	lw	a2,12(sp)
    3e0c:	04079a63          	bnez	a5,3e60 <fatfs_find_blank_cluster+0xbc>
    3e10:	00841413          	slli	s0,s0,0x8
    3e14:	40848433          	sub	s0,s1,s0
    3e18:	00141413          	slli	s0,s0,0x1
    3e1c:	01041413          	slli	s0,s0,0x10
    3e20:	01045413          	srli	s0,s0,0x10
    3e24:	00870733          	add	a4,a4,s0
    3e28:	00174783          	lbu	a5,1(a4)
    3e2c:	00074703          	lbu	a4,0(a4)
    3e30:	00879793          	slli	a5,a5,0x8
    3e34:	00e787b3          	add	a5,a5,a4
    3e38:	06079863          	bnez	a5,3ea8 <fatfs_find_blank_cluster+0x104>
    3e3c:	00962023          	sw	s1,0(a2)
    3e40:	00100513          	li	a0,1
    3e44:	02c12083          	lw	ra,44(sp)
    3e48:	02812403          	lw	s0,40(sp)
    3e4c:	02412483          	lw	s1,36(sp)
    3e50:	02012903          	lw	s2,32(sp)
    3e54:	01c12983          	lw	s3,28(sp)
    3e58:	03010113          	addi	sp,sp,48
    3e5c:	00008067          	ret
    3e60:	00741413          	slli	s0,s0,0x7
    3e64:	40848433          	sub	s0,s1,s0
    3e68:	00241413          	slli	s0,s0,0x2
    3e6c:	01041413          	slli	s0,s0,0x10
    3e70:	01045413          	srli	s0,s0,0x10
    3e74:	00870733          	add	a4,a4,s0
    3e78:	00374783          	lbu	a5,3(a4)
    3e7c:	00274683          	lbu	a3,2(a4)
    3e80:	01879793          	slli	a5,a5,0x18
    3e84:	01069693          	slli	a3,a3,0x10
    3e88:	00d787b3          	add	a5,a5,a3
    3e8c:	00074683          	lbu	a3,0(a4)
    3e90:	00174703          	lbu	a4,1(a4)
    3e94:	00d787b3          	add	a5,a5,a3
    3e98:	00871713          	slli	a4,a4,0x8
    3e9c:	00e787b3          	add	a5,a5,a4
    3ea0:	0137f7b3          	and	a5,a5,s3
    3ea4:	f95ff06f          	j	3e38 <fatfs_find_blank_cluster+0x94>
    3ea8:	00148493          	addi	s1,s1,1
    3eac:	f21ff06f          	j	3dcc <fatfs_find_blank_cluster+0x28>
    3eb0:	00000513          	li	a0,0
    3eb4:	f91ff06f          	j	3e44 <fatfs_find_blank_cluster+0xa0>

00003eb8 <fatfs_fat_set_cluster>:
    3eb8:	03052783          	lw	a5,48(a0)
    3ebc:	fe010113          	addi	sp,sp,-32
    3ec0:	00812c23          	sw	s0,24(sp)
    3ec4:	00912a23          	sw	s1,20(sp)
    3ec8:	01212823          	sw	s2,16(sp)
    3ecc:	00112e23          	sw	ra,28(sp)
    3ed0:	00050913          	mv	s2,a0
    3ed4:	00058413          	mv	s0,a1
    3ed8:	0085d493          	srli	s1,a1,0x8
    3edc:	00078463          	beqz	a5,3ee4 <fatfs_fat_set_cluster+0x2c>
    3ee0:	0075d493          	srli	s1,a1,0x7
    3ee4:	01492583          	lw	a1,20(s2)
    3ee8:	00090513          	mv	a0,s2
    3eec:	00c12623          	sw	a2,12(sp)
    3ef0:	00b485b3          	add	a1,s1,a1
    3ef4:	ffffe097          	auipc	ra,0xffffe
    3ef8:	df8080e7          	jalr	-520(ra) # 1cec <fatfs_fat_read_sector>
    3efc:	00050793          	mv	a5,a0
    3f00:	00000513          	li	a0,0
    3f04:	04078663          	beqz	a5,3f50 <fatfs_fat_set_cluster+0x98>
    3f08:	03092683          	lw	a3,48(s2)
    3f0c:	2087a703          	lw	a4,520(a5)
    3f10:	00c12603          	lw	a2,12(sp)
    3f14:	04069a63          	bnez	a3,3f68 <fatfs_fat_set_cluster+0xb0>
    3f18:	00849493          	slli	s1,s1,0x8
    3f1c:	40940433          	sub	s0,s0,s1
    3f20:	00141413          	slli	s0,s0,0x1
    3f24:	01041413          	slli	s0,s0,0x10
    3f28:	01045413          	srli	s0,s0,0x10
    3f2c:	00870733          	add	a4,a4,s0
    3f30:	00c70023          	sb	a2,0(a4)
    3f34:	2087a703          	lw	a4,520(a5)
    3f38:	00865613          	srli	a2,a2,0x8
    3f3c:	00870733          	add	a4,a4,s0
    3f40:	00c700a3          	sb	a2,1(a4)
    3f44:	00100713          	li	a4,1
    3f48:	20e7a223          	sw	a4,516(a5)
    3f4c:	00100513          	li	a0,1
    3f50:	01c12083          	lw	ra,28(sp)
    3f54:	01812403          	lw	s0,24(sp)
    3f58:	01412483          	lw	s1,20(sp)
    3f5c:	01012903          	lw	s2,16(sp)
    3f60:	02010113          	addi	sp,sp,32
    3f64:	00008067          	ret
    3f68:	00749493          	slli	s1,s1,0x7
    3f6c:	40940433          	sub	s0,s0,s1
    3f70:	00241413          	slli	s0,s0,0x2
    3f74:	01041413          	slli	s0,s0,0x10
    3f78:	01045413          	srli	s0,s0,0x10
    3f7c:	00870733          	add	a4,a4,s0
    3f80:	00c70023          	sb	a2,0(a4)
    3f84:	2087a703          	lw	a4,520(a5)
    3f88:	00865693          	srli	a3,a2,0x8
    3f8c:	00870733          	add	a4,a4,s0
    3f90:	00d700a3          	sb	a3,1(a4)
    3f94:	2087a703          	lw	a4,520(a5)
    3f98:	01065693          	srli	a3,a2,0x10
    3f9c:	01865613          	srli	a2,a2,0x18
    3fa0:	00870733          	add	a4,a4,s0
    3fa4:	00d70123          	sb	a3,2(a4)
    3fa8:	2087a703          	lw	a4,520(a5)
    3fac:	00870733          	add	a4,a4,s0
    3fb0:	00c701a3          	sb	a2,3(a4)
    3fb4:	f91ff06f          	j	3f44 <fatfs_fat_set_cluster+0x8c>

00003fb8 <fatfs_free_cluster_chain>:
    3fb8:	fe010113          	addi	sp,sp,-32
    3fbc:	00812c23          	sw	s0,24(sp)
    3fc0:	00912a23          	sw	s1,20(sp)
    3fc4:	00112e23          	sw	ra,28(sp)
    3fc8:	01212823          	sw	s2,16(sp)
    3fcc:	00050493          	mv	s1,a0
    3fd0:	ffd00413          	li	s0,-3
    3fd4:	fff58793          	addi	a5,a1,-1
    3fd8:	02f47063          	bgeu	s0,a5,3ff8 <fatfs_free_cluster_chain+0x40>
    3fdc:	01c12083          	lw	ra,28(sp)
    3fe0:	01812403          	lw	s0,24(sp)
    3fe4:	01412483          	lw	s1,20(sp)
    3fe8:	01012903          	lw	s2,16(sp)
    3fec:	00100513          	li	a0,1
    3ff0:	02010113          	addi	sp,sp,32
    3ff4:	00008067          	ret
    3ff8:	00048513          	mv	a0,s1
    3ffc:	00b12623          	sw	a1,12(sp)
    4000:	fffff097          	auipc	ra,0xfffff
    4004:	f10080e7          	jalr	-240(ra) # 2f10 <fatfs_find_next_cluster>
    4008:	00c12583          	lw	a1,12(sp)
    400c:	00050913          	mv	s2,a0
    4010:	00000613          	li	a2,0
    4014:	00048513          	mv	a0,s1
    4018:	00000097          	auipc	ra,0x0
    401c:	ea0080e7          	jalr	-352(ra) # 3eb8 <fatfs_fat_set_cluster>
    4020:	00090593          	mv	a1,s2
    4024:	fb1ff06f          	j	3fd4 <fatfs_free_cluster_chain+0x1c>

00004028 <fatfs_fat_add_cluster_to_chain>:
    4028:	fd010113          	addi	sp,sp,-48
    402c:	02912223          	sw	s1,36(sp)
    4030:	02112623          	sw	ra,44(sp)
    4034:	02812423          	sw	s0,40(sp)
    4038:	03212023          	sw	s2,32(sp)
    403c:	01312e23          	sw	s3,28(sp)
    4040:	fff00493          	li	s1,-1
    4044:	02959263          	bne	a1,s1,4068 <fatfs_fat_add_cluster_to_chain+0x40>
    4048:	00000513          	li	a0,0
    404c:	02c12083          	lw	ra,44(sp)
    4050:	02812403          	lw	s0,40(sp)
    4054:	02412483          	lw	s1,36(sp)
    4058:	02012903          	lw	s2,32(sp)
    405c:	01c12983          	lw	s3,28(sp)
    4060:	03010113          	addi	sp,sp,48
    4064:	00008067          	ret
    4068:	00050913          	mv	s2,a0
    406c:	00058413          	mv	s0,a1
    4070:	00060993          	mv	s3,a2
    4074:	00040593          	mv	a1,s0
    4078:	00090513          	mv	a0,s2
    407c:	00812623          	sw	s0,12(sp)
    4080:	fffff097          	auipc	ra,0xfffff
    4084:	e90080e7          	jalr	-368(ra) # 2f10 <fatfs_find_next_cluster>
    4088:	00050413          	mv	s0,a0
    408c:	fa050ee3          	beqz	a0,4048 <fatfs_fat_add_cluster_to_chain+0x20>
    4090:	00c12583          	lw	a1,12(sp)
    4094:	fe9510e3          	bne	a0,s1,4074 <fatfs_fat_add_cluster_to_chain+0x4c>
    4098:	00098613          	mv	a2,s3
    409c:	00090513          	mv	a0,s2
    40a0:	00000097          	auipc	ra,0x0
    40a4:	e18080e7          	jalr	-488(ra) # 3eb8 <fatfs_fat_set_cluster>
    40a8:	00040613          	mv	a2,s0
    40ac:	00098593          	mv	a1,s3
    40b0:	00090513          	mv	a0,s2
    40b4:	00000097          	auipc	ra,0x0
    40b8:	e04080e7          	jalr	-508(ra) # 3eb8 <fatfs_fat_set_cluster>
    40bc:	00100513          	li	a0,1
    40c0:	f8dff06f          	j	404c <fatfs_fat_add_cluster_to_chain+0x24>

000040c4 <fatfs_add_free_space>:
    40c4:	02452783          	lw	a5,36(a0)
    40c8:	fd010113          	addi	sp,sp,-48
    40cc:	02812423          	sw	s0,40(sp)
    40d0:	01312e23          	sw	s3,28(sp)
    40d4:	01412c23          	sw	s4,24(sp)
    40d8:	0005a983          	lw	s3,0(a1)
    40dc:	01512a23          	sw	s5,20(sp)
    40e0:	00058a13          	mv	s4,a1
    40e4:	02112623          	sw	ra,44(sp)
    40e8:	02912223          	sw	s1,36(sp)
    40ec:	03212023          	sw	s2,32(sp)
    40f0:	fff00593          	li	a1,-1
    40f4:	00050413          	mv	s0,a0
    40f8:	00060a93          	mv	s5,a2
    40fc:	00b78663          	beq	a5,a1,4108 <fatfs_add_free_space+0x44>
    4100:	00000097          	auipc	ra,0x0
    4104:	bf4080e7          	jalr	-1036(ra) # 3cf4 <fatfs_set_fs_info_next_free_cluster>
    4108:	00000493          	li	s1,0
    410c:	03549663          	bne	s1,s5,4138 <fatfs_add_free_space+0x74>
    4110:	00100513          	li	a0,1
    4114:	02c12083          	lw	ra,44(sp)
    4118:	02812403          	lw	s0,40(sp)
    411c:	02412483          	lw	s1,36(sp)
    4120:	02012903          	lw	s2,32(sp)
    4124:	01c12983          	lw	s3,28(sp)
    4128:	01812a03          	lw	s4,24(sp)
    412c:	01412a83          	lw	s5,20(sp)
    4130:	03010113          	addi	sp,sp,48
    4134:	00008067          	ret
    4138:	00842583          	lw	a1,8(s0)
    413c:	00c10613          	addi	a2,sp,12
    4140:	00040513          	mv	a0,s0
    4144:	00000097          	auipc	ra,0x0
    4148:	c60080e7          	jalr	-928(ra) # 3da4 <fatfs_find_blank_cluster>
    414c:	fc0504e3          	beqz	a0,4114 <fatfs_add_free_space+0x50>
    4150:	00c12903          	lw	s2,12(sp)
    4154:	00098593          	mv	a1,s3
    4158:	00040513          	mv	a0,s0
    415c:	00090613          	mv	a2,s2
    4160:	00000097          	auipc	ra,0x0
    4164:	d58080e7          	jalr	-680(ra) # 3eb8 <fatfs_fat_set_cluster>
    4168:	fff00613          	li	a2,-1
    416c:	00090593          	mv	a1,s2
    4170:	00040513          	mv	a0,s0
    4174:	00000097          	auipc	ra,0x0
    4178:	d44080e7          	jalr	-700(ra) # 3eb8 <fatfs_fat_set_cluster>
    417c:	00049463          	bnez	s1,4184 <fatfs_add_free_space+0xc0>
    4180:	012a2023          	sw	s2,0(s4)
    4184:	00148493          	addi	s1,s1,1
    4188:	00090993          	mv	s3,s2
    418c:	f81ff06f          	j	410c <fatfs_add_free_space+0x48>

00004190 <_write_sectors>:
    4190:	fb010113          	addi	sp,sp,-80
    4194:	03512a23          	sw	s5,52(sp)
    4198:	0000bab7          	lui	s5,0xb
    419c:	04112623          	sw	ra,76(sp)
    41a0:	04812423          	sw	s0,72(sp)
    41a4:	04912223          	sw	s1,68(sp)
    41a8:	03412c23          	sw	s4,56(sp)
    41ac:	03612823          	sw	s6,48(sp)
    41b0:	03712623          	sw	s7,44(sp)
    41b4:	03812423          	sw	s8,40(sp)
    41b8:	03912223          	sw	s9,36(sp)
    41bc:	03a12023          	sw	s10,32(sp)
    41c0:	05212023          	sw	s2,64(sp)
    41c4:	03312e23          	sw	s3,60(sp)
    41c8:	6e4a8b93          	addi	s7,s5,1764 # b6e4 <_fs>
    41cc:	000bc983          	lbu	s3,0(s7)
    41d0:	00058b13          	mv	s6,a1
    41d4:	fff00793          	li	a5,-1
    41d8:	00098593          	mv	a1,s3
    41dc:	00050493          	mv	s1,a0
    41e0:	000b0513          	mv	a0,s6
    41e4:	00068c13          	mv	s8,a3
    41e8:	00f12e23          	sw	a5,28(sp)
    41ec:	00060d13          	mv	s10,a2
    41f0:	ffffd097          	auipc	ra,0xffffd
    41f4:	148080e7          	jalr	328(ra) # 1338 <__udivsi3>
    41f8:	00050a13          	mv	s4,a0
    41fc:	00098593          	mv	a1,s3
    4200:	000b0513          	mv	a0,s6
    4204:	ffffd097          	auipc	ra,0xffffd
    4208:	17c080e7          	jalr	380(ra) # 1380 <__umodsi3>
    420c:	00ac07b3          	add	a5,s8,a0
    4210:	00050c93          	mv	s9,a0
    4214:	000c0413          	mv	s0,s8
    4218:	00f9fe63          	bgeu	s3,a5,4234 <_write_sectors+0xa4>
    421c:	000a0593          	mv	a1,s4
    4220:	00098513          	mv	a0,s3
    4224:	ffffe097          	auipc	ra,0xffffe
    4228:	910080e7          	jalr	-1776(ra) # 1b34 <__mulsi3>
    422c:	416987b3          	sub	a5,s3,s6
    4230:	00f50433          	add	s0,a0,a5
    4234:	2284a903          	lw	s2,552(s1)
    4238:	03491a63          	bne	s2,s4,426c <_write_sectors+0xdc>
    423c:	22c4a583          	lw	a1,556(s1)
    4240:	6e4a8513          	addi	a0,s5,1764
    4244:	ffffe097          	auipc	ra,0xffffe
    4248:	c54080e7          	jalr	-940(ra) # 1e98 <fatfs_lba_of_cluster>
    424c:	019505b3          	add	a1,a0,s9
    4250:	00040693          	mv	a3,s0
    4254:	000d0613          	mv	a2,s10
    4258:	6e4a8513          	addi	a0,s5,1764
    425c:	ffffe097          	auipc	ra,0xffffe
    4260:	ca0080e7          	jalr	-864(ra) # 1efc <fatfs_sector_write>
    4264:	04050a63          	beqz	a0,42b8 <_write_sectors+0x128>
    4268:	0540006f          	j	42bc <_write_sectors+0x12c>
    426c:	093b6663          	bltu	s6,s3,42f8 <_write_sectors+0x168>
    4270:	00190793          	addi	a5,s2,1
    4274:	09479263          	bne	a5,s4,42f8 <_write_sectors+0x168>
    4278:	22c4a583          	lw	a1,556(s1)
    427c:	fff00b13          	li	s6,-1
    4280:	09496263          	bltu	s2,s4,4304 <_write_sectors+0x174>
    4284:	fff00793          	li	a5,-1
    4288:	0af59463          	bne	a1,a5,4330 <_write_sectors+0x1a0>
    428c:	000bc583          	lbu	a1,0(s7)
    4290:	fff58513          	addi	a0,a1,-1
    4294:	01850533          	add	a0,a0,s8
    4298:	ffffd097          	auipc	ra,0xffffd
    429c:	0a0080e7          	jalr	160(ra) # 1338 <__udivsi3>
    42a0:	00050613          	mv	a2,a0
    42a4:	01c10593          	addi	a1,sp,28
    42a8:	000b8513          	mv	a0,s7
    42ac:	00000097          	auipc	ra,0x0
    42b0:	e18080e7          	jalr	-488(ra) # 40c4 <fatfs_add_free_space>
    42b4:	06051c63          	bnez	a0,432c <_write_sectors+0x19c>
    42b8:	00000413          	li	s0,0
    42bc:	04c12083          	lw	ra,76(sp)
    42c0:	00040513          	mv	a0,s0
    42c4:	04812403          	lw	s0,72(sp)
    42c8:	04412483          	lw	s1,68(sp)
    42cc:	04012903          	lw	s2,64(sp)
    42d0:	03c12983          	lw	s3,60(sp)
    42d4:	03812a03          	lw	s4,56(sp)
    42d8:	03412a83          	lw	s5,52(sp)
    42dc:	03012b03          	lw	s6,48(sp)
    42e0:	02c12b83          	lw	s7,44(sp)
    42e4:	02812c03          	lw	s8,40(sp)
    42e8:	02412c83          	lw	s9,36(sp)
    42ec:	02012d03          	lw	s10,32(sp)
    42f0:	05010113          	addi	sp,sp,80
    42f4:	00008067          	ret
    42f8:	0044a583          	lw	a1,4(s1)
    42fc:	00000913          	li	s2,0
    4300:	f7dff06f          	j	427c <_write_sectors+0xec>
    4304:	6e4a8513          	addi	a0,s5,1764
    4308:	00b12623          	sw	a1,12(sp)
    430c:	fffff097          	auipc	ra,0xfffff
    4310:	c04080e7          	jalr	-1020(ra) # 2f10 <fatfs_find_next_cluster>
    4314:	00c12583          	lw	a1,12(sp)
    4318:	00b12e23          	sw	a1,28(sp)
    431c:	f76508e3          	beq	a0,s6,428c <_write_sectors+0xfc>
    4320:	00190913          	addi	s2,s2,1
    4324:	00050593          	mv	a1,a0
    4328:	f59ff06f          	j	4280 <_write_sectors+0xf0>
    432c:	01c12583          	lw	a1,28(sp)
    4330:	22b4a623          	sw	a1,556(s1)
    4334:	2344a423          	sw	s4,552(s1)
    4338:	f09ff06f          	j	4240 <_write_sectors+0xb0>

0000433c <fl_fflush>:
    433c:	000057b7          	lui	a5,0x5
    4340:	4607a783          	lw	a5,1120(a5) # 5460 <_filelib_init>
    4344:	ff010113          	addi	sp,sp,-16
    4348:	00812423          	sw	s0,8(sp)
    434c:	00112623          	sw	ra,12(sp)
    4350:	00912223          	sw	s1,4(sp)
    4354:	00050413          	mv	s0,a0
    4358:	00079663          	bnez	a5,4364 <fl_fflush+0x28>
    435c:	ffffe097          	auipc	ra,0xffffe
    4360:	c6c080e7          	jalr	-916(ra) # 1fc8 <fl_init>
    4364:	04040663          	beqz	s0,43b0 <fl_fflush+0x74>
    4368:	0000b4b7          	lui	s1,0xb
    436c:	6e448493          	addi	s1,s1,1764 # b6e4 <_fs>
    4370:	03c4a783          	lw	a5,60(s1)
    4374:	00078463          	beqz	a5,437c <fl_fflush+0x40>
    4378:	000780e7          	jalr	a5
    437c:	43442783          	lw	a5,1076(s0)
    4380:	02078263          	beqz	a5,43a4 <fl_fflush+0x68>
    4384:	43042583          	lw	a1,1072(s0)
    4388:	00100693          	li	a3,1
    438c:	23040613          	addi	a2,s0,560
    4390:	00040513          	mv	a0,s0
    4394:	00000097          	auipc	ra,0x0
    4398:	dfc080e7          	jalr	-516(ra) # 4190 <_write_sectors>
    439c:	00050463          	beqz	a0,43a4 <fl_fflush+0x68>
    43a0:	42042a23          	sw	zero,1076(s0)
    43a4:	0404a783          	lw	a5,64(s1)
    43a8:	00078463          	beqz	a5,43b0 <fl_fflush+0x74>
    43ac:	000780e7          	jalr	a5
    43b0:	00c12083          	lw	ra,12(sp)
    43b4:	00812403          	lw	s0,8(sp)
    43b8:	00412483          	lw	s1,4(sp)
    43bc:	00000513          	li	a0,0
    43c0:	01010113          	addi	sp,sp,16
    43c4:	00008067          	ret

000043c8 <fl_fclose>:
    43c8:	000057b7          	lui	a5,0x5
    43cc:	4607a783          	lw	a5,1120(a5) # 5460 <_filelib_init>
    43d0:	ff010113          	addi	sp,sp,-16
    43d4:	00812423          	sw	s0,8(sp)
    43d8:	00112623          	sw	ra,12(sp)
    43dc:	00912223          	sw	s1,4(sp)
    43e0:	01212023          	sw	s2,0(sp)
    43e4:	00050413          	mv	s0,a0
    43e8:	00079663          	bnez	a5,43f4 <fl_fclose+0x2c>
    43ec:	ffffe097          	auipc	ra,0xffffe
    43f0:	bdc080e7          	jalr	-1060(ra) # 1fc8 <fl_init>
    43f4:	08040c63          	beqz	s0,448c <fl_fclose+0xc4>
    43f8:	0000b4b7          	lui	s1,0xb
    43fc:	6e448913          	addi	s2,s1,1764 # b6e4 <_fs>
    4400:	03c92783          	lw	a5,60(s2)
    4404:	00078463          	beqz	a5,440c <fl_fclose+0x44>
    4408:	000780e7          	jalr	a5
    440c:	00040513          	mv	a0,s0
    4410:	00000097          	auipc	ra,0x0
    4414:	f2c080e7          	jalr	-212(ra) # 433c <fl_fflush>
    4418:	01042783          	lw	a5,16(s0)
    441c:	00078e63          	beqz	a5,4438 <fl_fclose+0x70>
    4420:	00c42683          	lw	a3,12(s0)
    4424:	00042583          	lw	a1,0(s0)
    4428:	21c40613          	addi	a2,s0,540
    442c:	6e448513          	addi	a0,s1,1764
    4430:	fffff097          	auipc	ra,0xfffff
    4434:	338080e7          	jalr	824(ra) # 3768 <fatfs_update_file_length>
    4438:	fff00793          	li	a5,-1
    443c:	42f42823          	sw	a5,1072(s0)
    4440:	00040513          	mv	a0,s0
    4444:	00042423          	sw	zero,8(s0)
    4448:	00042623          	sw	zero,12(s0)
    444c:	00042223          	sw	zero,4(s0)
    4450:	42042a23          	sw	zero,1076(s0)
    4454:	00042823          	sw	zero,16(s0)
    4458:	ffffe097          	auipc	ra,0xffffe
    445c:	9f8080e7          	jalr	-1544(ra) # 1e50 <_free_file>
    4460:	6e448513          	addi	a0,s1,1764
    4464:	fffff097          	auipc	ra,0xfffff
    4468:	a54080e7          	jalr	-1452(ra) # 2eb8 <fatfs_fat_purge>
    446c:	04092783          	lw	a5,64(s2)
    4470:	00078e63          	beqz	a5,448c <fl_fclose+0xc4>
    4474:	00812403          	lw	s0,8(sp)
    4478:	00c12083          	lw	ra,12(sp)
    447c:	00412483          	lw	s1,4(sp)
    4480:	00012903          	lw	s2,0(sp)
    4484:	01010113          	addi	sp,sp,16
    4488:	00078067          	jr	a5
    448c:	00c12083          	lw	ra,12(sp)
    4490:	00812403          	lw	s0,8(sp)
    4494:	00412483          	lw	s1,4(sp)
    4498:	00012903          	lw	s2,0(sp)
    449c:	01010113          	addi	sp,sp,16
    44a0:	00008067          	ret

000044a4 <fl_fread>:
    44a4:	000057b7          	lui	a5,0x5
    44a8:	4607a783          	lw	a5,1120(a5) # 5460 <_filelib_init>
    44ac:	fc010113          	addi	sp,sp,-64
    44b0:	02812c23          	sw	s0,56(sp)
    44b4:	03512223          	sw	s5,36(sp)
    44b8:	02112e23          	sw	ra,60(sp)
    44bc:	02912a23          	sw	s1,52(sp)
    44c0:	03212823          	sw	s2,48(sp)
    44c4:	03312623          	sw	s3,44(sp)
    44c8:	03412423          	sw	s4,40(sp)
    44cc:	03612023          	sw	s6,32(sp)
    44d0:	01712e23          	sw	s7,28(sp)
    44d4:	01812c23          	sw	s8,24(sp)
    44d8:	01912a23          	sw	s9,20(sp)
    44dc:	00050a93          	mv	s5,a0
    44e0:	00068413          	mv	s0,a3
    44e4:	00058513          	mv	a0,a1
    44e8:	00079e63          	bnez	a5,4504 <fl_fread+0x60>
    44ec:	00c12623          	sw	a2,12(sp)
    44f0:	00b12423          	sw	a1,8(sp)
    44f4:	ffffe097          	auipc	ra,0xffffe
    44f8:	ad4080e7          	jalr	-1324(ra) # 1fc8 <fl_init>
    44fc:	00c12603          	lw	a2,12(sp)
    4500:	00812503          	lw	a0,8(sp)
    4504:	14040e63          	beqz	s0,4660 <fl_fread+0x1bc>
    4508:	140a8c63          	beqz	s5,4660 <fl_fread+0x1bc>
    450c:	43844783          	lbu	a5,1080(s0)
    4510:	fff00493          	li	s1,-1
    4514:	0017f793          	andi	a5,a5,1
    4518:	04078863          	beqz	a5,4568 <fl_fread+0xc4>
    451c:	00060593          	mv	a1,a2
    4520:	ffffd097          	auipc	ra,0xffffd
    4524:	614080e7          	jalr	1556(ra) # 1b34 <__mulsi3>
    4528:	00050493          	mv	s1,a0
    452c:	02050e63          	beqz	a0,4568 <fl_fread+0xc4>
    4530:	00842583          	lw	a1,8(s0)
    4534:	00c42783          	lw	a5,12(s0)
    4538:	12f5f463          	bgeu	a1,a5,4660 <fl_fread+0x1bc>
    453c:	00b50733          	add	a4,a0,a1
    4540:	00e7f463          	bgeu	a5,a4,4548 <fl_fread+0xa4>
    4544:	40b784b3          	sub	s1,a5,a1
    4548:	0095da13          	srli	s4,a1,0x9
    454c:	1ff5f913          	andi	s2,a1,511
    4550:	00000993          	li	s3,0
    4554:	23040b13          	addi	s6,s0,560
    4558:	20000b93          	li	s7,512
    455c:	1ff00c13          	li	s8,511
    4560:	0499c063          	blt	s3,s1,45a0 <fl_fread+0xfc>
    4564:	00098493          	mv	s1,s3
    4568:	03c12083          	lw	ra,60(sp)
    456c:	03812403          	lw	s0,56(sp)
    4570:	03012903          	lw	s2,48(sp)
    4574:	02c12983          	lw	s3,44(sp)
    4578:	02812a03          	lw	s4,40(sp)
    457c:	02412a83          	lw	s5,36(sp)
    4580:	02012b03          	lw	s6,32(sp)
    4584:	01c12b83          	lw	s7,28(sp)
    4588:	01812c03          	lw	s8,24(sp)
    458c:	01412c83          	lw	s9,20(sp)
    4590:	00048513          	mv	a0,s1
    4594:	03412483          	lw	s1,52(sp)
    4598:	04010113          	addi	sp,sp,64
    459c:	00008067          	ret
    45a0:	04091663          	bnez	s2,45ec <fl_fread+0x148>
    45a4:	413486b3          	sub	a3,s1,s3
    45a8:	04dc5263          	bge	s8,a3,45ec <fl_fread+0x148>
    45ac:	4096d693          	srai	a3,a3,0x9
    45b0:	013a8633          	add	a2,s5,s3
    45b4:	000a0593          	mv	a1,s4
    45b8:	00040513          	mv	a0,s0
    45bc:	fffff097          	auipc	ra,0xfffff
    45c0:	5ec080e7          	jalr	1516(ra) # 3ba8 <_read_sectors>
    45c4:	fa0500e3          	beqz	a0,4564 <fl_fread+0xc0>
    45c8:	00951c93          	slli	s9,a0,0x9
    45cc:	000c8613          	mv	a2,s9
    45d0:	00aa0a33          	add	s4,s4,a0
    45d4:	00842783          	lw	a5,8(s0)
    45d8:	00c989b3          	add	s3,s3,a2
    45dc:	00000913          	li	s2,0
    45e0:	019787b3          	add	a5,a5,s9
    45e4:	00f42423          	sw	a5,8(s0)
    45e8:	f79ff06f          	j	4560 <fl_fread+0xbc>
    45ec:	43042783          	lw	a5,1072(s0)
    45f0:	03478e63          	beq	a5,s4,462c <fl_fread+0x188>
    45f4:	43442783          	lw	a5,1076(s0)
    45f8:	00078863          	beqz	a5,4608 <fl_fread+0x164>
    45fc:	00040513          	mv	a0,s0
    4600:	00000097          	auipc	ra,0x0
    4604:	d3c080e7          	jalr	-708(ra) # 433c <fl_fflush>
    4608:	00100693          	li	a3,1
    460c:	000b0613          	mv	a2,s6
    4610:	000a0593          	mv	a1,s4
    4614:	00040513          	mv	a0,s0
    4618:	fffff097          	auipc	ra,0xfffff
    461c:	590080e7          	jalr	1424(ra) # 3ba8 <_read_sectors>
    4620:	f40502e3          	beqz	a0,4564 <fl_fread+0xc0>
    4624:	43442823          	sw	s4,1072(s0)
    4628:	42042a23          	sw	zero,1076(s0)
    462c:	412b87b3          	sub	a5,s7,s2
    4630:	41348633          	sub	a2,s1,s3
    4634:	00c7d463          	bge	a5,a2,463c <fl_fread+0x198>
    4638:	00078613          	mv	a2,a5
    463c:	012b05b3          	add	a1,s6,s2
    4640:	013a8533          	add	a0,s5,s3
    4644:	00060c93          	mv	s9,a2
    4648:	00c12423          	sw	a2,8(sp)
    464c:	ffffd097          	auipc	ra,0xffffd
    4650:	db4080e7          	jalr	-588(ra) # 1400 <memcpy>
    4654:	00812603          	lw	a2,8(sp)
    4658:	001a0a13          	addi	s4,s4,1
    465c:	f79ff06f          	j	45d4 <fl_fread+0x130>
    4660:	fff00493          	li	s1,-1
    4664:	f05ff06f          	j	4568 <fl_fread+0xc4>

00004668 <fatfs_allocate_free_space>:
    4668:	fd010113          	addi	sp,sp,-48
    466c:	02112623          	sw	ra,44(sp)
    4670:	02812423          	sw	s0,40(sp)
    4674:	02912223          	sw	s1,36(sp)
    4678:	03212023          	sw	s2,32(sp)
    467c:	01312e23          	sw	s3,28(sp)
    4680:	01412c23          	sw	s4,24(sp)
    4684:	01512a23          	sw	s5,20(sp)
    4688:	02069863          	bnez	a3,46b8 <fatfs_allocate_free_space+0x50>
    468c:	00000413          	li	s0,0
    4690:	02c12083          	lw	ra,44(sp)
    4694:	00040513          	mv	a0,s0
    4698:	02812403          	lw	s0,40(sp)
    469c:	02412483          	lw	s1,36(sp)
    46a0:	02012903          	lw	s2,32(sp)
    46a4:	01c12983          	lw	s3,28(sp)
    46a8:	01812a03          	lw	s4,24(sp)
    46ac:	01412a83          	lw	s5,20(sp)
    46b0:	03010113          	addi	sp,sp,48
    46b4:	00008067          	ret
    46b8:	02452783          	lw	a5,36(a0)
    46bc:	00058a13          	mv	s4,a1
    46c0:	fff00593          	li	a1,-1
    46c4:	00050493          	mv	s1,a0
    46c8:	00068913          	mv	s2,a3
    46cc:	00060993          	mv	s3,a2
    46d0:	00b78663          	beq	a5,a1,46dc <fatfs_allocate_free_space+0x74>
    46d4:	fffff097          	auipc	ra,0xfffff
    46d8:	620080e7          	jalr	1568(ra) # 3cf4 <fatfs_set_fs_info_next_free_cluster>
    46dc:	0004c783          	lbu	a5,0(s1)
    46e0:	00090513          	mv	a0,s2
    46e4:	00979a93          	slli	s5,a5,0x9
    46e8:	000a8593          	mv	a1,s5
    46ec:	ffffd097          	auipc	ra,0xffffd
    46f0:	c4c080e7          	jalr	-948(ra) # 1338 <__udivsi3>
    46f4:	00050413          	mv	s0,a0
    46f8:	00050593          	mv	a1,a0
    46fc:	000a8513          	mv	a0,s5
    4700:	ffffd097          	auipc	ra,0xffffd
    4704:	434080e7          	jalr	1076(ra) # 1b34 <__mulsi3>
    4708:	41250533          	sub	a0,a0,s2
    470c:	00a03533          	snez	a0,a0
    4710:	00a40933          	add	s2,s0,a0
    4714:	040a0463          	beqz	s4,475c <fatfs_allocate_free_space+0xf4>
    4718:	0084a583          	lw	a1,8(s1)
    471c:	00c10613          	addi	a2,sp,12
    4720:	00048513          	mv	a0,s1
    4724:	fffff097          	auipc	ra,0xfffff
    4728:	680080e7          	jalr	1664(ra) # 3da4 <fatfs_find_blank_cluster>
    472c:	00050413          	mv	s0,a0
    4730:	f4050ee3          	beqz	a0,468c <fatfs_allocate_free_space+0x24>
    4734:	00100793          	li	a5,1
    4738:	02f91663          	bne	s2,a5,4764 <fatfs_allocate_free_space+0xfc>
    473c:	00c12903          	lw	s2,12(sp)
    4740:	fff00613          	li	a2,-1
    4744:	00048513          	mv	a0,s1
    4748:	00090593          	mv	a1,s2
    474c:	fffff097          	auipc	ra,0xfffff
    4750:	76c080e7          	jalr	1900(ra) # 3eb8 <fatfs_fat_set_cluster>
    4754:	0129a023          	sw	s2,0(s3)
    4758:	f39ff06f          	j	4690 <fatfs_allocate_free_space+0x28>
    475c:	0009a783          	lw	a5,0(s3)
    4760:	00f12623          	sw	a5,12(sp)
    4764:	00090613          	mv	a2,s2
    4768:	00c10593          	addi	a1,sp,12
    476c:	00048513          	mv	a0,s1
    4770:	00000097          	auipc	ra,0x0
    4774:	954080e7          	jalr	-1708(ra) # 40c4 <fatfs_add_free_space>
    4778:	00050413          	mv	s0,a0
    477c:	f15ff06f          	j	4690 <fatfs_allocate_free_space+0x28>

00004780 <fatfs_add_file_entry>:
    4780:	03852883          	lw	a7,56(a0)
    4784:	30088e63          	beqz	a7,4aa0 <fatfs_add_file_entry+0x320>
    4788:	f8010113          	addi	sp,sp,-128
    478c:	06812c23          	sw	s0,120(sp)
    4790:	00050413          	mv	s0,a0
    4794:	00060513          	mv	a0,a2
    4798:	06912a23          	sw	s1,116(sp)
    479c:	07512223          	sw	s5,100(sp)
    47a0:	00f12c23          	sw	a5,24(sp)
    47a4:	00e12a23          	sw	a4,20(sp)
    47a8:	06112e23          	sw	ra,124(sp)
    47ac:	07212823          	sw	s2,112(sp)
    47b0:	07312623          	sw	s3,108(sp)
    47b4:	07412423          	sw	s4,104(sp)
    47b8:	07612023          	sw	s6,96(sp)
    47bc:	05712e23          	sw	s7,92(sp)
    47c0:	05812c23          	sw	s8,88(sp)
    47c4:	05912a23          	sw	s9,84(sp)
    47c8:	05a12823          	sw	s10,80(sp)
    47cc:	05b12623          	sw	s11,76(sp)
    47d0:	01012e23          	sw	a6,28(sp)
    47d4:	00068a93          	mv	s5,a3
    47d8:	00c12823          	sw	a2,16(sp)
    47dc:	00b12423          	sw	a1,8(sp)
    47e0:	ffffe097          	auipc	ra,0xffffe
    47e4:	a48080e7          	jalr	-1464(ra) # 2228 <fatfs_lfn_entries_required>
    47e8:	00150713          	addi	a4,a0,1
    47ec:	00100793          	li	a5,1
    47f0:	00050493          	mv	s1,a0
    47f4:	2ae7f263          	bgeu	a5,a4,4a98 <fatfs_add_file_entry+0x318>
    47f8:	00000a13          	li	s4,0
    47fc:	00000993          	li	s3,0
    4800:	00000913          	li	s2,0
    4804:	00000c93          	li	s9,0
    4808:	00000b13          	li	s6,0
    480c:	01000c13          	li	s8,16
    4810:	00812583          	lw	a1,8(sp)
    4814:	00000693          	li	a3,0
    4818:	000b0613          	mv	a2,s6
    481c:	00040513          	mv	a0,s0
    4820:	000b0b93          	mv	s7,s6
    4824:	ffffe097          	auipc	ra,0xffffe
    4828:	7f4080e7          	jalr	2036(ra) # 3018 <fatfs_sector_reader>
    482c:	18050463          	beqz	a0,49b4 <fatfs_add_file_entry+0x234>
    4830:	001b0b13          	addi	s6,s6,1
    4834:	04440793          	addi	a5,s0,68
    4838:	000c8d13          	mv	s10,s9
    483c:	00000d93          	li	s11,0
    4840:	00078513          	mv	a0,a5
    4844:	00f12623          	sw	a5,12(sp)
    4848:	ffffe097          	auipc	ra,0xffffe
    484c:	8f8080e7          	jalr	-1800(ra) # 2140 <fatfs_entry_lfn_text>
    4850:	00c12783          	lw	a5,12(sp)
    4854:	00050c93          	mv	s9,a0
    4858:	02050c63          	beqz	a0,4890 <fatfs_add_file_entry+0x110>
    485c:	020d0463          	beqz	s10,4884 <fatfs_add_file_entry+0x104>
    4860:	00090c93          	mv	s9,s2
    4864:	000c8913          	mv	s2,s9
    4868:	001d0c93          	addi	s9,s10,1
    486c:	001d8d93          	addi	s11,s11,1
    4870:	0ffdfd93          	zext.b	s11,s11
    4874:	02078793          	addi	a5,a5,32
    4878:	f98d8ce3          	beq	s11,s8,4810 <fatfs_add_file_entry+0x90>
    487c:	000c8d13          	mv	s10,s9
    4880:	fc1ff06f          	j	4840 <fatfs_add_file_entry+0xc0>
    4884:	000d8a13          	mv	s4,s11
    4888:	000b8993          	mv	s3,s7
    488c:	fd9ff06f          	j	4864 <fatfs_add_file_entry+0xe4>
    4890:	0007c683          	lbu	a3,0(a5)
    4894:	0e500713          	li	a4,229
    4898:	10e69863          	bne	a3,a4,49a8 <fatfs_add_file_entry+0x228>
    489c:	000d1863          	bnez	s10,48ac <fatfs_add_file_entry+0x12c>
    48a0:	000d8a13          	mv	s4,s11
    48a4:	000b8993          	mv	s3,s7
    48a8:	00100913          	li	s2,1
    48ac:	fa9d4ee3          	blt	s10,s1,4868 <fatfs_add_file_entry+0xe8>
    48b0:	00ba8693          	addi	a3,s5,11
    48b4:	000a8713          	mv	a4,s5
    48b8:	00000913          	li	s2,0
    48bc:	00074603          	lbu	a2,0(a4)
    48c0:	00195793          	srli	a5,s2,0x1
    48c4:	00791913          	slli	s2,s2,0x7
    48c8:	012787b3          	add	a5,a5,s2
    48cc:	00170713          	addi	a4,a4,1
    48d0:	00c787b3          	add	a5,a5,a2
    48d4:	0ff7f913          	zext.b	s2,a5
    48d8:	fed712e3          	bne	a4,a3,48bc <fatfs_add_file_entry+0x13c>
    48dc:	00098b13          	mv	s6,s3
    48e0:	00000d13          	li	s10,0
    48e4:	01000b93          	li	s7,16
    48e8:	00812583          	lw	a1,8(sp)
    48ec:	00000693          	li	a3,0
    48f0:	000b0613          	mv	a2,s6
    48f4:	00040513          	mv	a0,s0
    48f8:	ffffe097          	auipc	ra,0xffffe
    48fc:	720080e7          	jalr	1824(ra) # 3018 <fatfs_sector_reader>
    4900:	18050c63          	beqz	a0,4a98 <fatfs_add_file_entry+0x318>
    4904:	04440c93          	addi	s9,s0,68
    4908:	413b0db3          	sub	s11,s6,s3
    490c:	00000793          	li	a5,0
    4910:	00000c13          	li	s8,0
    4914:	01912623          	sw	s9,12(sp)
    4918:	000d1663          	bnez	s10,4924 <fatfs_add_file_entry+0x1a4>
    491c:	154c1863          	bne	s8,s4,4a6c <fatfs_add_file_entry+0x2ec>
    4920:	140d9663          	bnez	s11,4a6c <fatfs_add_file_entry+0x2ec>
    4924:	12049263          	bnez	s1,4a48 <fatfs_add_file_entry+0x2c8>
    4928:	01c12703          	lw	a4,28(sp)
    492c:	01412603          	lw	a2,20(sp)
    4930:	01812583          	lw	a1,24(sp)
    4934:	02010693          	addi	a3,sp,32
    4938:	000a8513          	mv	a0,s5
    493c:	ffffe097          	auipc	ra,0xffffe
    4940:	a30080e7          	jalr	-1488(ra) # 236c <fatfs_sfn_create_entry>
    4944:	02000613          	li	a2,32
    4948:	00c105b3          	add	a1,sp,a2
    494c:	000c8513          	mv	a0,s9
    4950:	ffffd097          	auipc	ra,0xffffd
    4954:	ab0080e7          	jalr	-1360(ra) # 1400 <memcpy>
    4958:	03842783          	lw	a5,56(s0)
    495c:	00c12583          	lw	a1,12(sp)
    4960:	24442503          	lw	a0,580(s0)
    4964:	00100613          	li	a2,1
    4968:	000780e7          	jalr	a5
    496c:	07c12083          	lw	ra,124(sp)
    4970:	07812403          	lw	s0,120(sp)
    4974:	07412483          	lw	s1,116(sp)
    4978:	07012903          	lw	s2,112(sp)
    497c:	06c12983          	lw	s3,108(sp)
    4980:	06812a03          	lw	s4,104(sp)
    4984:	06412a83          	lw	s5,100(sp)
    4988:	06012b03          	lw	s6,96(sp)
    498c:	05c12b83          	lw	s7,92(sp)
    4990:	05812c03          	lw	s8,88(sp)
    4994:	05412c83          	lw	s9,84(sp)
    4998:	05012d03          	lw	s10,80(sp)
    499c:	04c12d83          	lw	s11,76(sp)
    49a0:	08010113          	addi	sp,sp,128
    49a4:	00008067          	ret
    49a8:	ee068ae3          	beqz	a3,489c <fatfs_add_file_entry+0x11c>
    49ac:	00000913          	li	s2,0
    49b0:	ebdff06f          	j	486c <fatfs_add_file_entry+0xec>
    49b4:	00842583          	lw	a1,8(s0)
    49b8:	02010613          	addi	a2,sp,32
    49bc:	00040513          	mv	a0,s0
    49c0:	fffff097          	auipc	ra,0xfffff
    49c4:	3e4080e7          	jalr	996(ra) # 3da4 <fatfs_find_blank_cluster>
    49c8:	0c050863          	beqz	a0,4a98 <fatfs_add_file_entry+0x318>
    49cc:	02012b83          	lw	s7,32(sp)
    49d0:	00812583          	lw	a1,8(sp)
    49d4:	00040513          	mv	a0,s0
    49d8:	000b8613          	mv	a2,s7
    49dc:	fffff097          	auipc	ra,0xfffff
    49e0:	64c080e7          	jalr	1612(ra) # 4028 <fatfs_fat_add_cluster_to_chain>
    49e4:	0a050a63          	beqz	a0,4a98 <fatfs_add_file_entry+0x318>
    49e8:	20000613          	li	a2,512
    49ec:	00000593          	li	a1,0
    49f0:	04440513          	addi	a0,s0,68
    49f4:	ffffd097          	auipc	ra,0xffffd
    49f8:	9f0080e7          	jalr	-1552(ra) # 13e4 <memset>
    49fc:	00000c13          	li	s8,0
    4a00:	00044783          	lbu	a5,0(s0)
    4a04:	00fc6a63          	bltu	s8,a5,4a18 <fatfs_add_file_entry+0x298>
    4a08:	ea0914e3          	bnez	s2,48b0 <fatfs_add_file_entry+0x130>
    4a0c:	000b0993          	mv	s3,s6
    4a10:	00000a13          	li	s4,0
    4a14:	e9dff06f          	j	48b0 <fatfs_add_file_entry+0x130>
    4a18:	00000693          	li	a3,0
    4a1c:	000c0613          	mv	a2,s8
    4a20:	000b8593          	mv	a1,s7
    4a24:	00040513          	mv	a0,s0
    4a28:	ffffd097          	auipc	ra,0xffffd
    4a2c:	4ec080e7          	jalr	1260(ra) # 1f14 <fatfs_write_sector>
    4a30:	06050463          	beqz	a0,4a98 <fatfs_add_file_entry+0x318>
    4a34:	001c0c13          	addi	s8,s8,1
    4a38:	0ffc7c13          	zext.b	s8,s8
    4a3c:	fc5ff06f          	j	4a00 <fatfs_add_file_entry+0x280>
    4a40:	001b0b13          	addi	s6,s6,1
    4a44:	ea5ff06f          	j	48e8 <fatfs_add_file_entry+0x168>
    4a48:	01012503          	lw	a0,16(sp)
    4a4c:	fff48493          	addi	s1,s1,-1
    4a50:	00090693          	mv	a3,s2
    4a54:	00048613          	mv	a2,s1
    4a58:	000c8593          	mv	a1,s9
    4a5c:	ffffd097          	auipc	ra,0xffffd
    4a60:	7fc080e7          	jalr	2044(ra) # 2258 <fatfs_filename_to_lfn>
    4a64:	00100d13          	li	s10,1
    4a68:	000d0793          	mv	a5,s10
    4a6c:	001c0c13          	addi	s8,s8,1
    4a70:	0ffc7c13          	zext.b	s8,s8
    4a74:	020c8c93          	addi	s9,s9,32
    4a78:	eb7c10e3          	bne	s8,s7,4918 <fatfs_add_file_entry+0x198>
    4a7c:	fc0782e3          	beqz	a5,4a40 <fatfs_add_file_entry+0x2c0>
    4a80:	03842783          	lw	a5,56(s0)
    4a84:	00c12583          	lw	a1,12(sp)
    4a88:	24442503          	lw	a0,580(s0)
    4a8c:	00100613          	li	a2,1
    4a90:	000780e7          	jalr	a5
    4a94:	fa0516e3          	bnez	a0,4a40 <fatfs_add_file_entry+0x2c0>
    4a98:	00000513          	li	a0,0
    4a9c:	ed1ff06f          	j	496c <fatfs_add_file_entry+0x1ec>
    4aa0:	00000513          	li	a0,0
    4aa4:	00008067          	ret

00004aa8 <fl_fopen>:
    4aa8:	000057b7          	lui	a5,0x5
    4aac:	4607a783          	lw	a5,1120(a5) # 5460 <_filelib_init>
    4ab0:	fa010113          	addi	sp,sp,-96
    4ab4:	05212823          	sw	s2,80(sp)
    4ab8:	03a12823          	sw	s10,48(sp)
    4abc:	04112e23          	sw	ra,92(sp)
    4ac0:	04812c23          	sw	s0,88(sp)
    4ac4:	04912a23          	sw	s1,84(sp)
    4ac8:	05312623          	sw	s3,76(sp)
    4acc:	05412423          	sw	s4,72(sp)
    4ad0:	05512223          	sw	s5,68(sp)
    4ad4:	05612023          	sw	s6,64(sp)
    4ad8:	03712e23          	sw	s7,60(sp)
    4adc:	03812c23          	sw	s8,56(sp)
    4ae0:	03912a23          	sw	s9,52(sp)
    4ae4:	00050d13          	mv	s10,a0
    4ae8:	00058913          	mv	s2,a1
    4aec:	00079663          	bnez	a5,4af8 <fl_fopen+0x50>
    4af0:	ffffd097          	auipc	ra,0xffffd
    4af4:	4d8080e7          	jalr	1240(ra) # 1fc8 <fl_init>
    4af8:	000057b7          	lui	a5,0x5
    4afc:	45c7a783          	lw	a5,1116(a5) # 545c <_filelib_valid>
    4b00:	00193713          	seqz	a4,s2
    4b04:	0017b793          	seqz	a5,a5
    4b08:	00e7e7b3          	or	a5,a5,a4
    4b0c:	36079e63          	bnez	a5,4e88 <fl_fopen+0x3e0>
    4b10:	360d0c63          	beqz	s10,4e88 <fl_fopen+0x3e0>
    4b14:	00000493          	li	s1,0
    4b18:	00000413          	li	s0,0
    4b1c:	05700993          	li	s3,87
    4b20:	07200a13          	li	s4,114
    4b24:	07700b13          	li	s6,119
    4b28:	06100b93          	li	s7,97
    4b2c:	06200c13          	li	s8,98
    4b30:	04100a93          	li	s5,65
    4b34:	04200c93          	li	s9,66
    4b38:	00090513          	mv	a0,s2
    4b3c:	ffffd097          	auipc	ra,0xffffd
    4b40:	8e8080e7          	jalr	-1816(ra) # 1424 <strlen>
    4b44:	10a44a63          	blt	s0,a0,4c58 <fl_fopen+0x1b0>
    4b48:	0000b9b7          	lui	s3,0xb
    4b4c:	6e498a13          	addi	s4,s3,1764 # b6e4 <_fs>
    4b50:	038a2783          	lw	a5,56(s4)
    4b54:	00079463          	bnez	a5,4b5c <fl_fopen+0xb4>
    4b58:	fd94f493          	andi	s1,s1,-39
    4b5c:	03ca2783          	lw	a5,60(s4)
    4b60:	00078463          	beqz	a5,4b68 <fl_fopen+0xc0>
    4b64:	000780e7          	jalr	a5
    4b68:	0014f793          	andi	a5,s1,1
    4b6c:	18079263          	bnez	a5,4cf0 <fl_fopen+0x248>
    4b70:	0204f793          	andi	a5,s1,32
    4b74:	08078c63          	beqz	a5,4c0c <fl_fopen+0x164>
    4b78:	038a2783          	lw	a5,56(s4)
    4b7c:	06078a63          	beqz	a5,4bf0 <fl_fopen+0x148>
    4b80:	ffffd097          	auipc	ra,0xffffd
    4b84:	258080e7          	jalr	600(ra) # 1dd8 <_allocate_file>
    4b88:	00050413          	mv	s0,a0
    4b8c:	06050263          	beqz	a0,4bf0 <fl_fopen+0x148>
    4b90:	01450a93          	addi	s5,a0,20
    4b94:	10400613          	li	a2,260
    4b98:	00000593          	li	a1,0
    4b9c:	000a8513          	mv	a0,s5
    4ba0:	ffffd097          	auipc	ra,0xffffd
    4ba4:	844080e7          	jalr	-1980(ra) # 13e4 <memset>
    4ba8:	11840b13          	addi	s6,s0,280
    4bac:	10400613          	li	a2,260
    4bb0:	00000593          	li	a1,0
    4bb4:	000b0513          	mv	a0,s6
    4bb8:	ffffd097          	auipc	ra,0xffffd
    4bbc:	82c080e7          	jalr	-2004(ra) # 13e4 <memset>
    4bc0:	10400713          	li	a4,260
    4bc4:	000b0693          	mv	a3,s6
    4bc8:	00070613          	mv	a2,a4
    4bcc:	000a8593          	mv	a1,s5
    4bd0:	000d0513          	mv	a0,s10
    4bd4:	ffffe097          	auipc	ra,0xffffe
    4bd8:	c88080e7          	jalr	-888(ra) # 285c <fatfs_split_path>
    4bdc:	fff00793          	li	a5,-1
    4be0:	12f51663          	bne	a0,a5,4d0c <fl_fopen+0x264>
    4be4:	00040513          	mv	a0,s0
    4be8:	ffffd097          	auipc	ra,0xffffd
    4bec:	268080e7          	jalr	616(ra) # 1e50 <_free_file>
    4bf0:	00000413          	li	s0,0
    4bf4:	0214f793          	andi	a5,s1,33
    4bf8:	02000713          	li	a4,32
    4bfc:	28e79263          	bne	a5,a4,4e80 <fl_fopen+0x3d8>
    4c00:	10041263          	bnez	s0,4d04 <fl_fopen+0x25c>
    4c04:	0064f793          	andi	a5,s1,6
    4c08:	26079463          	bnez	a5,4e70 <fl_fopen+0x3c8>
    4c0c:	00000413          	li	s0,0
    4c10:	040a2783          	lw	a5,64(s4)
    4c14:	00078463          	beqz	a5,4c1c <fl_fopen+0x174>
    4c18:	000780e7          	jalr	a5
    4c1c:	05c12083          	lw	ra,92(sp)
    4c20:	00040513          	mv	a0,s0
    4c24:	05812403          	lw	s0,88(sp)
    4c28:	05412483          	lw	s1,84(sp)
    4c2c:	05012903          	lw	s2,80(sp)
    4c30:	04c12983          	lw	s3,76(sp)
    4c34:	04812a03          	lw	s4,72(sp)
    4c38:	04412a83          	lw	s5,68(sp)
    4c3c:	04012b03          	lw	s6,64(sp)
    4c40:	03c12b83          	lw	s7,60(sp)
    4c44:	03812c03          	lw	s8,56(sp)
    4c48:	03412c83          	lw	s9,52(sp)
    4c4c:	03012d03          	lw	s10,48(sp)
    4c50:	06010113          	addi	sp,sp,96
    4c54:	00008067          	ret
    4c58:	008907b3          	add	a5,s2,s0
    4c5c:	0007c783          	lbu	a5,0(a5)
    4c60:	05378863          	beq	a5,s3,4cb0 <fl_fopen+0x208>
    4c64:	02f9e863          	bltu	s3,a5,4c94 <fl_fopen+0x1ec>
    4c68:	05578863          	beq	a5,s5,4cb8 <fl_fopen+0x210>
    4c6c:	00faea63          	bltu	s5,a5,4c80 <fl_fopen+0x1d8>
    4c70:	02b00713          	li	a4,43
    4c74:	04e78663          	beq	a5,a4,4cc0 <fl_fopen+0x218>
    4c78:	00140413          	addi	s0,s0,1
    4c7c:	ebdff06f          	j	4b38 <fl_fopen+0x90>
    4c80:	03978263          	beq	a5,s9,4ca4 <fl_fopen+0x1fc>
    4c84:	05200713          	li	a4,82
    4c88:	fee798e3          	bne	a5,a4,4c78 <fl_fopen+0x1d0>
    4c8c:	0014e493          	ori	s1,s1,1
    4c90:	fe9ff06f          	j	4c78 <fl_fopen+0x1d0>
    4c94:	ff478ce3          	beq	a5,s4,4c8c <fl_fopen+0x1e4>
    4c98:	00fa6a63          	bltu	s4,a5,4cac <fl_fopen+0x204>
    4c9c:	01778e63          	beq	a5,s7,4cb8 <fl_fopen+0x210>
    4ca0:	fd879ce3          	bne	a5,s8,4c78 <fl_fopen+0x1d0>
    4ca4:	0084e493          	ori	s1,s1,8
    4ca8:	fd1ff06f          	j	4c78 <fl_fopen+0x1d0>
    4cac:	fd6796e3          	bne	a5,s6,4c78 <fl_fopen+0x1d0>
    4cb0:	0324e493          	ori	s1,s1,50
    4cb4:	fc5ff06f          	j	4c78 <fl_fopen+0x1d0>
    4cb8:	0264e493          	ori	s1,s1,38
    4cbc:	fbdff06f          	j	4c78 <fl_fopen+0x1d0>
    4cc0:	0014f793          	andi	a5,s1,1
    4cc4:	00078663          	beqz	a5,4cd0 <fl_fopen+0x228>
    4cc8:	0024e493          	ori	s1,s1,2
    4ccc:	fadff06f          	j	4c78 <fl_fopen+0x1d0>
    4cd0:	0024f793          	andi	a5,s1,2
    4cd4:	00078663          	beqz	a5,4ce0 <fl_fopen+0x238>
    4cd8:	0314e493          	ori	s1,s1,49
    4cdc:	f9dff06f          	j	4c78 <fl_fopen+0x1d0>
    4ce0:	0044f793          	andi	a5,s1,4
    4ce4:	f8078ae3          	beqz	a5,4c78 <fl_fopen+0x1d0>
    4ce8:	0274e493          	ori	s1,s1,39
    4cec:	f8dff06f          	j	4c78 <fl_fopen+0x1d0>
    4cf0:	000d0513          	mv	a0,s10
    4cf4:	fffff097          	auipc	ra,0xfffff
    4cf8:	81c080e7          	jalr	-2020(ra) # 3510 <_open_file>
    4cfc:	00050413          	mv	s0,a0
    4d00:	e60508e3          	beqz	a0,4b70 <fl_fopen+0xc8>
    4d04:	42940c23          	sb	s1,1080(s0)
    4d08:	f09ff06f          	j	4c10 <fl_fopen+0x168>
    4d0c:	00040513          	mv	a0,s0
    4d10:	ffffe097          	auipc	ra,0xffffe
    4d14:	dc8080e7          	jalr	-568(ra) # 2ad8 <_check_file_open>
    4d18:	00050913          	mv	s2,a0
    4d1c:	ec0514e3          	bnez	a0,4be4 <fl_fopen+0x13c>
    4d20:	01444783          	lbu	a5,20(s0)
    4d24:	0e079663          	bnez	a5,4e10 <fl_fopen+0x368>
    4d28:	008a2783          	lw	a5,8(s4)
    4d2c:	00f42023          	sw	a5,0(s0)
    4d30:	00042583          	lw	a1,0(s0)
    4d34:	01010693          	addi	a3,sp,16
    4d38:	000b0613          	mv	a2,s6
    4d3c:	6e498513          	addi	a0,s3,1764
    4d40:	ffffe097          	auipc	ra,0xffffe
    4d44:	428080e7          	jalr	1064(ra) # 3168 <fatfs_get_file_entry>
    4d48:	00100693          	li	a3,1
    4d4c:	e8d50ce3          	beq	a0,a3,4be4 <fl_fopen+0x13c>
    4d50:	00042223          	sw	zero,4(s0)
    4d54:	00440613          	addi	a2,s0,4
    4d58:	00068593          	mv	a1,a3
    4d5c:	6e498513          	addi	a0,s3,1764
    4d60:	00000097          	auipc	ra,0x0
    4d64:	908080e7          	jalr	-1784(ra) # 4668 <fatfs_allocate_free_space>
    4d68:	e6050ee3          	beqz	a0,4be4 <fl_fopen+0x13c>
    4d6c:	00002ab7          	lui	s5,0x2
    4d70:	21c40b93          	addi	s7,s0,540
    4d74:	6e498c13          	addi	s8,s3,1764
    4d78:	70fa8a93          	addi	s5,s5,1807 # 270f <fatfs_total_path_levels+0xb>
    4d7c:	000b0593          	mv	a1,s6
    4d80:	00410513          	addi	a0,sp,4
    4d84:	ffffd097          	auipc	ra,0xffffd
    4d88:	68c080e7          	jalr	1676(ra) # 2410 <fatfs_lfn_create_sfn>
    4d8c:	08090e63          	beqz	s2,4e28 <fl_fopen+0x380>
    4d90:	00090613          	mv	a2,s2
    4d94:	00410593          	addi	a1,sp,4
    4d98:	000b8513          	mv	a0,s7
    4d9c:	ffffd097          	auipc	ra,0xffffd
    4da0:	7f0080e7          	jalr	2032(ra) # 258c <fatfs_lfn_generate_tail>
    4da4:	00042583          	lw	a1,0(s0)
    4da8:	000b8613          	mv	a2,s7
    4dac:	000c0513          	mv	a0,s8
    4db0:	fffff097          	auipc	ra,0xfffff
    4db4:	8d4080e7          	jalr	-1836(ra) # 3684 <fatfs_sfn_exists>
    4db8:	00050663          	beqz	a0,4dc4 <fl_fopen+0x31c>
    4dbc:	00190913          	addi	s2,s2,1
    4dc0:	fb591ee3          	bne	s2,s5,4d7c <fl_fopen+0x2d4>
    4dc4:	00442703          	lw	a4,4(s0)
    4dc8:	000027b7          	lui	a5,0x2
    4dcc:	70f78793          	addi	a5,a5,1807 # 270f <fatfs_total_path_levels+0xb>
    4dd0:	00070593          	mv	a1,a4
    4dd4:	02f90663          	beq	s2,a5,4e00 <fl_fopen+0x358>
    4dd8:	00042583          	lw	a1,0(s0)
    4ddc:	00000813          	li	a6,0
    4de0:	00000793          	li	a5,0
    4de4:	000b8693          	mv	a3,s7
    4de8:	000b0613          	mv	a2,s6
    4dec:	6e498513          	addi	a0,s3,1764
    4df0:	00000097          	auipc	ra,0x0
    4df4:	990080e7          	jalr	-1648(ra) # 4780 <fatfs_add_file_entry>
    4df8:	04051463          	bnez	a0,4e40 <fl_fopen+0x398>
    4dfc:	00442583          	lw	a1,4(s0)
    4e00:	6e498513          	addi	a0,s3,1764
    4e04:	fffff097          	auipc	ra,0xfffff
    4e08:	1b4080e7          	jalr	436(ra) # 3fb8 <fatfs_free_cluster_chain>
    4e0c:	dd9ff06f          	j	4be4 <fl_fopen+0x13c>
    4e10:	00040593          	mv	a1,s0
    4e14:	000a8513          	mv	a0,s5
    4e18:	ffffe097          	auipc	ra,0xffffe
    4e1c:	54c080e7          	jalr	1356(ra) # 3364 <_open_directory>
    4e20:	f00518e3          	bnez	a0,4d30 <fl_fopen+0x288>
    4e24:	dc1ff06f          	j	4be4 <fl_fopen+0x13c>
    4e28:	00b00613          	li	a2,11
    4e2c:	00410593          	addi	a1,sp,4
    4e30:	000b8513          	mv	a0,s7
    4e34:	ffffc097          	auipc	ra,0xffffc
    4e38:	5cc080e7          	jalr	1484(ra) # 1400 <memcpy>
    4e3c:	f69ff06f          	j	4da4 <fl_fopen+0x2fc>
    4e40:	fff00793          	li	a5,-1
    4e44:	00042623          	sw	zero,12(s0)
    4e48:	00042423          	sw	zero,8(s0)
    4e4c:	42f42823          	sw	a5,1072(s0)
    4e50:	42042a23          	sw	zero,1076(s0)
    4e54:	00042823          	sw	zero,16(s0)
    4e58:	22f42423          	sw	a5,552(s0)
    4e5c:	22f42623          	sw	a5,556(s0)
    4e60:	6e498513          	addi	a0,s3,1764
    4e64:	ffffe097          	auipc	ra,0xffffe
    4e68:	054080e7          	jalr	84(ra) # 2eb8 <fatfs_fat_purge>
    4e6c:	d89ff06f          	j	4bf4 <fl_fopen+0x14c>
    4e70:	000d0513          	mv	a0,s10
    4e74:	ffffe097          	auipc	ra,0xffffe
    4e78:	69c080e7          	jalr	1692(ra) # 3510 <_open_file>
    4e7c:	00050413          	mv	s0,a0
    4e80:	e80412e3          	bnez	s0,4d04 <fl_fopen+0x25c>
    4e84:	d89ff06f          	j	4c0c <fl_fopen+0x164>
    4e88:	00000413          	li	s0,0
    4e8c:	d91ff06f          	j	4c1c <fl_fopen+0x174>

00004e90 <album_count>:
    4e90:	00000007                                ....

00004e94 <cmd16>:
    4e94:	02000050 00001500                       P.......

00004e9c <acmd41>:
    4e9c:	00004069 00000100                       i@......

00004ea4 <cmd55>:
    4ea4:	00000077 00000100                       w.......

00004eac <cmd8>:
    4eac:	01000048 000087aa                       H.......

00004eb4 <cmd0>:
    4eb4:	00000040 00009500                       @.......

00004ebc <AUDIO>:
    4ebc:	00018000                                ....

00004ec0 <BUTTONS>:
    4ec0:	00010100                                ....

00004ec4 <SDCARD>:
    4ec4:	00010080                                ....

00004ec8 <OLED_RST>:
    4ec8:	00010010                                ....

00004ecc <OLED>:
    4ecc:	00010008                                ....

00004ed0 <LEDS>:
    4ed0:	00010004 00006272 756f532f 2f73646e     ....rb../Sounds/
    4ee0:	63696c63 61722e6b 00000077 756f532f     click.raw.../Sou
    4ef0:	2f73646e 72617473 2e707574 00776172     nds/startup.raw.
    4f00:	68636946 20726569 72746e69 6176756f     Fichier introuva
    4f10:	3a656c62 0a73250a 00000000 7463654c     ble:.%s.....Lect
    4f20:	3a657275 0a73250a 00000000 53554150     ure:.%s.....PAUS
    4f30:	20202045 000a2020 20202020 20202020     E     ..        
    4f40:	20202020 20202020 20202020 20202020                     
    4f50:	0000000a 203d3d3d 75626c41 3d20736d     ....=== Albums =
    4f60:	0a0a3d3d 00000000 000a7325 75637541     ==......%s..Aucu
    4f70:	6966206e 65696863 61642072 0a3a736e     n fichier dans:.
    4f80:	000a7325 203d3d3d 74736950 3d207365     %s..=== Pistes =
    4f90:	0a0a3d3d 00000000 74696e49 2e445320     ==......Init SD.
    4fa0:	000a2e2e 4f204453 000a2e4b 766f632f     ....SD OK.../cov
    4fb0:	722e7265 00007761 206e6946 7463656c     er.raw..Fin lect
    4fc0:	2e657275 0000000a 0000002f 33323130     ure...../...0123
    4fd0:	37363534 42413938 46454443 00000000     456789ABCDEF....
    4fe0:	5f544146 203a5346 6f727245 6f632072     FAT_FS: Error co
    4ff0:	20646c75 20746f6e 64616f6c 54414620     uld not load FAT
    5000:	74656420 736c6961 64252820 0a0d2129      details (%d)!..
    5010:	00000000                                ....

00005014 <font>:
    5014:	00000000 00002f00 00030000 14000003     ...../..........
    5024:	143e143e 3a2b6a2e 08122600 171c3224     >.>..j+:.&..$2..
    5034:	03003415 00000000 0000211e 001e2100     .4.......!...!..
    5044:	08220000 0822081c 0000081c 00002040     .."...".....@ ..
    5054:	00080800 00200000 20000000 02040810     ...... .... ....
    5064:	3f21213f 003f0100 253d0000 25002725     ?!!?..?...=%%'.%
    5074:	003f2525 3f040407 25252700 253f003d     %%?....?.'%%=.?%
    5084:	01003d25 00030539 3f25253f 25252700     %=..9...?%%?.'%%
    5094:	0028003f 40000000 00000028 00110a04     ?.(....@(.......
    50a4:	00141400 0a110000 01000004 0007052d     ............-...
    50b4:	253d213f 09093f1f 253f003f 3f003c27     ?!=%.?..?.?%'<.?
    50c4:	00212121 1e21213f 25253f00 053f0025     !!!.?!!..?%%%.?.
    50d4:	3f000505 003d2521 3f04043f 213f2100     ...?!%=.?..?.!?!
    50e4:	20380000 3f013f21 003b0404 2020203f     ..8 !?.?..;.?   
    50f4:	3f013f00 023f3f01 3f003f04 003f2121     .?.?.??..?.?!!?.
    5104:	0f09093f 31213f00 093f003f 27002f39     ?....?!1?.?.9/.'
    5114:	003d2525 013f0101 20203f01 100f003f     %%=...?..?  ?...
    5124:	3f001f30 3f203f20 3b04043b 38080f00     0..? ? ?;..;...8
    5134:	2931000f 3f002325 00000021 04081020     ..1)%#.?!... ...
    5144:	003f2102 01020000 20000201 00000020     .!?........  ...
    5154:	00000201 24243800 243f003c 3c003c24     .....8$$<.?$$<.<
    5164:	00242424 3f24243c 2c2c3c00 3f04002c     $$$.<$$?.<,,,..?
    5174:	bc000005 00fca4a4 3c04043f 00003d00     ........?..<.=..
    5184:	fd800000 3f000000 00340808 0000003f     .......?..4.?...
    5194:	3c043c00 043c3c04 3c003c04 003c2424     .<.<.<<..<.<$$<.
    51a4:	3c2424fc 24243c00 083c00fc 2c000004     .$$<.<$$..<....,
    51b4:	003c2c2c 00243f04 20203c00 100c003c     ,,<..?$..<  <...
    51c4:	3c001c30 3c203c20 34080834 a0a0bc00     0..< < <4..4....
    51d4:	342400fc 0400242c 0000213f 0000003f     ..$4,$..?!..?...
    51e4:	043f2100 02010000 00000102 00000000     .!?.............
    51f4:	00000001 00000003 00000005 00000007     ................
    5204:	00000009 0000000e 00000010 00000012     ................
    5214:	00000014 00000016 00000018 0000001c     ................
    5224:	0000001e                                ....

00005228 <albums>:
    5228:	626c412f 00316d75 00000000 00000000     /Album1.........
	...
    5268:	626c412f 00326d75 00000000 00000000     /Album2.........
	...
    52a8:	626c412f 00336d75 00000000 00000000     /Album3.........
	...
    52e8:	626c412f 00346d75 00000000 00000000     /Album4.........
	...
    5328:	626c412f 00356d75 00000000 00000000     /Album5.........
	...
    5368:	626c412f 00366d75 00000000 00000000     /Album6.........
	...
    53a8:	626c412f 00376d75 00000000 00000000     /Album7.........
	...
    53e8:	626c412f 00386d75 00000000 00000000     /Album8.........
	...

00005428 <current_track>:
    5428:	00000000                                ....

0000542c <current_album>:
    542c:	00000000                                ....

00005430 <file_count>:
    5430:	00000000                                ....

00005434 <prev_btn>:
    5434:	00000000                                ....

00005438 <sdcard_while_loading_callback>:
    5438:	00000000                                ....

0000543c <back_color>:
	...

0000543d <front_color>:
    543d:	                                         ...

00005440 <cursor_y>:
    5440:	00000000                                ....

00005444 <cursor_x>:
    5444:	00000000                                ....

00005448 <f_putchar>:
    5448:	00000000                                ....

0000544c <_free_file_list>:
	...

00005454 <_open_file_list>:
	...

0000545c <_filelib_valid>:
    545c:	00000000                                ....

00005460 <_filelib_init>:
    5460:	00000000                                ....
