
all: mkdir.bin

lbr: mkdir.lbr

clean:
	rm -f mkdir.lst
	rm -f mkdir.bin
	rm -f mkdir.lbr

mkdir.bin: mkdir.asm include/bios.inc include/kernel.inc
	asm02 -L -b mkdir.asm
	rm -f mkdir.build

mkdir.lbr: mkdir.bin
	rm -f mkdir.lbr
	lbradd mkdir.lbr mkdir.bin

