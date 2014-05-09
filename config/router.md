####################################
# my kickass asus rt-n56u
# running http://code.google.com/p/rt-n56u/
####################################

# /etc/hosts
127.0.0.1 localhost.localdomain localhost
192.168.1.1 my.router
192.168.1.1 media-net
192.168.1.4 acer
192.168.1.5 pi
192.168.1.2 PRIME
192.168.1.20 htc
192.168.1.11 ipad

# /etc/resolv.conf
nameserver 75.75.75.75
nameserver 75.75.76.76
# using opendns.
nameserver 208.67.220.222
nameserver 208.67.222.220

# /etc/smb.conf
[global]
workgroup = HOMEGROUP
netbios name = media-net
server string = media-net

# /etc/dnsmasq.conf
domain=ra.net

```sh
ssh admin@192.168.1.1
# using opendns so comcast can't track. google and the nsa still track because we are not free
echo 'nameserver 208.67.220.222' >> /etc/resolv.conf
echo 'nameserver 208.67.222.220' >> /etc/resolv.conf
echo '192.168.1.1 media-net' >> hosts
echo '192.168.1.3 m' >> hosts
echo '192.168.1.2 hp' >> hosts
echo '192.168.1.10 iphone' >> hosts
echo '192.168.1.11 ipad' >> hosts
echo '192.168.1.5 pi' >> hosts
echo 'domain=ra.net' >> /etc/dnsmasq.conf
echo 'workgroup = HOMEGROUP' >> /etc/smb.conf
echo 'netbios name = media-net' >> /etc/smb.conf
echo 'server string = media-net' >> /etc/smb.conf
exit
```
