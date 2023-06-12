
simple.riscv:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_start>:
    80000000:	4081                	li	ra,0
    80000002:	4101                	li	sp,0
    80000004:	4181                	li	gp,0
    80000006:	4201                	li	tp,0
    80000008:	4281                	li	t0,0
    8000000a:	4301                	li	t1,0
    8000000c:	4381                	li	t2,0
    8000000e:	4401                	li	s0,0
    80000010:	4481                	li	s1,0
    80000012:	4501                	li	a0,0
    80000014:	4581                	li	a1,0
    80000016:	4601                	li	a2,0
    80000018:	4681                	li	a3,0
    8000001a:	4701                	li	a4,0
    8000001c:	4781                	li	a5,0
    8000001e:	4801                	li	a6,0
    80000020:	4881                	li	a7,0
    80000022:	4901                	li	s2,0
    80000024:	4981                	li	s3,0
    80000026:	4a01                	li	s4,0
    80000028:	4a81                	li	s5,0
    8000002a:	4b01                	li	s6,0
    8000002c:	4b81                	li	s7,0
    8000002e:	4c01                	li	s8,0
    80000030:	4c81                	li	s9,0
    80000032:	4d01                	li	s10,0
    80000034:	4d81                	li	s11,0
    80000036:	4e01                	li	t3,0
    80000038:	4e81                	li	t4,0
    8000003a:	4f01                	li	t5,0
    8000003c:	4f81                	li	t6,0
    8000003e:	62f9                	lui	t0,0x1e
    80000040:	3002a073          	csrs	mstatus,t0
    80000044:	00000297          	auipc	t0,0x0
    80000048:	09028293          	addi	t0,t0,144 # 800000d4 <_start+0xd4>
    8000004c:	30529073          	csrw	mtvec,t0
    80000050:	00301073          	fscsr	zero
    80000054:	f0000053          	fmv.w.x	ft0,zero
    80000058:	f00000d3          	fmv.w.x	ft1,zero
    8000005c:	f0000153          	fmv.w.x	ft2,zero
    80000060:	f00001d3          	fmv.w.x	ft3,zero
    80000064:	f0000253          	fmv.w.x	ft4,zero
    80000068:	f00002d3          	fmv.w.x	ft5,zero
    8000006c:	f0000353          	fmv.w.x	ft6,zero
    80000070:	f00003d3          	fmv.w.x	ft7,zero
    80000074:	f0000453          	fmv.w.x	fs0,zero
    80000078:	f00004d3          	fmv.w.x	fs1,zero
    8000007c:	f0000553          	fmv.w.x	fa0,zero
    80000080:	f00005d3          	fmv.w.x	fa1,zero
    80000084:	f0000653          	fmv.w.x	fa2,zero
    80000088:	f00006d3          	fmv.w.x	fa3,zero
    8000008c:	f0000753          	fmv.w.x	fa4,zero
    80000090:	f00007d3          	fmv.w.x	fa5,zero
    80000094:	f0000853          	fmv.w.x	fa6,zero
    80000098:	f00008d3          	fmv.w.x	fa7,zero
    8000009c:	f0000953          	fmv.w.x	fs2,zero
    800000a0:	f00009d3          	fmv.w.x	fs3,zero
    800000a4:	f0000a53          	fmv.w.x	fs4,zero
    800000a8:	f0000ad3          	fmv.w.x	fs5,zero
    800000ac:	f0000b53          	fmv.w.x	fs6,zero
    800000b0:	f0000bd3          	fmv.w.x	fs7,zero
    800000b4:	f0000c53          	fmv.w.x	fs8,zero
    800000b8:	f0000cd3          	fmv.w.x	fs9,zero
    800000bc:	f0000d53          	fmv.w.x	fs10,zero
    800000c0:	f0000dd3          	fmv.w.x	fs11,zero
    800000c4:	f0000e53          	fmv.w.x	ft8,zero
    800000c8:	f0000ed3          	fmv.w.x	ft9,zero
    800000cc:	f0000f53          	fmv.w.x	ft10,zero
    800000d0:	f0000fd3          	fmv.w.x	ft11,zero
    800000d4:	00001197          	auipc	gp,0x1
    800000d8:	dac18193          	addi	gp,gp,-596 # 80000e80 <__global_pointer$>
    800000dc:	f1402473          	csrr	s0,mhartid
    800000e0:	00f00293          	li	t0,15
    800000e4:	00021217          	auipc	tp,0x21
    800000e8:	f1c20213          	addi	tp,tp,-228 # 80021000 <__stack_start>
    800000ec:	005412b3          	sll	t0,s0,t0
    800000f0:	9216                	add	tp,tp,t0
    800000f2:	62a1                	lui	t0,0x8
    800000f4:	00028293          	mv	t0,t0
    800000f8:	00520133          	add	sp,tp,t0
    800000fc:	00000297          	auipc	t0,0x0
    80000100:	04428293          	addi	t0,t0,68 # 80000140 <trap_entry>
    80000104:	30529073          	csrw	mtvec,t0
    80000108:	158000ef          	jal	ra,80000260 <__init_tls>
    8000010c:	00000293          	li	t0,0
    80000110:	00540463          	beq	s0,t0,80000118 <_start+0x118>
    80000114:	0fc0006f          	j	80000210 <_start_secondary>
    80000118:	81818293          	addi	t0,gp,-2024 # 80000698 <my_c>
    8000011c:	96018313          	addi	t1,gp,-1696 # 800007e0 <__bss_end>
    80000120:	0062f763          	bgeu	t0,t1,8000012e <_start+0x12e>
    80000124:	0002b023          	sd	zero,0(t0)
    80000128:	02a1                	addi	t0,t0,8
    8000012a:	fe62ede3          	bltu	t0,t1,80000124 <_start+0x124>
    8000012e:	00000517          	auipc	a0,0x0
    80000132:	20a50513          	addi	a0,a0,522 # 80000338 <__libc_fini_array>
    80000136:	1cc000ef          	jal	ra,80000302 <atexit>
    8000013a:	236000ef          	jal	ra,80000370 <__libc_init_array>
    8000013e:	a845                	j	800001ee <_start_main>

