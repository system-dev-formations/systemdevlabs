Quelques commandes utiles a connaitre

Liste les hosts dans le fichier inventory
```
ansible all --list-hosts -i inventory_katacoda
```{{execute T1}}


Afficher l'etat des volumes disques
```
ansible all -m command -a "df -h" -i inventory_katacoda
```{{execute T1}}

Cree un fichier 
```
ansible centos -m file -a "dest=/home/centos/testfile state=touch" -i inventory_katacoda
```{{execute T1}}