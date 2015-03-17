export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export HAD_LOC="/usr/local/Cellar/hadoop/2.4.0/" # Add path for hadoop
export SPARK_HOME=~/spark-1.2.0-bin-hadoop2.4

autoload -U colors && colors
PS1="%{$fg[magenta]%}%~$%{$reset_color%} "

autoload -U zmv
alias mmv='noglob zmv -W'
