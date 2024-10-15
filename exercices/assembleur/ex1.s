.syntax unified
.arch armv7-m
.cpu cortex-m4

.thumb
.global _start

_start:
ldr r0, =0xdeadbeef @ Load immediate value 0xdeadbeef to register r0
mov r1, #256 @ As a loop counter
ldr r2, =0x10000000 @ Base address of memory store operations

loop: @ momery store loop
subs r1, r1, #4 @ subtract 4 from the value in r1 and update the condition flags
str r0, [r2, r1] @store value in r0 at the mem address calculated by [r2+r1]
bne loop @ If zero flags is not zero, branch back to loop

end:
b end @ An infinite loop to halt the program
