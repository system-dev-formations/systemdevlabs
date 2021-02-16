git clone http://github.com/master-afip/ansible-examples.git
sleep 1; wait.sh
source ~/.git-completion.bash
alias ll='ls -alrt'
PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '