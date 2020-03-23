# default:cyan / root:red

#PATH
export PATH=$PATH:$HOME/cmd


# "-F":ディレクトリに"/"を表示 / "-G"でディレクトリを色表示
alias ls='ls -FG'
alias ll='ls -alFG'
export PS1='[\u@ \W]\$ '

# 
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

