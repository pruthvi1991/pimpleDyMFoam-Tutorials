#!/bin/sh
cd ${0%/*} || exit 1    # run from this directory

# Source tutorial run functions
. $WM_PROJECT_DIR/bin/tools/CleanFunctions

#cleanCase
rm -rf 0
for i in 1 2 3 4 5 6 7 8 9
do
	rm -r $i* 
	rm -r $0.i*
done
rm -r processor*
rm log.d*
rm log.p*
rm log.re*

