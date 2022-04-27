## Remove last commit

```
echo "version 4" >> test.py
```{{execute T1}}
Add to staging area and commit using one line
```
git commit -am " added version 4"
```{{execute T1}}

Check 
```
git log --oneline
```{{execute T1}}

## Remove the last commit
```
git reset --soft HEAD~1
```{{execute T1}}

Check 
```
git log --oneline 
```{{execute T1}}