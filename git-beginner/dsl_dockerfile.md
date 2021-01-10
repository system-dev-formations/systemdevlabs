modifier la fichier Dockerfile pour obtenir le script suivant 

```dockerfile
FROM ubuntu
RUN apt-get update
RUN apt-get -y install python3 python3-pip vim
RUN pip3 install flask
COPY app.py /opt/app.py
ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0
```
Esc et : et tapez wq pour sauvegarder

Creer la fichier app.py

```
vi app.py
```{{execute T1}}

tapez  i et copier le code suivant 

```python
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

Esc et : et tapez wq pour sauvegarder


