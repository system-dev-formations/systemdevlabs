Update of OS packages
```
apt-get update
```{{execute T1}}

Install tools
```
sudo apt-get -y install libguestfs-tools
```{{execute T1}}

Download the qcow2 file
```
wget https://iweb.dl.sourceforge.net/project/gns-3/Qemu%20Appliances/alpine-linux-3.2.3.qcow2
```{{execute T1}}

Convert qcow2 in tar.gz
```
sudo virt-tar-out -a alpine-linux-3.2.3.qcow2 / - | gzip --best > alpine.tgz
```{{execute T1}}

docker import  
```
cat alpine.tgz | docker import - alpine:base
```{{execute T1}}

Check  
```
docker images
```{{execute T1}}


