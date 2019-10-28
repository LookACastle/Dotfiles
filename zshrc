# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/lookacastle/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Include antigen
source /usr/share/zsh/share/antigen.zsh

# Theme
antigen use oh-my-zsh
antigen theme ys 

# Plugins
antigen bundle zsh-users/zsh-syntax-highlighting

# Apply antigen
antigen apply

# Eyecandy
neofetch
(cat ~/.cache/wal/sequences&)

# Set vi-mode
#set -o vi

# Alias
alias update="sudo pacman -Syuu; yay; antigen update; nvim +PluginUpdate +qall"
alias lockscreen="~/Dotfiles/Scripts/lockscreen.sh"
alias mywget="wget --no-parent --recursive --continue --user-agent=\"User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.9; rv:32.0) Gecko/20100101 Firefox/32.0\" --timestamping -e robots=off --no-check-certificate"
alias playvn="LC_ALL=ja_JP LANG=ja_JP WINEPREFIX=~/.vn wine"
alias zathura="zathura --config-dir ~/.cache/wal"

# Enviroment variables
export EDITOR=nvim
export DOTNET_CLI_TELEMETRY_OPTOUT=1
