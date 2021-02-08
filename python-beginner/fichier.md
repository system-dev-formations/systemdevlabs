Lecture d'un fichier qui a sauvegarder la commande   
    fdisk -l > fdisk_result.txt

```
with open('fdisk_result.txt') as file:
  line = file.readlines()
print(line)
```{{ execute T1}}

