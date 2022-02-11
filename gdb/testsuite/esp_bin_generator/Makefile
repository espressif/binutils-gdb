XTENSA_TARGET   ?=  esp32
PREFIX          :=  xtensa-$(XTENSA_TARGET)-elf-
CC              :=  $(PREFIX)gcc
AR              :=  $(PREFIX)ar

SOURCE_DIR	?=  ./src

CFLAGS          :=  -mlongcalls \
                    -Wall \
                    -Wno-unused \
                    -O2 -g3 \
                    -Wall -Wno-main \
                    -mtext-section-literals

LDFLAGS         :=  -mlongcalls \
                    --specs=nano.specs \
                    --specs=nosys.specs \
                    -g \
                    -lc \
                    -Tesp32.rom.api.ld \
                    -Tesp32.rom.libgcc.ld \
                    -Tesp32.ld \
                    -Telf32xtensa.ld \
                    -Wl,--undefine=include_syscalls \
                    -Wl,--undefine=entry \
                    -Wl,--entry=entry

COMPILE_C       = $(CC) -c $(CFLAGS) -o $@
LINK            = $(CC) $(LDFLAGS) -o

APP             = app

LIBESP = lib$(XTENSA_TARGET).a

all: $(LIBESP)

%.o: %.c
	$(COMPILE_C) $<

$(LIBESP): $(patsubst %.c,%.o,$(wildcard $(SOURCE_DIR)/*.c))
	$(AR) rcs $@ $^

$(APP): $(LIBESP) main.o
	$(LINK) $(APP).elf $^ $(LIBESP)
	esptool.py --chip esp32 elf2image -o $(APP).bin $(APP).elf
	esptool.py --chip=esp32 merge_bin --fill-flash-size 4MB -o $(APP)4m.bin 0x1000 $(APP).bin

clean:
	rm -f *.a *.o *.bin *.elf $(SOURCE_DIR)/*.o
