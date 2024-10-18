CC = arm-none-eabi-gcc
CFLAGS = -Wall -Werror -g -Og -mthumb -MMD -MP
LDLIBS = -lm
LDFLAGS = -L/opt/mylibs -mthumb
# LDFLAGS = -L/opt/mylibs -specs=nano.specs -specs=nosys.specs -mthumb

SOURCES = ex2_2_1.c ex2_2_2.c ex2_2_3_1.c ex2_2_3_2.c stubs.c
OBJS = $(SOURCES:.c=.o)

all: O0 O1 O2 Os

O0: $(addprefix Question_O0/, $(SOURCES:.c=_O0.o))
O1: $(addprefix Question_O1/, $(SOURCES:.c=_O1.o))
O2: $(addprefix Question_O2/, $(SOURCES:.c=_O2.o))
Os: $(addprefix Question_Os/, $(SOURCES:.c=_Os.o))

Question_O0/%_O0.o: %.c | Question_O0
	$(CC) -O0 $(TARGET_ARCH) -c -o $@ $^
	$(CC) -O0 $(TARGET_ARCH) -S -o Question_O0/$*_O0.s $<

Question_O1/%_O1.o: %.c | Question_O1
	$(CC) -O1 $(TARGET_ARCH) -c -o $@ $^
	$(CC) -O1 $(TARGET_ARCH) -S -o Question_O1/$*_O1.s $<

Question_O2/%_O2.o: %.c | Question_O2
	$(CC) -O2 $(TARGET_ARCH) -c -o $@ $^
	$(CC) -O2 $(TARGET_ARCH) -S -o Question_O2/$*_O2.s $<

Question_Os/%_Os.o: %.c | Question_Os
	$(CC) -Os $(TARGET_ARCH) -c -o $@ $^
	$(CC) -Os $(TARGET_ARCH) -S -o Question_Os/$*_Os.s $<

Question_O0 Question_O1 Question_O2 Question_Os:
	mkdir -p $@

-include $(SOURCES:.c=.d)
%.d : %.c
	@$(CC) $(CFLAGS) $(CPPFLAGS) -MM -MF $@ -MP $<

clean:
	rm -f Question_O0/*.o Question_O0/*.s
	rm -f Question_O1/*.o Question_O1/*.s
	rm -f Question_O2/*.o Question_O2/*.s
	rm -f Question_Os/*.o Question_Os/*.s
	rm -f *.d *.o