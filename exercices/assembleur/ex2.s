.syntax unified
.arch armv7-m
.cpu cortex-m4

.thumb
.global _start

_start:
mov r1, #256 @ Initialize r1 as a loop counter (256 bytes to process)
ldr r2, =0x10000000 @ Load base address of the source memory block into r2
ldr r3, =0x10000300 @ Load base address of the destination memory block into r3

loop: @ memory copy loop
subs r1, r1, #4 @ Decrement loop counter by 4 (process 4 bytes at a time)
ldr r4, [r2, r1] @ Load 4 bytes from source memory [r2 + r1] into r4
str r4, [r3, r1] @ Store those 4 bytes to destination memory [r3 + r1]
bne loop @ If the result of subs is not zero, branch back to loop

end:
b end @ An infinite loop to halt the program