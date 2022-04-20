Git stash saves the uncommitted changes locally, allowing you to make changes, switch branches, and perform other Git operations. 
You can then reapply the stashed changes when you need them. 
A stash is locally scoped and is not pushed to the remote by git push

use stash 
```shell
echo "add this for stash example" >> test.py
```{{ execute T1 }}

save current work in stash for later 
```shell
git stash save "add line in file"
```{{ execute T1 }}

check 
```shell
git stash list
```{{ execute T1 }}

Apply the stash 
```shell
git stash pop 
```{{ execute T1 }}






