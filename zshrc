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
antigen theme bureau

# Plugins
antigen bundle https://github.com/nvbn/thefuck

# Eyecandy
neofetch
(wal -r&)

# Apply antigen
antigen apply

# Making thefuck work
eval "$(thefuck --alias fuck)"
