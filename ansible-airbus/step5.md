Open  my_filters.py

```
cd filter_plugins && vi my_filters.py
```{{ execute T1}}

in VS Code insert the following lines on the line  ```return list_device``` to overwrite it 
```python
   disk = []
   device = []
   flag = 0
   type_format = ['swap','ext4','xfs','dos', 'squashfs' ]
   line = list_device.split('\n')
   return line
``` {{ copy }}   

Check 
```
cd ~/tp-airbus &&
ansible-playbook -i inventory_children format_device.yml
```{{ execute T1}}

in VS Code insert the following lines on the line  ```return line``` to overwrite it 
```python
   #return line
   for i in line:
     if 'Disk /' in i:
        disk.append(i)
   return disk
``` {{ copy }}

in VS Code insert the following lines on the line  ```return disk``` to overwrite it 
```python
   #return disk
   for v in disk:
        flag = 0
        inter = v.split()
        cmd = "lsblk -f {}".format(inter[1][:-1])
        check_blk = str(subprocess.check_output(cmd,shell=True))
        for val in type_format:
            if val in check_blk:
                flag = 1
        if flag == 0:
            device.add(inter[1][:-1])                
   return device
``` {{copy}}
 
