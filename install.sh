#!/bin/bash

cd encrypted &&

FILES=.*.enc

for file in $FILES
do
  printf "Decrypting $file\n";
  ../openssl.sh decrypt "$file"
  mv "$file.dec" ../decrypted
  mv ../decrypted/"$file.dec" ../decrypted/`echo "$file.dec" | sed -e  's/\.enc\.dec//'`
  printf "Decrypted $file !\n";
done