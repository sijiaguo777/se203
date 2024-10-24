CC = arm-none-eabi-gcc
AS = arm-none-eabi-as

LIBS_DIR = libs
CMSIS_INCLUDE_DIR = CMSIS/Include
CMSIS_DEVICE_INCLUDE_DIR = CMSIS/Device/ST/STM32L4xx/Include

CFLAGS = -g -O2 -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16
CFLAGS += -I$(LIBS_DIR) -I$(CMSIS_INCLUDE_DIR) -I$(CMSIS_DEVICE_INCLUDE_DIR)

LDFLAGS = -T ld_ram.lds -nostdlib -ffreestanding

ASFLAGS = -g -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16


SOURCES = led.c $(LIBS_DIR)/memfuncs.c $(LIBS_DIR)/init.c
LIBS_SRCS_C = $(LIBS_DIR)/stubs.c
LIBS_SRCS_S = $(LIBS_DIR)/crt0.s

LIBS_OBJS = $(LIBS_SRCS_C:.c=.o)
LIBS_OBJS += $(LIBS_SRCS_S:.s=.o)

OBJS = $(SOURCES:.c=.o)

TARGET = led

all: $(TARGET)

$(TARGET): $(OBJS) $(LIBS_OBJS)
	$(CC) $(LDFLAGS) $(CFLAGS)  $(LIBS_OBJS) $(OBJS) -o $(TARGET) 

%.o: %.c
	$(CC) $(CFLAGS)  -MMD -MP -c -o $@ $<

%.o: %.s
	$(AS) $(ASFLAGS) -o $@ $<

.PHONY: startgdbserver
startgdbserver:
	JLinkGDBServer -device STM32L475VG -endian little -if SWD -speed auto -ir -LocalhostOnly

clean:
	rm -f $(OBJS) $(LIBS_OBJS) $(TARGET)
	