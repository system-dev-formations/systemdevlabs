Log on on your docker hub account
```
docker login
```{{execute T1}}

Download that image 
```
docker pull ubuntu
```{{execute T1}}

tag this image with your docker hub account
```
docker image tag ubuntu <votre_repo>/myfirstimage
```{{execute T1}}

Check   
```
docker images
```{{execute T1}}

Push your image to docker hub 
```
docker push <votre_repo>/myfirstimage
```{{execute T1}}

Check docker hub


