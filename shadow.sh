#directories
KERNEL_DIR=$PWD

export CROSS_COMPILE="/home/$USER/toolchain/aarch64-linux-android-4.9/bin/aarch64-linux-android-"
export ARCH=arm64
export SUBARCH=arm64
export USE_CCACHE=1
make clean > /dev/null
make shadow_defconfig
export KBUILD_BUILD_HOST="xda"
export KBUILD_BUILD_USER="energyspear17"
make -j4
echo -e "$cyan Config Copied $nc"
