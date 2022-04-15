## Remove files from staging area

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

```
git restore --staged
```{{execute T1}}

```
git status
```{{execute T1}}

