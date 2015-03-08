#!/bin/sh
cd ${0%/*} || exit 1    # run from this directory

# Source tutorial run functions
. $WM_PROJECT_DIR/bin/tools/RunFunctions

cd snappyAmbientCoarse_airfoil
./clean.sh
./run.sh
cd ../plunging_NACA0012/
./cleanCase.sh
./run.sh
# ----------------------------------------------------------------- end-of-file
