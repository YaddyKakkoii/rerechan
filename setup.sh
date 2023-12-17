#!/bin/bash
#Funnyvpn
#Rerechan02
#Rayzell25
#Nuralfiya
#em0zz
#naravpn.com
#indo-ssh.com
#indossh
#Skc
clear
#rm -fr *
#=========================================================================================================================

run_eula() {
if [ "${EUID}" -ne 0 ]; then
		echo "You need to run this script as root"
		exit 1
fi
if [ "$(systemd-detect-virt)" == "openvz" ]; then
		echo "OpenVZ is not supported"
		exit 1
fi
if [ -f "/etc/xray/domain" ]; then
echo "Script Already Installed"
#exit 1
fi
}

run_funny() {
#Create Folder
mkdir /etc/slowdns
mkdir /etc/xray
mkdir /etc/websocket
mkdir /etc/xray
mkdir /etc/funny
clear
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "$green          Input Domain              	$NC"
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
read -p "Input Your SubDomain : " domain
echo "$domain" > /root/scdomain
echo "$domain" > /etc/xray/scdomain
echo "$domain" > /etc/xray/domain
echo "$domain" > /etc/v2ray/domain
clear
}

run_tools() {
#update
ln -fs /usr/share/zoneinfo/Asia/Jakarta /etc/localtime
sysctl -w net.ipv6.conf.all.disable_ipv6=1 >/dev/null 2>&1
sysctl -w net.ipv6.conf.default.disable_ipv6=1 >/dev/null 2>&1
apt update -y
apt upgrade -y
apt dist-upgrade -y
apt-get remove --purge ufw firewalld -y
apt-get remove --purge exim4 -y
# Install Requirements Tools
apt install ruby -y
apt -y install wget curl
gem install lolcat
apt install python -y
apt install neofetch -y
apt install bc -y
apt install make -y
apt install cmake -y
apt install haproxy -y
apt install coreutils -y
apt install rsyslog -y
apt install net-tools -y
apt install zip -y
apt install unzip -y
apt install nano -y
apt install sed -y
apt install gnupg -y
apt install bc -y
apt install jq -y
apt install apt-transport-https -y
apt install -y make python build-essential npm nodejs
apt install build-essential -y
apt install dirmngr -y
apt install libxml-parser-perl -y
apt install neofetch -y
apt install git -y
apt install haproxy -y
apt install lsof -y
apt install libsqlite3-dev -y
apt install libz-dev -y
apt install gcc -y
apt install g++ -y
apt install libreadline-dev -y
apt install zlib1g-dev -y
apt install libssl-dev -y
apt install libssl1.0-dev -y
apt install dos2unix -y
apt install ruby -y
gem install lolcat
curl ipinfo.io/org > /root/.isp
curl ipinfo.io/city > /etc/xray/city
curl ipinfo.io/org > /root/.myisp
curl ipinfo.io/city > /root/.city
curl ipinfo.io/city > /root/.mycity
curl ifconfig.me > /root/.ip
curl ipinfo.io/region > /root/.region
curl ifconfig.me > /root/.myip
}

