An Ansible ad hoc command uses the /usr/bin/ansible command-line tool to automate a single task on one or more managed nodes.
ad hoc commands are quick and easy, but they are not reusable.


switch -m is for calling a module. Ansible ships with a number of modules (called the ‘module library’) that can be executed directly on remote hosts or through Playbooks.
Users can also write their own modules. These modules can control system resources, like services, packages, or files (anything really), or handle executing system commands.

Upgrade ubuntu remote vm and clean its cache 
```
ansible ubuntuvm -m apt -a "upgrade=yes update_cache=yes cache_valid_time=86400" -b -i inventory_katacoda
```{{ execute T1 }}

Just updating all repo links
```
ansible ubuntu -m command -a "apt update" -b -i inventory_katacoda
```{{ execute T1 }}

Install a package
```
ansible ubuntuvm -m apt -a "name=elinks state=latest" -i inventory_katacoda
```{{ execute T1 }}

but it is failed because we miss to specift a switch -b meaning  become : sudo/root
```
ansible ubuntuvm -m apt -b -a "name=elinks state=latest" -i inventory_katacoda
```{{ execute T1 }}

Install python3 package on alpine 
```
ansible alpine -m apk -b -a "name=python3 state=latest" -i inventory_katacoda
```{{ execute T1 }}

list of hosts from the inventory
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

Get the ipv4 stack from all machines

```
ansible all -m setup -a "filter=ansible_default_ipv4"  -i inventory_katacoda
```{{ execute T1 }} 

get all Linux distribution name 

```
ansible all -m setup -a "filter=ansible_distribution"  -i inventory_katacoda
```{{ execute T1 }} 

get all Linux distribution version number 
```
ansible all -m setup -a "filter=ansible_distribution_version"  -i inventory_katacoda
```{{ execute T1 }} 


Get the disk stack
```
ansible all -m command -a "df -h"  -i inventory_katacoda
```{{ execute T1 }} 

Create file  on target 1

```
ansible ubuntu -m file -a "dest=/home/ubuntu/testfile state=touch" -i inventory_katacoda
```{{ execute T1 }}

Check the date of file created in target1 using portainer docker tool. 
 
```shell
docker run -d --name portainer -p 80:9000 -v /var/run/docker.sock:/var/run/docker.sock portainer/portainer -H unix:///var/run/docker.sock 
```{{ execute T1 }}

Select view HTTP port 80 on host 1  
Set up a password and confirm   
Go to container and select target1   
On this line select **>_** characters it is an exec console tool   
Enter /home/ubuntu you can see the file created with ansible   
 


