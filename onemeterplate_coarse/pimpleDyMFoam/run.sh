#!/bin/sh
cd ${0%/*} || exit 1    # run from this directory

# Source tutorial run functions
. $WM_PROJECT_DIR/bin/tools/RunFunctions

cp -r ../simpleCoarseAmbient/constant/polyMesh/* constant/polyMesh/
transformPoints -translate '(1 1 2)'
#runApplication extrudeMesh
#runApplication createPatch -overwrite
cp -r 0.org 0
#runApplication mapFields ../simpleCoarseAmbient -sourceTime latestTime -consistent
#mv 0/pointDisplacement.unmapped 0/pointDisplacement
runApplication decomposePar
runParallel `getApplication` 8
#pimpleDyMFoam
runApplication reconstructPar
#rm -r processor*
# ----------------------------------------------------------------- end-of-file
