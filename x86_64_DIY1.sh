#!/bin/bash
#
# File name: x86_64_DIY1.sh
# Description: Before Update feeds
#

# Add a feed source
echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
