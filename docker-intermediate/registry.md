Installer un container docker Registry 
```
docker run -d -p 5000:5000 --name registry registry:2
```{{execute T1}}

Downloader une image 
```
docker pull ubuntu
```{{execute T1}}

tagger cette image avec le DNS de la local registry privee
```
docker image tag ubuntu localhost:5000/myfirstimage
```{{execute T1}}

Verification  
```
docker images
```{{execute T1}}

Charement de l'image dans la registry prive 
```
docker push localhost:5000/myfirstimage
```{{execute T1}}

Verification 
```
curl localhost:5000/v2/_catalog 
```{{execute T1}}


