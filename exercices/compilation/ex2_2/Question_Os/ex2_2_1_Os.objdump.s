
Question_Os/ex2_2_1_Os.o:     file format elf32-littlearm


Disassembly of section .text.startup:

00000000 <main>:
   0:	e3a0300c 	mov	r3, #12
   4:	e92d4037 	push	{r0, r1, r2, r4, r5, lr}
   8:	e59f5048 	ldr	r5, [pc, #72]	@ 58 <main+0x58>
   c:	e5d54004 	ldrb	r4, [r5, #4]
  10:	e2844001 	add	r4, r4, #1
  14:	e20440ff 	and	r4, r4, #255	@ 0xff
  18:	e5c54004 	strb	r4, [r5, #4]
  1c:	e59f0038 	ldr	r0, [pc, #56]	@ 5c <main+0x5c>
  20:	e284400c 	add	r4, r4, #12
  24:	e5853000 	str	r3, [r5]
  28:	ebfffffe 	bl	0 <puts>
  2c:	e58d4000 	str	r4, [sp]
  30:	e59f1028 	ldr	r1, [pc, #40]	@ 60 <main+0x60>
  34:	e5d53004 	ldrb	r3, [r5, #4]
  38:	e5952000 	ldr	r2, [r5]
  3c:	e5911000 	ldr	r1, [r1]
  40:	e59f001c 	ldr	r0, [pc, #28]	@ 64 <main+0x64>
  44:	ebfffffe 	bl	0 <printf>
  48:	e3a00000 	mov	r0, #0
  4c:	e28dd00c 	add	sp, sp, #12
  50:	e8bd4030 	pop	{r4, r5, lr}
  54:	e12fff1e 	bx	lr
	...
  64:	0000000d 	.word	0x0000000d