0000000080000140 <trap_entry>:
    80000140:	34011073          	csrw	mscratch,sp
    80000144:	7111                	addi	sp,sp,-256
    80000146:	e406                	sd	ra,8(sp)
    80000148:	340020f3          	csrr	ra,mscratch
    8000014c:	e806                	sd	ra,16(sp)
    8000014e:	ec0e                	sd	gp,24(sp)
    80000150:	f012                	sd	tp,32(sp)
    80000152:	f416                	sd	t0,40(sp)
    80000154:	f81a                	sd	t1,48(sp)
    80000156:	fc1e                	sd	t2,56(sp)
    80000158:	e0a2                	sd	s0,64(sp)
    8000015a:	e4a6                	sd	s1,72(sp)
    8000015c:	e8aa                	sd	a0,80(sp)
    8000015e:	ecae                	sd	a1,88(sp)
    80000160:	f0b2                	sd	a2,96(sp)
    80000162:	f4b6                	sd	a3,104(sp)
    80000164:	f8ba                	sd	a4,112(sp)
    80000166:	fcbe                	sd	a5,120(sp)
    80000168:	e142                	sd	a6,128(sp)
    8000016a:	e546                	sd	a7,136(sp)
    8000016c:	e94a                	sd	s2,144(sp)
    8000016e:	ed4e                	sd	s3,152(sp)
    80000170:	f152                	sd	s4,160(sp)
    80000172:	f556                	sd	s5,168(sp)
    80000174:	f95a                	sd	s6,176(sp)
    80000176:	fd5e                	sd	s7,184(sp)
    80000178:	e1e2                	sd	s8,192(sp)
    8000017a:	e5e6                	sd	s9,200(sp)
    8000017c:	e9ea                	sd	s10,208(sp)
    8000017e:	edee                	sd	s11,216(sp)
    80000180:	f1f2                	sd	t3,224(sp)
    80000182:	f5f6                	sd	t4,232(sp)
    80000184:	f9fa                	sd	t5,240(sp)
    80000186:	fdfe                	sd	t6,248(sp)
    80000188:	34102573          	csrr	a0,mepc
    8000018c:	342025f3          	csrr	a1,mcause
    80000190:	34302673          	csrr	a2,mtval
    80000194:	868a                	mv	a3,sp
    80000196:	0b4000ef          	jal	ra,8000024a <handle_trap>
    8000019a:	34151073          	csrw	mepc,a0
    8000019e:	000022b7          	lui	t0,0x2
    800001a2:	8002829b          	addiw	t0,t0,-2048
    800001a6:	3002a073          	csrs	mstatus,t0
    800001aa:	60a2                	ld	ra,8(sp)
    800001ac:	61e2                	ld	gp,24(sp)
    800001ae:	7202                	ld	tp,32(sp)
    800001b0:	72a2                	ld	t0,40(sp)
    800001b2:	7342                	ld	t1,48(sp)
    800001b4:	73e2                	ld	t2,56(sp)
    800001b6:	6406                	ld	s0,64(sp)
    800001b8:	64a6                	ld	s1,72(sp)
    800001ba:	6546                	ld	a0,80(sp)
    800001bc:	65e6                	ld	a1,88(sp)
    800001be:	7606                	ld	a2,96(sp)
    800001c0:	76a6                	ld	a3,104(sp)
    800001c2:	7746                	ld	a4,112(sp)
    800001c4:	77e6                	ld	a5,120(sp)
    800001c6:	680a                	ld	a6,128(sp)
    800001c8:	68aa                	ld	a7,136(sp)
    800001ca:	694a                	ld	s2,144(sp)
    800001cc:	69ea                	ld	s3,152(sp)
    800001ce:	7a0a                	ld	s4,160(sp)
    800001d0:	7aaa                	ld	s5,168(sp)
    800001d2:	7b4a                	ld	s6,176(sp)
    800001d4:	7bea                	ld	s7,184(sp)
    800001d6:	6c0e                	ld	s8,192(sp)
    800001d8:	6cae                	ld	s9,200(sp)
    800001da:	6d4e                	ld	s10,208(sp)
    800001dc:	6dee                	ld	s11,216(sp)
    800001de:	7e0e                	ld	t3,224(sp)
    800001e0:	7eae                	ld	t4,232(sp)
    800001e2:	7f4e                	ld	t5,240(sp)
    800001e4:	7fee                	ld	t6,248(sp)
    800001e6:	6142                	ld	sp,16(sp)
    800001e8:	30200073          	mret
	...

