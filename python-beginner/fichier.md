Lecture d'un fichier dans lequel le resultat de la commande   
    fdisk -l > fdisk_result.txt
est stocke

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
for i in line:    lit la liste initiale, i est variable intermediaire  
if "chaine" in i:  recherche de la chaine dans i 
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
La nouvelle liste contenant que des elements ayant "Disk /" 
  
Le premier element est 
```
print(disk[0])
```{{ execute T1 }}

Si on fait un decoupage sur le caractere "," on peut isoler le disk en position 0
```
sol = disk[0].split(',')
print(sol[0])
```{{ execute T1}}
  

