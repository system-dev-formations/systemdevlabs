Check inventory_katacoda

```shell
cd ~ && cd tp-airbus && cat inventory_katacoda
```{{ execute T1 }}

Write down all IP address and change accordlingly the file inventory_children 

Check 
```
ansible all -m ping -i inventory_children
```{{execute T1}}

Save in github 
```
git add . 
```{{ execute T1 }} 

```
git commit -m " changed inventory"
```{{ execute T1 }}

```
git push 
```{{ execute T1 }}