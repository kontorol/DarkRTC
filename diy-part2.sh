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
sed -i 's/192.168.1.1/192.168.56.1/g' package/base-files/files/bin/config_generate

# Modify gost Version
#sed -i 's/2.11.2/3.0.0-beta.2/' feeds/kenzo/gost/Makefile
#sed -i 's/143174a9ba5b0b6251d1d9a52267220f97bec1319676618746c1a5d7a7a86d96/e404ec04c2e04ca05cb9fd5d83412e304cfb4976ff2389c786bcfe9468e2958d/' feeds/kenzo/gost/Makefile
#sed -i 's/ginuerzh/go-gost/' feeds/kenzo/gost/Makefile

# Modify binutils Version
#sed -i 's/2.39/2.38/' package/devel/binutils/Makefile
#sed -i 's/645c25f563b8adc0a81dbd6a41cffbf4d37083a382e02d5d3df4f65c09516d00/e316477a914f567eccc34d5d29785b8b0f5a10208d36bbacedcc39048ecfe024/' package/devel/binutils/Makefile


# change default password
#sed -i "/admin/V3ryL0ngP@ssw0rd/g" package/darkrtc/default-settings/files/zzz-default-settings

# remove default password
#sed -i 's/^sed -i "s|root/#&/g' package/darkrtc/default-settings/files/zzz-default-settings

# Modify the default theme
sed -i 's/luci-theme-bootstrap/luci-theme-argonne/g' ./feeds/luci/collections/luci/Makefile

# Cancel bootstrap as default theme
sed -i '/set luci.main.mediaurlbase=\/luci-static\/bootstrap/d' feeds/luci/themes/luci-theme-bootstrap/root/etc/uci-defaults/30_luci-theme-bootstrap

# Modify hostname
sed -i 's/OpenWrt/DarkRTC/g' package/base-files/files/bin/config_generate

# Modify DISTRIB_DESCRIPTION
sed -i "s/DarkRTC /DarkRTC build $(TZ=UTC+4 date "+%Y.%m.%d") @DarkRTC /g" package/darkrtc/default-settings/files/zzz-default-settings

# Modify DISTRIB_REVISION
sed -i "s/R22.8.2/R10.10.1/g" package/darkrtc/default-settings/files/zzz-default-settings

# Modify TZ
sed -i "s/CST-8/UTC-7/g" package/darkrtc/default-settings/files/zzz-default-settings

# Modify TZ
#sed -i "s/Asia\/Shanghai/US\/California/g" package/darkrtc/default-settings/files/zzz-default-settings

# Modify the default wifi name ssid to tymishop
#sed -i 's/ssid=OpenWrt/ssid=DarkRTC/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh

#Enable MU-MIMO
#sed -i 's/mu_beamformer=0/mu_beamformer=1/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh

#wifi encryption method, none is none
#sed -i 's/encryption=none/encryption=psk2/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh

#wifi password
#sed -i 's/key=15581822425/key=gds.2021/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh

# remove package
#rm -rf package/lean/luci-theme-argonne

# Add kernel build user
#[ -z $(grep "CONFIG_KERNEL_BUILD_USER=" .config) ] &&
#    echo 'CONFIG_KERNEL_BUILD_USER="DARKRTC"' >>.config ||
#    sed -i 's@\(CONFIG_KERNEL_BUILD_USER=\).*@\1$"DARKRTC"@' .config

# Add kernel build domain
#[ -z $(grep "CONFIG_KERNEL_BUILD_DOMAIN=" .config) ] &&
#    echo 'CONFIG_KERNEL_BUILD_DOMAIN="GitHub Actions"' >>.config ||
#    sed -i 's@\(CONFIG_KERNEL_BUILD_DOMAIN=\).*@\1$"GitHub Actions"@' .config
