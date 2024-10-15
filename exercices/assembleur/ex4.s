.syntax unified
.arch armv7-m
.cpu cortex-m4

.thumb
    .global _start

.data
message: .asciz "Bonjour le monde!"
destination1: .space 64 @ Reserve 64 bytes
destination2: .space 64
destination3: .space 64

.text
.global _start

_start:
    ldr r0, =message @ load address of message to r0
    ldr r1, =destination1 @ load address of destination to r1
    bl copy_str @ call copy_str to copy the value of r0 to address in r1

    ldr r0, =message
    ldr r1, =destination2
    bl copy_str

    ldr r0, =message
    ldr r1, =destination3
    bl copy_str

end:
    b end

copy_str:
    ldrb r2, [r0], #1 @ load one byte from the address stored in r0 to r2, increment r0 by 1
    strb r2, [r1], #1 @ load one byte in r2 to address in r1, increment r1 by 1
    cmp r2, #0 @ compare the value in r2 with zero, update the condition flags (check for the end of string)
    bne copy_str @ if zero flag is not 0, back to loop
    bx lr @ return from subroutine
