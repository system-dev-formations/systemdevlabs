Loggez vous sous votre compte Docker hub
```
docker login
```{{execute T1}}

Downloader une image 
```
docker pull ubuntu
```{{execute T1}}

tagger cette image avec votre compte docker hub
```
docker image tag ubuntu <votre_repo>/myfirstimage
```{{execute T1}}

```
docker push <votre_repo>/myfirstimage
```{{execute T1}}

Verifier votre compte docker hub


