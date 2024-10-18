-Os

```
Sections:
Idx Name          Size      VMA       LMA       File off  Algn
  0 .text         00000000  00000000  00000000  00000034  20
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
  1 .data         00000004  00000000  00000000  00000034  22
                  CONTENTS, ALLOC, LOAD, DATA
  2 .bss          00000005  00000000  00000000  00000038  22
                  ALLOC
  3 .rodata.str1.1 0000002d  00000000  00000000  00000038  20
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  4 .text.startup 00000068  00000000  00000000  00000068  22
                  CONTENTS, ALLOC, LOAD, RELOC, READONLY, CODE
  5 .rodata       0000000e  00000000  00000000  000000d0  20
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  6 .comment      00000046  00000000  00000000  000000de  20
                  CONTENTS, READONLY
  7 .ARM.attributes 0000002a  00000000  00000000  00000124  20
                  CONTENTS, READONLY
```

-O0

```
Sections:
Idx Name          Size      VMA       LMA       File off  Algn
  0 .text         000000b4  00000000  00000000  00000034  22
                  CONTENTS, ALLOC, LOAD, RELOC, READONLY, CODE
  1 .data         00000004  00000000  00000000  000000e8  22
                  CONTENTS, ALLOC, LOAD, DATA
  2 .bss          00000005  00000000  00000000  000000ec  22
                  ALLOC
  3 .rodata       00000040  00000000  00000000  000000ec  22
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  4 .comment      00000046  00000000  00000000  0000012c  20
                  CONTENTS, READONLY
  5 .ARM.attributes 0000002a  00000000  00000000  00000172  20
                  CONTENTS, READONLY
```

-O1

```
Sections:
Idx Name          Size      VMA       LMA       File off  Algn
  0 .text         0000006c  00000000  00000000  00000034  22
                  CONTENTS, ALLOC, LOAD, RELOC, READONLY, CODE
  1 .data         00000004  00000000  00000000  000000a0  22
                  CONTENTS, ALLOC, LOAD, DATA
  2 .bss          00000005  00000000  00000000  000000a4  22
                  ALLOC
  3 .rodata.str1.4 00000030  00000000  00000000  000000a4  22
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  4 .rodata       0000000e  00000000  00000000  000000d4  22
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  5 .comment      00000046  00000000  00000000  000000e2  20
                  CONTENTS, READONLY
  6 .ARM.attributes 0000002a  00000000  00000000  00000128  2**0
                  CONTENTS, READONLY
```



```
Contents of section .rodata.str1.4:
 0000 48656c6c 6f20576f 726c6421 00000000  Hello World!....
 0010 78203d20 25642c20 79203d20 25642c20  x = %d, y = %d, 
 0020 7a203d20 25642c20 74203d20 25640a00  z = %d, t = %d..
Contents of section .rodata:
 0000 48656c6c 6f20576f 726c6421 0a00      Hello World!.. 
```



-O2

```
Sections:
Idx Name          Size      VMA       LMA       File off  Algn
  0 .text         00000000  00000000  00000000  00000034  20
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
  1 .data         00000004  00000000  00000000  00000034  22
                  CONTENTS, ALLOC, LOAD, DATA
  2 .bss          00000005  00000000  00000000  00000038  22
                  ALLOC
  3 .rodata.str1.4 00000030  00000000  00000000  00000038  22
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  4 .text.startup 0000006c  00000000  00000000  00000068  22
                  CONTENTS, ALLOC, LOAD, RELOC, READONLY, CODE
  5 .rodata       0000000e  00000000  00000000  000000d4  22
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  6 .comment      00000046  00000000  00000000  000000e2  20
                  CONTENTS, READONLY
  7 .ARM.attributes 0000002a  00000000  00000000  00000128  20
                  CONTENTS, READONLY
```

Analyse:

Pour Os: La taille de la section .text est zero, car le compilateur se concentre sur la réduction de la taille du binaire.

```
.text         00000000
.data         00000004
.bss          00000005
.rodata.str1.1 0000002d
.text.startup 00000068
.rodata       0000000e
.comment      00000046
.ARM.attributes 0000002a
```

Pour O0: Le niveau -O0 n’applique aucune optimisation, donc le code qu'il a généré a un volume plus grand, notamment pour les instructions .text et les données en lecture seule dans .rodata.

```
.text         000000b4
.data         00000004
.bss          00000005
.rodata       00000040
.comment      00000046
.ARM.attributes 0000002a
```

Pourquoi il y a deux fois la même chaine?

- Parce que le compilateur ne fait pas d’efforts pour éliminer les redondances dans les données constantes, y compris les chaînes de caractères. Il ne tente pas de fusionner les occurrences identiques de chaînes constantes. Par conséquent, chaque fois que la chaîne "Hello World!" est utilisée dans le code, elle est stockée séparément dans la section .rodata.

