#Default Programs
export EDITOR="nvim"
export BROWSER="firefox"
export TERMINAL="alacritty"
export READER="zathura"
export IMAGEVIEWER="sxiv"
export VIDEOPLAYER="mpv"

#Paths
export PATH="$PATH:$HOME/.local/bin"			#Scripts
export PATH="$PATH:$HOME/.local/bin/aliases"		#Alias scripts
export PATH="$PATH:$HOME/lifeisfun/flutter/bin" 	#Flutter

export ZDOTDIR="$HOME"/.config/zsh
export STARSHIP_CONFIG="$HOME"/.config/starship/config.toml

# ~/ Clean-up:
export XDG_CONFIG_HOME="$HOME"/.config
export XDG_DATA_HOME="$HOME"/.local/share
export XDG_CACHE_HOME="$HOME"/.cache
export XDG_STATE_HOME="$HOME"/.local/state

export XINITRC="$XDG_CONFIG_HOME"/x11/xinitrc
#export XAUTHORITY="$XDG_RUNTIME_DIR"/Xauthority
export ANDROID_SDK_HOME="$XDG_CONFIG_HOME"/android
export CARGO_HOME="$XDG_DATA_HOME"/cargo
export GOPATH="$XDG_DATA_HOME"/go
export HISTFILE="$XDG_DATA_HOME"/bash/history
export WINEPREFIX="$XDG_DATA_HOME"/wineprefixes/default
export ATOM_HOME="$XDG_DATA_HOME"/atom
export CUDA_CACHE_PATH="$XDG_CACHE_HOME"/nv
export GNUPGHOME="$XDG_DATA_HOME"/gnupg
export GRADLE_USER_HOME="$XDG_DATA_HOME"/gradle
export GTK_RC_FILES="$XDG_CONFIG_HOME"/gtk-1.0/gtkrc
export GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc
export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME"/java
export LESSKEY="$XDG_CONFIG_HOME"/less/lesskey
export LESSHISTFILE="$XDG_CACHE_HOME"/less/history
export NODE_REPL_HISTORY="$XDG_DATA_HOME"/node_repl_history
export NPM_CONFIG_USERCONFIG=$XDG_CONFIG_HOME/npm/npmrc
export VSCODE_PORTABLE="$XDG_DATA_HOME"/vscode
export WGETRC="$XDG_CONFIG_HOME/wgetrc"
export SQLITE_HISTORY=$XDG_DATA_HOME/sqlite_history
export ICEAUTHORITY="$XDG_CACHE_HOME"/ICEauthority
export RUSTUP_HOME="$XDG_DATA_HOME"/rustup
. "/home/s2b/.local/share/cargo/env"

#Other settinfs
export _JAVA_AWT_WM_NONREPARENTING=1

#fzf
export FZF_DEFAULT_OPTS='--reverse --color=fg:#bbbbbb,bg:#111111,hl:#aaaaaa --color=fg+:#bbbbbb,bg+:#222222,hl+:#aaaaaa --color=info:#bbbbbb,prompt:#bbbbbb,pointer:#bbbbbb --color=marker:#111111,spinner:#111111,header:#111111'

#StartX
[ "$(tty)" = "/dev/tty1" ] && exec startx "$XINITRC" > /dev/null 2>&1
