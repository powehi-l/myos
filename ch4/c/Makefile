SRC:=boot.asm
BIN:=$(subst .asm,.bin,$(SRC))
COM:=$(subst .asm,.com,$(SRC))

.PHONY : everything clean

everything : $(BIN)
	dd if=$(BIN) of=a.img bs=512 count=1 conv=notrunc

$(BIN) : $(SRC)
	nasm $< -o $@

clean:
	rm -f *.bin *.com *.txt
