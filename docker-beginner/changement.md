
### executez ce container en tache de fond
```
docker run -it --name test ubuntu
```{{execute T1}}

Creez des fichiers vides dans le container
```
touch {abc,def,ghi}
```{{execute T1}}

Verification 
```
ls -alrt
```{{execute T1}}

On sort du container 
```
exit
```{{execute T1}}

et on voit les differences au sien du container avec l'image sur le disque
```
docker diff test
```{{execute T1}}

C dénote un changement , A dénote un ajout , D dénote un retrait

