	.cpu arm7tdmi
	.arch armv4t
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 1
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"ex2_2_3_2.c"
	.text
	.section	.rodata.str1.4,"aMS",%progbits,1
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
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	sub	sp, sp, #12
	ldr	r5, .L3
	mov	r3, #12
	str	r3, [r5]
	ldrb	r4, [r5, #4]	@ zero_extendqisi2
	add	r4, r4, #1
	and	r4, r4, #255
	strb	r4, [r5, #4]
	ldr	r0, .L3+4
	bl	puts
	add	r4, r4, #12
	str	r4, [sp]
	ldrb	r3, [r5, #4]	@ zero_extendqisi2
	ldr	r2, [r5]
	ldr	r1, .L3+8
	ldr	r1, [r1]
	ldr	r0, .L3+12
	bl	printf
	mov	r0, #0
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L4:
	.align	2
.L3:
	.word	.LANCHOR0
	.word	.LC0
	.word	.LANCHOR1
	.word	.LC1
	.size	main, .-main
	.global	mesg
	.section	.rodata.str1.4
	.align	2
.LC2:
	.ascii	"Hello World!\012\000"
	.global	y
	.global	x
	.section	.rodata
	.align	2
	.type	mesg, %object
	.size	mesg, 4
mesg:
	.word	.LC2
	.data
	.align	2
	.set	.LANCHOR1,. + 0
	.type	x, %object
	.size	x, 4
x:
	.word	34
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	y, %object
	.size	y, 4
y:
	.space	4
	.type	z.0, %object
	.size	z.0, 1
z.0:
	.space	1
	.ident	"GCC: (Arm GNU Toolchain 13.3.Rel1 (Build arm-13.24)) 13.3.1 20240614"
