zf200526.1431

<!-- TOC titleSize:2 tabSpaces:2 depthFrom:1 depthTo:6 withLinks:1 updateOnSave:1 orderedList:0 skip:0 title:1 charForUnorderedList:* -->
## Table of Contents
* [Petits tests pour pouvoir tester les 'forks' dans un script bash ;-)](#petits-tests-pour-pouvoir-tester-les-forks-dans-un-script-bash--)
* [Différents tests](#différents-tests)
* [Tests sans les forks en //](#tests-sans-les-forks-en-)
* [Tests avec les forks en // dans des (...)](#tests-avec-les-forks-en--dans-des-)
* [Tests avec les forks en // dans une fonction](#tests-avec-les-forks-en--dans-une-fonction)
* [Astuce](#astuce)
* [Voir aussi](#voir-aussi)
<!-- /TOC -->

# Petits tests pour pouvoir tester les 'forks' dans un script bash ;-)

On peut fortement accélérer des *actions* répétitives dans un script bash, qui pourraient prendre un certain temps à exécuter comme un curl par exemple, en les exécutant en // dans un fork !

Selon cette page:

https://stackoverflow.com/questions/3096561/fork-and-exec-in-bash


# Différents tests

# Tests sans les forks en //
Juste pour voir quand ce n'est pas en //

```
./test0.sh
```
On voit ici que les *actions* sont exécutées une après une !


# Tests avec les forks en // dans des (...)
Si on met les actions entre (...) et que l'on ajoute un '&' cela va les exécuter en //

```
./test1.sh
```
On voit ici que les *actions* sont exécutées // !


# Tests avec les forks en // dans une fonction
Si on met les actions dans une *fonction* et que l'on ajoute un '&' cela va les exécuter en //

```
./test2.sh
```
On voit ici que les *actions* sont exécutées // !


# Astuce
On peut attendre à la fin du script que tous les forks soient terminés

```
echo "c'est en cours..."
wait
echo "c'est terminé !"
```


# Voir aussi

https://stackoverflow.com/questions/356100/how-to-wait-in-bash-for-several-subprocesses-to-finish-and-return-exit-code-0



