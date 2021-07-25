#!/bin/sh

#  deploySambaContainer.sh
#  https://hub.docker.com/r/dperson/samba
#
#  Created by David on 4/21/20.
# 
# Deploys samba docker arm container.  
# Add comments regarding user permissions

sudo docker run -it -e TZ=America/Los_Angeles  --name samba -p 139:139 -p 445:445 -d dperson/samba -p \
    -u "user;password" \
    -u "backupuser;backup" \
    -s "data;/NASDrive;yes;no;no;user,admin;none" \
    -s "backup;/BackupDrive;yes;no;no;backupuser;none"


