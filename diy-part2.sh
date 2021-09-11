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
git clone https://github.com/monokoo/luci-app-arpbind.git package/DIY/luci-app-arpbind   #IP绑定
git clone https://github.com/awesome-openwrt/luci-app-autoreboot.git package/DIY/luci-app-autoreboot  #计划重启
git clone https://github.com/mchome/luci-app-vlmcsd.git package/DIY/luci-app-vlmcsd   #KSM服务app
git clone https://github.com/mchome/openwrt-vlmcsd.git package/DIY/vlmcsd   #KSM服务
git clone https://github.com/monokoo/luci-app-transmission.git package/DIY/luci-app-transmission   #transmission下载
git clone https://github.com/pymumu/luci-app-smartdns.git package/DIY/luci-app-smartdns  #smartdns加速app
git clone https://github.com/pymumu/openwrt-smartdns.git package/DIY/smartdns   #smartdns加速
git clone https://github.com/rufengsuixing/luci-app-zerotier.git package/DIY/luci-app-zerotier   #zerotier穿透
svn co https://github.com/animefansxj/luci-app-vsftpd/trunk/Source/op-dir/feeds/packages/net/vsftpd package/DIY/vsftpd   #vsftpd共享
svn co https://github.com/animefansxj/luci-app-vsftpd/trunk/Source/luci-dir/applications/luci-vsftpd package/DIY/luci-app-vsftpd   #vsftpd共享app

# 自定义theme主题
git clone https://github.com/Leo-Jo-My/luci-theme-opentomato.git package/DIY/luci-theme-opentomato
git clone https://github.com/Leo-Jo-My/luci-theme-argon-dark-mod.git package/DIY/luci-theme-argon-dark-mod

#自定义软件包
#git clone -b 19.07 https://github.com/kenzok8/openwrt-packages package/kenzok8
#git clone https://github.com/sirpdboy/sirpdboy-package.git package/sirpdboy
