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

export FZF_DEFAULT_OPTS="--ansi --preview-window 'right:60%' --preview 'bat --color=always --style=header,grid --line-range :300 {}'"

neofetch
# eval "$(starship init zsh)"

