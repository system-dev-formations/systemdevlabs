### Conversion d'un container en fichier tar.gz
Avec la container test cree au step 6 
```
docker export test > latest.tar
```{{execute T1}}

Importation du ficher tar.gz pour creer une image docker 
```
cat latest.tar | sudo docker import - alpine:v1
```{{execute T1}}

Verification 
```
docker images
```{{execute T1}}

Nous pouvons voir que les meta-data n'existent pas  
```
docker history alpine:v1
```{{execute T1}}

Danger des meta-data dans les images 
```
docker pull systemdevformations/ubuntu_ssh:v2
```{{execute T1}}

Nous pouvons voir les elements sensibles stockes dans l'image
```
docker history systemdevformations/ubuntu_ssh:v2
```{{execute T1}}


