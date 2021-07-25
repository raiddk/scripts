#deploy dhcpd docker container for dhcpd for arm
sudo docker run -d -it --restart always --init --net host -v "$(pwd)/data":/data kosdk/dhcpd eth0
