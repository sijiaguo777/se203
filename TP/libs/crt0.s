    .syntax unified
    .thumb

    .section .text.init, "ax", %progbits
    .global _start
    .thumb_func
_start:
    ldr sp, =_stack 
    bl copy_text_to_ram
    bl init_vtor
    bl init_bss
    bl init_data
    bl main
    b _exit

_exit :
    b _exit
