
Question_Os/ex2_2_3_1_Os.o:     file format elf32-littlearm


Disassembly of section .text.startup:

00000000 <main>:
   0:	e3a0300c 	mov	r3, #12
   4:	e92d4073 	push	{r0, r1, r4, r5, r6, lr}
   8:	e59f5048 	ldr	r5, [pc, #72]	@ 58 <main+0x58>
   c:	e5d54004 	ldrb	r4, [r5, #4]
  10:	e59f6044 	ldr	r6, [pc, #68]	@ 5c <main+0x5c>
  14:	e2844001 	add	r4, r4, #1
  18:	e20440ff 	and	r4, r4, #255	@ 0xff
  1c:	e5c54004 	strb	r4, [r5, #4]
  20:	e5960000 	ldr	r0, [r6]
  24:	e284400c 	add	r4, r4, #12
  28:	e5853000 	str	r3, [r5]
  2c:	ebfffffe 	bl	0 <printf>
  30:	e58d4000 	str	r4, [sp]
  34:	e59f0024 	ldr	r0, [pc, #36]	@ 60 <main+0x60>
  38:	e5d53004 	ldrb	r3, [r5, #4]
  3c:	e5952000 	ldr	r2, [r5]
  40:	e5961004 	ldr	r1, [r6, #4]
  44:	ebfffffe 	bl	0 <printf>
  48:	e3a00000 	mov	r0, #0
  4c:	e28dd008 	add	sp, sp, #8
  50:	e8bd4070 	pop	{r4, r5, r6, lr}
  54:	e12fff1e 	bx	lr
	...
