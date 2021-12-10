### Passage d'information entre les hosts 
Pour passer des variables entre remote-to-remote host il est possible
de creer un host de type dummy et lui attacher des variables pour les passer 
vers l'autre host.

Analysez le fichier 
```
cat runtime_inventory_additions.yml
```{{execute T1}}

Passage de variables
```
ansible-playbook -i inventory_local runtime_inventory_additions.yml
```{{execute T1}}

Verfications ,en entrant dans le container centos 
```
docker exec -it target2 /bin/bash
```{{execute T1}}

Editez le fichier values
```
cat /tmp/values
```{{execute T1}}

et sortez du container  ```exit```{{execute T1}}
