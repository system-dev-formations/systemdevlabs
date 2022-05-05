Copy your token in a file named token located in your home directory

```shell
cd ~ 
```{{ execute T1 }}

copy your token in a file 
```
echo "your github token" > token
```{{ copy }}

go to tp-airbus directory

```shell
cd ~/tp-airbus
```{{ execute T1 }}

run the playbook 
```
ansible-playbook -i inventory_children ansible_create_module.yml
```{{ execute T1 }}
