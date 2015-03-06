#!/bin/sh
cd ${0%/*} || exit 1    # run from this directory

# Source tutorial run functions
. $WM_PROJECT_DIR/bin/tools/RunFunctions

# Make 3D mesh in slab of cells.
#cd wingMotion_snappyHexMesh
runApplication blockMesh
transformPoints -scale '(2 2 1)'
runApplication surfaceFeatureExtract
runApplication snappyHexMesh -overwrite
transformPoints -scale '(1 1 2)'
#paraFoam
# ----------------------------------------------------------------- end-of-file
