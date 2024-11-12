# hostip=$(cat /etc/resolv.conf | grep -oP '(?<=nameserver\ ).*')
hostip=192.168.169.1
proxy=${hostip}:7890
export https_proxy=http://${proxy} http_proxy=http://${proxy}
git config --global http.proxy http://${proxy}
git config --global https.proxy http://${proxy}
