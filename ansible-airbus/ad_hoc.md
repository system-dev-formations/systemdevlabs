An Ansible ad hoc command uses the /usr/bin/ansible command-line tool to automate a single task on one or more managed nodes.
ad hoc commands are quick and easy, but they are not reusable.


switch -m is for calling a module. Ansible ships with a number of modules (called the ‘module library’) that can be executed directly on remote hosts or through Playbooks.
Users can also write their own modules. These modules can control system resources, like services, packages, or files (anything really), or handle executing system commands.

Clear ubuntu cache
```
ansible ubuntuvm -m apt -a "upgrade=yes update_cache=yes cache_valid_time=86400" -b -i inventory_katacoda
```{{ execute T1 }}

Install a package
```
ansible ubuntuvm -m apt -a "name=elinks state=latest" -i inventory_katacoda
```{{ execute T1 }}

switch -b means become : sudo
```
ansible ubuntuvm -m apt -b -a "name=elinks state=latest" -i inventory_katacoda
```{{ execute T1 }}

list of hosts
```
ansible all --list-hosts -i inventory_katacoda
```{{ execute T1 }}

This module is automatically called by playbooks to gather useful variables about 
remote hosts that can be used in playbooks. It can also be executed directly by /usr/bin/ansible
to check what variables are available to a host. 
Ansible provides many facts about the system, automatically. 

```
ansible target2 -i inventory_katacoda -m setup
```{{ execute T1 }}

```
ansible all -m setup -a "filter=ansible_default_ipv4"  -i inventory_katacoda
```{{ execute T1 }} 

```
ansible all -m setup -a "filter=ansible_distribution"  -i inventory_katacoda
```{{ execute T1 }} 

```
ansible all -m setup -a "filter=ansible_distribution_version"  -i inventory_katacoda
```{{ execute T1 }} 

```
ansible all -m command -a "df -h"  -i inventory_katacoda
```{{ execute T1 }} 

```
ansible ubuntu -m file -a "dest=/home/ubuntu/testfile state=touch" -i inventory_katacoda
```{{ execute T1 }}




