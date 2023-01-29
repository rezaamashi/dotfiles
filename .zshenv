#!/bin/zsh

export USER=muna

# XDGs are defined in /etc/security/pam_env.conf or /etc/environment as such
# XDG_CONFIG_HOME   DEFAULT=@{HOME}/.config
# /home/muna/.cache   DEFAULT=@{HOME}/.cache
# XDG_DATA_HOME   DEFAULT=@{HOME}/.local/share
# XDG_DATA_DIRS   DEFAULT=/usr/local/share:/usr/share
# XDG_CONFIG_DIRS   DEFAULT=/etc/xdg/

# Rice Configuration
case $DESKTOP_SESSION in
	hyprland)
		export RICETHEME="$(<${HOME}/.config/hypr/rice.cfg)"
		;;
	river)
		export RICETHEME="$(<${HOME}/.config/river/rice.cfg)"
		;;
	sway)
		export RICETHEME="$(<${HOME}/.config/sway/rice.cfg)"
		;;
	dwm)
		# export RICETHEME="$(<${HOME}/.config/suckless/dwm/rice.cfg)"
		;;
	"") ;;

	*) ;;
esac

#----------------------- ~/ Clean-up: ---------------------
# XDG Base Directory
export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share
export XDG_STATE_HOME=$HOME/.local/state
export XDG_DATA_DIRS=/usr/local/share:/usr/share
export XDG_CONFIG_DIRS=/etc/xdg

# PATH
export PATH=/home/"$USER"/.luarocks/bin:/home/"$USER"/.config/nvm/versions/node/v17.9.0/bin:/home/"$USER"/.local/share/npm/bin:/home/"$USER"/.local/share/gem/ruby/3.0.0/bin:/home/"$USER"/.local/share/cargo/bin:/home/"$USER"/.local/script:/home/"$USER"/.local/bin:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/lib/jvm/default/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/usr/lib/jvm/default/bin:/home/"$USER"/.config/chemacs/dotemacsen/doom/bin:/home/"$USER"/.local/share/yarn/global/node_modules/.bin:/home/"$USER"/.local/share/go/bin:/home/"$USER"/.roswell/bin:/usr/lib/jvm/java-18-openjdk/bin:/home/"$USER"/.local/share/python/bin:

# Localization
export LANG="en_US.UTF-8"
export LC_COLLATE="C"
# Bash
export HISTFILE=$XDG_DATA_HOME/bash/history

# ZSH
export ZDOTDIR=$XDG_CONFIG_HOME/zsh

# GNUpg
# export GNUPGHOME="$XDG_DATA_HOME"/gnupg

# Azure
export AZURE_CONFIG_DIR=$XDG_DATA_HOME/azure

# GTK
export GTK_RC_FILES=$XDG_CONFIG_HOME/gtk-1.0/gtkrc
export GTK2_RC_FILES=$XDG_CONFIG_HOME/gtk-2.0/gtkrc

# Go
export GOPATH=$XDG_DATA_HOME/go

# Grip
export GRIPHOME="$XDG_CONFIG_HOME/grip"

# Python
export PYTHONPYCACHEPREFIX="$XDG_CACHE_HOME"/python
export PYTHONUSERBASE="$XDG_DATA_HOME"/python

# IPython
export IPYTHONDIR="$XDG_CONFIG_HOME"/jupyter
export JUPYTER_CONFIG_DIR="$XDG_CONFIG_HOME"/jupyter

# Less
export LESSKEY="$XDG_CONFIG_HOME"/less/lesskey
export LESSHISTFILE="$XDG_CACHE_HOME"/less/history

# Recoll
export RECOLL_CONFDIR="$XDG_CONFIG_HOME/recoll"

# Ruby
export GEM_HOME=$XDG_DATA_HOME/gem
export GEM_SPEC_CACHE=$XDG_CACHE_HOME/gem

# Redis
export REDISCLI_HISTFILE=$XDG_DATA_HOME/redis/rediscli_history
export REDISCLI_RCFILE=$XDG_CONFIG_HOME/redis/redisclirc

# Texmf
export TEXMFHOME=$XDG_DATA_HOME/texmf
export TEXMFVAR=$XDG_CACHE_HOME/texlive/texmf-var
export TEXMFCONFIG=$XDG_CONFIG_HOME/texlive/texmf-config

# Minikube
export MINIKUBE_HOME="$XDG_DATA_HOME"/minikube

# Node
export NVM_DIR=$XDG_CONFIG_HOME/nvm
export NODE_REPL_HISTORY="$XDG_DATA_HOME"/node_repl_history
export NPM_CONFIG_USERCONFIG=$XDG_CONFIG_HOME/npm/npmrc

# Pass
export PASSWORD_STORE_DIR="$XDG_DATA_HOME"/pass

# Java
export _JAVA_OPTIONS=-Djava.util.prefs.userRoot=$XDG_CONFIG_HOME/java

# Leiningen
export LEIN_HOME="$XDG_DATA_HOME"/lein

# Natural Language Toolkit - Python
export NLTK_DATA="$XDG_DATA_HOME/nltk_data/"

# Notmuch
export NOTMUCH_CONFIG=$XDG_CONFIG_HOME/notmuch/notmuchrc
export NMBGIT=$XDG_DATA_HOME/notmuch/nmbug

# Pacdiff - Pacman Contrib
export DIFFPROG="nvim -d $1"

# Rust
export CARGO_HOME=$XDG_DATA_HOME/cargo
export RUSTUP_HOME="$XDG_DATA_HOME"/rustup

## SSH - Gnome Keyring
export SSH_AUTH_SOCK=/run/user/1000/keyring/ssh

# Stardict
export DIC_FOLDER=$XDG_DATA_HOME/stardict/dic

# Steam
export STEAM_DIR=$XDG_DATA_HOME/Steam

# Vim
export VIMINIT='let $MYVIMRC="$XDG_CONFIG_HOME/vim/vimrc" | source $MYVIMRC'

# VSCodium
export VSCODE_PORTABLE="$XDG_DATA_HOME"/vscode

# Wget
export WGETRC="$XDG_CONFIG_HOME/wgetrc"

# Wine
export WINEPREFIXDIR=$XDG_DATA_HOME/wineprefixes
export WINEPREFIX=$WINEPREFIXDIR/default

# Zoom
export SSB_HOME=$XDG_DATA_HOME/zoom
