## Remove files from staging area aka cache or index

```
echo "version 4" >> test.py
```{{execute T1}}
Add to staging area
```
git add test.py
```{{execute T1}}

Check 
```
git status
```{{execute T1}}

Remove recursely all files 
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

