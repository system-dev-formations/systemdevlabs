Creez un pod avec une commande imperative
```
kubectl run nginx-pod --image=nginx --port=8080
```{{ execute T1 }}

Verification
```
kubectl get pod 
```{{ execute T1 }}

Nous allons genere un fichier YAML a partir du pod cree dans Kubernetes
```
cd /root/k8s-webforce3/lab-pod &&
kubectl get pod nginx-pod -o yaml > first.yaml 
```{{ execute T1 }}

Une application va permettre le nettoyage des parties inutiles de ce fichier 
```
wget https://github.com/itaysk/kubectl-neat/archive/v2.0.2.tar.gz &&
 tar -zxvf v2.0.2.tar.gz
```{{ execute T1 }}

et

```
cd kubectl-neat-2.0.2 && make
```{{ execute T1 }}
Note: il y a une erreur dans l'execution des tests mais le programme est correct  

installation du programme
```
mv dist/kubectl-neat_linux /usr/local/bin/kubectl-neat
```{{ execute T1 }}

Usage avec un pipe et une redirection 
```
kubectl get pod nginx-pod -o yaml | kubectl-neat > /root/k8s-webforce3/lab-pod/second.yaml 
```{{ execute T1 }}

Change directory
```
cd /root/k8s-webforce3/lab-pod
```{{execute T1}}

Voir les differences 
```
diff first.yaml second.yaml 
```{{execute T1 }}

Le fichier first.yaml est tres verbeux. 
le fichier second.yaml est notre fichier de travail
```
cat second.yaml
```{{ execute T1}}




