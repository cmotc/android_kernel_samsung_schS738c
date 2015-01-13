#!/bin/sh
export ARCH=arm
export CROSS_COMPILE=/home/dyngar-m/.bin/android-ndk-r10d/toolchains/arm-linux-androideabi-4.9/prebuilt/linux-x86_64/bin/arm-linux-androideabi-
make test_defconfig
make
