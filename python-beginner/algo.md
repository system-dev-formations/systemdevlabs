Exemple d'algo dans ce programme get_device.py

Faire Ctrl-d pour sortir du prompt interactif

lancer vi 
```
vi get_device.py
```{{execute T1 }}
Tapez i 

Nous allons analyser le code suivant,  
faite des recherches et executez des parties de code en interatif
```
import subprocess
disk = []
device = []
flag = 0
type_format = ['swap','ext4','xfs','dos','squashfs']
with open('fdisk_result.txt') as file:
    line = file.readlines()
for i in line:
    if 'Disk /' in i:
        disk.append(i)
for v in disk:
    inter = v.split()
    cmd = "lsblk -f {}".format(inter[1][:-1])
    #print(cmd)
    check_blk = str(subprocess.check_output(cmd,shell=True))
    #print(check_blk)
    for t in type_format:
        if t in check_blk:
            flag = 1
    if flag == 0:
        device.append(inter[1][:-1])
        flag = 0
    flag = 0
print(device)
```{{ copy }}

Paste dans l'editeur 
Tapez Esc et :wq
 
```python
python get_device.py
```{{ execute T1 }} 

vous devez avoir 3 devices qui peuvent etre formates

