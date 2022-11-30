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

# Modify default IP Gate #
sed -i 's/192.168.1.1/172.16.253.254/g' package/base-files/files/bin/config_generate
echo '### Updates default IP gate ###'

# Updates Theme Argon #
# package/lean/luci-theme-argon /package/feeds/luci/luci-theme-argon
rm -rf package/feeds/luci/luci-theme-argon
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git package/feeds/luci/luci-theme-argon
echo '### Updates Theme Argon ###'


# Argon Theme Config plug-in components #
git clone https://github.com/jerrykuku/luci-app-argon-config.git package/lean/luci-app-argon-config
echo '### Argon Theme Config ###'

# Shutdown plug-in components #
git clone https://github.com/esirplayground/luci-app-poweroff.git package/lean/luci-app-poweroff
echo '### Shutdown Router ###'

# luci-app-adguardhome plug-in components #
git clone https://github.com/rufengsuixing/luci-app-adguardhome package/lean/luci-app-poweroff
echo '### luci-app-adguardhome ###'

# luci-app-smartdns plug-in components #
git clone https://github.com/pymumu/luci-app-smartdns.git package/lean/luci-app-smartdns
echo '### luci-app-smartdns ###'

# OpenAppFilter plug-in components #
# git clone https://github.com/destan19/OpenAppFilter.git package/OpenAppFilter
echo '### OpenAppFilter ###'





