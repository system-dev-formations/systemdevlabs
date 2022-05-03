apt update
git clone https://github.com/crunchy-devops/prometheus-grafana.git
pip3 install docker-compose
curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ~/.git-completion.bash
source ~/.git-completion.bash
alias ll='ls -alrt'
PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '
pip3 install flask
apt -y install tig && clear && cd ~
EXTENSION_DIR=/opt/.katacodacode/extensions/humao.rest-client-0.24.3
while ! [ -d "$EXTENSION_DIR" ];
do
  clear;
  echo 'Installing VS Code extensions, please wait before opening the IDE'.
  sleep 1
done
clear
: VS Code extensions installed,