
Nous allons recuperer un repo github de travail
```
git clone   https://github.com/system-dev-formations/k8s-webforce3.git && cd k8s-webforce3
```{{ execute T1 }}

Premier deployment Kubernetes d'un server web Nginx.
```
  k create deployment nginx --image=nginx
```{{ execute T1 }}

Verification
```
  k get deploy
```{{ execute T1 }}

Plus d'informations sur le deploiement
```
  k describe deploy nginx 
```{{ execute T1 }}

