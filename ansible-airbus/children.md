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


```
git commit -m " changed inventory"
```{{ execute T1 }}

```
git push 
```{{ execute T1 }}