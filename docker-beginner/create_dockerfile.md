
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
et Ctrl-C pour sortir

Verification 
```
FLASK_APP=/opt/app.py flask run --host=0.0.0.0
```{{execute T1}}

vous devrez avoir la mire web flask 







