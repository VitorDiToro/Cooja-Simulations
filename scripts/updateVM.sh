# !/bin/bash
#
# Author	: Vitor Rodrigues Di Toro" <vitorrditoro@gmail.com>
# Created in	: 2017-05-06 
#
#-------------------------------------------------------------------------------
#
# History:
#
#    v0.0 2017-05-06, Vitor R. Di Toro:
#	- Created this script, with just the header.
#
#    v0.1 2017-05-20, Vitor R. Di Toro:
#	- Created section "Installation and Update", with:
#	    * Update all applications
#	    * Update distro to 16.04 LTS
#	    * Update to "contiki submodule"
#	    * "autoclean" command
#	    * "autoremove" command
#	    * Update "contiki submodule"
#
#-------------------------------------------------------------------------------
#
# License:
#    This is free software, licensed under the GNU General Public License v2.
#

## Installations & Update
###########################

# Update "contiki submodule"
cd ~/contiki/
git submodule update --init
cd ~

# Update repository database
sudo apt-get update

# Update all applications
sudo apt-get upgrade -y

# Update to Ubuntu 16.04 LTS
sudo apt-get distroupdate -y

# Autoremove
sudo apt-get autoremove -y

# Autoclean
sudo apt-get autoclean -y
