How to manage our project in github   

In your gitub account, create a new repository named **git-airbus**   
Select Public, don't check README, .gitignore  and License    

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


## Check our current branch main
```
git branch 
```{{execute T1}}
 
## Rename our branch to be suitable to Github    
```
git branch -m main 
```{{execute T1}}