00000000800001ee <_start_main>:
    800001ee:	52fd                	li	t0,-1
    800001f0:	0110000f          	fence	w,w
    800001f4:	8451a023          	sw	t0,-1984(gp) # 800006c0 <__boot_sync>
    800001f8:	4505                	li	a0,1
    800001fa:	00000597          	auipc	a1,0x0
    800001fe:	34658593          	addi	a1,a1,838 # 80000540 <__tbss_end>
    80000202:	00000617          	auipc	a2,0x0
    80000206:	47e63603          	ld	a2,1150(a2) # 80000680 <environ>
    8000020a:	02a000ef          	jal	ra,80000234 <main>
    8000020e:	a8fd                	j	8000030c <exit>

0000000080000210 <_start_secondary>:
    80000210:	8401a283          	lw	t0,-1984(gp) # 800006c0 <__boot_sync>
    80000214:	fe028ee3          	beqz	t0,80000210 <_start_secondary>
    80000218:	0220000f          	fence	r,r
    8000021c:	4505                	li	a0,1
    8000021e:	00000597          	auipc	a1,0x0
    80000222:	32258593          	addi	a1,a1,802 # 80000540 <__tbss_end>
    80000226:	00000617          	auipc	a2,0x0
    8000022a:	45a63603          	ld	a2,1114(a2) # 80000680 <environ>
    8000022e:	060000ef          	jal	ra,8000028e <__main>
    80000232:	a8e9                	j	8000030c <exit>

