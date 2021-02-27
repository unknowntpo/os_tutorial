GIT_HOOKS := .git/hooks/applied
TARGET = boot_sect_simple.bin
QEMU_FLAGS = --nographic -curses

all: $(GIT_HOOKS) $(TARGET)

$(TARGET): boot_sect_simple.asm
	nasm -f bin $^ -o $@
qemu: $(TARGET)
	qemu-system-x86_64 boot_sect_simple.bin $(QEMU_FLAGS)

$(GIT_HOOKS):
	@scripts/install-git-hooks
	@echo

.PHONY: clean
clean:
	rm -f *.bin


