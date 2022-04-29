This is a proof of concept regarding 2 differents tools  
<span style="color: blue;">Docker-compose</span>  
versus  
<span style="color: blue;">Ansible playbook</span>   

Ansible is also written in Python, and the Docker module uses the exact same docker-py API client that docker-compose uses.   
The key difference is that docker-compose can only do one thing: manage Docker containers.  
Ansible can do that too, and it can also do everything else that Ansible does, all in the same playbook.  


Fork the github repo named https://github.com/system-dev-formations/todo-flask-postgres.git
```
cd ~ && git clone https://github.com/<your github account>/todo-flask-postgres.git
```{{ copy }}

Go in the relevant directory 
```
cd ~ && cd todo-flask-postgres
```{{execute T1 }}

Run docker-compose 
```
docker-compose up -d 
```{{ execute T1 }}

And wait a little bit 

when the system is up I have to load some test case data manually
So we copy the sql script todos.sql in the db container  
```
cd sql && docker cp todos.sql todo-flask-postgres_db_1:/tmp 
```{{ execute T1 }}

Run portainer  
```shell
docker run -d --name portainer -p 80:9000 -v /var/run/docker.sock:/var/run/docker.sock portainer/portainer -H unix:///var/run/docker.sock 
```{{ execute T1 }}

Select view HTTP port 80 on host 1  
Set up a password and confirm   
Go to container and select db container   
On this line select **>_** characters it is an exec console tool   
Enter
``` 
cd /tmp 
ls 
su postgres 
psql
create database tododb; 
\c tododb 
\i todos.sql 
select * from todos ;
\q
exit 
```  
Check the application 
Select port to views on host 1 , enter 32500 

We going to study the code in playbook.yml 
Here is how a container is create using Ansible 
```
 docker_container:
        name: 'db'
        image: systemdevformations/docker-postgres12
        state: 'started'
        env:
          POSTGRES_PASSWORD: 'password' # Beware: in some version is POSTGRESQL_PASSWORD
        ports:
          - "6432:5432"
        volumes:
          - "/opt/postgres:/var/lib/postgresql/data"
          #- "./sql:/tmp"
      register: db_cont_metadata
```
wait_for module check if postgres service is up and running 
```
- name: wait for postgres to accept connections
  wait_for:
    host: "{{ result.container.NetworkSettings.IPAddress }}"
    port: 5432
    state: 'drained' # will check for active connection
    connect_timeout: 1
    timeout: 30  # maximum number of seconds to wait for
  register: postgresql_running
  until: postgresql_running is success
  retries: 10     
```
Now all test cases are create within Ansible playbook not manually
```
- name: Set up todos.sql script in docker container
  shell: docker cp ./sql/todos.sql db:/tmp
```
For managing the db container a new **in-memory** host is created 
```
- name: Add container db to in-memory inventory
  add_host:
  name: db
  ansible_connection: docker
  changed_when: false
```
check if the database exist in the container
usage raw module because there is no python interpreter in db container 
``` 
- name: run command in container db
  delegate_to: db
  remote_user: postgres
  raw: psql -l | grep tododb | wc -l
  register: result 
````










