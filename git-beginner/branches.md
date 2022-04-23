Fork the following repo to your github account
https://github.com/crunchy-devops/calc2.git
When pressing the green button you should have
https://github.com/your_github_account/calc2.git

### Do a git clone command 
```
cd ~ && git clone https://github.com/<your_github_account>/calc2.git
```{{copy}}

### Check your local branch
```
cd ~/calc2 && git branch 
```{{ execute T1 }} 

### Check all branches available
```
git branch -a
```{{ execute T1 }}

### Check only remote branches
```
git branch -r
```{{ execute T1 }}

### Check all branches with their associated commit messages
```
git branch -av
```{{ execute T1 }}

### Get the number of commit a branch is ahead from the master
```
git rev-list --left-right --count master...remotes/origin/exp
```{{ execute T1 }}

## Edit the list of all commits ahead from the master for a specific branch 
```
git rev-list --left-right --pretty=oneline master...remotes/origin/exp
```{{ execute T1 }}

display 
```
git log --all --decorate --oneline --graph
```{{ execute T1 }}

Create a new branch local 
```
git branch mybranch 
```{{ execute T1 }} 

switch to the branch 
```
git checkout mybranch
```{{ execute T1 }}

or your can one command
```
git checkout -b mytest
```{{ execute T1 }} 

Create a branch from stash command
modify calc.html 
vi calc.html
```
git stash save "test"
```{{ execute T1 }} 

```
git stash list
```{{ execute T1 }}

```
git stash branch my-modify-stash stash@{0}
```{{ execute T1 }} 






