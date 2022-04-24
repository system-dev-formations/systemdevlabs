clone and cd to your project 

```shell
cd && git clone <github url  tp-airbus> 
```{{ copy }}

```
cd tp-airbus
```{{execute T1}}

## set your ssh key 
```
ssh-keygen -t rsa -b 4096
```{{ execute T1 }}

Propagate this ssh key to the remote vm **don't miss changing this IP address** 
```
ssh-copy-id  ubuntu@175.155.22.22
```{{ copy }}

Check 
```
ansible all -m ping -i inventory_katacoda
```{{execute T1}}



 