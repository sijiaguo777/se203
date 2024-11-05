#include "matrix.h"
#include "stm32l4xx.h"

void pause(int time)
{
    const int sys_period = 12.5; // 80MHz
    for (int i = 0; i < (int)(time / sys_period); i++)
    {
        asm volatile("nop");
    }
}

void matrix_init()
{
    // met en marche les horloges des ports A, B et C
    RCC->AHB2ENR |= RCC_AHB2ENR_GPIOAEN;
    RCC->AHB2ENR |= RCC_AHB2ENR_GPIOBEN;
    RCC->AHB2ENR |= RCC_AHB2ENR_GPIOCEN;

    // configure les broches du DM163
    GPIOC->MODER &= ~(GPIO_MODER_MODE3_Msk | GPIO_MODER_MODE4_Msk | GPIO_MODER_MODE5_Msk);        // Effacer les bits de mode
    GPIOC->MODER |= (GPIO_MODER_MODE3_0 | GPIO_MODER_MODE4_0 | GPIO_MODER_MODE5_0);               // Définir en mode sortie
    GPIOC->OSPEEDR |= (GPIO_OSPEEDER_OSPEEDR3 | GPIO_OSPEEDER_OSPEEDR4 | GPIO_OSPEEDER_OSPEEDR5); // Définir à la vitesse maximale

    GPIOB->MODER &= ~(GPIO_MODER_MODE1_Msk | GPIO_MODER_MODE2_Msk | GPIO_MODER_MODE0_Msk);        // Effacer les bits de mode
    GPIOB->MODER |= (GPIO_MODER_MODE1_0 | GPIO_MODER_MODE2_0 | GPIO_MODER_MODE0_0);               // Définir en mode sortie
    GPIOB->OSPEEDR |= (GPIO_OSPEEDER_OSPEEDR1 | GPIO_OSPEEDER_OSPEEDR2 | GPIO_OSPEEDER_OSPEEDR0); // Définir à la vitesse maximale

    // configure les lignes de la matrice (C0 à C7)
    GPIOA->MODER &= ~(GPIO_MODER_MODE4_Msk | GPIO_MODER_MODE15_Msk | GPIO_MODER_MODE2_Msk |
                      GPIO_MODER_MODE7_Msk | GPIO_MODER_MODE6_Msk | GPIO_MODER_MODE5_Msk | GPIO_MODER_MODE3_Msk); // Effacer les bits de mode
    GPIOA->MODER |= (GPIO_MODER_MODE4_0 | GPIO_MODER_MODE15_0 | GPIO_MODER_MODE2_0 |
                     GPIO_MODER_MODE7_0 | GPIO_MODER_MODE6_0 | GPIO_MODER_MODE5_0 | GPIO_MODER_MODE3_0); // Définir en mode sortie
    GPIOA->OSPEEDR |= (GPIO_OSPEEDER_OSPEEDR4 | GPIO_OSPEEDER_OSPEEDR15 | GPIO_OSPEEDER_OSPEEDR2 |
                       GPIO_OSPEEDER_OSPEEDR7 | GPIO_OSPEEDER_OSPEEDR6 | GPIO_OSPEEDER_OSPEEDR5 | GPIO_OSPEEDER_OSPEEDR3); // Définir à la vitesse maximale

    // Initialisation
    RST(0);
    LAT(1);
    SB(1);
    SCK(0);
    SDA(0);
    ROW0(0);
    ROW1(0);
    ROW2(0);
    ROW3(0);
    ROW4(0);
    ROW5(0);
    ROW6(0);
    ROW7(0);

    pause(10000);

    RST(1);

    init_bank0();
}

void pulse_SCK()
{
    SCK(0);
    pause(10000); 
    SCK(1);
    pause(10000); 
    SCK(0);
    pause(10000);
}

void pulse_LAT()
{
    LAT(1);
    pause(10000); // 1ms
    LAT(0);
    pause(10000); // 1ms
    LAT(1);
    pause(10000); // 1ms
}

void deactivate_rows()
{
    ROW0(0);
    ROW1(0);
    ROW2(0);
    ROW3(0);
    ROW4(0);
    ROW5(0);
    ROW6(0);
    ROW7(0);
}

