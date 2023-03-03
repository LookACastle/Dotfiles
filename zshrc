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
nitch

# Alias
alias update="sudo pacman -Syuu; paru; antigen update; nvim +PlugUpdate +qa; doom up"
alias zathura="zathura --config-dir=~/.cache/wal"
alias lockscreen="~/Dotfiles/Scripts/lockscreen.sh"

# Enviroment variables
export EDITOR=nvim
export DOOMDIR=$HOME/Dotfiles/doom.d
export DOTNET_CLI_TELEMETRY_OPTOUT=1
export PATH=/usr/local/sbin:/usr/local/bin:/usr/bin:$HOME/.local/bin:$HOME/.emacs.d/bin:
