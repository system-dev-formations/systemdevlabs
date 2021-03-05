
###  Si votre votre projet n'a pas ete cree

Verification 
```
git --version
```{{execute T1}}

Check de votre url 
```
git remote -v
```{{execute T1}}

Creer sous Github perso,  un repo nomme tp-aston-ansible
sans README.md, .gitignore, LICENSE
Copier votre nouvelle url  dans cette commande 
```
git remote set-url origin < votre url git du repo>
``` {{ copy }}

Verifier
```
git remote -v
```{{execute T1}}

Mettre a jour les variables de configuration de git  
```
git config --global user.email " votre adresse mail"
```{{ copy }}
```
git config --global user.name "Votre Nom"
``` {{ copy }}

faire un 
```
git add . 
```{{execute T1}}

faire un 
```
git commit -m "First initial"
```{{execute T1}}

faire un 
```
git push
```{{execute T1}}









