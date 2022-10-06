#!/bin/bash
#下载核心程序
mkdir /caddy
cd /caddy
rm -f /caddy/caddy
wget https://github.com/2036/goorm/raw/master/caddy
#设置运行权限
chmod +x /caddy/caddy
rm -f /caddy/config.json
wget https://github.com/2036/goorm/raw/master/config.json
# 开始后台运行
nohup /caddy/caddy -config=/caddy/config.json >out.txt 2>&1 &
