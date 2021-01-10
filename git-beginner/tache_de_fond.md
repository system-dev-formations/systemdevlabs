Executez la commande suivante pour demarrer un container centos qui lance un shell
```
docker run -it --name mycontainer centos /bin/bash
```{{execute T1}}

 * it signifie  i - interactif et t c'est le display tty
 * name  le nom du container 
 * centos c'est l'image stockee dans Docker Hub 
 * /bin/bash la commande a execute au lancement du container

ensuite  
```
exit 
```{{execute T1}}

Votre container est alors inactif, pour le lancer
```
docker start mycontainer 
```{{execute T1}}

et pour avoir a nouveau le shell 
```
docker attach mycontainer 
```{{execute T1}}

pour le detruire
```
exit
```{{execute T1}}

et rm -f fait un docker stop et docker rm en une commande  

```
docker rm -f mycontainer
```{{execute T1}}

Pour le lancer en tache de fond , avec le switch -d  
```
docker run -it -d --name mycontainer centos /bin/bash
```{{execute T1}}

Verification 
```
docker ps 
```{{execute T1}}
