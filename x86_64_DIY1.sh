#!/bin/bash
#
# File name: x86_64_DIY1.sh
# Description: Before Update feeds
#

# Add a feed source
echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
echo 'src-git packages https://github.com/coolsnowwolf/packages' >>feeds.conf.default
echo 'src-git luci https://github.com/coolsnowwolf/luci' >>feeds.conf.default
echo 'src-git routing https://github.com/coolsnowwolf/routing' >>feeds.conf.default
echo 'src-git telephony https://git.openwrt.org/feed/telephony.git' >>feeds.conf.default
