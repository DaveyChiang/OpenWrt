#!/bin/bash
#
# Davey Chiang
# DaveyChiang@outlook.com
#
# File name: 1.sh
# Description: After Update feeds
#

# 修改默认IP地址
sed -i 's/192.168.1.1/10.0.0.88/g' package/base-files/files/bin/config_generate
# 版本号里显示自己的名字
sed -i "s/OpenWrt /DaveyChiang build $(TZ=UTC-8 date "+%Y%m%d") @ OpenWrt /g" package/lean/default-settings/files/zzz-default-settings
# 修改主机名
sed -i '/uci commit system/i\uci set system.@system[0].hostname='DaveyChiang'' package/lean/default-settings/files/zzz-default-settings
# 设置密码为空
#sed -i 's/$1$V4UetPzk$CYXluq4wUazHjmCDBCqXF.//g' openwrt/package/lean/default-settings/files/zzz-default-settings

# git lua-maxminddb 依赖
git clone https://github.com/jerrykuku/lua-maxminddb.git package/lean/lua-maxminddb
# Hello World
git clone https://github.com/jerrykuku/luci-app-vssr.git package/lean/luci-app-vssr
