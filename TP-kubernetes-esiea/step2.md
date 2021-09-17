
Pour que le master puisse intégrer des objets Kubernetes pour les besoins de cette formation. 
Nous devons le configurer de cette maniere
**Attention: Ces commandes ne doivent pas etre effectuées dans un cluster de production**

### Recherche du l'objet taint
```
k describe node | grep -i taint
```{{execute T1}}

### Effacement de l'option taint sur le master    

```
k taint nodes --all node-role.kubernetes.io/master-
```{{execute T1}}

### Vérification 
Nous allons deployer un objet de type DaemonSet qui se place sur tous les nodes du cluster. 
Comme le master accepte maintenant les objets Kubernetes, nous devons avoir 2 DaemonSets deployés.

```
kubectl create deploy nginx-daemon --image=nginx --dry-run=client -o yaml | 
sed '/null\|{}\|replicas/d;/status/,$d;s/Deployment/DaemonSet/g' > nginx-ds.yaml
```{{execute T1}}

On applique le script

```
kubectl apply -f nginx-ds.yaml
```{{execute T1}}

### Voir le Resultat
```
kubectl get pod -o wide
```{{execute T1}}
On voit que les pod Daemon sont presents sur le controlplane et le node01

### Delete
```
kubectl delete ds nginx-daemon
```{{execute T1}}
On voit que les pod Daemon sont presents sur le controlplane et le node01
