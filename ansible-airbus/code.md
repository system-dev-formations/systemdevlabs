Add a file setup-CentOS.yml
```
cd ~ && cd tp-airbus/postgresql.role/tasks && vim setup-CentOS.yml
```{{ execute T1 }}

```
---
- name: Check if the postgresql packages are installed
  yum:
    name: "{{ postgresql_packages }}"
    state: present

- name: Check if the postgresql librairies are installed
  yum:
    name: "{{ postgresql_python_library }}"
    state: present
```{{ copy }}

Add a file  initialize.yml

```
cd ~ && cd tp-airbus/postgresql.role/tasks && vim initialize.yml
```{{ execute T1 }}

Copy and paste this code 
```
---
- name: Set Postgresql environment variables
  template:
    src: postgres.sh.j2
    dest: /etc/profile.d/postgres.sh
    mode: 0644
  notify: restart postgresql

- name: Check if Postgresql directory exists
  file:
    path: "{{ postgresql_data_dir }}"
    owner: "{{ postgresql_user }}"
    group: "{{ postgresql_group }}"
    state: directory
    mode: 0700

- name: Check if Postgresql database is initialized
  stat:
    path: "{{ postgresql_data_dir }}/PG_VERSION"
  register: pgdata_dir_version
  tags:
    - db_init

- name: Ensure PostgreSQL database is initialized
  command: "{{ postgresql_bin_path }}/initdb -D {{ postgresql_data_dir }}"
  when: not pgdata_dir_version.stat.exists
  become: true
  become_user: "{{ postgresql_user }}"
```{{ copy }}

Add users.yml file

```
cd ~ && cd tp-airbus/postgresql.role/tasks && vim users.yml
```{{ execute T1 }}

Copy and Paste this code 
```
---
- name: Ensure Postgresql users are present
  postgresql_user:
    name: "{{ item.name }}"
    password: "{{ item.password | default(omit) }}"
    encrypted: "{{ item.encrypted | default(omit) }}"
    priv: "{{ item.priv | default(omit) }}"
    role_attr_flags: "{{ item.role_attr_flags | default(omit) }}"
    db: "{{ item.db | default(omit) }}"
    login_host: "{{ item.login_host | default(omit) }}"
    login_password: "{{ item.login_password | default(omit) }}"
    login_user: "{{item.login_user | default(omit) }}"
    port: "{{item.port | default(omit) }}"
    state: "{{ item.state | default(omit) }}"
  with_items: "{{ postgresql_users }}"
  #no_log: "{{ postgresql__users_no_log }}"
  become: true
  become_user: "{{ postgresql_user}}"
```{{ copy }}

Add the file which the mix of the distribution name and version , here it's CentOS-7.yml
```
cd ~ && cd tp-airbus/postgresql.role/tasks && vim CentOS-7.yml
```{{ execute T1 }}

Copy/paste this code 
```
---
postgresql_version: "9.2"
postgresql_data_dir: "/var/lib/pgsql/data"
postgresql_bin_path: "/usr/bin"
postgresql_config_path: "/var/lib/pgsql/data"
postgresql_daemon: postgresql
postgresql_packages:
  - postgresql
  - postgresql-server
  - postgresql-contrib
  - postgresql-libs
postgresql_python_library:
  - postgresql-plpython
  - python-psycopg2
```{{ copy }}

Add an handler, it will restart postgres service automatically when the postgres configuration is modified

```
cd ~ && cd tp-airbus/postgresql.role/handlers && vim main.yml
```{{ execute T1 }}

```
- name: restart postgresql
  service:
    name: "{{ postgresql_daemon}}"
    state: "{{ postgresql_restarted_state }}"
    sleep: 5
```{{ copy }}


Add a defaults

```
cd ~ && cd tp-airbus/postgresql.role/defaults && vim main.yml
```{{ execute T1 }}

Copy and paste this code

```
postgresql_enablerepo: ""

postgresql_restarted_state: "restarted"

postgresql_user: postgres
postgresql_group: postgres

postgresql_service_state: started
postgresql_service_enabled: true

postgresql_users_no_log: true

postgresql_users: []
```{{ copy }}

Add a templates jinja2 file 

```
cd ~ && cd tp-airbus/templates && vim postgres.sh.j2
```{{ execute T1 }}

Copy and paste this code
```
export PGDATA={{ postgresql_data_dir }}
export PATH=$PATH:{{ postgresql_bin_path }}
```{{ copy }}

## Give some info to git regarding your identity 
Set your email and user name
```
git config --global user.email "dockerlite@gmail.com"
```{{ copy }}
Right click on the console and paste  
Change the email address   
```
git config --global user.name "Herve"
```{{ copy }}
Right-click on the console and paste   
Put your name   

and now your can save your repo safetly 
```shell
cd ~ && cd tp-airbus && git add . && git commit -m"added code for postgresql role" && git push 
```{{ execute T1 }}








