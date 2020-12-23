#!/bin/bash
ZSIMPATH=$(pwd)
PINPATH="$ZSIMPATH/pin"
LIBCONFIGPATH="$ZSIMPATH/libconfig"
NUMCPUS=$(grep -c ^processor /proc/cpuinfo)
DRAMSIM3PATH="/home/cc/DRAMsim3"
#DRAMSIMPATH="/home/cc/DRAMSim2"

if [ "$1" = "z" ]
then
	echo "Compiling only ZSim ..."
        export PINPATH
        export LIBCONFIGPATH
        scons -j$NUMCPUS
else
	echo "Compiling all ..."
	export LIBCONFIGPATH
	cd $LIBCONFIGPATH
	./configure --prefix=$LIBCONFIGPATH && make install
	cd ..

	export PINPATH
	export DRAMSIM3PATH
#	export DRAMSIMPATH
	scons -j$NUMCPUS
fi
