Roles let you automatically load related vars, files, tasks, handlers, and other Ansible artifacts based on a known file structure.
After you group your content in roles,
you can easily reuse them and share them with other users

In your home directory 
```shell
cd ~ && cd tp-airbus
```{{ execute T1 }}

Create a role 
```
ansible-galaxy init github.role
```{{ execute T1 }}

Create in a brand new github.yml file  
And copy/paste the following code 
```
---
- name: use a dedicated Ansible module
  hosts: localhost
  roles:
    - { role: github.role }
```{{ copy }}

In tp-airbus/github.role/tasks/main.yml 
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

in tp-airbus/github.role/defaults/main.yml
Copy / Paste
```
# default file for github.role
git_key: d6f90b4be8axxxxxxxxxxxxxxx
```{{ copy }}

```
ansible-playbook -i inventory_children github.yml
```{{ execute T1 }}

**DO NOT SAVE YOUR REPO IN GITHUB NOW ** 


