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
(wal -r&)

# Set vi-mode
#set -o vi

# Alias
alias update="pacaur -Syyua; sudo pacman -Syuu; antigen update"
alias lockscreen="~/Dotfiles/Scripts/lockscreen.sh"
alias jpgtopngthisdir="find -name '*.jpg' -print0 | xargs -0 -r mogrify -format png; find -name '*.jpg' -print0 | xargs -0 -r rm"
alias destroyorphans="sudo pacman -Rns $(pacman -Qdtq); pacaur -Rns $(pacaur -Qdtq)"
alias relaunchvpn="pkill torguard; torguard&"
