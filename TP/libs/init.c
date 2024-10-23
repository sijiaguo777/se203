
extern unsigned int __bss_start__;
extern unsigned int __bss_end__;

void init_bss(void) {
    unsigned int *bss = &__bss_start__;
    unsigned int *bss_end = &__bss_end__;

    while (bss < bss_end) {
        *bss++ = 0;
    }
}
