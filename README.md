# 5G_RU_build_script
5G RU project build script
Following steps must be followed to build the ORAN and DPDK code. 

Assumptions: for current version of build script, Following steps must be done before start build process: 
1. create a project directory on local bbuild machine. 
2. download the correct, working toolchain. We are currently building using gcc-linaro-7.5.0-2019.12-x86_64_aarch64-linux-gnu 
3. clone the DPDK and ORAN-PHY-ECPRI code from github.com/ossdev07 in project directory. If already downloaded, please ensure that correct branch and commit is checked out. 

Prebuild steps: following steps must be followed before building the codebase:
1. export the path of the toolchain to shell. 
2. export variables CROSS to shell. 

e.g: 
export PATH=$PATH:/home/prashant/toolchain/gcc-linaro-7.5.0-2019.12-x86_64_aarch64-linux-gnu/bin
export CROSS=aarch64-linux-gnu-

Note: It is always better to add export commands to .bashrc 

Build steps: 
1. clone the build scripts 
   git clone https://github.com/PrashantSangal01/5G_RU_build_script.git
   cd 5G_RU_build_script
2. execute the build script: 
   source build_all.sh <Project_Root_Dir> <Gtest_Root_Dir>
   built image will be copied to 5G_RU_build_script directory automatically. 
3. If image has to be copied to target machine, use following command:  
   source build_all.sh <Project_Root_Dir> <Gtest_Root_Dir> <user_name> <Target_board_IP>
   built image will be copied to the home folder of target board and in 5G_RU_build_script folder as well. 