0000000080000234 <main>:
    80000234:	4789                	li	a5,2
    80000236:	82f1a023          	sw	a5,-2016(gp) # 800006a0 <my_a>
    8000023a:	478d                	li	a5,3
    8000023c:	80f1ae23          	sw	a5,-2020(gp) # 8000069c <my_b>
    80000240:	4795                	li	a5,5
    80000242:	80f1ac23          	sw	a5,-2024(gp) # 80000698 <my_c>
    80000246:	4501                	li	a0,0
    80000248:	8082                	ret

000000008000024a <handle_trap>:
    8000024a:	1141                	addi	sp,sp,-16
    8000024c:	02159513          	slli	a0,a1,0x21
    80000250:	e406                	sd	ra,8(sp)
    80000252:	9105                	srli	a0,a0,0x21
    80000254:	0005d463          	bgez	a1,8000025c <handle_trap+0x12>
    80000258:	40a0053b          	negw	a0,a0
    8000025c:	038000ef          	jal	ra,80000294 <_exit>

0000000080000260 <__init_tls>:
    80000260:	1141                	addi	sp,sp,-16
    80000262:	00000613          	li	a2,0
    80000266:	00000597          	auipc	a1,0x0
    8000026a:	2da58593          	addi	a1,a1,730 # 80000540 <__tbss_end>
    8000026e:	8512                	mv	a0,tp
    80000270:	e022                	sd	s0,0(sp)
    80000272:	e406                	sd	ra,8(sp)
    80000274:	8412                	mv	s0,tp
    80000276:	164000ef          	jal	ra,800003da <memcpy>
    8000027a:	00000513          	li	a0,0
    8000027e:	9522                	add	a0,a0,s0
    80000280:	6402                	ld	s0,0(sp)
    80000282:	60a2                	ld	ra,8(sp)
    80000284:	00000613          	li	a2,0
    80000288:	4581                	li	a1,0
    8000028a:	0141                	addi	sp,sp,16
    8000028c:	a295                	j	800003f0 <memset>

000000008000028e <__main>:
    8000028e:	10500073          	wfi
    80000292:	bff5                	j	8000028e <__main>

0000000080000294 <_exit>:
    80000294:	0015179b          	slliw	a5,a0,0x1
    80000298:	0017e793          	ori	a5,a5,1
    8000029c:	2781                	sext.w	a5,a5
    8000029e:	07c2                	slli	a5,a5,0x10
    800002a0:	83c1                	srli	a5,a5,0x10
    800002a2:	00000717          	auipc	a4,0x0
    800002a6:	31e70713          	addi	a4,a4,798 # 800005c0 <tohost>
    800002aa:	00000697          	auipc	a3,0x0
    800002ae:	3006bf23          	sd	zero,798(a3) # 800005c8 <fromhost>
    800002b2:	e31c                	sd	a5,0(a4)
    800002b4:	bfdd                	j	800002aa <_exit+0x16>

