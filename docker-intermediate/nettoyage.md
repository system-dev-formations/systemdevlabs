Commande pour nettoyer notre environnement
### Nettoyage des containers
```
docker rm -f $(docker ps -aq)
```{{execute T1}}
on soumet a ```docker rm -f``` la liste des containers uuid avec ps -aq 

### Nettoyage des images   
```
docker rmi -f $(docker images -q)
```{{execute T1}}
On soumet a ```docker rmi -f ``` la liste des images uuid avec images -q

