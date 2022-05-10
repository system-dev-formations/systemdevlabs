apt update
curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.12.0/kind-linux-amd64
chmod +x ./kind
mv ./kind /usr/local/bin/kind
install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
alias k='kubectl'
curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ~/.git-completion.bash
source ~/.git-completion.bash
git clone http://github.com/system-dev-formations/k8s-webforce3.git
cd ~ && cd k8s-webforce3/lab-kind
kind create cluster --name=kube --config kind-config.yml --image kindest/node:v1.24.0
alias ll='ls -alrt'
PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '
cd ~ && clear