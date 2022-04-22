
This picture depicts how to set a project under a pull-request workflow
We will focus on the triangular workflow situation, i.e. working with 3 repositories:

![pull-request](./assets/pull-request.png)

A reference repository, conventionally called *upstream*  
This is the repository of the project we want to contribute to.  
We only have read rights to it.  

A fork repository, conventionally referenced *origin*  
This is a copy of the reference repository.  
We have all rights to it.  

*A local repository*  
This is our working repository.  

Fork in your first user github account the following repo
https://github.com/system-dev-formations/python_epidemic_simulation.git

log out and login to your second github account 
and 
```shell
git clone https://github.com/<your_current_account>/python_epidemic_simulation.git
```{{ copy }}

### set up the triangular workflow
check 
```
git remote -v 
```{{ execute T1 }}

Add an upstream 
```
git remote add upstream https://github.com/<your_first_github/python_epidemic_simulation.git
``` {{ copy }}

check 
```
git remote -v
```{{ execute T1 }}

We are going to sync our current repo with the upstream 
```
git fetch upstream 
```{{ execute T1 }}

Checkout 
```
git checkout master 
```{{ execute T1 }}

merge upstream to local master 
```
git merge upstream/master 
```{{ execute T1 }} 

Change the file constants.py
Check 
```
git status
```{{ execute T1 }}
 
check 
```
git diff
```{{ execute T1 }} 

do a fast commit 
```
git commit -am"Added docstrings comments"
```{{ execute T1 }}

check 
 ```
git log --oneline
```{{ execute T1 }}

in github go the original repo 
create a pull-request 