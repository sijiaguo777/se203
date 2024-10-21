
test:     file format elf32-littlearm


Disassembly of section .text:

20000000 <_start>:
20000000:	f5a3 3a80 	sub.w	sl, r3, #65536	@ 0x10000
20000004:	4770      	bx	lr  
20000006:	bf00      	nop

20000008 <_mainCRTStartup>:
20000008:	4b17      	ldr	r3, [pc, #92]	@ (20000068 <_mainCRTStartup+0x60>)
2000000a:	2b00      	cmp	r3, #0
2000000c:	bf08      	it	eq
2000000e:	4b13      	ldreq	r3, [pc, #76]	@ (2000005c <_mainCRTStartup+0x54>)
20000010:	469d      	mov	sp, r3
20000012:	f7ff fff5 	bl	20000000 <_start>
20000016:	2100      	movs	r1, #0
20000018:	468b      	mov	fp, r1
2000001a:	460f      	mov	r7, r1
2000001c:	4813      	ldr	r0, [pc, #76]	@ (2000006c <_mainCRTStartup+0x64>)
2000001e:	4a14      	ldr	r2, [pc, #80]	@ (20000070 <_mainCRTStartup+0x68>)
20000020:	1a12      	subs	r2, r2, r0
20000022:	f000 f9ff 	bl	20000424 <memset>
20000026:	4b0e      	ldr	r3, [pc, #56]	@ (20000060 <_mainCRTStartup+0x58>)
20000028:	2b00      	cmp	r3, #0
2000002a:	d000      	beq.n	2000002e <_mainCRTStartup+0x26>
2000002c:	4798      	blx	r3
2000002e:	4b0d      	ldr	r3, [pc, #52]	@ (20000064 <_mainCRTStartup+0x5c>)
20000030:	2b00      	cmp	r3, #0
20000032:	d000      	beq.n	20000036 <_mainCRTStartup+0x2e>
20000034:	4798      	blx	r3
20000036:	2000      	movs	r0, #0
20000038:	2100      	movs	r1, #0
2000003a:	0004      	movs	r4, r0
2000003c:	000d      	movs	r5, r1
2000003e:	480d      	ldr	r0, [pc, #52]	@ (20000074 <_mainCRTStartup+0x6c>)
20000040:	2800      	cmp	r0, #0
20000042:	d002      	beq.n	2000004a <_mainCRTStartup+0x42>
20000044:	480c      	ldr	r0, [pc, #48]	@ (20000078 <_mainCRTStartup+0x70>)
20000046:	f000 fae5 	bl	20000614 <atexit>
2000004a:	f000 fa3d 	bl	200004c8 <__libc_init_array>
2000004e:	0020      	movs	r0, r4
20000050:	0029      	movs	r1, r5
20000052:	f000 f813 	bl	2000007c <main>
20000056:	f000 f869 	bl	2000012c <exit>
2000005a:	bf00      	nop
2000005c:	00080000 	.word	0x00080000
	...
2000006c:	200019e4 	.word	0x200019e4
20000070:	20001d28 	.word	0x20001d28
20000074:	20000615 	.word	0x20000615
20000078:	20001099 	.word	0x20001099

2000007c <main>:
int main(void) {
    // Boucle infinie
    while (1) {
2000007c:	e7fe      	b.n	2000007c <main>

2000007e <_exit>:
#include <sys/types.h>
#include <sys/stat.h>

void _exit(int a) {while(1);}
2000007e:	e7fe      	b.n	2000007e <_exit>

20000080 <_sbrk>:
void *_sbrk(int a) {}
20000080:	4770      	bx	lr

20000082 <_write>:
int _write(int fd, const void *buf, size_t count) {}
20000082:	4770      	bx	lr

20000084 <_close>:
int _close(int fd) {}
20000084:	4770      	bx	lr

20000086 <_fstat>:
int _fstat(int fd, struct stat *buf) {}
20000086:	4770      	bx	lr

20000088 <_isatty>:
int _isatty(int fd) {}
20000088:	4770      	bx	lr

2000008a <_lseek>:
off_t _lseek(int fd, off_t offset, int whence) {}
2000008a:	4770      	bx	lr

2000008c <_read>:
ssize_t _read(int fd, void *buf, size_t count) {}
2000008c:	4770      	bx	lr

2000008e <_kill>:
int _kill(int pid, int sig) {}
2000008e:	4770      	bx	lr

20000090 <_getpid>:
pid_t _getpid(void) {}
20000090:	4770      	bx	lr

20000092 <Default_Handler>:

// Remove this from stubs.c if it exists
void Default_Handler(void) {
    while (1);
20000092:	e7fe      	b.n	20000092 <Default_Handler>

20000094 <deregister_tm_clones>:
20000094:	4803      	ldr	r0, [pc, #12]	@ (200000a4 <deregister_tm_clones+0x10>)
20000096:	4b04      	ldr	r3, [pc, #16]	@ (200000a8 <deregister_tm_clones+0x14>)
20000098:	4283      	cmp	r3, r0
2000009a:	d002      	beq.n	200000a2 <deregister_tm_clones+0xe>
2000009c:	4b03      	ldr	r3, [pc, #12]	@ (200000ac <deregister_tm_clones+0x18>)
2000009e:	b103      	cbz	r3, 200000a2 <deregister_tm_clones+0xe>
200000a0:	4718      	bx	r3
200000a2:	4770      	bx	lr
200000a4:	200019e0 	.word	0x200019e0
200000a8:	200019e0 	.word	0x200019e0
200000ac:	00000000 	.word	0x00000000

200000b0 <register_tm_clones>:
200000b0:	4805      	ldr	r0, [pc, #20]	@ (200000c8 <register_tm_clones+0x18>)
200000b2:	4b06      	ldr	r3, [pc, #24]	@ (200000cc <register_tm_clones+0x1c>)
200000b4:	1a1b      	subs	r3, r3, r0
200000b6:	0fd9      	lsrs	r1, r3, #31
200000b8:	eb01 01a3 	add.w	r1, r1, r3, asr #2
200000bc:	1049      	asrs	r1, r1, #1
200000be:	d002      	beq.n	200000c6 <register_tm_clones+0x16>
200000c0:	4b03      	ldr	r3, [pc, #12]	@ (200000d0 <register_tm_clones+0x20>)
200000c2:	b103      	cbz	r3, 200000c6 <register_tm_clones+0x16>
200000c4:	4718      	bx	r3
200000c6:	4770      	bx	lr
200000c8:	200019e0 	.word	0x200019e0
200000cc:	200019e0 	.word	0x200019e0
200000d0:	00000000 	.word	0x00000000

200000d4 <__do_global_dtors_aux>:
200000d4:	b510      	push	{r4, lr}
200000d6:	4c06      	ldr	r4, [pc, #24]	@ (200000f0 <__do_global_dtors_aux+0x1c>)
200000d8:	7823      	ldrb	r3, [r4, #0]
200000da:	b943      	cbnz	r3, 200000ee <__do_global_dtors_aux+0x1a>
200000dc:	f7ff ffda 	bl	20000094 <deregister_tm_clones>
200000e0:	4b04      	ldr	r3, [pc, #16]	@ (200000f4 <__do_global_dtors_aux+0x20>)
200000e2:	b113      	cbz	r3, 200000ea <__do_global_dtors_aux+0x16>
200000e4:	4804      	ldr	r0, [pc, #16]	@ (200000f8 <__do_global_dtors_aux+0x24>)
200000e6:	f3af 8000 	nop.w
200000ea:	2301      	movs	r3, #1
200000ec:	7023      	strb	r3, [r4, #0]
200000ee:	bd10      	pop	{r4, pc}
200000f0:	200019e4 	.word	0x200019e4
200000f4:	00000000 	.word	0x00000000
200000f8:	2000145c 	.word	0x2000145c

200000fc <frame_dummy>:
200000fc:	b508      	push	{r3, lr}
200000fe:	4b05      	ldr	r3, [pc, #20]	@ (20000114 <frame_dummy+0x18>)
20000100:	b11b      	cbz	r3, 2000010a <frame_dummy+0xe>
20000102:	4905      	ldr	r1, [pc, #20]	@ (20000118 <frame_dummy+0x1c>)
20000104:	4805      	ldr	r0, [pc, #20]	@ (2000011c <frame_dummy+0x20>)
20000106:	f3af 8000 	nop.w
2000010a:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
2000010e:	f7ff bfcf 	b.w	200000b0 <register_tm_clones>
20000112:	bf00      	nop
20000114:	00000000 	.word	0x00000000
20000118:	200019e8 	.word	0x200019e8
2000011c:	2000145c 	.word	0x2000145c

20000120 <Infinite_Loop>:
    .section .text.Default_Handler,"ax",%progbits
    .weak Default_Handler

Default_Handler:
    Infinite_Loop:
    b  Infinite_Loop
20000120:	e7fe      	b.n	20000120 <Infinite_Loop>

20000122 <Reset_Handler>:
    .weak Reset_Handler
    .type Reset_Handler, %function
Reset_Handler:
    /* 在此初始化BSS和数据段 */
    /* 初始化完后调用 main 函数 */
    bl main
20000122:	f7ff ffab 	bl	2000007c <main>
    b Default_Handler
20000126:	f7ff bfb4 	b.w	20000092 <Default_Handler>
	...

2000012c <exit>:
2000012c:	b508      	push	{r3, lr}
2000012e:	2100      	movs	r1, #0
20000130:	4604      	mov	r4, r0
20000132:	f000 fa0f 	bl	20000554 <__call_exitprocs>
20000136:	4b03      	ldr	r3, [pc, #12]	@ (20000144 <exit+0x18>)
20000138:	681b      	ldr	r3, [r3, #0]
2000013a:	b103      	cbz	r3, 2000013e <exit+0x12>
2000013c:	4798      	blx	r3
2000013e:	4620      	mov	r0, r4
20000140:	f7ff ff9d 	bl	2000007e <_exit>
20000144:	20001b38 	.word	0x20001b38

20000148 <stdio_exit_handler>:
20000148:	4a02      	ldr	r2, [pc, #8]	@ (20000154 <stdio_exit_handler+0xc>)
2000014a:	4903      	ldr	r1, [pc, #12]	@ (20000158 <stdio_exit_handler+0x10>)
2000014c:	4803      	ldr	r0, [pc, #12]	@ (2000015c <stdio_exit_handler+0x14>)
2000014e:	f000 bd25 	b.w	20000b9c <_fwalk_sglue>
20000152:	bf00      	nop
20000154:	2000146c 	.word	0x2000146c
20000158:	20000be1 	.word	0x20000be1
2000015c:	20001480 	.word	0x20001480

20000160 <cleanup_stdio>:
20000160:	4b0c      	ldr	r3, [pc, #48]	@ (20000194 <cleanup_stdio+0x34>)
20000162:	6841      	ldr	r1, [r0, #4]
20000164:	4299      	cmp	r1, r3
20000166:	b510      	push	{r4, lr}
20000168:	4604      	mov	r4, r0
2000016a:	d001      	beq.n	20000170 <cleanup_stdio+0x10>
2000016c:	f000 fd38 	bl	20000be0 <_fclose_r>
20000170:	68a1      	ldr	r1, [r4, #8]
20000172:	4b09      	ldr	r3, [pc, #36]	@ (20000198 <cleanup_stdio+0x38>)
20000174:	4299      	cmp	r1, r3
20000176:	d002      	beq.n	2000017e <cleanup_stdio+0x1e>
20000178:	4620      	mov	r0, r4
2000017a:	f000 fd31 	bl	20000be0 <_fclose_r>
2000017e:	68e1      	ldr	r1, [r4, #12]
20000180:	4b06      	ldr	r3, [pc, #24]	@ (2000019c <cleanup_stdio+0x3c>)
20000182:	4299      	cmp	r1, r3
20000184:	d004      	beq.n	20000190 <cleanup_stdio+0x30>
20000186:	4620      	mov	r0, r4
20000188:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
2000018c:	f000 bd28 	b.w	20000be0 <_fclose_r>
20000190:	bd10      	pop	{r4, pc}
20000192:	bf00      	nop
20000194:	20001a00 	.word	0x20001a00
20000198:	20001a68 	.word	0x20001a68
2000019c:	20001ad0 	.word	0x20001ad0

200001a0 <__fp_lock>:
200001a0:	b508      	push	{r3, lr}
200001a2:	6e4b      	ldr	r3, [r1, #100]	@ 0x64
200001a4:	07da      	lsls	r2, r3, #31
200001a6:	d402      	bmi.n	200001ae <__fp_lock+0xe>
200001a8:	898b      	ldrh	r3, [r1, #12]
200001aa:	059b      	lsls	r3, r3, #22
200001ac:	d501      	bpl.n	200001b2 <__fp_lock+0x12>
200001ae:	2000      	movs	r0, #0
200001b0:	bd08      	pop	{r3, pc}
200001b2:	6d88      	ldr	r0, [r1, #88]	@ 0x58
200001b4:	f000 f9ba 	bl	2000052c <__retarget_lock_acquire_recursive>
200001b8:	2000      	movs	r0, #0
200001ba:	bd08      	pop	{r3, pc}

200001bc <__fp_unlock>:
200001bc:	b508      	push	{r3, lr}
200001be:	6e4b      	ldr	r3, [r1, #100]	@ 0x64
200001c0:	07da      	lsls	r2, r3, #31
200001c2:	d402      	bmi.n	200001ca <__fp_unlock+0xe>
200001c4:	898b      	ldrh	r3, [r1, #12]
200001c6:	059b      	lsls	r3, r3, #22
200001c8:	d501      	bpl.n	200001ce <__fp_unlock+0x12>
200001ca:	2000      	movs	r0, #0
200001cc:	bd08      	pop	{r3, pc}
200001ce:	6d88      	ldr	r0, [r1, #88]	@ 0x58
200001d0:	f000 f9b4 	bl	2000053c <__retarget_lock_release_recursive>
200001d4:	2000      	movs	r0, #0
200001d6:	bd08      	pop	{r3, pc}

200001d8 <global_stdio_init.part.0>:
200001d8:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
200001dc:	4a31      	ldr	r2, [pc, #196]	@ (200002a4 <global_stdio_init.part.0+0xcc>)
200001de:	4c32      	ldr	r4, [pc, #200]	@ (200002a8 <global_stdio_init.part.0+0xd0>)
200001e0:	4932      	ldr	r1, [pc, #200]	@ (200002ac <global_stdio_init.part.0+0xd4>)
200001e2:	f8df 90dc 	ldr.w	r9, [pc, #220]	@ 200002c0 <global_stdio_init.part.0+0xe8>
200001e6:	f8df 80dc 	ldr.w	r8, [pc, #220]	@ 200002c4 <global_stdio_init.part.0+0xec>
200001ea:	4f31      	ldr	r7, [pc, #196]	@ (200002b0 <global_stdio_init.part.0+0xd8>)
200001ec:	6011      	str	r1, [r2, #0]
200001ee:	2500      	movs	r5, #0
200001f0:	2304      	movs	r3, #4
200001f2:	4629      	mov	r1, r5
200001f4:	2208      	movs	r2, #8
200001f6:	f104 005c 	add.w	r0, r4, #92	@ 0x5c
200001fa:	e9c4 3503 	strd	r3, r5, [r4, #12]
200001fe:	4e2d      	ldr	r6, [pc, #180]	@ (200002b4 <global_stdio_init.part.0+0xdc>)
20000200:	60a5      	str	r5, [r4, #8]
20000202:	e9c4 5500 	strd	r5, r5, [r4]
20000206:	e9c4 5505 	strd	r5, r5, [r4, #20]
2000020a:	6665      	str	r5, [r4, #100]	@ 0x64
2000020c:	f000 f90a 	bl	20000424 <memset>
20000210:	f104 0058 	add.w	r0, r4, #88	@ 0x58
20000214:	e9c4 4907 	strd	r4, r9, [r4, #28]
20000218:	e9c4 8709 	strd	r8, r7, [r4, #36]	@ 0x24
2000021c:	62e6      	str	r6, [r4, #44]	@ 0x2c
2000021e:	f000 f97d 	bl	2000051c <__retarget_lock_init_recursive>
20000222:	4629      	mov	r1, r5
20000224:	4b24      	ldr	r3, [pc, #144]	@ (200002b8 <global_stdio_init.part.0+0xe0>)
20000226:	6763      	str	r3, [r4, #116]	@ 0x74
20000228:	2208      	movs	r2, #8
2000022a:	f104 00c4 	add.w	r0, r4, #196	@ 0xc4
2000022e:	e9c4 551a 	strd	r5, r5, [r4, #104]	@ 0x68
20000232:	e9c4 551e 	strd	r5, r5, [r4, #120]	@ 0x78
20000236:	6725      	str	r5, [r4, #112]	@ 0x70
20000238:	f8c4 50cc 	str.w	r5, [r4, #204]	@ 0xcc
2000023c:	f8c4 5080 	str.w	r5, [r4, #128]	@ 0x80
20000240:	f000 f8f0 	bl	20000424 <memset>
20000244:	f104 0368 	add.w	r3, r4, #104	@ 0x68
20000248:	f104 00c0 	add.w	r0, r4, #192	@ 0xc0
2000024c:	f8c4 3084 	str.w	r3, [r4, #132]	@ 0x84
20000250:	e9c4 9822 	strd	r9, r8, [r4, #136]	@ 0x88
20000254:	e9c4 7624 	strd	r7, r6, [r4, #144]	@ 0x90
20000258:	f000 f960 	bl	2000051c <__retarget_lock_init_recursive>
2000025c:	4b17      	ldr	r3, [pc, #92]	@ (200002bc <global_stdio_init.part.0+0xe4>)
2000025e:	f8c4 30dc 	str.w	r3, [r4, #220]	@ 0xdc
20000262:	4629      	mov	r1, r5
20000264:	f504 7096 	add.w	r0, r4, #300	@ 0x12c
20000268:	2208      	movs	r2, #8
2000026a:	e9c4 5534 	strd	r5, r5, [r4, #208]	@ 0xd0
2000026e:	e9c4 5538 	strd	r5, r5, [r4, #224]	@ 0xe0
20000272:	f8c4 50d8 	str.w	r5, [r4, #216]	@ 0xd8
20000276:	f8c4 5134 	str.w	r5, [r4, #308]	@ 0x134
2000027a:	f8c4 50e8 	str.w	r5, [r4, #232]	@ 0xe8
2000027e:	f000 f8d1 	bl	20000424 <memset>
20000282:	f104 03d0 	add.w	r3, r4, #208	@ 0xd0
20000286:	e9c4 873d 	strd	r8, r7, [r4, #244]	@ 0xf4
2000028a:	f8c4 90f0 	str.w	r9, [r4, #240]	@ 0xf0
2000028e:	f504 7094 	add.w	r0, r4, #296	@ 0x128
20000292:	f8c4 60fc 	str.w	r6, [r4, #252]	@ 0xfc
20000296:	f8c4 30ec 	str.w	r3, [r4, #236]	@ 0xec
2000029a:	e8bd 43f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
2000029e:	f000 b93d 	b.w	2000051c <__retarget_lock_init_recursive>
200002a2:	bf00      	nop
200002a4:	20001b38 	.word	0x20001b38
200002a8:	20001a00 	.word	0x20001a00
200002ac:	20000149 	.word	0x20000149
200002b0:	20000f19 	.word	0x20000f19
200002b4:	20000f3d 	.word	0x20000f3d
200002b8:	00010009 	.word	0x00010009
200002bc:	00020012 	.word	0x00020012
200002c0:	20000eb1 	.word	0x20000eb1
200002c4:	20000ed9 	.word	0x20000ed9

200002c8 <__sfp>:
200002c8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
200002ca:	4606      	mov	r6, r0
200002cc:	482a      	ldr	r0, [pc, #168]	@ (20000378 <__sfp+0xb0>)
200002ce:	f000 f92d 	bl	2000052c <__retarget_lock_acquire_recursive>
200002d2:	4b2a      	ldr	r3, [pc, #168]	@ (2000037c <__sfp+0xb4>)
200002d4:	681b      	ldr	r3, [r3, #0]
200002d6:	2b00      	cmp	r3, #0
200002d8:	d043      	beq.n	20000362 <__sfp+0x9a>
200002da:	4f29      	ldr	r7, [pc, #164]	@ (20000380 <__sfp+0xb8>)
200002dc:	e9d7 3401 	ldrd	r3, r4, [r7, #4]
200002e0:	3b01      	subs	r3, #1
200002e2:	d504      	bpl.n	200002ee <__sfp+0x26>
200002e4:	e024      	b.n	20000330 <__sfp+0x68>
200002e6:	1c5a      	adds	r2, r3, #1
200002e8:	f104 0468 	add.w	r4, r4, #104	@ 0x68
200002ec:	d020      	beq.n	20000330 <__sfp+0x68>
200002ee:	f9b4 500c 	ldrsh.w	r5, [r4, #12]
200002f2:	3b01      	subs	r3, #1
200002f4:	2d00      	cmp	r5, #0
200002f6:	d1f6      	bne.n	200002e6 <__sfp+0x1e>
200002f8:	4b22      	ldr	r3, [pc, #136]	@ (20000384 <__sfp+0xbc>)
200002fa:	60e3      	str	r3, [r4, #12]
200002fc:	f104 0058 	add.w	r0, r4, #88	@ 0x58
20000300:	6665      	str	r5, [r4, #100]	@ 0x64
20000302:	f000 f90b 	bl	2000051c <__retarget_lock_init_recursive>
20000306:	481c      	ldr	r0, [pc, #112]	@ (20000378 <__sfp+0xb0>)
20000308:	f000 f918 	bl	2000053c <__retarget_lock_release_recursive>
2000030c:	e9c4 5501 	strd	r5, r5, [r4, #4]
20000310:	e9c4 5504 	strd	r5, r5, [r4, #16]
20000314:	2208      	movs	r2, #8
20000316:	6025      	str	r5, [r4, #0]
20000318:	61a5      	str	r5, [r4, #24]
2000031a:	4629      	mov	r1, r5
2000031c:	f104 005c 	add.w	r0, r4, #92	@ 0x5c
20000320:	f000 f880 	bl	20000424 <memset>
20000324:	e9c4 550c 	strd	r5, r5, [r4, #48]	@ 0x30
20000328:	e9c4 5511 	strd	r5, r5, [r4, #68]	@ 0x44
2000032c:	4620      	mov	r0, r4
2000032e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
20000330:	683d      	ldr	r5, [r7, #0]
20000332:	b10d      	cbz	r5, 20000338 <__sfp+0x70>
20000334:	462f      	mov	r7, r5
20000336:	e7d1      	b.n	200002dc <__sfp+0x14>
20000338:	f44f 71d6 	mov.w	r1, #428	@ 0x1ac
2000033c:	4630      	mov	r0, r6
2000033e:	f000 f96f 	bl	20000620 <_malloc_r>
20000342:	4604      	mov	r4, r0
20000344:	b180      	cbz	r0, 20000368 <__sfp+0xa0>
20000346:	2304      	movs	r3, #4
20000348:	e9c0 5300 	strd	r5, r3, [r0]
2000034c:	300c      	adds	r0, #12
2000034e:	4629      	mov	r1, r5
20000350:	60a0      	str	r0, [r4, #8]
20000352:	f44f 72d0 	mov.w	r2, #416	@ 0x1a0
20000356:	4625      	mov	r5, r4
20000358:	f000 f864 	bl	20000424 <memset>
2000035c:	603c      	str	r4, [r7, #0]
2000035e:	462f      	mov	r7, r5
20000360:	e7bc      	b.n	200002dc <__sfp+0x14>
20000362:	f7ff ff39 	bl	200001d8 <global_stdio_init.part.0>
20000366:	e7b8      	b.n	200002da <__sfp+0x12>
20000368:	4803      	ldr	r0, [pc, #12]	@ (20000378 <__sfp+0xb0>)
2000036a:	603c      	str	r4, [r7, #0]
2000036c:	f000 f8e6 	bl	2000053c <__retarget_lock_release_recursive>
20000370:	230c      	movs	r3, #12
20000372:	6033      	str	r3, [r6, #0]
20000374:	e7da      	b.n	2000032c <__sfp+0x64>
20000376:	bf00      	nop
20000378:	20001b58 	.word	0x20001b58
2000037c:	20001b38 	.word	0x20001b38
20000380:	2000146c 	.word	0x2000146c
20000384:	ffff0001 	.word	0xffff0001

20000388 <__sinit>:
20000388:	b510      	push	{r4, lr}
2000038a:	4604      	mov	r4, r0
2000038c:	480a      	ldr	r0, [pc, #40]	@ (200003b8 <__sinit+0x30>)
2000038e:	f000 f8cd 	bl	2000052c <__retarget_lock_acquire_recursive>
20000392:	6b63      	ldr	r3, [r4, #52]	@ 0x34
20000394:	b923      	cbnz	r3, 200003a0 <__sinit+0x18>
20000396:	4b09      	ldr	r3, [pc, #36]	@ (200003bc <__sinit+0x34>)
20000398:	4a09      	ldr	r2, [pc, #36]	@ (200003c0 <__sinit+0x38>)
2000039a:	681b      	ldr	r3, [r3, #0]
2000039c:	6362      	str	r2, [r4, #52]	@ 0x34
2000039e:	b123      	cbz	r3, 200003aa <__sinit+0x22>
200003a0:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
200003a4:	4804      	ldr	r0, [pc, #16]	@ (200003b8 <__sinit+0x30>)
200003a6:	f000 b8c9 	b.w	2000053c <__retarget_lock_release_recursive>
200003aa:	f7ff ff15 	bl	200001d8 <global_stdio_init.part.0>
200003ae:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
200003b2:	4801      	ldr	r0, [pc, #4]	@ (200003b8 <__sinit+0x30>)
200003b4:	f000 b8c2 	b.w	2000053c <__retarget_lock_release_recursive>
200003b8:	20001b58 	.word	0x20001b58
200003bc:	20001b38 	.word	0x20001b38
200003c0:	20000161 	.word	0x20000161

200003c4 <__sfp_lock_acquire>:
200003c4:	4801      	ldr	r0, [pc, #4]	@ (200003cc <__sfp_lock_acquire+0x8>)
200003c6:	f000 b8b1 	b.w	2000052c <__retarget_lock_acquire_recursive>
200003ca:	bf00      	nop
200003cc:	20001b58 	.word	0x20001b58

200003d0 <__sfp_lock_release>:
200003d0:	4801      	ldr	r0, [pc, #4]	@ (200003d8 <__sfp_lock_release+0x8>)
200003d2:	f000 b8b3 	b.w	2000053c <__retarget_lock_release_recursive>
200003d6:	bf00      	nop
200003d8:	20001b58 	.word	0x20001b58

200003dc <__fp_lock_all>:
200003dc:	b508      	push	{r3, lr}
200003de:	4805      	ldr	r0, [pc, #20]	@ (200003f4 <__fp_lock_all+0x18>)
200003e0:	f000 f8a4 	bl	2000052c <__retarget_lock_acquire_recursive>
200003e4:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
200003e8:	4a03      	ldr	r2, [pc, #12]	@ (200003f8 <__fp_lock_all+0x1c>)
200003ea:	4904      	ldr	r1, [pc, #16]	@ (200003fc <__fp_lock_all+0x20>)
200003ec:	2000      	movs	r0, #0
200003ee:	f000 bbd5 	b.w	20000b9c <_fwalk_sglue>
200003f2:	bf00      	nop
200003f4:	20001b58 	.word	0x20001b58
200003f8:	2000146c 	.word	0x2000146c
200003fc:	200001a1 	.word	0x200001a1

20000400 <__fp_unlock_all>:
20000400:	b508      	push	{r3, lr}
20000402:	4a05      	ldr	r2, [pc, #20]	@ (20000418 <__fp_unlock_all+0x18>)
20000404:	4905      	ldr	r1, [pc, #20]	@ (2000041c <__fp_unlock_all+0x1c>)
20000406:	2000      	movs	r0, #0
20000408:	f000 fbc8 	bl	20000b9c <_fwalk_sglue>
2000040c:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
20000410:	4803      	ldr	r0, [pc, #12]	@ (20000420 <__fp_unlock_all+0x20>)
20000412:	f000 b893 	b.w	2000053c <__retarget_lock_release_recursive>
20000416:	bf00      	nop
20000418:	2000146c 	.word	0x2000146c
2000041c:	200001bd 	.word	0x200001bd
20000420:	20001b58 	.word	0x20001b58

20000424 <memset>:
20000424:	0783      	lsls	r3, r0, #30
20000426:	b530      	push	{r4, r5, lr}
20000428:	d047      	beq.n	200004ba <memset+0x96>
2000042a:	1e54      	subs	r4, r2, #1
2000042c:	2a00      	cmp	r2, #0
2000042e:	d03e      	beq.n	200004ae <memset+0x8a>
20000430:	b2ca      	uxtb	r2, r1
20000432:	4603      	mov	r3, r0
20000434:	e001      	b.n	2000043a <memset+0x16>
20000436:	3c01      	subs	r4, #1
20000438:	d339      	bcc.n	200004ae <memset+0x8a>
2000043a:	f803 2b01 	strb.w	r2, [r3], #1
2000043e:	079d      	lsls	r5, r3, #30
20000440:	d1f9      	bne.n	20000436 <memset+0x12>
20000442:	2c03      	cmp	r4, #3
20000444:	d92c      	bls.n	200004a0 <memset+0x7c>
20000446:	b2cd      	uxtb	r5, r1
20000448:	eb05 2505 	add.w	r5, r5, r5, lsl #8
2000044c:	2c0f      	cmp	r4, #15
2000044e:	eb05 4505 	add.w	r5, r5, r5, lsl #16
20000452:	d935      	bls.n	200004c0 <memset+0x9c>
20000454:	f1a4 0210 	sub.w	r2, r4, #16
20000458:	f022 0c0f 	bic.w	ip, r2, #15
2000045c:	f103 0e10 	add.w	lr, r3, #16
20000460:	44e6      	add	lr, ip
20000462:	ea4f 1c12 	mov.w	ip, r2, lsr #4
20000466:	461a      	mov	r2, r3
20000468:	e9c2 5500 	strd	r5, r5, [r2]
2000046c:	e9c2 5502 	strd	r5, r5, [r2, #8]
20000470:	3210      	adds	r2, #16
20000472:	4572      	cmp	r2, lr
20000474:	d1f8      	bne.n	20000468 <memset+0x44>
20000476:	f10c 0201 	add.w	r2, ip, #1
2000047a:	f014 0f0c 	tst.w	r4, #12
2000047e:	eb03 1202 	add.w	r2, r3, r2, lsl #4
20000482:	f004 0c0f 	and.w	ip, r4, #15
20000486:	d013      	beq.n	200004b0 <memset+0x8c>
20000488:	f1ac 0304 	sub.w	r3, ip, #4
2000048c:	f023 0303 	bic.w	r3, r3, #3
20000490:	3304      	adds	r3, #4
20000492:	4413      	add	r3, r2
20000494:	f842 5b04 	str.w	r5, [r2], #4
20000498:	4293      	cmp	r3, r2
2000049a:	d1fb      	bne.n	20000494 <memset+0x70>
2000049c:	f00c 0403 	and.w	r4, ip, #3
200004a0:	b12c      	cbz	r4, 200004ae <memset+0x8a>
200004a2:	b2c9      	uxtb	r1, r1
200004a4:	441c      	add	r4, r3
200004a6:	f803 1b01 	strb.w	r1, [r3], #1
200004aa:	42a3      	cmp	r3, r4
200004ac:	d1fb      	bne.n	200004a6 <memset+0x82>
200004ae:	bd30      	pop	{r4, r5, pc}
200004b0:	4664      	mov	r4, ip
200004b2:	4613      	mov	r3, r2
200004b4:	2c00      	cmp	r4, #0
200004b6:	d1f4      	bne.n	200004a2 <memset+0x7e>
200004b8:	e7f9      	b.n	200004ae <memset+0x8a>
200004ba:	4603      	mov	r3, r0
200004bc:	4614      	mov	r4, r2
200004be:	e7c0      	b.n	20000442 <memset+0x1e>
200004c0:	461a      	mov	r2, r3
200004c2:	46a4      	mov	ip, r4
200004c4:	e7e0      	b.n	20000488 <memset+0x64>
200004c6:	bf00      	nop

200004c8 <__libc_init_array>:
200004c8:	b570      	push	{r4, r5, r6, lr}
200004ca:	4b0f      	ldr	r3, [pc, #60]	@ (20000508 <__libc_init_array+0x40>)
200004cc:	4d0f      	ldr	r5, [pc, #60]	@ (2000050c <__libc_init_array+0x44>)
200004ce:	42ab      	cmp	r3, r5
200004d0:	eba3 0605 	sub.w	r6, r3, r5
200004d4:	d007      	beq.n	200004e6 <__libc_init_array+0x1e>
200004d6:	10b6      	asrs	r6, r6, #2
200004d8:	2400      	movs	r4, #0
200004da:	f855 3b04 	ldr.w	r3, [r5], #4
200004de:	3401      	adds	r4, #1
200004e0:	4798      	blx	r3
200004e2:	42a6      	cmp	r6, r4
200004e4:	d8f9      	bhi.n	200004da <__libc_init_array+0x12>
200004e6:	f000 ff89 	bl	200013fc <_init>
200004ea:	4d09      	ldr	r5, [pc, #36]	@ (20000510 <__libc_init_array+0x48>)
200004ec:	4b09      	ldr	r3, [pc, #36]	@ (20000514 <__libc_init_array+0x4c>)
200004ee:	1b5e      	subs	r6, r3, r5
200004f0:	42ab      	cmp	r3, r5
200004f2:	ea4f 06a6 	mov.w	r6, r6, asr #2
200004f6:	d006      	beq.n	20000506 <__libc_init_array+0x3e>
200004f8:	2400      	movs	r4, #0
200004fa:	f855 3b04 	ldr.w	r3, [r5], #4
200004fe:	3401      	adds	r4, #1
20000500:	4798      	blx	r3
20000502:	42a6      	cmp	r6, r4
20000504:	d8f9      	bhi.n	200004fa <__libc_init_array+0x32>
20000506:	bd70      	pop	{r4, r5, r6, pc}
	...

20000518 <__retarget_lock_init>:
20000518:	4770      	bx	lr
2000051a:	bf00      	nop

2000051c <__retarget_lock_init_recursive>:
2000051c:	4770      	bx	lr
2000051e:	bf00      	nop

20000520 <__retarget_lock_close>:
20000520:	4770      	bx	lr
20000522:	bf00      	nop

20000524 <__retarget_lock_close_recursive>:
20000524:	4770      	bx	lr
20000526:	bf00      	nop

20000528 <__retarget_lock_acquire>:
20000528:	4770      	bx	lr
2000052a:	bf00      	nop

2000052c <__retarget_lock_acquire_recursive>:
2000052c:	4770      	bx	lr
2000052e:	bf00      	nop

20000530 <__retarget_lock_try_acquire>:
20000530:	2001      	movs	r0, #1
20000532:	4770      	bx	lr

20000534 <__retarget_lock_try_acquire_recursive>:
20000534:	2001      	movs	r0, #1
20000536:	4770      	bx	lr

20000538 <__retarget_lock_release>:
20000538:	4770      	bx	lr
2000053a:	bf00      	nop

2000053c <__retarget_lock_release_recursive>:
2000053c:	4770      	bx	lr
2000053e:	bf00      	nop

20000540 <register_fini>:
20000540:	4b02      	ldr	r3, [pc, #8]	@ (2000054c <register_fini+0xc>)
20000542:	b113      	cbz	r3, 2000054a <register_fini+0xa>
20000544:	4802      	ldr	r0, [pc, #8]	@ (20000550 <register_fini+0x10>)
20000546:	f000 b865 	b.w	20000614 <atexit>
2000054a:	4770      	bx	lr
2000054c:	00000000 	.word	0x00000000
20000550:	20001099 	.word	0x20001099

20000554 <__call_exitprocs>:
20000554:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
20000558:	4b2c      	ldr	r3, [pc, #176]	@ (2000060c <__call_exitprocs+0xb8>)
2000055a:	4f2d      	ldr	r7, [pc, #180]	@ (20000610 <__call_exitprocs+0xbc>)
2000055c:	b083      	sub	sp, #12
2000055e:	4682      	mov	sl, r0
20000560:	6818      	ldr	r0, [r3, #0]
20000562:	f8cd a004 	str.w	sl, [sp, #4]
20000566:	468b      	mov	fp, r1
20000568:	f7ff ffe0 	bl	2000052c <__retarget_lock_acquire_recursive>
2000056c:	683e      	ldr	r6, [r7, #0]
2000056e:	b34e      	cbz	r6, 200005c4 <__call_exitprocs+0x70>
20000570:	f04f 0900 	mov.w	r9, #0
20000574:	f04f 0801 	mov.w	r8, #1
20000578:	6874      	ldr	r4, [r6, #4]
2000057a:	1e65      	subs	r5, r4, #1
2000057c:	d422      	bmi.n	200005c4 <__call_exitprocs+0x70>
2000057e:	3401      	adds	r4, #1
20000580:	eb06 0484 	add.w	r4, r6, r4, lsl #2
20000584:	f1bb 0f00 	cmp.w	fp, #0
20000588:	d123      	bne.n	200005d2 <__call_exitprocs+0x7e>
2000058a:	6873      	ldr	r3, [r6, #4]
2000058c:	6822      	ldr	r2, [r4, #0]
2000058e:	3b01      	subs	r3, #1
20000590:	42ab      	cmp	r3, r5
20000592:	bf0c      	ite	eq
20000594:	6075      	streq	r5, [r6, #4]
20000596:	f8c4 9000 	strne.w	r9, [r4]
2000059a:	b172      	cbz	r2, 200005ba <__call_exitprocs+0x66>
2000059c:	f8d6 1188 	ldr.w	r1, [r6, #392]	@ 0x188
200005a0:	f8d6 a004 	ldr.w	sl, [r6, #4]
200005a4:	fa08 f305 	lsl.w	r3, r8, r5
200005a8:	420b      	tst	r3, r1
200005aa:	d11c      	bne.n	200005e6 <__call_exitprocs+0x92>
200005ac:	4790      	blx	r2
200005ae:	6873      	ldr	r3, [r6, #4]
200005b0:	683a      	ldr	r2, [r7, #0]
200005b2:	4553      	cmp	r3, sl
200005b4:	d123      	bne.n	200005fe <__call_exitprocs+0xaa>
200005b6:	42b2      	cmp	r2, r6
200005b8:	d121      	bne.n	200005fe <__call_exitprocs+0xaa>
200005ba:	3d01      	subs	r5, #1
200005bc:	1c6b      	adds	r3, r5, #1
200005be:	f1a4 0404 	sub.w	r4, r4, #4
200005c2:	d1df      	bne.n	20000584 <__call_exitprocs+0x30>
200005c4:	4b11      	ldr	r3, [pc, #68]	@ (2000060c <__call_exitprocs+0xb8>)
200005c6:	6818      	ldr	r0, [r3, #0]
200005c8:	b003      	add	sp, #12
200005ca:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
200005ce:	f7ff bfb5 	b.w	2000053c <__retarget_lock_release_recursive>
200005d2:	f8d4 3100 	ldr.w	r3, [r4, #256]	@ 0x100
200005d6:	455b      	cmp	r3, fp
200005d8:	d0d7      	beq.n	2000058a <__call_exitprocs+0x36>
200005da:	3d01      	subs	r5, #1
200005dc:	1c6a      	adds	r2, r5, #1
200005de:	f1a4 0404 	sub.w	r4, r4, #4
200005e2:	d1f6      	bne.n	200005d2 <__call_exitprocs+0x7e>
200005e4:	e7ee      	b.n	200005c4 <__call_exitprocs+0x70>
200005e6:	f8d6 018c 	ldr.w	r0, [r6, #396]	@ 0x18c
200005ea:	f8d4 1080 	ldr.w	r1, [r4, #128]	@ 0x80
200005ee:	4203      	tst	r3, r0
200005f0:	d109      	bne.n	20000606 <__call_exitprocs+0xb2>
200005f2:	9801      	ldr	r0, [sp, #4]
200005f4:	4790      	blx	r2
200005f6:	6873      	ldr	r3, [r6, #4]
200005f8:	683a      	ldr	r2, [r7, #0]
200005fa:	4553      	cmp	r3, sl
200005fc:	d0db      	beq.n	200005b6 <__call_exitprocs+0x62>
200005fe:	2a00      	cmp	r2, #0
20000600:	d0e0      	beq.n	200005c4 <__call_exitprocs+0x70>
20000602:	4616      	mov	r6, r2
20000604:	e7b8      	b.n	20000578 <__call_exitprocs+0x24>
20000606:	4608      	mov	r0, r1
20000608:	4790      	blx	r2
2000060a:	e7d0      	b.n	200005ae <__call_exitprocs+0x5a>
2000060c:	200015c0 	.word	0x200015c0
20000610:	20001b5c 	.word	0x20001b5c

20000614 <atexit>:
20000614:	2300      	movs	r3, #0
20000616:	4601      	mov	r1, r0
20000618:	461a      	mov	r2, r3
2000061a:	4618      	mov	r0, r3
2000061c:	f000 bd50 	b.w	200010c0 <__register_exitproc>

20000620 <_malloc_r>:
20000620:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
20000624:	f101 050b 	add.w	r5, r1, #11
20000628:	2d16      	cmp	r5, #22
2000062a:	b083      	sub	sp, #12
2000062c:	4606      	mov	r6, r0
2000062e:	d823      	bhi.n	20000678 <_malloc_r+0x58>
20000630:	2910      	cmp	r1, #16
20000632:	f200 80af 	bhi.w	20000794 <_malloc_r+0x174>
20000636:	f000 faa5 	bl	20000b84 <__malloc_lock>
2000063a:	2510      	movs	r5, #16
2000063c:	2318      	movs	r3, #24
2000063e:	2002      	movs	r0, #2
20000640:	4fb7      	ldr	r7, [pc, #732]	@ (20000920 <_malloc_r+0x300>)
20000642:	443b      	add	r3, r7
20000644:	f1a3 0208 	sub.w	r2, r3, #8
20000648:	685c      	ldr	r4, [r3, #4]
2000064a:	4294      	cmp	r4, r2
2000064c:	f000 811e 	beq.w	2000088c <_malloc_r+0x26c>
20000650:	6863      	ldr	r3, [r4, #4]
20000652:	68e2      	ldr	r2, [r4, #12]
20000654:	68a1      	ldr	r1, [r4, #8]
20000656:	f023 0303 	bic.w	r3, r3, #3
2000065a:	60ca      	str	r2, [r1, #12]
2000065c:	4423      	add	r3, r4
2000065e:	4630      	mov	r0, r6
20000660:	6091      	str	r1, [r2, #8]
20000662:	685a      	ldr	r2, [r3, #4]
20000664:	f042 0201 	orr.w	r2, r2, #1
20000668:	605a      	str	r2, [r3, #4]
2000066a:	f000 fa91 	bl	20000b90 <__malloc_unlock>
2000066e:	3408      	adds	r4, #8
20000670:	4620      	mov	r0, r4
20000672:	b003      	add	sp, #12
20000674:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
20000678:	f035 0507 	bics.w	r5, r5, #7
2000067c:	f100 808a 	bmi.w	20000794 <_malloc_r+0x174>
20000680:	42a9      	cmp	r1, r5
20000682:	f200 8087 	bhi.w	20000794 <_malloc_r+0x174>
20000686:	f000 fa7d 	bl	20000b84 <__malloc_lock>
2000068a:	f5b5 7ffc 	cmp.w	r5, #504	@ 0x1f8
2000068e:	f0c0 816e 	bcc.w	2000096e <_malloc_r+0x34e>
20000692:	0a6b      	lsrs	r3, r5, #9
20000694:	f000 8082 	beq.w	2000079c <_malloc_r+0x17c>
20000698:	2b04      	cmp	r3, #4
2000069a:	f200 811d 	bhi.w	200008d8 <_malloc_r+0x2b8>
2000069e:	09ab      	lsrs	r3, r5, #6
200006a0:	f103 0039 	add.w	r0, r3, #57	@ 0x39
200006a4:	f103 0e38 	add.w	lr, r3, #56	@ 0x38
200006a8:	00c3      	lsls	r3, r0, #3
200006aa:	4f9d      	ldr	r7, [pc, #628]	@ (20000920 <_malloc_r+0x300>)
200006ac:	443b      	add	r3, r7
200006ae:	f1a3 0c08 	sub.w	ip, r3, #8
200006b2:	685c      	ldr	r4, [r3, #4]
200006b4:	45a4      	cmp	ip, r4
200006b6:	d107      	bne.n	200006c8 <_malloc_r+0xa8>
200006b8:	e00d      	b.n	200006d6 <_malloc_r+0xb6>
200006ba:	2a00      	cmp	r2, #0
200006bc:	68e1      	ldr	r1, [r4, #12]
200006be:	f280 80df 	bge.w	20000880 <_malloc_r+0x260>
200006c2:	458c      	cmp	ip, r1
200006c4:	d007      	beq.n	200006d6 <_malloc_r+0xb6>
200006c6:	460c      	mov	r4, r1
200006c8:	6863      	ldr	r3, [r4, #4]
200006ca:	f023 0303 	bic.w	r3, r3, #3
200006ce:	1b5a      	subs	r2, r3, r5
200006d0:	2a0f      	cmp	r2, #15
200006d2:	ddf2      	ble.n	200006ba <_malloc_r+0x9a>
200006d4:	4670      	mov	r0, lr
200006d6:	f8df 8260 	ldr.w	r8, [pc, #608]	@ 20000938 <_malloc_r+0x318>
200006da:	693c      	ldr	r4, [r7, #16]
200006dc:	4544      	cmp	r4, r8
200006de:	f000 80bc 	beq.w	2000085a <_malloc_r+0x23a>
200006e2:	6863      	ldr	r3, [r4, #4]
200006e4:	f023 0c03 	bic.w	ip, r3, #3
200006e8:	ebac 0305 	sub.w	r3, ip, r5
200006ec:	2b0f      	cmp	r3, #15
200006ee:	f300 8142 	bgt.w	20000976 <_malloc_r+0x356>
200006f2:	2b00      	cmp	r3, #0
200006f4:	e9c7 8804 	strd	r8, r8, [r7, #16]
200006f8:	f280 812d 	bge.w	20000956 <_malloc_r+0x336>
200006fc:	f5bc 7f00 	cmp.w	ip, #512	@ 0x200
20000700:	f8d7 e004 	ldr.w	lr, [r7, #4]
20000704:	f080 80c8 	bcs.w	20000898 <_malloc_r+0x278>
20000708:	ea4f 01dc 	mov.w	r1, ip, lsr #3
2000070c:	3101      	adds	r1, #1
2000070e:	ea4f 1c5c 	mov.w	ip, ip, lsr #5
20000712:	2301      	movs	r3, #1
20000714:	fa03 f30c 	lsl.w	r3, r3, ip
20000718:	f857 2031 	ldr.w	r2, [r7, r1, lsl #3]
2000071c:	60a2      	str	r2, [r4, #8]
2000071e:	ea4e 0e03 	orr.w	lr, lr, r3
20000722:	eb07 03c1 	add.w	r3, r7, r1, lsl #3
20000726:	3b08      	subs	r3, #8
20000728:	60e3      	str	r3, [r4, #12]
2000072a:	f8c7 e004 	str.w	lr, [r7, #4]
2000072e:	f847 4031 	str.w	r4, [r7, r1, lsl #3]
20000732:	60d4      	str	r4, [r2, #12]
20000734:	1083      	asrs	r3, r0, #2
20000736:	f04f 0c01 	mov.w	ip, #1
2000073a:	fa0c fc03 	lsl.w	ip, ip, r3
2000073e:	45f4      	cmp	ip, lr
20000740:	d832      	bhi.n	200007a8 <_malloc_r+0x188>
20000742:	ea1c 0f0e 	tst.w	ip, lr
20000746:	d108      	bne.n	2000075a <_malloc_r+0x13a>
20000748:	f020 0003 	bic.w	r0, r0, #3
2000074c:	ea4f 0c4c 	mov.w	ip, ip, lsl #1
20000750:	ea1c 0f0e 	tst.w	ip, lr
20000754:	f100 0004 	add.w	r0, r0, #4
20000758:	d0f8      	beq.n	2000074c <_malloc_r+0x12c>
2000075a:	eb07 0ac0 	add.w	sl, r7, r0, lsl #3
2000075e:	46d6      	mov	lr, sl
20000760:	4681      	mov	r9, r0
20000762:	f8de 300c 	ldr.w	r3, [lr, #12]
20000766:	e00b      	b.n	20000780 <_malloc_r+0x160>
20000768:	6859      	ldr	r1, [r3, #4]
2000076a:	f021 0103 	bic.w	r1, r1, #3
2000076e:	1b4a      	subs	r2, r1, r5
20000770:	2a0f      	cmp	r2, #15
20000772:	461c      	mov	r4, r3
20000774:	68db      	ldr	r3, [r3, #12]
20000776:	f300 80bb 	bgt.w	200008f0 <_malloc_r+0x2d0>
2000077a:	2a00      	cmp	r2, #0
2000077c:	f280 80de 	bge.w	2000093c <_malloc_r+0x31c>
20000780:	459e      	cmp	lr, r3
20000782:	d1f1      	bne.n	20000768 <_malloc_r+0x148>
20000784:	f109 0901 	add.w	r9, r9, #1
20000788:	f019 0f03 	tst.w	r9, #3
2000078c:	f10e 0e08 	add.w	lr, lr, #8
20000790:	d1e7      	bne.n	20000762 <_malloc_r+0x142>
20000792:	e119      	b.n	200009c8 <_malloc_r+0x3a8>
20000794:	230c      	movs	r3, #12
20000796:	6033      	str	r3, [r6, #0]
20000798:	2400      	movs	r4, #0
2000079a:	e769      	b.n	20000670 <_malloc_r+0x50>
2000079c:	f44f 7300 	mov.w	r3, #512	@ 0x200
200007a0:	2040      	movs	r0, #64	@ 0x40
200007a2:	f04f 0e3f 	mov.w	lr, #63	@ 0x3f
200007a6:	e780      	b.n	200006aa <_malloc_r+0x8a>
200007a8:	68bc      	ldr	r4, [r7, #8]
200007aa:	6863      	ldr	r3, [r4, #4]
200007ac:	f023 0903 	bic.w	r9, r3, #3
200007b0:	45a9      	cmp	r9, r5
200007b2:	d303      	bcc.n	200007bc <_malloc_r+0x19c>
200007b4:	eba9 0305 	sub.w	r3, r9, r5
200007b8:	2b0f      	cmp	r3, #15
200007ba:	dc51      	bgt.n	20000860 <_malloc_r+0x240>
200007bc:	4b59      	ldr	r3, [pc, #356]	@ (20000924 <_malloc_r+0x304>)
200007be:	681b      	ldr	r3, [r3, #0]
200007c0:	2008      	movs	r0, #8
200007c2:	f103 0810 	add.w	r8, r3, #16
200007c6:	eb04 0309 	add.w	r3, r4, r9
200007ca:	9300      	str	r3, [sp, #0]
200007cc:	f000 fc56 	bl	2000107c <sysconf>
200007d0:	4a55      	ldr	r2, [pc, #340]	@ (20000928 <_malloc_r+0x308>)
200007d2:	6813      	ldr	r3, [r2, #0]
200007d4:	3301      	adds	r3, #1
200007d6:	44a8      	add	r8, r5
200007d8:	4683      	mov	fp, r0
200007da:	d005      	beq.n	200007e8 <_malloc_r+0x1c8>
200007dc:	f108 38ff 	add.w	r8, r8, #4294967295	@ 0xffffffff
200007e0:	4480      	add	r8, r0
200007e2:	4243      	negs	r3, r0
200007e4:	ea03 0808 	and.w	r8, r3, r8
200007e8:	4641      	mov	r1, r8
200007ea:	4630      	mov	r0, r6
200007ec:	f000 fc1e 	bl	2000102c <_sbrk_r>
200007f0:	f1b0 3fff 	cmp.w	r0, #4294967295	@ 0xffffffff
200007f4:	4a4c      	ldr	r2, [pc, #304]	@ (20000928 <_malloc_r+0x308>)
200007f6:	4682      	mov	sl, r0
200007f8:	f000 80d8 	beq.w	200009ac <_malloc_r+0x38c>
200007fc:	9b00      	ldr	r3, [sp, #0]
200007fe:	4283      	cmp	r3, r0
20000800:	f200 80d2 	bhi.w	200009a8 <_malloc_r+0x388>
20000804:	4b49      	ldr	r3, [pc, #292]	@ (2000092c <_malloc_r+0x30c>)
20000806:	6818      	ldr	r0, [r3, #0]
20000808:	4440      	add	r0, r8
2000080a:	f10b 31ff 	add.w	r1, fp, #4294967295	@ 0xffffffff
2000080e:	6018      	str	r0, [r3, #0]
20000810:	4684      	mov	ip, r0
20000812:	f040 80fc 	bne.w	20000a0e <_malloc_r+0x3ee>
20000816:	ea1a 0f01 	tst.w	sl, r1
2000081a:	f040 80f8 	bne.w	20000a0e <_malloc_r+0x3ee>
2000081e:	f8d7 a008 	ldr.w	sl, [r7, #8]
20000822:	44c8      	add	r8, r9
20000824:	f048 0201 	orr.w	r2, r8, #1
20000828:	f8ca 2004 	str.w	r2, [sl, #4]
2000082c:	4b40      	ldr	r3, [pc, #256]	@ (20000930 <_malloc_r+0x310>)
2000082e:	6819      	ldr	r1, [r3, #0]
20000830:	4281      	cmp	r1, r0
20000832:	bf38      	it	cc
20000834:	6018      	strcc	r0, [r3, #0]
20000836:	4b3f      	ldr	r3, [pc, #252]	@ (20000934 <_malloc_r+0x314>)
20000838:	6819      	ldr	r1, [r3, #0]
2000083a:	4281      	cmp	r1, r0
2000083c:	bf38      	it	cc
2000083e:	6018      	strcc	r0, [r3, #0]
20000840:	4654      	mov	r4, sl
20000842:	f022 0803 	bic.w	r8, r2, #3
20000846:	45a8      	cmp	r8, r5
20000848:	eba8 0305 	sub.w	r3, r8, r5
2000084c:	d301      	bcc.n	20000852 <_malloc_r+0x232>
2000084e:	2b0f      	cmp	r3, #15
20000850:	dc06      	bgt.n	20000860 <_malloc_r+0x240>
20000852:	4630      	mov	r0, r6
20000854:	f000 f99c 	bl	20000b90 <__malloc_unlock>
20000858:	e79e      	b.n	20000798 <_malloc_r+0x178>
2000085a:	f8d7 e004 	ldr.w	lr, [r7, #4]
2000085e:	e769      	b.n	20000734 <_malloc_r+0x114>
20000860:	1962      	adds	r2, r4, r5
20000862:	f043 0301 	orr.w	r3, r3, #1
20000866:	f045 0501 	orr.w	r5, r5, #1
2000086a:	6065      	str	r5, [r4, #4]
2000086c:	4630      	mov	r0, r6
2000086e:	60ba      	str	r2, [r7, #8]
20000870:	6053      	str	r3, [r2, #4]
20000872:	f000 f98d 	bl	20000b90 <__malloc_unlock>
20000876:	3408      	adds	r4, #8
20000878:	4620      	mov	r0, r4
2000087a:	b003      	add	sp, #12
2000087c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
20000880:	68a2      	ldr	r2, [r4, #8]
20000882:	4423      	add	r3, r4
20000884:	60d1      	str	r1, [r2, #12]
20000886:	4630      	mov	r0, r6
20000888:	608a      	str	r2, [r1, #8]
2000088a:	e6ea      	b.n	20000662 <_malloc_r+0x42>
2000088c:	68dc      	ldr	r4, [r3, #12]
2000088e:	42a3      	cmp	r3, r4
20000890:	f47f aede 	bne.w	20000650 <_malloc_r+0x30>
20000894:	3002      	adds	r0, #2
20000896:	e71e      	b.n	200006d6 <_malloc_r+0xb6>
20000898:	f5bc 6f20 	cmp.w	ip, #2560	@ 0xa00
2000089c:	ea4f 225c 	mov.w	r2, ip, lsr #9
200008a0:	d37b      	bcc.n	2000099a <_malloc_r+0x37a>
200008a2:	2a14      	cmp	r2, #20
200008a4:	f200 8112 	bhi.w	20000acc <_malloc_r+0x4ac>
200008a8:	f102 035c 	add.w	r3, r2, #92	@ 0x5c
200008ac:	00db      	lsls	r3, r3, #3
200008ae:	325b      	adds	r2, #91	@ 0x5b
200008b0:	18f9      	adds	r1, r7, r3
200008b2:	58fb      	ldr	r3, [r7, r3]
200008b4:	3908      	subs	r1, #8
200008b6:	4299      	cmp	r1, r3
200008b8:	d103      	bne.n	200008c2 <_malloc_r+0x2a2>
200008ba:	e0ec      	b.n	20000a96 <_malloc_r+0x476>
200008bc:	689b      	ldr	r3, [r3, #8]
200008be:	4299      	cmp	r1, r3
200008c0:	d004      	beq.n	200008cc <_malloc_r+0x2ac>
200008c2:	685a      	ldr	r2, [r3, #4]
200008c4:	f022 0203 	bic.w	r2, r2, #3
200008c8:	4562      	cmp	r2, ip
200008ca:	d8f7      	bhi.n	200008bc <_malloc_r+0x29c>
200008cc:	68d9      	ldr	r1, [r3, #12]
200008ce:	e9c4 3102 	strd	r3, r1, [r4, #8]
200008d2:	608c      	str	r4, [r1, #8]
200008d4:	60dc      	str	r4, [r3, #12]
200008d6:	e72d      	b.n	20000734 <_malloc_r+0x114>
200008d8:	2b14      	cmp	r3, #20
200008da:	d96a      	bls.n	200009b2 <_malloc_r+0x392>
200008dc:	2b54      	cmp	r3, #84	@ 0x54
200008de:	f200 80fe 	bhi.w	20000ade <_malloc_r+0x4be>
200008e2:	0b2b      	lsrs	r3, r5, #12
200008e4:	f103 006f 	add.w	r0, r3, #111	@ 0x6f
200008e8:	f103 0e6e 	add.w	lr, r3, #110	@ 0x6e
200008ec:	00c3      	lsls	r3, r0, #3
200008ee:	e6dc      	b.n	200006aa <_malloc_r+0x8a>
200008f0:	f8d4 c008 	ldr.w	ip, [r4, #8]
200008f4:	4630      	mov	r0, r6
200008f6:	1966      	adds	r6, r4, r5
200008f8:	f045 0501 	orr.w	r5, r5, #1
200008fc:	6065      	str	r5, [r4, #4]
200008fe:	f8cc 300c 	str.w	r3, [ip, #12]
20000902:	f8c3 c008 	str.w	ip, [r3, #8]
20000906:	f042 0301 	orr.w	r3, r2, #1
2000090a:	e9c7 6604 	strd	r6, r6, [r7, #16]
2000090e:	e9c6 8802 	strd	r8, r8, [r6, #8]
20000912:	6073      	str	r3, [r6, #4]
20000914:	5062      	str	r2, [r4, r1]
20000916:	f000 f93b 	bl	20000b90 <__malloc_unlock>
2000091a:	3408      	adds	r4, #8
2000091c:	e6a8      	b.n	20000670 <_malloc_r+0x50>
2000091e:	bf00      	nop
20000920:	200015d0 	.word	0x200015d0
20000924:	20001b90 	.word	0x20001b90
20000928:	200015c4 	.word	0x200015c4
2000092c:	20001b60 	.word	0x20001b60
20000930:	20001b8c 	.word	0x20001b8c
20000934:	20001b88 	.word	0x20001b88
20000938:	200015d8 	.word	0x200015d8
2000093c:	4421      	add	r1, r4
2000093e:	4630      	mov	r0, r6
20000940:	684a      	ldr	r2, [r1, #4]
20000942:	f042 0201 	orr.w	r2, r2, #1
20000946:	604a      	str	r2, [r1, #4]
20000948:	f854 2f08 	ldr.w	r2, [r4, #8]!
2000094c:	60d3      	str	r3, [r2, #12]
2000094e:	609a      	str	r2, [r3, #8]
20000950:	f000 f91e 	bl	20000b90 <__malloc_unlock>
20000954:	e68c      	b.n	20000670 <_malloc_r+0x50>
20000956:	44a4      	add	ip, r4
20000958:	4630      	mov	r0, r6
2000095a:	f8dc 3004 	ldr.w	r3, [ip, #4]
2000095e:	f043 0301 	orr.w	r3, r3, #1
20000962:	f8cc 3004 	str.w	r3, [ip, #4]
20000966:	f000 f913 	bl	20000b90 <__malloc_unlock>
2000096a:	3408      	adds	r4, #8
2000096c:	e680      	b.n	20000670 <_malloc_r+0x50>
2000096e:	08e8      	lsrs	r0, r5, #3
20000970:	f105 0308 	add.w	r3, r5, #8
20000974:	e664      	b.n	20000640 <_malloc_r+0x20>
20000976:	1962      	adds	r2, r4, r5
20000978:	f043 0101 	orr.w	r1, r3, #1
2000097c:	f045 0501 	orr.w	r5, r5, #1
20000980:	6065      	str	r5, [r4, #4]
20000982:	4630      	mov	r0, r6
20000984:	e9c7 2204 	strd	r2, r2, [r7, #16]
20000988:	e9c2 8802 	strd	r8, r8, [r2, #8]
2000098c:	6051      	str	r1, [r2, #4]
2000098e:	f844 300c 	str.w	r3, [r4, ip]
20000992:	f000 f8fd 	bl	20000b90 <__malloc_unlock>
20000996:	3408      	adds	r4, #8
20000998:	e66a      	b.n	20000670 <_malloc_r+0x50>
2000099a:	ea4f 129c 	mov.w	r2, ip, lsr #6
2000099e:	f102 0339 	add.w	r3, r2, #57	@ 0x39
200009a2:	00db      	lsls	r3, r3, #3
200009a4:	3238      	adds	r2, #56	@ 0x38
200009a6:	e783      	b.n	200008b0 <_malloc_r+0x290>
200009a8:	42bc      	cmp	r4, r7
200009aa:	d028      	beq.n	200009fe <_malloc_r+0x3de>
200009ac:	68bc      	ldr	r4, [r7, #8]
200009ae:	6862      	ldr	r2, [r4, #4]
200009b0:	e747      	b.n	20000842 <_malloc_r+0x222>
200009b2:	f103 005c 	add.w	r0, r3, #92	@ 0x5c
200009b6:	f103 0e5b 	add.w	lr, r3, #91	@ 0x5b
200009ba:	00c3      	lsls	r3, r0, #3
200009bc:	e675      	b.n	200006aa <_malloc_r+0x8a>
200009be:	f85a 3908 	ldr.w	r3, [sl], #-8
200009c2:	4553      	cmp	r3, sl
200009c4:	f040 80d9 	bne.w	20000b7a <_malloc_r+0x55a>
200009c8:	f010 0f03 	tst.w	r0, #3
200009cc:	f100 30ff 	add.w	r0, r0, #4294967295	@ 0xffffffff
200009d0:	d1f5      	bne.n	200009be <_malloc_r+0x39e>
200009d2:	687b      	ldr	r3, [r7, #4]
200009d4:	ea23 030c 	bic.w	r3, r3, ip
200009d8:	607b      	str	r3, [r7, #4]
200009da:	ea4f 0c4c 	mov.w	ip, ip, lsl #1
200009de:	459c      	cmp	ip, r3
200009e0:	f63f aee2 	bhi.w	200007a8 <_malloc_r+0x188>
200009e4:	f1bc 0f00 	cmp.w	ip, #0
200009e8:	d104      	bne.n	200009f4 <_malloc_r+0x3d4>
200009ea:	e6dd      	b.n	200007a8 <_malloc_r+0x188>
200009ec:	ea4f 0c4c 	mov.w	ip, ip, lsl #1
200009f0:	f109 0904 	add.w	r9, r9, #4
200009f4:	ea1c 0f03 	tst.w	ip, r3
200009f8:	d0f8      	beq.n	200009ec <_malloc_r+0x3cc>
200009fa:	4648      	mov	r0, r9
200009fc:	e6ad      	b.n	2000075a <_malloc_r+0x13a>
200009fe:	4b60      	ldr	r3, [pc, #384]	@ (20000b80 <_malloc_r+0x560>)
20000a00:	6818      	ldr	r0, [r3, #0]
20000a02:	eb08 0c00 	add.w	ip, r8, r0
20000a06:	f10b 31ff 	add.w	r1, fp, #4294967295	@ 0xffffffff
20000a0a:	f8c3 c000 	str.w	ip, [r3]
20000a0e:	6810      	ldr	r0, [r2, #0]
20000a10:	3001      	adds	r0, #1
20000a12:	d06e      	beq.n	20000af2 <_malloc_r+0x4d2>
20000a14:	9a00      	ldr	r2, [sp, #0]
20000a16:	ebaa 0202 	sub.w	r2, sl, r2
20000a1a:	4462      	add	r2, ip
20000a1c:	601a      	str	r2, [r3, #0]
20000a1e:	f01a 0207 	ands.w	r2, sl, #7
20000a22:	e9cd 2300 	strd	r2, r3, [sp]
20000a26:	d040      	beq.n	20000aaa <_malloc_r+0x48a>
20000a28:	f1c2 0208 	rsb	r2, r2, #8
20000a2c:	4492      	add	sl, r2
20000a2e:	44d0      	add	r8, sl
20000a30:	ea08 0001 	and.w	r0, r8, r1
20000a34:	445a      	add	r2, fp
20000a36:	1a12      	subs	r2, r2, r0
20000a38:	ea02 0b01 	and.w	fp, r2, r1
20000a3c:	4659      	mov	r1, fp
20000a3e:	4630      	mov	r0, r6
20000a40:	f000 faf4 	bl	2000102c <_sbrk_r>
20000a44:	1c42      	adds	r2, r0, #1
20000a46:	9b01      	ldr	r3, [sp, #4]
20000a48:	d06f      	beq.n	20000b2a <_malloc_r+0x50a>
20000a4a:	eba0 000a 	sub.w	r0, r0, sl
20000a4e:	eb00 080b 	add.w	r8, r0, fp
20000a52:	6818      	ldr	r0, [r3, #0]
20000a54:	f8c7 a008 	str.w	sl, [r7, #8]
20000a58:	f048 0201 	orr.w	r2, r8, #1
20000a5c:	4458      	add	r0, fp
20000a5e:	42bc      	cmp	r4, r7
20000a60:	f8ca 2004 	str.w	r2, [sl, #4]
20000a64:	6018      	str	r0, [r3, #0]
20000a66:	f43f aee1 	beq.w	2000082c <_malloc_r+0x20c>
20000a6a:	f1b9 0f0f 	cmp.w	r9, #15
20000a6e:	d943      	bls.n	20000af8 <_malloc_r+0x4d8>
20000a70:	6861      	ldr	r1, [r4, #4]
20000a72:	f1a9 020c 	sub.w	r2, r9, #12
20000a76:	f022 0207 	bic.w	r2, r2, #7
20000a7a:	f001 0101 	and.w	r1, r1, #1
20000a7e:	4311      	orrs	r1, r2
20000a80:	6061      	str	r1, [r4, #4]
20000a82:	f04f 0c05 	mov.w	ip, #5
20000a86:	18a1      	adds	r1, r4, r2
20000a88:	2a0f      	cmp	r2, #15
20000a8a:	e9c1 cc01 	strd	ip, ip, [r1, #4]
20000a8e:	d854      	bhi.n	20000b3a <_malloc_r+0x51a>
20000a90:	f8da 2004 	ldr.w	r2, [sl, #4]
20000a94:	e6ca      	b.n	2000082c <_malloc_r+0x20c>
20000a96:	1092      	asrs	r2, r2, #2
20000a98:	f04f 0c01 	mov.w	ip, #1
20000a9c:	fa0c f202 	lsl.w	r2, ip, r2
20000aa0:	ea4e 0e02 	orr.w	lr, lr, r2
20000aa4:	f8c7 e004 	str.w	lr, [r7, #4]
20000aa8:	e711      	b.n	200008ce <_malloc_r+0x2ae>
20000aaa:	eb0a 0208 	add.w	r2, sl, r8
20000aae:	400a      	ands	r2, r1
20000ab0:	ebab 0202 	sub.w	r2, fp, r2
20000ab4:	ea02 0b01 	and.w	fp, r2, r1
20000ab8:	4659      	mov	r1, fp
20000aba:	4630      	mov	r0, r6
20000abc:	f000 fab6 	bl	2000102c <_sbrk_r>
20000ac0:	1c43      	adds	r3, r0, #1
20000ac2:	9b01      	ldr	r3, [sp, #4]
20000ac4:	d1c1      	bne.n	20000a4a <_malloc_r+0x42a>
20000ac6:	f8dd b000 	ldr.w	fp, [sp]
20000aca:	e7c2      	b.n	20000a52 <_malloc_r+0x432>
20000acc:	2a54      	cmp	r2, #84	@ 0x54
20000ace:	d817      	bhi.n	20000b00 <_malloc_r+0x4e0>
20000ad0:	ea4f 321c 	mov.w	r2, ip, lsr #12
20000ad4:	f102 036f 	add.w	r3, r2, #111	@ 0x6f
20000ad8:	00db      	lsls	r3, r3, #3
20000ada:	326e      	adds	r2, #110	@ 0x6e
20000adc:	e6e8      	b.n	200008b0 <_malloc_r+0x290>
20000ade:	f5b3 7faa 	cmp.w	r3, #340	@ 0x154
20000ae2:	d817      	bhi.n	20000b14 <_malloc_r+0x4f4>
20000ae4:	0beb      	lsrs	r3, r5, #15
20000ae6:	f103 0078 	add.w	r0, r3, #120	@ 0x78
20000aea:	f103 0e77 	add.w	lr, r3, #119	@ 0x77
20000aee:	00c3      	lsls	r3, r0, #3
20000af0:	e5db      	b.n	200006aa <_malloc_r+0x8a>
20000af2:	f8c2 a000 	str.w	sl, [r2]
20000af6:	e792      	b.n	20000a1e <_malloc_r+0x3fe>
20000af8:	2301      	movs	r3, #1
20000afa:	f8ca 3004 	str.w	r3, [sl, #4]
20000afe:	e6a8      	b.n	20000852 <_malloc_r+0x232>
20000b00:	f5b2 7faa 	cmp.w	r2, #340	@ 0x154
20000b04:	d824      	bhi.n	20000b50 <_malloc_r+0x530>
20000b06:	ea4f 32dc 	mov.w	r2, ip, lsr #15
20000b0a:	f102 0378 	add.w	r3, r2, #120	@ 0x78
20000b0e:	00db      	lsls	r3, r3, #3
20000b10:	3277      	adds	r2, #119	@ 0x77
20000b12:	e6cd      	b.n	200008b0 <_malloc_r+0x290>
20000b14:	f240 5254 	movw	r2, #1364	@ 0x554
20000b18:	4293      	cmp	r3, r2
20000b1a:	d824      	bhi.n	20000b66 <_malloc_r+0x546>
20000b1c:	0cab      	lsrs	r3, r5, #18
20000b1e:	f103 007d 	add.w	r0, r3, #125	@ 0x7d
20000b22:	f103 0e7c 	add.w	lr, r3, #124	@ 0x7c
20000b26:	00c3      	lsls	r3, r0, #3
20000b28:	e5bf      	b.n	200006aa <_malloc_r+0x8a>
20000b2a:	9a00      	ldr	r2, [sp, #0]
20000b2c:	3a08      	subs	r2, #8
20000b2e:	4490      	add	r8, r2
20000b30:	eba8 080a 	sub.w	r8, r8, sl
20000b34:	f04f 0b00 	mov.w	fp, #0
20000b38:	e78b      	b.n	20000a52 <_malloc_r+0x432>
20000b3a:	4630      	mov	r0, r6
20000b3c:	f104 0108 	add.w	r1, r4, #8
20000b40:	9300      	str	r3, [sp, #0]
20000b42:	f000 fb59 	bl	200011f8 <_free_r>
20000b46:	9b00      	ldr	r3, [sp, #0]
20000b48:	f8d7 a008 	ldr.w	sl, [r7, #8]
20000b4c:	6818      	ldr	r0, [r3, #0]
20000b4e:	e79f      	b.n	20000a90 <_malloc_r+0x470>
20000b50:	f240 5354 	movw	r3, #1364	@ 0x554
20000b54:	429a      	cmp	r2, r3
20000b56:	d80c      	bhi.n	20000b72 <_malloc_r+0x552>
20000b58:	ea4f 429c 	mov.w	r2, ip, lsr #18
20000b5c:	f102 037d 	add.w	r3, r2, #125	@ 0x7d
20000b60:	00db      	lsls	r3, r3, #3
20000b62:	327c      	adds	r2, #124	@ 0x7c
20000b64:	e6a4      	b.n	200008b0 <_malloc_r+0x290>
20000b66:	f44f 737e 	mov.w	r3, #1016	@ 0x3f8
20000b6a:	207f      	movs	r0, #127	@ 0x7f
20000b6c:	f04f 0e7e 	mov.w	lr, #126	@ 0x7e
20000b70:	e59b      	b.n	200006aa <_malloc_r+0x8a>
20000b72:	f44f 737e 	mov.w	r3, #1016	@ 0x3f8
20000b76:	227e      	movs	r2, #126	@ 0x7e
20000b78:	e69a      	b.n	200008b0 <_malloc_r+0x290>
20000b7a:	687b      	ldr	r3, [r7, #4]
20000b7c:	e72d      	b.n	200009da <_malloc_r+0x3ba>
20000b7e:	bf00      	nop
20000b80:	20001b60 	.word	0x20001b60

20000b84 <__malloc_lock>:
20000b84:	4801      	ldr	r0, [pc, #4]	@ (20000b8c <__malloc_lock+0x8>)
20000b86:	f7ff bcd1 	b.w	2000052c <__retarget_lock_acquire_recursive>
20000b8a:	bf00      	nop
20000b8c:	20001b4c 	.word	0x20001b4c

20000b90 <__malloc_unlock>:
20000b90:	4801      	ldr	r0, [pc, #4]	@ (20000b98 <__malloc_unlock+0x8>)
20000b92:	f7ff bcd3 	b.w	2000053c <__retarget_lock_release_recursive>
20000b96:	bf00      	nop
20000b98:	20001b4c 	.word	0x20001b4c

20000b9c <_fwalk_sglue>:
20000b9c:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
20000ba0:	4607      	mov	r7, r0
20000ba2:	4688      	mov	r8, r1
20000ba4:	4616      	mov	r6, r2
20000ba6:	f04f 0900 	mov.w	r9, #0
20000baa:	e9d6 5401 	ldrd	r5, r4, [r6, #4]
20000bae:	3d01      	subs	r5, #1
20000bb0:	d410      	bmi.n	20000bd4 <_fwalk_sglue+0x38>
20000bb2:	89a3      	ldrh	r3, [r4, #12]
20000bb4:	2b01      	cmp	r3, #1
20000bb6:	d908      	bls.n	20000bca <_fwalk_sglue+0x2e>
20000bb8:	f9b4 300e 	ldrsh.w	r3, [r4, #14]
20000bbc:	3301      	adds	r3, #1
20000bbe:	4621      	mov	r1, r4
20000bc0:	4638      	mov	r0, r7
20000bc2:	d002      	beq.n	20000bca <_fwalk_sglue+0x2e>
20000bc4:	47c0      	blx	r8
20000bc6:	ea49 0900 	orr.w	r9, r9, r0
20000bca:	3d01      	subs	r5, #1
20000bcc:	1c6b      	adds	r3, r5, #1
20000bce:	f104 0468 	add.w	r4, r4, #104	@ 0x68
20000bd2:	d1ee      	bne.n	20000bb2 <_fwalk_sglue+0x16>
20000bd4:	6836      	ldr	r6, [r6, #0]
20000bd6:	2e00      	cmp	r6, #0
20000bd8:	d1e7      	bne.n	20000baa <_fwalk_sglue+0xe>
20000bda:	4648      	mov	r0, r9
20000bdc:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}

20000be0 <_fclose_r>:
20000be0:	b570      	push	{r4, r5, r6, lr}
20000be2:	2900      	cmp	r1, #0
20000be4:	d03f      	beq.n	20000c66 <_fclose_r+0x86>
20000be6:	4606      	mov	r6, r0
20000be8:	460c      	mov	r4, r1
20000bea:	b110      	cbz	r0, 20000bf2 <_fclose_r+0x12>
20000bec:	6b43      	ldr	r3, [r0, #52]	@ 0x34
20000bee:	2b00      	cmp	r3, #0
20000bf0:	d03c      	beq.n	20000c6c <_fclose_r+0x8c>
20000bf2:	6e63      	ldr	r3, [r4, #100]	@ 0x64
20000bf4:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
20000bf8:	07dd      	lsls	r5, r3, #31
20000bfa:	d432      	bmi.n	20000c62 <_fclose_r+0x82>
20000bfc:	0590      	lsls	r0, r2, #22
20000bfe:	d538      	bpl.n	20000c72 <_fclose_r+0x92>
20000c00:	4621      	mov	r1, r4
20000c02:	4630      	mov	r0, r6
20000c04:	f000 f854 	bl	20000cb0 <__sflush_r>
20000c08:	6ae3      	ldr	r3, [r4, #44]	@ 0x2c
20000c0a:	4605      	mov	r5, r0
20000c0c:	b133      	cbz	r3, 20000c1c <_fclose_r+0x3c>
20000c0e:	69e1      	ldr	r1, [r4, #28]
20000c10:	4630      	mov	r0, r6
20000c12:	4798      	blx	r3
20000c14:	2800      	cmp	r0, #0
20000c16:	bfb8      	it	lt
20000c18:	f04f 35ff 	movlt.w	r5, #4294967295	@ 0xffffffff
20000c1c:	89a3      	ldrh	r3, [r4, #12]
20000c1e:	061a      	lsls	r2, r3, #24
20000c20:	d439      	bmi.n	20000c96 <_fclose_r+0xb6>
20000c22:	6b21      	ldr	r1, [r4, #48]	@ 0x30
20000c24:	b141      	cbz	r1, 20000c38 <_fclose_r+0x58>
20000c26:	f104 0340 	add.w	r3, r4, #64	@ 0x40
20000c2a:	4299      	cmp	r1, r3
20000c2c:	d002      	beq.n	20000c34 <_fclose_r+0x54>
20000c2e:	4630      	mov	r0, r6
20000c30:	f000 fae2 	bl	200011f8 <_free_r>
20000c34:	2300      	movs	r3, #0
20000c36:	6323      	str	r3, [r4, #48]	@ 0x30
20000c38:	6c61      	ldr	r1, [r4, #68]	@ 0x44
20000c3a:	b121      	cbz	r1, 20000c46 <_fclose_r+0x66>
20000c3c:	4630      	mov	r0, r6
20000c3e:	f000 fadb 	bl	200011f8 <_free_r>
20000c42:	2300      	movs	r3, #0
20000c44:	6463      	str	r3, [r4, #68]	@ 0x44
20000c46:	f7ff fbbd 	bl	200003c4 <__sfp_lock_acquire>
20000c4a:	6e63      	ldr	r3, [r4, #100]	@ 0x64
20000c4c:	2200      	movs	r2, #0
20000c4e:	07db      	lsls	r3, r3, #31
20000c50:	81a2      	strh	r2, [r4, #12]
20000c52:	d51c      	bpl.n	20000c8e <_fclose_r+0xae>
20000c54:	6da0      	ldr	r0, [r4, #88]	@ 0x58
20000c56:	f7ff fc65 	bl	20000524 <__retarget_lock_close_recursive>
20000c5a:	f7ff fbb9 	bl	200003d0 <__sfp_lock_release>
20000c5e:	4628      	mov	r0, r5
20000c60:	bd70      	pop	{r4, r5, r6, pc}
20000c62:	2a00      	cmp	r2, #0
20000c64:	d1cc      	bne.n	20000c00 <_fclose_r+0x20>
20000c66:	2500      	movs	r5, #0
20000c68:	4628      	mov	r0, r5
20000c6a:	bd70      	pop	{r4, r5, r6, pc}
20000c6c:	f7ff fb8c 	bl	20000388 <__sinit>
20000c70:	e7bf      	b.n	20000bf2 <_fclose_r+0x12>
20000c72:	6da0      	ldr	r0, [r4, #88]	@ 0x58
20000c74:	f7ff fc5a 	bl	2000052c <__retarget_lock_acquire_recursive>
20000c78:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
20000c7c:	2b00      	cmp	r3, #0
20000c7e:	d1bf      	bne.n	20000c00 <_fclose_r+0x20>
20000c80:	6e63      	ldr	r3, [r4, #100]	@ 0x64
20000c82:	07d9      	lsls	r1, r3, #31
20000c84:	d4ef      	bmi.n	20000c66 <_fclose_r+0x86>
20000c86:	6da0      	ldr	r0, [r4, #88]	@ 0x58
20000c88:	f7ff fc58 	bl	2000053c <__retarget_lock_release_recursive>
20000c8c:	e7eb      	b.n	20000c66 <_fclose_r+0x86>
20000c8e:	6da0      	ldr	r0, [r4, #88]	@ 0x58
20000c90:	f7ff fc54 	bl	2000053c <__retarget_lock_release_recursive>
20000c94:	e7de      	b.n	20000c54 <_fclose_r+0x74>
20000c96:	6921      	ldr	r1, [r4, #16]
20000c98:	4630      	mov	r0, r6
20000c9a:	f000 faad 	bl	200011f8 <_free_r>
20000c9e:	e7c0      	b.n	20000c22 <_fclose_r+0x42>

20000ca0 <fclose>:
20000ca0:	4b02      	ldr	r3, [pc, #8]	@ (20000cac <fclose+0xc>)
20000ca2:	4601      	mov	r1, r0
20000ca4:	6818      	ldr	r0, [r3, #0]
20000ca6:	f7ff bf9b 	b.w	20000be0 <_fclose_r>
20000caa:	bf00      	nop
20000cac:	20001478 	.word	0x20001478

20000cb0 <__sflush_r>:
20000cb0:	f9b1 200c 	ldrsh.w	r2, [r1, #12]
20000cb4:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
20000cb8:	0716      	lsls	r6, r2, #28
20000cba:	460c      	mov	r4, r1
20000cbc:	4680      	mov	r8, r0
20000cbe:	d44e      	bmi.n	20000d5e <__sflush_r+0xae>
20000cc0:	6849      	ldr	r1, [r1, #4]
20000cc2:	f442 6300 	orr.w	r3, r2, #2048	@ 0x800
20000cc6:	2900      	cmp	r1, #0
20000cc8:	81a3      	strh	r3, [r4, #12]
20000cca:	dd63      	ble.n	20000d94 <__sflush_r+0xe4>
20000ccc:	6aa5      	ldr	r5, [r4, #40]	@ 0x28
20000cce:	2d00      	cmp	r5, #0
20000cd0:	d042      	beq.n	20000d58 <__sflush_r+0xa8>
20000cd2:	2100      	movs	r1, #0
20000cd4:	f412 5280 	ands.w	r2, r2, #4096	@ 0x1000
20000cd8:	f8d8 6000 	ldr.w	r6, [r8]
20000cdc:	f8c8 1000 	str.w	r1, [r8]
20000ce0:	69e1      	ldr	r1, [r4, #28]
20000ce2:	d164      	bne.n	20000dae <__sflush_r+0xfe>
20000ce4:	2301      	movs	r3, #1
20000ce6:	4640      	mov	r0, r8
20000ce8:	47a8      	blx	r5
20000cea:	1c45      	adds	r5, r0, #1
20000cec:	4602      	mov	r2, r0
20000cee:	d06e      	beq.n	20000dce <__sflush_r+0x11e>
20000cf0:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
20000cf4:	6aa5      	ldr	r5, [r4, #40]	@ 0x28
20000cf6:	69e1      	ldr	r1, [r4, #28]
20000cf8:	0758      	lsls	r0, r3, #29
20000cfa:	d505      	bpl.n	20000d08 <__sflush_r+0x58>
20000cfc:	6863      	ldr	r3, [r4, #4]
20000cfe:	1ad2      	subs	r2, r2, r3
20000d00:	6b23      	ldr	r3, [r4, #48]	@ 0x30
20000d02:	b10b      	cbz	r3, 20000d08 <__sflush_r+0x58>
20000d04:	6be3      	ldr	r3, [r4, #60]	@ 0x3c
20000d06:	1ad2      	subs	r2, r2, r3
20000d08:	2300      	movs	r3, #0
20000d0a:	4640      	mov	r0, r8
20000d0c:	47a8      	blx	r5
20000d0e:	1c43      	adds	r3, r0, #1
20000d10:	d14f      	bne.n	20000db2 <__sflush_r+0x102>
20000d12:	f8d8 1000 	ldr.w	r1, [r8]
20000d16:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
20000d1a:	291d      	cmp	r1, #29
20000d1c:	d840      	bhi.n	20000da0 <__sflush_r+0xf0>
20000d1e:	4a31      	ldr	r2, [pc, #196]	@ (20000de4 <__sflush_r+0x134>)
20000d20:	40ca      	lsrs	r2, r1
20000d22:	07d7      	lsls	r7, r2, #31
20000d24:	d53c      	bpl.n	20000da0 <__sflush_r+0xf0>
20000d26:	6922      	ldr	r2, [r4, #16]
20000d28:	6022      	str	r2, [r4, #0]
20000d2a:	f423 6200 	bic.w	r2, r3, #2048	@ 0x800
20000d2e:	81a2      	strh	r2, [r4, #12]
20000d30:	04dd      	lsls	r5, r3, #19
20000d32:	f04f 0200 	mov.w	r2, #0
20000d36:	6062      	str	r2, [r4, #4]
20000d38:	d501      	bpl.n	20000d3e <__sflush_r+0x8e>
20000d3a:	2900      	cmp	r1, #0
20000d3c:	d045      	beq.n	20000dca <__sflush_r+0x11a>
20000d3e:	6b21      	ldr	r1, [r4, #48]	@ 0x30
20000d40:	f8c8 6000 	str.w	r6, [r8]
20000d44:	b141      	cbz	r1, 20000d58 <__sflush_r+0xa8>
20000d46:	f104 0340 	add.w	r3, r4, #64	@ 0x40
20000d4a:	4299      	cmp	r1, r3
20000d4c:	d002      	beq.n	20000d54 <__sflush_r+0xa4>
20000d4e:	4640      	mov	r0, r8
20000d50:	f000 fa52 	bl	200011f8 <_free_r>
20000d54:	2300      	movs	r3, #0
20000d56:	6323      	str	r3, [r4, #48]	@ 0x30
20000d58:	2000      	movs	r0, #0
20000d5a:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
20000d5e:	690e      	ldr	r6, [r1, #16]
20000d60:	2e00      	cmp	r6, #0
20000d62:	d0f9      	beq.n	20000d58 <__sflush_r+0xa8>
20000d64:	680d      	ldr	r5, [r1, #0]
20000d66:	600e      	str	r6, [r1, #0]
20000d68:	0792      	lsls	r2, r2, #30
20000d6a:	bf0c      	ite	eq
20000d6c:	694b      	ldreq	r3, [r1, #20]
20000d6e:	2300      	movne	r3, #0
20000d70:	1bad      	subs	r5, r5, r6
20000d72:	608b      	str	r3, [r1, #8]
20000d74:	e00b      	b.n	20000d8e <__sflush_r+0xde>
20000d76:	462b      	mov	r3, r5
20000d78:	4632      	mov	r2, r6
20000d7a:	69e1      	ldr	r1, [r4, #28]
20000d7c:	6a67      	ldr	r7, [r4, #36]	@ 0x24
20000d7e:	4640      	mov	r0, r8
20000d80:	47b8      	blx	r7
20000d82:	f1b0 0c00 	subs.w	ip, r0, #0
20000d86:	eba5 050c 	sub.w	r5, r5, ip
20000d8a:	4466      	add	r6, ip
20000d8c:	dd06      	ble.n	20000d9c <__sflush_r+0xec>
20000d8e:	2d00      	cmp	r5, #0
20000d90:	dcf1      	bgt.n	20000d76 <__sflush_r+0xc6>
20000d92:	e7e1      	b.n	20000d58 <__sflush_r+0xa8>
20000d94:	6be1      	ldr	r1, [r4, #60]	@ 0x3c
20000d96:	2900      	cmp	r1, #0
20000d98:	dc98      	bgt.n	20000ccc <__sflush_r+0x1c>
20000d9a:	e7dd      	b.n	20000d58 <__sflush_r+0xa8>
20000d9c:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
20000da0:	f043 0340 	orr.w	r3, r3, #64	@ 0x40
20000da4:	81a3      	strh	r3, [r4, #12]
20000da6:	f04f 30ff 	mov.w	r0, #4294967295	@ 0xffffffff
20000daa:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
20000dae:	6d22      	ldr	r2, [r4, #80]	@ 0x50
20000db0:	e7a2      	b.n	20000cf8 <__sflush_r+0x48>
20000db2:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
20000db6:	6922      	ldr	r2, [r4, #16]
20000db8:	6022      	str	r2, [r4, #0]
20000dba:	f423 6200 	bic.w	r2, r3, #2048	@ 0x800
20000dbe:	81a2      	strh	r2, [r4, #12]
20000dc0:	04db      	lsls	r3, r3, #19
20000dc2:	f04f 0200 	mov.w	r2, #0
20000dc6:	6062      	str	r2, [r4, #4]
20000dc8:	d5b9      	bpl.n	20000d3e <__sflush_r+0x8e>
20000dca:	6520      	str	r0, [r4, #80]	@ 0x50
20000dcc:	e7b7      	b.n	20000d3e <__sflush_r+0x8e>
20000dce:	f8d8 3000 	ldr.w	r3, [r8]
20000dd2:	2b00      	cmp	r3, #0
20000dd4:	d08c      	beq.n	20000cf0 <__sflush_r+0x40>
20000dd6:	2b1d      	cmp	r3, #29
20000dd8:	d001      	beq.n	20000dde <__sflush_r+0x12e>
20000dda:	2b16      	cmp	r3, #22
20000ddc:	d1de      	bne.n	20000d9c <__sflush_r+0xec>
20000dde:	f8c8 6000 	str.w	r6, [r8]
20000de2:	e7b9      	b.n	20000d58 <__sflush_r+0xa8>
20000de4:	20400001 	.word	0x20400001

20000de8 <_fflush_r>:
20000de8:	b538      	push	{r3, r4, r5, lr}
20000dea:	460c      	mov	r4, r1
20000dec:	4605      	mov	r5, r0
20000dee:	b108      	cbz	r0, 20000df4 <_fflush_r+0xc>
20000df0:	6b43      	ldr	r3, [r0, #52]	@ 0x34
20000df2:	b303      	cbz	r3, 20000e36 <_fflush_r+0x4e>
20000df4:	f9b4 000c 	ldrsh.w	r0, [r4, #12]
20000df8:	b188      	cbz	r0, 20000e1e <_fflush_r+0x36>
20000dfa:	6e63      	ldr	r3, [r4, #100]	@ 0x64
20000dfc:	07db      	lsls	r3, r3, #31
20000dfe:	d401      	bmi.n	20000e04 <_fflush_r+0x1c>
20000e00:	0581      	lsls	r1, r0, #22
20000e02:	d50f      	bpl.n	20000e24 <_fflush_r+0x3c>
20000e04:	4628      	mov	r0, r5
20000e06:	4621      	mov	r1, r4
20000e08:	f7ff ff52 	bl	20000cb0 <__sflush_r>
20000e0c:	6e63      	ldr	r3, [r4, #100]	@ 0x64
20000e0e:	07da      	lsls	r2, r3, #31
20000e10:	4605      	mov	r5, r0
20000e12:	d402      	bmi.n	20000e1a <_fflush_r+0x32>
20000e14:	89a3      	ldrh	r3, [r4, #12]
20000e16:	059b      	lsls	r3, r3, #22
20000e18:	d508      	bpl.n	20000e2c <_fflush_r+0x44>
20000e1a:	4628      	mov	r0, r5
20000e1c:	bd38      	pop	{r3, r4, r5, pc}
20000e1e:	4605      	mov	r5, r0
20000e20:	4628      	mov	r0, r5
20000e22:	bd38      	pop	{r3, r4, r5, pc}
20000e24:	6da0      	ldr	r0, [r4, #88]	@ 0x58
20000e26:	f7ff fb81 	bl	2000052c <__retarget_lock_acquire_recursive>
20000e2a:	e7eb      	b.n	20000e04 <_fflush_r+0x1c>
20000e2c:	6da0      	ldr	r0, [r4, #88]	@ 0x58
20000e2e:	f7ff fb85 	bl	2000053c <__retarget_lock_release_recursive>
20000e32:	4628      	mov	r0, r5
20000e34:	bd38      	pop	{r3, r4, r5, pc}
20000e36:	f7ff faa7 	bl	20000388 <__sinit>
20000e3a:	e7db      	b.n	20000df4 <_fflush_r+0xc>

20000e3c <fflush>:
20000e3c:	b350      	cbz	r0, 20000e94 <fflush+0x58>
20000e3e:	b538      	push	{r3, r4, r5, lr}
20000e40:	4b17      	ldr	r3, [pc, #92]	@ (20000ea0 <fflush+0x64>)
20000e42:	681d      	ldr	r5, [r3, #0]
20000e44:	4604      	mov	r4, r0
20000e46:	b10d      	cbz	r5, 20000e4c <fflush+0x10>
20000e48:	6b6b      	ldr	r3, [r5, #52]	@ 0x34
20000e4a:	b1bb      	cbz	r3, 20000e7c <fflush+0x40>
20000e4c:	f9b4 000c 	ldrsh.w	r0, [r4, #12]
20000e50:	b188      	cbz	r0, 20000e76 <fflush+0x3a>
20000e52:	6e63      	ldr	r3, [r4, #100]	@ 0x64
20000e54:	07db      	lsls	r3, r3, #31
20000e56:	d401      	bmi.n	20000e5c <fflush+0x20>
20000e58:	0581      	lsls	r1, r0, #22
20000e5a:	d513      	bpl.n	20000e84 <fflush+0x48>
20000e5c:	4628      	mov	r0, r5
20000e5e:	4621      	mov	r1, r4
20000e60:	f7ff ff26 	bl	20000cb0 <__sflush_r>
20000e64:	6e63      	ldr	r3, [r4, #100]	@ 0x64
20000e66:	07da      	lsls	r2, r3, #31
20000e68:	4605      	mov	r5, r0
20000e6a:	d402      	bmi.n	20000e72 <fflush+0x36>
20000e6c:	89a3      	ldrh	r3, [r4, #12]
20000e6e:	059b      	lsls	r3, r3, #22
20000e70:	d50c      	bpl.n	20000e8c <fflush+0x50>
20000e72:	4628      	mov	r0, r5
20000e74:	bd38      	pop	{r3, r4, r5, pc}
20000e76:	4605      	mov	r5, r0
20000e78:	4628      	mov	r0, r5
20000e7a:	bd38      	pop	{r3, r4, r5, pc}
20000e7c:	4628      	mov	r0, r5
20000e7e:	f7ff fa83 	bl	20000388 <__sinit>
20000e82:	e7e3      	b.n	20000e4c <fflush+0x10>
20000e84:	6da0      	ldr	r0, [r4, #88]	@ 0x58
20000e86:	f7ff fb51 	bl	2000052c <__retarget_lock_acquire_recursive>
20000e8a:	e7e7      	b.n	20000e5c <fflush+0x20>
20000e8c:	6da0      	ldr	r0, [r4, #88]	@ 0x58
20000e8e:	f7ff fb55 	bl	2000053c <__retarget_lock_release_recursive>
20000e92:	e7ee      	b.n	20000e72 <fflush+0x36>
20000e94:	4a03      	ldr	r2, [pc, #12]	@ (20000ea4 <fflush+0x68>)
20000e96:	4904      	ldr	r1, [pc, #16]	@ (20000ea8 <fflush+0x6c>)
20000e98:	4804      	ldr	r0, [pc, #16]	@ (20000eac <fflush+0x70>)
20000e9a:	f7ff be7f 	b.w	20000b9c <_fwalk_sglue>
20000e9e:	bf00      	nop
20000ea0:	20001478 	.word	0x20001478
20000ea4:	2000146c 	.word	0x2000146c
20000ea8:	20000de9 	.word	0x20000de9
20000eac:	20001480 	.word	0x20001480

20000eb0 <__sread>:
20000eb0:	b510      	push	{r4, lr}
20000eb2:	460c      	mov	r4, r1
20000eb4:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
20000eb8:	f000 f8a2 	bl	20001000 <_read_r>
20000ebc:	2800      	cmp	r0, #0
20000ebe:	db03      	blt.n	20000ec8 <__sread+0x18>
20000ec0:	6d23      	ldr	r3, [r4, #80]	@ 0x50
20000ec2:	4403      	add	r3, r0
20000ec4:	6523      	str	r3, [r4, #80]	@ 0x50
20000ec6:	bd10      	pop	{r4, pc}
20000ec8:	89a3      	ldrh	r3, [r4, #12]
20000eca:	f423 5380 	bic.w	r3, r3, #4096	@ 0x1000
20000ece:	81a3      	strh	r3, [r4, #12]
20000ed0:	bd10      	pop	{r4, pc}
20000ed2:	bf00      	nop

20000ed4 <__seofread>:
20000ed4:	2000      	movs	r0, #0
20000ed6:	4770      	bx	lr

20000ed8 <__swrite>:
20000ed8:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
20000edc:	460c      	mov	r4, r1
20000ede:	f9b1 100c 	ldrsh.w	r1, [r1, #12]
20000ee2:	461f      	mov	r7, r3
20000ee4:	05cb      	lsls	r3, r1, #23
20000ee6:	4605      	mov	r5, r0
20000ee8:	4616      	mov	r6, r2
20000eea:	d40b      	bmi.n	20000f04 <__swrite+0x2c>
20000eec:	f421 5180 	bic.w	r1, r1, #4096	@ 0x1000
20000ef0:	81a1      	strh	r1, [r4, #12]
20000ef2:	463b      	mov	r3, r7
20000ef4:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
20000ef8:	4632      	mov	r2, r6
20000efa:	4628      	mov	r0, r5
20000efc:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
20000f00:	f000 b8a6 	b.w	20001050 <_write_r>
20000f04:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
20000f08:	2302      	movs	r3, #2
20000f0a:	2200      	movs	r2, #0
20000f0c:	f000 f862 	bl	20000fd4 <_lseek_r>
20000f10:	f9b4 100c 	ldrsh.w	r1, [r4, #12]
20000f14:	e7ea      	b.n	20000eec <__swrite+0x14>
20000f16:	bf00      	nop

20000f18 <__sseek>:
20000f18:	b510      	push	{r4, lr}
20000f1a:	460c      	mov	r4, r1
20000f1c:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
20000f20:	f000 f858 	bl	20000fd4 <_lseek_r>
20000f24:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
20000f28:	1c42      	adds	r2, r0, #1
20000f2a:	bf0e      	itee	eq
20000f2c:	f423 5380 	biceq.w	r3, r3, #4096	@ 0x1000
20000f30:	f443 5380 	orrne.w	r3, r3, #4096	@ 0x1000
20000f34:	6520      	strne	r0, [r4, #80]	@ 0x50
20000f36:	81a3      	strh	r3, [r4, #12]
20000f38:	bd10      	pop	{r4, pc}
20000f3a:	bf00      	nop

20000f3c <__sclose>:
20000f3c:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
20000f40:	f000 b800 	b.w	20000f44 <_close_r>

20000f44 <_close_r>:
20000f44:	b538      	push	{r3, r4, r5, lr}
20000f46:	4d07      	ldr	r5, [pc, #28]	@ (20000f64 <_close_r+0x20>)
20000f48:	2200      	movs	r2, #0
20000f4a:	4604      	mov	r4, r0
20000f4c:	4608      	mov	r0, r1
20000f4e:	602a      	str	r2, [r5, #0]
20000f50:	f7ff f898 	bl	20000084 <_close>
20000f54:	1c43      	adds	r3, r0, #1
20000f56:	d000      	beq.n	20000f5a <_close_r+0x16>
20000f58:	bd38      	pop	{r3, r4, r5, pc}
20000f5a:	682b      	ldr	r3, [r5, #0]
20000f5c:	2b00      	cmp	r3, #0
20000f5e:	d0fb      	beq.n	20000f58 <_close_r+0x14>
20000f60:	6023      	str	r3, [r4, #0]
20000f62:	bd38      	pop	{r3, r4, r5, pc}
20000f64:	20001b94 	.word	0x20001b94

20000f68 <_reclaim_reent>:
20000f68:	4b19      	ldr	r3, [pc, #100]	@ (20000fd0 <_reclaim_reent+0x68>)
20000f6a:	681b      	ldr	r3, [r3, #0]
20000f6c:	4283      	cmp	r3, r0
20000f6e:	d02e      	beq.n	20000fce <_reclaim_reent+0x66>
20000f70:	6c41      	ldr	r1, [r0, #68]	@ 0x44
20000f72:	b570      	push	{r4, r5, r6, lr}
20000f74:	4605      	mov	r5, r0
20000f76:	b181      	cbz	r1, 20000f9a <_reclaim_reent+0x32>
20000f78:	2600      	movs	r6, #0
20000f7a:	598c      	ldr	r4, [r1, r6]
20000f7c:	b13c      	cbz	r4, 20000f8e <_reclaim_reent+0x26>
20000f7e:	4621      	mov	r1, r4
20000f80:	6824      	ldr	r4, [r4, #0]
20000f82:	4628      	mov	r0, r5
20000f84:	f000 f938 	bl	200011f8 <_free_r>
20000f88:	2c00      	cmp	r4, #0
20000f8a:	d1f8      	bne.n	20000f7e <_reclaim_reent+0x16>
20000f8c:	6c69      	ldr	r1, [r5, #68]	@ 0x44
20000f8e:	3604      	adds	r6, #4
20000f90:	2e80      	cmp	r6, #128	@ 0x80
20000f92:	d1f2      	bne.n	20000f7a <_reclaim_reent+0x12>
20000f94:	4628      	mov	r0, r5
20000f96:	f000 f92f 	bl	200011f8 <_free_r>
20000f9a:	6ba9      	ldr	r1, [r5, #56]	@ 0x38
20000f9c:	b111      	cbz	r1, 20000fa4 <_reclaim_reent+0x3c>
20000f9e:	4628      	mov	r0, r5
20000fa0:	f000 f92a 	bl	200011f8 <_free_r>
20000fa4:	6c2c      	ldr	r4, [r5, #64]	@ 0x40
20000fa6:	b134      	cbz	r4, 20000fb6 <_reclaim_reent+0x4e>
20000fa8:	4621      	mov	r1, r4
20000faa:	6824      	ldr	r4, [r4, #0]
20000fac:	4628      	mov	r0, r5
20000fae:	f000 f923 	bl	200011f8 <_free_r>
20000fb2:	2c00      	cmp	r4, #0
20000fb4:	d1f8      	bne.n	20000fa8 <_reclaim_reent+0x40>
20000fb6:	6ce9      	ldr	r1, [r5, #76]	@ 0x4c
20000fb8:	b111      	cbz	r1, 20000fc0 <_reclaim_reent+0x58>
20000fba:	4628      	mov	r0, r5
20000fbc:	f000 f91c 	bl	200011f8 <_free_r>
20000fc0:	6b6b      	ldr	r3, [r5, #52]	@ 0x34
20000fc2:	b11b      	cbz	r3, 20000fcc <_reclaim_reent+0x64>
20000fc4:	4628      	mov	r0, r5
20000fc6:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
20000fca:	4718      	bx	r3
20000fcc:	bd70      	pop	{r4, r5, r6, pc}
20000fce:	4770      	bx	lr
20000fd0:	20001478 	.word	0x20001478

20000fd4 <_lseek_r>:
20000fd4:	b538      	push	{r3, r4, r5, lr}
20000fd6:	460c      	mov	r4, r1
20000fd8:	4d08      	ldr	r5, [pc, #32]	@ (20000ffc <_lseek_r+0x28>)
20000fda:	4684      	mov	ip, r0
20000fdc:	4611      	mov	r1, r2
20000fde:	4620      	mov	r0, r4
20000fe0:	461a      	mov	r2, r3
20000fe2:	2300      	movs	r3, #0
20000fe4:	602b      	str	r3, [r5, #0]
20000fe6:	4664      	mov	r4, ip
20000fe8:	f7ff f84f 	bl	2000008a <_lseek>
20000fec:	1c43      	adds	r3, r0, #1
20000fee:	d000      	beq.n	20000ff2 <_lseek_r+0x1e>
20000ff0:	bd38      	pop	{r3, r4, r5, pc}
20000ff2:	682b      	ldr	r3, [r5, #0]
20000ff4:	2b00      	cmp	r3, #0
20000ff6:	d0fb      	beq.n	20000ff0 <_lseek_r+0x1c>
20000ff8:	6023      	str	r3, [r4, #0]
20000ffa:	bd38      	pop	{r3, r4, r5, pc}
20000ffc:	20001b94 	.word	0x20001b94

20001000 <_read_r>:
20001000:	b538      	push	{r3, r4, r5, lr}
20001002:	460c      	mov	r4, r1
20001004:	4d08      	ldr	r5, [pc, #32]	@ (20001028 <_read_r+0x28>)
20001006:	4684      	mov	ip, r0
20001008:	4611      	mov	r1, r2
2000100a:	4620      	mov	r0, r4
2000100c:	461a      	mov	r2, r3
2000100e:	2300      	movs	r3, #0
20001010:	602b      	str	r3, [r5, #0]
20001012:	4664      	mov	r4, ip
20001014:	f7ff f83a 	bl	2000008c <_read>
20001018:	1c43      	adds	r3, r0, #1
2000101a:	d000      	beq.n	2000101e <_read_r+0x1e>
2000101c:	bd38      	pop	{r3, r4, r5, pc}
2000101e:	682b      	ldr	r3, [r5, #0]
20001020:	2b00      	cmp	r3, #0
20001022:	d0fb      	beq.n	2000101c <_read_r+0x1c>
20001024:	6023      	str	r3, [r4, #0]
20001026:	bd38      	pop	{r3, r4, r5, pc}
20001028:	20001b94 	.word	0x20001b94

2000102c <_sbrk_r>:
2000102c:	b538      	push	{r3, r4, r5, lr}
2000102e:	4d07      	ldr	r5, [pc, #28]	@ (2000104c <_sbrk_r+0x20>)
20001030:	2200      	movs	r2, #0
20001032:	4604      	mov	r4, r0
20001034:	4608      	mov	r0, r1
20001036:	602a      	str	r2, [r5, #0]
20001038:	f7ff f822 	bl	20000080 <_sbrk>
2000103c:	1c43      	adds	r3, r0, #1
2000103e:	d000      	beq.n	20001042 <_sbrk_r+0x16>
20001040:	bd38      	pop	{r3, r4, r5, pc}
20001042:	682b      	ldr	r3, [r5, #0]
20001044:	2b00      	cmp	r3, #0
20001046:	d0fb      	beq.n	20001040 <_sbrk_r+0x14>
20001048:	6023      	str	r3, [r4, #0]
2000104a:	bd38      	pop	{r3, r4, r5, pc}
2000104c:	20001b94 	.word	0x20001b94

20001050 <_write_r>:
20001050:	b538      	push	{r3, r4, r5, lr}
20001052:	460c      	mov	r4, r1
20001054:	4d08      	ldr	r5, [pc, #32]	@ (20001078 <_write_r+0x28>)
20001056:	4684      	mov	ip, r0
20001058:	4611      	mov	r1, r2
2000105a:	4620      	mov	r0, r4
2000105c:	461a      	mov	r2, r3
2000105e:	2300      	movs	r3, #0
20001060:	602b      	str	r3, [r5, #0]
20001062:	4664      	mov	r4, ip
20001064:	f7ff f80d 	bl	20000082 <_write>
20001068:	1c43      	adds	r3, r0, #1
2000106a:	d000      	beq.n	2000106e <_write_r+0x1e>
2000106c:	bd38      	pop	{r3, r4, r5, pc}
2000106e:	682b      	ldr	r3, [r5, #0]
20001070:	2b00      	cmp	r3, #0
20001072:	d0fb      	beq.n	2000106c <_write_r+0x1c>
20001074:	6023      	str	r3, [r4, #0]
20001076:	bd38      	pop	{r3, r4, r5, pc}
20001078:	20001b94 	.word	0x20001b94

2000107c <sysconf>:
2000107c:	2808      	cmp	r0, #8
2000107e:	d102      	bne.n	20001086 <sysconf+0xa>
20001080:	f44f 5080 	mov.w	r0, #4096	@ 0x1000
20001084:	4770      	bx	lr
20001086:	b508      	push	{r3, lr}
20001088:	f000 f9b2 	bl	200013f0 <__errno>
2000108c:	2316      	movs	r3, #22
2000108e:	6003      	str	r3, [r0, #0]
20001090:	f04f 30ff 	mov.w	r0, #4294967295	@ 0xffffffff
20001094:	bd08      	pop	{r3, pc}
20001096:	bf00      	nop

20001098 <__libc_fini_array>:
20001098:	b538      	push	{r3, r4, r5, lr}
2000109a:	4d07      	ldr	r5, [pc, #28]	@ (200010b8 <__libc_fini_array+0x20>)
2000109c:	4c07      	ldr	r4, [pc, #28]	@ (200010bc <__libc_fini_array+0x24>)
2000109e:	1b2c      	subs	r4, r5, r4
200010a0:	10a4      	asrs	r4, r4, #2
200010a2:	d005      	beq.n	200010b0 <__libc_fini_array+0x18>
200010a4:	3c01      	subs	r4, #1
200010a6:	f855 3d04 	ldr.w	r3, [r5, #-4]!
200010aa:	4798      	blx	r3
200010ac:	2c00      	cmp	r4, #0
200010ae:	d1f9      	bne.n	200010a4 <__libc_fini_array+0xc>
200010b0:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
200010b4:	f000 b9a8 	b.w	20001408 <_fini>
	...

200010c0 <__register_exitproc>:
200010c0:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
200010c4:	4d1b      	ldr	r5, [pc, #108]	@ (20001134 <__register_exitproc+0x74>)
200010c6:	4606      	mov	r6, r0
200010c8:	6828      	ldr	r0, [r5, #0]
200010ca:	4698      	mov	r8, r3
200010cc:	460f      	mov	r7, r1
200010ce:	4691      	mov	r9, r2
200010d0:	f7ff fa2c 	bl	2000052c <__retarget_lock_acquire_recursive>
200010d4:	4b18      	ldr	r3, [pc, #96]	@ (20001138 <__register_exitproc+0x78>)
200010d6:	681c      	ldr	r4, [r3, #0]
200010d8:	b31c      	cbz	r4, 20001122 <__register_exitproc+0x62>
200010da:	6828      	ldr	r0, [r5, #0]
200010dc:	6865      	ldr	r5, [r4, #4]
200010de:	2d1f      	cmp	r5, #31
200010e0:	dc22      	bgt.n	20001128 <__register_exitproc+0x68>
200010e2:	b94e      	cbnz	r6, 200010f8 <__register_exitproc+0x38>
200010e4:	1c6b      	adds	r3, r5, #1
200010e6:	3502      	adds	r5, #2
200010e8:	6063      	str	r3, [r4, #4]
200010ea:	f844 7025 	str.w	r7, [r4, r5, lsl #2]
200010ee:	f7ff fa25 	bl	2000053c <__retarget_lock_release_recursive>
200010f2:	2000      	movs	r0, #0
200010f4:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
200010f8:	eb04 0185 	add.w	r1, r4, r5, lsl #2
200010fc:	2301      	movs	r3, #1
200010fe:	f8c1 9088 	str.w	r9, [r1, #136]	@ 0x88
20001102:	f8d4 2188 	ldr.w	r2, [r4, #392]	@ 0x188
20001106:	40ab      	lsls	r3, r5
20001108:	431a      	orrs	r2, r3
2000110a:	2e02      	cmp	r6, #2
2000110c:	f8c4 2188 	str.w	r2, [r4, #392]	@ 0x188
20001110:	f8c1 8108 	str.w	r8, [r1, #264]	@ 0x108
20001114:	d1e6      	bne.n	200010e4 <__register_exitproc+0x24>
20001116:	f8d4 218c 	ldr.w	r2, [r4, #396]	@ 0x18c
2000111a:	431a      	orrs	r2, r3
2000111c:	f8c4 218c 	str.w	r2, [r4, #396]	@ 0x18c
20001120:	e7e0      	b.n	200010e4 <__register_exitproc+0x24>
20001122:	4c06      	ldr	r4, [pc, #24]	@ (2000113c <__register_exitproc+0x7c>)
20001124:	601c      	str	r4, [r3, #0]
20001126:	e7d8      	b.n	200010da <__register_exitproc+0x1a>
20001128:	f7ff fa08 	bl	2000053c <__retarget_lock_release_recursive>
2000112c:	f04f 30ff 	mov.w	r0, #4294967295	@ 0xffffffff
20001130:	e7e0      	b.n	200010f4 <__register_exitproc+0x34>
20001132:	bf00      	nop
20001134:	200015c0 	.word	0x200015c0
20001138:	20001b5c 	.word	0x20001b5c
2000113c:	20001b98 	.word	0x20001b98

20001140 <_malloc_trim_r>:
20001140:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
20001144:	4606      	mov	r6, r0
20001146:	2008      	movs	r0, #8
20001148:	4689      	mov	r9, r1
2000114a:	f7ff ff97 	bl	2000107c <sysconf>
2000114e:	f8df 80a4 	ldr.w	r8, [pc, #164]	@ 200011f4 <_malloc_trim_r+0xb4>
20001152:	4605      	mov	r5, r0
20001154:	4630      	mov	r0, r6
20001156:	f7ff fd15 	bl	20000b84 <__malloc_lock>
2000115a:	f8d8 3008 	ldr.w	r3, [r8, #8]
2000115e:	685f      	ldr	r7, [r3, #4]
20001160:	f027 0703 	bic.w	r7, r7, #3
20001164:	f1a7 0411 	sub.w	r4, r7, #17
20001168:	eba4 0409 	sub.w	r4, r4, r9
2000116c:	442c      	add	r4, r5
2000116e:	fbb4 f4f5 	udiv	r4, r4, r5
20001172:	3c01      	subs	r4, #1
20001174:	fb05 f404 	mul.w	r4, r5, r4
20001178:	42a5      	cmp	r5, r4
2000117a:	dc08      	bgt.n	2000118e <_malloc_trim_r+0x4e>
2000117c:	2100      	movs	r1, #0
2000117e:	4630      	mov	r0, r6
20001180:	f7ff ff54 	bl	2000102c <_sbrk_r>
20001184:	f8d8 3008 	ldr.w	r3, [r8, #8]
20001188:	443b      	add	r3, r7
2000118a:	4298      	cmp	r0, r3
2000118c:	d005      	beq.n	2000119a <_malloc_trim_r+0x5a>
2000118e:	4630      	mov	r0, r6
20001190:	f7ff fcfe 	bl	20000b90 <__malloc_unlock>
20001194:	2000      	movs	r0, #0
20001196:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
2000119a:	4261      	negs	r1, r4
2000119c:	4630      	mov	r0, r6
2000119e:	f7ff ff45 	bl	2000102c <_sbrk_r>
200011a2:	3001      	adds	r0, #1
200011a4:	d00f      	beq.n	200011c6 <_malloc_trim_r+0x86>
200011a6:	4a11      	ldr	r2, [pc, #68]	@ (200011ec <_malloc_trim_r+0xac>)
200011a8:	f8d8 3008 	ldr.w	r3, [r8, #8]
200011ac:	1b3f      	subs	r7, r7, r4
200011ae:	f047 0701 	orr.w	r7, r7, #1
200011b2:	605f      	str	r7, [r3, #4]
200011b4:	6813      	ldr	r3, [r2, #0]
200011b6:	4630      	mov	r0, r6
200011b8:	1b1b      	subs	r3, r3, r4
200011ba:	6013      	str	r3, [r2, #0]
200011bc:	f7ff fce8 	bl	20000b90 <__malloc_unlock>
200011c0:	2001      	movs	r0, #1
200011c2:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
200011c6:	2100      	movs	r1, #0
200011c8:	4630      	mov	r0, r6
200011ca:	f7ff ff2f 	bl	2000102c <_sbrk_r>
200011ce:	f8d8 2008 	ldr.w	r2, [r8, #8]
200011d2:	1a83      	subs	r3, r0, r2
200011d4:	2b0f      	cmp	r3, #15
200011d6:	ddda      	ble.n	2000118e <_malloc_trim_r+0x4e>
200011d8:	f043 0301 	orr.w	r3, r3, #1
200011dc:	6053      	str	r3, [r2, #4]
200011de:	4b04      	ldr	r3, [pc, #16]	@ (200011f0 <_malloc_trim_r+0xb0>)
200011e0:	4902      	ldr	r1, [pc, #8]	@ (200011ec <_malloc_trim_r+0xac>)
200011e2:	681b      	ldr	r3, [r3, #0]
200011e4:	1ac0      	subs	r0, r0, r3
200011e6:	6008      	str	r0, [r1, #0]
200011e8:	e7d1      	b.n	2000118e <_malloc_trim_r+0x4e>
200011ea:	bf00      	nop
200011ec:	20001b60 	.word	0x20001b60
200011f0:	200015c4 	.word	0x200015c4
200011f4:	200015d0 	.word	0x200015d0

200011f8 <_free_r>:
200011f8:	2900      	cmp	r1, #0
200011fa:	d07c      	beq.n	200012f6 <_free_r+0xfe>
200011fc:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
20001200:	460c      	mov	r4, r1
20001202:	4680      	mov	r8, r0
20001204:	f7ff fcbe 	bl	20000b84 <__malloc_lock>
20001208:	f854 3c04 	ldr.w	r3, [r4, #-4]
2000120c:	4f75      	ldr	r7, [pc, #468]	@ (200013e4 <_free_r+0x1ec>)
2000120e:	f1a4 0508 	sub.w	r5, r4, #8
20001212:	f023 0101 	bic.w	r1, r3, #1
20001216:	1868      	adds	r0, r5, r1
20001218:	68be      	ldr	r6, [r7, #8]
2000121a:	6842      	ldr	r2, [r0, #4]
2000121c:	4286      	cmp	r6, r0
2000121e:	f022 0203 	bic.w	r2, r2, #3
20001222:	f000 8083 	beq.w	2000132c <_free_r+0x134>
20001226:	07de      	lsls	r6, r3, #31
20001228:	6042      	str	r2, [r0, #4]
2000122a:	eb00 0c02 	add.w	ip, r0, r2
2000122e:	d433      	bmi.n	20001298 <_free_r+0xa0>
20001230:	f854 4c08 	ldr.w	r4, [r4, #-8]
20001234:	f8dc 3004 	ldr.w	r3, [ip, #4]
20001238:	1b2d      	subs	r5, r5, r4
2000123a:	4421      	add	r1, r4
2000123c:	68ac      	ldr	r4, [r5, #8]
2000123e:	f107 0c08 	add.w	ip, r7, #8
20001242:	4564      	cmp	r4, ip
20001244:	f003 0301 	and.w	r3, r3, #1
20001248:	d064      	beq.n	20001314 <_free_r+0x11c>
2000124a:	f8d5 e00c 	ldr.w	lr, [r5, #12]
2000124e:	f8c4 e00c 	str.w	lr, [r4, #12]
20001252:	f8ce 4008 	str.w	r4, [lr, #8]
20001256:	2b00      	cmp	r3, #0
20001258:	f000 8081 	beq.w	2000135e <_free_r+0x166>
2000125c:	f041 0301 	orr.w	r3, r1, #1
20001260:	606b      	str	r3, [r5, #4]
20001262:	6001      	str	r1, [r0, #0]
20001264:	f5b1 7f00 	cmp.w	r1, #512	@ 0x200
20001268:	d222      	bcs.n	200012b0 <_free_r+0xb8>
2000126a:	6878      	ldr	r0, [r7, #4]
2000126c:	08cb      	lsrs	r3, r1, #3
2000126e:	2201      	movs	r2, #1
20001270:	0949      	lsrs	r1, r1, #5
20001272:	3301      	adds	r3, #1
20001274:	408a      	lsls	r2, r1
20001276:	4302      	orrs	r2, r0
20001278:	f857 1033 	ldr.w	r1, [r7, r3, lsl #3]
2000127c:	607a      	str	r2, [r7, #4]
2000127e:	eb07 02c3 	add.w	r2, r7, r3, lsl #3
20001282:	3a08      	subs	r2, #8
20001284:	e9c5 1202 	strd	r1, r2, [r5, #8]
20001288:	f847 5033 	str.w	r5, [r7, r3, lsl #3]
2000128c:	60cd      	str	r5, [r1, #12]
2000128e:	4640      	mov	r0, r8
20001290:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
20001294:	f7ff bc7c 	b.w	20000b90 <__malloc_unlock>
20001298:	f8dc 3004 	ldr.w	r3, [ip, #4]
2000129c:	07db      	lsls	r3, r3, #31
2000129e:	d52b      	bpl.n	200012f8 <_free_r+0x100>
200012a0:	f041 0301 	orr.w	r3, r1, #1
200012a4:	f5b1 7f00 	cmp.w	r1, #512	@ 0x200
200012a8:	f844 3c04 	str.w	r3, [r4, #-4]
200012ac:	6001      	str	r1, [r0, #0]
200012ae:	d3dc      	bcc.n	2000126a <_free_r+0x72>
200012b0:	f5b1 6f20 	cmp.w	r1, #2560	@ 0xa00
200012b4:	ea4f 2351 	mov.w	r3, r1, lsr #9
200012b8:	d253      	bcs.n	20001362 <_free_r+0x16a>
200012ba:	098b      	lsrs	r3, r1, #6
200012bc:	f103 0039 	add.w	r0, r3, #57	@ 0x39
200012c0:	f103 0238 	add.w	r2, r3, #56	@ 0x38
200012c4:	00c3      	lsls	r3, r0, #3
200012c6:	18f8      	adds	r0, r7, r3
200012c8:	58fb      	ldr	r3, [r7, r3]
200012ca:	3808      	subs	r0, #8
200012cc:	4298      	cmp	r0, r3
200012ce:	d103      	bne.n	200012d8 <_free_r+0xe0>
200012d0:	e061      	b.n	20001396 <_free_r+0x19e>
200012d2:	689b      	ldr	r3, [r3, #8]
200012d4:	4298      	cmp	r0, r3
200012d6:	d004      	beq.n	200012e2 <_free_r+0xea>
200012d8:	685a      	ldr	r2, [r3, #4]
200012da:	f022 0203 	bic.w	r2, r2, #3
200012de:	428a      	cmp	r2, r1
200012e0:	d8f7      	bhi.n	200012d2 <_free_r+0xda>
200012e2:	68d8      	ldr	r0, [r3, #12]
200012e4:	e9c5 3002 	strd	r3, r0, [r5, #8]
200012e8:	6085      	str	r5, [r0, #8]
200012ea:	60dd      	str	r5, [r3, #12]
200012ec:	4640      	mov	r0, r8
200012ee:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
200012f2:	f7ff bc4d 	b.w	20000b90 <__malloc_unlock>
200012f6:	4770      	bx	lr
200012f8:	4411      	add	r1, r2
200012fa:	f107 0c08 	add.w	ip, r7, #8
200012fe:	6883      	ldr	r3, [r0, #8]
20001300:	4563      	cmp	r3, ip
20001302:	d03f      	beq.n	20001384 <_free_r+0x18c>
20001304:	68c2      	ldr	r2, [r0, #12]
20001306:	60da      	str	r2, [r3, #12]
20001308:	6093      	str	r3, [r2, #8]
2000130a:	f041 0301 	orr.w	r3, r1, #1
2000130e:	606b      	str	r3, [r5, #4]
20001310:	5069      	str	r1, [r5, r1]
20001312:	e7a7      	b.n	20001264 <_free_r+0x6c>
20001314:	2b00      	cmp	r3, #0
20001316:	d15f      	bne.n	200013d8 <_free_r+0x1e0>
20001318:	440a      	add	r2, r1
2000131a:	e9d0 1302 	ldrd	r1, r3, [r0, #8]
2000131e:	60cb      	str	r3, [r1, #12]
20001320:	6099      	str	r1, [r3, #8]
20001322:	f042 0301 	orr.w	r3, r2, #1
20001326:	606b      	str	r3, [r5, #4]
20001328:	50aa      	str	r2, [r5, r2]
2000132a:	e7b0      	b.n	2000128e <_free_r+0x96>
2000132c:	07db      	lsls	r3, r3, #31
2000132e:	440a      	add	r2, r1
20001330:	d407      	bmi.n	20001342 <_free_r+0x14a>
20001332:	f854 3c08 	ldr.w	r3, [r4, #-8]
20001336:	1aed      	subs	r5, r5, r3
20001338:	441a      	add	r2, r3
2000133a:	e9d5 1302 	ldrd	r1, r3, [r5, #8]
2000133e:	60cb      	str	r3, [r1, #12]
20001340:	6099      	str	r1, [r3, #8]
20001342:	f042 0301 	orr.w	r3, r2, #1
20001346:	606b      	str	r3, [r5, #4]
20001348:	4b27      	ldr	r3, [pc, #156]	@ (200013e8 <_free_r+0x1f0>)
2000134a:	60bd      	str	r5, [r7, #8]
2000134c:	681b      	ldr	r3, [r3, #0]
2000134e:	4293      	cmp	r3, r2
20001350:	d89d      	bhi.n	2000128e <_free_r+0x96>
20001352:	4b26      	ldr	r3, [pc, #152]	@ (200013ec <_free_r+0x1f4>)
20001354:	4640      	mov	r0, r8
20001356:	6819      	ldr	r1, [r3, #0]
20001358:	f7ff fef2 	bl	20001140 <_malloc_trim_r>
2000135c:	e797      	b.n	2000128e <_free_r+0x96>
2000135e:	4411      	add	r1, r2
20001360:	e7cd      	b.n	200012fe <_free_r+0x106>
20001362:	2b14      	cmp	r3, #20
20001364:	d908      	bls.n	20001378 <_free_r+0x180>
20001366:	2b54      	cmp	r3, #84	@ 0x54
20001368:	d81d      	bhi.n	200013a6 <_free_r+0x1ae>
2000136a:	0b0b      	lsrs	r3, r1, #12
2000136c:	f103 006f 	add.w	r0, r3, #111	@ 0x6f
20001370:	f103 026e 	add.w	r2, r3, #110	@ 0x6e
20001374:	00c3      	lsls	r3, r0, #3
20001376:	e7a6      	b.n	200012c6 <_free_r+0xce>
20001378:	f103 005c 	add.w	r0, r3, #92	@ 0x5c
2000137c:	f103 025b 	add.w	r2, r3, #91	@ 0x5b
20001380:	00c3      	lsls	r3, r0, #3
20001382:	e7a0      	b.n	200012c6 <_free_r+0xce>
20001384:	f041 0301 	orr.w	r3, r1, #1
20001388:	e9c7 5504 	strd	r5, r5, [r7, #16]
2000138c:	e9c5 cc02 	strd	ip, ip, [r5, #8]
20001390:	606b      	str	r3, [r5, #4]
20001392:	5069      	str	r1, [r5, r1]
20001394:	e77b      	b.n	2000128e <_free_r+0x96>
20001396:	6879      	ldr	r1, [r7, #4]
20001398:	1092      	asrs	r2, r2, #2
2000139a:	2401      	movs	r4, #1
2000139c:	fa04 f202 	lsl.w	r2, r4, r2
200013a0:	430a      	orrs	r2, r1
200013a2:	607a      	str	r2, [r7, #4]
200013a4:	e79e      	b.n	200012e4 <_free_r+0xec>
200013a6:	f5b3 7faa 	cmp.w	r3, #340	@ 0x154
200013aa:	d806      	bhi.n	200013ba <_free_r+0x1c2>
200013ac:	0bcb      	lsrs	r3, r1, #15
200013ae:	f103 0078 	add.w	r0, r3, #120	@ 0x78
200013b2:	f103 0277 	add.w	r2, r3, #119	@ 0x77
200013b6:	00c3      	lsls	r3, r0, #3
200013b8:	e785      	b.n	200012c6 <_free_r+0xce>
200013ba:	f240 5254 	movw	r2, #1364	@ 0x554
200013be:	4293      	cmp	r3, r2
200013c0:	d806      	bhi.n	200013d0 <_free_r+0x1d8>
200013c2:	0c8b      	lsrs	r3, r1, #18
200013c4:	f103 007d 	add.w	r0, r3, #125	@ 0x7d
200013c8:	f103 027c 	add.w	r2, r3, #124	@ 0x7c
200013cc:	00c3      	lsls	r3, r0, #3
200013ce:	e77a      	b.n	200012c6 <_free_r+0xce>
200013d0:	f44f 737e 	mov.w	r3, #1016	@ 0x3f8
200013d4:	227e      	movs	r2, #126	@ 0x7e
200013d6:	e776      	b.n	200012c6 <_free_r+0xce>
200013d8:	f041 0301 	orr.w	r3, r1, #1
200013dc:	606b      	str	r3, [r5, #4]
200013de:	6001      	str	r1, [r0, #0]
200013e0:	e755      	b.n	2000128e <_free_r+0x96>
200013e2:	bf00      	nop
200013e4:	200015d0 	.word	0x200015d0
200013e8:	200015c8 	.word	0x200015c8
200013ec:	20001b90 	.word	0x20001b90

200013f0 <__errno>:
200013f0:	4b01      	ldr	r3, [pc, #4]	@ (200013f8 <__errno+0x8>)
200013f2:	6818      	ldr	r0, [r3, #0]
200013f4:	4770      	bx	lr
200013f6:	bf00      	nop
200013f8:	20001478 	.word	0x20001478

Disassembly of section .init:

200013fc <_init>:
200013fc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
200013fe:	bf00      	nop
20001400:	bcf8      	pop	{r3, r4, r5, r6, r7}
20001402:	bc08      	pop	{r3}
20001404:	469e      	mov	lr, r3
20001406:	4770      	bx	lr

Disassembly of section .fini:

20001408 <_fini>:
20001408:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
2000140a:	bf00      	nop
2000140c:	bcf8      	pop	{r3, r4, r5, r6, r7}
2000140e:	bc08      	pop	{r3}
20001410:	469e      	mov	lr, r3
20001412:	4770      	bx	lr
