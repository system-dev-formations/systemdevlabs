
Pour que le master puisse integrer des objets Kubernetes de cette formation. 
Nous devons le configurer de cette maniere
**Attention: Ces commandes ne doivent pas etre effectuees dans un cluster de production**

### Recherche du taint
```
k describe node | grep -i taint
```{{execute T1}}

### Effacement de l'option taint sur le master    

```
k taint nodes --all node-role.kubernetes.io/master-
```{{execute T1}}

## Verification 
Nous allons deployer un objet de type DaemonSet qui se place sur tous les nodes du cluster. 
Comme le master accepte les objets Kubernetes, nous devons avoir 2 DaemonSets deployes.

```
kubectl create deploy nginx --image=nginx --dry-run -o yaml | 
sed '/null\|{}\|replicas/d;/status/,$d;s/Deployment/DaemonSet/g' > nginx-ds.yaml
```{{execute T1}}

et 

```
kubectl apply -f nginx-ds.yaml
```{{execute T1}}