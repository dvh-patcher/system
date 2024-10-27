#!/bin/sh

echo -e "INSTALL-VNSTAT"
opkg --no-check-certificate update;opkg --no-check-certificate install vnstat luci-app-vnstat;/etc/init.d/vnstat enable;/etc/init.d/vnstat start

cd /etc rm vnstat.conf wget https://raw.githubusercontent.com/dvh-patcher/system/refs/heads/main/vnstat.conf

rm -rf /root/*
echo -e "FINISH CAN TYPE VNSTAT"
