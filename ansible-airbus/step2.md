
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

Get your github url 
and enter this command
```shell
git remote add origin https://github.com/<your github account>/tp-airbus.git
```{{ copy }}

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
git add .
```{{execute T1}}

commit  
```
git commit -m "First initial"
```{{execute T1}}

Go to github to obtain a token as password for git push
Push 
```
git push --set-upstream origin master 
```{{execute T1}}










