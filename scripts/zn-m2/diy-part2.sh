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
#优先安装 passwall 源
./scripts/feeds install -a -f -p passwall_packages
./scripts/feeds install -a -f -p passwall

rm -rf ./feeds/packages/net/qBittorrent-Enhanced-Edition
rm -rf ./feeds/luci/applications/luci-app-qbittorrent

git clone https://github.com/sbwml/luci-app-qbittorrent.git -b 4.4.5 ./package/qBittorrent





