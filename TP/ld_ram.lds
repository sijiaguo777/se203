MEMORY
{
    /* flash is rom, readable and executable; ram1, ram2 readable and writable */
    rom (rx) : ORIGIN = 0x08000000, LENGTH = 1M
    sram1 (rwx) : ORIGIN = 0x20000000, LENGTH = 96K
    sram2 (rwx) : ORIGIN = 0x10000000, LENGTH = 32K
}

_estack = ORIGIN(sram2) + LENGTH(sram2);

ENTRY(_start)

SECTIONS
{
    .isr_vector :
    {
        KEEP(*(.isr_vector))  
    } > rom

    /* .text store executable codes */
    .text : 
    {
        _start = .;
        *(.text)        /* all .text content */
        *(.text.*)      /* match the section starting with .text. */
    } > sram1

    /* .rodata store read only sections(constants) */
    .rodata : 
    {
        *(.rodata)      /* all .rodata sections */
        *(.rodata.*)    /* match sections starting with .rodata. */
        *(.const)       /* other possible const sections */
    } > sram1

    /* .data: store initialized global and static variables */
    .data : 
    {
        _data_start = .;
        *(.data)        /* all .data sections */
        *(.data.*)      /* match sections starting with .data. */
        _data_end = .;
    } > sram1

    .bss (NOLOAD) : 
    {
        __bss_start__ = .;
        *(.bss)         /* all .bss sections */
        *(.bss.*)       /* match sections starting with .bss. */
        __bss_end__ = .;
    } > sram1
}

