extern unsigned int __bss_start__;
extern unsigned int __bss_end__;

extern unsigned int _data_start;
extern unsigned int _data_end;
extern unsigned int _data_lma;

extern unsigned int _text_start;
extern unsigned int _text_end;
extern unsigned int _text_lma;

extern unsigned int _vtor_start;
extern unsigned int _vtor_end;
extern unsigned int _vtor_lma;

void __attribute__((section(".text.init")))init_vtor(void){
    unsigned int *vtor = &_vtor_start;
    unsigned int *vtor_end = &_vtor_end;
    unsigned int *vtor_load = &_vtor_lma;

    while (vtor < vtor_end) {
        *vtor++ = *vtor_load++;
    }
}

void __attribute__((section(".text.init")))init_data(void){
    unsigned int *data = &_data_start;
    unsigned int *data_end = &_data_end;
    unsigned int *data_load = &_data_lma;

    while (data < data_end) {
        *data++ = *data_load++;
    }
}


void __attribute__((section(".text.init")))init_bss(void) {
    unsigned int *bss = &__bss_start__;
    unsigned int *bss_end = &__bss_end__;

    while (bss < bss_end) {
        *bss++ = 0;
    }
}


void __attribute__((section(".text.init")))copy_text_to_ram(){
    unsigned int *text = &_text_start;
    unsigned int *text_end = &_text_end;
    unsigned int *text_load = &_text_lma;

    while (text < text_end) {
        *text++ = *text_load++;
    }
}

