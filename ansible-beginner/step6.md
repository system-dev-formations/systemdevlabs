Faites un `cat` du fichier suivant:
```
cat ansible_ping
```{{execute T1}}

Premier playbook
```
ansible-playbook  -i inventory_katacoda ansible_ping.yml  --limit centos
```{{execute T1}}

C'est notre premiere commande ansible-playbook
*  *ansible-playbook*   c'est le nom du programme
*  *-i inventory_katacoda* soumet ce fichier d'inventaire a ansible-playbook
*  *ansible_ping.yml* le nom du fichier playbook
*  *--limit centos*  dans le playbook `hosts` est precise pour `all`, ici on limite le script seulement a la machine centos. 

