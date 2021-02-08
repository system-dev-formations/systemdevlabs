
###  Si votre votre projet n'a pas ete cree

Verification 
```
git --version
```{{execute T1}}

Check de votre url 
```
git remote -v
```{{execute T1}}

Creer sous Github perso,  un repo nomme tp-afip-ansible
Copier votre nouvelle url  dans cette commande 
```
git remote set-url origin < votre url git du repo tp-afip-ansible
```
Verifier 
```
git remote -v
```{{execute T1}}

Mettre a jour les variables de configuration de git  
```
git config --global user.mail " votre adresse mail"
git config --global user.name "Votre Nom"
```
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









