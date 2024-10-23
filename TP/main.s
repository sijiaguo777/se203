
main:     file format elf32-littlearm


Disassembly of section .text:

20000000 <_exit>:
#include <sys/types.h>
#include <sys/stat.h>

void _exit(int a) {while(1);}
20000000:	e7fe      	b.n	20000000 <_exit>
20000002:	bf00      	nop

20000004 <_sbrk>:
void *_sbrk(int a) {}
20000004:	4770      	bx	lr
20000006:	bf00      	nop

20000008 <_write>:
int _write(int fd, const void *buf, size_t count) {}
20000008:	4770      	bx	lr
2000000a:	bf00      	nop

2000000c <_close>:
int _close(int fd) {}
2000000c:	4770      	bx	lr
2000000e:	bf00      	nop

20000010 <_fstat>:
int _fstat(int fd, struct stat *buf) {}
20000010:	4770      	bx	lr
20000012:	bf00      	nop

20000014 <_isatty>:
int _isatty(int fd) {}
20000014:	2000      	movs	r0, #0
20000016:	4770      	bx	lr

20000018 <_lseek>:
off_t _lseek(int fd, off_t offset, int whence) {}
20000018:	4770      	bx	lr
2000001a:	bf00      	nop

2000001c <_read>:
ssize_t _read(int fd, void *buf, size_t count) {}
2000001c:	2000      	movs	r0, #0
2000001e:	4770      	bx	lr

20000020 <_kill>:
int _kill(int pid, int sig) {}
20000020:	4770      	bx	lr
20000022:	bf00      	nop

20000024 <_getpid>:
20000024:	4770      	bx	lr
20000026:	bf00      	nop

20000028 <_start>:
    .global _start
    .global _exit
    .thumb

_start:
    ldr sp, =_estack 
20000028:	f8df d00c 	ldr.w	sp, [pc, #12]	@ 20000038 <_start+0x10>
    bl init_bss
2000002c:	f000 f8ce 	bl	200001cc <init_bss>
    bl main
20000030:	f000 f90e 	bl	20000250 <main>
    b _exit                   
20000034:	f7ff bfe4 	b.w	20000000 <_exit>
    ldr sp, =_estack 
20000038:	10008000 	.word	0x10008000

2000003c <infini>:
int infini(){
    int i = 1;
    while (1)
2000003c:	e7fe      	b.n	2000003c <infini>
2000003e:	bf00      	nop

20000040 <fibo>:
    }
    return 0;
}

