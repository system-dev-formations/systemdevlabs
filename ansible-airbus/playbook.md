
Usage of when
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

You could pass variables between hosts by creating a dummy host used to save those variables 
This feature is named **in-memory inventory**
```
ansible-playbook -i inventory_children runtime_inventory_additions.yml
```{{ execute T1 }}

See dynamic inventory 

Filter
```
ansible-playbook -i inventory_children motd.yml
```{{ execute T1 }}

```
ansible-playbook -i inventory_children new_filter.yml --limit target2 
```{{ execute T1 }}


```shell
ansible-playbook -i inventory_children git_version_filter.yml --limit target2
```{{ execute T1 }}


Install of version of git on all os 
```shell
ansible-playbook -i inventory_children install_on_multios.yml
```{{ execute T1 }}


