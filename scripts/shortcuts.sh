# !/bin/bash
#
# Author        : Vitor Rodrigues Di Toro" <vitorrditoro@gmail.com>
# Created in    : 2017-05-20
#
#-------------------------------------------------------------------------------
#
# History
#
#    v0.1 2017-05-20, Vitor R. Di Toro:
#	- Created this script
#	- Copy shortcuts to desktop
#	- Copy icons to ~/Pictures/icons
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


## Copy Shortc & Icons Images
##############################
mkdir ~/Pictures/icons
cp -r "$d"/icons/ ~/Pictures/icons
cp -r "$d"/'desktop files'/ ~/Desktop

