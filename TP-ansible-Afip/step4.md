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

FAITES DES COMMIT / PUSH REGULIERS VOTRE SESSION EST ACTIVW POUR SEULEMENT 1 HEURE



