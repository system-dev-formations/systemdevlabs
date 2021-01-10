
C'est la plus petite unité d'exécution de Kubernetes. 

```
k get pod
```{{ execute T1}}

Le nom de ce pod introduit le concept de **Pets vs Cattle**.

Vous avez nommé vos machines avec noms recherches pour les identifier. 
Elles sont uniques, vous les avez configurées manuellement avec tendresse. 
Si elles sont arrretées tout le monde le remarque. 
Les exemples de machine de type **Pets** sont les mainframes, les servers uniques, les load-balancers
les firewalls, les bases de données et autres. 
Les serveurs que vous avez nommés web01, web02 ressemblent a des vaches dans un troupeau , chaque server 
est identique , si un crash , il est remplacé par un autre 
Les exemples de machine de type **Cattle** sont les web servers, no-sql clusters, queuing cluster, reverse-proxy,
multi-master, big-data cluster et autres.
Le modele **Cattle** a evolué d'un installation en bare-metal vers le Cloud en utilisant le concept
d'Infrastructure As Code avec un provisioning par Ansible, Puppet ou Chef .
 


 

