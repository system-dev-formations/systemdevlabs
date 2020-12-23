### Verification de l'environment 

On change de directory  

```
cd ansible-examples
```{{execute T1}}


et on execute 
```
ansible all -m ping -i inventory_katacoda
```{{execute T1}}

C'est notre premiere commande Ansible qui se nomme Ad-Hoc command
* ansible - c'est le nom du programme
* all  - correspond a tous les hosts precises dans le fichier d'inventaire 
       inventory_katacoda 
* -m ping  m pour module et le nom du module c'est application ping
* -i inventory_katacoda soumet ce fichier a Ansible

