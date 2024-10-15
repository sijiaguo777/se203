.syntax unified
.arch armv7-m
.cpu cortex-m4

.thumb
.global _start

_start:
    mov r0, #256 @ set r0 as the size (256 bytes)
    ldr r1, =0xdeadbeef @ load the value 0xdeadbeef to fill memory in r1
    ldr r2, =0x10000000 @ base address for initialization (source memory)
    mov r3, r0 @ copy size to r3 for later use in copy_mem
    ldr r4, =0x10001000 @ base address for destination memory
    bl init_mem @ call init_mem to fill memory with 0xdeadbeef
    bl copy_mem @ call copy_mem to copy memory from source to destination

    mov r0, #256 @ set r0 as the size (256 bytes)
    ldr r1, =0x00000001 @ load the value 0x00000001 to fill memory in r1
    ldr r2, =0x10000000 @ base address for initialization (source memory)
    mov r3, r0 @ copy size to r3 for later use in copy_mem
    ldr r4, =0x10001000 @ base address for destination memory
    bl init_mem @ call init_mem to fill memory with 0x00000001
    bl copy_mem @ call copy_mem to copy memory from source to destination

end:
    b end @ infinite loop to halt the program

init_mem: 
    fill_loop:
    subs r0, r0, #4 @ process 4 bytes at a time
    str r1, [r2, r0] @ Store value in r1 to memory address [r2 + r0]
    bne fill_loop @ Repeat if r0 is not zero
    bx lr @ Return from subroutine

copy_mem: 
    copy_loop:
    subs r3, r3, #4 @ process 4 bytes at a time
    ldr r5, [r2, r3] @ Load 4 bytes from source memory [r2 + r3] into r5
    str r5, [r4, r3] @ Store those 4 bytes into destination memory [r4 + r3]
    bne copy_loop @ Repeat if r3 is not zero
    bx lr @ Return from subroutine
