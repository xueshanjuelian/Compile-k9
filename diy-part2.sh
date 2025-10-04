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
#sed -i 's/192.168.1.1/192.168.10.1/g' package/base-files/files/bin/config_generate
# Modify WiFi ON
#sed -i 's/disabled=1/disabled=0/g' openwrt/package/kernel/mac80211/files/lib/wifi/mac80211.sh
#sed -i 's/disabled=1/disabled=0/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh

# Modify default SSID
#sed -i 's/ssid=OpenWrt/ssid=lantian/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh

# 自定义app
# git clone https://github.com/sirpdboy/sirpdboy-package.git package/diy
#svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/luci-app-vsftpd package/false/luci-app-vsftpd
#svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/vsftpd-alt package/false/vsftpd-alt
#svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/luci-app-vlmcsd package/false/luci-app-vlmcsd
#svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/vlmcsd package/false/vlmcsd
#svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/luci-app-ramfree package/false/luci-app-ramfree
#svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/luci-app-autoreboot package/false/luci-app-autoreboot
#svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/luci-app-arpbind package/false/luci-app-arpbind
#svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/luci-app-accesscontrol package/false/luci-app-accesscontrol
#svn co https://github.com/gw826943555/openwrt-vlmcsd/trunk/luci-app-vlmcsd package/DIY/luci-app-vlmcsd   #KSM服务app
#svn co https://github.com/gw826943555/openwrt-vlmcsd/trunk/vlmcsd package/DIY/vlmcsd   #KSM服务
#svn co https://github.com/gw826943555/openwrt-vsftpd/trunk/vsftpd package/DIY/vsftpd   #vsftpd共享
#svn co https://github.com/gw826943555/openwrt-vsftpd/trunk/luci-app-vsftpd package/DIY/luci-app-vsftpd   #vsftpd共享app
#svn co https://github.com/coolsnowwolf/packages/trunk/net/zerotier package/DIY/zerotier
#svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/luci-app-zerotier package/DIY/luci-app-zerotier

# 自定义theme主题
#git clone https://github.com/Leo-Jo-My/luci-theme-opentomato.git package/DIY/luci-theme-opentomato
#git clone https://github.com/Leo-Jo-My/luci-theme-argon-dark-mod.git package/DIY/luci-theme-argon-dark-mod

#自定义软件包
#git clone -b 24.10 https://github.com/kenzok8/openwrt-packages package/kenzok8
#git clone https://github.com/sirpdboy/sirpdboy-package.git package/sirpdboy

#删除冲突的软件包
#rm -rf feeds/kiddin9/{base-files,dnsmasq,firewall*,fullconenat,libnftnl,nftables,ppp,opkg,ucl,upx,vsftpd*,miniupnpd-iptables,wireless-regdb}
#rm -rf feeds/kiddin9/{luci-app-autoreboot,luci-app-aria2,luci-app-diskman,luci-app-dockerman,luci-app-firewall,luci-app-filebrowser,luci-app-openclash,luci-app-passwall,luci-app-smartdns,luci-app-samba4,luci-app-vlmcsd,luci-app-vsftpd,luci-app-upnp}
#修改插件名称
#sed -i 's/"Partition Expansion"/"一键分区扩容"/g' `egrep "Partition Expansion" -rl ./`
#sed -i 's/"Advanced plus"/"进阶参数设置"/g' `egrep "Advanced plus" -rl ./`
#sed -i 's/"Scheduled Reboot"/"定时重启"/g' `Scheduled Reboot" -rl ./`
#sed -i 's/"Terminal"/"TTYD终端"/g' `Terminal" -rl ./`
#sed -i 's/"USB Modem Server"/"USB移动网络拨号服务"/g' `USB Modem Server" -rl ./`

