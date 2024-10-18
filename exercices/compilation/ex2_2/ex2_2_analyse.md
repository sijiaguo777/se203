# Gcc Optimisation

## -Os

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

## -O0

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

## -O1

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

Il y a aussi deux fois de "Hello world! ". Une est stockée dans la section .rodata.str1.4 et l'autre dans .rodata. **str1.4** indique une organisation ou un format optimisé pour les chaînes de caractères (**str**) avec une certaine structure d’alignement (souvent 4 octets, d’où le **.4.**

```
Contents of section .rodata.str1.4:
 0000 48656c6c 6f20576f 726c6421 00000000  Hello World!....
 0010 78203d20 25642c20 79203d20 25642c20  x = %d, y = %d, 
 0020 7a203d20 25642c20 74203d20 25640a00  z = %d, t = %d..
Contents of section .rodata:
 0000 48656c6c 6f20576f 726c6421 0a00      Hello World!.. 
```

## -O2

Avec l’optimisation **-O2**, le compilateur essaie de maximiser l’efficacité du code généré. La séparation du code de démarrage dans **.text.startup** permet de minimiser la taille du segment principal **.text**, optimisant ainsi le code qui sera fréquemment exécuté, tout en isolant le code qui ne sera exécuté qu’une seule fois au lancement.

La section **.text.startup** est utilisée pour isoler le code de démarrage, car une fois que ce code est exécuté, il n’est plus nécessaire pour le reste de l’exécution du programme.

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

## Pourquoi il y a deux fois la même chaine?

- Parce que le compilateur ne fait pas d’efforts pour éliminer les redondances dans les données constantes, y compris les chaînes de caractères. Il ne tente pas de fusionner les occurrences identiques de chaînes constantes. Par conséquent, chaque fois que la chaîne "Hello World!" est utilisée dans le code, elle est stockée séparément dans la section .rodata.

## Est-ce vraiment la même chaîne?

- Il y a une différence entre les deux occurrences.

```
 0000 48656c6c 6f20576f 726c6421 0a000000  Hello World!....
 0010 48656c6c 6f20576f 726c6421 00000000  Hello World!....
```

La première occurrence est : "Hello World!\n" (notée avec 0a, qui correspond à un saut de ligne en hexadécimal).

La deuxième occurrence est : "Hello World!" sans saut de ligne (terminée par 00, qui correspond au caractère nul).

Le code machine désassemblé (Une partie) (C'est après qu'on a généré un executable...)

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

Le compilateur a utilisé la fonction `<puts>`  pour optimiser la fonction printf. 

Le code de machine désassemblé avant de link: 

```
Disassembly of section .text:

00000000 <main>:
   0:   e92d4800        push    {fp, lr}
   4:   e28db004        add     fp, sp, #4
   8:   e24dd010        sub     sp, sp, #16
   c:   e59f308c        ldr     r3, [pc, #140]  @ a0 <main+0xa0>
  10:   e3a0200c        mov     r2, #12
  14:   e5832000        str     r2, [r3]
  18:   e59f3084        ldr     r3, [pc, #132]  @ a4 <main+0xa4>
  1c:   e5d33000        ldrb    r3, [r3]
  20:   e2833001        add     r3, r3, #1
  24:   e20320ff        and     r2, r3, #255    @ 0xff
  28:   e59f3074        ldr     r3, [pc, #116]  @ a4 <main+0xa4>
  2c:   e5c32000        strb    r2, [r3]
  30:   e59f306c        ldr     r3, [pc, #108]  @ a4 <main+0xa4>
  34:   e5d33000        ldrb    r3, [r3]
  38:   e1a02003        mov     r2, r3
  3c:   e59f305c        ldr     r3, [pc, #92]   @ a0 <main+0xa0>
  40:   e5933000        ldr     r3, [r3]
  44:   e1a03803        lsl     r3, r3, #16
  48:   e1a03823        lsr     r3, r3, #16
  4c:   e0823003        add     r3, r2, r3
  50:   e14b30b6        strh    r3, [fp, #-6]
  54:   e59f004c        ldr     r0, [pc, #76]   @ a8 <main+0xa8>
  58:   ebfffffe        bl      0 <puts>
  5c:   e59f3048        ldr     r3, [pc, #72]   @ ac <main+0xac>
  60:   e5931000        ldr     r1, [r3]
  64:   e59f3034        ldr     r3, [pc, #52]   @ a0 <main+0xa0>
  68:   e5932000        ldr     r2, [r3]
  6c:   e59f3030        ldr     r3, [pc, #48]   @ a4 <main+0xa4>
  70:   e5d33000        ldrb    r3, [r3]
  74:   e1a00003        mov     r0, r3
  78:   e15b30b6        ldrh    r3, [fp, #-6]
  7c:   e58d3000        str     r3, [sp]
  80:   e1a03000        mov     r3, r0
  84:   e59f0024        ldr     r0, [pc, #36]   @ b0 <main+0xb0>
  88:   ebfffffe        bl      0 <printf>
  8c:   e3a03000        mov     r3, #0
  90:   e1a00003        mov     r0, r3
  94:   e24bd004        sub     sp, fp, #4
  98:   e8bd4800        pop     {fp, lr}
  9c:   e12fff1e        bx      lr
  a0:   00000000        .word   0x00000000
  a4:   00000004        .word   0x00000004
  a8:   00000010        .word   0x00000010
  ac:   00000000        .word   0x00000000
  b0:   00000020        .word   0x00000020
```

```
Contents of section .rodata:
 0000 48656c6c 6f20576f 726c6421 0a000000  Hello World!....
 0010 48656c6c 6f20576f 726c6421 00000000  Hello World!....
 0020 78203d20 25642c20 79203d20 25642c20  x = %d, y = %d, 
 0030 7a203d20 25642c20 74203d20 25640a00  z = %d, t = %d..

```

