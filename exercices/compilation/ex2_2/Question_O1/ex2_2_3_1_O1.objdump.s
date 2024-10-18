
Question_O1/ex2_2_3_1_O1.o:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e24dd008 	sub	sp, sp, #8
   8:	e59f504c 	ldr	r5, [pc, #76]	@ 5c <main+0x5c>
   c:	e3a0300c 	mov	r3, #12
  10:	e5853000 	str	r3, [r5]
  14:	e5d54004 	ldrb	r4, [r5, #4]
  18:	e2844001 	add	r4, r4, #1
  1c:	e20440ff 	and	r4, r4, #255	@ 0xff
  20:	e5c54004 	strb	r4, [r5, #4]
  24:	e59f6034 	ldr	r6, [pc, #52]	@ 60 <main+0x60>
  28:	e5960000 	ldr	r0, [r6]
  2c:	ebfffffe 	bl	0 <printf>
  30:	e284400c 	add	r4, r4, #12
  34:	e58d4000 	str	r4, [sp]
  38:	e5d53004 	ldrb	r3, [r5, #4]
  3c:	e5952000 	ldr	r2, [r5]
  40:	e5961004 	ldr	r1, [r6, #4]
  44:	e59f0018 	ldr	r0, [pc, #24]	@ 64 <main+0x64>
  48:	ebfffffe 	bl	0 <printf>
  4c:	e3a00000 	mov	r0, #0
  50:	e28dd008 	add	sp, sp, #8
  54:	e8bd4070 	pop	{r4, r5, r6, lr}
  58:	e12fff1e 	bx	lr
	...
