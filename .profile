# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
	# include .bashrc if it exists
	if [ -f "$HOME/.bashrc" ]; then
		. "$HOME/.bashrc"
	fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ]; then
	PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ]; then
	PATH="$HOME/.local/bin:$PATH"
fi

# Aliases
alias mysudo="sudo -E env 'PATH=$PATH'"
alias q="exit"

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

alias bc='bc -l'

alias mkdir='mkdir -pv'

alias path='echo -e ${PATH//:/\\n}'
alias now='date +"%T"'
alias nowtime=now
alias nowdate='date +"%d-%m-%Y"'

alias vi=nvim
alias vim=nvim
alias svi='sudo nvim'
alias vis='nvim "+set si"'
alias edit='nvim'

alias wget='wget -c'

alias l='eza --color always'
alias ls='eza --color always -la'
alias ll='ls'
alias lt='l -RTl'
alias lp='eza -1'

alias conda=micromamba

function alacritty_theme() {
	sed -i "1c\import = [\"~/.config/alacritty/themes/themes/$1.toml\"]" ~/.dotfiles/.config/alacritty/alacritty.toml
}

function uam() {
	alacritty -e bash -c 'ssh uam' &>/dev/null &
}
