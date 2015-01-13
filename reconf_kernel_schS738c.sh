#!/bin/sh

export ARCH=arm
export CROSS_COMPILE=/home/dyngar-m/.bin/android-ndk-r10d/toolchains/arm-linux-androideabi-4.9/prebuilt/linux-x86_64/bin/arm-linux-androideabi-
make test_defconfig
make menuconfig
mv arch/arm/configs/test_defconfig arch/arm/configs/test_defconfig.bak && rm arch/arm/configs/test_defconfig
mv .config arch/arm/configs/test_defconfig && cp arch/arm/configs/test_defconfig arch/arm/configs/cm_schS738c_defconfig && make mrproper
sleep 5
git add . && git commit -am "tweaked defconfig, see diff" && git push origin master