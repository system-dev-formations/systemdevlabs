Helm est un repository d'objet Kubernetes, développé par la communauté Kubernetes
et mise a disposition a travers cette application.   
Comme github qui propose des projets open-source  
Docker hub propose des images docker   
Ansible-galaxy  fournit des roles Ansible pour installer des logiciels  
Helm fourni des application Kubernets pretes a l'emploi.

### Downloader la derniere version de helm 
```
cd && wget https://github.com/helm/helm/archive/v3.4.2.tar.gz
```{{ execute T1}}

### Decompression du fichier tar.gz
```
tar -zxvf v3.4.3.tar.gz
```{{ execute T1 }}

### Build 
```
cd helm-3.4.3 && make 
```{{ execute T1}}

### Copy du binaire helm dans /usr/local/bin
```
cp bin/helm /usr/local/bin/helm
```{{ execute T1}}

### Verification 
```
cd ~/k8s-webforce3 && helm version 
```{{ execute T1 }}




 

