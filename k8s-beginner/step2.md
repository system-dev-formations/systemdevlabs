
Premier deployment Kubernetes d'un server web Nginx.
```
  k create deployment nginx --image=nginx
```{{ execute T1 }}

Vérification, relancer plusieur fois cette commande ci-dessous pour voir le 
résultat de la colonne READY, il doit etre égale a 1/1. 
Cela signifie que votre pod a été demarré. 
```
  k get deploy
```{{ execute T1 }}

Plus d'informations sur le déploiement
```
  k describe deploy nginx 
```{{ execute T1 }}

