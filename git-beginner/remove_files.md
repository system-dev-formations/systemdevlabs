Remove file from the repository + filesystem
```
git rm password.txt
```{{execute T1}}

Register a commit related to the previous action 
```
git commit -m "Deleted file from git repository"
```{{ execute T1 }}

Push to the remote repo 
```
git push
```{{ execute T1 }}

Remove file from the Git repository only
```
git rm --cached password.txt
```{{ execute T1 }}

```
git commit -m "Deleted file from git repository only "
```{{ execute T1 }}

Push to the remote repo 
```
git push
```{{ execute T1 }}

Delete a file from the entire Git history 

```
git filter-branch -f --prune-empty --index-filter "git rm -r --cached --ignore-unmatch ./password.txt" HEAD
```{{ execute T1 }}

