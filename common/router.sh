#!/bin/bash
####################################
# set up for my kickass asus rt-n56u to assign fixed ips
# m.ra.net - (m)obile
# prime.ra.net - quad proc hp media montster
# iphone.ra.net - iphone
# ipad.ra.net - ipad
# pi.ra.net - raspberry pi
####################################
# 
ssh admin@192.168.1.1
# using opendns. i hate being tracked.
echo 'nameserver 208.67.220.222' >> /etc/resolv.conf
echo 'nameserver 208.67.222.220' >> /etc/resolv.conf
echo '192.168.1.1 media-net' >> hosts
echo '192.168.1.4 acer' >> hosts
echo '192.168.1.2 hp' >> hosts
echo '192.168.1.10 iphone' >> hosts
echo '192.168.1.11 ipad' >> hosts
echo '192.168.1.5 pi' >> hosts
echo 'domain=ra.net' >> /etc/dnsmasq.conf
echo 'workgroup = WORKGROUP' >> /etc/smb.conf
echo 'netbios name = media-net' >> /etc/smb.conf
echo 'server string = media-net' >> /etc/smb.conf
exit