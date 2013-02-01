# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# don't put duplicate lines in the history. See bash(1) for more options
# don't overwrite GNU Midnight Commander's setting of `ignorespace'.
export HISTCONTROL=$HISTCONTROL${HISTCONTROL+,}ignoredups
# ... or force ignoredups and ignorespace
export HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
unset HISTSIZE
unset HISTFILESIZE

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

#if [ -f ~/.bash_aliases ]; then
#    . ~/.bash_aliases
#fi


#**********#
# ALIASES  #
#**********#

alias conn='ssh jtchun@unix.andrew.cmu.edu'
alias conns='ssh jtchun@shark.ics.cs.cmu.edu'
alias connels='ssh jtchun@ece007.ece.cmu.edu'
alias connx='ssh -X jtchun@unix.andrew.cmu.edu'
alias connsx='ssh -X jtchun@shark.ics.cs.cmu.edu'
alias connelsx='ssh -X jtchun@ece007.ece.cmu.edu'
alias ebrc='vim ~/.bashrc'
alias evrc='vim ~/.vimrc'
alias egit='vim ~/.gitconfig'
alias dbox='cd /home/user/Desktop/Dropbox'
alias 123s='cd /home/user/Desktop/Dropbox/15123/rough/sandbox'
alias compiled='gcc -ansi -pedantic -W -Wall -Wextra -Werror -g -o0'
alias compile='gcc -ansi -pedantic -W -Wall -Wextra -Werror -g -O2'
alias regnome='sudo /etc/init.d/gdm restart'

# FOR LINKEDIN
alias note='vim ~/internDoc/notes.txt'
alias android='/Users/jchun/Documents/android-sdk-macosx/tools/android'
alias ideas='vim ~/internDoc/ideas.txt'
alias mamp='open /Applications/MAMP/MAMP.app'

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    eval "`dircolors -b`"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -l'
alias la='ls -A'
alias l='ls -CF'

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi

#Set the path
#export PATH=${PATH}:/home/james/Android/android-sdk-linux_86/tools
#source /opt/ros/electric/setup.bash
export PATH=/usr/local/share/python:${PATH}
export PATH=/usr/local/bin:${PATH}
export PATH=${PATH}:/Users/jchun/Documents/android-sdk-macosx
export PATH=${PATH}:/Users/jchun/Documents/android-sdk-macosx/tools
export PATH=${PATH}:/Users/jchun/Documents/android-sdk-macosx/platform-tools
export PATH=${PATH}:/usr/local/linkedin/bin
export PATH=${PATH}:/Users/jchun/Documents/lein
export PATH=${PATH}:/Users/jchun/Documents/android-ndk-r8
export PATH=${PATH}:/Users/jchun/Documents/play-2.0.3-RC2
# Setting the ROS Paths
#export ROS_PACKAGE_PATH=/home/james/ros
#export ROS_PACKAGE_PATH=/opt/ros/electric/stacks:/home/james/ros:/home/james/ros/art/utexas-art-ros-pkg-read-only
#/opt/ros/stacks:/opt/ros-tutorials/ros_pkg_tutorials:/opt/ros-tutorials/ros_tutorials:/home/james/ros
#export CVSROOT=jtchun@unix.andrew.cmu.edu:/afs/andrew.cmu.edu/scs/ri/Project-2011/simulation/cvsroot
export PATH=/opt/subversion/bin:$PATH
export PATH=/home/james/.local/bin:$PATH

export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Home

for f in ~/dotfiles/scripts/*; do source $f; done

#ART_RUN=$(rospack find art_run)
#if [ "$ART_RUN" != "" ] && [ -d $ART_RUN/bin ]
#    then export PATH=$ART_RUN/bin:$PATH
#fi
