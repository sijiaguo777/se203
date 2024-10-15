MEMORY
{
    /* flash is rom, readable and executable; ram1, ram2 readable and writable*/
    rom (rx) : ORIGIN = 0x08000000, LENGTH = 1M
    ram1 (rw) : ORIGIN = 0x20000000, LENGTH = 96K
    ram2 (rw) : ORIGIN = 0x10000000, LENGTH = 32K
    }

ENTRY(_start)

SECTIONS
{
    /* .text store executable codes */
    .text : 
    {
        _start = .;
        *(.text)        /* all .text content */
        *(.text.*)      /* match the section starting with .text. ex: .text.startup */
        *(.glue_7) *(.glue_7t) 
    } > ram1

    /* .rodata store read only sections(constants)  */
    .rodata : 
    {
        *(.rodata)      /* all .rodata sections */
        *(.rodata.*)    /* match sections starting with .rodata. */
        *(.const)       /* other possible const sections */
    } > ram1

    /* .data：store initialized global and static variables */
    .data : 
    {
        _data_start = .;
        *(.data)        /* all .data sections */
        *(.data.*)      /* match sections starting with .data. */
        _data_end = .;
    } > ram1

    .bss (NOLOAD) : 
    {
        __bss_start__ = .;
        *(.bss)         /* all .bss sections */
        *(.bss.*)       /* match .bss. starting sections */
        *(COMMON)       /* COMMON section */
        __bss_end__ = .;
    } > ram1
}

