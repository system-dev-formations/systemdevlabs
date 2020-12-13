Avant de commencer, nous allons verifier si docker est present

### Verifier si docker est actif
Executez les commandes suivantes pour voir si docker est actif
```
docker version 
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