00000000800002b6 <htif_syscall>:
    800002b6:	7139                	addi	sp,sp,-64
    800002b8:	e036                	sd	a3,0(sp)
    800002ba:	e42a                	sd	a0,8(sp)
    800002bc:	e82e                	sd	a1,16(sp)
    800002be:	57fd                	li	a5,-1
    800002c0:	ec32                	sd	a2,24(sp)
    800002c2:	83c1                	srli	a5,a5,0x10
    800002c4:	860a                	mv	a2,sp
    800002c6:	8e7d                	and	a2,a2,a5
    800002c8:	82818713          	addi	a4,gp,-2008 # 800006a8 <htif_lock>
    800002cc:	56fd                	li	a3,-1
    800002ce:	431c                	lw	a5,0(a4)
    800002d0:	2781                	sext.w	a5,a5
    800002d2:	fff5                	bnez	a5,800002ce <htif_syscall+0x18>
    800002d4:	0cd727af          	amoswap.w.aq	a5,a3,(a4)
    800002d8:	fbfd                	bnez	a5,800002ce <htif_syscall+0x18>
    800002da:	0110000f          	fence	w,w
    800002de:	00000697          	auipc	a3,0x0
    800002e2:	2e268693          	addi	a3,a3,738 # 800005c0 <tohost>
    800002e6:	e290                	sd	a2,0(a3)
    800002e8:	669c                	ld	a5,8(a3)
    800002ea:	dffd                	beqz	a5,800002e8 <htif_syscall+0x32>
    800002ec:	00000797          	auipc	a5,0x0
    800002f0:	2c07be23          	sd	zero,732(a5) # 800005c8 <fromhost>
    800002f4:	0a07202f          	amoswap.w.rl	zero,zero,(a4)
    800002f8:	0220000f          	fence	r,r
    800002fc:	6502                	ld	a0,0(sp)
    800002fe:	6121                	addi	sp,sp,64
    80000300:	8082                	ret

0000000080000302 <atexit>:
    80000302:	85aa                	mv	a1,a0
    80000304:	4681                	li	a3,0
    80000306:	4601                	li	a2,0
    80000308:	4501                	li	a0,0
    8000030a:	a8dd                	j	80000400 <__register_exitproc>

000000008000030c <exit>:
    8000030c:	1141                	addi	sp,sp,-16
    8000030e:	e022                	sd	s0,0(sp)
    80000310:	e406                	sd	ra,8(sp)
    80000312:	00000797          	auipc	a5,0x0
    80000316:	16878793          	addi	a5,a5,360 # 8000047a <__call_exitprocs>
    8000031a:	842a                	mv	s0,a0
    8000031c:	c781                	beqz	a5,80000324 <exit+0x18>
    8000031e:	4581                	li	a1,0
    80000320:	15a000ef          	jal	ra,8000047a <__call_exitprocs>
    80000324:	00000517          	auipc	a0,0x0
    80000328:	26453503          	ld	a0,612(a0) # 80000588 <_global_impure_ptr>
    8000032c:	653c                	ld	a5,72(a0)
    8000032e:	c391                	beqz	a5,80000332 <exit+0x26>
    80000330:	9782                	jalr	a5
    80000332:	8522                	mv	a0,s0
    80000334:	f61ff0ef          	jal	ra,80000294 <_exit>

0000000080000338 <__libc_fini_array>:
    80000338:	1101                	addi	sp,sp,-32
    8000033a:	00000797          	auipc	a5,0x0
    8000033e:	25678793          	addi	a5,a5,598 # 80000590 <__fini_array_end>
    80000342:	e822                	sd	s0,16(sp)
    80000344:	00000417          	auipc	s0,0x0
    80000348:	24c40413          	addi	s0,s0,588 # 80000590 <__fini_array_end>
    8000034c:	8c1d                	sub	s0,s0,a5
    8000034e:	e426                	sd	s1,8(sp)
    80000350:	ec06                	sd	ra,24(sp)
    80000352:	840d                	srai	s0,s0,0x3
    80000354:	84be                	mv	s1,a5
    80000356:	e411                	bnez	s0,80000362 <__libc_fini_array+0x2a>
    80000358:	60e2                	ld	ra,24(sp)
    8000035a:	6442                	ld	s0,16(sp)
    8000035c:	64a2                	ld	s1,8(sp)
    8000035e:	6105                	addi	sp,sp,32
    80000360:	8082                	ret
    80000362:	147d                	addi	s0,s0,-1
    80000364:	00341793          	slli	a5,s0,0x3
    80000368:	97a6                	add	a5,a5,s1
    8000036a:	639c                	ld	a5,0(a5)
    8000036c:	9782                	jalr	a5
    8000036e:	b7e5                	j	80000356 <__libc_fini_array+0x1e>

