if [[ -f /etc/bash.bashrc ]]; then
    . /etc/bash.bashrc
fi
if [[ -f $HOME/.bashrc ]]; then
    . $HOME/.bashrc
fi
PS1="[ssh] $PS1"