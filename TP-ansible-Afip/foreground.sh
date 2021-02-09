git clone http://github.com/master-afip/ansible-examples.git
alias ll='ls -alrt'
curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ~/.git-completion.bash
source ~/.git-completion.bash
PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '
sleep 1; wait.sh