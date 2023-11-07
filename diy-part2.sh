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

#sed -i 's/^PKG_VERSION:=.*/PKG_VERSION:=118.0.5993.65-1/' feeds/PWpackages/naiveproxy/Makefile
#sed -i 's/^PKG_HASH:=.*/PKG_HASH:=d97193d82e346ec2f753151cee52d00495e2df7688d60a5b4395b8cd39399734/' feeds/PWpackages/naiveproxy/Makefile
#sed -i 's/^PKG_VERSION:=.*/PKG_VERSION:=118.0.5993.65-1/' feeds/helloworld/naiveproxy/Makefile
#sed -i 's/^PKG_HASH:=.*/PKG_HASH:=d97193d82e346ec2f753151cee52d00495e2df7688d60a5b4395b8cd39399734/' feeds/helloworld/naiveproxy/Makefile

# 替换luci-theme-argon相关
rm -rf feeds/luci/themes/luci-theme-argon
git clone https://github.com/jerrykuku/luci-theme-argon.git feeds/luci/themes/luci-theme-argon

# 添加aliyundrive-webdav
rm -rf feeds/packages/multimedia/aliyundrive-webdav
svn co https://github.com/messense/aliyundrive-webdav/trunk/openwrt/aliyundrive-webdav feeds/packages/multimedia/aliyundrive-webdav
rm -rf feeds/luci/applications/luci-app-aliyundrive-webdav
svn co https://github.com/messense/aliyundrive-webdav/trunk/openwrt/luci-app-aliyundrive-webdav feeds/luci/applications/luci-app-aliyundrive-webdav
