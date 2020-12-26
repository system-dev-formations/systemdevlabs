###  Clonez ce projet
Tapez 
```
cd 
```{{execute T1}}

Installez le project 
```
git clone https://github.com/crunchy-devops/ansible-dynamic-inventory.git
```{{execute T1}}

Analysez le projet
```
cd ansible-dynamic-inventory && cat get_inventory.py 
```{{execute T1}}

Executez la commande suivante: 
```
ansible-playbook -i get_inventory.py playbook.yml
```{{execute T1}}

Cette fois on soumet un programme python au switch `-i` . Ce programme retourne une structure json qui sera 
interpretee par le programme Ansible-playbook. 
 