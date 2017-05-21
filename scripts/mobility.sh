# !/bin/bash
#
# Author        : Vitor Rodrigues Di Toro" <vitorrditoro@gmail.com>
# Created in    : 2017-05-21
#
#-------------------------------------------------------------------------------
#
# History
#
#    V0.0 2017-05-21, Vitor R. Di Toro:
#       - Created file
#
#    v0.1 2017-05-21, Vitor R. Di Toro:
#	- Downloads all the Mobility plugin files to Cooja.
#    
#-------------------------------------------------------------------------------
#
# License:
#    This is free software, licensed under the GNU General Public License v2.
#


mkdir ~/contiki/tools/cooja/apps/mobility
cd ~/contiki/tools/cooja/apps/mobility

# CONTRIBUTORS.txt
wget https://sourceforge.net/p/contikiprojects/code/HEAD/tree/sics.se/mobility/CONTRIBUTORS.txt

# PROJECT-INFO.txt
wget https://sourceforge.net/p/contikiprojects/code/HEAD/tree/sics.se/mobility/PROJECT-INFO.txt

# README.txt
wget https://sourceforge.net/p/contikiprojects/code/HEAD/tree/sics.se/mobility/README.txt

# build.xml
wget https://sourceforge.net/p/contikiprojects/code/HEAD/tree/sics.se/mobility/build.xml

# cooja.config
wget https://sourceforge.net/p/contikiprojects/code/HEAD/tree/sics.se/mobility/cooja.config

# positions.dat
wget https://sourceforge.net/p/contikiprojects/code/HEAD/tree/sics.se/mobility/positions.dat


mkdir ./lib
cd ./lib


mkdir ./java
cd ./java

#Mobility.java
wget https://sourceforge.net/p/contikiprojects/code/HEAD/tree/sics.se/mobility/java/Mobility.java
