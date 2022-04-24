## Use powerline
USE_POWERLINE="true"

## Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi

## Use manjaro zsh prompt
if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
  source /usr/share/zsh/manjaro-zsh-prompt
fi

## Plugins

bindkey ',' autosuggest-accept     # 使用逗号补全
source /usr/share/zsh/plugins/zsh-z/zsh-z.plugin.zsh

## Keybindings

bindkey -s '\eo'   'cd ..\n'    # 按下ALT+O 就执行 cd .. 命令
bindkey -s '\e;'   'ls -l\n'    # 按下 ALT+; 就执行 ls -l 命令

## Alias

alias rm="rm -i"
alias mv="mv -i"
alias cp="cp -i"

alias pip="python -m pip"

alias -s gz="tar -xzvf"
alias -s tgz="tar -xzvf"
alias -s zip="unzaip"
alias -s bz2="tar -xjvf"

## Other
# export PATH=$HOME/bin:/usr/local/bin:~/.local/bin$PATH

export FZF_DEFAULT_OPTS='--color=fg:#f8f8f2,bg:#282a36,hl:#bd93f9 --color=fg+:#f8f8f2,bg+:#44475a,hl+:#bd93f9 --color=info:#ffb86c,prompt:#50fa7b,pointer:#ff79c6 --color=marker:#ff79c6,spinner:#ffb86c,header:#6272a4'
export FZF_DEFAULT_OPTS="--ansi --preview-window 'right:60%' --preview 'bat --color=always --style=header,grid --line-range :300 {}'"

neofetch
# eval "$(starship init zsh)"

