source ~/.bash_login
source ~/.profile
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

export DATA_LAKE_CLIENT_SECRET=U9f/pBsAawznYeRhzPGH4kW0W3PLSc3QF1RQ9Z5GtYA=
export DATA_LAKE_CLIENT_ID=f14db9c7-7b6d-4cb0-874a-68f07dbdbcdb

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
