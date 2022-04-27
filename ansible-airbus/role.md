Copy your token in a file named token located in your home directory

```shell
cd ~ && vim token
```{{ execute T1 }}

go to tp-airbus directory

```shell
cd ~/tp-airbus
```{{ execute T1 }}

run the playbook 
```
ansible-playbook -i inventory_children ansible_create_module.yml
```{{ execute T1 }}
