
Premier deployment Kubernetes d'un server web Nginx.
Nous allons exécute les commandes nécessaires pour voir la page 
d'accueil de Nginx dans notre navigateur. 
Pour cela il y a quelques commandes de configuration a taper.
```
  k create deployment nginx --image=nginx
```{{ execute T1 }}

Vérification, relancer plusieur fois cette commande ci-dessous pour voir le 
résultat de la colonne READY, il doit etre égal a 1/1. 
Cela signifie que votre pod a été demarré. 
```
  k get deploy
```{{ execute T1 }}

Plus d'informations sur le déploiement
```
  k describe deploy nginx 
```{{ execute T1 }}

Affichage des pods
```
k get pod
```{{ execute T1 }}

