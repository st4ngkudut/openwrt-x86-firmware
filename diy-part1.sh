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

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# ssrplus
echo 'src-git helloworld https://github.com/fw876/helloworld.git' >>feeds.conf.default

# passwall
echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall.git' >>feeds.conf.default
echo 'src-git PWluci https://github.com/xiaorouji/openwrt-passwall.git' >>feeds.conf.default
echo 'src-git passwall2 https://github.com/xiaorouji/openwrt-passwall2' >>feeds.conf.default

# echo "src-git oui https://github.com/zhaojh329/oui.git" >>feeds.conf.default


git clone https://github.com/jerrykuku/luci-app-argon-config.git package/lean/luci-app-argon-config
echo '### Argon Theme Config ###'

git clone https://github.com/esirplayground/luci-app-poweroff.git package/lean/luci-app-poweroff
echo '### Shutdown Router ###'

git clone https://github.com/destan19/OpenAppFilter.git package/OpenAppFilter
echo '### OpenAppFilter ###'

git clone https://github.com/rufengsuixing/luci-app-adguardhome
echo '### luci-app-adguardhome ###'

git clone https://github.com/pymumu/luci-app-smartdns.git package/lean/luci-app-smartdns
echo '### luci-app-smartdns ###'
