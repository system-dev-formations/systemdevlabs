Check Ping using a playbook
```
ansible-playbook  -i inventory_children ansible_ping.yml  --limit ubuntuvm
```{{ execute T1 }}

Check Ping on a group of dedicated hosts named slave . it's target2 and target3 , alpine and centos 

```
ansible-playbook  -i inventory_children ansible_ping.yml  --limit slave
```{{ execute T1 }}

Usage of when as a if , how to test an ansible variable
```
ansible-playbook -i inventory_children ansible_facts_using_when.yml
```{{ execute T1 }}

Usage of assert 
```
ansible-playbook -i inventory_children ansible_facts_using_assert.yml
```{{ execute T1 }}

Prompt and conditions
```
ansible-playbook -i inventory_children conditions.yml --limit ubuntu
```{{ execute T1 }}

Loop
```
ansible-playbook -i inventory_children loops.yml --limit ubuntudocker
```{{ execute T1 }}

### Pass variabe between hosts
You could pass variables between hosts by creating a dummy host used to save those variables 
This feature is named **in-memory inventory**
```
ansible-playbook -i inventory_children runtime_inventory_additions.yml
```{{ execute T1 }}

### Propagate ssh key between hosts  using delegate_to module 

```
ansible-playbook -i inventory_children propagate_ssh_key.yml
```{{ execute T1 }}


## see slides in the presentation on dynamic inventory 

Filters
```
ansible-playbook -i inventory_children motd.yml
```{{ execute T1 }}

Customized filter 
```
ansible-playbook -i inventory_children new_filter.yml --limit target2 
```{{ execute T1 }}

check the code source of the filter
```
cd ~ && cd tp-airbus/filter_plugins && vim my_filters.py
```{{ execute T1 }}


Usage a customized filter, this filter switches the latest of glusterfs release in git repo   
```
cd ~ && cd tp-airbus
```{{ execute T1 }}

```shell
ansible-playbook -i inventory_children git_version_filter.yml --limit target2
```{{ execute T1 }}


Install of version of git package on all os 
```shell
ansible-playbook -i inventory_children install_on_multios.yml
```{{ execute T1 }}


