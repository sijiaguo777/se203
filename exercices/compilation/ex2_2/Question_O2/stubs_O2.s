	.cpu arm7tdmi
	.arch armv4t
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"stubs.c"
	.text
	.align	2
	.global	_exit
	.syntax unified
	.arm
	.type	_exit, %function
_exit:
	@ Function supports interworking.
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.L2:
	b	.L2
	.size	_exit, .-_exit
	.align	2
	.global	_sbrk
	.syntax unified
	.arm
	.type	_sbrk, %function
_sbrk:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	_sbrk, .-_sbrk
	.align	2
	.global	_write
	.syntax unified
	.arm
	.type	_write, %function
_write:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	_write, .-_write
	.align	2
	.global	_close
	.syntax unified
	.arm
	.type	_close, %function
_close:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	_close, .-_close
	.align	2
	.global	_fstat
	.syntax unified
	.arm
	.type	_fstat, %function
_fstat:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	_fstat, .-_fstat
	.align	2
	.global	_isatty
	.syntax unified
	.arm
	.type	_isatty, %function
_isatty:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r0, #0
	bx	lr
	.size	_isatty, .-_isatty
	.align	2
	.global	_lseek
	.syntax unified
	.arm
	.type	_lseek, %function
_lseek:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	_lseek, .-_lseek
	.align	2
	.global	_read
	.syntax unified
	.arm
	.type	_read, %function
_read:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r0, #0
	bx	lr
	.size	_read, .-_read
	.align	2
	.global	_kill
	.syntax unified
	.arm
	.type	_kill, %function
_kill:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	_kill, .-_kill
	.align	2
	.global	_getpid
	.syntax unified
	.arm
	.type	_getpid, %function
_getpid:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	_getpid, .-_getpid
	.ident	"GCC: (Arm GNU Toolchain 13.3.Rel1 (Build arm-13.24)) 13.3.1 20240614"
