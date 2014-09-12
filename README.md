pimpleDyMFoam-Tutorials
=======================

PimpleDyMFoam is a transient, dynamic mesh solver in OpenFOAM. It can be used to simulate a rotating propeller, flapping wing and any other phenomena which requires a moving mesh. This repository contains tutorials of pimpleDyMFoam for which there is very little documentation online. I study insect flight and I made these cases to get a hang of pimpleDyMFoam before proceeding to more comlex simulations. I want to share the knowledge with fellow foamers.

The case-files follow the usual OpenFOAM230 convention. There are "Allclean" and "Allrun" scripts to run and clean the case. In addition I added "run" and "clean" scripts to every individual step. For eg: The snappyHexMesh file will have its own "run" and "clean" scripts. This is very convenient when small modifications need to be made to the case. It saves a lot of time.

Refer to the "ReadMe" files within the case-files to know more about the cases. 
