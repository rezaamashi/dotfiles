# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.config/zsh/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
   source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export POWERLEVEL9K_INSTANT_PROMPT=quiet

source ~/.zshenv

# Wayland Keyboard configuration
export XKB_DEFAULT_OPTIONS=ctrl:nocaps
export XKB_DEFAULT_LAYOUT="gb"

# # Antigen initialization
source /usr/share/zsh/share/antigen.zsh

antigen bundle pip
antigen bundle djui/alias-tips

antigen apply

# Lines configured by zsh-newuser-install

# History File
HISTCONTROL=ignoreboth
HISTTIMEFORMAT="%F %T "

HISTFILE=$ZDOTDIR/histfile
HISTSIZE=10000
SAVEHIST=10000
setopt HIST_IGNORE_ALL_DUPS

setopt INC_APPEND_HISTORY
setopt EXTENDED_HISTORY

setopt extendedglob nomatch notify

unsetopt autocd
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '$XDG_CONFIG_HOME/zsh/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# themes
source $XDG_CONFIG_HOME/zsh/themes/powerlevel10k/powerlevel10k.zsh-theme

# Plugins
source $XDG_CONFIG_HOME/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source $XDG_CONFIG_HOME/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh
source $XDG_CONFIG_HOME/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# For a full list of active aliases, run `alias`.
source $XDG_CONFIG_HOME/zsh/.zshalias

# Custom Functions
source $XDG_CONFIG_HOME/zsh/functions/func

# Custom Functions
# source $XDG_CONFIG_HOME/user-dirs.dirs


# emacs-vterm requirement
if [[ "$INSIDE_EMACS" = 'vterm' ]] &&
	[[ -n ${EMACS_VTERM_PATH} ]] &&
	[[ -f ${EMACS_VTERM_PATH}/etc/emacs-vterm-zsh.sh ]]; then
	source ${EMACS_VTERM_PATH}/etc/emacs-vterm-zsh.sh
fi

# Emacs LSP mode performance improvement
# 'plist'
export LSP_USE_PLISTS=true

# NVM
[ -z "$NVM_DIR" ] && export NVM_DIR="$HOME/.local/share/nvm"
export NVM_LAZY_LOAD=true
export NVM_COMPLETION=true
source /usr/share/nvm/nvm.sh
source /usr/share/nvm/bash_completion
source /usr/share/nvm/install-nvm-exec

# Lazyloading ruby and java
# eval "$(rbenv init -)"
# eval "$(jenv init -)"

# To customize prompt, run `p10k configure` or edit ~/.config/zsh/.p10k.zsh.
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh

# Allow completion for global aliases
#_complete_alias() {
#    [[ -n $PREFIX ]] && compadd -- ${(M)${(k)galiases}:#$PREFIX*}
#    return 1
#}
_complete_alias() { compadd -- ${(M)${(k)galiases}:#$1*}; return 1 }
zstyle ':completion:*' completer _complete_alias _complete _ignored


# LazyLoad gitstatusd
# needed by lsp-mode emacs
POWERLEVEL9K_DISABLE_GITSTATUS=true
