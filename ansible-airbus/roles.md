Roles let you automatically load related vars, files, tasks, handlers, and other Ansible artifacts based on a known file structure.
After you group your content in roles,
you can easily reuse them and share them with other users

In your home directory 
```shell
cd ~ && mkdir example-role  && cd example-role
```{{ execute T1 }}

Create a role 
```
ansible-galaxy init github.role
```{{ execute T1 }}

Copy / Paste in a brand new playbook.yml file
 
```
---
- name: use a dedicated Ansible module
  hosts: localhost
  roles:
    - { role: github.role }
```{{ copy }}

In example-role/github.role/tasks/main.yml 
copy/paste
```
# tasks file for github.role
- name: Create a github Repo
  github_repo:
    github_auth_key: "{{ git_key }}"
    name: "repo-create-with-ansible"
    description: "Ansible module for github"
    private: no
    has_issues: no
    has_wiki: no
    has_downloads: no
    state: present
  register: result
```{{ copy }}

in example-role/github.role/defaults/main.yml
Copy / Paste
```
# default file for github.role
git_key: d6f90b4be8axxxxxxxxxxxxxxx
```{{ copy }}

In your example directory 
```
cd ~ && cd example-role
```{{ execute T1 }}


```
cp -r ../tp-airbus/library .
```{{ execute T1 }}

```
cp -r ../tp-airbus/inventory_children .
```{{ execute T1 }}

```
ansible-playbook -i inventory_children playbook.yml
```{{ execute T1 }}




