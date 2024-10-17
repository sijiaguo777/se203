.data
.global a
.global b
.global c

a: word 0
b: word 0
c: word 0

.text

ldr r1, =a @ load address of a to r1
ldr r2, [r1] @load address that a is pointing to r2

ldr r3, =c @ load address of c to r3
ldr r4, [r3] @load address that c is pointing to r4

ldr r5, [r4] @load to r5 the value that c is pointing

ldr r6, [r2]
add r6, r6, r5 @add a and c, store the sum to r6
str r6, [r2] @update the new value that a is pointing

ldr r1, =b @ load address of b to r1
ldr r2, [r1] @load address that b is pointing to r2

ldr r6, [r2]
add r6, r6, r5 @add b and c, store the sum to r6
str r6, [r2] @update the new value that b is pointing

mov r7, #1 @ exit syscall
svc 0




