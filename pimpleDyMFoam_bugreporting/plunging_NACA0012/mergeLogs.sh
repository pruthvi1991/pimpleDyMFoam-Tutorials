#!/bin/bash

#filenames=$(ls | grep 'forces')
#sed -i 's/[()]//g' forces*
cd postProcessing/forceCoeffs/0/
mkdir bins
binNames=$(ls | grep bins)
mv $binNames bins/
mv merged.dat Fx_gnu.dat Fy_gnu.dat ./bins/

echo "Give input --> forces_ or forceCoeffs_ ? Don't forget to type the underscore. Refer function object in system/controlDict if you are unsure"
read type

if [[ "$type" != "forces_" && "$type" != "forceCoeffs_" ]];
then
echo "Gave input $type which is neither "forces_" or "forceCoeffs_". Please refer function object in system/controlDict to see the option you chose"
exit
fi

exception=$(echo $type | sed 's/_/.dat/g')
filenames=$(ls | grep $type | sed s/[$type]//g | sort -n | sed s/^/$type/)
#filenames=$(ls | grep '$type' | sed 's/[forces_]//g' | sort -n | sed 's/^/forces_/' | sed 's/forces_.dat/forces.dat/g')
cat $exception $filenames >> merged.dat

if [ "$type" == "forces_" ];
then
cat merged.dat | awk '{print$1,$2,$5}' | sed 's/(//g' >> Fx_gnu.dat
cat merged.dat | awk '{print$1,$3,$6}' | sed 's/(//g' >> Fy_gnu.dat
elif [ "$type" == "forceCoeffs_" ];
then
echo "forceCoeffs file is in gnu format. Doesn't need anymore parsing"
else
echo "Input is neither forceCoeffs_ or forces_"
fi

cd ../../../ 
./plot