```
  a0:   00000000        .word   0x00000000
  a4:   00000004        .word   0x00000004
  a8:   00000010        .word   0x00000010
  ac:   00000000        .word   0x00000000
  b0:   00000020        .word   0x00000020
```

L'address 0x00000010 stockée dans a8 est load dans r0 pour printf, ce qui correspond à l'address de la deuxième chaîne dans la section .rodata. Donc on peut obverser que c'est **la deuxième chaîne** que la fonction printf (puts) a utilisé.

## Analyse de taille des sections:

### Pour Os:

La taille de la section .text est zero, car le compilateur se concentre sur la réduction de la taille du binaire.

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

### Pour O0:

Le niveau -O0 n’applique aucune optimisation, donc le code qu'il a généré a un volume plus grand, notamment pour les instructions .text et les données en lecture seule dans .rodata.

```
.text         000000b4
.data         00000004
.bss          00000005
.rodata       00000040
.comment      00000046
.ARM.attributes 0000002a
```

### Pour O1:

```
.text         0000006c  # Code plus optimisé mais encore non séparé
.data         00000004
.bss          00000005
.rodata.str1.4 00000030
.rodata       0000000e
```

### Pour O2:

```
.text         00000000  # Code de démarrage déplacé dans .text.startup
.text.startup 0000006c
.data         00000004
.bss          00000005
.rodata.str1.4 00000030
.rodata       0000000e
```

## const -> static const

Avec l’option d’optimisation **-O0**, les contenus des sections **.data** et **.rodata** restent inchangés par rapport à la question précédente. Avec les options d’optimisation **-O1**, **-O2** et **-Os**, GCC ne conserve plus la chaîne originale “Hello World!” dans la section **.rodata**. À la place, il n’en garde qu’une seule copie dans une section comme **.rodata.str1.4** ou **.rodata.str1.1**.

C'est parce que en ajoutant le mot-clé **static**, la chaîne **"Hello World!\n"** est maintenant **locale** au fichier où elle est définie. Cela signifie qu’elle ne peut être utilisée qu’à l’intérieur de ce fichier et ne peut pas être accédée de l’extérieur. Le compilateur, sachant qu’il n’y a pas de risque d’utilisation externe, peut optimiser l’utilisation de cette chaîne.

exemple:

2-2-1 O1

```
Contents of section .rodata.str1.4:
 0000 48656c6c 6f20576f 726c6421 00000000  Hello World!....
 0010 78203d20 25642c20 79203d20 25642c20  x = %d, y = %d, 
 0020 7a203d20 25642c20 74203d20 25640a00  z = %d, t = %d..
Contents of section .rodata:
 0000 48656c6c 6f20576f 726c6421 0a00      Hello World!.. 
```

2-2-2 O1

```
Contents of section .rodata.str1.4:
 0000 48656c6c 6f20576f 726c6421 00000000  Hello World!....
 0010 78203d20 25642c20 79203d20 25642c20  x = %d, y = %d, 
 0020 7a203d20 25642c20 74203d20 25640a00  z = %d, t = %d..
```

## const char mesg[ ] -> const char *mesg -> const char * const mesg

Avec O1:

**const char *mesg**

Contents of section .rodata.str1.4:
 0000 78203d20 25642c20 79203d20 25642c20  x = %d, y = %d,
 0010 7a203d20 25642c20 74203d20 25640a00  z = %d, t = %d..
 0020 48656c6c 6f20576f 726c6421 0a00      Hello World!..

**const char * const mesg**

Contents of section .rodata.str1.4:
 0000 48656c6c 6f20576f 726c6421 00000000  Hello World!....
 0010 78203d20 25642c20 79203d20 25642c20  x = %d, y = %d,
 0020 7a203d20 25642c20 74203d20 25640a00  z = %d, t = %d..
 0030 48656c6c 6f20576f 726c6421 0a00      Hello World!..
Contents of section .rodata:
 0000 30000000                             0...

Avec O2

**const char *mesg**

Contents of section .rodata.str1.4:
 0000 78203d20 25642c20 79203d20 25642c20  x = %d, y = %d,
 0010 7a203d20 25642c20 74203d20 25640a00  z = %d, t = %d..
 0020 48656c6c 6f20576f 726c6421 0a00      Hello World!..

**const char * const mesg**

Contents of section .rodata.str1.4:
 0000 48656c6c 6f20576f 726c6421 00000000  Hello World!....
 0010 78203d20 25642c20 79203d20 25642c20  x = %d, y = %d,
 0020 7a203d20 25642c20 74203d20 25640a00  z = %d, t = %d..
 0030 48656c6c 6f20576f 726c6421 0a00      Hello World!.

Avec Os:

const char *mesg

Contents of section .rodata.str1.1:
 0000 78203d20 25642c20 79203d20 25642c20  x = %d, y = %d,
 0010 7a203d20 25642c20 74203d20 25640a00  z = %d, t = %d..
 0020 48656c6c 6f20576f 726c6421 0a00      Hello World!..

const char * const mesg

Contents of section .rodata.str1.1:
 0000 48656c6c 6f20576f 726c6421 0078203d  Hello World!.x =
 0010 2025642c 2079203d 2025642c 207a203d   %d, y = %d, z =
 0020 2025642c 2074203d 2025640a 0048656c   %d, t = %d..Hel
 0030 6c6f2057 6f726c64 210a00             lo World!..

Dans les cas d'optimistaion Os, O1, O2, la chaîne est dupliquée si elle est de type const char * const mesg, mais pas dupliquée avec le type const char *mesg.
