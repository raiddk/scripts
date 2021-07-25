#!/bin/sh
if cmp -s /var/dhcpd/etc/dhcpd.conf /var/dhcpd/etc/dhcpd.override
then
    echo "dhcpd.conf is correct"
else
    sh /usr/local/etc/rc.d/dhcpdoverride.sh
fi
#exit condition 0, files are same; condition 1, files are different
#seems if 0 is true and runs then statement
#need to have fi at the end of a if else statement
#
#  Used in pfsense box when manually modifying the dhcpd daemon.  
#
#  compareFileDHCPDConf.sh
#
#  Created by David on 3/28/20.
#  

