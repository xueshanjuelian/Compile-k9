#!/bin/bash
#===========================================================
# Copyright (c) 2021 baiyunxue            
#
# This is free software, licensed under the MIT License.         
# See /LICENSE for more information.
#
# https://github.com/baiyunxue/Compile-Openwrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#============================================================

# Modify default IP
sed -i 's/192.168.1.1/192.168.10.1/g' package/base-files/files/bin/config_generate
# Modify WiFi ON
sed -i 's/disabled=1/disabled=0/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh
# Modify default SSID
#sed -i 's/ssid=OpenWrt/ssid=lantian/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh

# 自定义app
svn co https://github.com/gw826943555/openwrt-vlmcsd/trunk/luci-app-vlmcsd package/DIY/luci-app-vlmcsd   #KSM服务app
svn co https://github.com/gw826943555/openwrt-vlmcsd/trunk/vlmcsd package/DIY/vlmcsd   #KSM服务
svn co https://github.com/gw826943555/openwrt-vsftpd/trunk/vsftpd package/DIY/vsftpd   #vsftpd共享
svn co https://github.com/gw826943555/openwrt-vsftpd/trunk/luci-app-vsftpd package/DIY/luci-app-vsftpd   #vsftpd共享app
svn co https://github.com/coolsnowwolf/packages/trunk/net/zerotier package/DIY/zerotier
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/luci-app-zerotier package/DIY/luci-app-zerotier

# 自定义theme主题
git clone https://github.com/Leo-Jo-My/luci-theme-opentomato.git package/DIY/luci-theme-opentomato
git clone https://github.com/Leo-Jo-My/luci-theme-argon-dark-mod.git package/DIY/luci-theme-argon-dark-mod

#自定义软件包
#git clone -b 19.07 https://github.com/kenzok8/openwrt-packages package/kenzok8
#git clone https://github.com/sirpdboy/sirpdboy-package.git package/sirpdboy
