
```
cd ~/tp-ansible 
``` {{ execute T1 }}

Copy the following tasks in the format_device.yml script
```
- name: prochaine etape, tester avec une liste de device vide 
  vars:
    device: "{{ get_disk.stdout | get_device }}"
  shell: echo {{ item }}
  when: device is defined 
  loop: "{{ device }}"
 ```{{ copy }}
 
Check 
 ```
 cd ~/tp-ansible && 
 ansible-playbook -i inventory format_device.yml
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
 cd ~/tp-ansible && 
 ansible-playbook -i inventory format_device.yml
```{{ execute T1 }} 

Check all disks status 
 ```
lsblk -f
```{{ execute T1 }} 
