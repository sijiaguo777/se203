#include "matrix.h"
#include "uart.h"
#include "stm32l475xx.h"

void pause(int time)
{
    const int sys_period = 25; // 1/40MHz = 25ns
    for (int i = 0; i < (time / sys_period); i++)
    {
        asm volatile("nop");
    }
}

void matrix_init()
{
    // Activer les horloges des ports A, B et C
    RCC->AHB2ENR |= RCC_AHB2ENR_GPIOAEN;
    RCC->AHB2ENR |= RCC_AHB2ENR_GPIOBEN;
    RCC->AHB2ENR |= RCC_AHB2ENR_GPIOCEN;

    // Configurer les broches du DM163
    GPIOC->MODER &= ~(GPIO_MODER_MODE3_Msk | GPIO_MODER_MODE4_Msk | GPIO_MODER_MODE5_Msk);        // Effacer les bits de mode
    GPIOC->MODER |= (GPIO_MODER_MODE3_0 | GPIO_MODER_MODE4_0 | GPIO_MODER_MODE5_0);               // Définir en mode sortie
    GPIOC->OSPEEDR |= (GPIO_OSPEEDER_OSPEEDR3 | GPIO_OSPEEDER_OSPEEDR4 | GPIO_OSPEEDER_OSPEEDR5); // Définir à la vitesse maximale

    GPIOB->MODER &= ~(GPIO_MODER_MODE1_Msk | GPIO_MODER_MODE2_Msk | GPIO_MODER_MODE0_Msk);        // Effacer les bits de mode
    GPIOB->MODER |= (GPIO_MODER_MODE1_0 | GPIO_MODER_MODE2_0 | GPIO_MODER_MODE0_0);               // Définir en mode sortie
    GPIOB->OSPEEDR |= (GPIO_OSPEEDER_OSPEEDR1 | GPIO_OSPEEDER_OSPEEDR2 | GPIO_OSPEEDER_OSPEEDR0); // Définir à la vitesse maximale

    // Configurer les lignes de la matrice (C0 à C7)
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

    pause(25);

    RST(1);

    init_bank0();
}

void pulse_SCK()
{
    SCK(0);
    pause(25); // 1 "nop" = 25ns
    SCK(1);
    pause(25);
    SCK(0);
    pause(25);
}

void pulse_LAT()
{
    LAT(1);
    pause(25); 
    LAT(0);
    pause(25); 
    LAT(1);
    pause(25); 
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
        if(i == 6) deactivate_rows();
    }
    pulse_LAT();
    activate_row(row);
    
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
        pause(25); // Pause pour une courte durée 1ms
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
        pause(25); // Pause pour une courte durée 1ms
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
        pause(25); // Pause pour une courte durée 25ns
        deactivate_rows();
    }
}

void display_image_static(uint8_t *data_start, uint8_t *data_end, int data_size)
{
    rgb_color data[8][8];
    uint8_t dataImageStatic[data_size];

    for (uint8_t *ptr = data_start; ptr < data_end; ptr++)
    {
        dataImageStatic[ptr - data_start] = *ptr;
    }

    for (int row = 0; row < 8; row++)
    {
        for (int col = 0; col < 8; col++)
        {
            data[row][col].r = dataImageStatic[8 * 3 * row + col * 3 + 0];
            data[row][col].g = dataImageStatic[8 * 3 * row + col * 3 + 1];
            data[row][col].b = dataImageStatic[8 * 3 * row + col * 3 + 2];
        }
        mat_set_row(row, data[row]);
    }
}

extern uint8_t frame[8 * 8 * 3];

void print_frame(){

    static int row = 0;
    rgb_color data[8];

    for (int col = 0; col < 8; col++)
    {
        data[col].r = frame[8 * 3 * row + 3 * col + 0];
        data[col].g = frame[8 * 3 * row + 3 * col + 1];
        data[col].b = frame[8 * 3 * row + 3 * col + 2];
        }
        mat_set_row(row, data);
        row++;
        if (row == 8){
            row = 0;
        }
}
