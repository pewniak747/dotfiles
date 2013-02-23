# oh-my-zsh
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="afowler"
DISABLE_AUTO_TITLE="true"
plugins=(git)

source $ZSH/oh-my-zsh.sh
unsetopt correct_all

# path
export PATH="$PATH:~/scripts"

# env
unset http_proxy
unset https_proxy
export RUBYOPT=-Ku

# vi-mode shell
bindkey -v

# aliases
alias canihaz='sudo apt-get install'
alias die='kill -9'
alias geronimo='git pull && git push'
alias tmux='tmux -2'
alias ri='ri -f ansi'
alias be='bundle exec'
alias ber='be rspec spec'
alias cukes='RAILS_ENV=cucumber be cucumber'

function tmuxn() {
  tmux new-session "teamocil $*"
}
function tmuxp() {
  if [ -d $HOME/code/$* ]; then
    tmux new-session "export TMUX_PROJECT=$* && teamocil project"
  else
    echo "directory ~/code/$* does not exist"
  fi
}

# rbenv
export PATH="$HOME/scripts:$PATH"
eval "$(rbenv init -)"
