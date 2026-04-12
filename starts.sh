#!/usr/bin/bash
aaa=$1
js2c toc ./uploads/$aaa.js ./uploads/$aaa.c
cp ./bac.dat ./uploads/$aaa.c.c

nasm mysys.s -o /tmp/mysys.o
/usr/bin/i686-linux-gnu-as -o ./tmp/boot.o ./boot.s
cp app.data ./tmp/$aaa.iso


