
Faire un docker build pour creer l'image avec l'application 

```shell script
docker build -t webflask . 
```{{execute T1}}

Lancement du container 

```shell script
docker run -d -p 5000:5000 --name web  webflask 
```{{execute T1}}

Verification 
```shell script
curl localhost:5000 
```{{execute T1}}