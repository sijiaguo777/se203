    .syntax unified
    .global _start
    .global _exit
    .thumb

_start:
    ldr sp, =_estack 
    bl init_bss
    bl main
    b _exit                   

