#!/bin/sh
cd ${0%/*} || exit 1    # run from this directory

# Source tutorial run functions
. $WM_PROJECT_DIR/bin/tools/RunFunctions

runApplication extrudeMesh
runApplication createPatch -overwrite
transformPoints -translate '(0 0 -0.2)'
transformPoints -scale '(1 1 2)'
cp -r 0.org 0
#runApplication decomposePar
#runParallel `getApplication` 4
runApplication pimpleDyMFoam
#runApplication reconstructPar
#rm -r processor*
# ----------------------------------------------------------------- end-of-file
