MEMORY
{
    /* flash is rom, readable and executable; ram1, ram2 readable and writable */
    flash (rx) : ORIGIN = 0x08000000, LENGTH = 1M
    sram1 (rwx) : ORIGIN = 0x20000000, LENGTH = 96K
    sram2 (rwx) : ORIGIN = 0x10000000, LENGTH = 32K
}

_stack = ORIGIN(sram2) + LENGTH(sram2);

ENTRY(_start)

SECTIONS
{

    .vtor :
    {
        _vtor_lma = LOADADDR(.vtor);
        _vtor_start = .;
        KEEP(*(.vtor))
        _vtor_end = .;
    } > sram1 AT > flash
    
    .text.init : 
    {
        *(.text.init);
    } > flash

    /* .text store executable codes */
    .text : 
    {   _text_lma = LOADADDR(.text);
        _text_start = .;
        *(.text)        /* all .text content */
        *(.text.*)      /* match the section starting with .text. */
        _text_end = .;
    } > sram1 AT > flash

    /* .rodata store read only sections(constants) */
    .rodata :
    {
        _rodata_start = .;
        *(.rodata)      /* all .rodata sections */
        *(.rodata.*)    /* match sections starting with .rodata. */
        *(.const)       /* other possible const sections */
        _rodata_end = .;
    } > flash

    /* .data: store initialized global and static variables */
    .data : 
    {
        _data_lma = LOADADDR(.data);
        _data_start = .;
        *(.data)        /* all .data sections */
        *(.data.*)      /* match sections starting with .data. */
        _data_end = .;
    } >sram1 AT > flash

    .bss : 
    {
        __bss_start__ = .;
        *(.bss)         /* all .bss sections */
        *(.bss.*)       /* match sections starting with .bss. */
        __bss_end__ = .;
    } > sram1
}
