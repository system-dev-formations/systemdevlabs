apt update
apt -y install ansible
pip3 install natsort
docker run -d --name target1 systemdevformations/ubuntu_ssh:v2
docker run -d --name target2 systemdevformations/centos_ssh:v5
docker run -d --name target3 --env ROOT_PASSWORD=Passw0rd systemdevformations/alpine-ssh:v1
curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ~/.git-completion.bash
git clone http://github.com/crunchy-devops/ansible-course.git
source ~/.git-completion.bash
alias ll='ls -alrt'
PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '
clear