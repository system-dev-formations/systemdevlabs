
Faire un docker build pour creer l'image avec l'application 

```
docker build -t webflask . 
```{{execute T1}}

Lancement du container 

```
docker run -d -p 5000:5000 --name web  webflask 
```{{execute T1}}

Verification  

```
curl localhost:5000 
```{{execute T1}}