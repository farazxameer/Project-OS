nasm -f elf32 kernel.asm -o kasm.o
gcc -m32 -c kernel.c -o kc.o
ld -m elf_i386 -T link.ld -o os/boot/kernel.bin kasm.o kc.o
qemu-system-x86_64 -kernel os/boot/kernel.bin
grub-mkrescue -o os.iso os/
