
### Version 2
```
echo "version 2" >> test.py
```{{execute T1}}
Add to staging area
```
git add test.py
```{{execute T1}}

Check 
```
git status
```{{execute T1}}

## Version 3 
```
echo "version 3" >> test.py
```{{execute T1}}

Check 
```
git status
```{{execute T1}}

Edit diff between committed file and staged file 
```
git diff --cached 
```{{execute T1}}

Apply new version 
```
git commit -m "version 2 now"
```{{execute T1}}

Staged current version
```
git add test.py
```{{execute T1}}

Apply version 3
```
git commit -m"version 3 now"
```{{execute T1}}
