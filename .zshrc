# default:cyan / root:red

#PATH
export PATH=$PATH:$HOME/cmd


# "-F":ディレクトリに"/"を表示 / "-G"でディレクトリを色表示
alias ls='ls -FG'
alias ll='ls -alFG'
export PS1='[\u@ \W]\$ '


# change 'ls' color
export CLICOLOR=1;
export LSCOLORS=gxfxcxdxbxegedabagacad;
export LS_COLORS="di=36:ln=35:so=32:pi=33:ex=31:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;43:"
 
alias gsl='git stash list --date=local'
alias chromei='/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --ignore-certificate-errors &'

# ターミナルもVIキーバインド
set -o vi

# PROMPT
autoload colors
colors
if [ $UID -eq 0 ];then
  # ルートユーザーの場合
  PROMPT="%{$fg[green]%}%C %(!.#.$) %{$reset_color%}"
else
  # ルートユーザー以外の場合
  PROMPT="%{$fg[green]%}%C %(!.#.$) %{$reset_color%}"
fi


autoload -Uz vcs_info
setopt prompt_subst
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' stagedstr "%F{yellow}!"
zstyle ':vcs_info:git:*' unstagedstr "%F{red}+"
zstyle ':vcs_info:*' formats " %F{green}%c%u[%b]%f"
zstyle ':vcs_info:*' actionformats '[%b|%a]'
precmd () { vcs_info }
RPROMPT=$RPROMPT'${vcs_info_msg_0_}'

eval "$(rbenv init -)"

export PATH=$PATH:/Users/xxxxx/.nodebrew/current/bin
