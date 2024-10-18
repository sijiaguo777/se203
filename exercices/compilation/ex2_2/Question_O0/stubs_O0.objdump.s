
Question_O0/stubs_O0.o:     file format elf32-littlearm


Disassembly of section .text:

00000000 <_exit>:
   0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
   4:	e28db000 	add	fp, sp, #0
   8:	e24dd00c 	sub	sp, sp, #12
   c:	e50b0008 	str	r0, [fp, #-8]
  10:	eafffffe 	b	10 <_exit+0x10>

00000014 <_sbrk>:
  14:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
  18:	e28db000 	add	fp, sp, #0
  1c:	e24dd00c 	sub	sp, sp, #12
  20:	e50b0008 	str	r0, [fp, #-8]
  24:	e1a00000 	nop			@ (mov r0, r0)
  28:	e1a00003 	mov	r0, r3
  2c:	e28bd000 	add	sp, fp, #0
  30:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
  34:	e12fff1e 	bx	lr

00000038 <_write>:
  38:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
  3c:	e28db000 	add	fp, sp, #0
  40:	e24dd014 	sub	sp, sp, #20
  44:	e50b0008 	str	r0, [fp, #-8]
  48:	e50b100c 	str	r1, [fp, #-12]
  4c:	e50b2010 	str	r2, [fp, #-16]
  50:	e1a00000 	nop			@ (mov r0, r0)
  54:	e1a00003 	mov	r0, r3
  58:	e28bd000 	add	sp, fp, #0
  5c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
  60:	e12fff1e 	bx	lr

00000064 <_close>:
  64:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
  68:	e28db000 	add	fp, sp, #0
  6c:	e24dd00c 	sub	sp, sp, #12
  70:	e50b0008 	str	r0, [fp, #-8]
  74:	e1a00000 	nop			@ (mov r0, r0)
  78:	e1a00003 	mov	r0, r3
  7c:	e28bd000 	add	sp, fp, #0
  80:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
  84:	e12fff1e 	bx	lr

00000088 <_fstat>:
  88:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
  8c:	e28db000 	add	fp, sp, #0
  90:	e24dd00c 	sub	sp, sp, #12
  94:	e50b0008 	str	r0, [fp, #-8]
  98:	e50b100c 	str	r1, [fp, #-12]
  9c:	e1a00000 	nop			@ (mov r0, r0)
  a0:	e1a00003 	mov	r0, r3
  a4:	e28bd000 	add	sp, fp, #0
  a8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
  ac:	e12fff1e 	bx	lr

000000b0 <_isatty>:
  b0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
  b4:	e28db000 	add	fp, sp, #0
  b8:	e24dd00c 	sub	sp, sp, #12
  bc:	e50b0008 	str	r0, [fp, #-8]
  c0:	e1a00000 	nop			@ (mov r0, r0)
  c4:	e1a00003 	mov	r0, r3
  c8:	e28bd000 	add	sp, fp, #0
  cc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
  d0:	e12fff1e 	bx	lr

000000d4 <_lseek>:
  d4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
  d8:	e28db000 	add	fp, sp, #0
  dc:	e24dd014 	sub	sp, sp, #20
  e0:	e50b0008 	str	r0, [fp, #-8]
  e4:	e50b100c 	str	r1, [fp, #-12]
  e8:	e50b2010 	str	r2, [fp, #-16]
  ec:	e1a00000 	nop			@ (mov r0, r0)
  f0:	e1a00003 	mov	r0, r3
  f4:	e28bd000 	add	sp, fp, #0
  f8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
  fc:	e12fff1e 	bx	lr

00000100 <_read>:
 100:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
 104:	e28db000 	add	fp, sp, #0
 108:	e24dd014 	sub	sp, sp, #20
 10c:	e50b0008 	str	r0, [fp, #-8]
 110:	e50b100c 	str	r1, [fp, #-12]
 114:	e50b2010 	str	r2, [fp, #-16]
 118:	e1a00000 	nop			@ (mov r0, r0)
 11c:	e1a00003 	mov	r0, r3
 120:	e28bd000 	add	sp, fp, #0
 124:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
 128:	e12fff1e 	bx	lr

0000012c <_kill>:
 12c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
 130:	e28db000 	add	fp, sp, #0
 134:	e24dd00c 	sub	sp, sp, #12
 138:	e50b0008 	str	r0, [fp, #-8]
 13c:	e50b100c 	str	r1, [fp, #-12]
 140:	e1a00000 	nop			@ (mov r0, r0)
 144:	e1a00003 	mov	r0, r3
 148:	e28bd000 	add	sp, fp, #0
 14c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
 150:	e12fff1e 	bx	lr

00000154 <_getpid>:
 154:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
 158:	e28db000 	add	fp, sp, #0
 15c:	e1a00000 	nop			@ (mov r0, r0)
 160:	e1a00003 	mov	r0, r3
 164:	e28bd000 	add	sp, fp, #0
 168:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
 16c:	e12fff1e 	bx	lr