0000000080000370 <__libc_init_array>:
    80000370:	1101                	addi	sp,sp,-32
    80000372:	00000797          	auipc	a5,0x0
    80000376:	21e78793          	addi	a5,a5,542 # 80000590 <__fini_array_end>
    8000037a:	e822                	sd	s0,16(sp)
    8000037c:	00000417          	auipc	s0,0x0
    80000380:	21440413          	addi	s0,s0,532 # 80000590 <__fini_array_end>
    80000384:	8c1d                	sub	s0,s0,a5
    80000386:	e426                	sd	s1,8(sp)
    80000388:	e04a                	sd	s2,0(sp)
    8000038a:	ec06                	sd	ra,24(sp)
    8000038c:	840d                	srai	s0,s0,0x3
    8000038e:	4481                	li	s1,0
    80000390:	893e                	mv	s2,a5
    80000392:	02849663          	bne	s1,s0,800003be <__libc_init_array+0x4e>
    80000396:	00000797          	auipc	a5,0x0
    8000039a:	1fa78793          	addi	a5,a5,506 # 80000590 <__fini_array_end>
    8000039e:	00000417          	auipc	s0,0x0
    800003a2:	1f240413          	addi	s0,s0,498 # 80000590 <__fini_array_end>
    800003a6:	8c1d                	sub	s0,s0,a5
    800003a8:	840d                	srai	s0,s0,0x3
    800003aa:	4481                	li	s1,0
    800003ac:	893e                	mv	s2,a5
    800003ae:	00849f63          	bne	s1,s0,800003cc <__libc_init_array+0x5c>
    800003b2:	60e2                	ld	ra,24(sp)
    800003b4:	6442                	ld	s0,16(sp)
    800003b6:	64a2                	ld	s1,8(sp)
    800003b8:	6902                	ld	s2,0(sp)
    800003ba:	6105                	addi	sp,sp,32
    800003bc:	8082                	ret
    800003be:	00349793          	slli	a5,s1,0x3
    800003c2:	97ca                	add	a5,a5,s2
    800003c4:	639c                	ld	a5,0(a5)
    800003c6:	0485                	addi	s1,s1,1
    800003c8:	9782                	jalr	a5
    800003ca:	b7e1                	j	80000392 <__libc_init_array+0x22>
    800003cc:	00349793          	slli	a5,s1,0x3
    800003d0:	97ca                	add	a5,a5,s2
    800003d2:	639c                	ld	a5,0(a5)
    800003d4:	0485                	addi	s1,s1,1
    800003d6:	9782                	jalr	a5
    800003d8:	bfd9                	j	800003ae <__libc_init_array+0x3e>

00000000800003da <memcpy>:
    800003da:	832a                	mv	t1,a0
    800003dc:	ca09                	beqz	a2,800003ee <memcpy+0x14>
    800003de:	00058383          	lb	t2,0(a1)
    800003e2:	00730023          	sb	t2,0(t1)
    800003e6:	167d                	addi	a2,a2,-1
    800003e8:	0305                	addi	t1,t1,1
    800003ea:	0585                	addi	a1,a1,1
    800003ec:	fa6d                	bnez	a2,800003de <memcpy+0x4>
    800003ee:	8082                	ret

00000000800003f0 <memset>:
    800003f0:	832a                	mv	t1,a0
    800003f2:	c611                	beqz	a2,800003fe <memset+0xe>
    800003f4:	00b30023          	sb	a1,0(t1)
    800003f8:	167d                	addi	a2,a2,-1
    800003fa:	0305                	addi	t1,t1,1
    800003fc:	fe65                	bnez	a2,800003f4 <memset+0x4>
    800003fe:	8082                	ret

