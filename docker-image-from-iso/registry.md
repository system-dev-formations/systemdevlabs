Set up a docker Registry 
```
docker run -d -p 5000:5000 --name registry registry:2
```{{execute T1}}

Download and image
```
docker pull ubuntu
```{{execute T1}}

Tag the image
```
docker image tag ubuntu localhost:5000/myfirstimage
```{{execute T1}}

Check 
```
docker images
```{{execute T1}}

Push the image to the registry 
```
docker push localhost:5000/myfirstimage
```{{execute T1}}

Check  
```
curl localhost:5000/v2/_catalog 
```{{execute T1}}


