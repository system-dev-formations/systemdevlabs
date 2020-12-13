Mise a jour des repos
```
apt-get update
```{{execute T1}}

Installation des packages virt-tar-out et autres
```
sudo apt-get -y install libguestfs-tools
```{{execute T1}}

Download du fichier alpine qcow2
```
wget https://iweb.dl.sourceforge.net/project/gns-3/Qemu%20Appliances/alpine-linux-3.2.3.qcow2
```{{execute T1}}

Conversion du fichier qcow2 en tar.gz
```
sudo virt-tar-out -a alpine-linux-3.2.3.qcow2 / - | gzip --best > alpine.tgz
```{{execute T1}}

docker import et creation de l'image 
```
cat alpine.tgz | docker import - alpine:base
```{{execute T1}}

Verification 
```
docker images
```{{execute T1}}