0000000080000400 <__register_exitproc>:
    80000400:	88aa                	mv	a7,a0
    80000402:	83818513          	addi	a0,gp,-1992 # 800006b8 <_global_atexit>
    80000406:	611c                	ld	a5,0(a0)
    80000408:	ef91                	bnez	a5,80000424 <__register_exitproc+0x24>
    8000040a:	84818713          	addi	a4,gp,-1976 # 800006c8 <_global_atexit0>
    8000040e:	e118                	sd	a4,0(a0)
    80000410:	80000517          	auipc	a0,0x80000
    80000414:	bf050513          	addi	a0,a0,-1040 # 0 <__boot_hart>
    80000418:	87ba                	mv	a5,a4
    8000041a:	c509                	beqz	a0,80000424 <__register_exitproc+0x24>
    8000041c:	611c                	ld	a5,0(a0)
    8000041e:	10f73823          	sd	a5,272(a4)
    80000422:	87ba                	mv	a5,a4
    80000424:	4798                	lw	a4,8(a5)
    80000426:	487d                	li	a6,31
    80000428:	557d                	li	a0,-1
    8000042a:	04e84763          	blt	a6,a4,80000478 <__register_exitproc+0x78>
    8000042e:	02088d63          	beqz	a7,80000468 <__register_exitproc+0x68>
    80000432:	1107b803          	ld	a6,272(a5)
    80000436:	04080163          	beqz	a6,80000478 <__register_exitproc+0x78>
    8000043a:	00371513          	slli	a0,a4,0x3
    8000043e:	9542                	add	a0,a0,a6
    80000440:	e110                	sd	a2,0(a0)
    80000442:	20082303          	lw	t1,512(a6)
    80000446:	4605                	li	a2,1
    80000448:	00e6163b          	sllw	a2,a2,a4
    8000044c:	00c36333          	or	t1,t1,a2
    80000450:	20682023          	sw	t1,512(a6)
    80000454:	10d53023          	sd	a3,256(a0)
    80000458:	4689                	li	a3,2
    8000045a:	00d89763          	bne	a7,a3,80000468 <__register_exitproc+0x68>
    8000045e:	20482683          	lw	a3,516(a6)
    80000462:	8e55                	or	a2,a2,a3
    80000464:	20c82223          	sw	a2,516(a6)
    80000468:	0017069b          	addiw	a3,a4,1
    8000046c:	0709                	addi	a4,a4,2
    8000046e:	070e                	slli	a4,a4,0x3
    80000470:	c794                	sw	a3,8(a5)
    80000472:	97ba                	add	a5,a5,a4
    80000474:	e38c                	sd	a1,0(a5)
    80000476:	4501                	li	a0,0
    80000478:	8082                	ret

