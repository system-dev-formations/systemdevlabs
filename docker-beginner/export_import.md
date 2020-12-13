### Conversion d'un container en fichier tar.gz
Avec la container test creer au step 6 
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


