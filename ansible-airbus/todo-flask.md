This is a proof of concept regarding 2 differents tools
<span style="blue: blue;">Docker-compose/span>
versus
<span style="color: blue;">Ansible playbook</span> 

Ansible is also written in Python, and the Docker module uses the exact same docker-py API client that docker-compose uses. 
The key difference is that docker-compose can only do one thing: manage Docker containers. 
Ansible can do that too, and it can also do everything else that Ansible does, all in the same playbook.


Fork the github repo named https://github.com/system-dev-formations/todo-flask-postgres.git
```
cd ~ && git clone https://github.com/<your github account>/todo-flask-postgres.git
```{{execute T1 }}

Go in the relevant directory 
```
cd ~ && cd todo-flask-postgres
```{{execute T1 }}

Run docker-compose 
```
docker-compose up -d 
```{{ execute T1 }}

And wait a little bit 









