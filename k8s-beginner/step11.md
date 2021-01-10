
### Installation du hostpath
```
k create -f mysqldb-hostpath.yaml
```{{ execute T1}}

### Verification du persistence volume
```
k get pv
```{{ execute T1 }}

### Installation du persistence volume claim
```
k create -f mysqldb-pvc.yaml
```{{ execute T1}}

### Download du chart mysql et configuration 
```
helm install  mysql --set mysqlRootPassword=rootpassword,mysqlUser=mysql,mysqlPassword=my-password,mysqlDatabase=mydatabase,persistence.existingClaim=mysql-pvc stable/mysql
```{{ execute T1}}

### Comment obtenir le password de mysql
```
MYSQL_ROOT_PASSWORD=$(kubectl get secret --namespace default mysql -o jsonpath="{.data.mysql-root-password}" | base64 --decode; echo) && echo $MYSQL_ROOT_PASSWORD
```{{ execute T1 }}

### Installer le client Mysql 
```
apt-get install -y mysql-client-core-5.7
```{{ execute T1}}

### Faire un port-forward du port de mysql 
```
 k port-forward svc/mysql 3306
```{{ execute T1 }}

et faire cette commande dans un autre shell, et entrez le password de mysql
```
mysql -h 127.0.0.1 -P 3306 -u root -p
```{{ execute T1 }} 










