Allez dans le fichier my_filter

```
cd filter_plugins && vi my_filters.py
```{{ execute T1}}

inserer a la place de ```return list_device``` 
```
   disk = []
   device = []
   flag = 0
   type_format = ['swap','ext4','xfs','dos']
   line = list_device.split('\n')
   return line
``` {{ copy }}   

Tester avec 
```
cd ~/tp-aston-ansible &&
ansible-playbook -i inventory format_device.yml
```{{ execute T1}}

inserer a la place de ```return line``` 
```
   #return line
   for i in line:
     if 'Disk /' in i:
        disk.append(i)
   return disk
``` {{ copy }}

inserer a la place de ```return disk```
```
   #return disk
   for v in disk:
       inter = v.split()
       cmd = "lsblk -f {}".format(inter[1][:-1])
       #return cmd
       check_blk = str(subprocess.check_output(cmd,shell=True))
       return check_blk
``` {{copy}}
 
 inserer a la place de ```return check_blk```
 ```
    #return check_blk
    for t in type_format:
        if t in check_blk:
            flag = 1
    if flag == 0:
      device.append(inter[1][:-1])
    flag = 0
 return device
```{{ copy }}
