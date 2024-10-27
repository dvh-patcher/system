#!/bin/sh

echo -e "INSTALL-XRAYMOD"
wget -q "https://github.com/dvh-patcher/system/raw/refs/heads/main/xray-core_1.7.2-1_aarch64_cortex-a53.ipk";
opkg install xray-core_1.7.2-1_aarch64_cortex-a53.ipk;

echo -e "INSTALL-PASSWALL"
wget -q "https://github.com/dvh-patcher/system/raw/refs/heads/main/luci-app-passwall_4.66-8_all.ipk";
opkg install luci-app-passwall_4.66-8_all.ipk;
uci commit

/etc/init.d/passwall enable
/etc/init.d/passwall start

rm -rf /root/*
echo -e "FINISH INSTALL CAN CLOSE TERMINAL"
