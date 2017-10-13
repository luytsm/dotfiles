[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
autoload -Uz colors && colors
autoload -Uz compinit
compinit 
autoload -U promptinit && promptinit
# PROMPT="%{$fg[white]%}[%{$fg[cyan]%}%n%{$fg[white]%}] %{$fg[white]%}[%{$fg[cyan]%}%m%{$fg[white]%}] %{$fg[white]%}[%{$fg[cyan]%}%1d%{$fg[white]%}] "
PROMPT="%{$fg_bold[cyan]%}%1~ %{$fg_bold[white]%}% >> %{$reset_color%}"
PATH="$HOME/venv/bin:$(ruby -e 'print Gem.user_dir')/bin:$PATH"


zstyle ':completion:*' menu select=2 eval "$(dircolors -b)"



#zsh keybinding for normal use
bindkey "\e[1~" beginning-of-line       # Home
bindkey "\e[4~" end-of-line             # End
bindkey "\e[5~" beginning-of-history    # PageUp
bindkey "\e[6~" end-of-history          # PageDown
bindkey "\e[2~" quoted-insert           # Ins
bindkey "\e[3~" delete-char             # Del
bindkey "^[OH"  beginning-of-line       # Home
bindkey "^[OF"  end-of-line             # End
bindkey "^[[5~" beginning-of-history    # PageUp
bindkey "^[[6~" end-of-history          # PageDown
bindkey "^[[2~" quoted-insert           # Ins
bindkey "^[[3~" delete-char             # Del
bindkey "^[[1;5D" backward-word         # ^Left
bindkey "^[[1;5C" forward-word          # ^Right


if [ -z "$HISTFILE" ]; then
  HISTFILE=$HOME/.zsh_history
fi

HISTSIZE=1000
SAVEHIST=1000

setopt append_history
setopt inc_append_history



#set vim as vi
alias vi="vim"
# grep aliases
alias grep='grep -i --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
# shutdown aliases
alias reboot='sudo /sbin/reboot'
alias poweroff='sudo /sbin/poweroff'
alias halt='sudo /sbin/halt'
alias shutdown='sudo /sbin/shutdown'
alias ..="cd .."

alias ccat="grep -o '^[^#]*' "

alias df='df -H'
alias du='du -sh *'

alias pacman='sudo pacman'

alias ls='ls --color=auto'
alias ll='ls -ltrh'
alias lls='ls -lShr'

alias gs='git status'

fp()
{
  ps -ef | grep -i "$1"
}

# dotfiles section

DOTDIR="$HOME/dotfiles"

zrce()
{
  vim "$DOTDIR/zshrc"
  source "$DOTDIR/zshrc"
}

remove_spaces()
{
  for f in *\ *; 
  do mv "$f" "${f// /_}"; 
  done
}


remove_comment()
{
  grep -o '^[^#]*' $1 > $1
}

[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx


