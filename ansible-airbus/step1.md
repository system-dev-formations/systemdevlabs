
### Verification de l'environment 

Wait until all containers are up and running 

BWEARE: If you have done this 

Move to the repo

```
cd ansible-course
```{{execute T1}}

Create an ssh key, enter all default and no passphrase 
```
ssh-keygen -t rsa -b 4096
```{{ execute T1 }}

Propagate this ssh key to the remote vm *Change this IP address* 
```
ssh-copy-id  ubuntu@175.155.22.22
```{{ copy }}

Modify the inventory, change the remote machine settings in inventory_local file 




et on execute la commande suivante pour verifier l'installation
```
ansible all -m ping -i inventory_local
```{{execute T1}}

C'est notre premiere commande Ansible qui se nomme Ad-Hoc command
*  *ansible*   c'est le nom du programme
*  *all*       correspond a tous les hosts precises dans le fichier d'inventaire inventory_katacoda 
*  *-m ping*   m pour module avec le nom du module c'est ici l'outil ping
*  *-i inventory_katacoda* soumet ce fichier d'inventaire a Ansible

![architecture](./assets/architecture_ansible.png)

