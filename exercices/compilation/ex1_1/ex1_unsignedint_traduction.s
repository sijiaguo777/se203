.file	"ex1_1.c"

.text
.global a
a: .word 0 @ reserve an emplacement for global variable a

f:
mov r1, #0 @ initialisation of i

loop:
ldr r2, =a @ initialisation of a
ldr r3, [r2]
cmp, r1, r3
bgt end @ if i is greater than a, branch to end

bl g
add r1, r1, #1 @ increase the value of i

b loop

end:
mov r7, #1
svc 0
