
Question_O1/ex2_2_2_O1.o:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
   0:	e92d4030 	push	{r4, r5, lr}
   4:	e24dd00c 	sub	sp, sp, #12
   8:	e59f504c 	ldr	r5, [pc, #76]	@ 5c <main+0x5c>
   c:	e3a0300c 	mov	r3, #12
  10:	e5853000 	str	r3, [r5]
  14:	e5d54004 	ldrb	r4, [r5, #4]
  18:	e2844001 	add	r4, r4, #1
  1c:	e20440ff 	and	r4, r4, #255	@ 0xff
  20:	e5c54004 	strb	r4, [r5, #4]
  24:	e59f0034 	ldr	r0, [pc, #52]	@ 60 <main+0x60>
  28:	ebfffffe 	bl	0 <puts>
  2c:	e284400c 	add	r4, r4, #12
  30:	e58d4000 	str	r4, [sp]
  34:	e5d53004 	ldrb	r3, [r5, #4]
  38:	e5952000 	ldr	r2, [r5]
  3c:	e59f1020 	ldr	r1, [pc, #32]	@ 64 <main+0x64>
  40:	e5911000 	ldr	r1, [r1]
  44:	e59f001c 	ldr	r0, [pc, #28]	@ 68 <main+0x68>
  48:	ebfffffe 	bl	0 <printf>
  4c:	e3a00000 	mov	r0, #0
  50:	e28dd00c 	add	sp, sp, #12
  54:	e8bd4030 	pop	{r4, r5, lr}
  58:	e12fff1e 	bx	lr
	...
  68:	00000010 	.word	0x00000010
