#!/usr/bin/env bash
# petits tests de forks simples dans un script bash
#zf200526.1141

# source: https://stackoverflow.com/questions/3096561/fork-and-exec-in-bash


Echo -e "

test avec les forks dans une function  ;-)

"

zfork() {
    sleep 2
    echo "toto"$1
}


zfork 1 &
zfork 2 &
zfork 3 &
zfork 4 &
zfork 5 &
