PREFIX		= arm-none-eabi-
AS    		= $(PREFIX)as
LD    		= $(PREFIX)ld
GDB   		= $(PREFIX)gdb
CC	  		= $(PREFIX)gcc


LIBS_DIR = libs
CMSIS_INCLUDE_DIR = CMSIS/Include
CMSIS_DEVICE_INCLUDE_DIR = CMSIS/Device/ST/STM32L4xx/Include

CFLAGS = -g -O2 -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16
CFLAGS += -I$(LIBS_DIR) -Iclocks -I$(CMSIS_INCLUDE_DIR) -I$(CMSIS_DEVICE_INCLUDE_DIR)
LDFLAGS = -T ld_ram.lds -nostdlib -ffreestanding
ASFLAGS = -g -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16

ASSRCS = libs/crt0.s
SRCS = irq.c led.c uart.c buttons.c main.c libs/memfuncs.c libs/init.c matrix.c 
#  
OBJS_REMOVEABLE = $(SRCS:.c=.o)
OBJS_REMOVEABLE += $(ASSRCS:.s=.o) 

OBJS = $(OBJS_REMOVEABLE) clocks.o image.o
DEPS = $(SRCS:.c=.d) 

TARGET = main

all: $(TARGET)

-include $(OBJS:.o=.d)

$(TARGET): $(OBJS) $(LIBS_OBJS)
	$(CC) $(LDFLAGS) $(CFLAGS)  $(LIBS_OBJS) $(OBJS) clocks/clocks.o image.o -o $(TARGET) 

%.o: %.c
	$(CC) $(CFLAGS) -MMD -MP -c -o $@ $<

%.o: %.s
	$(AS) $(ASFLAGS) -o $@ $<

.PHONY: startgdbserver clean
startgdbserver:
	JLinkGDBServer -device STM32L475VG -endian little -if SWD -speed auto -ir -LocalhostOnly

clean:
	rm -f $(OBJS) $(LIBS_OBJS) $(TARGET)
	find . -name '*.d' -exec rm -f {} \;
	