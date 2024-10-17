#include <stdio.h>

// should be in .bss
int uninitialized_var;

// should be in .data
int initialized_var = 42;

// should be in .rodata
const int constant_var = 100;

// should be in .text
void test_function(void) {
    printf("Initialized variable: %d\n", initialized_var);
    printf("Uninitialized variable: %d\n", uninitialized_var);
    printf("Constant variable: %d\n", constant_var);
}

int main(void) {
    test_function();
    return 0;
}