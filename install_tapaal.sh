#!/bin/bash


#case "$1" in
#win)
#	tmp="http://www.tapaal.net/fileadmin/download/tapaal-3.4/tapaal-3.4.0-win64.zip";
#	term=".zip";;
#lin)
#	tmp="http://www.tapaal.net/fileadmin/download/tapaal-3.4/tapaal-3.4.0-linux64.zip";
#	term=".zip";;
#mac)
#	tmp="http://www.tapaal.net/fileadmin/download/tapaal-3.4/tapaal-3.4.0-mac64.dmg";
#	term=".dmg";;
#*)
#	echo "Specify the OS with win, mac or lin"; exit 1;;	
#esac

if [ ! -f tapaal-3.4.0-linux64/bin/verrifypn64 ] ; then
	tmp="http://www.tapaal.net/fileadmin/download/tapaal-3.4/tapaal-3.4.0-linux64.zip";
	term="zip";
	
	subtmp=${tmp:52}
	
	wget $tmp
	
	#les binaires sont deja compiler
	unzip $subtmp
	
	rm $subtmp
fi

 if [ ! -f eclipse/eclipse ] ; then 
mkdir eclipse
cd eclipse
wget --progress=dot:mega https://justinrudat.github.io/ITS-commandline/fr.lip6.move.gal.itscl.product-linux.gtk.x86_64.zip
unzip fr.lip6.*
rm fr.lip6.*.zip

fi



