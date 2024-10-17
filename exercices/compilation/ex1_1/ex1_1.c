#include <stdint.h>

uint32_t a;  // 全局变量
__attribute__((naked)) void f(){
    for (unsigned int i = 0; i <= a; i++) {
        g();
    }
}

