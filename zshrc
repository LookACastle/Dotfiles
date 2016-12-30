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
source /usr/share/zsh/scripts/antigen/antigen.zsh

# Theme
antigen use oh-my-zsh
antigen theme https://github.com/caiogondim/bullet-train-oh-my-zsh-theme bullet-train

# Plugins
antigen bundle thefuck

# Eyecandy
screenfetch

# Apply antigen
antigen apply
