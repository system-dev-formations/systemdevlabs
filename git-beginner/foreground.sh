apt update
git clone https://github.com/git/git.git
git clone https://github.com/crunchy-devops/app-flask.git
curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ~/.git-completion.bash
source ~/.git-completion.bash
alias ll='ls -alrt'
PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '
pip3 install flask
apt -y install tig && clear && cd ~