run_file() {
####menu
REPO="https://raw.githubusercontent.com/YaddyKakkoii/rerechan/main/"
cd /usr/bin
rm -fr menu
rm -fr /usr/sbin/menu
wget ${REPO}menu.zip
unzip menu.zip
chmod +x *
rm -fr menu.zip
#######service
cd /etc/systemd/system
wget ${REPO}service.zip
unzip service.zip
chmod +x *
rm -fr service.zip
#####core
cd /usr/local/bin
wget ${REPO}ws ; wget ${REPO}badvpn ; chmod +x *
wget ${REPO}v2ray.bz2 ; bzip2 -d v2ray.bz2 ; rm -fr v2ray.bz2 ; clear ; chmod +x v2ray
chmod +x *
cd
}
run_cantikva() {
export DEBIAN_FRONTEND=noninteractive
MYIP=$(wget -qO- ipinfo.io/ip);
MYIP2="s/xxxxxxxxx/$MYIP/g";
NET=$(ip -o $ANU -4 route show to default | awk '{print $5}');
source /etc/os-release
ver=$VERSION_ID
wget ${REPO}udp.sh && chmod +x udp.sh && ./udp.sh && rm -fr udp.sh
#detail nama perusahaan
country=ID
state=Indonesia
locality=Indonesia
organization=funnvpn
organizationalunit=funnvpn
commonname=funnvpn
email=nuralfiya@indo-ssh.com
# go to root
cd
# Edit file /etc/systemd/system/rc-local.service
cat > /etc/systemd/system/rc-local.service <<-END
[Unit]
Description=/etc/rc.local
ConditionPathExists=/etc/rc.local
[Service]
Type=forking
ExecStart=/etc/rc.local start
TimeoutSec=0
StandardOutput=tty
RemainAfterExit=yes
SysVStartPriority=99
[Install]
WantedBy=multi-user.target
END
# nano /etc/rc.local
cat > /etc/rc.local <<-END
#!/bin/sh -e
# rc.local
# By default this script does nothing.
exit 0
END
# Ubah izin akses
chmod +x /etc/rc.local
# enable rc local
systemctl enable rc-local
systemctl start rc-local.service
#
#install haproxy ssl
rm -fr /etc/haproxy/haproxy.cfg
cat >/etc/haproxy/haproxy.cfg <<HAH
global
    daemon
    maxconn 256

defaults
    mode tcp
    timeout connect 5000ms
    timeout client 50000ms
    timeout server 50000ms

frontend ssh-ssl
    bind *:443 ssl crt /etc/haproxy/funny.pem
    mode tcp
    option tcplog
    default_backend ssh-backend

backend ssh-backend
    mode tcp
    option tcplog
    server ssh-server 127.0.0.1:3303
HAH
# set locale
sed -i 's/AcceptEnv/#AcceptEnv/g' /etc/ssh/sshd_config
# install
apt-get --reinstall --fix-missing install -y bzip2 gzip coreutils wget screen rsyslog iftop htop net-tools zip unzip wget net-tools curl nano sed screen gnupg gnupg1 bc apt-transport-https build-essential dirmngr libxml-parser-perl neofetch git lsof
echo "clear" >> .profile
echo "fn" >> .profile
# install webserver
apt -y install nginx php php-fpm php-cli php-mysql libxml-parser-perl
rm /etc/nginx/sites-enabled/default
rm /etc/nginx/sites-available/default
wget -O /etc/nginx/nginx.conf "${REPO}nginx.conf"
wget -O /etc/nginx/fn.conf "${REPO}rere.conf"
sed -i 's/xxx;/${domain};/g' /etc/nginx/nginx.conf
wget -O /var/www/html/index.html ${REPO}index.html
sed -i 's/listen = \/var\/run\/php-fpm.sock/listen = 127.0.0.1:9000/g' /etc/php/fpm/pool.d/www.conf
useradd -m vps;
mkdir -p /home/vps/public_html
echo "<?php phpinfo() ?>" > /home/vps/public_html/info.php
chown -R www-data:www-data /home/vps/public_html
chmod -R g+rw /home/vps/public_html
cd /home/vps/public_html
wget -O /home/vps/public_html/index.html "${REPO}index.html"
/etc/init.d/nginx restart
clear
cd
# setting port ssh
echo "Port 22" >>/etc/ssh/sshd_config
echo "Port 3303" >>/etc/ssh/sshd_config
# install dropbear
apt -y install dropbear
sed -i 's/NO_START=1/NO_START=0/g' /etc/default/dropbear
sed -i 's/DROPBEAR_PORT=22/DROPBEAR_PORT=69/g' /etc/default/dropbear
sed -i 's/DROPBEAR_EXTRA_ARGS=/DROPBEAR_EXTRA_ARGS="-p 109"/g' /etc/default/dropbear
echo "/bin/false" >> /etc/shells
echo "/usr/sbin/nologin" >> /etc/shells
/etc/init.d/dropbear restart
# setting vnstat
apt -y install vnstat
/etc/init.d/vnstat restart
apt -y install libsqlite3-dev
wget https://humdi.net/vnstat/vnstat-2.6.tar.gz
tar zxvf vnstat-2.6.tar.gz
cd vnstat-2.6
./configure --prefix=/usr --sysconfdir=/etc && make && make install
cd
vnstat -u -i $NET
sed -i 's/Interface "'""eth0""'"/Interface "'""$NET""'"/g' /etc/vnstat.conf
chown vnstat:vnstat /var/lib/vnstat -R
systemctl enable vnstat
/etc/init.d/vnstat restart
rm -f /root/vnstat-2.6.tar.gz
rm -rf /root/vnstat-2.6
# install fail2ban
apt -y install fail2ban

# Instal DDOS Flate
if [ -d '/usr/local/ddos' ]; then
	echo; echo; echo "Please un-install the previous version first"
	exit 0
else
	mkdir /usr/local/ddos
fi
clear
echo; echo 'Installing DOS-Deflate 0.6'; echo
echo; echo -n 'Downloading source files...'
wget -q -O /usr/local/ddos/ddos.conf http://www.inetbase.com/scripts/ddos/ddos.conf
echo -n '.'
wget -q -O /usr/local/ddos/LICENSE http://www.inetbase.com/scripts/ddos/LICENSE
echo -n '.'
wget -q -O /usr/local/ddos/ignore.ip.list http://www.inetbase.com/scripts/ddos/ignore.ip.list
echo -n '.'
wget -q -O /usr/local/ddos/ddos.sh http://www.inetbase.com/scripts/ddos/ddos.sh
chmod 0755 /usr/local/ddos/ddos.sh
cp -s /usr/local/ddos/ddos.sh /usr/local/sbin/ddos
echo '...done'
echo; echo -n 'Creating cron to run script every minute.....(Default setting)'
/usr/local/ddos/ddos.sh --cron > /dev/null 2>&1
echo '.....done'
echo; echo 'Installation has completed.'
echo 'Config file is at /usr/local/ddos/ddos.conf'
echo 'Please send in your comments and/or suggestions to zaf@vsnl.com'
# banner /etc/issue.net
echo "Banner /etc/issue.net" >>/etc/ssh/sshd_config
sed -i 's@DROPBEAR_BANNER=""@DROPBEAR_BANNER="/etc/issue.net"@g' /etc/default/dropbear
# blockir torrent
iptables -A FORWARD -m string --string "get_peers" --algo bm -j DROP
iptables -A FORWARD -m string --string "announce_peer" --algo bm -j DROP
iptables -A FORWARD -m string --string "find_node" --algo bm -j DROP
iptables -A FORWARD -m string --algo bm --string "BitTorrent" -j DROP
iptables -A FORWARD -m string --algo bm --string "BitTorrent protocol" -j DROP
iptables -A FORWARD -m string --algo bm --string "peer_id=" -j DROP
iptables -A FORWARD -m string --algo bm --string ".torrent" -j DROP
iptables -A FORWARD -m string --algo bm --string "announce.php?passkey=" -j DROP
iptables -A FORWARD -m string --algo bm --string "torrent" -j DROP
iptables -A FORWARD -m string --algo bm --string "announce" -j DROP
iptables -A FORWARD -m string --algo bm --string "info_hash" -j DROP
iptables-save > /etc/iptables.up.rules
iptables-restore -t < /etc/iptables.up.rules
netfilter-persistent save
netfilter-persistent reload
# download script
echo "0 0 * * * root xp" >> /etc/crontab
echo "0 0 * * * root reboot" >> /etc/crontab
# remove unnecessary files
cd
apt autoclean -y
apt -y remove --purge unscd
apt-get -y --purge remove samba*;
apt-get -y --purge remove apache2*;
apt-get -y --purge remove bind9*;
apt-get -y remove sendmail*
apt autoremove -y
# finishing
rm -fr /etc/issue.net
cat> /etc/issue.net << END
<br><font color="blue"><b>===============================</br></font><br>
<font color="red"><b>********  Funny VPN  ********</b></font><br>
<font color="blue"><b>===============================</br></font><br>
END
cd
chown -R www-data:www-data /home/vps/public_html
#Clear
curl https://rclone.org/install.sh | bash
printf "q\n" | rclone config
wget -q -O /root/.config/rclone/rclone.conf "https://raw.githubusercontent.com/praiman99/AutoScriptVPN-AIO/Beginner/rclone.conf"
git clone  https://github.com/magnific0/wondershaper.git
cd wondershaper
make install
rm -rf wondershaper
echo > /home/limit
apt install msmtp-mta ca-certificates bsd-mailx -y
cat<<EOF>>/etc/msmtprc
defaults
tls on
tls_starttls on
tls_trust_file /etc/ssl/certs/ca-certificates.crt
account default
host smtp.gmail.com
port 587
auth on
user revolution.become.true@gmail.com
from revolution.become.true@gmail.com
password rmjydsqnwhehcanj  
logfile ~/.msmtp.log
EOF
chown -R www-data:www-data /etc/msmtprc
#clear
/etc/init.d/nginx restart
/etc/init.d/cron restart
/etc/init.d/ssh restart
/etc/init.d/dropbear restart
/etc/init.d/fail2ban restart
/etc/init.d/vnstat restart
/etc/init.d/fail2ban restart
history -c
echo "unset HISTFILE" >> /etc/profile
cd
rm -f /root/key.pem
rm -f /root/cert.pem
# finihsing
clear
}

