
### Le prompt et les conditions
Analysez le fichier 
```
cat conditions.yml
```{{execute T1}}

Entrez la premiere fois la valeur:  true   
Faire une deuxieme fois la meme commande avec cette fois: false

```
ansible-playbook -i inventory_children conditions.yml --limit centos
```{{execute T1}}

### les boucles
Analysez le fichier 
```
cat loops.yml
```{{execute T1}}

```
ansible-playbook -i inventory_children loops.yml --limit centos
```{{execute T1}}