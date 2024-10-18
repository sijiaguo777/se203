
Question_O0/ex2_2_3_1_O0.o:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
   0:	e92d4800 	push	{fp, lr}
   4:	e28db004 	add	fp, sp, #4
   8:	e24dd010 	sub	sp, sp, #16
   c:	e59f3094 	ldr	r3, [pc, #148]	@ a8 <main+0xa8>
  10:	e3a0200c 	mov	r2, #12
  14:	e5832000 	str	r2, [r3]
  18:	e59f308c 	ldr	r3, [pc, #140]	@ ac <main+0xac>
  1c:	e5d33000 	ldrb	r3, [r3]
  20:	e2833001 	add	r3, r3, #1
  24:	e20320ff 	and	r2, r3, #255	@ 0xff
  28:	e59f307c 	ldr	r3, [pc, #124]	@ ac <main+0xac>
  2c:	e5c32000 	strb	r2, [r3]
  30:	e59f3074 	ldr	r3, [pc, #116]	@ ac <main+0xac>
  34:	e5d33000 	ldrb	r3, [r3]
  38:	e1a02003 	mov	r2, r3
  3c:	e59f3064 	ldr	r3, [pc, #100]	@ a8 <main+0xa8>
  40:	e5933000 	ldr	r3, [r3]
  44:	e1a03803 	lsl	r3, r3, #16
  48:	e1a03823 	lsr	r3, r3, #16
  4c:	e0823003 	add	r3, r2, r3
  50:	e14b30b6 	strh	r3, [fp, #-6]
  54:	e59f3054 	ldr	r3, [pc, #84]	@ b0 <main+0xb0>
  58:	e5933000 	ldr	r3, [r3]
  5c:	e1a00003 	mov	r0, r3
  60:	ebfffffe 	bl	0 <printf>
  64:	e59f3048 	ldr	r3, [pc, #72]	@ b4 <main+0xb4>
  68:	e5931000 	ldr	r1, [r3]
  6c:	e59f3034 	ldr	r3, [pc, #52]	@ a8 <main+0xa8>
  70:	e5932000 	ldr	r2, [r3]
  74:	e59f3030 	ldr	r3, [pc, #48]	@ ac <main+0xac>
  78:	e5d33000 	ldrb	r3, [r3]
  7c:	e1a00003 	mov	r0, r3
  80:	e15b30b6 	ldrh	r3, [fp, #-6]
  84:	e58d3000 	str	r3, [sp]
  88:	e1a03000 	mov	r3, r0
  8c:	e59f0024 	ldr	r0, [pc, #36]	@ b8 <main+0xb8>
  90:	ebfffffe 	bl	0 <printf>
  94:	e3a03000 	mov	r3, #0
  98:	e1a00003 	mov	r0, r3
  9c:	e24bd004 	sub	sp, fp, #4
  a0:	e8bd4800 	pop	{fp, lr}
  a4:	e12fff1e 	bx	lr
  a8:	00000000 	.word	0x00000000
  ac:	00000004 	.word	0x00000004
	...
  b8:	00000010 	.word	0x00000010