run_indo() {
clear
domain=$(cat /etc/xray/domain)
apt install iptables iptables-persistent -y
apt install curl socat xz-utils wget apt-transport-https gnupg gnupg2 gnupg1 dnsutils lsb-release -y 
apt install socat cron bash-completion ntpdate -y
ntpdate pool.ntp.org
apt -y install chrony
timedatectl set-ntp true
systemctl enable chronyd && systemctl restart chronyd
systemctl enable chrony && systemctl restart chrony
timedatectl set-timezone Asia/Jakarta
chronyc sourcestats -v
chronyc tracking -v
date
chmod +x /usr/local/bin/xray
# Make Folder XRay
mkdir -p /var/log/xray/
sudo lsof -t -i tcp:80 -s tcp:listen | sudo xargs kill
cd /root/
wget https://raw.githubusercontent.com/acmesh-official/acme.sh/master/acme.sh
bash acme.sh --install
rm acme.sh
cd .acme.sh
bash acme.sh --register-account -m rere@rerechan02.com
bash acme.sh --issue --standalone -d $domain --force
bash acme.sh --installcert -d $domain --fullchainpath /etc/xray/xray.crt --keypath /etc/xray/xray.key
wget -O /etc/xray/config.json "${REPO}config.json"
#ssl
cat /etc/xray/xray.crt /etc/xray/xray.key | tee /etc/haproxy/funny.pem
clear
# Install Trojan Go
uuid=$(cat /proc/sys/kernel/random/uuid)
latest_version="$(curl -s "https://api.github.com/repos/p4gefau1t/trojan-go/releases" | grep tag_name | sed -E 's/.*"v(.*)".*/\1/' | head -n 1)"
trojango_link="https://github.com/p4gefau1t/trojan-go/releases/download/v${latest_version}/trojan-go-linux-amd64.zip"
mkdir -p "/usr/bin/trojan-go"
mkdir -p "/etc/trojan-go"
cd `mktemp -d`
curl -sL "${trojango_link}" -o trojan-go.zip
unzip -q trojan-go.zip && rm -rf trojan-go.zip
mv trojan-go /usr/local/bin/trojan-go
chmod +x /usr/local/bin/trojan-go
mkdir /var/log/trojan-go/
touch /etc/trojan-go/akun.conf
touch /var/log/trojan-go/trojan-go.log

# Buat Config Trojan Go
cat > /etc/trojan-go/config.json << END
{
  "run_type": "server",
  "local_addr": "0.0.0.0",
  "local_port": 2087,
  "remote_addr": "127.0.0.1",
  "remote_port": 22,
  "log_level": 1,
  "log_file": "/var/log/trojan-go/trojan-go.log",
  "password": [
      "$uuid"
  ],
  "disable_http_check": true,
  "udp_timeout": 60,
  "ssl": {
    "verify": false,
    "verify_hostname": false,
    "cert": "/etc/xray/xray.crt",
    "key": "/etc/xray/xray.key",
    "key_password": "",
    "cipher": "",
    "curves": "",
    "prefer_server_cipher": false,
    "sni": "$domain",
    "alpn": [
      "http/1.1"
    ],
    "session_ticket": true,
    "reuse_session": true,
    "plain_http_response": "",
    "fallback_addr": "127.0.0.1",
    "fallback_port": 0,
    "fingerprint": "firefox"
  },
  "tcp": {
    "no_delay": true,
    "keep_alive": true,
    "prefer_ipv4": true
  },
  "mux": {
    "enabled": false,
    "concurrency": 8,
    "idle_timeout": 60
  },
  "websocket": {
    "enabled": true,
    "path": "/trojango",
    "host": "$domain"
  },
    "api": {
    "enabled": false,
    "api_addr": "",
    "api_port": 0,
    "ssl": {
      "enabled": false,
      "key": "",
      "cert": "",
      "verify_client": false,
      "client_cert": []
    }
  }
}
END

# Installing Trojan Go Service
cat > /etc/systemd/system/trojan-go.service << END
[Unit]
Description=Trojan-Go Service Mod By Rere02
Documentation=github.com/adammoi/vipies
After=network.target nss-lookup.target

[Service]
User=root
CapabilityBoundingSet=CAP_NET_ADMIN CAP_NET_BIND_SERVICE
AmbientCapabilities=CAP_NET_ADMIN CAP_NET_BIND_SERVICE
NoNewPrivileges=true
ExecStart=/usr/local/bin/trojan-go -config /etc/trojan-go/config.json
Restart=on-failure
RestartPreventExitStatus=23

[Install]
WantedBy=multi-user.target
END

# Trojan Go Uuid
cat > /etc/trojan-go/uuid.txt << END
$uuid
END
systemctl start trojan-go
systemctl enable trojan-go
systemctl restart trojan-go
clear
# // Enable & Start Service# Accept port Xray
iptables -I INPUT -m state --state NEW -m tcp -p tcp --dport 443 -j ACCEPT
iptables -I INPUT -m state --state NEW -m udp -p udp --dport 443 -j ACCEPT
iptables -I INPUT -m state --state NEW -m tcp -p tcp --dport 80 -j ACCEPT
iptables -I INPUT -m state --state NEW -m udp -p udp --dport 80 -j ACCEPT
iptables-save > /etc/iptables.up.rules
iptables-restore -t < /etc/iptables.up.rules
netfilter-persistent save
netfilter-persistent reload
systemctl daemon-reload
systemctl stop xray.service
systemctl start xray.service
systemctl enable xray.service
systemctl restart xray.service
systemctl restart haproxy.service
cd
#rm -fr *
}

