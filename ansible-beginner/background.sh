apt update
apt -y install ansible
docker run -d --name target1 systemdevformations/ubuntu_ssh:v2
docker run -d --name target2 systemdevformations/centos_ssh:v5
docker run -d --name target3 --env ROOT_PASSWORD=Passw0rd systemdevformations/alpine-ssh:v1
echo done >> /root/katacoda-finished
echo done >> /root/katacoda-background-finished