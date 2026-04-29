#!/bin/bash

# 非対話型シェルの場合は終了
[[ $- != *i* ]] && return

# デザイン
alias ls='ls --color=auto' grep='grep --color=auto'
eval "$(starship init bash)"

# エイリアス
alias ll='ls -lahF --group-directories-first'
alias ..='cd ..'

# パス
export PATH="$PATH:~/.local/bin"
eval "$(mise activate bash)"