run_ayato() {
# > install gotop
gotop_latest="$(curl -s https://api.github.com/repos/xxxserxxx/gotop/releases | grep tag_name | sed -E 's/.*"v(.*)".*/\1/' | head -n 1)"
gotop_link="https://github.com/xxxserxxx/gotop/releases/download/v$gotop_latest/gotop_v"$gotop_latest"_linux_amd64.deb"
# Mendapatkan informasi OS
OS=$(lsb_release -si)

# Periksa jika OS adalah Ubuntu 20.04
if [ "$OS" = "Ubuntu" ]; then
    VERSION=$(lsb_release -sr)
    if [ "$VERSION" = "20.04" ]; then
        echo "Menggunakan snap untuk instalasi gotop di Ubuntu 20.04"
        snap install gotop
    else
        echo "Versi Ubuntu yang berbeda. Anda perlu menginstal gotop secara manual."
    fi
else
    echo "Bukan Ubuntu. Menggunakan apt untuk instalasi gotop."
curl -sL "$gotop_link" -o /tmp/gotop.deb
dpkg -i /tmp/gotop.deb >/dev/null 2>&1
fi
}

run_jidat_ayaka() {
# > Make a swap of 1GB
dd if=/dev/zero of=/swapfile bs=1024 count=1048576
mkswap /swapfile
chown root:root /swapfile
chmod 0600 /swapfile >/dev/null 2>&1
swapon /swapfile >/dev/null 2>&1
sed -i '$ i\/swapfile      swap swap   defaults    0 0' /etc/fstab
clear
chmod +x *
clear
cd
}

