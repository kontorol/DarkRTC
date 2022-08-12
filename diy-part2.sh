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
# Modify gost Version
sed -i 's/2.11.2/3.0.0-beta.2/' feeds/kenzo/gost/Makefile
sed -i 's/143174a9ba5b0b6251d1d9a52267220f97bec1319676618746c1a5d7a7a86d96/e404ec04c2e04ca05cb9fd5d83412e304cfb4976ff2389c786bcfe9468e2958d/' feeds/kenzo/gost/Makefile
sed -i 's/ginuerzh/go-gost/' feeds/kenzo/gost/Makefile
