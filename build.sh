#!/bin/bash
sudo apt install -y gcc make gettext bison flex bc zlib1g-dev libncurses5-dev lzma libssl-dev unzip
wget https://raw.githubusercontent.com/benbenhuo/debugger-action/master/hi3798mv100_defconfig
wget https://codeload.github.com/benbenhuo/HiSTBLinuxV100R005C00SPC050/zip/refs/heads/master
wget https://raw.githubusercontent.com/tegzwn/debugger-action/master/cfg.mak
unzip master
cp hi3798mv100_defconfig HiSTBLinuxV100R005C00SPC050-master/source/kernel/linux-4.4.y/arch/arm/configs/hi3798mv100_defconfig
cp cfg.mak HiSTBLinuxV100R005C00SPC050-master/cfg.mak
cd HiSTBLinuxV100R005C00SPC050-master
source ./env.sh
cd source/kernel/linux-4.4.y
make O=out ARCH=arm hi3798mv100_defconfig
make O=out ARCH=arm modules -j$(nproc)