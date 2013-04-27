# oh-my-zsh
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="afowler"
DISABLE_AUTO_TITLE="true"
plugins=(git)

source $ZSH/oh-my-zsh.sh
unsetopt correct_all

# path
export PATH="$HOME/scripts:/usr/local/bin:/usr/local/sbin:$PATH"

# env
unset http_proxy
unset https_proxy
export RUBYOPT=-Ku
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# vi-mode shell
bindkey -v

# aliases
alias canihaz='brew install'
alias die='kill -9'
alias geronimo='git pull && git push'
alias tmux='tmux -2'
alias ri='ri -f ansi'
alias be='bundle exec'
alias ber='be rspec spec'
alias cukes='RAILS_ENV=cucumber be cucumber'
alias powr='powder restart'

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
