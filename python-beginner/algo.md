Example d'algo 
```
disk = []
device = [] 
with open('fdisk_result.txt' as file: 
    line = file.readlines()
for i in line: 
    if 'Disk /' in i:
        disk.append(i)
for v in disk:
    inter = v.split()
    device.append(inter[1][:-1])
    
print(device)
```{{ execute T1}}

Afficher le resultat
```
print(device)
```{{ execute T1}}

