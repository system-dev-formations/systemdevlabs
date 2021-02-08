
On va decoupe cette chaine par le separateur caractere blanc
```
value = sol[0].split()
print(value)
```{{ execute T1}}

La chaine qui nous interesse est en position 1
```
print(value[1])
```{{ execute T1}}

On elimine le caractere de fin 
[:-1] prend tous les caracteres de la chaine sauf le dernier
```
print(value[1][:-1])
```{{ execute T1 }}


