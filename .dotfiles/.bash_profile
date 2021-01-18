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
