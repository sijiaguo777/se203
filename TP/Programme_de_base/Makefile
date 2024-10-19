CC = arm-none-eabi-gcc
CFLAGS = -g -O1 -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16
LDFLAGS = -T ../ld_ram.lds
LIBS_DIR = ../libs

SOURCES = test.c
LIBS_SRCS = $(LIBS_DIR)/stubs.c
LIBS_OBJS = $(LIBS_SRCS:.c=.o)
OBJS = $(SOURCES:.c=.o)

TARGET = test

all: $(TARGET)

$(TARGET): $(OBJS) $(LIBS_OBJS)
	$(CC) $(LDFLAGS) $(CFLAGS) $(OBJS) $(LIBS_OBJS) -o $(TARGET)

%.o: %.c
	$(CC) $(CFLAGS) -c -o $@ $<

# Check entry point and memory location
check: $(TARGET)
	@echo "Checking entry point and memory location..."
	@arm-none-eabi-objdump -t -S $(TARGET) | grep -E '(<main>|<Reset_Handler>)'
	@arm-none-eabi-objdump -t $(TARGET) | grep -E '(<main>|<Reset_Handler>)'

clean:
	rm -f $(OBJS) $(LIBS_OBJS) $(TARGET)
	