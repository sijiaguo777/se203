CC = arm-none-eabi-gcc
CFLAGS = -Wall -Werror -g -Og -mthumb -MMD -MP
LDLIBS = -lm
LDFLAGS = -L/opt/mylibs -specs=nosys.specs -mthumb
# LDFLAGS = -L/opt/mylibs -specs=nano.specs -specs=nosys.specs -mthumb

SOURCES = main.c t1.c t2.c
STUBS = libs/stubs.c
OBJS = $(SOURCES:.c=.o)
STUBS_OBJ = $(STUBS:.c=.o)

TARGET = hello

all: $(TARGET)

-include $(SOURCES:.c=.d) $(STUBS:.c=.d)

$(TARGET): $(OBJS) $(STUBS_OBJ)
	$(CC) $(LDFLAGS) $(OBJS) $(STUBS_OBJ) $(LDLIBS) -o $(TARGET)

%.o: %.c
	$(CC) $(CFLAGS) -c -o $@ $<

libs/stubs.o: libs/stubs.c
	$(CC) -g -O2 -mthumb -c -o $@ $<

clean:
	rm -f $(OBJS) $(STUBS_OBJ) $(SOURCES:.c=.d) $(STUBS:.c=.d) $(TARGET)