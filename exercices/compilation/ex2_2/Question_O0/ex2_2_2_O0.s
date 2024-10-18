	.cpu arm7tdmi
	.arch armv4t
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 6
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"ex2_2_2.c"
	.text
	.global	x
	.data
	.align	2
	.type	x, %object
	.size	x, 4
x:
	.word	34
	.global	y
	.bss
	.align	2
	.type	y, %object
	.size	y, 4
y:
	.space	4
	.section	.rodata
	.align	2
	.type	mesg, %object
	.size	mesg, 14
mesg:
	.ascii	"Hello World!\012\000"
	.align	2
.LC0:
	.ascii	"Hello World!\000"
	.align	2
.LC1:
	.ascii	"x = %d, y = %d, z = %d, t = %d\012\000"
	.text
	.align	2
	.global	main
	.syntax unified
	.arm
	.type	main, %function
main:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	ldr	r3, .L3
	mov	r2, #12
	str	r2, [r3]
	ldr	r3, .L3+4
	ldrb	r3, [r3]	@ zero_extendqisi2
	add	r3, r3, #1
	and	r2, r3, #255
	ldr	r3, .L3+4
	strb	r2, [r3]
	ldr	r3, .L3+4
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, .L3
	ldr	r3, [r3]
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	add	r3, r2, r3
	strh	r3, [fp, #-6]	@ movhi
	ldr	r0, .L3+8
	bl	puts
	ldr	r3, .L3+12
	ldr	r1, [r3]
	ldr	r3, .L3
	ldr	r2, [r3]
	ldr	r3, .L3+4
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	ldrh	r3, [fp, #-6]
	str	r3, [sp]
	mov	r3, r0
	ldr	r0, .L3+16
	bl	printf
	mov	r3, #0
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, lr}
	bx	lr
.L4:
	.align	2
.L3:
	.word	y
	.word	z.0
	.word	.LC0
	.word	x
	.word	.LC1
	.size	main, .-main
	.bss
z.0:
	.space	1
	.size	z.0, 1
	.ident	"GCC: (Arm GNU Toolchain 13.3.Rel1 (Build arm-13.24)) 13.3.1 20240614"
