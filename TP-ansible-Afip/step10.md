## Filtres

Creez un fichier playbook nomme format_device.yml
et copiez le code suivant
```yaml
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
    #- name: prochaine etape, tester avec une list de device vide
    #  vars:
    #    device: "{{ get_disk.stdout | get_device }}"
    #  shell: echo {{ item }}
    #  when: device is defined 
    #  loop: "{{ device }}"
    #- name: format all relevant devices
    #- name: Format disk
    #  vars:
    #    device: "{{ get_disk.stdout | get_device }}"
    #  filesystem:
    #    fstype: ext4
    #    dev: {{ item }}
    #  when: device is defined
    #  loop: "{{ device }}
```

Mettre en place le filtre get_device
faire 
```
cd filter_plugins
vi my_filters.py
```{{ execute T1}}

Ajouter ces parties de code dans le fichier filter_plugins/myfilters.py 
```
#en entete
import subprocess
# dans la fonction filters , ajoutez l'appel de notre filtre
     'latest_version': self.latest_version,
     'get_device': self.get_device
# ne pas oublier la virgule a la fin de la ligne latest_version
# ajout de votre fonction a la fin du script 
def get_device(self,list_device):
    return list_device
```

Verifier avec la commande suivante
```
ansible-playbook -i inventory format_device.yml
```{{ execute T1}}

FAITES DES COMMIT / PUSH REGULIER VOTRE SESSION EST VALIDE SEULEMENT
POUR 1 HEURE



