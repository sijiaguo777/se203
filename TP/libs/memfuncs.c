void *memcpy(void *dest, const void *src, unsigned int n)
{
    unsigned char *d = (unsigned char *)dest;
    const unsigned char *s = (const unsigned char *)src;
    while (n--) {
        *d++ = *s++;
    }
    return dest;
}

void memset(void *ptr, int value, unsigned int num)
{
    volatile unsigned char *p = (unsigned char *)ptr;
    for (unsigned int i = 0; i < num; i++)
    {
        p[i] = (unsigned char)value;
    }
    return p;
}

void *memmove(void *dest, const void *src, unsigned int n)
{
    unsigned char *d = (unsigned char *)dest;
    const unsigned char *s = (const unsigned char *)src;
    while(n--)
    {
        *d++ = *s++;
    }
    return dest;
}

int memcmp(void *dest, const void *src, unsigned int n)
{
    unsigned char *d = (unsigned char *)dest;
    const unsigned char *s = (const unsigned char *)src;

    while(n--){
        if(*d != *s){
            return *d - *s;
        }
        d++;
        s++;
    }
    return 0;
}
