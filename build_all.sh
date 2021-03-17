#!/bin/bash -e

if [ $# -lt 2 ]
then
	echo "usage: source build_all.sh <Project_Root_Dir> <Gtest_Root_Dir> "

elif [ $# -ge 3 ]
then
	echo " No Remote location provided, will copy built app in build directory" 
fi

export PRJ_BUILD_DIR=${PWD}
source setupenv.sh $1 $2

rm -rf $ORAN_BUILD_DIR/sample-app
rm -rf $/arm-ran-accel-lib
cd ${RTE_SDK}
export RTE_TARGET=arm64-dpaa-linuxapp-gcc
make T=arm64-dpaa-linuxapp-gcc install -j 8 CONFIG_RTE_KNI_KMOD=n CONFIG_RTE_EAL_IGB_UIO=n

cd ${XRAN_DIR}
./build.sh

cd ${PRJ_BUILD_DIR}
cp $ORAN_BUILD_DIR/sample-app .

if [ $# -eq 4 ]
then
	sudo scp sample-app $3@$4:~/
else
	echo " Confirm the destination to copy"
fi

