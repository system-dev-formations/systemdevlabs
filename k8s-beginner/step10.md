Helm est un repository d'objet Kubernetes, développé par la communauté Kubernetes
et mise a disposition a travers cette application. 
Comme github qui propose des projets open-source
Docker hub propose des images docker 
Ansible-galaxy  fournit des roles Ansible pour installer des logiciels
Helm fourni des application Kubernets pretes a l'emploi.

### Recherche de logiciel qui sont appellés Chart
```
helm search hub wordpress
```{{ execute T1}}

### Ajouter un repo
```
helm repo add stable https://charts.helm.sh/stable
```{{ execute T1 }}

### Verification du contenu du repo
```
helm search repo stable 
```{{ execute T1}}

### Update du repo 
```
helm repo update
```{{ execute T1}}



 

