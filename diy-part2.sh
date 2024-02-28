#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate

# 替换luci-theme-argon相关
# rm -rf feeds/luci/themes/luci-theme-argon
# git clone https://github.com/jerrykuku/luci-theme-argon.git feeds/luci/themes/luci-theme-argon

# 添加aliyundrive-webdav
rm -rf feeds/packages/multimedia/aliyundrive-webdav
rm -rf feeds/luci/applications/luci-app-aliyundrive-webdav
git clone https://github.com/messense/aliyundrive-webdav.git
cp -r aliyundrive-webdav/openwrt/aliyundrive-webdav feeds/packages/multimedia
cp -r aliyundrive-webdav/openwrt/luci-app-aliyundrive-webdav feeds/luci/applications
rm -rf aliyundrive-webdav

# 跟随最新版naiveproxy
rm -rf feeds/passwall_packages/naiveproxy
rm -rf feeds/helloworld/naiveproxy
git clone -b v5 https://github.com/sbwml/openwrt_helloworld.git
cp -r openwrt_helloworld/naiveproxy feeds/passwall_packages
cp -r openwrt_helloworld/naiveproxy feeds/helloworld
rm -rf openwrt_helloworld
