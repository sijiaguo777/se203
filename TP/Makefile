CC = arm-none-eabi-gcc
CFLAGS = -c -g -O1 -mcpu=cortex-m4
LDFLAGS = -T ld_ram.lds
LDFLAGSFPU = -mfloat-abi=hard -mfpu=fpv4-sp-d16

SOURCES = main.c
OBJS = $(SOURCES:.c=.o)
STUBS = libs/stubs.c
STUBS_OBJ = $(STUBS:.c=.o)

TARGET = main

all: $(TARGET)
$(TARGET): $(OBJS) $(STUBS_OBJ)
	$(CC) $(LDFLAGS) $(OBJS) $(STUBS_OBJ) -o $@

%.o: %.c
	$(CC) $(CFLAGS) $(FPUFLAGS) -c $< -o $@

libs/stubs.o: libs/stubs.c
	$(CC) $(CFLAGS) $(FPUFLAGS) -c -o $@ $<

# Start JLinkExe with the appropriate device and interface
.PHONY: startjlinkexe
startjlinkexe:
	JLinkExe -device STM32L475VG -speed auto -if SWD

# Start JLinkGDBServer with the appropriate options
.PHONY: startgdbserver
startgdbserver:
	JLinkGDBServer -device STM32L475VG -endian little -if SWD -speed auto -ir -LocalhostOnly




clean:
	rm -f $(OBJS)$(STUBS_OBJ) $(TARGET)



.PHONY: all clean

