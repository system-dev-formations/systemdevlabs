Faites un nettoyage , voir  Step 3
### docker commit
```
docker run -it --name test alpine
```{{execute T1}}

sortir du container
```
exit
```{{execute T1}}

Effectuez un docker commit pour creer l'image a partir d'un container
```
docker commit test alpine:version3
```{{execute T1}}

Verification 
```
docker images
```{{execute T1}}
