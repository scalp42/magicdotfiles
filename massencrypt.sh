#!/bin/bash
cypher="aes-256-cbc"

cd toencrypt &&

#FILES=.[^.]*
FILES=.??*

for file in $FILES
do
  printf "Encrypting $file\n";
  openssl enc -$cypher -e -in "$file" -out `echo $PWD | sed -e 's/toencrypt/encrypted\//'`"$file.enc" -pass file:"pass"
  printf "Encrypted $file !\n";
done
