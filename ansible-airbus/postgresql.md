Propagate your ssh key to the centos remote machine 
```shell
ssh-copy-id centos@xxxxx
```{{ copy }}

Add centos remote machine in inventory_children file 
```shell
cd ~ && cd tp-airbus 
```{{ execute T1 }}

create a line after the line containing ubuntu01  
Add [leader]  
and copy/paste the same line of ubuntu01  
change ubuntu01 to centos01  
change the ansible_ssh_host ip address  
change ansible_ssh_user to centos    
save the file 

Check 
```
ansible all -m ping -i inventory_children
```{{ execute T1 }}


Create a role named postgresql.role
```shell
ansible-galaxy init postgresql.role
```{{ execute T1 }}

```shell
vim postgres.yml
```{{ execute T1 }}

Copy/paste this code 
```yaml
---
- name: use a dedicated Ansible postgresql role
  hosts: leader
  become: yes
  roles:
    - { role: postgresql.role }
```{{ copy }}

get the type of of OS and version of the host leader 
```
ansible leader -m setup -a "filter=ansible_distribution"   -i inventory_children
```{{ execute T1 }}

version number 
```
ansible leader -m setup -a "filter=ansible_distribution_version"   -i inventory_children
```{{ execute T1 }}

Create a file named variables.yml 
```
cd ~ && cd tp-airbus/postgresql.role/tasks 
```{{ execute T1 }}

Create a file variables.yml

Copy and paste this code 
```yaml
---
# Variables configuration
- name: Include OS-specific variables (Centos)
  include_vars: "{{ ansible_distribution }}-{{ ansible_distribution_version.split('.')[0] }}.yml"
  when: ansible_distribution == "CentOS"
```{{ copy }}

```
cd ~ && cd tp-airbus/postgresql.role/tasks 
```{{ execute T1 }}

edit main.yml 

Put your cursor after the line starting with #

```yaml
- include_tasks: variables.yml

# Setup /install task
- include_tasks: setup-CentOS.yml
  when: ansible_distribution == 'CentOS'

- include_tasks: initialize.yml

- name: Ensure Postgresql is started and enable on boot
  service:
    name: "{{ postgresql_daemon }}"
    state: "{{ postgresql_service_state }}"
    enabled: "{{ postgresql_service_enabled }}"

- import_tasks: users.yml
```{{ copy }}


## Give some info to git regarding your identity 
Set your email and user name
```
git config --global user.email "dockerlite@gmail.com"
```{{ copy }}
Right click on the console and paste  
Change the email address   
```
git config --global user.name "Herve"
```{{ copy }}
Right-click on the console and paste   
Put your name   

and now your can save your repo safetly 
```shell
git add . && git commit -m"added first part of postgresql role " && git push 
```{{ execute T1 }}


