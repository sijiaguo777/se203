#include <stdio.h>
#include <stdlib.h>

const char *mesg = "Hello World!";
int myint = 1;
int myint_noninit;

void printaddr()
{
    int myvar_local = 10;
    char *heap_var = (char *)malloc(10);
    printf("Adresse du code (fonction print_addresses) : %p\n", (void *)printaddr);          // .text
    printf("Adresse d'une variable globale initialisée : %p\n", (void *)&myint);             // .data
    printf("Adresse d'une variable globale non initialisée : %p\n", (void *)&myint_noninit); // .bss
    printf("Adresse d'une variable constante (chaîne de caractères) : %p\n", (void *)mesg);  // .rodata
    printf("Adresse d'une variable locale (pile) : %p\n", (void *)&myvar_local);             // pile
    printf("Adresse d'une variable allouée sur le tas : %p\n", (void *)heap_var);            // tas

    free(heap_var); // free allocated memory
}

int fibonacci(int n)
{
    int i = n;
    int curr_val;
    printf("Adresse de la variable locale i pour n = %d: %p\n", n, (void *)&i);
    if (n == 0)
    {
        return 0;
    }
    else if (n == 1)
    {
        return 1;
    }
    else
    {
        curr_val = fibonacci(n - 1) + fibonacci(n - 2);
        return curr_val;
    }
}

int main()
{
    printaddr();
    fibonacci(5);
    return 0;
}