Est-ce vraiment la même chaîne?

- Il y a une différence entre les deux occurrences.

```
 0000 48656c6c 6f20576f 726c6421 0a000000  Hello World!....
 0010 48656c6c 6f20576f 726c6421 00000000  Hello World!....
```

La première occurrence est : "Hello World!\n" (notée avec 0a, qui correspond à un saut de ligne en hexadécimal).

La deuxième occurrence est : "Hello World!" sans saut de ligne (terminée par 00, qui correspond au caractère nul).

Le code machine désassemblé (Une partie)

```
00008230 <main>:

int32_t x = 34;
int32_t y;
const char mesg[] = "Hello World!\n";

int main() {
    8230:	b530      	push	{r4, r5, lr}
    8232:	b083      	sub	sp, #12
    static uint8_t z;
    uint16_t t;

    y = 12;
    8234:	4d0c      	ldr	r5, [pc, #48]	@ (8268 <main+0x38>)
    8236:	230c      	movs	r3, #12
    8238:	602b      	str	r3, [r5, #0]
    z = z + 1;
    823a:	792b      	ldrb	r3, [r5, #4]
    823c:	3301      	adds	r3, #1
    823e:	061b      	lsls	r3, r3, #24
    8240:	0e1c      	lsrs	r4, r3, #24
    8242:	712c      	strb	r4, [r5, #4]
    t = y+z;
    8244:	340c      	adds	r4, #12

    printf(mesg);
    8246:	4809      	ldr	r0, [pc, #36]	@ (826c <main+0x3c>)
    8248:	f000 f8f6 	bl	8438 <puts>
    printf("x = %d, y = %d, z = %d, t = %d\n",
    824c:	792b      	ldrb	r3, [r5, #4]
    824e:	682a      	ldr	r2, [r5, #0]
    8250:	4907      	ldr	r1, [pc, #28]	@ (8270 <main+0x40>)
    8252:	6809      	ldr	r1, [r1, #0]
    8254:	4807      	ldr	r0, [pc, #28]	@ (8274 <main+0x44>)
    8256:	9400      	str	r4, [sp, #0]
    8258:	f000 f88a 	bl	8370 <printf>
           x, y, z, t);
    return 0;
    825c:	2000      	movs	r0, #0
    825e:	b003      	add	sp, #12
    8260:	bc30      	pop	{r4, r5}
    8262:	bc02      	pop	{r1}
    8264:	4708      	bx	r1
    8266:	46c0      	nop			@ (mov r8, r8)
    8268:	0001455c 	.word	0x0001455c
    826c:	00012094 	.word	0x00012094
    8270:	00013d5c 	.word	0x00013d5c
    8274:	000120a4 	.word	0x000120a4
```











Pour O1: L’optimisation -O1 réduit efficacement la taille du binaire. La taille de la section .text diminue et une nouvelle section optimisée .rodata.str1.4 apparaît.

```
.text         0000006c
.data         00000004
.bss          00000005
.rodata.str1.4 00000030
.rodata       0000000e
.comment      00000046
.ARM.attributes 0000002a
```







Pour O2:
.text         00000000
.data         00000004
.bss          00000005
.rodata.str1.4 00000030
.text.startup 0000006c
.rodata       0000000e
.comment      00000046
.ARM.attributes 0000002a

const -> static const

sans optimisation
tp-3a101-07% arm-none-eabi-objdump -s ex3.o                                 ~/Desktop/ex-compilation
ex3.o:     file format elf32-littlearm
Contents of section .text:
 0000 00482de9 04b08de2 10d04de2 8c309fe5  .H-.......M..0..
 0010 0c20a0e3 002083e5 84309fe5 0030d3e5  . ... ...0...0..
 0020 013083e2 ff2003e2 74309fe5 0020c3e5  .0... ..t0... ..
 0030 6c309fe5 0030d3e5 0320a0e1 5c309fe5  l0...0... ..\0..
 0040 003093e5 0338a0e1 2338a0e1 033082e0  .0...8..#8...0..
 0050 b6304be1 4c009fe5 feffffeb 48309fe5  .0K.L.......H0..
 0060 001093e5 34309fe5 002093e5 30309fe5  ....40... ..00..
 0070 0030d3e5 0300a0e1 b6305be1 00308de5  .0.......0[..0..
 0080 0030a0e1 24009fe5 feffffeb 0030a0e3  .0..$........0..
 0090 0300a0e1 04d04be2 0048bde8 1eff2fe1  ......K..H..../.
 00a0 00000000 04000000 10000000 00000000  ................
 00b0 20000000                              ...
Contents of section .data:
 0000 22000000                             "...
Contents of section .rodata:
 0000 48656c6c 6f20576f 726c6421 0a000000  Hello World!....
 0010 48656c6c 6f20576f 726c6421 00000000  Hello World!....
 0020 78203d20 25642c20 79203d20 25642c20  x = %d, y = %d,
 0030 7a203d20 25642c20 74203d20 25640a00  z = %d, t = %d..
Contents of section .comment:
 0000 00474343 3a202847 4e552920 31322e33  .GCC: (GNU) 12.3
 0010 2e312032 30323330 36323600           .1 20230626.
Contents of section .ARM.attributes:
 0000 41290000 00616561 62690001 1f000000  A)...aeabi......
 0010 05345400 06020801 09011204 14011501  .4T.............
 0020 17031801 19011a01 1e06               ..........

