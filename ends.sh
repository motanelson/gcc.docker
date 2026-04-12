#!/usr/bin/bash
aaa=$1
/usr/bin/clang -c -m32 -nostdlib ./uploads/$aaa.c.c -o ./tmp/$aaa.o
/usr/bin/i686-linux-gnu-ld  -nostdlib -T ./link.ld ./tmp/boot.o ./tmp/$aaa.o  -o ./tmp/$aaa.bin 
/usr/bin/i686-linux-gnu-objcopy ./tmp/$aaa.bin ./tmp/$aaa.c32  --output-target binary 
cat /tmp/mysys.o ./tmp/$aaa.c32 > ./tmp/$aaa.bin
dd if=./tmp/$aaa.bin of=./tmp/$aaa.iso bs=1k seek=58 conv=notrunc
#rm ./tmp/$aaa.o
#rm ./tmp/$aaa.bin
#rm ./tmp/$aaa.c32
#rm ./tmp/$aaa.bin
