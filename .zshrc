# export ZSH="$HOME/.oh-my-zsh"

plugins=(git)


# functions
function startmongo(){
    sudo mongod --dbpath /System/Volumes/Data/data/db
}

function startphone(){
    emulator -avd Pixel_3a_API_34_extension_level_7_arm64-v8a
}

function myip(){
    ipconfig getifaddr en0
}

function atlas(){

    # this function will compile my atlas compiler

    # g++ main.cpp -std=c++11 && ./a.out <-- this will first compile and (&&) then run the executable
    # this is the pathway to the main file:
    # /Users/anthonyprancl/Documents/Classes/Summer Project/Atlas Compiler/src/main.cpp
    # and finally, this is the pathway to the exectueable 
    # /Users/anthonyprancl/Documents/Classes/Summer Project/Atlas Compiler/src/a.out
    # so, we will just cd to the src file and exectue the first command

    cd /Users/anthonyprancl/Documents/Classes/Summer\ Project/Atlas\ Compiler/src
    g++ main.cpp -std=c++11 && ./a.out

}

function classes(){
cd /Users/anthonyprancl/Documents/Classes
}

# Aliases 
alias kl='kubectl'
alias vi='nvim'
alias q='exit'
alias neofetch='fastfetch'
alias ls='ls -G'


# My PATHS
export PATH="$PATH:/Users/anthonyprancl/Documents/Classes/Junior Spring/Software Engineering/Work/Tools/flutter/bin"
export PATH="$PATH:$HOME/.pub-cache/bin"
export PATH="$PATH:/Users/anthonyprancl/Library/Python/3.11/bin" # uvicorn path
export PATH="$PATH:/Users/anthonyprancl/Library/Android/sdk/emulator"
export PATH="$PATH:/Users/anthonyprancl/.config/Zshrc_Backup"
export LSCOLORS=GxFxCxDxBxegedabagaced
art.sh
# PATH=$INSTALL_DIR/bin:$PATH

source <(fzf --zsh)
HISTFILE=~/.config/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory

# >>> conda initialize >>>
# !! Co ntents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/anthonyprancl/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/anthonyprancl/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/anthonyprancl/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/anthonyprancl/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<



# experimentation
# # Enable prompt substitution
setopt prompt_subst

# Custom function to show only the last two directories
prompt_pwd() {
  local current_dir=${PWD##*/}
  local prev_dir=$(basename $(dirname "$PWD"))
  if [[ $PWD == $HOME ]]; then
    echo "~"
  elif [[ $(dirname "$PWD") == $HOME ]]; then
    echo "~/$(basename "$PWD")"
  else
    echo "${prev_dir}/${current_dir}"
  fi
}


# Set the prompt using the custom function
PROMPT='%n@%m $(prompt_pwd) %# '

autoload -U colors && colors
#PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}λ%b "
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}\$(prompt_pwd)%{$fg[red]%}]%{$reset_color%}λ%b "

autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char
bindkey -s '^e' 'nvim\n'


# Change cursor shape for different vi modes.
# interesting idea ...
# function zle-keymap-select {
#   if [[ ${KEYMAP} == vicmd ]] ||
#      [[ $1 = 'block' ]]; then
#     echo -ne '\e[1 q'
#   elif [[ ${KEYMAP} == main ]] ||
#        [[ ${KEYMAP} == viins ]] ||
#        [[ ${KEYMAP} = '' ]] ||
#        [[ $1 = 'beam' ]]; then
#     echo -ne '\e[5 q'
#   fi
# }
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
