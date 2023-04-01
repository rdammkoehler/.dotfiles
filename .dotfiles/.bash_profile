export BASH_SILENCE_DEPRECATION_WARNING=1
source ~/.bash_login
source ~/.profile

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
export PATH="/usr/local/opt/openjdk/bin:$PATH"
export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"
export PATH="/usr/local/opt/gettext/bin:$PATH"
export PATH="/usr/local/opt/libpq/bin:$PATH"

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export LDFLAGS="-L/usr/local/opt/openssl@1.1/lib"
export CPPFLAGS="-I/usr/local/opt/openssl@1.1/include"
#export LDFLAGS="-L/usr/local/opt/gettext/lib"
#export LDFLAGS="-L/usr/local/opt/libffi/lib"
#export CPPFLAGS="-I/usr/local/opt/gettext/include"
#export CPPFLAGS="-I/usr/local/opt/openjdk/include"
#export LDFLAGS="-L/usr/local/opt/libpq/lib"
#export CPPFLAGS="-I/usr/local/opt/libpq/include"

if [ -z "$TMUX" ]; then
	tmux attach -t default || tmux new -s default
    # iterm integrated tmux -CC attach -t default || tmux -CC new -s default
fi
export PATH="/usr/local/sbin:$PATH"
source "$HOME/.cargo/env"

[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/rpd/projects/ConstructConnect/gcloud-cli/google-cloud-sdk/path.bash.inc' ]; then . '/Users/rpd/projects/ConstructConnect/gcloud-cli/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/rpd/projects/ConstructConnect/gcloud-cli/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/rpd/projects/ConstructConnect/gcloud-cli/google-cloud-sdk/completion.bash.inc'; fi
