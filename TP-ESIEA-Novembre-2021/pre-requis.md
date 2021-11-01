
### Pre-requis

Installer le repo todo-flask-postgres
```
git clone https://github.com/system-dev-formations/todo-flask-postgres.git
```{{execute T1}}

changement de directory
```
cd todo-flask-postgres
```{{execute T1}}

installation des paquets pour gerer le virtualenv
```
apt update && apt install python3 python3-venv
```{{execute T1}}
 
Configuration du virtualenv
```
python3 -m venv venv && source venv/bin/activate
```{{execute T1}}
 
Installation des paquets pip3 pour ansible et docker-compose
```
pip3 install wheel ansible docker-compose
```{{execute T1}} 

Verifier la version d'ansible
```
ansible --version
```{{execute T1}}

installation de Postgresql et chargement de la base de donnees tododb
```
ansible-playbook -i inventory playbook.yml
```{{execute T1}}
 
installation de l'application todo
```
ansible-playbook -i inventory install-todoapplication.yaml
```{{execute T1}}
 
