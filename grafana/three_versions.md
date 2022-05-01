
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

## Check
So now we got 3 differents version of test.py  
The file in the local repo contains version 1 text  
in staging area we have the version 1 and version2 text     
last, in working directory the file contains version 1, 2,3 text    

```
git status
```{{execute T1}}

## Edit diff files between committed or local repo file and staged file 
```
git diff --cached 
```{{execute T1}}

## check diff files between working directory and staged file

```
git diff --color
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
git commit -m"version 3 is there now"
```{{execute T1}}

## Check 
```
git log --oneline
```{{execute T1}}

## Git Web 
```
docker run -d -e "CONTAINER_TIMEZONE=Europe/Paris" -e "GITPROJECT=project" -v $PWD:/var/lib/git --name git-web -p 80:80 fraoustin/gitweb
```{{ execute T1 }}

user is gituser password gitpassword 