tp-3a101-07% arm-none-eabi-gcc -c ex3.c                                     ~/Desktop/ex-compilation
tp-3a101-07% arm-none-eabi-objdump -t ex3.o                                 ~/Desktop/ex-compilation

ex3.o:     file format elf32-littlearm

SYMBOL TABLE:
00000000 l    df *ABS*  00000000 ex3.c
00000000 l    d  .text  00000000 .text
00000000 l    d  .data  00000000 .data
00000000 l    d  .bss   00000000 .bss
00000000 l    d  .rodata        00000000 .rodata
00000000 l     O .rodata        0000000e mesg
00000004 l       .bss   00000001 z.0
00000000 l    d  .comment       00000000 .comment
00000000 l    d  .ARM.attributes        00000000 .ARM.attributes
00000000 g     O .data  00000004 x
00000000 g     O .bss   00000004 y
00000000 g     F .text  000000b4 main
00000000         *UND*  00000000 puts
00000000         *UND*  00000000 printf

-O0
tp-3a101-07% arm-none-eabi-gcc -O0 -c ex3.c                                 ~/Desktop/ex-compilation
tp-3a101-07% arm-none-eabi-objdump -t ex3.o                                 ~/Desktop/ex-compilation

ex3.o:     file format elf32-littlearm

SYMBOL TABLE:
00000000 l    df *ABS*  00000000 ex3.c
00000000 l    d  .text  00000000 .text
00000000 l    d  .data  00000000 .data
00000000 l    d  .bss   00000000 .bss
00000000 l    d  .rodata        00000000 .rodata
00000000 l     O .rodata        0000000e mesg
00000004 l       .bss   00000001 z.0
00000000 l    d  .comment       00000000 .comment
00000000 l    d  .ARM.attributes        00000000 .ARM.attributes
00000000 g     O .data  00000004 x
00000000 g     O .bss   00000004 y
00000000 g     F .text  000000b4 main
00000000         *UND*  00000000 puts
00000000         *UND*  00000000 printf

-O1
SYMBOL TABLE:
00000000 l    df *ABS*  00000000 ex3.c
00000000 l    d  .text  00000000 .text
00000000 l    d  .data  00000000 .data
00000000 l    d  .bss   00000000 .bss
00000000 l    d  .rodata.str1.4 00000000 .rodata.str1.4
00000004 l     O .bss   00000001 z.0
00000000 l    d  .comment       00000000 .comment
00000000 l    d  .ARM.attributes        00000000 .ARM.attributes
00000000 g     F .text  0000006c main
00000000         *UND*  00000000 puts
00000000         *UND*  00000000 printf
00000000 g     O .bss   00000004 y
00000000 g     O .data  00000004 x

-O2
SYMBOL TABLE:
00000000 l    df *ABS*  00000000 ex3.c
00000000 l    d  .text  00000000 .text
00000000 l    d  .data  00000000 .data
00000000 l    d  .bss   00000000 .bss
00000000 l    d  .rodata.str1.4 00000000 .rodata.str1.4
00000000 l    d  .text.startup  00000000 .text.startup
00000004 l     O .bss   00000001 z.0
00000000 l    d  .comment       00000000 .comment
00000000 l    d  .ARM.attributes        00000000 .ARM.attributes
00000000 g     F .text.startup  0000006c main
00000000         *UND*  00000000 puts
00000000         *UND*  00000000 printf
00000000 g     O .bss   00000004 y
00000000 g     O .data  00000004 x

-Os
SYMBOL TABLE:
00000000 l    df *ABS*  00000000 ex3.c
00000000 l    d  .text  00000000 .text
00000000 l    d  .data  00000000 .data
00000000 l    d  .bss   00000000 .bss
00000000 l    d  .rodata.str1.1 00000000 .rodata.str1.1
00000000 l    d  .text.startup  00000000 .text.startup
00000004 l     O .bss   00000001 z.0
00000000 l    d  .comment       00000000 .comment
00000000 l    d  .ARM.attributes        00000000 .ARM.attributes
00000000 g     F .text.startup  00000068 main
00000000         *UND*  00000000 puts
00000000         *UND*  00000000 printf
00000000 g     O .bss   00000004 y
00000000 g     O .data  00000004 x
