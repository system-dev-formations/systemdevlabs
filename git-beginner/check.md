We are going to check our environment

### check if git is installed
Hit the following command for checking git version 
```
git --version 
```{{execute T1}}
et 
```
docker ps  
```{{execute T1}}

### Premier container : Hello world 
```
docker run docker/whalesay cowsay Hello-world!
```{{execute T1}}

### Voir l'etat de containers dans votre localhost
```
docker ps -a
```{{execute T1}}

### Voir la liste des images presentes sur votre localhost
```
docker images 
```{{execute T1}}