# !/bin/bash
#
# Author	: Vitor Rodrigues Di Toro" <vitorrditoro@gmail.com>
# Created in	: 2017-05-20
#
#-------------------------------------------------------------------------------
#
# History
#
#    V0.1 2017-05-20, Vitor R. Di Toro:
#	- Created this script to run all scripts of "scripts" folder
#	    * updateVM.sh
#	    * installPrograms.sh
#	    * shortcuts.sh
#	
#-------------------------------------------------------------------------------
#
# License:
#    This is free software, licensed under the GNU General Public License v2.
#


## Run Scripts
####################

# Update VM -> All programs and Ubuntu Version
./scripts/updateVM.sh

# Installs the necessary programs 
./scripts/installPrograms.sh

# Add Shortcuts
./scripts/shortcuts.sh


