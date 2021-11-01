Installer kind
```
cd && curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.11.1/kind-linux-amd64
```{{execute T1}}

Placer les droits d'execution sur le programme
```
chmod +x ./kind
```{{execute T1}}

Deplacer le programme kind dans une directory system
```
mv ./kind /usr/local/bin/kind 
```{{execute T1}}

Check 
```
kind version 
```{{execute T1}}

Installation du repo de travail de notre formation kubernetes
```
git clone https://github.com/system-dev-formations/k8s-webforce3.git
```{{execute T1}}

changement de directory
```
cd k8s-webforce3
```{{execute T1}}

Installation du cluster kubernetes a partir du fichier kind-config.yml
```
kind create cluster --name=kube --config kind-config.yml --image kindest/node:v1.22.2
```{{execute T1}}


