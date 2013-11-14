#---------------------------------------
# Language Setting
#---------------------------------------
export LANG=ja_JP.UTF-8

# 8bit文字を出力
setopt print_eight_bit

#---------------------------------------
# Prompt setting
#---------------------------------------
autoload -U promptinit
promptinit

autoload colors
colors                                                                                                
PROMPT="%{${fg[blue]}%}[%n@%m] %(!.#.$) %{${reset_color}%}"
PROMPT2="%{${fg[blue]}%}%_> %{${reset_color}%}"
RPROMPT="%{$fg[blue]%}[%d] %{${reset_color}%}"
SPROMPT="%{${fg[red]}%}correct: %R -> %r [nyae]? %{${reset_color}%}"

setopt prompt_subst
setopt transient_rprompt

#---------------------------------------
# Histrory Setting
#---------------------------------------
HISTFILE=~/.zsh_history     # Histroy File
HISTSIZE=100000      
SAVEHIST=100000
setopt hist_no_store        # history command no store
setopt hist_ignore_dups     # ignore duplication command history list
setopt share_history        # share command history data
setopt inc_append_history   # as soon as append history

#---------------------------------------
# bind key vim
#---------------------------------------
bindkey -v

autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^P" history-beginning-search-backward-end
bindkey "^N" history-beginning-search-forward-end

#---------------------------------------
# Complate Setting
#---------------------------------------
autoload -U compinit
compinit

## auto change directory
setopt auto_cd
## auto directory pushd that you can get dirs list by cd -[tab]
setopt auto_pushd
## duplication directory no pushd
setopt pushd_ignore_dups
## command correct edition before each completion attempt
setopt correct
## 補完候補を一覧表示
setopt auto_list
## TAB で順に補完候補を切り替える
setopt auto_menu
## 補完候補一覧でファイルの種別をマーク表示
setopt list_types
## カッコの対応などを自動的に補完
setopt auto_param_keys
## ディレクトリ名の補完で末尾の / を自動的に付加し、次の補完に備える
setopt auto_param_slash
## 補完候補を詰めて表示
setopt list_packed
## ファイル名の展開でディレクトリにマッチした場合末尾に / を付加する
setopt mark_dirs
## 最後のスラッシュを自動的に削除しない
setopt noautoremoveslash
## 単語途中で補完機能を有効にする
setopt complete_in_word
## カーソル位置を保持した状態でファイル名を表示
setopt always_last_prompt
## グロブ補完拡張
setopt extended_glob
## .ファイルもグロブマッチ有効
setopt globdots

#---------------------------------------
## Completing style Setting
#---------------------------------------
eval `dircolors`
export ZLS_COLORS=$LS_COLORS
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*:default' menu select=2
zstyle ':completion:*' verbose yes
zstyle ':completion:*' completer _expand _complete _match _prefix _approximate _list _history
zstyle ':completion:*:messages' format '%F{YELLOW}%d'$DEFAULT
zstyle ':completion:*:warnings' format '%F{RED}No matches for:''%F{YELLOW} %d'$DEFAULT
zstyle ':completion:*:descriptions' format '%F{YELLOW}completing %B%d%b'$DEFAULT
zstyle ':completion:*:options' description 'yes'
zstyle ':completion:*:descriptions' format '%F{yellow}Completing %B%d%b%f'$DEFAULT
zstyle ':completion:*' group-name ''
zstyle ':completion:*' list-separator '-->'
zstyle ':completion:*:manuals' separate-sections true
zstyle ':completion:*' use-cache true

#---------------------------------------
# alias setting
#---------------------------------------
alias where="command -v"
alias ls="ls --color"
alias la="ls -A"
alias ll="ls -l"
alias du="du -h"
alias df="df -h"
alias grep='grep --color=auto'                                                    
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias vi='vim'

#---------------------------------------
# Command setting
#---------------------------------------
## サスペンド中のプロセスと同じコマンド名を実行した場合はリジューム
setopt auto_resume

#---------------------------------------
# beep setting
#---------------------------------------
# no beep
setopt nobeep

# no beep sound when complete list displayed
setopt nolistbeep

#---------------------------------------
# export
#---------------------------------------
export EDITOR=vim

#---------------------------------------
# Load plugin 
#---------------------------------------
## antigen
if [ -f ~/.zsh/antigen/antigen.zsh ] ; then
    source ~/.zsh/.zshrc.antigen
fi


export CC=clang
export CXX=clang++

