
```
cd ~/tp-airbus 
``` {{ execute T1 }}

Copy the following tasks in the format_device.yml script
```
- name: test an empty list of device
  vars:
    device: "{{ get_disk.stdout | get_device }}"
  shell: echo {{ item }}
  when: device is defined 
  loop: "{{ device }}"
 ```{{ copy }}
 
Check 
 ```
 cd ~/tp-airbus && 
 ansible-playbook -i inventory_children format_device.yml
```{{ execute T1 }}
 
 
Copy the following tasks in the format_device.yml script

```
- name: format disk 
  vars:
    device: "{{ get_disk.stdout | get_device }}"
  filesystem:
    fstype: ext4
    dev: "{{ item }}"
  when: device is defined 
  loop: "{{ device }}"
 ```{{ copy }}
 
 Run the final playbook
 ```
 cd ~/tp-airbus && 
 ansible-playbook -i inventory_children format_device.yml
```{{ execute T1 }} 

Check all disks status 
 ```
lsblk -f
```{{ execute T1 }} 
