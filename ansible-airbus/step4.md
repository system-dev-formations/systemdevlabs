Go to step 3 beforehand

```
git clone https://github.com/<your github account>/tp-airbus.git
``` {{ copy }}


```
cd ~/tp-airbus 
``` {{ execute T1 }}

In VS code open folder tp-airbus

create a file named format_device.yml 

```
---
- name: format disk
  become: true
  hosts: localhost
  tasks:
    - name: get disk structure
      become: true
      command: fdisk -l
      register: get_disk
    - name: pour la mise au point
      debug:
        msg: " device : {{ get_disk.stdout | get_device }}"
```{{ copy }}

go to the directory filter_plugins  
and edit the file my_filters.py

Put the cursor on a top and select all lines   

add this code in myfilters.py

```
from natsort import natsorted
import subprocess
import re

class FilterModule(object):
    def filters(self):
        return {
            'a_filter': self.a_filter,
            'latest_version': self.latest_version,
            'get_device': self.get_device
        }
    def a_filter(self, a_variable):
        a_new_variable = a_variable + ' CRAZY NEW FILTER'
        return a_new_variable
    def latest_version(self, list_of_version):
        array = list_of_version.split("\n")
        sorted = natsorted(array)
        res = sorted[::-1]
        for val in res:
            list_of_version = val
            if len(list_of_version) == 4:
                m = re.search(r'^(v\d{1}.\d{1})', list_of_version)
                if m.group(0):
                    break
        return list_of_version
    def get_device(self, list_device):
        return list_device 
```{{ copy }}

and paste 


go the the main console and check 

```
cd ~/tp-airbus &&
ansible-playbook -i inventory_local format_device.yml
```{{ execute T1}}

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

```
git add . 
```{{ copy }}

```
git commit -m "Added a filter for formatting disk (part 1)"
```{{ copy }}

```
git push
```{{ copy }}




