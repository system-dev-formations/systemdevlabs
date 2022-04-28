Ansible Vault encrypts variables and files so you can protect sensitive content
such as passwords or keys rather than leaving it visible as plaintext in playbooks or roles

Go to 
```shell
cd ~ && cd tp-airbus/github.role/defaults
```{{ execute T1 }}

Check 
```shell
cat main.yml
```{{ execute T1 }}

encrypt
```shell
ansible-vault encrypt main.yml
```{{ execute T1 }}

Check 
```shell
cat main.yml
```{{ execute T1 }}


Enter a password for ansible-vault 
Save this password 
```shell
cd ~ && vim mysecret 
```{{ execute T1 }}

go back to tp-airbus 
```shell
cd ~ && cd tp-airbus
```{{ execute T1 }}

Enter 

```shell
ansible-playbook -i inventory_children --vault-password-file ~/mysecret github.yml
```{{ execute T1 }}

or save the path mysecret file in an exported variable

```shell
export  ANSIBLE_VAULT_PASSWORD_FILE=~/mysecret
```{{ execute T1 }}

Run as normal 
```shell
ansible-playbook -i inventory_children github.yml
```{{ execute T1 }}

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
git add . && git commit -m"added github role" && git push 
```{{ execute T1 }}