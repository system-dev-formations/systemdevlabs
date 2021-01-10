executez une a une les commandes suivantes: 

```
ansible centos -m yum -a "name=elinks state=latest" -i inventory_katacoda 
```{{execute T1}}

Le resultat est de couleur vert, donc le package elinks est deja installe,   
il n'y a pas eu de changement.

```
ansible centos -m yum -a "name=git state=latest" -i inventory_katacoda 
```{{execute T1}}

Le resultat est de couleur rouge, la commande a echoue, parce que l'user connecte au container
n'a pas les droits pour installer un package. 

```
ansible centos -b -m yum -a "name=git state=latest" -i inventory_katacoda 
```{{execute T1}}

Le switch  `-b` a ete ajoute, le resultat est de couleur orange   
il y a eu un changement, le package a ete installe.  