Lecture d'un fichier qui a sauvegarder la commande   
    fdisk -l > fdisk_result.txt

```
with open('fdisk_result.txt') as file:
    line = file.readlines()
    print(line)
```{{ execute T1}}

Tapez Enter pour voir le resultat   

Tous ces elements sont dans une liste  
Les elements qui nous interesse sont ceux qui contiennent la chaine "Disk /"      
Nous allons creer une liste de ces elements     
disk = []    creer un liste vide   
for i in line:    lit la liste initiale  
if "chaine" in i:  recherche de la chaine   
disk.append(i) :  ajout l'element dans notre nouvelle liste   
```
disk = []
for i in line:
    if 'Disk /' in i:
        disk.append(i)
```{{ execute T1}}

Tapez enter pour valider le code   

```
print(disk)
```{{ execute T1}}

Tapez enter pour voir le resultat  
