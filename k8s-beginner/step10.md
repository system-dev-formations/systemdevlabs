
### Recherche des logiciels, dans la terminologie Helm ils sont appelés **Chart**.
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



 

