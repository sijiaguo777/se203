	.cpu arm7tdmi
	.arch armv4t
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 4
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"ex1_2.c"
	.text
	.align	2
	.global	f
	.syntax unified
	.arm
	.type	f, %function
f:
	@ Function supports interworking.
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L2
	ldm	r3, {r0, r1}
	ldr	ip, [r1]
	ldr	r2, [r0]
	add	r2, r2, ip
	str	r2, [r0]
	ldr	r2, [r3, #8]
	ldr	r1, [r1]
	ldr	r3, [r2]
	add	r3, r3, r1
	str	r3, [r2]
.L3:
	.align	2
.L2:
	.word	.LANCHOR0
	.size	f, .-f
	.global	c
	.global	b
	.global	a
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	a, %object
	.size	a, 4
a:
	.space	4
	.type	c, %object
	.size	c, 4
c:
	.space	4
	.type	b, %object
	.size	b, 4
b:
	.space	4
	.ident	"GCC: (Arm GNU Toolchain 13.3.Rel1 (Build arm-13.24)) 13.3.1 20240614"
