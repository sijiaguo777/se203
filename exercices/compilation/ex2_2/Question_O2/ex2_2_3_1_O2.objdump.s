
Question_O2/ex2_2_3_1_O2.o:     file format elf32-littlearm


Disassembly of section .text.startup:

00000000 <main>:
   0:	e3a0300c 	mov	r3, #12
   4:	e92d4070 	push	{r4, r5, r6, lr}
   8:	e59f504c 	ldr	r5, [pc, #76]	@ 5c <main+0x5c>
   c:	e5d54004 	ldrb	r4, [r5, #4]
  10:	e59f6048 	ldr	r6, [pc, #72]	@ 60 <main+0x60>
  14:	e2844001 	add	r4, r4, #1
  18:	e20440ff 	and	r4, r4, #255	@ 0xff
  1c:	e24dd008 	sub	sp, sp, #8
  20:	e5960000 	ldr	r0, [r6]
  24:	e5c54004 	strb	r4, [r5, #4]
  28:	e284400c 	add	r4, r4, #12
  2c:	e5853000 	str	r3, [r5]
  30:	ebfffffe 	bl	0 <printf>
  34:	e58d4000 	str	r4, [sp]
  38:	e59f0024 	ldr	r0, [pc, #36]	@ 64 <main+0x64>
  3c:	e5d53004 	ldrb	r3, [r5, #4]
  40:	e5952000 	ldr	r2, [r5]
  44:	e5961004 	ldr	r1, [r6, #4]
  48:	ebfffffe 	bl	0 <printf>
  4c:	e3a00000 	mov	r0, #0
  50:	e28dd008 	add	sp, sp, #8
  54:	e8bd4070 	pop	{r4, r5, r6, lr}
  58:	e12fff1e 	bx	lr
	...
