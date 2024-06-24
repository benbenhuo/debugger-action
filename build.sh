#!/bin/bash
sudo apt install -y gcc make gettext bison flex bc zlib1g-dev libncurses5-dev lzma libssl-dev unzip
wget https://raw.githubusercontent.com/benbenhuo/debugger-action/master/hi3798mv100_defconfig
wget https://codeload.github.com/tegzwn/HiSTBLinuxV100R005C00SPC050/zip/refs/heads/master.zip
wget https://raw.githubusercontent.com/benbenhuo/debugger-action/master/cfg.mak
unzip master.zip
cp hi3798mv100_defconfig HiSTBLinuxV100R005C00SPC050/source/kernel/linux-4.4.y/arch/arm/configs/hi3798mv100_defconfig
cp cfg.mak HiSTBLinuxV100R005C00SPC050/cfg.mak
cd HiSTBLinuxV100R005C00SPC050
source ./env.sh
make build -j$(nproc)