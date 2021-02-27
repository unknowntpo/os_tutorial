TARGET = boot_sect_hello.bin
QEMU_FLAGS = --nographic -curses

all: $(TARGET)

$(TARGET): boot_sect_hello.asm
	nasm -f bin $^ -o $@

qemu: $(TARGET)
	qemu-system-x86_64 $(TARGET) $(QEMU_FLAGS)

.PHONY: clean
clean:
	rm -f *.bin


