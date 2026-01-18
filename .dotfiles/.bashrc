# echo ".bashrc"
export PATH=$PATH:/Users/rpd/bin:/Users/rpd/.local/bin

# Google Cloud CLI
export PATH=/opt/homebrew/share/google-cloud-sdk/bin:"$PATH"

# Rust Toolchain (from JetBrains)
#export PATH="$PATH:~/.rustup/toolchains/stable-aarch64-apple-darwin/bin"
export PATH="$PATH:~/.cargo/bin"

# PyEnv
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init - bash)"
fi
