#!/usr/bin/env bash
# petits tests de forks simples dans un script bash
#zf200526.1429

# source: https://stackoverflow.com/questions/3096561/fork-and-exec-in-bash


echo -e "
test avec les forks dans une (...)  ;-)
"

(sleep 2 && echo "toto1")&
(sleep 2 && echo "toto2")&
(sleep 2 && echo "toto3")&
(sleep 2 && echo "toto4")&
(sleep 2 && echo "toto5")&

echo "c'est en cours..."
wait
echo "c'est terminé !"