void activate_row(int row)
{
    switch (row)
    {
    case 0:
        ROW0(1);
        break;
    case 1:
        ROW1(1);
        break;
    case 2:
        ROW2(1);
        break;
    case 3:
        ROW3(1);
        break;
    case 4:
        ROW4(1);
        break;
    case 5:
        ROW5(1);
        break;
    case 6:
        ROW6(1);
        break;
    case 7:
        ROW7(1);
        break;
    }
}

void send_byte(uint8_t val)
{
    for (int i = 0; i < 8; i++)
    {
        SDA(val & 0x80);
        pulse_SCK();
        val <<= 1;
    }
}

void mat_set_row(int row, const rgb_color *val)
{
    for (int i = 7; i >= 0; i--)
    {
        send_byte(val[i].b);
        send_byte(val[i].g);
        send_byte(val[i].r);
    }
    activate_row(row);
    pulse_LAT();
}

void init_bank0()
{
    deactivate_rows();
    SB(0); // Sélectionner BANK0
    for (int i = 0; i < 192; i++)
    {                // 192 bits (8 rangées * 8 colonnes * 3 couleurs)
        SDA(1);      // Définir le bit de données à 1
        pulse_SCK(); // Impulsion de l'horloge
    }
    pulse_LAT(); // Verrouiller les données
    SB(1);       // Désélectionner BANK0
}

void test_pixels()
{
    rgb_color pixels[8][8];

    // Initialiser tous les pixels à éteint
    for (int row = 0; row < 8; row++)
    {
        for (int col = 0; col < 8; col++)
        {
            pixels[row][col].r = 0;
            pixels[row][col].g = 0;
            pixels[row][col].b = 0;
        }
    }

    // Tester le gradient bleu
    for (int row = 0; row < 8; row++)
    {
        for (int col = 0; col < 8; col++)
        {
            pixels[row][col].b = col * 31 + 1; // Augmenter l'intensité du bleu
        }
        mat_set_row(row, pixels[row]);
        pause(10000000); // Pause pour une courte durée 1ms
        deactivate_rows();
    }

    // Initialiser tous les pixels à éteint
    for (int row = 0; row < 8; row++)
    {
        for (int col = 0; col < 8; col++)
        {
            pixels[row][col].r = 0;
            pixels[row][col].g = 0;
            pixels[row][col].b = 0;
        }
    }

    // Tester le gradient vert
    for (int row = 0; row < 8; row++)
    {
        for (int col = 0; col < 8; col++)
        {
            pixels[row][col].g = col * 31 + 1; // Augmenter l'intensité du vert
        }
        mat_set_row(row, pixels[row]);
        pause(10000000); // Pause pour une courte durée 1ms
        deactivate_rows();
    }

    // Initialiser tous les pixels à éteint
    for (int row = 0; row < 8; row++)
    {
        for (int col = 0; col < 8; col++)
        {
            pixels[row][col].r = 0;
            pixels[row][col].g = 0;
            pixels[row][col].b = 0;
        }
    }

    // Tester le gradient rouge
    for (int row = 0; row < 8; row++)
    {
        for (int col = 0; col < 8; col++)
        {
            pixels[row][col].r = col * 31 + 1; // Augmenter l'intensité du rouge
        }
        mat_set_row(row, pixels[row]);
        pause(10000000); // Pause pour une courte durée 1ms
        deactivate_rows();
    }
}

void test_row_7()
{

    rgb_color row7[8];

    for (int col = 0; col < 8; col++)
    {
        row7[col].r = 255; // 红色最大亮度
        row7[col].g = 0;   // 绿色关闭
        row7[col].b = 0;   // 蓝色关闭
    }

    mat_set_row(7, row7);
    pause(10000000); // Pause pour une courte durée 1ms
    deactivate_rows();
}

void test_row_6()
{
    rgb_color row6[8];

    for (int col = 0; col < 8; col++)
    {
        row6[col].r = 255; // 红色最大亮度
        row6[col].g = 0;   // 绿色关闭
        row6[col].b = 0;   // 蓝色关闭
    }


    mat_set_row(6, row6);
    pause(10000000); // Pause pour une courte durée 1ms
    deactivate_rows();
}

int main()
{
    matrix_init();
    test_row_7();
    test_row_6();
    test_pixels();
    return 0;
}
