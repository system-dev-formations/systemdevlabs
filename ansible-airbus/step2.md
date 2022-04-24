
**if your github project is not saved , do all commands below**

Create a github project named **tp-airbus**

```shell
cd ~ && cd ansible-course
```{{ execute T1 }}

remove all .git directory
```shell
rm -Rf .git
```{{ execute T1 }}

Create a .git directory
```shell
git init
```{{ execute T1 }}

Get the url 
and enter 
```shell
git remote add origin < your url tp-airbus gitrepo>
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

Add all files 
```
git add -A
```{{execute T1}}

commit  
```
git commit -m "First initial"
```{{execute T1}}

Go tio github to obtain a token

Push 
```
git push --set-upstream origin master 
```{{execute T1}}










