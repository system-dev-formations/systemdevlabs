Analyse du fichier
```
cat ansible_facts_using_when.yml
```{{execute T1}}

Test avec when 
```
ansible-playbook -i inventory_katacoda ansible_facts_using_when.yml
```{{execute T1}}

Analyse du fichier
```
cat ansible_facts_using_when.yml
```{{execute T1}}

Test avec assert 
```
ansible-playbook -i inventory_katacoda ansible_facts_using_assert.yml
```{{execute T1}}