
#######################################################
# Mario Sousa's .bashrc file
#
# Last Modified Sun Mar 03 16:45:42 WET 2010
#######################################################

# User specific aliases and functions
alias ssh='ssh -Y'
alias cl='clear'
alias grep='grep --color=tty'
alias root='root -l'
alias greper='grep -r' 
alias psm='ps -df| grep $USER'
alias gocern="ssh -Y mdacunha@lxplus.cern.ch"

alias golab="ssh -J mdacunha@linuxge.ge.infn.it mdacunha@atlaslab01.ge.infn.it"

alias INFNdig="sudo openvpn --config /etc/openvpn/INFNGE.ovpn"

#######################################################
# Alias to multiple ls commands
alias ls='ls --color=always' # add colors and file type extensions
alias sl='ls' 
alias ll='ls -lh' 
alias la='ls -A'                # show hidden files
alias lx='ll -XB'               # sort by extension
alias lk='ll -Sr'               # sort by size
#alias lc='ll -cr'              # sort by change time
alias lu='ll -ur'               # sort by access time
alias lr='ll -R'                # recursive ls
alias lt='ll -tr'               # sort by date
alias lm='ll -a |more'          # pipe through='more' 
#Alias to access folders
alias cd..='cd ..'
alias cd,,='cd..'
alias ..='cd..'
alias ...='cd ../..'
alias h='history'
# myemacs
alias memacs='emacs -q -l ~/.emacs.d/init.el'
alias me='emacs -nw -q -l ~/.emacs.d/init.el'
# Default emacs
alias emacs='emacs -q'
alias e='emacs -q -nw'
alias nls='ls --color=never'


alias IT='setxkbmap it'
alias PT='setxkbmap pt'
alias EN='setxkbmap us'
alias rm='rm -iv'
alias mv='mv -iv'
alias cp='cp -vp'
alias rtil='rm -f *~'


alias topu="top -u $USER -c"

syncFromQAQC() {
    if [ -z "$1" ]; then
	echo "No argument provided. Use one of these:"
	echo "BareModule-DigitalQuad  BareModule-Quad  BareModule-Single  DummyModule-Quad  Module-DigitalQuad  ModulePCB-Quad  ModulePCB-Triplet  Module-Quad"
    else
	# rsync -azr --include="*Triplet/***" --exclude="*" --progress mdacunha@atlaslab01:/lab/QAQC/ /home/sargedas/work/ITKpixel/QAQC/
	rsync -azr --exclude="data*" --exclude="Electrical*" --exclude="Configuration*" -e "ssh -J mdacunha@linuxge.ge.infn.it"  --progress mdacunha@atlaslab01.ge.infn.it:/lab/QAQC/$1/ /home/sargedas/work/ITKpixel/QAQC/$1/
    fi
}


#new work directory
export WORK="~/work/"
alias cdw="cd $WORK"
alias cdi="cd $WORK/ITKpixel/metrologyitkpix/"
####################################
## Testing grid submission        ##
####################################

source ~/.GITenv/git-completion.bash

# more colors!
GREEN="\[\033[0;32m\]"
BLUE="\[\033[0;34m\]"
PURPLE="\[\033[0;35m\]"
RESET="\[\033[0m\]"
RED='\e[0;31m'
BROWN='\e[0;33m'

# PS1="[\u@\h \W]\\$ "
# Change command prompt
source ~/.GITenv/git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1
# '\u' adds the name of the current user to the prompt
# '\$(__git_ps1)' adds git-related stuff
# '\W' adds the name of the current directory
export PS1="$BLUE\u@\h$RED\$(__git_ps1)$BROWN \W \n $ $RESET"
