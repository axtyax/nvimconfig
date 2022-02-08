# Use powerline
USE_POWERLINE="true"
# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi
# Use manjaro zsh prompt
if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
  source /usr/share/zsh/manjaro-zsh-prompt
fi

# nvim initialization
source /usr/share/nvm/init-nvm.sh;

# aliases
alias ssh-caen='ssh axtya@oncampus-course.engin.umich.edu';
alias sshfs-caen='mkdir -p ~/.remote_caen_fs; sshfs axtya@oncampus-course.engin.umich.edu:~/home/axtya ~/.remote_caen_fs';

# golang
export PATH="${PATH}:/usr/local/go/bin";

# rust
export PATH="${PATH}:/usr/bin";
. "$HOME/.cargo/env"


