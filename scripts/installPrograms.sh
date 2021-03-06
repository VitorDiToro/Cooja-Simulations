# !/bin/bash
#
# Author	: Vitor Rodrigues Di Toro" <vitorrditoro@gmail.com>
# Created in	: 2017-05-06
#
#-------------------------------------------------------------------------------
#
# History
#
#    v0.0 2017-05-06, Vitor R. Di Toro:
#	- Created this scrip, with just the header.
#
#    v0.1 2017-05-06, Vitor R. Di Toro:
#       - Added section "Installations"
#       - Added installation of:
#           * tree
#           * terminator
#           * firefox (forced)
#           * vim
#           * ack-grep
#           * gcc-msp430
#
#-------------------------------------------------------------------------------
#
# License:
#    This is free software, licensed under the GNU General Public License v2.
#


## Variables
##################

# Get the working dir
d="$(pwd)/.."



## Installations
###########################

# Install "tree"
#    tree - list contents of directories in a tree-like format.
sudo apt-get install tree -y

# Install "terminator"
#    terminator - Multiple GNOME terminals in one window
sudo apt-get install terminator -y

# Force install a new version of Mozilla Firefox
#    firefox - a free and open source web browser from Mozilla
sudo apt-get install -f firefox -y

# Intall "vim"
#    vim - Vi IMproved, a programmers text editor
sudo apt-get install vim -y

# Install "ack-grep"
#    ack-grep - grep-like text finder
sudo apt-get install ack-grep -y

# Install gcc for TI MSP430
#    gcc-msp430 - GNU C compiler (cross compiler for MSP430)
sudo apt-get install gcc-msp430 -y