000000008000047a <__call_exitprocs>:
    8000047a:	715d                	addi	sp,sp,-80
    8000047c:	f44e                	sd	s3,40(sp)
    8000047e:	f052                	sd	s4,32(sp)
    80000480:	ec56                	sd	s5,24(sp)
    80000482:	e85a                	sd	s6,16(sp)
    80000484:	e486                	sd	ra,72(sp)
    80000486:	e0a2                	sd	s0,64(sp)
    80000488:	fc26                	sd	s1,56(sp)
    8000048a:	f84a                	sd	s2,48(sp)
    8000048c:	e45e                	sd	s7,8(sp)
    8000048e:	8a2a                	mv	s4,a0
    80000490:	89ae                	mv	s3,a1
    80000492:	83818a93          	addi	s5,gp,-1992 # 800006b8 <_global_atexit>
    80000496:	4b05                	li	s6,1
    80000498:	000ab403          	ld	s0,0(s5)
    8000049c:	c819                	beqz	s0,800004b2 <__call_exitprocs+0x38>
    8000049e:	4404                	lw	s1,8(s0)
    800004a0:	11043903          	ld	s2,272(s0)
    800004a4:	34fd                	addiw	s1,s1,-1
    800004a6:	02049713          	slli	a4,s1,0x20
    800004aa:	0004879b          	sext.w	a5,s1
    800004ae:	00075d63          	bgez	a4,800004c8 <__call_exitprocs+0x4e>
    800004b2:	60a6                	ld	ra,72(sp)
    800004b4:	6406                	ld	s0,64(sp)
    800004b6:	74e2                	ld	s1,56(sp)
    800004b8:	7942                	ld	s2,48(sp)
    800004ba:	79a2                	ld	s3,40(sp)
    800004bc:	7a02                	ld	s4,32(sp)
    800004be:	6ae2                	ld	s5,24(sp)
    800004c0:	6b42                	ld	s6,16(sp)
    800004c2:	6ba2                	ld	s7,8(sp)
    800004c4:	6161                	addi	sp,sp,80
    800004c6:	8082                	ret
    800004c8:	00098d63          	beqz	s3,800004e2 <__call_exitprocs+0x68>
    800004cc:	00091463          	bnez	s2,800004d4 <__call_exitprocs+0x5a>
    800004d0:	14fd                	addi	s1,s1,-1
    800004d2:	bfd1                	j	800004a6 <__call_exitprocs+0x2c>
    800004d4:	00349713          	slli	a4,s1,0x3
    800004d8:	974a                	add	a4,a4,s2
    800004da:	10073703          	ld	a4,256(a4)
    800004de:	ff3719e3          	bne	a4,s3,800004d0 <__call_exitprocs+0x56>
    800004e2:	4418                	lw	a4,8(s0)
    800004e4:	00349613          	slli	a2,s1,0x3
    800004e8:	00c405b3          	add	a1,s0,a2
    800004ec:	377d                	addiw	a4,a4,-1
    800004ee:	6994                	ld	a3,16(a1)
    800004f0:	02f71863          	bne	a4,a5,80000520 <__call_exitprocs+0xa6>
    800004f4:	c41c                	sw	a5,8(s0)
    800004f6:	dee9                	beqz	a3,800004d0 <__call_exitprocs+0x56>
    800004f8:	00842b83          	lw	s7,8(s0)
    800004fc:	00090963          	beqz	s2,8000050e <__call_exitprocs+0x94>
    80000500:	20092703          	lw	a4,512(s2)
    80000504:	00fb17bb          	sllw	a5,s6,a5
    80000508:	8f7d                	and	a4,a4,a5
    8000050a:	2701                	sext.w	a4,a4
    8000050c:	ef09                	bnez	a4,80000526 <__call_exitprocs+0xac>
    8000050e:	9682                	jalr	a3
    80000510:	4418                	lw	a4,8(s0)
    80000512:	000ab783          	ld	a5,0(s5)
    80000516:	f97711e3          	bne	a4,s7,80000498 <__call_exitprocs+0x1e>
    8000051a:	faf40be3          	beq	s0,a5,800004d0 <__call_exitprocs+0x56>
    8000051e:	bfad                	j	80000498 <__call_exitprocs+0x1e>
    80000520:	0005b823          	sd	zero,16(a1)
    80000524:	bfc9                	j	800004f6 <__call_exitprocs+0x7c>
    80000526:	20492703          	lw	a4,516(s2)
    8000052a:	964a                	add	a2,a2,s2
    8000052c:	620c                	ld	a1,0(a2)
    8000052e:	8ff9                	and	a5,a5,a4
    80000530:	2781                	sext.w	a5,a5
    80000532:	e781                	bnez	a5,8000053a <__call_exitprocs+0xc0>
    80000534:	8552                	mv	a0,s4
    80000536:	9682                	jalr	a3
    80000538:	bfe1                	j	80000510 <__call_exitprocs+0x96>
    8000053a:	852e                	mv	a0,a1
    8000053c:	9682                	jalr	a3
    8000053e:	bfc9                	j	80000510 <__call_exitprocs+0x96>
