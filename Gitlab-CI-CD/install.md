
Create an ssh key, hit enter to accept all default and no passphrase
```
ssh-keygen -t rsa -b 4096
```{{ execute T1 }}

Propagate this ssh key to the remote vm **Don't miss changing this IP address** 
```
ssh-copy-id  ubuntu@51.255.211.137
```{{ copy }}

Copy and paste the password provided for the VM

ssh to your vm  
```
ssh ubuntu@51.255.211.137
```{{ copy  }}

Update repo and install git
```
apt update && apt install -y git docker.io
```{{ execute T1}}

```
sudo usermod -aG docker ubuntu
```{{ execute T1}}

leave your ssh session
```
exit
```{{ execute T1}}

ssh to be back to your vm  
```
ssh ubuntu@51.255.211.137
```{{ copy  }}

Update repo and install git
```
git clone https://github.com/crunchy-devops/gitlab-course.git
```{{ execute T1}}


Update repo and install git
```
cd gitlab-course && docker-compose up -d
```{{ execute T1}}
