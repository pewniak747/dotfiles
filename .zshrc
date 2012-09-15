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

# aliases
alias canihaz='sudo apt-get install'
alias die='kill -9'
alias geronimo='git pull && git push'
alias gcam='git commit -am'
alias gvim='gvim -f'
alias tmux='tmux -2'
function tmuxn() {
  tmux new-session "teamocil $*"
}

# rbenv
eval export PATH="$HOME/.rbenv/shims:$HOME/.rbenv/bin:${PATH}"
source "$HOME/.rbenv/libexec/../completions/rbenv.zsh"
rbenv rehash 2>/dev/null
rbenv() {
  command="$1"
  if [ "$#" -gt 0 ]; then
    shift
  fi

  case "$command" in
  shell)
    eval `rbenv "sh-$command" "$@"`;;
  *)
    command rbenv "$command" "$@";;
  esac
}
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="$HOME/scripts:$PATH"
eval "$(rbenv init -)"
