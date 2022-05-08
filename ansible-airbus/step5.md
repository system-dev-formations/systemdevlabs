Open  my_filters.py

```
cd filter_plugins && vi my_filters.py
```{{ execute T1}}

in VS Code insert the following lines on the line  ```return list_device``` to overwrite it 
```
   disk = []
   device = []
   flag = 0
   type_format = ['swap','ext4','xfs','dos', 'squashfs' ]
   line = list_device.split('\n')
   return line
``` {{ copy }}   

Check 
```
cd ~/tp-ansible &&
ansible-playbook -i inventory_local format_device.yml
```{{ execute T1}}

in VS Code insert the following lines on the line  ```return line``` to overwrite it 
```
   #return line
   for i in line:
     if 'Disk /' in i:
        disk.append(i)
   return disk
``` {{ copy }}

in VS Code insert the following lines on the line  ```return disk``` to overwrite it 
```
   #return disk
   for v in disk:
       inter = v.split()
       cmd = "lsblk -f {}".format(inter[1][:-1])
       #return cmd
       check_blk = str(subprocess.check_output(cmd,shell=True))
       return check_blk
``` {{copy}}
 
 in VS Code insert the following lines on the line  ```return check_blk``` to overwrite it 
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
