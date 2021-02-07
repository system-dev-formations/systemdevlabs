executez une a une les commandes suivantes: 

```
cd && \
git clone <votre projet tp-afip-ansible> 
```{{execute T1}}

```
cd tp-afip-ansible 
```{{execute T1}}
 
```
ansible centos -b -m yum -a "name=git state=latest" -i inventory_katacoda 
```{{execute T1}}

Le switch  `-b` a ete ajoute, le resultat est de couleur orange   
il y a eu un changement, le package a ete installe.  