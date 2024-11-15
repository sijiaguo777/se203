PREFIX		= arm-none-eabi-
AS    		= $(PREFIX)as
LD    		= $(PREFIX)ld
GDB   		= $(PREFIX)gdb
CC	  		= $(PREFIX)gcc

LIBS_DIR = libs
CMSIS_INCLUDE_DIR = CMSIS/Include
CMSIS_DEVICE_INCLUDE_DIR = CMSIS/Device/ST/STM32L4xx/Include

CFLAGS = -g -O1 -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16
CFLAGS += -I$(LIBS_DIR) -I$(CMSIS_INCLUDE_DIR) -I$(CMSIS_DEVICE_INCLUDE_DIR)

LDFLAGS = -T ld_ram.lds -nostdlib -ffreestanding -Wl,--no-warn-rwx-segments
ASFLAGS = -g -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16

ASSRCS = libs/crt0.s
SRCS = irq.c led.c uart.c buttons.c timer.c matrix.c clocks.c main.c libs/memfuncs.c libs/init.c

OBJS = $(SRCS:.c=.o)
OBJS += $(ASSRCS:.s=.o) 

DEPS = $(SRCS:.c=.d) 

TARGET = main

all: $(TARGET)

$(TARGET): $(OBJS) 
	$(CC) $(CFLAGS) $(LDFLAGS) $(OBJS) -o $@

%.o: %.c
	$(CC) $(CFLAGS) -MMD -c $< -o $@

%.o: %.s
	$(AS) $(ASFLAGS) -c $< -o $@

image.o:
	arm-none-eabi-objcopy -I binary -O elf32-littlearm -B arm image.raw image.o


-include $(DEPS)

.PHONY: startgdbserver clean

startgdbserver:
	JLinkGDBServer -device STM32L475VG -endian little -if SWD -speed auto -ir -LocalhostOnly

clean:
	rm -f $(OBJS) $(TARGET) 
	find . -name "*.d" -type f -delete
	