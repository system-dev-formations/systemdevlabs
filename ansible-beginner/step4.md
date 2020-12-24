## Les facts

Les facts sont des grosses structures de donnees qui sont echangees entre la machine
`ansible controller` et les machines distantes. Ces structures donnees contiennent 
des informations comme: le nom de l'OS, la memoire, les cartes reseau ...etc  
La commande suivante affiche l'interface IPV4 presente sur les hosts  
```
ansible all -m setup -a "filter=ansible_default_ipv4"  -i inventory_katacoda
```{{execute T1}}

Avec cette commande on recherche le type de distribution   
```
ansible all -m setup -a "filter=ansible_distribution"  -i inventory_katacoda
```{{execute T1}}

Avec cette commande on recherche la version de la distribution 
```
ansible all -m setup -a "filter=ansible_distribution_version"  -i inventory_katacoda
```{{execute T1}}