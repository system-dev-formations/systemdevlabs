
###
creez un fichier dockerfile-cmd et copy le code suivant
```
FROM ubuntu
CMD ["sleep","5"]
```{{ copy }}

faire la commande suivante pour creer l'image
```
docker build -t test-cmd -f dockerfile-cmd . 
```{{execute T1}}


Verification 
```
docker images
```{{execute T1}}
