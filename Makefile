TARGET = boot_sect_simple.bin
QEMU_FLAGS = --nographic -curses

all: $(TARGET)

$(TARGET): boot_sect_simple.asm
	nasm -f bin $^ -o $@

qemu: $(TARGET)
	qemu-system-x86_64 boot_sect_simple.bin $(QEMU_FLAGS)

.PHONY: clean
clean:
	rm -f *.bin


