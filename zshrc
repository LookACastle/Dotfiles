HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

# Eyecandy
nitch

# Zplug
if [[ $(grep '^NAME=' /etc/os-release | cut -d\= -f2) != "NixOS" ]] then
  # Nix manages this itself
  source ~/.zplug/init.zsh
fi
zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-syntax-highlighting"
zplug "xwmx/astral", as:theme

# Keybinds
bindkey "${key[Up]}" up-line-or-search
bindkey "${key[Down]}" down-line-or-search

# Enviroment variables
export EDITOR=nvim
export DOOMDIR=$HOME/Dotfiles/doom.d
export DOTNET_CLI_TELEMETRY_OPTOUT=1
export PATH=$PATH:$HOME/.local/bin:$HOME/.emacs.d/bin:
