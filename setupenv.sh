#!/bin/bash

export DIR_ROOT=$1
#set the L1 binary root DIR
#export DIR_ROOT_L1_BIN=$DIR_ROOT/FlexRAN
#set the phy root DIR
export DIR_ROOT_PHY=$DIR_ROOT/oran-phy-ecpri
#set the FEC SDK root DIR
#export DIR_ROOT_FEC_SDK=$DIR_ROOT/FlexRAN-FEC-SDK-19-04/sdk
#set the DPDK root DIR
export DIR_ROOT_DPDK=$DIR_ROOT/dpdk
#set the GTEST root DIR
export DIR_ROOT_GTEST=$2
export GTEST_ROOT=$2
export GTEST_DIR=$2
#export DIR_WIRELESS_TEST_5G=$DIR_ROOT_L1_BIN/testcase
#export DIR_WIRELESS_SDK=$DIR_ROOT_L1_BIN/sdk/build-avx512-icc
#export DIR_WIRELESS_TABLE_5G=$DIR_ROOT_L1_BIN/l1/bin/nr5g/gnb/l1/table
#source /opt/intel/system_studio_2019/bin/iccvars.sh intel64 -platform linux
export XRAN_DIR=$DIR_ROOT_PHY/fhi_lib
export ORAN_BUILD_DIR=$XRAN_DIR/app/build

export RTE_TARGET=arm64-dpaa-linuxapp-gcc
export RTE_SDK=$DIR_ROOT_DPDK
export DESTDIR=$DIR_ROOT_DPDK
export BUILD_GCC=1
#export WIRELESS_SDK_TARGET_ISA=avx512
#export FLEXRAN_SDK=$DIR_ROOT_FEC_SDK/build-avx512-icc/install
#export GTEST_ROOT=$DIR_ROOT_GTEST

#export ORAN_5G_FAPI=true
#export DIR_WIRELESS_WLS=$DIR_ROOT_PHY/wls_lib
#export DEBUG_MODE=true
#export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$DIR_WIRELESS_WLS
#export DIR_WIRELESS=$DIR_ROOT_L1_BIN/l1
#export DIR_WIRELESS_ORAN_5G_FAPI=$DIR_ROOT_PHY/fapi_5g
#export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$DIR_ROOT_L1_BIN/libs/cpa_sub6/rec/lib/lib

