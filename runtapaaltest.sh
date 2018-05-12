#! /bin/bash

#set -x


export BINDIR=$(pwd)

export MODELNAME=$(echo $1 | sed -e 's/-\w+\.out//' | sed 's/oracle\///g')

echo "Running Version $(ls eclipse/plugins/fr.lip6.pnml.tapaal.application*)"

./install_input.sh $MODELNAME $$

cd INPUTS
cd "$MODELNAME$$"

export MODEL=$(pwd)

time -p $BINDIR/limit_time.pl 900 $BINDIR/eclipse/its-tools -tapaalpath $BINDIR/tapaal-3.4.0-linux64/bin/verifypn64  -i $MODEL/model.pnml -examination ${@:2} -consoleLog 
#killall -r 'its.*'
#killall 'z3'
#killall -r 'pins2.*'

cd ..
#
\rm -rf "$MODELNAME$$"

cd ..
