
# MacPorts Installer addition on 2012-05-07_at_07:27:21: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

export MY_BIN=/Users/rich/bin
export ANT_HOME=$MY_BIN/apache-ant-1.8.4
export MAVEN_HOME=$MY_BIN/apache-maven-3.2.5
export HEROKU_PATH=/usr/local/heroku/bin
export PATH=$PATH:$MY_BIN:$ANT_HOME/bin:$MAVEN_HOME/bin:$HEROKU_PATH

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

#for RouteOne
#add ChromeDriver to path
export PATH=$PATH:/Users/rich/Documents/NOradLtd/clients/Pillar/RouteOne/etc
