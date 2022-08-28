apt-get update && apt-get upgrade -y && apt-get dist-upgrade -y && apt-get full-upgrade && apt-get autoremove -y 
apt-get install preload -y
echo 20 > /proc/sys/vm/swappiness
echo 80 > /proc/sys/vm/dirty_ratio
echo "12000" > /proc/sys/vm/dirty_expire_centisecs
echo "200000" > /proc/sys/fs/file-max
echo "0" > /proc/sys/vm/overcommit_memory
echo "65536" > /proc/sys/vm/min_free_kbytes
systemctl enable fstrim.timer
echo "1" > /proc/sys/kernel/dmesg_restrict
echo "kernel.randomize_va_space=2" >> /etc/sysctl.conf
echo "kernel.exec-shield=1" >> /etc/sysctl.conf
echo "net.ipv4.conf.default.rp_filter=1" >> /etc/sysctl.conf
echo "net.ipv4.conf.all.rp_filter=1" >> /etc/sysctl.conf
echo "net.ipv4.tcp_syncookies=1" >> /etc/sysctl.conf
echo "net.ipv4.tcp_synack_retries=5" >> /etc/sysctl.conf
echo "0" > /proc/sys/kernel/core_uses_pid
echo "net.ipv4.conf.all.accept_redirects = 0" >> /etc/sysctl.conf
echo "net.ipv4.conf.all.accept_redirects = 0" >> /etc/sysctl.conf
echo "net.ipv6.conf.all.accept_redirects = 0" >> /etc/sysctl.conf
echo "net.ipv4.conf.all.send_redirects = 0" >> /etc/sysctl.conf
echo "net.ipv4.conf.all.accept_source_route = 0" >> /etc/sysctl.conf
echo "net.ipv6.conf.all.accept_source_route = 0" >> /etc/sysctl.conf
echo "net.ipv4.icmp_echo_ignore_broadcasts=1" >> /etc/sysctl.conf
echo "fs.protected_hardlinks=0" >> /etc/sysctl.conf
echo "fs.protected_symlinks=0" >> /etc/sysctl.conf