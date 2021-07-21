#!/bin/bash
#===========================================================
# Copyright (c) 2021 baiyunxue            
#
# This is free software, licensed under the MIT License.         
# See /LICENSE for more information.
#
# https://github.com/baiyunxue/Compile-Lede-Openwrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#============================================================

# Modify default IP
sed -i 's/192.168.1.1/192.168.10.1/g' package/base-files/files/bin/config_generate
# Modify WiFi ON
sed -i 's/disabled=1/disabled=0/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh
# Modify default SSID
#sed -i 's/ssid=OpenWrt/ssid=lantian/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh

#Add ddnsto
svn co https://github.com/281677160/openwrt-package/branches/openwrt-21.02/package/luci-app-ddnsto/luci/luci-app-ddnsto package/feeds/luci/luci-app-ddnsto
svn co https://github.com/281677160/openwrt-package/branches/openwrt-21.02/package/luci-app-ddnsto/network/services/ddnsto package/network/services/ddnsto

#Add luci-app-zerotier
svn co https://github.com/immortalwrt/luci/trunk/applications/luci-app-zerotier package/feeds/luci/luci-app-zerotier

#Add luci-app-smartdn
svn co https://github.com/immortalwrt/luci/trunk/applications/luci-app-smartdns package/feeds/luci/luci-app-smartdn
svn co https://github.com/immortalwrt/luci/trunk/applications/luci-app-adbyby-plus package/feeds/luci/luci-app-adbyby-plus
