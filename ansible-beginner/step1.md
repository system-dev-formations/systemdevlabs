### Verification de l'environment 

On change de directory  

```
cd ansible-examples
```{{execute T1}}


et on execute 
```
docker save -o myfile.tar busybox:latest
```{{execute T1}}

C'est notre premiere commande Ansible qui se nomme Ad-Hoc command
ansible - c'est le nom du programme
all  - correspond a tous les hosts precises dans le fichier d'inventaire 
       inventory_katacoda 
-i inventory_katacoda soumet ce fichier a Ansible

