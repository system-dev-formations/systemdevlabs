## Remove commit from staging area aka cache or index

```
echo "version 4" >> test.py
```{{execute T1}}
Add to staging area and commit using one line
```
git commit -am " added version 4"
```{{execute T1}}

Check 
```
git status
```{{execute T1}}

Remove recursely all commit 
```
git reset HEAD -- . 
```{{execute T1}}

HEAD is a reference to a specific commit (think of it as a variable). 
Normally, it points to the last commit in local repository or in staging area  
-- set the remove action recursively   
.  is the current directory  
```
git status
```{{execute T1}}

## Remove the last commit
```
git reset --soft HEAD~1
```{{execute T1}}

Check 
```
git log 
```{{execute T1}}