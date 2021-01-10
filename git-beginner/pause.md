
### executez ce container en tache de fond
```
docker run -d --name mytest ubuntu /bin/bash  -c "while true; do date ; sleep 5; done"
```{{execute T1}}

Verification des logs
```
docker logs mytest
```{{execute T1}}

Pause 
```
docker pause mytest
```{{execute T1}}

Verification des logs
```
docker logs mytest
```{{execute T1}}

unpause
```
docker  unpause mytest
```{{execute T1}}

Verification des logs
```
docker logs mytest
```{{execute T1}}
