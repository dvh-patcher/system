echo -e "BYPASS-TTL64"
wget -q -O /etc/init.d/firewall-custom "https://github.com/dvh-patcher/system/raw/refs/heads/main/firewall-custom";
chmod 755 /etc/init.d/firewall-custom;

/etc/init.d/firewall-custom enable
/etc/init.d/firewall-custom start

rm -rf /root/*
echo -e "FINISH BYPASS CAN CHECK PING"
