Fork the following repo to your github account
https://github.com/crunchy-devops/calc2.git
When pressing the green button you should have
https://github.com/<your_github_account>/calc2.git

### Do a git clone command 
```
cd ~ && git clone https://github.com/<your_github_account>/calc2.git
```{{copy}}

### Check local branch
```
cd calc2 && git branch 
```{{ execute T1 }} 

### Check all branches
```
git branch -a
```{{ execute T1 }}

### Check all remote branches
```
git branch -r
```{{ execute T1 }}

### Check all branches and the associated commit messages
```
git branch -av
```{{ execute T1 }}

### Get the number of commit a branch is ahead from the master
```
 git rev-list --left-right --count master...remotes/origin/exp
```{{ execute T1 }}

## Edit the list of all commits ahead from the master for a specific branch 
```
git rev-list --left-right --pretty=oneline master...remotes/origin/exp
```{{ execute T1 }}





Lancement d'un container de travail 
```
docker run -it ubuntu 
```{{execute T1}}

Tapez les commandes suivantes en sequence  
mise a jour des repos d'ubuntu
```
apt-get update
```{{execute T1}}

Installation des packages python
```
apt-get -y install python3 python3-pip vim 
```{{execute T1}}

Installation de la librairie flask   
```
pip3 install flask
```{{execute T1}}

Copier le code dans cette commande
```
cat > /opt/app.py
```{{execute T1}}

Faire un Ctrl-C et Ctrl-insert sous firefox ou paste sous chrome 
du code suivant
```
# app.py
import os
from flask import Flask
app = Flask(__name__)

@app.route("/")
def main():
    return "Welcome!"

@app.route('/how are you')
def hello():
    return 'I am good, how about you?'

if __name__ == "__main__":
    app.run()
```
et faire Enter et Ctrl-C pour sortir

Verification 
```
FLASK_APP=/opt/app.py flask run --host=0.0.0.0
```{{execute T1}}

vous devrez voir la mire web flask 

Ensuite faire un Ctrl-c et tapez ```history``` 
et faite un click droit, copy  des commandes que vous avez tapees precedement

```
exit
```{{execute T1}}

Ouvrir un fichier Dockerfile
```
vi Dockerfile
```{{execute T1}}

tapez  sur la touche i 
et faire un click droit , paste 








