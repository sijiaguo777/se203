    .syntax unified
    .cpu cortex-m4
    .fpu softvfp
    .thumb

    .global g_pfnVectors
    .global Reset_Handler

    /* 堆栈大小定义 */
    .equ  Stack_Size, 0x00000400
    .section .stack, "aw", %nobits
    .align 3
    .globl _estack
_estack:
    .space Stack_Size  /* 为栈保留空间 */

    /* 定义SRAM2的起始地址 */
    .equ  SRAM2_Start, 0x10000000
    .equ  SRAM2_End, SRAM2_Start + Stack_Size

    /* 向量表定义 */
    .section .isr_vector,"a",%progbits
    .type g_pfnVectors, %object
    .size g_pfnVectors, .-g_pfnVectors

g_pfnVectors:
    .word  SRAM2_End              /* 初始栈指针 (SP) */
    .word  Reset_Handler          /* 复位处理程序 (PC) */
    .word  NMI_Handler            /* 非屏蔽中断 */
    .word  HardFault_Handler      /* 硬件故障中断 */
    .word  MemManage_Handler      /* 存储管理中断 */
    .word  BusFault_Handler       /* 总线错误中断 */
    .word  UsageFault_Handler     /* 使用故障中断 */
    .word  0                      /* 保留 */
    .word  0                      /* 保留 */
    .word  0                      /* 保留 */
    .word  0                      /* 保留 */
    .word  SVC_Handler            /* SVCall 中断 */
    .word  DebugMon_Handler       /* 调试监视器中断 */
    .word  0                      /* 保留 */
    .word  PendSV_Handler         /* PendSV 中断 */
    .word  SysTick_Handler        /* 系统时钟中断 */
    /* 中断向量表，按需求继续定义其他中断处理程序 */

    /* 默认的中断处理程序（弱定义） */
    .weak NMI_Handler
    .weak HardFault_Handler
    .weak MemManage_Handler
    .weak BusFault_Handler
    .weak UsageFault_Handler
    .weak SVC_Handler
    .weak DebugMon_Handler
    .weak PendSV_Handler
    .weak SysTick_Handler

    /* 弱定义的默认中断处理程序 */
    .section .text.Default_Handler,"ax",%progbits
    .weak Default_Handler

Default_Handler:
    Infinite_Loop:
    b  Infinite_Loop

    .section .text.Reset_Handler,"ax",%progbits
    .weak Reset_Handler
    .type Reset_Handler, %function
Reset_Handler:
    /* 在此初始化BSS和数据段 */
    /* 初始化完后调用 main 函数 */
    bl main
    b Default_Handler
