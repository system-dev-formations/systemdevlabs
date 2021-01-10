
### Telecharger une image de Docker Hub
```
docker pull busybox:latest
```{{execute T1}}

La convertir en tar.gz
```
docker save -o myfile.tar busybox:latest
```{{execute T1}}

On detruit cette image sur le disque
```
docker rmi -f busybox:latest
```{{execute T1}}

On la cree a partir du fichier tar.gz avec docker load
```
docker load --input myfile.tar
```{{execute T1}}

Verification 
```
docker images
```{{execute T1}}

Nous pouvons voir les meta-data qui ont construit l'image 
```
docker history busybox:latest
```{{execute T1}}


