
Faire

```
cd ~/tp-aston-ansible && vi format_device.yml
``` {{ execute T1 }}

faire i et pressez sur copy dans le clipboard
et coller la partie de script a la suite 
```
- name: prochaine etape, tester avec une liste de device vide 
  vars:
    device: "{{ get_disk.stdout | get_device }}"
  shell: echo {{ item }}
  when: device is defined 
  loop: "{{ device }}"
 ```{{ copy }}
 
 Test
 ```
 cd ~/tp-aston-ansible && 
 ansible-playbook -i inventory format_device.yml
```{{ execute T1 }}
 
 
faire i et pressez sur copy dans le clipboard
et coller la partie de script a la suite 
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
 
 Test
 ```
 cd ~/tp-aston-ansible && 
 ansible-playbook -i inventory format_device.yml
```{{ execute T1 }} 