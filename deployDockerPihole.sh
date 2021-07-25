#deploy docker container for pihole
#supports all arch

sudo docker run -d -p 53:53/udp -p 53:53/tcp -p 80:80 -p 443:443 --restart=unless-stopped -v ~/data/etc-dnsmasq.d:/etc/dnsmasq.d -v ~/data/etc-pihole:/etc/pihole -e ServerIP=0.0.0.0 -e TZ=US -e WEBPASSWORD=password -e DNS1=1.1.1.1 -e DNS2=9.9.9.9 pihole/pihole