int fibo(int n){
    if (n == 0) {
20000040:	2800      	cmp	r0, #0
20000042:	f000 80c1 	beq.w	200001c8 <fibo+0x188>
        return 0;
    } else if (n == 1) {
20000046:	2801      	cmp	r0, #1
20000048:	f000 80be 	beq.w	200001c8 <fibo+0x188>
int fibo(int n){
2000004c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
20000050:	f100 38ff 	add.w	r8, r0, #4294967295	@ 0xffffffff
20000054:	b093      	sub	sp, #76	@ 0x4c
    } else if (n == 1) {
20000056:	f04f 0a00 	mov.w	sl, #0
2000005a:	4644      	mov	r4, r8
2000005c:	2c01      	cmp	r4, #1
2000005e:	f000 80ab 	beq.w	200001b8 <fibo+0x178>
20000062:	1e65      	subs	r5, r4, #1
20000064:	f04f 0800 	mov.w	r8, #0
20000068:	f8cd a020 	str.w	sl, [sp, #32]
2000006c:	46a9      	mov	r9, r5
2000006e:	4647      	mov	r7, r8
20000070:	46a2      	mov	sl, r4
20000072:	f1b9 0f01 	cmp.w	r9, #1
20000076:	f000 8094 	beq.w	200001a2 <fibo+0x162>
2000007a:	f109 33ff 	add.w	r3, r9, #4294967295	@ 0xffffffff
2000007e:	461c      	mov	r4, r3
20000080:	2600      	movs	r6, #0
20000082:	9709      	str	r7, [sp, #36]	@ 0x24
20000084:	4619      	mov	r1, r3
20000086:	46c8      	mov	r8, r9
20000088:	2c01      	cmp	r4, #1
2000008a:	f000 8082 	beq.w	20000192 <fibo+0x152>
2000008e:	e9cd 5a0a 	strd	r5, sl, [sp, #40]	@ 0x28
20000092:	1e60      	subs	r0, r4, #1
20000094:	4683      	mov	fp, r0
20000096:	2700      	movs	r7, #0
20000098:	46a1      	mov	r9, r4
2000009a:	f1bb 0f01 	cmp.w	fp, #1
2000009e:	d06f      	beq.n	20000180 <fibo+0x140>
200000a0:	e9cd 180e 	strd	r1, r8, [sp, #56]	@ 0x38
200000a4:	f10b 3eff 	add.w	lr, fp, #4294967295	@ 0xffffffff
200000a8:	e9cd 670c 	strd	r6, r7, [sp, #48]	@ 0x30
200000ac:	46f2      	mov	sl, lr
200000ae:	2400      	movs	r4, #0
200000b0:	9010      	str	r0, [sp, #64]	@ 0x40
200000b2:	464f      	mov	r7, r9
200000b4:	f8cd e044 	str.w	lr, [sp, #68]	@ 0x44
200000b8:	f1ba 0f01 	cmp.w	sl, #1
200000bc:	d051      	beq.n	20000162 <fibo+0x122>
200000be:	f10a 35ff 	add.w	r5, sl, #4294967295	@ 0xffffffff
200000c2:	46a9      	mov	r9, r5
200000c4:	2600      	movs	r6, #0
200000c6:	4653      	mov	r3, sl
200000c8:	46c8      	mov	r8, r9
200000ca:	46aa      	mov	sl, r5
200000cc:	4635      	mov	r5, r6
200000ce:	f1b8 0f01 	cmp.w	r8, #1
200000d2:	d03e      	beq.n	20000152 <fibo+0x112>
200000d4:	f108 31ff 	add.w	r1, r8, #4294967295	@ 0xffffffff
200000d8:	e9cd 7303 	strd	r7, r3, [sp, #12]
200000dc:	e9cd 1805 	strd	r1, r8, [sp, #20]
200000e0:	2200      	movs	r2, #0
200000e2:	e9cd 4501 	strd	r4, r5, [sp, #4]
200000e6:	4614      	mov	r4, r2
200000e8:	460d      	mov	r5, r1
200000ea:	2d01      	cmp	r5, #1
200000ec:	d024      	beq.n	20000138 <fibo+0xf8>
200000ee:	1e6f      	subs	r7, r5, #1
200000f0:	462b      	mov	r3, r5
200000f2:	f04f 0800 	mov.w	r8, #0
200000f6:	4625      	mov	r5, r4
200000f8:	463c      	mov	r4, r7
200000fa:	2c01      	cmp	r4, #1
        return 1;
    } else {
        return fibo(n - 1) + fibo(n - 2);
200000fc:	46a1      	mov	r9, r4
    } else if (n == 1) {
200000fe:	d013      	beq.n	20000128 <fibo+0xe8>
20000100:	9407      	str	r4, [sp, #28]
20000102:	2600      	movs	r6, #0
20000104:	461c      	mov	r4, r3
        return fibo(n - 1) + fibo(n - 2);
20000106:	f109 30ff 	add.w	r0, r9, #4294967295	@ 0xffffffff
2000010a:	f7ff ff99 	bl	20000040 <fibo>
    if (n == 0) {
2000010e:	f1b9 0902 	subs.w	r9, r9, #2
20000112:	4406      	add	r6, r0
20000114:	d055      	beq.n	200001c2 <fibo+0x182>
    } else if (n == 1) {
20000116:	f1b9 0f01 	cmp.w	r9, #1
2000011a:	d1f4      	bne.n	20000106 <fibo+0xc6>
2000011c:	4623      	mov	r3, r4
2000011e:	9c07      	ldr	r4, [sp, #28]
20000120:	3601      	adds	r6, #1
20000122:	3c02      	subs	r4, #2
20000124:	44b0      	add	r8, r6
20000126:	d1e8      	bne.n	200000fa <fibo+0xba>
20000128:	462c      	mov	r4, r5
2000012a:	f108 0101 	add.w	r1, r8, #1
2000012e:	2f01      	cmp	r7, #1
20000130:	440c      	add	r4, r1
20000132:	f1a3 0502 	sub.w	r5, r3, #2
20000136:	d1d8      	bne.n	200000ea <fibo+0xaa>
20000138:	e9dd 1805 	ldrd	r1, r8, [sp, #20]
2000013c:	4622      	mov	r2, r4
2000013e:	9d02      	ldr	r5, [sp, #8]
20000140:	9c01      	ldr	r4, [sp, #4]
20000142:	3201      	adds	r2, #1
20000144:	2901      	cmp	r1, #1
20000146:	e9dd 7303 	ldrd	r7, r3, [sp, #12]
2000014a:	4415      	add	r5, r2
2000014c:	f1a8 0802 	sub.w	r8, r8, #2
20000150:	d1bd      	bne.n	200000ce <fibo+0x8e>
20000152:	462e      	mov	r6, r5
20000154:	4655      	mov	r5, sl
20000156:	3601      	adds	r6, #1
20000158:	2d01      	cmp	r5, #1
2000015a:	4434      	add	r4, r6
2000015c:	f1a3 0a02 	sub.w	sl, r3, #2
20000160:	d1aa      	bne.n	200000b8 <fibo+0x78>
20000162:	f8dd e044 	ldr.w	lr, [sp, #68]	@ 0x44
20000166:	9e0c      	ldr	r6, [sp, #48]	@ 0x30
20000168:	9810      	ldr	r0, [sp, #64]	@ 0x40
2000016a:	46b9      	mov	r9, r7
2000016c:	9f0d      	ldr	r7, [sp, #52]	@ 0x34
2000016e:	3401      	adds	r4, #1
20000170:	f1be 0f01 	cmp.w	lr, #1
20000174:	e9dd 180e 	ldrd	r1, r8, [sp, #56]	@ 0x38
20000178:	4427      	add	r7, r4
2000017a:	f1ab 0b02 	sub.w	fp, fp, #2
2000017e:	d18c      	bne.n	2000009a <fibo+0x5a>
20000180:	3701      	adds	r7, #1
20000182:	2801      	cmp	r0, #1
20000184:	e9dd 5a0a 	ldrd	r5, sl, [sp, #40]	@ 0x28
20000188:	443e      	add	r6, r7
2000018a:	f1a9 0402 	sub.w	r4, r9, #2
2000018e:	f47f af7b 	bne.w	20000088 <fibo+0x48>
20000192:	9f09      	ldr	r7, [sp, #36]	@ 0x24
20000194:	3601      	adds	r6, #1
20000196:	2901      	cmp	r1, #1
20000198:	4437      	add	r7, r6
2000019a:	f1a8 0902 	sub.w	r9, r8, #2
2000019e:	f47f af68 	bne.w	20000072 <fibo+0x32>
200001a2:	4654      	mov	r4, sl
200001a4:	f8dd a020 	ldr.w	sl, [sp, #32]
200001a8:	f107 0801 	add.w	r8, r7, #1
200001ac:	2d01      	cmp	r5, #1
200001ae:	44c2      	add	sl, r8
200001b0:	f1a4 0402 	sub.w	r4, r4, #2
200001b4:	f47f af52 	bne.w	2000005c <fibo+0x1c>
200001b8:	f10a 0001 	add.w	r0, sl, #1
    }
}
200001bc:	b013      	add	sp, #76	@ 0x4c
200001be:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
200001c2:	4623      	mov	r3, r4
200001c4:	9c07      	ldr	r4, [sp, #28]
200001c6:	e7ac      	b.n	20000122 <fibo+0xe2>
200001c8:	4770      	bx	lr
200001ca:	bf00      	nop

200001cc <init_bss>:

void init_bss(void) {
    unsigned int *bss = &__bss_start__;
    unsigned int *bss_end = &__bss_end__;

    while (bss < bss_end) {
200001cc:	4806      	ldr	r0, [pc, #24]	@ (200001e8 <init_bss+0x1c>)
200001ce:	4a07      	ldr	r2, [pc, #28]	@ (200001ec <init_bss+0x20>)
200001d0:	4290      	cmp	r0, r2
200001d2:	d207      	bcs.n	200001e4 <init_bss+0x18>
        *bss++ = 0;
200001d4:	3a01      	subs	r2, #1
200001d6:	1a12      	subs	r2, r2, r0
200001d8:	f022 0203 	bic.w	r2, r2, #3
200001dc:	3204      	adds	r2, #4
200001de:	2100      	movs	r1, #0
200001e0:	f000 b810 	b.w	20000204 <memset>
    }
}
200001e4:	4770      	bx	lr
200001e6:	bf00      	nop
200001e8:	2000025c 	.word	0x2000025c
200001ec:	20000264 	.word	0x20000264

200001f0 <memcpy>:
void *memcpy(void *dest, const void *src, unsigned int n)
{
    unsigned char *d = (unsigned char *)dest;
    const unsigned char *s = (const unsigned char *)src;
    while (n--) {
200001f0:	b13a      	cbz	r2, 20000202 <memcpy+0x12>
200001f2:	1e43      	subs	r3, r0, #1
200001f4:	440a      	add	r2, r1
        *d++ = *s++;
200001f6:	f811 cb01 	ldrb.w	ip, [r1], #1
200001fa:	f803 cf01 	strb.w	ip, [r3, #1]!
    while (n--) {
200001fe:	4291      	cmp	r1, r2
20000200:	d1f9      	bne.n	200001f6 <memcpy+0x6>
    }
    return dest;
}
20000202:	4770      	bx	lr

20000204 <memset>:

void memset(void *ptr, int value, unsigned int num)
{
    volatile unsigned char *p = (unsigned char *)ptr;
    for (unsigned int i = 0; i < num; i++)
20000204:	b12a      	cbz	r2, 20000212 <memset+0xe>
    {
        p[i] = (unsigned char)value;
20000206:	b2c9      	uxtb	r1, r1
20000208:	4402      	add	r2, r0
2000020a:	f800 1b01 	strb.w	r1, [r0], #1
    for (unsigned int i = 0; i < num; i++)
2000020e:	4290      	cmp	r0, r2
20000210:	d1fb      	bne.n	2000020a <memset+0x6>
    }
    return p;
}
20000212:	4770      	bx	lr

20000214 <memmove>:

void *memmove(void *dest, const void *src, unsigned int n)
20000214:	b13a      	cbz	r2, 20000226 <memmove+0x12>
20000216:	1e43      	subs	r3, r0, #1
20000218:	440a      	add	r2, r1
2000021a:	f811 cb01 	ldrb.w	ip, [r1], #1
2000021e:	f803 cf01 	strb.w	ip, [r3, #1]!
20000222:	428a      	cmp	r2, r1
20000224:	d1f9      	bne.n	2000021a <memmove+0x6>
20000226:	4770      	bx	lr

20000228 <memcmp>:
int memcmp(void *dest, const void *src, unsigned int n)
{
    unsigned char *d = (unsigned char *)dest;
    const unsigned char *s = (const unsigned char *)src;

    while(n--){
20000228:	f102 3cff 	add.w	ip, r2, #4294967295	@ 0xffffffff
2000022c:	b16a      	cbz	r2, 2000024a <memcmp+0x22>
2000022e:	1e43      	subs	r3, r0, #1
20000230:	3901      	subs	r1, #1
20000232:	4484      	add	ip, r0
20000234:	e001      	b.n	2000023a <memcmp+0x12>
20000236:	4563      	cmp	r3, ip
20000238:	d007      	beq.n	2000024a <memcmp+0x22>
        if(*d != *s){
2000023a:	f813 0f01 	ldrb.w	r0, [r3, #1]!
2000023e:	f811 2f01 	ldrb.w	r2, [r1, #1]!
20000242:	4290      	cmp	r0, r2
20000244:	d0f7      	beq.n	20000236 <memcmp+0xe>
            return *d - *s;
20000246:	1a80      	subs	r0, r0, r2
20000248:	4770      	bx	lr
        }
        d++;
        s++;
    }
    return 0;
2000024a:	2000      	movs	r0, #0
2000024c:	4770      	bx	lr
2000024e:	bf00      	nop

20000250 <main>:

int global_var1;
int global_var2;

int main(void) {
20000250:	b508      	push	{r3, lr}
    fibo(5);
20000252:	2005      	movs	r0, #5
20000254:	f7ff fef4 	bl	20000040 <fibo>
20000258:	2000      	movs	r0, #0
2000025a:	bd08      	pop	{r3, pc}
Contents of the .debug_info section (loaded from main):

  Compilation Unit @ offset 0:
   Length:        0x4c0 (32-bit)
   Version:       5
   Unit Type:     DW_UT_compile (1)
   Abbrev Offset: 0
   Pointer Size:  4
 <0><c>: Abbrev Number: 16 (DW_TAG_compile_unit)
    <d>   DW_AT_producer    : (indirect string, offset: 0x25): GNU C17 13.3.1 20240614 -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -march=armv7e-m+fp -g -O2
    <11>   DW_AT_language    : 29	(C11)
    <12>   DW_AT_name        : (indirect string, offset: 0x18): libs/stubs.c
    <16>   DW_AT_comp_dir    : (indirect string, offset: 0x16d): /Users/guosijia/Desktop/Telecom/cours/se/sijia-guo/TP
    <1a>   DW_AT_low_pc      : 0x20000000
    <1e>   DW_AT_high_pc     : 0x26
    <22>   DW_AT_stmt_list   : 0
 <1><26>: Abbrev Number: 3 (DW_TAG_base_type)
    <27>   DW_AT_byte_size   : 8
    <28>   DW_AT_encoding    : 7	(unsigned)
    <29>   DW_AT_name        : (indirect string, offset: 0x92): long long unsigned int
 <1><2d>: Abbrev Number: 3 (DW_TAG_base_type)
    <2e>   DW_AT_byte_size   : 4
    <2f>   DW_AT_encoding    : 7	(unsigned)
    <30>   DW_AT_name        : (indirect string, offset: 0x9c): unsigned int
 <1><34>: Abbrev Number: 3 (DW_TAG_base_type)
    <35>   DW_AT_byte_size   : 1
    <36>   DW_AT_encoding    : 6	(signed char)
    <37>   DW_AT_name        : (indirect string, offset: 0x1f9): signed char
 <1><3b>: Abbrev Number: 3 (DW_TAG_base_type)
    <3c>   DW_AT_byte_size   : 1
    <3d>   DW_AT_encoding    : 8	(unsigned char)
    <3e>   DW_AT_name        : (indirect string, offset: 0x1f7): unsigned char
 <1><42>: Abbrev Number: 3 (DW_TAG_base_type)
    <43>   DW_AT_byte_size   : 2
    <44>   DW_AT_encoding    : 5	(signed)
    <45>   DW_AT_name        : (indirect string, offset: 0x20d): short int
 <1><49>: Abbrev Number: 3 (DW_TAG_base_type)
    <4a>   DW_AT_byte_size   : 2
    <4b>   DW_AT_encoding    : 7	(unsigned)
    <4c>   DW_AT_name        : (indirect string, offset: 0x148): short unsigned int
 <1><50>: Abbrev Number: 3 (DW_TAG_base_type)
    <51>   DW_AT_byte_size   : 4
    <52>   DW_AT_encoding    : 5	(signed)
    <53>   DW_AT_name        : (indirect string, offset: 0xce): long int
 <1><57>: Abbrev Number: 1 (DW_TAG_typedef)
    <58>   DW_AT_name        : (indirect string, offset: 0x116): __uint32_t
    <5c>   DW_AT_decl_file   : 2
    <5d>   DW_AT_decl_line   : 79
    <5e>   DW_AT_decl_column : 25
    <5f>   DW_AT_type        : <0x63>
 <1><63>: Abbrev Number: 3 (DW_TAG_base_type)
    <64>   DW_AT_byte_size   : 4
    <65>   DW_AT_encoding    : 7	(unsigned)
    <66>   DW_AT_name        : (indirect string, offset: 0x97): long unsigned int
 <1><6a>: Abbrev Number: 3 (DW_TAG_base_type)
    <6b>   DW_AT_byte_size   : 8
    <6c>   DW_AT_encoding    : 5	(signed)
    <6d>   DW_AT_name        : (indirect string, offset: 0xc9): long long int
 <1><71>: Abbrev Number: 1 (DW_TAG_typedef)
    <72>   DW_AT_name        : (indirect string, offset: 0xb3): __int_least64_t
    <76>   DW_AT_decl_file   : 2
    <77>   DW_AT_decl_line   : 200
    <78>   DW_AT_decl_column : 30
    <79>   DW_AT_type        : <0x6a>
 <1><7d>: Abbrev Number: 17 (DW_TAG_base_type)
    <7e>   DW_AT_byte_size   : 4
    <7f>   DW_AT_encoding    : 5	(signed)
    <80>   DW_AT_name        : int
 <1><84>: Abbrev Number: 1 (DW_TAG_typedef)
    <85>   DW_AT_name        : (indirect string, offset: 0x1da): size_t
    <89>   DW_AT_decl_file   : 3
    <8a>   DW_AT_decl_line   : 214
    <8b>   DW_AT_decl_column : 23
    <8c>   DW_AT_type        : <0x2d>
 <1><90>: Abbrev Number: 3 (DW_TAG_base_type)
    <91>   DW_AT_byte_size   : 8
    <92>   DW_AT_encoding    : 4	(float)
    <93>   DW_AT_name        : (indirect string, offset: 0x1c2): long double
 <1><97>: Abbrev Number: 1 (DW_TAG_typedef)
    <98>   DW_AT_name        : (indirect string, offset: 0xe7): __blkcnt_t
    <9c>   DW_AT_decl_file   : 4
    <9d>   DW_AT_decl_line   : 30
    <9e>   DW_AT_decl_column : 14
    <9f>   DW_AT_type        : <0x50>
 <1><a3>: Abbrev Number: 1 (DW_TAG_typedef)
    <a4>   DW_AT_name        : (indirect string, offset: 0x1d5): __blksize_t
    <a8>   DW_AT_decl_file   : 4
    <a9>   DW_AT_decl_line   : 34
    <aa>   DW_AT_decl_column : 14
    <ab>   DW_AT_type        : <0x50>
 <1><af>: Abbrev Number: 1 (DW_TAG_typedef)
    <b0>   DW_AT_name        : (indirect string, offset: 0x1): _off_t
    <b4>   DW_AT_decl_file   : 4
    <b5>   DW_AT_decl_line   : 46
    <b6>   DW_AT_decl_column : 14
    <b7>   DW_AT_type        : <0x50>
 <1><bb>: Abbrev Number: 1 (DW_TAG_typedef)
    <bc>   DW_AT_name        : (indirect string, offset: 0x205): __pid_t
    <c0>   DW_AT_decl_file   : 4
    <c1>   DW_AT_decl_line   : 52
    <c2>   DW_AT_decl_column : 13
    <c3>   DW_AT_type        : <0x7d>
 <1><c7>: Abbrev Number: 1 (DW_TAG_typedef)
    <c8>   DW_AT_name        : (indirect string, offset: 0x121): __dev_t
    <cc>   DW_AT_decl_file   : 4
    <cd>   DW_AT_decl_line   : 56
    <ce>   DW_AT_decl_column : 15
    <cf>   DW_AT_type        : <0x42>
 <1><d3>: Abbrev Number: 1 (DW_TAG_typedef)
    <d4>   DW_AT_name        : (indirect string, offset: 0x23b): __uid_t
    <d8>   DW_AT_decl_file   : 4
    <d9>   DW_AT_decl_line   : 60
    <da>   DW_AT_decl_column : 24
    <db>   DW_AT_type        : <0x49>
 <1><df>: Abbrev Number: 1 (DW_TAG_typedef)
    <e0>   DW_AT_name        : (indirect string, offset: 0x8): __gid_t
    <e4>   DW_AT_decl_file   : 4
    <e5>   DW_AT_decl_line   : 63
    <e6>   DW_AT_decl_column : 24
    <e7>   DW_AT_type        : <0x49>
 <1><eb>: Abbrev Number: 1 (DW_TAG_typedef)
    <ec>   DW_AT_name        : (indirect string, offset: 0x22b): __ino_t
    <f0>   DW_AT_decl_file   : 4
    <f1>   DW_AT_decl_line   : 75
    <f2>   DW_AT_decl_column : 24
    <f3>   DW_AT_type        : <0x49>
 <1><f7>: Abbrev Number: 1 (DW_TAG_typedef)
    <f8>   DW_AT_name        : (indirect string, offset: 0xde): __mode_t
    <fc>   DW_AT_decl_file   : 4
    <fd>   DW_AT_decl_line   : 90
    <fe>   DW_AT_decl_column : 20
    <ff>   DW_AT_type        : <0x57>
 <1><103>: Abbrev Number: 1 (DW_TAG_typedef)
    <104>   DW_AT_name        : (indirect string, offset: 0): __off_t
    <108>   DW_AT_decl_file   : 4
    <109>   DW_AT_decl_line   : 102
    <10a>   DW_AT_decl_column : 16
    <10b>   DW_AT_type        : <0xaf>
 <1><10f>: Abbrev Number: 1 (DW_TAG_typedef)
    <110>   DW_AT_name        : (indirect string, offset: 0x25e): _ssize_t
    <114>   DW_AT_decl_file   : 4
    <115>   DW_AT_decl_line   : 147
    <116>   DW_AT_decl_column : 23
    <117>   DW_AT_type        : <0x7d>
 <1><11b>: Abbrev Number: 18 (DW_TAG_pointer_type)
    <11c>   DW_AT_byte_size   : 4
 <1><11d>: Abbrev Number: 1 (DW_TAG_typedef)
    <11e>   DW_AT_name        : (indirect string, offset: 0x15b): __nlink_t
    <122>   DW_AT_decl_file   : 4
    <123>   DW_AT_decl_line   : 213
    <124>   DW_AT_decl_column : 24
    <125>   DW_AT_type        : <0x49>
 <1><129>: Abbrev Number: 1 (DW_TAG_typedef)
    <12a>   DW_AT_name        : (indirect string, offset: 0x1e1): time_t
    <12e>   DW_AT_decl_file   : 5
    <12f>   DW_AT_decl_line   : 42
    <130>   DW_AT_decl_column : 18
    <131>   DW_AT_type        : <0x71>
 <1><135>: Abbrev Number: 7 (DW_TAG_structure_type)
    <136>   DW_AT_name        : (indirect string, offset: 0x222): timespec
    <13a>   DW_AT_byte_size   : 16
    <13b>   DW_AT_decl_file   : 6
    <13c>   DW_AT_decl_line   : 47
    <13d>   DW_AT_decl_column : 8
    <13d>   DW_AT_sibling     : <0x15c>
 <2><141>: Abbrev Number: 2 (DW_TAG_member)
    <142>   DW_AT_name        : (indirect string, offset: 0x1ce): tv_sec
    <146>   DW_AT_decl_file   : 6
    <147>   DW_AT_decl_line   : 48
    <148>   DW_AT_decl_column : 9
    <149>   DW_AT_type        : <0x129>
    <14d>   DW_AT_data_member_location: 0
 <2><14e>: Abbrev Number: 2 (DW_TAG_member)
    <14f>   DW_AT_name        : (indirect string, offset: 0x1ba): tv_nsec
    <153>   DW_AT_decl_file   : 6
    <154>   DW_AT_decl_line   : 49
    <155>   DW_AT_decl_column : 7
    <156>   DW_AT_type        : <0x50>
    <15a>   DW_AT_data_member_location: 8
 <2><15b>: Abbrev Number: 0
 <1><15c>: Abbrev Number: 1 (DW_TAG_typedef)
    <15d>   DW_AT_name        : (indirect string, offset: 0xe9): blkcnt_t
    <161>   DW_AT_decl_file   : 7
    <162>   DW_AT_decl_line   : 97
    <163>   DW_AT_decl_column : 20
    <164>   DW_AT_type        : <0x97>
 <1><168>: Abbrev Number: 1 (DW_TAG_typedef)
    <169>   DW_AT_name        : (indirect string, offset: 0x1d7): blksize_t
    <16d>   DW_AT_decl_file   : 7
    <16e>   DW_AT_decl_line   : 102
    <16f>   DW_AT_decl_column : 21
    <170>   DW_AT_type        : <0xa3>
 <1><174>: Abbrev Number: 3 (DW_TAG_base_type)
    <175>   DW_AT_byte_size   : 1
    <176>   DW_AT_encoding    : 8	(unsigned char)
    <177>   DW_AT_name        : (indirect string, offset: 0x200): char
 <1><17b>: Abbrev Number: 1 (DW_TAG_typedef)
    <17c>   DW_AT_name        : (indirect string, offset: 0x22d): ino_t
    <180>   DW_AT_decl_file   : 7
    <181>   DW_AT_decl_line   : 137
    <182>   DW_AT_decl_column : 18
    <183>   DW_AT_type        : <0xeb>
 <1><187>: Abbrev Number: 1 (DW_TAG_typedef)
    <188>   DW_AT_name        : (indirect string, offset: 0x2): off_t
    <18c>   DW_AT_decl_file   : 7
    <18d>   DW_AT_decl_line   : 155
    <18e>   DW_AT_decl_column : 18
    <18f>   DW_AT_type        : <0x103>
 <1><193>: Abbrev Number: 1 (DW_TAG_typedef)
    <194>   DW_AT_name        : (indirect string, offset: 0x123): dev_t
    <198>   DW_AT_decl_file   : 7
    <199>   DW_AT_decl_line   : 159
    <19a>   DW_AT_decl_column : 18
    <19b>   DW_AT_type        : <0xc7>
 <1><19f>: Abbrev Number: 1 (DW_TAG_typedef)
    <1a0>   DW_AT_name        : (indirect string, offset: 0x23d): uid_t
    <1a4>   DW_AT_decl_file   : 7
    <1a5>   DW_AT_decl_line   : 163
    <1a6>   DW_AT_decl_column : 18
    <1a7>   DW_AT_type        : <0xd3>
 <1><1ab>: Abbrev Number: 1 (DW_TAG_typedef)
    <1ac>   DW_AT_name        : (indirect string, offset: 0xa): gid_t
    <1b0>   DW_AT_decl_file   : 7
    <1b1>   DW_AT_decl_line   : 167
    <1b2>   DW_AT_decl_column : 18
    <1b3>   DW_AT_type        : <0xdf>
 <1><1b7>: Abbrev Number: 1 (DW_TAG_typedef)
    <1b8>   DW_AT_name        : (indirect string, offset: 0x207): pid_t
    <1bc>   DW_AT_decl_file   : 7
    <1bd>   DW_AT_decl_line   : 172
    <1be>   DW_AT_decl_column : 18
    <1bf>   DW_AT_type        : <0xbb>
 <1><1c3>: Abbrev Number: 1 (DW_TAG_typedef)
    <1c4>   DW_AT_name        : (indirect string, offset: 0x25f): ssize_t
    <1c8>   DW_AT_decl_file   : 7
    <1c9>   DW_AT_decl_line   : 182
    <1ca>   DW_AT_decl_column : 18
    <1cb>   DW_AT_type        : <0x10f>
 <1><1cf>: Abbrev Number: 1 (DW_TAG_typedef)
    <1d0>   DW_AT_name        : (indirect string, offset: 0xe0): mode_t
    <1d4>   DW_AT_decl_file   : 7
    <1d5>   DW_AT_decl_line   : 187
    <1d6>   DW_AT_decl_column : 18
    <1d7>   DW_AT_type        : <0xf7>
 <1><1db>: Abbrev Number: 1 (DW_TAG_typedef)
    <1dc>   DW_AT_name        : (indirect string, offset: 0x15d): nlink_t
    <1e0>   DW_AT_decl_file   : 7
    <1e1>   DW_AT_decl_line   : 192
    <1e2>   DW_AT_decl_column : 19
    <1e3>   DW_AT_type        : <0x11d>
 <1><1e7>: Abbrev Number: 7 (DW_TAG_structure_type)
    <1e8>   DW_AT_name        : (indirect string, offset: 0xfb): stat
    <1ec>   DW_AT_byte_size   : 88
    <1ed>   DW_AT_decl_file   : 8
    <1ee>   DW_AT_decl_line   : 27
    <1ef>   DW_AT_decl_column : 8
    <1ef>   DW_AT_sibling     : <0x2aa>
 <2><1f3>: Abbrev Number: 2 (DW_TAG_member)
    <1f4>   DW_AT_name        : (indirect string, offset: 0x257): st_dev
    <1f8>   DW_AT_decl_file   : 8
    <1f9>   DW_AT_decl_line   : 29
    <1fa>   DW_AT_decl_column : 10
    <1fb>   DW_AT_type        : <0x193>
    <1ff>   DW_AT_data_member_location: 0
 <2><200>: Abbrev Number: 2 (DW_TAG_member)
    <201>   DW_AT_name        : (indirect string, offset: 0xd7): st_ino
    <205>   DW_AT_decl_file   : 8
    <206>   DW_AT_decl_line   : 30
    <207>   DW_AT_decl_column : 10
    <208>   DW_AT_type        : <0x17b>
    <20c>   DW_AT_data_member_location: 2
 <2><20d>: Abbrev Number: 2 (DW_TAG_member)
    <20e>   DW_AT_name        : (indirect string, offset: 0x1b2): st_mode
    <212>   DW_AT_decl_file   : 8
    <213>   DW_AT_decl_line   : 31
    <214>   DW_AT_decl_column : 10
    <215>   DW_AT_type        : <0x1cf>
    <219>   DW_AT_data_member_location: 4
 <2><21a>: Abbrev Number: 2 (DW_TAG_member)
    <21b>   DW_AT_name        : (indirect string, offset: 0x1ee): st_nlink
    <21f>   DW_AT_decl_file   : 8
    <220>   DW_AT_decl_line   : 32
    <221>   DW_AT_decl_column : 11
    <222>   DW_AT_type        : <0x1db>
    <226>   DW_AT_data_member_location: 8
 <2><227>: Abbrev Number: 2 (DW_TAG_member)
    <228>   DW_AT_name        : (indirect string, offset: 0x129): st_uid
    <22c>   DW_AT_decl_file   : 8
    <22d>   DW_AT_decl_line   : 33
    <22e>   DW_AT_decl_column : 10
    <22f>   DW_AT_type        : <0x19f>
    <233>   DW_AT_data_member_location: 10
 <2><234>: Abbrev Number: 2 (DW_TAG_member)
    <235>   DW_AT_name        : (indirect string, offset: 0x250): st_gid
    <239>   DW_AT_decl_file   : 8
    <23a>   DW_AT_decl_line   : 34
    <23b>   DW_AT_decl_column : 10
    <23c>   DW_AT_type        : <0x1ab>
    <240>   DW_AT_data_member_location: 12
 <2><241>: Abbrev Number: 2 (DW_TAG_member)
    <242>   DW_AT_name        : (indirect string, offset: 0x233): st_rdev
    <246>   DW_AT_decl_file   : 8
    <247>   DW_AT_decl_line   : 35
    <248>   DW_AT_decl_column : 10
    <249>   DW_AT_type        : <0x193>
    <24d>   DW_AT_data_member_location: 14
 <2><24e>: Abbrev Number: 2 (DW_TAG_member)
    <24f>   DW_AT_name        : (indirect string, offset: 0x1a3): st_size
    <253>   DW_AT_decl_file   : 8
    <254>   DW_AT_decl_line   : 36
    <255>   DW_AT_decl_column : 10
    <256>   DW_AT_type        : <0x187>
    <25a>   DW_AT_data_member_location: 16
 <2><25b>: Abbrev Number: 2 (DW_TAG_member)
    <25c>   DW_AT_name        : (indirect string, offset: 0x108): st_atim
    <260>   DW_AT_decl_file   : 8
    <261>   DW_AT_decl_line   : 42
    <262>   DW_AT_decl_column : 19
    <263>   DW_AT_type        : <0x135>
    <267>   DW_AT_data_member_location: 24
 <2><268>: Abbrev Number: 2 (DW_TAG_member)
    <269>   DW_AT_name        : (indirect string, offset: 0x267): st_mtim
    <26d>   DW_AT_decl_file   : 8
    <26e>   DW_AT_decl_line   : 43
    <26f>   DW_AT_decl_column : 19
    <270>   DW_AT_type        : <0x135>
    <274>   DW_AT_data_member_location: 40
 <2><275>: Abbrev Number: 2 (DW_TAG_member)
    <276>   DW_AT_name        : (indirect string, offset: 0x10): st_ctim
    <27a>   DW_AT_decl_file   : 8
    <27b>   DW_AT_decl_line   : 44
    <27c>   DW_AT_decl_column : 19
    <27d>   DW_AT_type        : <0x135>
    <281>   DW_AT_data_member_location: 56
 <2><282>: Abbrev Number: 2 (DW_TAG_member)
    <283>   DW_AT_name        : (indirect string, offset: 0x217): st_blksize
    <287>   DW_AT_decl_file   : 8
    <288>   DW_AT_decl_line   : 45
    <289>   DW_AT_decl_column : 17
    <28a>   DW_AT_type        : <0x168>
    <28e>   DW_AT_data_member_location: 72
 <2><28f>: Abbrev Number: 2 (DW_TAG_member)
    <290>   DW_AT_name        : (indirect string, offset: 0xa9): st_blocks
    <294>   DW_AT_decl_file   : 8
    <295>   DW_AT_decl_line   : 46
    <296>   DW_AT_decl_column : 12
    <297>   DW_AT_type        : <0x15c>
    <29b>   DW_AT_data_member_location: 76
 <2><29c>: Abbrev Number: 2 (DW_TAG_member)
    <29d>   DW_AT_name        : (indirect string, offset: 0x130): st_spare4
    <2a1>   DW_AT_decl_file   : 8
    <2a2>   DW_AT_decl_line   : 48
    <2a3>   DW_AT_decl_column : 9
    <2a4>   DW_AT_type        : <0x2aa>
    <2a8>   DW_AT_data_member_location: 80
 <2><2a9>: Abbrev Number: 0
 <1><2aa>: Abbrev Number: 19 (DW_TAG_array_type)
    <2ab>   DW_AT_type        : <0x50>
    <2af>   DW_AT_sibling     : <0x2ba>
 <2><2b3>: Abbrev Number: 20 (DW_TAG_subrange_type)
    <2b4>   DW_AT_type        : <0x2d>
    <2b8>   DW_AT_upper_bound : 1
 <2><2b9>: Abbrev Number: 0
 <1><2ba>: Abbrev Number: 21 (DW_TAG_subprogram)
    <2bb>   DW_AT_external    : 1
    <2bb>   DW_AT_name        : (indirect string, offset: 0x100): _getpid
    <2bf>   DW_AT_decl_file   : 1
    <2c0>   DW_AT_decl_line   : 13
    <2c1>   DW_AT_decl_column : 7
    <2c2>   DW_AT_prototyped  : 1
    <2c2>   DW_AT_type        : <0x1b7>
    <2c6>   DW_AT_low_pc      : 0x20000024
    <2ca>   DW_AT_high_pc     : 0x2
    <2ce>   DW_AT_frame_base  : 1 byte block: 9c 	(DW_OP_call_frame_cfa)
    <2d0>   DW_AT_call_all_calls: 1
 <1><2d0>: Abbrev Number: 6 (DW_TAG_subprogram)
    <2d1>   DW_AT_external    : 1
    <2d1>   DW_AT_name        : (indirect string, offset: 0x24a): _kill
    <2d5>   DW_AT_decl_file   : 1
    <2d5>   DW_AT_decl_line   : 12
    <2d6>   DW_AT_decl_column : 5
    <2d7>   DW_AT_prototyped  : 1
    <2d7>   DW_AT_type        : <0x7d>
    <2db>   DW_AT_low_pc      : 0x20000020
    <2df>   DW_AT_high_pc     : 0x2
    <2e3>   DW_AT_frame_base  : 1 byte block: 9c 	(DW_OP_call_frame_cfa)
    <2e5>   DW_AT_call_all_calls: 1
    <2e5>   DW_AT_sibling     : <0x30a>
 <2><2e9>: Abbrev Number: 5 (DW_TAG_formal_parameter)
    <2ea>   DW_AT_name        : pid
    <2ee>   DW_AT_decl_file   : 1
    <2ee>   DW_AT_decl_line   : 12
    <2ef>   DW_AT_decl_column : 15
    <2f0>   DW_AT_type        : <0x7d>
    <2f4>   DW_AT_location    : 0x10 (location list)
    <2f8>   DW_AT_GNU_locviews: 0xc
 <2><2fc>: Abbrev Number: 8 (DW_TAG_formal_parameter)
    <2fd>   DW_AT_name        : sig
    <301>   DW_AT_decl_file   : 1
    <301>   DW_AT_decl_line   : 12
    <302>   DW_AT_decl_column : 24
    <303>   DW_AT_type        : <0x7d>
    <307>   DW_AT_location    : 1 byte block: 51 	(DW_OP_reg1 (r1))
 <2><309>: Abbrev Number: 0
 <1><30a>: Abbrev Number: 9 (DW_TAG_subprogram)
    <30b>   DW_AT_external    : 1
    <30b>   DW_AT_name        : (indirect string, offset: 0x1e8): _read
    <30f>   DW_AT_decl_file   : 1
    <30f>   DW_AT_decl_line   : 11
    <310>   DW_AT_decl_column : 9
    <311>   DW_AT_prototyped  : 1
    <311>   DW_AT_type        : <0x1c3>
    <315>   DW_AT_sibling     : <0x33a>
 <2><319>: Abbrev Number: 4 (DW_TAG_formal_parameter)
    <31a>   DW_AT_name        : fd
    <31d>   DW_AT_decl_file   : 1
    <31d>   DW_AT_decl_line   : 11
    <31e>   DW_AT_decl_column : 19
    <31f>   DW_AT_type        : <0x7d>
 <2><323>: Abbrev Number: 4 (DW_TAG_formal_parameter)
    <324>   DW_AT_name        : buf
    <328>   DW_AT_decl_file   : 1
    <328>   DW_AT_decl_line   : 11
    <329>   DW_AT_decl_column : 29
    <32a>   DW_AT_type        : <0x11b>
 <2><32e>: Abbrev Number: 10 (DW_TAG_formal_parameter)
    <32f>   DW_AT_name        : (indirect string, offset: 0x110): count
    <333>   DW_AT_decl_file   : 1
    <333>   DW_AT_decl_line   : 11
    <334>   DW_AT_decl_column : 41
    <335>   DW_AT_type        : <0x84>
 <2><339>: Abbrev Number: 0
 <1><33a>: Abbrev Number: 6 (DW_TAG_subprogram)
    <33b>   DW_AT_external    : 1
    <33b>   DW_AT_name        : (indirect string, offset: 0xf2): _lseek
    <33f>   DW_AT_decl_file   : 1
    <33f>   DW_AT_decl_line   : 10
    <340>   DW_AT_decl_column : 7
    <341>   DW_AT_prototyped  : 1
    <341>   DW_AT_type        : <0x187>
    <345>   DW_AT_low_pc      : 0x20000018
    <349>   DW_AT_high_pc     : 0x2
    <34d>   DW_AT_frame_base  : 1 byte block: 9c 	(DW_OP_call_frame_cfa)
    <34f>   DW_AT_call_all_calls: 1
    <34f>   DW_AT_sibling     : <0x37e>
 <2><353>: Abbrev Number: 5 (DW_TAG_formal_parameter)
    <354>   DW_AT_name        : fd
    <357>   DW_AT_decl_file   : 1
    <357>   DW_AT_decl_line   : 10
    <358>   DW_AT_decl_column : 18
    <359>   DW_AT_type        : <0x7d>
    <35d>   DW_AT_location    : 0x28 (location list)
    <361>   DW_AT_GNU_locviews: 0x24
 <2><365>: Abbrev Number: 11 (DW_TAG_formal_parameter)
    <366>   DW_AT_name        : (indirect string, offset: 0x243): offset
    <36a>   DW_AT_decl_file   : 1
    <36a>   DW_AT_decl_line   : 10
    <36a>   DW_AT_decl_column : 28
    <36b>   DW_AT_type        : <0x187>
    <36f>   DW_AT_location    : 1 byte block: 51 	(DW_OP_reg1 (r1))
 <2><371>: Abbrev Number: 11 (DW_TAG_formal_parameter)
    <372>   DW_AT_name        : (indirect string, offset: 0x141): whence
    <376>   DW_AT_decl_file   : 1
    <376>   DW_AT_decl_line   : 10
    <376>   DW_AT_decl_column : 40
    <377>   DW_AT_type        : <0x7d>
    <37b>   DW_AT_location    : 1 byte block: 52 	(DW_OP_reg2 (r2))
 <2><37d>: Abbrev Number: 0
 <1><37e>: Abbrev Number: 9 (DW_TAG_subprogram)
    <37f>   DW_AT_external    : 1
    <37f>   DW_AT_name        : (indirect string, offset: 0x165): _isatty
    <383>   DW_AT_decl_file   : 1
    <383>   DW_AT_decl_line   : 9
    <384>   DW_AT_decl_column : 5
    <385>   DW_AT_prototyped  : 1
    <385>   DW_AT_type        : <0x7d>
    <389>   DW_AT_sibling     : <0x398>
 <2><38d>: Abbrev Number: 4 (DW_TAG_formal_parameter)
    <38e>   DW_AT_name        : fd
    <391>   DW_AT_decl_file   : 1
    <391>   DW_AT_decl_line   : 9
    <392>   DW_AT_decl_column : 17
    <393>   DW_AT_type        : <0x7d>
 <2><397>: Abbrev Number: 0
 <1><398>: Abbrev Number: 6 (DW_TAG_subprogram)
    <399>   DW_AT_external    : 1
    <399>   DW_AT_name        : (indirect string, offset: 0xf9): _fstat
    <39d>   DW_AT_decl_file   : 1
    <39d>   DW_AT_decl_line   : 8
    <39e>   DW_AT_decl_column : 5
    <39f>   DW_AT_prototyped  : 1
    <39f>   DW_AT_type        : <0x7d>
    <3a3>   DW_AT_low_pc      : 0x20000010
    <3a7>   DW_AT_high_pc     : 0x2
    <3ab>   DW_AT_frame_base  : 1 byte block: 9c 	(DW_OP_call_frame_cfa)
    <3ad>   DW_AT_call_all_calls: 1
    <3ad>   DW_AT_sibling     : <0x3d1>
 <2><3b1>: Abbrev Number: 5 (DW_TAG_formal_parameter)
    <3b2>   DW_AT_name        : fd
    <3b5>   DW_AT_decl_file   : 1
    <3b5>   DW_AT_decl_line   : 8
    <3b6>   DW_AT_decl_column : 16
    <3b7>   DW_AT_type        : <0x7d>
    <3bb>   DW_AT_location    : 0x40 (location list)
    <3bf>   DW_AT_GNU_locviews: 0x3c
 <2><3c3>: Abbrev Number: 8 (DW_TAG_formal_parameter)
    <3c4>   DW_AT_name        : buf
    <3c8>   DW_AT_decl_file   : 1
    <3c8>   DW_AT_decl_line   : 8
    <3c9>   DW_AT_decl_column : 33
    <3ca>   DW_AT_type        : <0x3d1>
    <3ce>   DW_AT_location    : 1 byte block: 51 	(DW_OP_reg1 (r1))
 <2><3d0>: Abbrev Number: 0
 <1><3d1>: Abbrev Number: 12 (DW_TAG_pointer_type)
    <3d2>   DW_AT_byte_size   : 4
    <3d2>   DW_AT_type        : <0x1e7>
 <1><3d6>: Abbrev Number: 13 (DW_TAG_subprogram)
    <3d7>   DW_AT_external    : 1
    <3d7>   DW_AT_name        : (indirect string, offset: 0x13a): _close
    <3db>   DW_AT_decl_file   : 1
    <3db>   DW_AT_decl_line   : 7
    <3dc>   DW_AT_decl_column : 5
    <3dc>   DW_AT_prototyped  : 1
    <3dc>   DW_AT_type        : <0x7d>
    <3e0>   DW_AT_inline      : 1	(inlined)
    <3e0>   DW_AT_sibling     : <0x3ef>
 <2><3e4>: Abbrev Number: 4 (DW_TAG_formal_parameter)
    <3e5>   DW_AT_name        : fd
    <3e8>   DW_AT_decl_file   : 1
    <3e8>   DW_AT_decl_line   : 7
    <3e9>   DW_AT_decl_column : 16
    <3ea>   DW_AT_type        : <0x7d>
 <2><3ee>: Abbrev Number: 0
 <1><3ef>: Abbrev Number: 13 (DW_TAG_subprogram)
    <3f0>   DW_AT_external    : 1
    <3f0>   DW_AT_name        : (indirect string, offset: 0x1ab): _write
    <3f4>   DW_AT_decl_file   : 1
    <3f4>   DW_AT_decl_line   : 6
    <3f5>   DW_AT_decl_column : 5
    <3f5>   DW_AT_prototyped  : 1
    <3f5>   DW_AT_type        : <0x7d>
    <3f9>   DW_AT_inline      : 1	(inlined)
    <3f9>   DW_AT_sibling     : <0x41e>
 <2><3fd>: Abbrev Number: 4 (DW_TAG_formal_parameter)
    <3fe>   DW_AT_name        : fd
    <401>   DW_AT_decl_file   : 1
    <401>   DW_AT_decl_line   : 6
    <402>   DW_AT_decl_column : 16
    <403>   DW_AT_type        : <0x7d>
 <2><407>: Abbrev Number: 4 (DW_TAG_formal_parameter)
    <408>   DW_AT_name        : buf
    <40c>   DW_AT_decl_file   : 1
    <40c>   DW_AT_decl_line   : 6
    <40d>   DW_AT_decl_column : 32
    <40e>   DW_AT_type        : <0x41e>
 <2><412>: Abbrev Number: 10 (DW_TAG_formal_parameter)
    <413>   DW_AT_name        : (indirect string, offset: 0x110): count
    <417>   DW_AT_decl_file   : 1
    <417>   DW_AT_decl_line   : 6
    <418>   DW_AT_decl_column : 44
    <419>   DW_AT_type        : <0x84>
 <2><41d>: Abbrev Number: 0
 <1><41e>: Abbrev Number: 12 (DW_TAG_pointer_type)
    <41f>   DW_AT_byte_size   : 4
    <41f>   DW_AT_type        : <0x423>
 <1><423>: Abbrev Number: 22 (DW_TAG_const_type)
 <1><424>: Abbrev Number: 6 (DW_TAG_subprogram)
    <425>   DW_AT_external    : 1
    <425>   DW_AT_name        : (indirect string, offset: 0x26f): _sbrk
    <429>   DW_AT_decl_file   : 1
    <429>   DW_AT_decl_line   : 5
    <42a>   DW_AT_decl_column : 7
    <42b>   DW_AT_prototyped  : 1
    <42b>   DW_AT_type        : <0x11b>
    <42f>   DW_AT_low_pc      : 0x20000004
    <433>   DW_AT_high_pc     : 0x2
    <437>   DW_AT_frame_base  : 1 byte block: 9c 	(DW_OP_call_frame_cfa)
    <439>   DW_AT_call_all_calls: 1
    <439>   DW_AT_sibling     : <0x44f>
 <2><43d>: Abbrev Number: 5 (DW_TAG_formal_parameter)
    <43e>   DW_AT_name        : a
    <440>   DW_AT_decl_file   : 1
    <440>   DW_AT_decl_line   : 5
    <441>   DW_AT_decl_column : 17
    <442>   DW_AT_type        : <0x7d>
    <446>   DW_AT_location    : 0x58 (location list)
    <44a>   DW_AT_GNU_locviews: 0x54
 <2><44e>: Abbrev Number: 0
 <1><44f>: Abbrev Number: 23 (DW_TAG_subprogram)
    <450>   DW_AT_external    : 1
    <450>   DW_AT_name        : (indirect string, offset: 0xc3): _exit
    <454>   DW_AT_decl_file   : 1
    <455>   DW_AT_decl_line   : 4
    <456>   DW_AT_decl_column : 6
    <457>   DW_AT_prototyped  : 1
    <457>   DW_AT_noreturn    : 1
    <457>   DW_AT_low_pc      : 0x20000000
    <45b>   DW_AT_high_pc     : 0x2
    <45f>   DW_AT_frame_base  : 1 byte block: 9c 	(DW_OP_call_frame_cfa)
    <461>   DW_AT_call_all_calls: 1
    <461>   DW_AT_sibling     : <0x477>
 <2><465>: Abbrev Number: 5 (DW_TAG_formal_parameter)
    <466>   DW_AT_name        : a
    <468>   DW_AT_decl_file   : 1
    <468>   DW_AT_decl_line   : 4
    <469>   DW_AT_decl_column : 16
    <46a>   DW_AT_type        : <0x7d>
    <46e>   DW_AT_location    : 0x6e (location list)
    <472>   DW_AT_GNU_locviews: 0x6c
 <2><476>: Abbrev Number: 0
 <1><477>: Abbrev Number: 24 (DW_TAG_subprogram)
    <478>   DW_AT_abstract_origin: <0x3ef>
    <47c>   DW_AT_low_pc      : 0x20000008
    <480>   DW_AT_high_pc     : 0x2
    <484>   DW_AT_frame_base  : 1 byte block: 9c 	(DW_OP_call_frame_cfa)
    <486>   DW_AT_call_all_calls: 1
    <486>   DW_AT_sibling     : <0x4a6>
 <2><48a>: Abbrev Number: 14 (DW_TAG_formal_parameter)
    <48b>   DW_AT_abstract_origin: <0x3fd>
    <48f>   DW_AT_location    : 0x78 (location list)
    <493>   DW_AT_GNU_locviews: 0x74
 <2><497>: Abbrev Number: 15 (DW_TAG_formal_parameter)
    <498>   DW_AT_abstract_origin: <0x407>
    <49c>   DW_AT_location    : 1 byte block: 51 	(DW_OP_reg1 (r1))
 <2><49e>: Abbrev Number: 15 (DW_TAG_formal_parameter)
    <49f>   DW_AT_abstract_origin: <0x412>
    <4a3>   DW_AT_location    : 1 byte block: 52 	(DW_OP_reg2 (r2))
 <2><4a5>: Abbrev Number: 0
 <1><4a6>: Abbrev Number: 25 (DW_TAG_subprogram)
    <4a7>   DW_AT_abstract_origin: <0x3d6>
    <4ab>   DW_AT_low_pc      : 0x2000000c
    <4af>   DW_AT_high_pc     : 0x2
    <4b3>   DW_AT_frame_base  : 1 byte block: 9c 	(DW_OP_call_frame_cfa)
    <4b5>   DW_AT_call_all_calls: 1
 <2><4b5>: Abbrev Number: 14 (DW_TAG_formal_parameter)
    <4b6>   DW_AT_abstract_origin: <0x3e4>
    <4ba>   DW_AT_location    : 0x90 (location list)
    <4be>   DW_AT_GNU_locviews: 0x8c
 <2><4c2>: Abbrev Number: 0
 <1><4c3>: Abbrev Number: 0
  Compilation Unit @ offset 0x4c4:
   Length:        0x22 (32-bit)
   Version:       2
   Abbrev Offset: 0x19a
   Pointer Size:  4
 <0><4cf>: Abbrev Number: 1 (DW_TAG_compile_unit)
    <4d0>   DW_AT_stmt_list   : 0x1f6
    <4d4>   DW_AT_low_pc      : 0x20000028
    <4d8>   DW_AT_high_pc     : 0x2000003c
    <4dc>   DW_AT_name        : (indirect string, offset: 0x275): libs/crt0.s
    <4e0>   DW_AT_comp_dir    : (indirect string, offset: 0x16d): /Users/guosijia/Desktop/Telecom/cours/se/sijia-guo/TP
    <4e4>   DW_AT_producer    : (indirect string, offset: 0x281): GNU AS 2.42.0
    <4e8>   DW_AT_language    : 32769	(MIPS assembler)
  Compilation Unit @ offset 0x4ea:
   Length:        0x1ed (32-bit)
   Version:       5
   Unit Type:     DW_UT_compile (1)
   Abbrev Offset: 0x1ae
   Pointer Size:  4
 <0><4f6>: Abbrev Number: 7 (DW_TAG_compile_unit)
    <4f7>   DW_AT_producer    : (indirect string, offset: 0x25): GNU C17 13.3.1 20240614 -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -march=armv7e-m+fp -g -O2
    <4fb>   DW_AT_language    : 29	(C11)
    <4fc>   DW_AT_name        : (indirect string, offset: 0x2a7): main.c
    <500>   DW_AT_comp_dir    : (indirect string, offset: 0x16d): /Users/guosijia/Desktop/Telecom/cours/se/sijia-guo/TP
    <504>   DW_AT_ranges      : 0x18
    <508>   DW_AT_low_pc      : 0
    <50c>   DW_AT_stmt_list   : 0x230
 <1><510>: Abbrev Number: 3 (DW_TAG_base_type)
    <511>   DW_AT_byte_size   : 8
    <512>   DW_AT_encoding    : 7	(unsigned)
    <512>   DW_AT_name        : (indirect string, offset: 0x92): long long unsigned int
 <1><516>: Abbrev Number: 3 (DW_TAG_base_type)
    <517>   DW_AT_byte_size   : 4
    <518>   DW_AT_encoding    : 7	(unsigned)
    <518>   DW_AT_name        : (indirect string, offset: 0x9c): unsigned int
 <1><51c>: Abbrev Number: 4 (DW_TAG_variable)
    <51d>   DW_AT_name        : (indirect string, offset: 0x28f): global_var1
    <521>   DW_AT_decl_file   : 1
    <521>   DW_AT_decl_line   : 19
    <522>   DW_AT_decl_column : 5
    <522>   DW_AT_type        : <0x52c>
    <526>   DW_AT_external    : 1
    <526>   DW_AT_location    : 5 byte block: 3 60 2 0 20 	(DW_OP_addr: 20000260)
 <1><52c>: Abbrev Number: 8 (DW_TAG_base_type)
    <52d>   DW_AT_byte_size   : 4
    <52e>   DW_AT_encoding    : 5	(signed)
    <52f>   DW_AT_name        : int
 <1><533>: Abbrev Number: 4 (DW_TAG_variable)
    <534>   DW_AT_name        : (indirect string, offset: 0x29b): global_var2
    <538>   DW_AT_decl_file   : 1
    <538>   DW_AT_decl_line   : 20
    <539>   DW_AT_decl_column : 5
    <539>   DW_AT_type        : <0x52c>
    <53d>   DW_AT_external    : 1
    <53d>   DW_AT_location    : 5 byte block: 3 5c 2 0 20 	(DW_OP_addr: 2000025c)
 <1><543>: Abbrev Number: 9 (DW_TAG_subprogram)
    <544>   DW_AT_external    : 1
    <544>   DW_AT_name        : (indirect string, offset: 0x2ae): main
    <548>   DW_AT_decl_file   : 1
    <549>   DW_AT_decl_line   : 22
    <54a>   DW_AT_decl_column : 5
    <54b>   DW_AT_prototyped  : 1
    <54b>   DW_AT_type        : <0x52c>
    <54f>   DW_AT_low_pc      : 0x20000250
    <553>   DW_AT_high_pc     : 0xc
    <557>   DW_AT_frame_base  : 1 byte block: 9c 	(DW_OP_call_frame_cfa)
    <559>   DW_AT_call_all_calls: 1
    <559>   DW_AT_sibling     : <0x56d>
 <2><55d>: Abbrev Number: 5 (DW_TAG_call_site)
    <55e>   DW_AT_call_return_pc: 0x20000258
    <562>   DW_AT_call_origin : <0x56d>
 <3><566>: Abbrev Number: 6 (DW_TAG_call_site_parameter)
    <567>   DW_AT_location    : 1 byte block: 50 	(DW_OP_reg0 (r0))
    <569>   DW_AT_call_value  : 1 byte block: 35 	(DW_OP_lit5)
 <3><56b>: Abbrev Number: 0
 <2><56c>: Abbrev Number: 0
 <1><56d>: Abbrev Number: 10 (DW_TAG_subprogram)
    <56e>   DW_AT_external    : 1
    <56e>   DW_AT_name        : (indirect string, offset: 0x2b3): fibo
    <572>   DW_AT_decl_file   : 1
    <573>   DW_AT_decl_line   : 9
    <574>   DW_AT_decl_column : 5
    <575>   DW_AT_prototyped  : 1
    <575>   DW_AT_type        : <0x52c>
    <579>   DW_AT_inline      : 1	(inlined)
    <57a>   DW_AT_sibling     : <0x589>
 <2><57e>: Abbrev Number: 11 (DW_TAG_formal_parameter)
    <57f>   DW_AT_name        : n
    <581>   DW_AT_decl_file   : 1
    <582>   DW_AT_decl_line   : 9
    <583>   DW_AT_decl_column : 14
    <584>   DW_AT_type        : <0x52c>
 <2><588>: Abbrev Number: 0
 <1><589>: Abbrev Number: 12 (DW_TAG_subprogram)
    <58a>   DW_AT_external    : 1
    <58a>   DW_AT_name        : (indirect string, offset: 0x2b8): infini
    <58e>   DW_AT_decl_file   : 1
    <58f>   DW_AT_decl_line   : 1
    <590>   DW_AT_decl_column : 5
    <591>   DW_AT_type        : <0x52c>
    <595>   DW_AT_low_pc      : 0x2000003c
    <599>   DW_AT_high_pc     : 0x2
    <59d>   DW_AT_frame_base  : 1 byte block: 9c 	(DW_OP_call_frame_cfa)
    <59f>   DW_AT_call_all_calls: 1
    <59f>   DW_AT_sibling     : <0x5ae>
 <2><5a3>: Abbrev Number: 13 (DW_TAG_variable)
    <5a4>   DW_AT_name        : i
    <5a6>   DW_AT_decl_file   : 1
    <5a7>   DW_AT_decl_line   : 2
    <5a8>   DW_AT_decl_column : 9
    <5a9>   DW_AT_type        : <0x52c>
 <2><5ad>: Abbrev Number: 0
 <1><5ae>: Abbrev Number: 14 (DW_TAG_subprogram)
    <5af>   DW_AT_abstract_origin: <0x56d>
    <5b3>   DW_AT_low_pc      : 0x20000040
    <5b7>   DW_AT_high_pc     : 0x18a
    <5bb>   DW_AT_frame_base  : 1 byte block: 9c 	(DW_OP_call_frame_cfa)
    <5bd>   DW_AT_call_all_calls: 1
 <2><5bd>: Abbrev Number: 1 (DW_TAG_formal_parameter)
    <5be>   DW_AT_abstract_origin: <0x57e>
    <5c2>   DW_AT_location    : 0xb6 (location list)
    <5c6>   DW_AT_GNU_locviews: 0xb0
 <2><5ca>: Abbrev Number: 2 (DW_TAG_inlined_subroutine)
    <5cb>   DW_AT_abstract_origin: <0x56d>
    <5cf>   DW_AT_entry_pc    : 0x2000005c
    <5d3>   DW_AT_GNU_entry_view: 1
    <5d4>   DW_AT_low_pc      : 0x2000005c
    <5d8>   DW_AT_high_pc     : 0x150
    <5dc>   DW_AT_call_file   : 1
    <5dc>   DW_AT_call_line   : 15
    <5dc>   DW_AT_call_column : 16
 <3><5dc>: Abbrev Number: 1 (DW_TAG_formal_parameter)
    <5dd>   DW_AT_abstract_origin: <0x57e>
    <5e1>   DW_AT_location    : 0xd9 (location list)
    <5e5>   DW_AT_GNU_locviews: 0xd7
 <3><5e9>: Abbrev Number: 2 (DW_TAG_inlined_subroutine)
    <5ea>   DW_AT_abstract_origin: <0x56d>
    <5ee>   DW_AT_entry_pc    : 0x20000072
    <5f2>   DW_AT_GNU_entry_view: 1
    <5f3>   DW_AT_low_pc      : 0x20000072
    <5f7>   DW_AT_high_pc     : 0x124
    <5fb>   DW_AT_call_file   : 1
    <5fb>   DW_AT_call_line   : 15
    <5fb>   DW_AT_call_column : 16
 <4><5fb>: Abbrev Number: 1 (DW_TAG_formal_parameter)
    <5fc>   DW_AT_abstract_origin: <0x57e>
    <600>   DW_AT_location    : 0xe4 (location list)
    <604>   DW_AT_GNU_locviews: 0xe2
 <4><608>: Abbrev Number: 2 (DW_TAG_inlined_subroutine)
    <609>   DW_AT_abstract_origin: <0x56d>
    <60d>   DW_AT_entry_pc    : 0x20000088
    <611>   DW_AT_GNU_entry_view: 1
    <612>   DW_AT_low_pc      : 0x20000088
    <616>   DW_AT_high_pc     : 0xfa
    <61a>   DW_AT_call_file   : 1
    <61a>   DW_AT_call_line   : 15
    <61a>   DW_AT_call_column : 16
 <5><61a>: Abbrev Number: 1 (DW_TAG_formal_parameter)
    <61b>   DW_AT_abstract_origin: <0x57e>
    <61f>   DW_AT_location    : 0xef (location list)
    <623>   DW_AT_GNU_locviews: 0xed
 <5><627>: Abbrev Number: 2 (DW_TAG_inlined_subroutine)
    <628>   DW_AT_abstract_origin: <0x56d>
    <62c>   DW_AT_entry_pc    : 0x2000009a
    <630>   DW_AT_GNU_entry_view: 1
    <631>   DW_AT_low_pc      : 0x2000009a
    <635>   DW_AT_high_pc     : 0xd6
    <639>   DW_AT_call_file   : 1
    <639>   DW_AT_call_line   : 15
    <639>   DW_AT_call_column : 16
 <6><639>: Abbrev Number: 1 (DW_TAG_formal_parameter)
    <63a>   DW_AT_abstract_origin: <0x57e>
    <63e>   DW_AT_location    : 0xfc (location list)
    <642>   DW_AT_GNU_locviews: 0xf8
 <6><646>: Abbrev Number: 2 (DW_TAG_inlined_subroutine)
    <647>   DW_AT_abstract_origin: <0x56d>
    <64b>   DW_AT_entry_pc    : 0x200000b8
    <64f>   DW_AT_GNU_entry_view: 1
    <650>   DW_AT_low_pc      : 0x200000b8
    <654>   DW_AT_high_pc     : 0xa0
    <658>   DW_AT_call_file   : 1
    <658>   DW_AT_call_line   : 15
    <658>   DW_AT_call_column : 16
 <7><658>: Abbrev Number: 1 (DW_TAG_formal_parameter)
    <659>   DW_AT_abstract_origin: <0x57e>
    <65d>   DW_AT_location    : 0x117 (location list)
    <661>   DW_AT_GNU_locviews: 0x10f
 <7><665>: Abbrev Number: 2 (DW_TAG_inlined_subroutine)
    <666>   DW_AT_abstract_origin: <0x56d>
    <66a>   DW_AT_entry_pc    : 0x200000ce
    <66e>   DW_AT_GNU_entry_view: 1
    <66f>   DW_AT_low_pc      : 0x200000ce
    <673>   DW_AT_high_pc     : 0x76
    <677>   DW_AT_call_file   : 1
    <677>   DW_AT_call_line   : 15
    <677>   DW_AT_call_column : 16
 <8><677>: Abbrev Number: 1 (DW_TAG_formal_parameter)
    <678>   DW_AT_abstract_origin: <0x57e>
    <67c>   DW_AT_location    : 0x13e (location list)
    <680>   DW_AT_GNU_locviews: 0x138
 <8><684>: Abbrev Number: 2 (DW_TAG_inlined_subroutine)
    <685>   DW_AT_abstract_origin: <0x56d>
    <689>   DW_AT_entry_pc    : 0x200000ea
    <68d>   DW_AT_GNU_entry_view: 1
    <68e>   DW_AT_low_pc      : 0x200000ea
    <692>   DW_AT_high_pc     : 0x44
    <696>   DW_AT_call_file   : 1
    <696>   DW_AT_call_line   : 15
    <696>   DW_AT_call_column : 16
 <9><696>: Abbrev Number: 1 (DW_TAG_formal_parameter)
    <697>   DW_AT_abstract_origin: <0x57e>
    <69b>   DW_AT_location    : 0x165 (location list)
    <69f>   DW_AT_GNU_locviews: 0x159
 <9><6a3>: Abbrev Number: 15 (DW_TAG_inlined_subroutine)
    <6a4>   DW_AT_abstract_origin: <0x56d>
    <6a8>   DW_AT_entry_pc    : 0x200000fe
    <6ac>   DW_AT_GNU_entry_view: 0
    <6ad>   DW_AT_ranges      : 0xc
    <6b1>   DW_AT_call_file   : 1
    <6b2>   DW_AT_call_line   : 15
    <6b3>   DW_AT_call_column : 16
 <10><6b4>: Abbrev Number: 1 (DW_TAG_formal_parameter)
    <6b5>   DW_AT_abstract_origin: <0x57e>
    <6b9>   DW_AT_location    : 0x193 (location list)
    <6bd>   DW_AT_GNU_locviews: 0x18d
 <10><6c1>: Abbrev Number: 5 (DW_TAG_call_site)
    <6c2>   DW_AT_call_return_pc: 0x2000010e
    <6c6>   DW_AT_call_origin : <0x56d>
 <11><6ca>: Abbrev Number: 6 (DW_TAG_call_site_parameter)
    <6cb>   DW_AT_location    : 1 byte block: 50 	(DW_OP_reg0 (r0))
    <6cd>   DW_AT_call_value  : 2 byte block: 79 7f 	(DW_OP_breg9 (r9): -1)
 <11><6d0>: Abbrev Number: 0
 <10><6d1>: Abbrev Number: 0
 <9><6d2>: Abbrev Number: 0
 <8><6d3>: Abbrev Number: 0
 <7><6d4>: Abbrev Number: 0
 <6><6d5>: Abbrev Number: 0
 <5><6d6>: Abbrev Number: 0
 <4><6d7>: Abbrev Number: 0
 <3><6d8>: Abbrev Number: 0
 <2><6d9>: Abbrev Number: 0
 <1><6da>: Abbrev Number: 0
  Compilation Unit @ offset 0x6db:
   Length:        0x8d (32-bit)
   Version:       5
   Unit Type:     DW_UT_compile (1)
   Abbrev Offset: 0x2b5
   Pointer Size:  4
 <0><6e7>: Abbrev Number: 2 (DW_TAG_compile_unit)
    <6e8>   DW_AT_producer    : (indirect string, offset: 0x25): GNU C17 13.3.1 20240614 -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -march=armv7e-m+fp -g -O2
    <6ec>   DW_AT_language    : 29	(C11)
    <6ed>   DW_AT_name        : (indirect string, offset: 0x2fb): libs/init.c
    <6f1>   DW_AT_comp_dir    : (indirect string, offset: 0x16d): /Users/guosijia/Desktop/Telecom/cours/se/sijia-guo/TP
    <6f5>   DW_AT_low_pc      : 0x200001cc
    <6f9>   DW_AT_high_pc     : 0x24
    <6fd>   DW_AT_stmt_list   : 0x3bf
 <1><701>: Abbrev Number: 1 (DW_TAG_variable)
    <702>   DW_AT_name        : (indirect string, offset: 0x2d8): __bss_start__
    <706>   DW_AT_decl_file   : 1
    <706>   DW_AT_decl_line   : 2
    <707>   DW_AT_decl_column : 21
    <707>   DW_AT_type        : <0x70b>
    <70b>   DW_AT_external    : 1
    <70b>   DW_AT_declaration : 1
 <1><70b>: Abbrev Number: 3 (DW_TAG_base_type)
    <70c>   DW_AT_byte_size   : 4
    <70d>   DW_AT_encoding    : 7	(unsigned)
    <70e>   DW_AT_name        : (indirect string, offset: 0x9c): unsigned int
 <1><712>: Abbrev Number: 1 (DW_TAG_variable)
    <713>   DW_AT_name        : (indirect string, offset: 0x2ef): __bss_end__
    <717>   DW_AT_decl_file   : 1
    <717>   DW_AT_decl_line   : 3
    <718>   DW_AT_decl_column : 21
    <718>   DW_AT_type        : <0x70b>
    <71c>   DW_AT_external    : 1
    <71c>   DW_AT_declaration : 1
 <1><71c>: Abbrev Number: 4 (DW_TAG_subprogram)
    <71d>   DW_AT_external    : 1
    <71d>   DW_AT_name        : (indirect string, offset: 0x2e6): init_bss
    <721>   DW_AT_decl_file   : 1
    <722>   DW_AT_decl_line   : 5
    <723>   DW_AT_decl_column : 6
    <724>   DW_AT_prototyped  : 1
    <724>   DW_AT_low_pc      : 0x200001cc
    <728>   DW_AT_high_pc     : 0x24
    <72c>   DW_AT_frame_base  : 1 byte block: 9c 	(DW_OP_call_frame_cfa)
    <72e>   DW_AT_call_all_calls: 1
    <72e>   DW_AT_sibling     : <0x75a>
 <2><732>: Abbrev Number: 5 (DW_TAG_variable)
    <733>   DW_AT_name        : bss
    <737>   DW_AT_decl_file   : 1
    <738>   DW_AT_decl_line   : 6
    <739>   DW_AT_decl_column : 19
    <73a>   DW_AT_type        : <0x75a>
 <2><73e>: Abbrev Number: 6 (DW_TAG_variable)
    <73f>   DW_AT_name        : (indirect string, offset: 0x2bf): bss_end
    <743>   DW_AT_decl_file   : 1
    <744>   DW_AT_decl_line   : 7
    <745>   DW_AT_decl_column : 19
    <746>   DW_AT_type        : <0x75a>
 <2><74a>: Abbrev Number: 7 (DW_TAG_call_site)
    <74b>   DW_AT_call_return_pc: 0x200001e4
    <74f>   DW_AT_call_tail_call: 1
    <74f>   DW_AT_call_origin : <0x760>
 <3><753>: Abbrev Number: 8 (DW_TAG_call_site_parameter)
    <754>   DW_AT_location    : 1 byte block: 51 	(DW_OP_reg1 (r1))
    <756>   DW_AT_call_value  : 1 byte block: 30 	(DW_OP_lit0)
 <3><758>: Abbrev Number: 0
 <2><759>: Abbrev Number: 0
 <1><75a>: Abbrev Number: 9 (DW_TAG_pointer_type)
    <75b>   DW_AT_byte_size   : 4
    <75c>   DW_AT_type        : <0x70b>
 <1><760>: Abbrev Number: 10 (DW_TAG_subprogram)
    <761>   DW_AT_external    : 1
    <761>   DW_AT_declaration : 1
    <761>   DW_AT_linkage_name: (indirect string, offset: 0x2d1): memset
    <765>   DW_AT_name        : (indirect string, offset: 0x2c7): __builtin_memset
    <769>   DW_AT_decl_file   : 2
    <76a>   DW_AT_decl_line   : 0
 <1><76b>: Abbrev Number: 0
  Compilation Unit @ offset 0x76c:
   Length:        0x220 (32-bit)
   Version:       5
   Unit Type:     DW_UT_compile (1)
   Abbrev Offset: 0x351
   Pointer Size:  4
 <0><778>: Abbrev Number: 11 (DW_TAG_compile_unit)
    <779>   DW_AT_producer    : (indirect string, offset: 0x25): GNU C17 13.3.1 20240614 -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -march=armv7e-m+fp -g -O2
    <77d>   DW_AT_language    : 29	(C11)
    <77e>   DW_AT_name        : (indirect string, offset: 0x30e): libs/memfuncs.c
    <782>   DW_AT_comp_dir    : (indirect string, offset: 0x16d): /Users/guosijia/Desktop/Telecom/cours/se/sijia-guo/TP
    <786>   DW_AT_ranges      : 0x32
    <78a>   DW_AT_low_pc      : 0
    <78e>   DW_AT_stmt_list   : 0x415
 <1><792>: Abbrev Number: 6 (DW_TAG_base_type)
    <793>   DW_AT_byte_size   : 8
    <794>   DW_AT_encoding    : 7	(unsigned)
    <795>   DW_AT_name        : (indirect string, offset: 0x92): long long unsigned int
 <1><799>: Abbrev Number: 6 (DW_TAG_base_type)
    <79a>   DW_AT_byte_size   : 4
    <79b>   DW_AT_encoding    : 7	(unsigned)
    <79c>   DW_AT_name        : (indirect string, offset: 0x9c): unsigned int
 <1><7a0>: Abbrev Number: 12 (DW_TAG_subprogram)
    <7a1>   DW_AT_external    : 1
    <7a1>   DW_AT_name        : (indirect string, offset: 0x307): memcmp
    <7a5>   DW_AT_decl_file   : 1
    <7a6>   DW_AT_decl_line   : 32
    <7a7>   DW_AT_decl_column : 5
    <7a8>   DW_AT_prototyped  : 1
    <7a8>   DW_AT_type        : <0x814>
    <7ac>   DW_AT_low_pc      : 0x20000228
    <7b0>   DW_AT_high_pc     : 0x26
    <7b4>   DW_AT_frame_base  : 1 byte block: 9c 	(DW_OP_call_frame_cfa)
    <7b6>   DW_AT_call_all_calls: 1
    <7b6>   DW_AT_sibling     : <0x814>
 <2><7ba>: Abbrev Number: 7 (DW_TAG_formal_parameter)
    <7bb>   DW_AT_name        : (indirect string, offset: 0x324): dest
    <7bf>   DW_AT_decl_file   : 1
    <7bf>   DW_AT_decl_line   : 32
    <7c0>   DW_AT_decl_column : 18
    <7c1>   DW_AT_type        : <0x81b>
    <7c5>   DW_AT_location    : 0x1be (location list)
    <7c9>   DW_AT_GNU_locviews: 0x1ba
 <2><7cd>: Abbrev Number: 1 (DW_TAG_formal_parameter)
    <7ce>   DW_AT_name        : src
    <7d2>   DW_AT_decl_file   : 1
    <7d2>   DW_AT_decl_line   : 32
    <7d3>   DW_AT_decl_column : 36
    <7d4>   DW_AT_type        : <0x81d>
    <7d8>   DW_AT_location    : 0x1dd (location list)
    <7dc>   DW_AT_GNU_locviews: 0x1d7
 <2><7e0>: Abbrev Number: 1 (DW_TAG_formal_parameter)
    <7e1>   DW_AT_name        : n
    <7e3>   DW_AT_decl_file   : 1
    <7e3>   DW_AT_decl_line   : 32
    <7e4>   DW_AT_decl_column : 54
    <7e5>   DW_AT_type        : <0x799>
    <7e9>   DW_AT_location    : 0x209 (location list)
    <7ed>   DW_AT_GNU_locviews: 0x1fd
 <2><7f1>: Abbrev Number: 2 (DW_TAG_variable)
    <7f2>   DW_AT_name        : d
    <7f4>   DW_AT_decl_file   : 1
    <7f4>   DW_AT_decl_line   : 34
    <7f5>   DW_AT_decl_column : 20
    <7f6>   DW_AT_type        : <0x823>
    <7fa>   DW_AT_location    : 0x27a (location list)
    <7fe>   DW_AT_GNU_locviews: 0x276
 <2><802>: Abbrev Number: 2 (DW_TAG_variable)
    <803>   DW_AT_name        : s
    <805>   DW_AT_decl_file   : 1
    <805>   DW_AT_decl_line   : 35
    <806>   DW_AT_decl_column : 26
    <807>   DW_AT_type        : <0x839>
    <80b>   DW_AT_location    : 0x296 (location list)
    <80f>   DW_AT_GNU_locviews: 0x28c
 <2><813>: Abbrev Number: 0
 <1><814>: Abbrev Number: 13 (DW_TAG_base_type)
    <815>   DW_AT_byte_size   : 4
    <816>   DW_AT_encoding    : 5	(signed)
    <817>   DW_AT_name        : int
 <1><81b>: Abbrev Number: 14 (DW_TAG_pointer_type)
    <81c>   DW_AT_byte_size   : 4
 <1><81d>: Abbrev Number: 3 (DW_TAG_pointer_type)
    <81e>   DW_AT_byte_size   : 4
    <81e>   DW_AT_type        : <0x822>
 <1><822>: Abbrev Number: 15 (DW_TAG_const_type)
 <1><823>: Abbrev Number: 3 (DW_TAG_pointer_type)
    <824>   DW_AT_byte_size   : 4
    <824>   DW_AT_type        : <0x828>
 <1><828>: Abbrev Number: 6 (DW_TAG_base_type)
    <829>   DW_AT_byte_size   : 1
    <82a>   DW_AT_encoding    : 8	(unsigned char)
    <82b>   DW_AT_name        : (indirect string, offset: 0x1f7): unsigned char
 <1><82f>: Abbrev Number: 16 (DW_TAG_const_type)
    <830>   DW_AT_type        : <0x828>
 <1><834>: Abbrev Number: 17 (DW_TAG_volatile_type)
    <835>   DW_AT_type        : <0x828>
 <1><839>: Abbrev Number: 3 (DW_TAG_pointer_type)
    <83a>   DW_AT_byte_size   : 4
    <83a>   DW_AT_type        : <0x82f>
 <1><83e>: Abbrev Number: 18 (DW_TAG_subprogram)
    <83f>   DW_AT_external    : 1
    <83f>   DW_AT_name        : (indirect string, offset: 0x329): memmove
    <843>   DW_AT_decl_file   : 1
    <844>   DW_AT_decl_line   : 21
    <845>   DW_AT_decl_column : 7
    <846>   DW_AT_prototyped  : 1
    <846>   DW_AT_type        : <0x81b>
    <84a>   DW_AT_sibling     : <0x880>
 <2><84e>: Abbrev Number: 8 (DW_TAG_formal_parameter)
    <84f>   DW_AT_name        : (indirect string, offset: 0x324): dest
    <853>   DW_AT_decl_file   : 1
    <853>   DW_AT_decl_line   : 21
    <854>   DW_AT_decl_column : 21
    <855>   DW_AT_type        : <0x81b>
 <2><859>: Abbrev Number: 4 (DW_TAG_formal_parameter)
    <85a>   DW_AT_name        : src
    <85e>   DW_AT_decl_file   : 1
    <85e>   DW_AT_decl_line   : 21
    <85f>   DW_AT_decl_column : 39
    <860>   DW_AT_type        : <0x81d>
 <2><864>: Abbrev Number: 4 (DW_TAG_formal_parameter)
    <865>   DW_AT_name        : n
    <867>   DW_AT_decl_file   : 1
    <867>   DW_AT_decl_line   : 21
    <868>   DW_AT_decl_column : 57
    <869>   DW_AT_type        : <0x799>
 <2><86d>: Abbrev Number: 5 (DW_TAG_variable)
    <86e>   DW_AT_name        : d
    <870>   DW_AT_decl_file   : 1
    <870>   DW_AT_decl_line   : 23
    <871>   DW_AT_decl_column : 20
    <872>   DW_AT_type        : <0x823>
 <2><876>: Abbrev Number: 5 (DW_TAG_variable)
    <877>   DW_AT_name        : s
    <879>   DW_AT_decl_file   : 1
    <879>   DW_AT_decl_line   : 24
    <87a>   DW_AT_decl_column : 26
    <87b>   DW_AT_type        : <0x839>
 <2><87f>: Abbrev Number: 0
 <1><880>: Abbrev Number: 19 (DW_TAG_subprogram)
    <881>   DW_AT_external    : 1
    <881>   DW_AT_name        : (indirect string, offset: 0x2d1): memset
    <885>   DW_AT_decl_file   : 1
    <886>   DW_AT_decl_line   : 11
    <887>   DW_AT_decl_column : 6
    <888>   DW_AT_prototyped  : 1
    <888>   DW_AT_low_pc      : 0x20000204
    <88c>   DW_AT_high_pc     : 0x10
    <890>   DW_AT_frame_base  : 1 byte block: 9c 	(DW_OP_call_frame_cfa)
    <892>   DW_AT_call_all_calls: 1
    <892>   DW_AT_sibling     : <0x8fc>
 <2><896>: Abbrev Number: 1 (DW_TAG_formal_parameter)
    <897>   DW_AT_name        : ptr
    <89b>   DW_AT_decl_file   : 1
    <89b>   DW_AT_decl_line   : 11
    <89c>   DW_AT_decl_column : 19
    <89d>   DW_AT_type        : <0x81b>
    <8a1>   DW_AT_location    : 0x301 (location list)
    <8a5>   DW_AT_GNU_locviews: 0x2fd
 <2><8a9>: Abbrev Number: 7 (DW_TAG_formal_parameter)
    <8aa>   DW_AT_name        : (indirect string, offset: 0x31e): value
    <8ae>   DW_AT_decl_file   : 1
    <8ae>   DW_AT_decl_line   : 11
    <8af>   DW_AT_decl_column : 28
    <8b0>   DW_AT_type        : <0x814>
    <8b4>   DW_AT_location    : 0x31e (location list)
    <8b8>   DW_AT_GNU_locviews: 0x31a
 <2><8bc>: Abbrev Number: 1 (DW_TAG_formal_parameter)
    <8bd>   DW_AT_name        : num
    <8c1>   DW_AT_decl_file   : 1
    <8c1>   DW_AT_decl_line   : 11
    <8c2>   DW_AT_decl_column : 48
    <8c3>   DW_AT_type        : <0x799>
    <8c7>   DW_AT_location    : 0x33b (location list)
    <8cb>   DW_AT_GNU_locviews: 0x337
 <2><8cf>: Abbrev Number: 2 (DW_TAG_variable)
    <8d0>   DW_AT_name        : p
    <8d2>   DW_AT_decl_file   : 1
    <8d2>   DW_AT_decl_line   : 13
    <8d3>   DW_AT_decl_column : 29
    <8d4>   DW_AT_type        : <0x8fc>
    <8d8>   DW_AT_location    : 0x358 (location list)
    <8dc>   DW_AT_GNU_locviews: 0x354
 <2><8e0>: Abbrev Number: 20 (DW_TAG_lexical_block)
    <8e1>   DW_AT_low_pc      : 0x20000204
    <8e5>   DW_AT_high_pc     : 0xe
 <3><8e9>: Abbrev Number: 2 (DW_TAG_variable)
    <8ea>   DW_AT_name        : i
    <8ec>   DW_AT_decl_file   : 1
    <8ec>   DW_AT_decl_line   : 14
    <8ed>   DW_AT_decl_column : 23
    <8ee>   DW_AT_type        : <0x799>
    <8f2>   DW_AT_location    : 0x379 (location list)
    <8f6>   DW_AT_GNU_locviews: 0x371
 <3><8fa>: Abbrev Number: 0
 <2><8fb>: Abbrev Number: 0
 <1><8fc>: Abbrev Number: 3 (DW_TAG_pointer_type)
    <8fd>   DW_AT_byte_size   : 4
    <8fd>   DW_AT_type        : <0x834>
 <1><901>: Abbrev Number: 21 (DW_TAG_subprogram)
    <902>   DW_AT_external    : 1
    <902>   DW_AT_name        : (indirect string, offset: 0x331): memcpy
    <906>   DW_AT_decl_file   : 1
    <907>   DW_AT_decl_line   : 1
    <908>   DW_AT_decl_column : 7
    <909>   DW_AT_prototyped  : 1
    <909>   DW_AT_type        : <0x81b>
    <90d>   DW_AT_inline      : 1	(inlined)
    <90e>   DW_AT_sibling     : <0x944>
 <2><912>: Abbrev Number: 8 (DW_TAG_formal_parameter)
    <913>   DW_AT_name        : (indirect string, offset: 0x324): dest
    <917>   DW_AT_decl_file   : 1
    <917>   DW_AT_decl_line   : 1
    <918>   DW_AT_decl_column : 20
    <919>   DW_AT_type        : <0x81b>
 <2><91d>: Abbrev Number: 4 (DW_TAG_formal_parameter)
    <91e>   DW_AT_name        : src
    <922>   DW_AT_decl_file   : 1
    <922>   DW_AT_decl_line   : 1
    <923>   DW_AT_decl_column : 38
    <924>   DW_AT_type        : <0x81d>
 <2><928>: Abbrev Number: 4 (DW_TAG_formal_parameter)
    <929>   DW_AT_name        : n
    <92b>   DW_AT_decl_file   : 1
    <92b>   DW_AT_decl_line   : 1
    <92c>   DW_AT_decl_column : 56
    <92d>   DW_AT_type        : <0x799>
 <2><931>: Abbrev Number: 5 (DW_TAG_variable)
    <932>   DW_AT_name        : d
    <934>   DW_AT_decl_file   : 1
    <934>   DW_AT_decl_line   : 3
    <935>   DW_AT_decl_column : 20
    <936>   DW_AT_type        : <0x823>
 <2><93a>: Abbrev Number: 5 (DW_TAG_variable)
    <93b>   DW_AT_name        : s
    <93d>   DW_AT_decl_file   : 1
    <93d>   DW_AT_decl_line   : 4
    <93e>   DW_AT_decl_column : 26
    <93f>   DW_AT_type        : <0x839>
 <2><943>: Abbrev Number: 0
 <1><944>: Abbrev Number: 22 (DW_TAG_subprogram)
    <945>   DW_AT_abstract_origin: <0x901>
    <949>   DW_AT_low_pc      : 0x200001f0
    <94d>   DW_AT_high_pc     : 0x14
    <951>   DW_AT_frame_base  : 1 byte block: 9c 	(DW_OP_call_frame_cfa)
    <953>   DW_AT_call_all_calls: 1
 <2><953>: Abbrev Number: 23 (DW_TAG_formal_parameter)
    <954>   DW_AT_abstract_origin: <0x912>
    <958>   DW_AT_location    : 1 byte block: 50 	(DW_OP_reg0 (r0))
 <2><95a>: Abbrev Number: 9 (DW_TAG_formal_parameter)
    <95b>   DW_AT_abstract_origin: <0x91d>
    <95f>   DW_AT_location    : 0x3bd (location list)
    <963>   DW_AT_GNU_locviews: 0x3b9
 <2><967>: Abbrev Number: 9 (DW_TAG_formal_parameter)
    <968>   DW_AT_abstract_origin: <0x928>
    <96c>   DW_AT_location    : 0x3dc (location list)
    <970>   DW_AT_GNU_locviews: 0x3d6
 <2><974>: Abbrev Number: 10 (DW_TAG_variable)
    <975>   DW_AT_abstract_origin: <0x931>
    <979>   DW_AT_location    : 0x400 (location list)
    <97d>   DW_AT_GNU_locviews: 0x3fe
 <2><981>: Abbrev Number: 10 (DW_TAG_variable)
    <982>   DW_AT_abstract_origin: <0x93a>
    <986>   DW_AT_location    : 0x40f (location list)
    <98a>   DW_AT_GNU_locviews: 0x409
 <2><98e>: Abbrev Number: 0
 <1><98f>: Abbrev Number: 0

Contents of the .debug_abbrev section (loaded from main):

  Number TAG (0)
   1      DW_TAG_typedef    [no children]
    DW_AT_name         DW_FORM_strp
    DW_AT_decl_file    DW_FORM_data1
    DW_AT_decl_line    DW_FORM_data1
    DW_AT_decl_column  DW_FORM_data1
    DW_AT_type         DW_FORM_ref4
    DW_AT value: 0     DW_FORM value: 0
   2      DW_TAG_member    [no children]
    DW_AT_name         DW_FORM_strp
    DW_AT_decl_file    DW_FORM_data1
    DW_AT_decl_line    DW_FORM_data1
    DW_AT_decl_column  DW_FORM_data1
    DW_AT_type         DW_FORM_ref4
    DW_AT_data_member_location DW_FORM_data1
    DW_AT value: 0     DW_FORM value: 0
   3      DW_TAG_base_type    [no children]
    DW_AT_byte_size    DW_FORM_data1
    DW_AT_encoding     DW_FORM_data1
    DW_AT_name         DW_FORM_strp
    DW_AT value: 0     DW_FORM value: 0
   4      DW_TAG_formal_parameter    [no children]
    DW_AT_name         DW_FORM_string
    DW_AT_decl_file    DW_FORM_implicit_const: 1
    DW_AT_decl_line    DW_FORM_data1
    DW_AT_decl_column  DW_FORM_data1
    DW_AT_type         DW_FORM_ref4
    DW_AT value: 0     DW_FORM value: 0
   5      DW_TAG_formal_parameter    [no children]
    DW_AT_name         DW_FORM_string
    DW_AT_decl_file    DW_FORM_implicit_const: 1
    DW_AT_decl_line    DW_FORM_data1
    DW_AT_decl_column  DW_FORM_data1
    DW_AT_type         DW_FORM_ref4
    DW_AT_location     DW_FORM_sec_offset
    DW_AT_GNU_locviews DW_FORM_sec_offset
    DW_AT value: 0     DW_FORM value: 0
   6      DW_TAG_subprogram    [has children]
    DW_AT_external     DW_FORM_flag_present
    DW_AT_name         DW_FORM_strp
    DW_AT_decl_file    DW_FORM_implicit_const: 1
    DW_AT_decl_line    DW_FORM_data1
    DW_AT_decl_column  DW_FORM_data1
    DW_AT_prototyped   DW_FORM_flag_present
    DW_AT_type         DW_FORM_ref4
    DW_AT_low_pc       DW_FORM_addr
    DW_AT_high_pc      DW_FORM_data4
    DW_AT_frame_base   DW_FORM_exprloc
    DW_AT_call_all_calls DW_FORM_flag_present
    DW_AT_sibling      DW_FORM_ref4
    DW_AT value: 0     DW_FORM value: 0
   7      DW_TAG_structure_type    [has children]
    DW_AT_name         DW_FORM_strp
    DW_AT_byte_size    DW_FORM_data1
    DW_AT_decl_file    DW_FORM_data1
    DW_AT_decl_line    DW_FORM_data1
    DW_AT_decl_column  DW_FORM_implicit_const: 8
    DW_AT_sibling      DW_FORM_ref4
    DW_AT value: 0     DW_FORM value: 0
   8      DW_TAG_formal_parameter    [no children]
    DW_AT_name         DW_FORM_string
    DW_AT_decl_file    DW_FORM_implicit_const: 1
    DW_AT_decl_line    DW_FORM_data1
    DW_AT_decl_column  DW_FORM_data1
    DW_AT_type         DW_FORM_ref4
    DW_AT_location     DW_FORM_exprloc
    DW_AT value: 0     DW_FORM value: 0
   9      DW_TAG_subprogram    [has children]
    DW_AT_external     DW_FORM_flag_present
    DW_AT_name         DW_FORM_strp
    DW_AT_decl_file    DW_FORM_implicit_const: 1
    DW_AT_decl_line    DW_FORM_data1
    DW_AT_decl_column  DW_FORM_data1
    DW_AT_prototyped   DW_FORM_flag_present
    DW_AT_type         DW_FORM_ref4
    DW_AT_sibling      DW_FORM_ref4
    DW_AT value: 0     DW_FORM value: 0
   10      DW_TAG_formal_parameter    [no children]
    DW_AT_name         DW_FORM_strp
    DW_AT_decl_file    DW_FORM_implicit_const: 1
    DW_AT_decl_line    DW_FORM_data1
    DW_AT_decl_column  DW_FORM_data1
    DW_AT_type         DW_FORM_ref4
    DW_AT value: 0     DW_FORM value: 0
   11      DW_TAG_formal_parameter    [no children]
    DW_AT_name         DW_FORM_strp
    DW_AT_decl_file    DW_FORM_implicit_const: 1
    DW_AT_decl_line    DW_FORM_implicit_const: 10
    DW_AT_decl_column  DW_FORM_data1
    DW_AT_type         DW_FORM_ref4
    DW_AT_location     DW_FORM_exprloc
    DW_AT value: 0     DW_FORM value: 0
   12      DW_TAG_pointer_type    [no children]
    DW_AT_byte_size    DW_FORM_implicit_const: 4
    DW_AT_type         DW_FORM_ref4
    DW_AT value: 0     DW_FORM value: 0
   13      DW_TAG_subprogram    [has children]
    DW_AT_external     DW_FORM_flag_present
    DW_AT_name         DW_FORM_strp
    DW_AT_decl_file    DW_FORM_implicit_const: 1
    DW_AT_decl_line    DW_FORM_data1
    DW_AT_decl_column  DW_FORM_implicit_const: 5
    DW_AT_prototyped   DW_FORM_flag_present
    DW_AT_type         DW_FORM_ref4
    DW_AT_inline       DW_FORM_implicit_const: 1
    DW_AT_sibling      DW_FORM_ref4
    DW_AT value: 0     DW_FORM value: 0
   14      DW_TAG_formal_parameter    [no children]
    DW_AT_abstract_origin DW_FORM_ref4
    DW_AT_location     DW_FORM_sec_offset
    DW_AT_GNU_locviews DW_FORM_sec_offset
    DW_AT value: 0     DW_FORM value: 0
   15      DW_TAG_formal_parameter    [no children]
    DW_AT_abstract_origin DW_FORM_ref4
    DW_AT_location     DW_FORM_exprloc
    DW_AT value: 0     DW_FORM value: 0
   16      DW_TAG_compile_unit    [has children]
    DW_AT_producer     DW_FORM_strp
    DW_AT_language     DW_FORM_data1
    DW_AT_name         DW_FORM_strp
    DW_AT_comp_dir     DW_FORM_strp
    DW_AT_low_pc       DW_FORM_addr
    DW_AT_high_pc      DW_FORM_data4
    DW_AT_stmt_list    DW_FORM_sec_offset
    DW_AT value: 0     DW_FORM value: 0
   17      DW_TAG_base_type    [no children]
    DW_AT_byte_size    DW_FORM_data1
    DW_AT_encoding     DW_FORM_data1
    DW_AT_name         DW_FORM_string
    DW_AT value: 0     DW_FORM value: 0
   18      DW_TAG_pointer_type    [no children]
    DW_AT_byte_size    DW_FORM_data1
    DW_AT value: 0     DW_FORM value: 0
   19      DW_TAG_array_type    [has children]
    DW_AT_type         DW_FORM_ref4
    DW_AT_sibling      DW_FORM_ref4
    DW_AT value: 0     DW_FORM value: 0
   20      DW_TAG_subrange_type    [no children]
    DW_AT_type         DW_FORM_ref4
    DW_AT_upper_bound  DW_FORM_data1
    DW_AT value: 0     DW_FORM value: 0
   21      DW_TAG_subprogram    [no children]
    DW_AT_external     DW_FORM_flag_present
    DW_AT_name         DW_FORM_strp
    DW_AT_decl_file    DW_FORM_data1
    DW_AT_decl_line    DW_FORM_data1
    DW_AT_decl_column  DW_FORM_data1
    DW_AT_prototyped   DW_FORM_flag_present
    DW_AT_type         DW_FORM_ref4
    DW_AT_low_pc       DW_FORM_addr
    DW_AT_high_pc      DW_FORM_data4
    DW_AT_frame_base   DW_FORM_exprloc
    DW_AT_call_all_calls DW_FORM_flag_present
    DW_AT value: 0     DW_FORM value: 0
   22      DW_TAG_const_type    [no children]
    DW_AT value: 0     DW_FORM value: 0
   23      DW_TAG_subprogram    [has children]
    DW_AT_external     DW_FORM_flag_present
    DW_AT_name         DW_FORM_strp
    DW_AT_decl_file    DW_FORM_data1
    DW_AT_decl_line    DW_FORM_data1
    DW_AT_decl_column  DW_FORM_data1
    DW_AT_prototyped   DW_FORM_flag_present
    DW_AT_noreturn     DW_FORM_flag_present
    DW_AT_low_pc       DW_FORM_addr
    DW_AT_high_pc      DW_FORM_data4
    DW_AT_frame_base   DW_FORM_exprloc
    DW_AT_call_all_calls DW_FORM_flag_present
    DW_AT_sibling      DW_FORM_ref4
    DW_AT value: 0     DW_FORM value: 0
   24      DW_TAG_subprogram    [has children]
    DW_AT_abstract_origin DW_FORM_ref4
    DW_AT_low_pc       DW_FORM_addr
    DW_AT_high_pc      DW_FORM_data4
    DW_AT_frame_base   DW_FORM_exprloc
    DW_AT_call_all_calls DW_FORM_flag_present
    DW_AT_sibling      DW_FORM_ref4
    DW_AT value: 0     DW_FORM value: 0
   25      DW_TAG_subprogram    [has children]
    DW_AT_abstract_origin DW_FORM_ref4
    DW_AT_low_pc       DW_FORM_addr
    DW_AT_high_pc      DW_FORM_data4
    DW_AT_frame_base   DW_FORM_exprloc
    DW_AT_call_all_calls DW_FORM_flag_present
    DW_AT value: 0     DW_FORM value: 0
  Number TAG (0x19a)
   1      DW_TAG_compile_unit    [no children]
    DW_AT_stmt_list    DW_FORM_data4
    DW_AT_low_pc       DW_FORM_addr
    DW_AT_high_pc      DW_FORM_addr
    DW_AT_name         DW_FORM_strp
    DW_AT_comp_dir     DW_FORM_strp
    DW_AT_producer     DW_FORM_strp
    DW_AT_language     DW_FORM_data2
    DW_AT value: 0     DW_FORM value: 0
  Number TAG (0x1ae)
   1      DW_TAG_formal_parameter    [no children]
    DW_AT_abstract_origin DW_FORM_ref4
    DW_AT_location     DW_FORM_sec_offset
    DW_AT_GNU_locviews DW_FORM_sec_offset
    DW_AT value: 0     DW_FORM value: 0
   2      DW_TAG_inlined_subroutine    [has children]
    DW_AT_abstract_origin DW_FORM_ref4
    DW_AT_entry_pc     DW_FORM_addr
    DW_AT_GNU_entry_view DW_FORM_data1
    DW_AT_low_pc       DW_FORM_addr
    DW_AT_high_pc      DW_FORM_data4
    DW_AT_call_file    DW_FORM_implicit_const: 1
    DW_AT_call_line    DW_FORM_implicit_const: 15
    DW_AT_call_column  DW_FORM_implicit_const: 16
    DW_AT value: 0     DW_FORM value: 0
   3      DW_TAG_base_type    [no children]
    DW_AT_byte_size    DW_FORM_data1
    DW_AT_encoding     DW_FORM_implicit_const: 7
    DW_AT_name         DW_FORM_strp
    DW_AT value: 0     DW_FORM value: 0
   4      DW_TAG_variable    [no children]
    DW_AT_name         DW_FORM_strp
    DW_AT_decl_file    DW_FORM_implicit_const: 1
    DW_AT_decl_line    DW_FORM_data1
    DW_AT_decl_column  DW_FORM_implicit_const: 5
    DW_AT_type         DW_FORM_ref4
    DW_AT_external     DW_FORM_flag_present
    DW_AT_location     DW_FORM_exprloc
    DW_AT value: 0     DW_FORM value: 0
   5      DW_TAG_call_site    [has children]
    DW_AT_call_return_pc DW_FORM_addr
    DW_AT_call_origin  DW_FORM_ref4
    DW_AT value: 0     DW_FORM value: 0
   6      DW_TAG_call_site_parameter    [no children]
    DW_AT_location     DW_FORM_exprloc
    DW_AT_call_value   DW_FORM_exprloc
    DW_AT value: 0     DW_FORM value: 0
   7      DW_TAG_compile_unit    [has children]
    DW_AT_producer     DW_FORM_strp
    DW_AT_language     DW_FORM_data1
    DW_AT_name         DW_FORM_strp
    DW_AT_comp_dir     DW_FORM_strp
    DW_AT_ranges       DW_FORM_sec_offset
    DW_AT_low_pc       DW_FORM_addr
    DW_AT_stmt_list    DW_FORM_sec_offset
    DW_AT value: 0     DW_FORM value: 0
   8      DW_TAG_base_type    [no children]
    DW_AT_byte_size    DW_FORM_data1
    DW_AT_encoding     DW_FORM_data1
    DW_AT_name         DW_FORM_string
    DW_AT value: 0     DW_FORM value: 0
   9      DW_TAG_subprogram    [has children]
    DW_AT_external     DW_FORM_flag_present
    DW_AT_name         DW_FORM_strp
    DW_AT_decl_file    DW_FORM_data1
    DW_AT_decl_line    DW_FORM_data1
    DW_AT_decl_column  DW_FORM_data1
    DW_AT_prototyped   DW_FORM_flag_present
    DW_AT_type         DW_FORM_ref4
    DW_AT_low_pc       DW_FORM_addr
    DW_AT_high_pc      DW_FORM_data4
    DW_AT_frame_base   DW_FORM_exprloc
    DW_AT_call_all_calls DW_FORM_flag_present
    DW_AT_sibling      DW_FORM_ref4
    DW_AT value: 0     DW_FORM value: 0
   10      DW_TAG_subprogram    [has children]
    DW_AT_external     DW_FORM_flag_present
    DW_AT_name         DW_FORM_strp
    DW_AT_decl_file    DW_FORM_data1
    DW_AT_decl_line    DW_FORM_data1
    DW_AT_decl_column  DW_FORM_data1
    DW_AT_prototyped   DW_FORM_flag_present
    DW_AT_type         DW_FORM_ref4
    DW_AT_inline       DW_FORM_data1
    DW_AT_sibling      DW_FORM_ref4
    DW_AT value: 0     DW_FORM value: 0
   11      DW_TAG_formal_parameter    [no children]
    DW_AT_name         DW_FORM_string
    DW_AT_decl_file    DW_FORM_data1
    DW_AT_decl_line    DW_FORM_data1
    DW_AT_decl_column  DW_FORM_data1
    DW_AT_type         DW_FORM_ref4
    DW_AT value: 0     DW_FORM value: 0
   12      DW_TAG_subprogram    [has children]
    DW_AT_external     DW_FORM_flag_present
    DW_AT_name         DW_FORM_strp
    DW_AT_decl_file    DW_FORM_data1
    DW_AT_decl_line    DW_FORM_data1
    DW_AT_decl_column  DW_FORM_data1
    DW_AT_type         DW_FORM_ref4
    DW_AT_low_pc       DW_FORM_addr
    DW_AT_high_pc      DW_FORM_data4
    DW_AT_frame_base   DW_FORM_exprloc
    DW_AT_call_all_calls DW_FORM_flag_present
    DW_AT_sibling      DW_FORM_ref4
    DW_AT value: 0     DW_FORM value: 0
   13      DW_TAG_variable    [no children]
    DW_AT_name         DW_FORM_string
    DW_AT_decl_file    DW_FORM_data1
    DW_AT_decl_line    DW_FORM_data1
    DW_AT_decl_column  DW_FORM_data1
    DW_AT_type         DW_FORM_ref4
    DW_AT value: 0     DW_FORM value: 0
   14      DW_TAG_subprogram    [has children]
    DW_AT_abstract_origin DW_FORM_ref4
    DW_AT_low_pc       DW_FORM_addr
    DW_AT_high_pc      DW_FORM_data4
    DW_AT_frame_base   DW_FORM_exprloc
    DW_AT_call_all_calls DW_FORM_flag_present
    DW_AT value: 0     DW_FORM value: 0
   15      DW_TAG_inlined_subroutine    [has children]
    DW_AT_abstract_origin DW_FORM_ref4
    DW_AT_entry_pc     DW_FORM_addr
    DW_AT_GNU_entry_view DW_FORM_data1
    DW_AT_ranges       DW_FORM_sec_offset
    DW_AT_call_file    DW_FORM_data1
    DW_AT_call_line    DW_FORM_data1
    DW_AT_call_column  DW_FORM_data1
    DW_AT value: 0     DW_FORM value: 0
  Number TAG (0x2b5)
   1      DW_TAG_variable    [no children]
    DW_AT_name         DW_FORM_strp
    DW_AT_decl_file    DW_FORM_implicit_const: 1
    DW_AT_decl_line    DW_FORM_data1
    DW_AT_decl_column  DW_FORM_implicit_const: 21
    DW_AT_type         DW_FORM_ref4
    DW_AT_external     DW_FORM_flag_present
    DW_AT_declaration  DW_FORM_flag_present
    DW_AT value: 0     DW_FORM value: 0
   2      DW_TAG_compile_unit    [has children]
    DW_AT_producer     DW_FORM_strp
    DW_AT_language     DW_FORM_data1
    DW_AT_name         DW_FORM_strp
    DW_AT_comp_dir     DW_FORM_strp
    DW_AT_low_pc       DW_FORM_addr
    DW_AT_high_pc      DW_FORM_data4
    DW_AT_stmt_list    DW_FORM_sec_offset
    DW_AT value: 0     DW_FORM value: 0
   3      DW_TAG_base_type    [no children]
    DW_AT_byte_size    DW_FORM_data1
    DW_AT_encoding     DW_FORM_data1
    DW_AT_name         DW_FORM_strp
    DW_AT value: 0     DW_FORM value: 0
   4      DW_TAG_subprogram    [has children]
    DW_AT_external     DW_FORM_flag_present
    DW_AT_name         DW_FORM_strp
    DW_AT_decl_file    DW_FORM_data1
    DW_AT_decl_line    DW_FORM_data1
    DW_AT_decl_column  DW_FORM_data1
    DW_AT_prototyped   DW_FORM_flag_present
    DW_AT_low_pc       DW_FORM_addr
    DW_AT_high_pc      DW_FORM_data4
    DW_AT_frame_base   DW_FORM_exprloc
    DW_AT_call_all_calls DW_FORM_flag_present
    DW_AT_sibling      DW_FORM_ref4
    DW_AT value: 0     DW_FORM value: 0
   5      DW_TAG_variable    [no children]
    DW_AT_name         DW_FORM_string
    DW_AT_decl_file    DW_FORM_data1
    DW_AT_decl_line    DW_FORM_data1
    DW_AT_decl_column  DW_FORM_data1
    DW_AT_type         DW_FORM_ref4
    DW_AT value: 0     DW_FORM value: 0
   6      DW_TAG_variable    [no children]
    DW_AT_name         DW_FORM_strp
    DW_AT_decl_file    DW_FORM_data1
    DW_AT_decl_line    DW_FORM_data1
    DW_AT_decl_column  DW_FORM_data1
    DW_AT_type         DW_FORM_ref4
    DW_AT value: 0     DW_FORM value: 0
   7      DW_TAG_call_site    [has children]
    DW_AT_call_return_pc DW_FORM_addr
    DW_AT_call_tail_call DW_FORM_flag_present
    DW_AT_call_origin  DW_FORM_ref4
    DW_AT value: 0     DW_FORM value: 0
   8      DW_TAG_call_site_parameter    [no children]
    DW_AT_location     DW_FORM_exprloc
    DW_AT_call_value   DW_FORM_exprloc
    DW_AT value: 0     DW_FORM value: 0
   9      DW_TAG_pointer_type    [no children]
    DW_AT_byte_size    DW_FORM_data1
    DW_AT_type         DW_FORM_ref4
    DW_AT value: 0     DW_FORM value: 0
   10      DW_TAG_subprogram    [no children]
    DW_AT_external     DW_FORM_flag_present
    DW_AT_declaration  DW_FORM_flag_present
    DW_AT_linkage_name DW_FORM_strp
    DW_AT_name         DW_FORM_strp
    DW_AT_decl_file    DW_FORM_data1
    DW_AT_decl_line    DW_FORM_data1
    DW_AT value: 0     DW_FORM value: 0
  Number TAG (0x351)
   1      DW_TAG_formal_parameter    [no children]
    DW_AT_name         DW_FORM_string
    DW_AT_decl_file    DW_FORM_implicit_const: 1
    DW_AT_decl_line    DW_FORM_data1
    DW_AT_decl_column  DW_FORM_data1
    DW_AT_type         DW_FORM_ref4
    DW_AT_location     DW_FORM_sec_offset
    DW_AT_GNU_locviews DW_FORM_sec_offset
    DW_AT value: 0     DW_FORM value: 0
   2      DW_TAG_variable    [no children]
    DW_AT_name         DW_FORM_string
    DW_AT_decl_file    DW_FORM_implicit_const: 1
    DW_AT_decl_line    DW_FORM_data1
    DW_AT_decl_column  DW_FORM_data1
    DW_AT_type         DW_FORM_ref4
    DW_AT_location     DW_FORM_sec_offset
    DW_AT_GNU_locviews DW_FORM_sec_offset
    DW_AT value: 0     DW_FORM value: 0
   3      DW_TAG_pointer_type    [no children]
    DW_AT_byte_size    DW_FORM_implicit_const: 4
    DW_AT_type         DW_FORM_ref4
    DW_AT value: 0     DW_FORM value: 0
   4      DW_TAG_formal_parameter    [no children]
    DW_AT_name         DW_FORM_string
    DW_AT_decl_file    DW_FORM_implicit_const: 1
    DW_AT_decl_line    DW_FORM_data1
    DW_AT_decl_column  DW_FORM_data1
    DW_AT_type         DW_FORM_ref4
    DW_AT value: 0     DW_FORM value: 0
   5      DW_TAG_variable    [no children]
    DW_AT_name         DW_FORM_string
    DW_AT_decl_file    DW_FORM_implicit_const: 1
    DW_AT_decl_line    DW_FORM_data1
    DW_AT_decl_column  DW_FORM_data1
    DW_AT_type         DW_FORM_ref4
    DW_AT value: 0     DW_FORM value: 0
   6      DW_TAG_base_type    [no children]
    DW_AT_byte_size    DW_FORM_data1
    DW_AT_encoding     DW_FORM_data1
    DW_AT_name         DW_FORM_strp
    DW_AT value: 0     DW_FORM value: 0
   7      DW_TAG_formal_parameter    [no children]
    DW_AT_name         DW_FORM_strp
    DW_AT_decl_file    DW_FORM_implicit_const: 1
    DW_AT_decl_line    DW_FORM_data1
    DW_AT_decl_column  DW_FORM_data1
    DW_AT_type         DW_FORM_ref4
    DW_AT_location     DW_FORM_sec_offset
    DW_AT_GNU_locviews DW_FORM_sec_offset
    DW_AT value: 0     DW_FORM value: 0
   8      DW_TAG_formal_parameter    [no children]
    DW_AT_name         DW_FORM_strp
    DW_AT_decl_file    DW_FORM_implicit_const: 1
    DW_AT_decl_line    DW_FORM_data1
    DW_AT_decl_column  DW_FORM_data1
    DW_AT_type         DW_FORM_ref4
    DW_AT value: 0     DW_FORM value: 0
   9      DW_TAG_formal_parameter    [no children]
    DW_AT_abstract_origin DW_FORM_ref4
    DW_AT_location     DW_FORM_sec_offset
    DW_AT_GNU_locviews DW_FORM_sec_offset
    DW_AT value: 0     DW_FORM value: 0
   10      DW_TAG_variable    [no children]
    DW_AT_abstract_origin DW_FORM_ref4
    DW_AT_location     DW_FORM_sec_offset
    DW_AT_GNU_locviews DW_FORM_sec_offset
    DW_AT value: 0     DW_FORM value: 0
   11      DW_TAG_compile_unit    [has children]
    DW_AT_producer     DW_FORM_strp
    DW_AT_language     DW_FORM_data1
    DW_AT_name         DW_FORM_strp
    DW_AT_comp_dir     DW_FORM_strp
    DW_AT_ranges       DW_FORM_sec_offset
    DW_AT_low_pc       DW_FORM_addr
    DW_AT_stmt_list    DW_FORM_sec_offset
    DW_AT value: 0     DW_FORM value: 0
   12      DW_TAG_subprogram    [has children]
    DW_AT_external     DW_FORM_flag_present
    DW_AT_name         DW_FORM_strp
    DW_AT_decl_file    DW_FORM_data1
    DW_AT_decl_line    DW_FORM_data1
    DW_AT_decl_column  DW_FORM_data1
    DW_AT_prototyped   DW_FORM_flag_present
    DW_AT_type         DW_FORM_ref4
    DW_AT_low_pc       DW_FORM_addr
    DW_AT_high_pc      DW_FORM_data4
    DW_AT_frame_base   DW_FORM_exprloc
    DW_AT_call_all_calls DW_FORM_flag_present
    DW_AT_sibling      DW_FORM_ref4
    DW_AT value: 0     DW_FORM value: 0
   13      DW_TAG_base_type    [no children]
    DW_AT_byte_size    DW_FORM_data1
    DW_AT_encoding     DW_FORM_data1
    DW_AT_name         DW_FORM_string
    DW_AT value: 0     DW_FORM value: 0
   14      DW_TAG_pointer_type    [no children]
    DW_AT_byte_size    DW_FORM_data1
    DW_AT value: 0     DW_FORM value: 0
   15      DW_TAG_const_type    [no children]
    DW_AT value: 0     DW_FORM value: 0
   16      DW_TAG_const_type    [no children]
    DW_AT_type         DW_FORM_ref4
    DW_AT value: 0     DW_FORM value: 0
   17      DW_TAG_volatile_type    [no children]
    DW_AT_type         DW_FORM_ref4
    DW_AT value: 0     DW_FORM value: 0
   18      DW_TAG_subprogram    [has children]
    DW_AT_external     DW_FORM_flag_present
    DW_AT_name         DW_FORM_strp
    DW_AT_decl_file    DW_FORM_data1
    DW_AT_decl_line    DW_FORM_data1
    DW_AT_decl_column  DW_FORM_data1
    DW_AT_prototyped   DW_FORM_flag_present
    DW_AT_type         DW_FORM_ref4
    DW_AT_sibling      DW_FORM_ref4
    DW_AT value: 0     DW_FORM value: 0
   19      DW_TAG_subprogram    [has children]
    DW_AT_external     DW_FORM_flag_present
    DW_AT_name         DW_FORM_strp
    DW_AT_decl_file    DW_FORM_data1
    DW_AT_decl_line    DW_FORM_data1
    DW_AT_decl_column  DW_FORM_data1
    DW_AT_prototyped   DW_FORM_flag_present
    DW_AT_low_pc       DW_FORM_addr
    DW_AT_high_pc      DW_FORM_data4
    DW_AT_frame_base   DW_FORM_exprloc
    DW_AT_call_all_calls DW_FORM_flag_present
    DW_AT_sibling      DW_FORM_ref4
    DW_AT value: 0     DW_FORM value: 0
   20      DW_TAG_lexical_block    [has children]
    DW_AT_low_pc       DW_FORM_addr
    DW_AT_high_pc      DW_FORM_data4
    DW_AT value: 0     DW_FORM value: 0
   21      DW_TAG_subprogram    [has children]
    DW_AT_external     DW_FORM_flag_present
    DW_AT_name         DW_FORM_strp
    DW_AT_decl_file    DW_FORM_data1
    DW_AT_decl_line    DW_FORM_data1
    DW_AT_decl_column  DW_FORM_data1
    DW_AT_prototyped   DW_FORM_flag_present
    DW_AT_type         DW_FORM_ref4
    DW_AT_inline       DW_FORM_data1
    DW_AT_sibling      DW_FORM_ref4
    DW_AT value: 0     DW_FORM value: 0
   22      DW_TAG_subprogram    [has children]
    DW_AT_abstract_origin DW_FORM_ref4
    DW_AT_low_pc       DW_FORM_addr
    DW_AT_high_pc      DW_FORM_data4
    DW_AT_frame_base   DW_FORM_exprloc
    DW_AT_call_all_calls DW_FORM_flag_present
    DW_AT value: 0     DW_FORM value: 0
   23      DW_TAG_formal_parameter    [no children]
    DW_AT_abstract_origin DW_FORM_ref4
    DW_AT_location     DW_FORM_exprloc
    DW_AT value: 0     DW_FORM value: 0

Contents of the .debug_loclists section (loaded from main):

Table at Offset 0
  Length:          0xa0
  DWARF version:   5
  Address size:    4
  Segment size:    0
  Offset entries:  0

    Offset   Begin            End              Expression

    0000000c v0000000 v0000002 location view pair
    0000000e v0000002 v0000000 location view pair

    00000010 v0000000 v0000002 views at 0000000c for:
             20000020 20000020 (DW_OP_reg0 (r0))
    00000015 v0000002 v0000000 views at 0000000e for:
             20000020 20000022 (DW_OP_entry_value: (DW_OP_regval_type: 0 (r0) <0x26>); DW_OP_convert <0x2d>; DW_OP_convert <0>; DW_OP_stack_value)
    00000023 <End of list>

    00000024 v0000000 v0000002 location view pair
    00000026 v0000002 v0000000 location view pair

    00000028 v0000000 v0000002 views at 00000024 for:
             20000018 20000018 (DW_OP_reg0 (r0))
    0000002d v0000002 v0000000 views at 00000026 for:
             20000018 2000001a (DW_OP_entry_value: (DW_OP_regval_type: 0 (r0) <0x26>); DW_OP_convert <0x2d>; DW_OP_convert <0>; DW_OP_stack_value)
    0000003b <End of list>

    0000003c v0000000 v0000002 location view pair
    0000003e v0000002 v0000000 location view pair

    00000040 v0000000 v0000002 views at 0000003c for:
             20000010 20000010 (DW_OP_reg0 (r0))
    00000045 v0000002 v0000000 views at 0000003e for:
             20000010 20000012 (DW_OP_entry_value: (DW_OP_regval_type: 0 (r0) <0x26>); DW_OP_convert <0x2d>; DW_OP_convert <0>; DW_OP_stack_value)
    00000053 <End of list>

    00000054 v0000000 v0000002 location view pair
    00000056 v0000002 v0000000 location view pair

    00000058 v0000000 v0000002 views at 00000054 for:
             20000004 20000004 (DW_OP_reg0 (r0))
    0000005d v0000002 v0000000 views at 00000056 for:
             20000004 20000006 (DW_OP_entry_value: (DW_OP_regval_type: 0 (r0) <0x26>); DW_OP_convert <0x2d>; DW_OP_convert <0>; DW_OP_stack_value)
    0000006b <End of list>

    0000006c v0000001 v0000000 location view pair

    0000006e v0000001 v0000000 views at 0000006c for:
             20000000 20000002 (DW_OP_reg0 (r0))
    00000073 <End of list>

    00000074 v0000000 v0000002 location view pair
    00000076 v0000002 v0000000 location view pair

    00000078 v0000000 v0000002 views at 00000074 for:
             20000008 20000008 (DW_OP_reg0 (r0))
    0000007d v0000002 v0000000 views at 00000076 for:
             20000008 2000000a (DW_OP_entry_value: (DW_OP_regval_type: 0 (r0) <0x26>); DW_OP_convert <0x2d>; DW_OP_convert <0>; DW_OP_stack_value)
    0000008b <End of list>

    0000008c v0000000 v0000002 location view pair
    0000008e v0000002 v0000000 location view pair

    00000090 v0000000 v0000002 views at 0000008c for:
             2000000c 2000000c (DW_OP_reg0 (r0))
    00000095 v0000002 v0000000 views at 0000008e for:
             2000000c 2000000e (DW_OP_entry_value: (DW_OP_regval_type: 0 (r0) <0x26>); DW_OP_convert <0x2d>; DW_OP_convert <0>; DW_OP_stack_value)
    000000a3 <End of list>
Table at Offset 0xa4
  Length:          0x106
  DWARF version:   5
  Address size:    4
  Segment size:    0
  Offset entries:  0

    Offset   Begin            End              Expression

    000000b0 v0000000 v0000000 location view pair
    000000b2 v0000000 v0000000 location view pair
    000000b4 v0000000 v0000000 location view pair

    000000b6 20000040 (base address)
    000000bb v0000000 v0000000 views at 000000b0 for:
             20000040 2000005c (DW_OP_reg0 (r0))
    000000c0 v0000000 v0000000 views at 000000b2 for:
             2000005c 200001c8 (DW_OP_entry_value: (DW_OP_regval_type: 0 (r0) <0x510>); DW_OP_convert <0x516>; DW_OP_convert <0>; DW_OP_stack_value)
    000000cf v0000000 v0000000 views at 000000b4 for:
             200001c8 200001ca (DW_OP_reg0 (r0))
    000000d6 <End of list>

    000000d7 v0000001 v0000000 location view pair

    000000d9 v0000001 v0000000 views at 000000d7 for:
             2000005c 20000072 (DW_OP_reg4 (r4))
    000000e1 <End of list>

    000000e2 v0000001 v0000000 location view pair

    000000e4 v0000001 v0000000 views at 000000e2 for:
             20000072 20000088 (DW_OP_reg9 (r9))
    000000ec <End of list>

    000000ed v0000001 v0000000 location view pair

    000000ef v0000001 v0000000 views at 000000ed for:
             20000088 2000009a (DW_OP_reg4 (r4))
    000000f7 <End of list>

    000000f8 v0000001 v0000000 location view pair
    000000fa v0000000 v0000000 location view pair

    000000fc 2000009a (base address)
    00000101 v0000001 v0000000 views at 000000f8 for:
             2000009a 20000170 (DW_OP_reg11 (r11))
    00000107 v0000000 v0000000 views at 000000fa for:
             200001c2 200001c8 (DW_OP_reg11 (r11))
    0000010e <End of list>

    0000010f v0000001 v0000000 location view pair
    00000111 v0000000 v0000000 location view pair
    00000113 v0000000 v0000000 location view pair
    00000115 v0000000 v0000000 location view pair

    00000117 200000b8 (base address)
    0000011c v0000001 v0000000 views at 0000010f for:
             200000b8 200000cc (DW_OP_reg10 (r10))
    00000121 v0000000 v0000000 views at 00000111 for:
             200000cc 200000ce (DW_OP_reg3 (r3))
    00000126 v0000000 v0000000 views at 00000113 for:
             200000ce 20000158 (DW_OP_breg10 (r10): 1; DW_OP_stack_value)
    0000012e v0000000 v0000000 views at 00000115 for:
             200001c2 200001c8 (DW_OP_breg10 (r10): 1; DW_OP_stack_value)
    00000137 <End of list>

    00000138 v0000001 v0000000 location view pair
    0000013a v0000000 v0000000 location view pair
    0000013c v0000000 v0000000 location view pair

    0000013e 200000ce (base address)
    00000143 v0000001 v0000000 views at 00000138 for:
             200000ce 200000ea (DW_OP_reg8 (r8))
    00000148 v0000000 v0000000 views at 0000013a for:
             200000ea 20000144 (DW_OP_fbreg: -88)
    0000014f v0000000 v0000000 views at 0000013c for:
             200001c2 200001c8 (DW_OP_fbreg: -88)
    00000158 <End of list>

    00000159 v0000001 v0000000 location view pair
    0000015b v0000000 v0000000 location view pair
    0000015d v0000000 v0000000 location view pair
    0000015f v0000000 v0000000 location view pair
    00000161 v0000000 v0000000 location view pair
    00000163 v0000000 v0000000 location view pair

    00000165 200000ea (base address)
    0000016a v0000001 v0000000 views at 00000159 for:
             200000ea 200000f8 (DW_OP_reg5 (r5))
    0000016f v0000000 v0000000 views at 0000015b for:
             200000f8 20000106 (DW_OP_reg3 (r3))
    00000174 v0000000 v0000000 views at 0000015d for:
             20000106 20000120 (DW_OP_reg4 (r4))
    00000179 v0000000 v0000000 views at 0000015f for:
             20000120 2000012e (DW_OP_reg3 (r3))
    0000017e v0000000 v0000000 views at 00000161 for:
             200001c2 200001c6 (DW_OP_reg4 (r4))
    00000185 v0000000 v0000000 views at 00000163 for:
             200001c6 200001c8 (DW_OP_reg3 (r3))
    0000018c <End of list>

    0000018d v0000000 v0000000 location view pair
    0000018f v0000000 v0000000 location view pair
    00000191 v0000000 v0000000 location view pair

    00000193 200000fe (base address)
    00000198 v0000000 v0000000 views at 0000018d for:
             200000fe 20000106 (DW_OP_reg4 (r4))
    0000019d v0000000 v0000000 views at 0000018f for:
             20000106 20000122 (DW_OP_fbreg: -84)
    000001a4 v0000000 v0000000 views at 00000191 for:
             200001c2 200001c8 (DW_OP_fbreg: -84)
    000001ad <End of list>
Table at Offset 0x1ae
  Length:          0x274
  DWARF version:   5
  Address size:    4
  Segment size:    0
  Offset entries:  0

    Offset   Begin            End              Expression

    000001ba v0000000 v0000000 location view pair
    000001bc v0000000 v0000000 location view pair

    000001be 20000228 (base address)
    000001c3 v0000000 v0000000 views at 000001ba for:
             20000228 20000236 (DW_OP_reg0 (r0))
    000001c8 v0000000 v0000000 views at 000001bc for:
             20000236 2000024e (DW_OP_entry_value: (DW_OP_regval_type: 0 (r0) <0x792>); DW_OP_convert <0x799>; DW_OP_convert <0>; DW_OP_stack_value)
    000001d6 <End of list>

    000001d7 v0000000 v0000000 location view pair
    000001d9 v0000000 v0000000 location view pair
    000001db v0000000 v0000000 location view pair

    000001dd 20000228 (base address)
    000001e2 v0000000 v0000000 views at 000001d7 for:
             20000228 20000232 (DW_OP_reg1 (r1))
    000001e7 v0000000 v0000000 views at 000001d9 for:
             20000232 20000236 (DW_OP_breg1 (r1): 1; DW_OP_stack_value)
    000001ee v0000000 v0000000 views at 000001db for:
             20000236 2000024e (DW_OP_entry_value: (DW_OP_regval_type: 1 (r1) <0x792>); DW_OP_convert <0x799>; DW_OP_convert <0>; DW_OP_stack_value)
    000001fc <End of list>

    000001fd v0000000 v0000000 location view pair
    000001ff v0000000 v0000000 location view pair
    00000201 v0000000 v0000000 location view pair
    00000203 v0000000 v0000000 location view pair
    00000205 v0000000 v0000002 location view pair
    00000207 v0000002 v0000000 location view pair

    00000209 20000228 (base address)
    0000020e v0000000 v0000000 views at 000001fd for:
             20000228 2000022c (DW_OP_reg2 (r2))
    00000213 v0000000 v0000000 views at 000001ff for:
             2000022c 20000234 (DW_OP_reg12 (r12))
    00000218 v0000000 v0000000 views at 00000201 for:
             20000234 20000236 (DW_OP_breg2 (r2): -1; DW_OP_stack_value)
    0000021f v0000000 v0000000 views at 00000203 for:
             20000236 2000023e (DW_OP_entry_value: (DW_OP_regval_type: 0 (r0) <0x792>); DW_OP_convert <0x799>; DW_OP_convert <0>; DW_OP_breg3 (r3): 0; DW_OP_minus; DW_OP_entry_value: (DW_OP_regval_type: 2 (r2) <0x792>); DW_OP_convert <0x799>; DW_OP_convert <0>; DW_OP_plus; DW_OP_lit2; DW_OP_minus; DW_OP_stack_value)
    0000023c v0000000 v0000002 views at 00000205 for:
             2000023e 2000023e (DW_OP_breg3 (r3): 0; DW_OP_not; DW_OP_entry_value: (DW_OP_regval_type: 0 (r0) <0x792>); DW_OP_convert <0x799>; DW_OP_convert <0>; DW_OP_plus; DW_OP_entry_value: (DW_OP_regval_type: 2 (r2) <0x792>); DW_OP_convert <0x799>; DW_OP_convert <0>; DW_OP_plus; DW_OP_stack_value)
    00000258 v0000002 v0000000 views at 00000207 for:
             2000023e 2000024a (DW_OP_entry_value: (DW_OP_regval_type: 0 (r0) <0x792>); DW_OP_convert <0x799>; DW_OP_convert <0>; DW_OP_breg3 (r3): 0; DW_OP_minus; DW_OP_entry_value: (DW_OP_regval_type: 2 (r2) <0x792>); DW_OP_convert <0x799>; DW_OP_convert <0>; DW_OP_plus; DW_OP_lit2; DW_OP_minus; DW_OP_stack_value)
    00000275 <End of list>

    00000276 v0000002 v0000000 location view pair
    00000278 v0000000 v0000000 location view pair

    0000027a 20000228 (base address)
    0000027f v0000002 v0000000 views at 00000276 for:
             20000228 20000236 (DW_OP_reg0 (r0))
    00000284 v0000000 v0000000 views at 00000278 for:
             20000236 2000024a (DW_OP_breg3 (r3): 1; DW_OP_stack_value)
    0000028b <End of list>

    0000028c v0000003 v0000000 location view pair
    0000028e v0000000 v0000000 location view pair
    00000290 v0000000 v0000000 location view pair
    00000292 v0000000 v0000001 location view pair
    00000294 v0000001 v0000000 location view pair

    00000296 20000228 (base address)
    0000029b v0000003 v0000000 views at 0000028c for:
             20000228 20000232 (DW_OP_reg1 (r1))
    000002a0 v0000000 v0000000 views at 0000028e for:
             20000232 20000236 (DW_OP_breg1 (r1): 1; DW_OP_stack_value)
    000002a7 v0000000 v0000000 views at 00000290 for:
             20000236 2000023e (DW_OP_breg3 (r3): 0; DW_OP_entry_value: (DW_OP_regval_type: 0 (r0) <0x792>); DW_OP_convert <0x799>; DW_OP_convert <0>; DW_OP_minus; DW_OP_entry_value: (DW_OP_regval_type: 1 (r1) <0x792>); DW_OP_convert <0x799>; DW_OP_convert <0>; DW_OP_plus; DW_OP_plus_uconst: 1; DW_OP_stack_value)
    000002c4 v0000000 v0000001 views at 00000292 for:
             2000023e 2000023e (DW_OP_breg3 (r3): 0; DW_OP_entry_value: (DW_OP_regval_type: 0 (r0) <0x792>); DW_OP_convert <0x799>; DW_OP_convert <0>; DW_OP_minus; DW_OP_entry_value: (DW_OP_regval_type: 1 (r1) <0x792>); DW_OP_convert <0x799>; DW_OP_convert <0>; DW_OP_plus; DW_OP_stack_value)
    000002df v0000001 v0000000 views at 00000294 for:
             2000023e 2000024a (DW_OP_breg3 (r3): 0; DW_OP_entry_value: (DW_OP_regval_type: 0 (r0) <0x792>); DW_OP_convert <0x799>; DW_OP_convert <0>; DW_OP_minus; DW_OP_entry_value: (DW_OP_regval_type: 1 (r1) <0x792>); DW_OP_convert <0x799>; DW_OP_convert <0>; DW_OP_plus; DW_OP_plus_uconst: 1; DW_OP_stack_value)
    000002fc <End of list>

    000002fd v0000000 v0000000 location view pair
    000002ff v0000000 v0000000 location view pair

    00000301 20000204 (base address)
    00000306 v0000000 v0000000 views at 000002fd for:
             20000204 2000020a (DW_OP_reg0 (r0))
    0000030b v0000000 v0000000 views at 000002ff for:
             2000020a 20000214 (DW_OP_entry_value: (DW_OP_regval_type: 0 (r0) <0x792>); DW_OP_convert <0x799>; DW_OP_convert <0>; DW_OP_stack_value)
    00000319 <End of list>

    0000031a v0000000 v0000000 location view pair
    0000031c v0000000 v0000000 location view pair

    0000031e 20000204 (base address)
    00000323 v0000000 v0000000 views at 0000031a for:
             20000204 20000208 (DW_OP_reg1 (r1))
    00000328 v0000000 v0000000 views at 0000031c for:
             20000208 20000214 (DW_OP_entry_value: (DW_OP_regval_type: 1 (r1) <0x792>); DW_OP_convert <0x799>; DW_OP_convert <0>; DW_OP_stack_value)
    00000336 <End of list>

    00000337 v0000000 v0000000 location view pair
    00000339 v0000000 v0000000 location view pair

    0000033b 20000204 (base address)
    00000340 v0000000 v0000000 views at 00000337 for:
             20000204 2000020a (DW_OP_reg2 (r2))
    00000345 v0000000 v0000000 views at 00000339 for:
             2000020a 20000214 (DW_OP_entry_value: (DW_OP_regval_type: 2 (r2) <0x792>); DW_OP_convert <0x799>; DW_OP_convert <0>; DW_OP_stack_value)
    00000353 <End of list>

    00000354 v0000002 v0000000 location view pair
    00000356 v0000000 v0000000 location view pair

    00000358 20000204 (base address)
    0000035d v0000002 v0000000 views at 00000354 for:
             20000204 2000020a (DW_OP_reg0 (r0))
    00000362 v0000000 v0000000 views at 00000356 for:
             2000020a 20000214 (DW_OP_entry_value: (DW_OP_regval_type: 0 (r0) <0x792>); DW_OP_convert <0x799>; DW_OP_convert <0>; DW_OP_stack_value)
    00000370 <End of list>

    00000371 v0000004 v0000000 location view pair
    00000373 v0000000 v0000000 location view pair
    00000375 v0000000 v0000001 location view pair
    00000377 v0000001 v0000000 location view pair

    00000379 20000204 (base address)
    0000037e v0000004 v0000000 views at 00000371 for:
             20000204 2000020a (DW_OP_lit0; DW_OP_stack_value)
    00000384 v0000000 v0000000 views at 00000373 for:
             2000020a 2000020e (DW_OP_breg0 (r0): 0; DW_OP_entry_value: (DW_OP_regval_type: 0 (r0) <0x792>); DW_OP_convert <0x799>; DW_OP_convert <0>; DW_OP_minus; DW_OP_stack_value)
    00000395 v0000000 v0000001 views at 00000375 for:
             2000020e 2000020e (DW_OP_entry_value: (DW_OP_regval_type: 0 (r0) <0x792>); DW_OP_convert <0x799>; DW_OP_convert <0>; DW_OP_not; DW_OP_breg0 (r0): 0; DW_OP_plus; DW_OP_stack_value)
    000003a7 v0000001 v0000000 views at 00000377 for:
             2000020e 20000212 (DW_OP_breg0 (r0): 0; DW_OP_entry_value: (DW_OP_regval_type: 0 (r0) <0x792>); DW_OP_convert <0x799>; DW_OP_convert <0>; DW_OP_minus; DW_OP_stack_value)
    000003b8 <End of list>

    000003b9 v0000000 v0000000 location view pair
    000003bb v0000000 v0000000 location view pair

    000003bd 200001f0 (base address)
    000003c2 v0000000 v0000000 views at 000003b9 for:
             200001f0 200001f6 (DW_OP_reg1 (r1))
    000003c7 v0000000 v0000000 views at 000003bb for:
             200001f6 20000204 (DW_OP_entry_value: (DW_OP_regval_type: 1 (r1) <0x792>); DW_OP_convert <0x799>; DW_OP_convert <0>; DW_OP_stack_value)
    000003d5 <End of list>

    000003d6 v0000000 v0000005 location view pair
    000003d8 v0000005 v0000000 location view pair
    000003da v0000000 v0000000 location view pair

    000003dc 200001f0 (base address)
    000003e1 v0000000 v0000005 views at 000003d6 for:
             200001f0 200001f0 (DW_OP_reg2 (r2))
    000003e6 v0000005 v0000000 views at 000003d8 for:
             200001f0 200001f6 (DW_OP_breg2 (r2): -1; DW_OP_stack_value)
    000003ed v0000000 v0000000 views at 000003da for:
             200001f6 20000202 (DW_OP_entry_value: (DW_OP_regval_type: 2 (r2) <0x792>); DW_OP_convert <0x799>; DW_OP_convert <0>; DW_OP_lit1; DW_OP_minus; DW_OP_stack_value)
    000003fd <End of list>

    000003fe v0000002 v0000000 location view pair

    00000400 v0000002 v0000000 views at 000003fe for:
             200001f0 200001f6 (DW_OP_reg0 (r0))
    00000408 <End of list>

    00000409 v0000003 v0000001 location view pair
    0000040b v0000001 v0000000 location view pair
    0000040d v0000000 v0000000 location view pair

    0000040f 200001f0 (base address)
    00000414 v0000003 v0000001 views at 00000409 for:
             200001f0 200001f6 (DW_OP_reg1 (r1))
    00000419 v0000001 v0000000 views at 0000040b for:
             200001f6 200001fa (DW_OP_breg1 (r1): 1; DW_OP_stack_value)
    00000420 v0000000 v0000000 views at 0000040d for:
             200001fa 20000204 (DW_OP_reg1 (r1))
    00000425 <End of list>

Contents of the .debug_aranges section (loaded from main):

  Length:                   28
  Version:                  2
  Offset into .debug_info:  0
  Pointer Size:             4
  Segment Size:             0

    Address    Length
    20000000 00000026
    00000000 00000000
  Length:                   28
  Version:                  2
  Offset into .debug_info:  0x4c4
  Pointer Size:             4
  Segment Size:             0

    Address    Length
    20000028 00000014
    00000000 00000000
  Length:                   36
  Version:                  2
  Offset into .debug_info:  0x4ea
  Pointer Size:             4
  Segment Size:             0

    Address    Length
    2000003c 0000018e
    20000250 0000000c
    00000000 00000000
  Length:                   28
  Version:                  2
  Offset into .debug_info:  0x6db
  Pointer Size:             4
  Segment Size:             0

    Address    Length
    200001cc 00000024
    00000000 00000000
  Length:                   28
  Version:                  2
  Offset into .debug_info:  0x76c
  Pointer Size:             4
  Segment Size:             0

    Address    Length
    200001f0 0000005e
    00000000 00000000

Raw dump of debug contents of section .debug_line (loaded from main):

  Offset:                      0
  Length:                      498
  DWARF Version:               3
  Prologue Length:             384
  Minimum Instruction Length:  2
  Initial value of 'is_stmt':  1
  Line Base:                   -5
  Line Range:                  14
  Opcode Base:                 13

 Opcodes:
  Opcode 1 has 0 args
  Opcode 2 has 1 arg
  Opcode 3 has 1 arg
  Opcode 4 has 1 arg
  Opcode 5 has 1 arg
  Opcode 6 has 0 args
  Opcode 7 has 0 args
  Opcode 8 has 0 args
  Opcode 9 has 1 arg
  Opcode 10 has 0 args
  Opcode 11 has 0 args
  Opcode 12 has 1 arg

 The Directory Table (offset 0x1b):
  1	libs
  2	/Applications/ArmGNUToolchain/13.3.rel1/arm-none-eabi/arm-none-eabi/include/machine
  3	/Applications/ArmGNUToolchain/13.3.rel1/arm-none-eabi/lib/gcc/arm-none-eabi/13.3.1/include
  4	/Applications/ArmGNUToolchain/13.3.rel1/arm-none-eabi/arm-none-eabi/include/sys

 The File Name Table (offset 0x120):
  Entry	Dir	Time	Size	Name
  1	1	0	0	stubs.c
  2	2	0	0	_default_types.h
  3	3	0	0	stddef.h
  4	4	0	0	_types.h
  5	4	0	0	_timeval.h
  6	4	0	0	_timespec.h
  7	4	0	0	types.h
  8	4	0	0	stat.h

 Line Number Statements:
  [0x0000018a]  Set column to 19
  [0x0000018c]  Extended opcode 2: set Address to 0x20000000
  [0x00000193]  Special opcode 8: advance Address by 0 to 0x20000000 and Line by 3 to 4
  [0x00000194]  Set column to 20
  [0x00000196]  Copy (view 1)
  [0x00000197]  Set column to 25
  [0x00000199]  Copy (view 2)
  [0x0000019a]  Set column to 20
  [0x0000019c]  Extended opcode 2: set Address to 0x20000004
  [0x000001a3]  Special opcode 6: advance Address by 0 to 0x20000004 and Line by 1 to 5
  [0x000001a4]  Set column to 21
  [0x000001a6]  Copy (view 1)
  [0x000001a7]  Set is_stmt to 0
  [0x000001a8]  Copy (view 2)
  [0x000001a9]  Set column to 51
  [0x000001ab]  Set is_stmt to 1
  [0x000001ac]  Special opcode 34: advance Address by 4 to 0x20000008 and Line by 1 to 6
  [0x000001ad]  Set column to 52
  [0x000001af]  Copy (view 1)
  [0x000001b0]  Set is_stmt to 0
  [0x000001b1]  Copy (view 2)
  [0x000001b2]  Set column to 20
  [0x000001b4]  Set is_stmt to 1
  [0x000001b5]  Special opcode 34: advance Address by 4 to 0x2000000c and Line by 1 to 7
  [0x000001b6]  Set column to 21
  [0x000001b8]  Copy (view 1)
  [0x000001b9]  Set is_stmt to 0
  [0x000001ba]  Copy (view 2)
  [0x000001bb]  Set column to 38
  [0x000001bd]  Set is_stmt to 1
  [0x000001be]  Special opcode 34: advance Address by 4 to 0x20000010 and Line by 1 to 8
  [0x000001bf]  Set column to 39
  [0x000001c1]  Copy (view 1)
  [0x000001c2]  Set is_stmt to 0
  [0x000001c3]  Copy (view 2)
  [0x000001c4]  Set column to 5
  [0x000001c6]  Set is_stmt to 1
  [0x000001c7]  Special opcode 34: advance Address by 4 to 0x20000014 and Line by 1 to 9
  [0x000001c8]  Set column to 48
  [0x000001ca]  Extended opcode 2: set Address to 0x20000018
  [0x000001d1]  Special opcode 6: advance Address by 0 to 0x20000018 and Line by 1 to 10
  [0x000001d2]  Set column to 49
  [0x000001d4]  Copy (view 1)
  [0x000001d5]  Set is_stmt to 0
  [0x000001d6]  Copy (view 2)
  [0x000001d7]  Set column to 9
  [0x000001d9]  Set is_stmt to 1
  [0x000001da]  Special opcode 34: advance Address by 4 to 0x2000001c and Line by 1 to 11
  [0x000001db]  Set column to 29
  [0x000001dd]  Extended opcode 2: set Address to 0x20000020
  [0x000001e4]  Special opcode 6: advance Address by 0 to 0x20000020 and Line by 1 to 12
  [0x000001e5]  Set column to 30
  [0x000001e7]  Copy (view 1)
  [0x000001e8]  Set is_stmt to 0
  [0x000001e9]  Copy (view 2)
  [0x000001ea]  Set column to 21
  [0x000001ec]  Set is_stmt to 1
  [0x000001ed]  Special opcode 34: advance Address by 4 to 0x20000024 and Line by 1 to 13
  [0x000001ee]  Set column to 22
  [0x000001f0]  Copy (view 1)
  [0x000001f1]  Advance PC by 2 to 0x20000026
  [0x000001f3]  Extended opcode 1: End of Sequence


  Offset:                      0x1f6
  Length:                      54
  DWARF Version:               2
  Prologue Length:             31
  Minimum Instruction Length:  2
  Initial value of 'is_stmt':  1
  Line Base:                   -5
  Line Range:                  14
  Opcode Base:                 10

 Opcodes:
  Opcode 1 has 0 args
  Opcode 2 has 1 arg
  Opcode 3 has 1 arg
  Opcode 4 has 1 arg
  Opcode 5 has 1 arg
  Opcode 6 has 0 args
  Opcode 7 has 0 args
  Opcode 8 has 0 args
  Opcode 9 has 1 arg

 The Directory Table (offset 0x20e):
  1	libs

 The File Name Table (offset 0x214):
  Entry	Dir	Time	Size	Name
  1	1	0	0	crt0.s

 Line Number Statements:
  [0x0000021f]  Extended opcode 2: set Address to 0x20000028
  [0x00000226]  Special opcode 11: advance Address by 0 to 0x20000028 and Line by 6 to 7
  [0x00000227]  Special opcode 34: advance Address by 4 to 0x2000002c and Line by 1 to 8
  [0x00000228]  Special opcode 34: advance Address by 4 to 0x20000030 and Line by 1 to 9
  [0x00000229]  Special opcode 34: advance Address by 4 to 0x20000034 and Line by 1 to 10
  [0x0000022a]  Special opcode 30: advance Address by 4 to 0x20000038 and Line by -3 to 7
  [0x0000022b]  Advance PC by 4 to 0x2000003c
  [0x0000022d]  Extended opcode 1: End of Sequence


  Offset:                      0x230
  Length:                      395
  DWARF Version:               3
  Prologue Length:             29
  Minimum Instruction Length:  2
  Initial value of 'is_stmt':  1
  Line Base:                   -5
  Line Range:                  14
  Opcode Base:                 13

 Opcodes:
  Opcode 1 has 0 args
  Opcode 2 has 1 arg
  Opcode 3 has 1 arg
  Opcode 4 has 1 arg
  Opcode 5 has 1 arg
  Opcode 6 has 0 args
  Opcode 7 has 0 args
  Opcode 8 has 0 args
  Opcode 9 has 1 arg
  Opcode 10 has 0 args
  Opcode 11 has 0 args
  Opcode 12 has 1 arg

 The Directory Table is empty.

 The File Name Table (offset 0x24c):
  Entry	Dir	Time	Size	Name
  1	0	0	0	main.c

 Line Number Statements:
  [0x00000257]  Set column to 13
  [0x00000259]  Extended opcode 2: set Address to 0x2000003c
  [0x00000260]  Copy
  [0x00000261]  Set column to 5
  [0x00000263]  Special opcode 7: advance Address by 0 to 0x2000003c and Line by 2 to 3 (view 1)
  [0x00000264]  Special opcode 7: advance Address by 0 to 0x2000003c and Line by 2 to 5 (view 2)
  [0x00000265]  Set column to 11
  [0x00000267]  Special opcode 3: advance Address by 0 to 0x2000003c and Line by -2 to 3 (view 3)
  [0x00000268]  Set column to 16
  [0x0000026a]  Extended opcode 2: set Address to 0x20000040
  [0x00000271]  Special opcode 11: advance Address by 0 to 0x20000040 and Line by 6 to 9
  [0x00000272]  Set column to 5
  [0x00000274]  Special opcode 6: advance Address by 0 to 0x20000040 and Line by 1 to 10 (view 1)
  [0x00000275]  Set column to 8
  [0x00000277]  Set is_stmt to 0
  [0x00000278]  Copy (view 2)
  [0x00000279]  Set column to 12
  [0x0000027b]  Set is_stmt to 1
  [0x0000027c]  Special opcode 49: advance Address by 6 to 0x20000046 and Line by 2 to 12
  [0x0000027d]  Set column to 15
  [0x0000027f]  Set is_stmt to 0
  [0x00000280]  Copy (view 1)
  [0x00000281]  Set column to 16
  [0x00000283]  Special opcode 44: advance Address by 6 to 0x2000004c and Line by -3 to 9
  [0x00000284]  Set column to 15
  [0x00000286]  Special opcode 78: advance Address by 10 to 0x20000056 and Line by 3 to 12
  [0x00000287]  Set column to 9
  [0x00000289]  Set is_stmt to 1
  [0x0000028a]  Special opcode 50: advance Address by 6 to 0x2000005c and Line by 3 to 15
  [0x0000028b]  Set column to 5
  [0x0000028d]  Advance Line by -6 to 9
  [0x0000028f]  Copy (view 1)
  [0x00000290]  Special opcode 6: advance Address by 0 to 0x2000005c and Line by 1 to 10 (view 2)
  [0x00000291]  Set column to 12
  [0x00000293]  Special opcode 7: advance Address by 0 to 0x2000005c and Line by 2 to 12 (view 3)
  [0x00000294]  Set column to 15
  [0x00000296]  Set is_stmt to 0
  [0x00000297]  Copy (view 4)
  [0x00000298]  Set column to 9
  [0x0000029a]  Set is_stmt to 1
  [0x0000029b]  Special opcode 162: advance Address by 22 to 0x20000072 and Line by 3 to 15
  [0x0000029c]  Set column to 5
  [0x0000029e]  Advance Line by -6 to 9
  [0x000002a0]  Copy (view 1)
  [0x000002a1]  Special opcode 6: advance Address by 0 to 0x20000072 and Line by 1 to 10 (view 2)
  [0x000002a2]  Set column to 12
  [0x000002a4]  Special opcode 7: advance Address by 0 to 0x20000072 and Line by 2 to 12 (view 3)
  [0x000002a5]  Set column to 15
  [0x000002a7]  Set is_stmt to 0
  [0x000002a8]  Copy (view 4)
  [0x000002a9]  Set column to 9
  [0x000002ab]  Set is_stmt to 1
  [0x000002ac]  Special opcode 162: advance Address by 22 to 0x20000088 and Line by 3 to 15
  [0x000002ad]  Set column to 5
  [0x000002af]  Advance Line by -6 to 9
  [0x000002b1]  Copy (view 1)
  [0x000002b2]  Special opcode 6: advance Address by 0 to 0x20000088 and Line by 1 to 10 (view 2)
  [0x000002b3]  Set column to 12
  [0x000002b5]  Special opcode 7: advance Address by 0 to 0x20000088 and Line by 2 to 12 (view 3)
  [0x000002b6]  Set column to 15
  [0x000002b8]  Set is_stmt to 0
  [0x000002b9]  Copy (view 4)
  [0x000002ba]  Set column to 9
  [0x000002bc]  Set is_stmt to 1
  [0x000002bd]  Special opcode 134: advance Address by 18 to 0x2000009a and Line by 3 to 15
  [0x000002be]  Set column to 5
  [0x000002c0]  Advance Line by -6 to 9
  [0x000002c2]  Copy (view 1)
  [0x000002c3]  Special opcode 6: advance Address by 0 to 0x2000009a and Line by 1 to 10 (view 2)
  [0x000002c4]  Set column to 12
  [0x000002c6]  Special opcode 7: advance Address by 0 to 0x2000009a and Line by 2 to 12 (view 3)
  [0x000002c7]  Set column to 15
  [0x000002c9]  Set is_stmt to 0
  [0x000002ca]  Copy (view 4)
  [0x000002cb]  Set column to 9
  [0x000002cd]  Set is_stmt to 1
  [0x000002ce]  Special opcode 218: advance Address by 30 to 0x200000b8 and Line by 3 to 15
  [0x000002cf]  Set column to 5
  [0x000002d1]  Advance Line by -6 to 9
  [0x000002d3]  Copy (view 1)
  [0x000002d4]  Special opcode 6: advance Address by 0 to 0x200000b8 and Line by 1 to 10 (view 2)
  [0x000002d5]  Set column to 12
  [0x000002d7]  Special opcode 7: advance Address by 0 to 0x200000b8 and Line by 2 to 12 (view 3)
  [0x000002d8]  Set column to 15
  [0x000002da]  Set is_stmt to 0
  [0x000002db]  Copy (view 4)
  [0x000002dc]  Special opcode 145: advance Address by 20 to 0x200000cc and Line by 0 to 12
  [0x000002dd]  Set column to 9
  [0x000002df]  Set is_stmt to 1
  [0x000002e0]  Special opcode 22: advance Address by 2 to 0x200000ce and Line by 3 to 15
  [0x000002e1]  Set column to 5
  [0x000002e3]  Advance Line by -6 to 9
  [0x000002e5]  Copy (view 1)
  [0x000002e6]  Special opcode 6: advance Address by 0 to 0x200000ce and Line by 1 to 10 (view 2)
  [0x000002e7]  Set column to 12
  [0x000002e9]  Special opcode 7: advance Address by 0 to 0x200000ce and Line by 2 to 12 (view 3)
  [0x000002ea]  Set column to 15
  [0x000002ec]  Set is_stmt to 0
  [0x000002ed]  Copy (view 4)
  [0x000002ee]  Set column to 9
  [0x000002f0]  Set is_stmt to 1
  [0x000002f1]  Special opcode 204: advance Address by 28 to 0x200000ea and Line by 3 to 15
  [0x000002f2]  Set column to 5
  [0x000002f4]  Advance Line by -6 to 9
  [0x000002f6]  Copy (view 1)
  [0x000002f7]  Special opcode 6: advance Address by 0 to 0x200000ea and Line by 1 to 10 (view 2)
  [0x000002f8]  Set column to 12
  [0x000002fa]  Special opcode 7: advance Address by 0 to 0x200000ea and Line by 2 to 12 (view 3)
  [0x000002fb]  Set column to 15
  [0x000002fd]  Set is_stmt to 0
  [0x000002fe]  Copy (view 4)
  [0x000002ff]  Special opcode 103: advance Address by 14 to 0x200000f8 and Line by 0 to 12
  [0x00000300]  Set column to 9
  [0x00000302]  Set is_stmt to 1
  [0x00000303]  Special opcode 22: advance Address by 2 to 0x200000fa and Line by 3 to 15
  [0x00000304]  Set column to 15
  [0x00000306]  Set is_stmt to 0
  [0x00000307]  Special opcode 2: advance Address by 0 to 0x200000fa and Line by -3 to 12 (view 1)
  [0x00000308]  Set column to 16
  [0x0000030a]  Special opcode 22: advance Address by 2 to 0x200000fc and Line by 3 to 15
  [0x0000030b]  Set column to 5
  [0x0000030d]  Set is_stmt to 1
  [0x0000030e]  Advance Line by -6 to 9
  [0x00000310]  Special opcode 19: advance Address by 2 to 0x200000fe and Line by 0 to 9
  [0x00000311]  Special opcode 6: advance Address by 0 to 0x200000fe and Line by 1 to 10 (view 1)
  [0x00000312]  Set column to 12
  [0x00000314]  Special opcode 7: advance Address by 0 to 0x200000fe and Line by 2 to 12 (view 2)
  [0x00000315]  Set column to 15
  [0x00000317]  Set is_stmt to 0
  [0x00000318]  Copy (view 3)
  [0x00000319]  Set column to 9
  [0x0000031b]  Set is_stmt to 1
  [0x0000031c]  Special opcode 64: advance Address by 8 to 0x20000106 and Line by 3 to 15
  [0x0000031d]  Set column to 16
  [0x0000031f]  Set is_stmt to 0
  [0x00000320]  Copy (view 1)
  [0x00000321]  Set column to 12
  [0x00000323]  Set is_stmt to 1
  [0x00000324]  Special opcode 58: advance Address by 8 to 0x2000010e and Line by -3 to 12
  [0x00000325]  Set column to 8
  [0x00000327]  Set is_stmt to 0
  [0x00000328]  Special opcode 3: advance Address by 0 to 0x2000010e and Line by -2 to 10 (view 1)
  [0x00000329]  Set column to 5
  [0x0000032b]  Set is_stmt to 1
  [0x0000032c]  Special opcode 47: advance Address by 6 to 0x20000114 and Line by 0 to 10
  [0x0000032d]  Set column to 8
  [0x0000032f]  Set is_stmt to 0
  [0x00000330]  Copy (view 1)
  [0x00000331]  Set column to 15
  [0x00000333]  Special opcode 21: advance Address by 2 to 0x20000116 and Line by 2 to 12
  [0x00000334]  Special opcode 75: advance Address by 10 to 0x20000120 and Line by 0 to 12
  [0x00000335]  Special opcode 19: advance Address by 2 to 0x20000122 and Line by 0 to 12
  [0x00000336]  Set column to 5
  [0x00000338]  Set is_stmt to 1
  [0x00000339]  Special opcode 31: advance Address by 4 to 0x20000126 and Line by -2 to 10
  [0x0000033a]  Set column to 12
  [0x0000033c]  Special opcode 7: advance Address by 0 to 0x20000126 and Line by 2 to 12 (view 1)
  [0x0000033d]  Set column to 15
  [0x0000033f]  Set is_stmt to 0
  [0x00000340]  Copy (view 2)
  [0x00000341]  Special opcode 19: advance Address by 2 to 0x20000128 and Line by 0 to 12
  [0x00000342]  Special opcode 47: advance Address by 6 to 0x2000012e and Line by 0 to 12
  [0x00000343]  Set column to 5
  [0x00000345]  Set is_stmt to 1
  [0x00000346]  Special opcode 31: advance Address by 4 to 0x20000132 and Line by -2 to 10
  [0x00000347]  Set column to 12
  [0x00000349]  Special opcode 7: advance Address by 0 to 0x20000132 and Line by 2 to 12 (view 1)
  [0x0000034a]  Set column to 15
  [0x0000034c]  Set is_stmt to 0
  [0x0000034d]  Copy (view 2)
  [0x0000034e]  Special opcode 131: advance Address by 18 to 0x20000144 and Line by 0 to 12
  [0x0000034f]  Set column to 5
  [0x00000351]  Set is_stmt to 1
  [0x00000352]  Special opcode 59: advance Address by 8 to 0x2000014c and Line by -2 to 10
  [0x00000353]  Set column to 12
  [0x00000355]  Special opcode 7: advance Address by 0 to 0x2000014c and Line by 2 to 12 (view 1)
  [0x00000356]  Set column to 15
  [0x00000358]  Set is_stmt to 0
  [0x00000359]  Copy (view 2)
  [0x0000035a]  Special opcode 89: advance Address by 12 to 0x20000158 and Line by 0 to 12
  [0x0000035b]  Set column to 5
  [0x0000035d]  Set is_stmt to 1
  [0x0000035e]  Special opcode 31: advance Address by 4 to 0x2000015c and Line by -2 to 10
  [0x0000035f]  Set column to 12
  [0x00000361]  Special opcode 7: advance Address by 0 to 0x2000015c and Line by 2 to 12 (view 1)
  [0x00000362]  Set column to 15
  [0x00000364]  Set is_stmt to 0
  [0x00000365]  Copy (view 2)
  [0x00000366]  Special opcode 145: advance Address by 20 to 0x20000170 and Line by 0 to 12
  [0x00000367]  Set column to 5
  [0x00000369]  Set is_stmt to 1
  [0x0000036a]  Special opcode 73: advance Address by 10 to 0x2000017a and Line by -2 to 10
  [0x0000036b]  Set column to 12
  [0x0000036d]  Special opcode 7: advance Address by 0 to 0x2000017a and Line by 2 to 12 (view 1)
  [0x0000036e]  Set column to 15
  [0x00000370]  Set is_stmt to 0
  [0x00000371]  Copy (view 2)
  [0x00000372]  Special opcode 61: advance Address by 8 to 0x20000182 and Line by 0 to 12
  [0x00000373]  Set column to 5
  [0x00000375]  Set is_stmt to 1
  [0x00000376]  Special opcode 59: advance Address by 8 to 0x2000018a and Line by -2 to 10
  [0x00000377]  Set column to 12
  [0x00000379]  Special opcode 7: advance Address by 0 to 0x2000018a and Line by 2 to 12 (view 1)
  [0x0000037a]  Set column to 15
  [0x0000037c]  Set is_stmt to 0
  [0x0000037d]  Copy (view 2)
  [0x0000037e]  Special opcode 89: advance Address by 12 to 0x20000196 and Line by 0 to 12
  [0x0000037f]  Set column to 5
  [0x00000381]  Set is_stmt to 1
  [0x00000382]  Special opcode 31: advance Address by 4 to 0x2000019a and Line by -2 to 10
  [0x00000383]  Set column to 12
  [0x00000385]  Special opcode 7: advance Address by 0 to 0x2000019a and Line by 2 to 12 (view 1)
  [0x00000386]  Set column to 15
  [0x00000388]  Set is_stmt to 0
  [0x00000389]  Copy (view 2)
  [0x0000038a]  Special opcode 131: advance Address by 18 to 0x200001ac and Line by 0 to 12
  [0x0000038b]  Set column to 5
  [0x0000038d]  Set is_stmt to 1
  [0x0000038e]  Special opcode 31: advance Address by 4 to 0x200001b0 and Line by -2 to 10
  [0x0000038f]  Set column to 12
  [0x00000391]  Special opcode 7: advance Address by 0 to 0x200001b0 and Line by 2 to 12 (view 1)
  [0x00000392]  Set column to 15
  [0x00000394]  Set is_stmt to 0
  [0x00000395]  Copy (view 2)
  [0x00000396]  Set column to 1
  [0x00000398]  Special opcode 94: advance Address by 12 to 0x200001bc and Line by 5 to 17
  [0x00000399]  Special opcode 47: advance Address by 6 to 0x200001c2 and Line by 0 to 17
  [0x0000039a]  Special opcode 33: advance Address by 4 to 0x200001c6 and Line by 0 to 17
  [0x0000039b]  Special opcode 19: advance Address by 2 to 0x200001c8 and Line by 0 to 17
  [0x0000039c]  Advance PC by 2 to 0x200001ca
  [0x0000039e]  Extended opcode 1: End of Sequence

  [0x000003a1]  Set column to 16
  [0x000003a3]  Extended opcode 2: set Address to 0x20000250
  [0x000003aa]  Advance Line by 21 to 22
  [0x000003ac]  Copy
  [0x000003ad]  Set column to 5
  [0x000003af]  Special opcode 6: advance Address by 0 to 0x20000250 and Line by 1 to 23 (view 1)
  [0x000003b0]  Set column to 16
  [0x000003b2]  Set is_stmt to 0
  [0x000003b3]  Special opcode 4: advance Address by 0 to 0x20000250 and Line by -1 to 22 (view 2)
  [0x000003b4]  Set column to 5
  [0x000003b6]  Special opcode 20: advance Address by 2 to 0x20000252 and Line by 1 to 23
  [0x000003b7]  Set column to 1
  [0x000003b9]  Special opcode 48: advance Address by 6 to 0x20000258 and Line by 1 to 24
  [0x000003ba]  Advance PC by 4 to 0x2000025c
  [0x000003bc]  Extended opcode 1: End of Sequence


  Offset:                      0x3bf
  Length:                      82
  DWARF Version:               3
  Prologue Length:             48
  Minimum Instruction Length:  2
  Initial value of 'is_stmt':  1
  Line Base:                   -5
  Line Range:                  14
  Opcode Base:                 13

 Opcodes:
  Opcode 1 has 0 args
  Opcode 2 has 1 arg
  Opcode 3 has 1 arg
  Opcode 4 has 1 arg
  Opcode 5 has 1 arg
  Opcode 6 has 0 args
  Opcode 7 has 0 args
  Opcode 8 has 0 args
  Opcode 9 has 1 arg
  Opcode 10 has 0 args
  Opcode 11 has 0 args
  Opcode 12 has 1 arg

 The Directory Table (offset 0x3da):
  1	libs

 The File Name Table (offset 0x3e0):
  Entry	Dir	Time	Size	Name
  1	1	0	0	init.c
  2	0	0	0	<built-in>

 Line Number Statements:
  [0x000003f9]  Set column to 21
  [0x000003fb]  Extended opcode 2: set Address to 0x200001cc
  [0x00000402]  Special opcode 9: advance Address by 0 to 0x200001cc and Line by 4 to 5
  [0x00000403]  Set column to 5
  [0x00000405]  Special opcode 6: advance Address by 0 to 0x200001cc and Line by 1 to 6 (view 1)
  [0x00000406]  Special opcode 6: advance Address by 0 to 0x200001cc and Line by 1 to 7 (view 2)
  [0x00000407]  Special opcode 7: advance Address by 0 to 0x200001cc and Line by 2 to 9 (view 3)
  [0x00000408]  Set column to 16
  [0x0000040a]  Copy (view 4)
  [0x0000040b]  Set is_stmt to 0
  [0x0000040c]  Special opcode 62: advance Address by 8 to 0x200001d4 and Line by 1 to 10
  [0x0000040d]  Set column to 1
  [0x0000040f]  Special opcode 119: advance Address by 16 to 0x200001e4 and Line by 2 to 12
  [0x00000410]  Advance PC by 12 to 0x200001f0
  [0x00000412]  Extended opcode 1: End of Sequence


  Offset:                      0x415
  Length:                      208
  DWARF Version:               3
  Prologue Length:             38
  Minimum Instruction Length:  2
  Initial value of 'is_stmt':  1
  Line Base:                   -5
  Line Range:                  14
  Opcode Base:                 13

 Opcodes:
  Opcode 1 has 0 args
  Opcode 2 has 1 arg
  Opcode 3 has 1 arg
  Opcode 4 has 1 arg
  Opcode 5 has 1 arg
  Opcode 6 has 0 args
  Opcode 7 has 0 args
  Opcode 8 has 0 args
  Opcode 9 has 1 arg
  Opcode 10 has 0 args
  Opcode 11 has 0 args
  Opcode 12 has 1 arg

 The Directory Table (offset 0x430):
  1	libs

 The File Name Table (offset 0x436):
  Entry	Dir	Time	Size	Name
  1	1	0	0	memfuncs.c

 Line Number Statements:
  [0x00000445]  Set column to 1
  [0x00000447]  Extended opcode 2: set Address to 0x200001f0
  [0x0000044e]  Special opcode 6: advance Address by 0 to 0x200001f0 and Line by 1 to 2
  [0x0000044f]  Set column to 5
  [0x00000451]  Special opcode 6: advance Address by 0 to 0x200001f0 and Line by 1 to 3 (view 1)
  [0x00000452]  Special opcode 6: advance Address by 0 to 0x200001f0 and Line by 1 to 4 (view 2)
  [0x00000453]  Special opcode 6: advance Address by 0 to 0x200001f0 and Line by 1 to 5 (view 3)
  [0x00000454]  Set column to 12
  [0x00000456]  Copy (view 4)
  [0x00000457]  Set is_stmt to 0
  [0x00000458]  Copy (view 5)
  [0x00000459]  Set column to 9
  [0x0000045b]  Set is_stmt to 1
  [0x0000045c]  Special opcode 48: advance Address by 6 to 0x200001f6 and Line by 1 to 6
  [0x0000045d]  Set column to 16
  [0x0000045f]  Set is_stmt to 0
  [0x00000460]  Copy (view 1)
  [0x00000461]  Set column to 14
  [0x00000463]  Special opcode 33: advance Address by 4 to 0x200001fa and Line by 0 to 6
  [0x00000464]  Set column to 12
  [0x00000466]  Set is_stmt to 1
  [0x00000467]  Special opcode 32: advance Address by 4 to 0x200001fe and Line by -1 to 5
  [0x00000468]  Set is_stmt to 0
  [0x00000469]  Copy (view 1)
  [0x0000046a]  Set column to 5
  [0x0000046c]  Set is_stmt to 1
  [0x0000046d]  Special opcode 36: advance Address by 4 to 0x20000202 and Line by 3 to 8
  [0x0000046e]  Set column to 1
  [0x00000470]  Set is_stmt to 0
  [0x00000471]  Special opcode 6: advance Address by 0 to 0x20000202 and Line by 1 to 9 (view 1)
  [0x00000472]  Set is_stmt to 1
  [0x00000473]  Special opcode 22: advance Address by 2 to 0x20000204 and Line by 3 to 12
  [0x00000474]  Set column to 5
  [0x00000476]  Special opcode 6: advance Address by 0 to 0x20000204 and Line by 1 to 13 (view 1)
  [0x00000477]  Special opcode 6: advance Address by 0 to 0x20000204 and Line by 1 to 14 (view 2)
  [0x00000478]  Set column to 10
  [0x0000047a]  Copy (view 3)
  [0x0000047b]  Set column to 32
  [0x0000047d]  Extended opcode 4: set Discriminator to 1
  [0x00000481]  Copy (view 4)
  [0x00000482]  Set column to 16
  [0x00000484]  Set is_stmt to 0
  [0x00000485]  Special opcode 21: advance Address by 2 to 0x20000206 and Line by 2 to 16
  [0x00000486]  Special opcode 19: advance Address by 2 to 0x20000208 and Line by 0 to 16
  [0x00000487]  Set column to 9
  [0x00000489]  Set is_stmt to 1
  [0x0000048a]  Special opcode 19: advance Address by 2 to 0x2000020a and Line by 0 to 16
  [0x0000048b]  Set column to 14
  [0x0000048d]  Set is_stmt to 0
  [0x0000048e]  Copy (view 1)
  [0x0000048f]  Set column to 40
  [0x00000491]  Extended opcode 4: set Discriminator to 3
  [0x00000495]  Set is_stmt to 1
  [0x00000496]  Special opcode 31: advance Address by 4 to 0x2000020e and Line by -2 to 14
  [0x00000497]  Set column to 32
  [0x00000499]  Extended opcode 4: set Discriminator to 1
  [0x0000049d]  Copy (view 1)
  [0x0000049e]  Extended opcode 4: set Discriminator to 1
  [0x000004a2]  Set is_stmt to 0
  [0x000004a3]  Special opcode 33: advance Address by 4 to 0x20000212 and Line by 0 to 14
  [0x000004a4]  Set column to 1
  [0x000004a6]  Special opcode 10: advance Address by 0 to 0x20000212 and Line by 5 to 19 (view 1)
  [0x000004a7]  Set column to 7
  [0x000004a9]  Set is_stmt to 1
  [0x000004aa]  Special opcode 21: advance Address by 2 to 0x20000214 and Line by 2 to 21
  [0x000004ab]  Set column to 1
  [0x000004ad]  Advance Line by 12 to 33
  [0x000004af]  Special opcode 145: advance Address by 20 to 0x20000228 and Line by 0 to 33
  [0x000004b0]  Set column to 5
  [0x000004b2]  Special opcode 6: advance Address by 0 to 0x20000228 and Line by 1 to 34 (view 1)
  [0x000004b3]  Special opcode 6: advance Address by 0 to 0x20000228 and Line by 1 to 35 (view 2)
  [0x000004b4]  Special opcode 7: advance Address by 0 to 0x20000228 and Line by 2 to 37 (view 3)
  [0x000004b5]  Set column to 11
  [0x000004b7]  Copy (view 4)
  [0x000004b8]  Set column to 12
  [0x000004ba]  Set is_stmt to 0
  [0x000004bb]  Copy (view 5)
  [0x000004bc]  Set column to 11
  [0x000004be]  Special opcode 33: advance Address by 4 to 0x2000022c and Line by 0 to 37
  [0x000004bf]  Special opcode 47: advance Address by 6 to 0x20000232 and Line by 0 to 37
  [0x000004c0]  Special opcode 19: advance Address by 2 to 0x20000234 and Line by 0 to 37
  [0x000004c1]  Special opcode 19: advance Address by 2 to 0x20000236 and Line by 0 to 37
  [0x000004c2]  Set column to 9
  [0x000004c4]  Set is_stmt to 1
  [0x000004c5]  Special opcode 34: advance Address by 4 to 0x2000023a and Line by 1 to 38
  [0x000004c6]  Special opcode 8: advance Address by 0 to 0x2000023a and Line by 3 to 41 (view 1)
  [0x000004c7]  Set column to 12
  [0x000004c9]  Set is_stmt to 0
  [0x000004ca]  Special opcode 2: advance Address by 0 to 0x2000023a and Line by -3 to 38 (view 2)
  [0x000004cb]  Set column to 9
  [0x000004cd]  Set is_stmt to 1
  [0x000004ce]  Special opcode 37: advance Address by 4 to 0x2000023e and Line by 4 to 42
  [0x000004cf]  Set column to 11
  [0x000004d1]  Special opcode 0: advance Address by 0 to 0x2000023e and Line by -5 to 37 (view 1)
  [0x000004d2]  Set column to 18
  [0x000004d4]  Set is_stmt to 0
  [0x000004d5]  Special opcode 6: advance Address by 0 to 0x2000023e and Line by 1 to 38 (view 2)
  [0x000004d6]  Set column to 11
  [0x000004d8]  Special opcode 33: advance Address by 4 to 0x20000242 and Line by 0 to 38
  [0x000004d9]  Set column to 13
  [0x000004db]  Set is_stmt to 1
  [0x000004dc]  Special opcode 34: advance Address by 4 to 0x20000246 and Line by 1 to 39
  [0x000004dd]  Set column to 23
  [0x000004df]  Set is_stmt to 0
  [0x000004e0]  Copy (view 1)
  [0x000004e1]  Set column to 12
  [0x000004e3]  Special opcode 38: advance Address by 4 to 0x2000024a and Line by 5 to 44
  [0x000004e4]  Advance PC by 4 to 0x2000024e
  [0x000004e6]  Extended opcode 1: End of Sequence


Contents of the .debug_str section (loaded from main):

  0x00000000 5f5f6f66 665f7400 5f5f6769 645f7400 __off_t.__gid_t.
  0x00000010 73745f63 74696d00 6c696273 2f737475 st_ctim.libs/stu
  0x00000020 62732e63 00474e55 20433137 2031332e bs.c.GNU C17 13.
  0x00000030 332e3120 32303234 30363134 202d6d63 3.1 20240614 -mc
  0x00000040 70753d63 6f727465 782d6d34 202d6d74 pu=cortex-m4 -mt
  0x00000050 68756d62 202d6d66 6c6f6174 2d616269 humb -mfloat-abi
  0x00000060 3d686172 64202d6d 6670753d 66707634 =hard -mfpu=fpv4
  0x00000070 2d73702d 64313620 2d6d6172 63683d61 -sp-d16 -march=a
  0x00000080 726d7637 652d6d2b 6670202d 67202d4f rmv7e-m+fp -g -O
  0x00000090 32006c6f 6e67206c 6f6e6720 756e7369 2.long long unsi
  0x000000a0 676e6564 20696e74 0073745f 626c6f63 gned int.st_bloc
  0x000000b0 6b73005f 5f696e74 5f6c6561 73743634 ks.__int_least64
  0x000000c0 5f74005f 65786974 006c6f6e 67206c6f _t._exit.long lo
  0x000000d0 6e672069 6e740073 745f696e 6f005f5f ng int.st_ino.__
  0x000000e0 6d6f6465 5f74005f 5f626c6b 636e745f mode_t.__blkcnt_
  0x000000f0 74005f6c 7365656b 005f6673 74617400 t._lseek._fstat.
  0x00000100 5f676574 70696400 73745f61 74696d00 _getpid.st_atim.
  0x00000110 636f756e 74005f5f 75696e74 33325f74 count.__uint32_t
  0x00000120 005f5f64 65765f74 0073745f 75696400 .__dev_t.st_uid.
  0x00000130 73745f73 70617265 34005f63 6c6f7365 st_spare4._close
  0x00000140 00776865 6e636500 73686f72 7420756e .whence.short un
  0x00000150 7369676e 65642069 6e74005f 5f6e6c69 signed int.__nli
  0x00000160 6e6b5f74 005f6973 61747479 002f5573 nk_t._isatty./Us
  0x00000170 6572732f 67756f73 696a6961 2f446573 ers/guosijia/Des
  0x00000180 6b746f70 2f54656c 65636f6d 2f636f75 ktop/Telecom/cou
  0x00000190 72732f73 652f7369 6a69612d 67756f2f rs/se/sijia-guo/
  0x000001a0 54500073 745f7369 7a65005f 77726974 TP.st_size._writ
  0x000001b0 65007374 5f6d6f64 65007476 5f6e7365 e.st_mode.tv_nse
  0x000001c0 63006c6f 6e672064 6f75626c 65007476 c.long double.tv
  0x000001d0 5f736563 005f5f62 6c6b7369 7a655f74 _sec.__blksize_t
  0x000001e0 0074696d 655f7400 5f726561 64007374 .time_t._read.st
  0x000001f0 5f6e6c69 6e6b0075 6e736967 6e656420 _nlink.unsigned 
  0x00000200 63686172 005f5f70 69645f74 0073686f char.__pid_t.sho
  0x00000210 72742069 6e740073 745f626c 6b73697a rt int.st_blksiz
  0x00000220 65007469 6d657370 6563005f 5f696e6f e.timespec.__ino
  0x00000230 5f740073 745f7264 6576005f 5f756964 _t.st_rdev.__uid
  0x00000240 5f74006f 66667365 74005f6b 696c6c00 _t.offset._kill.
  0x00000250 73745f67 69640073 745f6465 76005f73 st_gid.st_dev._s
  0x00000260 73697a65 5f740073 745f6d74 696d005f size_t.st_mtim._
  0x00000270 7362726b 006c6962 732f6372 74302e73 sbrk.libs/crt0.s
  0x00000280 00474e55 20415320 322e3432 2e300067 .GNU AS 2.42.0.g
  0x00000290 6c6f6261 6c5f7661 72310067 6c6f6261 lobal_var1.globa
  0x000002a0 6c5f7661 7232006d 61696e2e 63006d61 l_var2.main.c.ma
  0x000002b0 696e0066 69626f00 696e6669 6e690062 in.fibo.infini.b
  0x000002c0 73735f65 6e64005f 5f627569 6c74696e ss_end.__builtin
  0x000002d0 5f6d656d 73657400 5f5f6273 735f7374 _memset.__bss_st
  0x000002e0 6172745f 5f00696e 69745f62 7373005f art__.init_bss._
  0x000002f0 5f627373 5f656e64 5f5f006c 6962732f _bss_end__.libs/
  0x00000300 696e6974 2e63006d 656d636d 70006c69 init.c.memcmp.li
  0x00000310 62732f6d 656d6675 6e63732e 63007661 bs/memfuncs.c.va
  0x00000320 6c756500 64657374 006d656d 6d6f7665 lue.dest.memmove
  0x00000330 006d656d 63707900                   .memcpy.

Contents of the .debug_frame section (loaded from main):


00000000 0000000c ffffffff CIE
  Version:               1
  Augmentation:          ""
  Code alignment factor: 2
  Data alignment factor: -4
  Return address column: 14

  DW_CFA_def_cfa: r13 ofs 0

00000010 0000000c 00000000 FDE cie=00000000 pc=20000000..20000002

00000020 0000000c 00000000 FDE cie=00000000 pc=20000004..20000006

00000030 0000000c 00000000 FDE cie=00000000 pc=20000008..2000000a

00000040 0000000c 00000000 FDE cie=00000000 pc=2000000c..2000000e

00000050 0000000c 00000000 FDE cie=00000000 pc=20000010..20000012

00000060 0000000c 00000000 FDE cie=00000000 pc=20000014..20000018

00000070 0000000c 00000000 FDE cie=00000000 pc=20000018..2000001a

00000080 0000000c 00000000 FDE cie=00000000 pc=2000001c..20000020

00000090 0000000c 00000000 FDE cie=00000000 pc=20000020..20000022

000000a0 0000000c 00000000 FDE cie=00000000 pc=20000024..20000026

000000b0 0000000c ffffffff CIE
  Version:               1
  Augmentation:          ""
  Code alignment factor: 2
  Data alignment factor: -4
  Return address column: 14

  DW_CFA_def_cfa: r13 ofs 0

000000c0 0000000c 000000b0 FDE cie=000000b0 pc=2000003c..2000003e

000000d0 00000038 000000b0 FDE cie=000000b0 pc=20000040..200001ca
  DW_CFA_advance_loc: 16 to 20000050
  DW_CFA_def_cfa_offset: 36
  DW_CFA_offset: r4 at cfa-36
  DW_CFA_offset: r5 at cfa-32
  DW_CFA_offset: r6 at cfa-28
  DW_CFA_offset: r7 at cfa-24
  DW_CFA_offset: r8 at cfa-20
  DW_CFA_offset: r9 at cfa-16
  DW_CFA_offset: r10 at cfa-12
  DW_CFA_offset: r11 at cfa-8
  DW_CFA_offset: r14 at cfa-4
  DW_CFA_advance_loc: 6 to 20000056
  DW_CFA_def_cfa_offset: 112
  DW_CFA_advance_loc1: 360 to 200001be
  DW_CFA_remember_state
  DW_CFA_def_cfa_offset: 36
  DW_CFA_advance_loc: 4 to 200001c2
  DW_CFA_restore_state
  DW_CFA_advance_loc: 6 to 200001c8
  DW_CFA_def_cfa_offset: 0
  DW_CFA_restore: r4
  DW_CFA_restore: r5
  DW_CFA_restore: r6
  DW_CFA_restore: r7
  DW_CFA_restore: r8
  DW_CFA_restore: r9
  DW_CFA_restore: r10
  DW_CFA_restore: r11
  DW_CFA_restore: r14
  DW_CFA_nop

0000010c 00000014 000000b0 FDE cie=000000b0 pc=20000250..2000025c
  DW_CFA_advance_loc: 2 to 20000252
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r3 at cfa-8
  DW_CFA_offset: r14 at cfa-4
  DW_CFA_nop

00000124 0000000c ffffffff CIE
  Version:               1
  Augmentation:          ""
  Code alignment factor: 2
  Data alignment factor: -4
  Return address column: 14

  DW_CFA_def_cfa: r13 ofs 0

00000134 0000000c 00000124 FDE cie=00000124 pc=200001cc..200001f0

00000144 0000000c ffffffff CIE
  Version:               1
  Augmentation:          ""
  Code alignment factor: 2
  Data alignment factor: -4
  Return address column: 14

  DW_CFA_def_cfa: r13 ofs 0

00000154 0000000c 00000144 FDE cie=00000144 pc=200001f0..20000204

00000164 0000000c 00000144 FDE cie=00000144 pc=20000204..20000214

00000174 0000000c 00000144 FDE cie=00000144 pc=20000214..20000228

00000184 0000000c 00000144 FDE cie=00000144 pc=20000228..2000024e

Contents of the .debug_rnglists section (loaded from main):


 Table at Offset: 0:
  Length:          0x22
  DWARF version:   5
  Address size:    4
  Segment size:    0
  Offset entries:  0
    Offset   Begin    End
    0000000c 200000fa (base address)
    00000011 200000fa 200000fc 
    00000014 200000fe 20000122 
    00000017 <End of list>
    00000018 2000003c 200001ca 
    0000001f 20000250 2000025c 
    00000025 <End of list>
 Table at Offset: 0x26:
  Length:          0xf
  DWARF version:   5
  Address size:    4
  Segment size:    0
  Offset entries:  0
    Offset   Begin    End
    00000032 200001f0 2000024e 
    00000038 <End of list>

