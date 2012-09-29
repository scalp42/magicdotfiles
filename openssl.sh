#!/bin/bash
cypher="aes-256-cbc"

if [ "$2" == "" ]; then
  echo "Usage: $0 [ encrypt|decrypt ] dotfile"
  exit 2
else
  echo -n "Passphrase: "
    stty -echo
    read passwd
    stty echo
    echo
  case "$1" in
  encrypt)
    openssl enc -$cypher -e -in $2 -out $2.enc -pass pass:$passwd;;
  decrypt)
    openssl enc -$cypher -d -in $2 -out `echo $2 | sed -e 's/\.enc/\.enc.dec/'` -pass pass:$passwd;;
  *)
    echo "Usage: $0 [encrypt|decrypt] dotfile"; ;;
  esac
fi