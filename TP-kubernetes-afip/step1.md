
Vérifiez si le cluster est pret
```
k get nodes
```{{execute T1}}

Lancer plusieurs fois la commande ci-dessus pour vérifier. Il faut que le master
et le node soient en statut Ready.   

Faites cette commande qui présente plus infos sur la configuration du 
cluster 
```
k get nodes -o wide
```{{execute T1}}

Activez la completion en ligne de commande pour éviter de taper les noms 
des objet Kubernetes qui peuvent etre tres longs. 
A noter: k est un alias pour le programme kubectl 
```
source <( kubectl completion bash | sed s/kubectl/k/g)
```{{execute T1}}

Voir les informations d'un noeud .
```
k describe node node01
```{{execute T1}}

