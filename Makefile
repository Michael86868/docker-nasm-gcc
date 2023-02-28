TARGET=main
CFLAGS = -no-pie -g -std=c99 -Wall -Werror

all: $(TARGET)

build/%.o: src/%.asm
	nasm -g -f elf64 -Fdwarf $< -o $@

clean:
	rm -rf build/$(TARGET) build/*.o

$(TARGET): build/module.o src/main.c
	cc $(CFLAGS) build/module.o src/main.c -o build/$(TARGET)
