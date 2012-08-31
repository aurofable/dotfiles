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
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# Setting PATH env for iPhone Dev Tools
# For LINKEDIN
export PATH=/usr/local/bin:$HOME/Developer/devtools/utilities:$PATH
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
export PATH=$HOME/Developer:$PATH
export PATH=/usr/local/smlnj-110.74/bin:$PATH
export PATH=/bin:$PATH

##
# Your previous /Users/jchun/.profile file was backed up as /Users/jchun/.profile.macports-saved_2012-06-14_at_14:28:21
##

# MacPorts Installer addition on 2012-06-14_at_14:28:21: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.
export PATH=$PATH:~/Downloads/play-2.0
