    .syntax unified
    .global _start
    .global _exit
    .thumb

_start:
    ldr sp, =_stack 
    bl init_bss
    bl main
    
_exit :
    b _exit
