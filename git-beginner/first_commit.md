Enter un text in file test.py

```
echo "test" > test.py
```{{execute T1}}

Add the file in local workspace
```
git add .
```{{execute T1}}

by committing the file, it moves to a transient workspace
```
git commit -m"first init"
```{{execute T1}}

check the git log file 
```
git log
```{{execute T1}}