#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# 恢复lede源码对mt3000的支持
# rm -rf target/linux/mediatek
# wget 'https://github.com/wekingchen/my-file/raw/master/lede/mediatek.zip'  --no-check-certificate && unzip -o mediatek.zip && rm -f mediatek.zip

# Uncomment a feed source
#sed -i "/helloworld/d" "feeds.conf.default"

# Add a feed source
echo "src-git passwall_packages https://github.com/xiaorouji/openwrt-passwall-packages.git;main" >> "feeds.conf.default"
echo "src-git passwall2 https://github.com/xiaorouji/openwrt-passwall2.git;main" >> "feeds.conf.default"
# echo "src-git helloworld https://github.com/fw876/helloworld.git;master" >> "feeds.conf.default"

./scripts/feeds clean
