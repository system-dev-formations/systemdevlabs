How to manage a project in github   

In your gitub account, create a new repository named **git-airbus**   
Select Public, check README, .gitignore  and License    

## Go to your home directory
```shell
cd ~
```{{ execute T1 }}

## Clone your Github repo to your local environment  
Change the current url below   
```
git clone https://github.com/crunchy-devops/git-airbus.git
```{{ copy }} 
and 
```shell
cd git-airbus
```{{ execute T1 }}

## check how the local repo is connected to the remote repo
```shell
git remote -v
```{{ execute T1 }}

"origin" is a local alias name for the remote repository that a project was originally cloned from. 
Now your local repo is connected to the remote one.

## Convert an existing git repo to github
In your gitub account, create a new repository named **git-test**   
Select Public, don't check README, .gitignore  and License 
Get the URL of this repo by typing on the green button
```shell
cd ~ && cd project 
```{{ execute T1 }}

Change the remote url accordlingly
```shell
git remote set-url origin https://github.com/crunchy-devops/git-test.git
```{{ copy }}
