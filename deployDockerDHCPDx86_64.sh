#deploy dhcpd x86/64 docker container
#
#end of command is the interface
#
sudo docker run -d -it --restart always --init --net host -v "$(pwd)/data":/data networkboot/dhcpd enp8s0
