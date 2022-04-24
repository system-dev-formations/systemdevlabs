
do 
```
cd ~/tp-airbus && vi format_device.yml
``` {{ execute T1}}

type i 
copy the code
right click in a console and paste

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

Install  get_device filter
```
cd filter_plugins && vi my_filters.py
```{{ execute T1}}

Put the cursor on the first line hit esc button type dd that will delete each line one by one.   

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

copy code and paste
hit Esc and :qw  that will save the file


Check 

```
cd ~/tp-airbus &&
ansible-playbook -i inventory_local format_device.yml
```{{ execute T1}}

Do a commit / push in your github repo 




