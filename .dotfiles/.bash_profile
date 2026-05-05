# echo ".bash_profile"
export BASH_SILENCE_DEPRECATION_WARNING=1
export PATH="/opt/homebrew/sbin:$PATH"
export PATH="/opt/homebrew/bin:$PATH"
[[ -r ~/.bash_login ]] && source ~/.bash_login
[[ -r ~/.bashrc ]] && source ~/.bashrc

# Possibly not needed b/c .ssh/config
# Force shell to load ssh (id_rsa only)
# ssh-add --apple-load-keychain
# ssh-add ~/.ssh/id_ed25519_claws

# Disabled 22 Mar 2026 trying to get `uv` working
# if [ -z "$TMUX" ]; then
#   tmux attach -t default || tmux new -s default
# fi

[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"
