Lancement de launch.sh qui va installer le cluster

```
launch.sh
```{{execute T1}}

Observer si le cluster est pret
```
k get nodes
```{{execute T1}}

Lancer plusieurs fois la commande ci-dessus pour verifier  

Faites cette commande qui presente plus infos sur la configuration du 
cluster 
```
k get nodes -o wide
```{{execute T1}}
