
Question_O2/ex2_2_2_O2.o:     file format elf32-littlearm


Disassembly of section .text.startup:

00000000 <main>:
   0:	e3a0300c 	mov	r3, #12
   4:	e92d4030 	push	{r4, r5, lr}
   8:	e59f504c 	ldr	r5, [pc, #76]	@ 5c <main+0x5c>
   c:	e5d54004 	ldrb	r4, [r5, #4]
  10:	e2844001 	add	r4, r4, #1
  14:	e24dd00c 	sub	sp, sp, #12
  18:	e20440ff 	and	r4, r4, #255	@ 0xff
  1c:	e59f003c 	ldr	r0, [pc, #60]	@ 60 <main+0x60>
  20:	e5c54004 	strb	r4, [r5, #4]
  24:	e5853000 	str	r3, [r5]
  28:	ebfffffe 	bl	0 <puts>
  2c:	e59f3030 	ldr	r3, [pc, #48]	@ 64 <main+0x64>
  30:	e284400c 	add	r4, r4, #12
  34:	e5931000 	ldr	r1, [r3]
  38:	e58d4000 	str	r4, [sp]
  3c:	e59f0024 	ldr	r0, [pc, #36]	@ 68 <main+0x68>
  40:	e5d53004 	ldrb	r3, [r5, #4]
  44:	e5952000 	ldr	r2, [r5]
  48:	ebfffffe 	bl	0 <printf>
  4c:	e3a00000 	mov	r0, #0
  50:	e28dd00c 	add	sp, sp, #12
  54:	e8bd4030 	pop	{r4, r5, lr}
  58:	e12fff1e 	bx	lr
	...
  68:	00000010 	.word	0x00000010
