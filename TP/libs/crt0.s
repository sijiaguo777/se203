    .syntax unified
    .global _start

_start:
    ldr sp, =_estack          // Initialize stack pointer
    bl main                   // Call main function
    b .                       // Infinite loop to prevent exit

