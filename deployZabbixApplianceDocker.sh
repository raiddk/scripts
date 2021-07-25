#!/bin/sh

#  deployZabbixApplianceDocker.sh
#  Uses the same arguments as the official docker appliance.
#
#  Created by David on 5/13/20.
#  Deploys the zabbix container for all arch except ARM.i
#  
docker run --name zabbix-appliance -p 8080:80 -p 10051:10051 -d zabbixmultiarch/zabbix-zabbix-appliance


