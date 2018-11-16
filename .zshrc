# oh-my-zsh
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"
DISABLE_AUTO_TITLE="true"
plugins=(git)

source $ZSH/oh-my-zsh.sh
unsetopt correct_all

# path
export PATH="$HOME/scripts:$HOME/scripts/play-2.2.2:/Library/Java/JavaVirtualMachines/jdk1.8.0_45.jdk/Contents/Home/bin:/usr/local/bin:/usr/local/sbin:/usr/local/share/npm/bin:/Library/TeX/Distributions/.DefaultTeX/Contents/Programs/texbin:$PATH"

# env
unset http_proxy
unset https_proxy
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export JAVA_HOME="/Library/Internet Plug-Ins/JavaAppletPlugin.plugin/Contents/Home"
export TERM=xterm

# vi-mode shell
bindkey -v
export KEYTIMEOUT=1

# aliases
alias canihaz='brew install'
alias die='kill -9'
alias geronimo='git pull && git push'
alias tmux='tmux -2'
alias ri='ri -f ansi'
alias be='bundle exec'
alias ber='be rspec spec'
alias berf='be rspec --profile --exclude-pattern="spec/features/**/*,spec/api/**/*,spec/controllers/**/*" -- spec'
alias bers='be rspec --profile spec/features/**/* spec/api/**/* spec/controllers/**/*'
alias cukes='RAILS_ENV=cucumber be cucumber'
alias powr='powder restart'
alias h='heroku'
alias ctags="`brew --prefix`/bin/ctags"

function tmuxn() {
  tmux new-session "teamocil $*"
}
function tmuxp() {
  if [ -d $HOME/code/$* ]; then
    tmux list-sessions | grep $* > /dev/null 2>&1
    if [ $? = 0 ]; then
      tmux attach-session -t $*
    else
      tmux new-session "export TMUX_PROJECT=$* && teamocil project"
    fi
  else
    echo "directory ~/code/$* does not exist"
  fi
}

# rbenv
eval "$(rbenv init -)"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
export PATH="/usr/local/opt/postgresql@9.5/bin:$PATH"

# opam
eval `opam config env`

export PATH="/Users/tomasz/miniconda2/bin:$PATH"
export PATH="/usr/local/opt/tcl-tk/bin:$PATH"
export PATH="/usr/local/opt/node@8/bin:$PATH"
export PATH="/usr/local/opt/postgresql@9.4/bin:$PATH"

export GPG_TTY=$(tty)
