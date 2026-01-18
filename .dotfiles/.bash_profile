# echo ".bash_profile"
export BASH_SILENCE_DEPRECATION_WARNING=1
[[ -r ~/.bash_login ]] && source ~/.bash_login
[[ -r ~/.bashrc ]] && source ~/.bashrc

if [ -z "$TMUX" ]; then
  tmux attach -t default || tmux new -s default
fi
export PATH="/usr/local/sbin:$PATH"

[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"