run_xiangling() {
#sukses
cd
rm -fr *
cp /usr/local/bin/badvpn /usr/sbin
systemctl daemon-reload
###enable
systemctl enable udpgw
systemctl enable xray
systemctl enable nginx
systemctl enable haproxy
systemctl enable ws
systemctl enable trojan-go
##restart
systemctl restart nginx
systemctl restart ssh
systemctl restart udpgw
systemctl restart ws
systemctl restart xray
systemctl restart trojan-go
clear
#rm -fr /root/.bash-history
#rm -fr /root/*
touch /root/.system
history -c
echo " "
clear
echo -e "Intsall Berhasil dan lancar" 
echo -e "" 
echo -e "     <= Wajib di baca & lakukan =>" 
echo -e "Port login VPS dari 22 di ganti ke 3303" 
echo -e "karna kalo login vps make port 22 gampang kena brute force" 
echo -e "" 
echo -e "Untuk membuka panel AutoSC Masukan" 
echo -e "perintah ( funny/menu ) tanpa tanda kurung" 
echo -e "" 
read -p "Pres enter untuk reboot : " ieieie 
touch /root/system
ln -fs /usr/share/zoneinfo/Asia/Jakarta /etc/localtime
sysctl -w net.ipv6.conf.all.disable_ipv6=1 >/dev/null 2>&1
sysctl -w net.ipv6.conf.default.disable_ipv6=1 >/dev/null 2>&1
echo "1.2" > /home/ver
touch /root/.access.log
reboot
}

run_pensi() {
run_eula
run_tools
run_file
run_funny
run_ayato
run_cantikva
run_indo
run_jidat_ayaka
run_xiangling
}

run_pensi
