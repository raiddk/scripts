#!/bin/sh

#  deployDockerAPCUPSD.sh
#  
#
#  Created by David on 5/12/20.
#
# For the ARM version of APCUPSD.

sudo docker run -d --restart=unless-stopped -v ~/data/apcupsd-docker:/tmp/apcupsd-docker -v ~/data/apcupsd-docker/:/etc/apcupsd/ -v ~/data/apcupsd-docker/doshutdown:/etc/apcupsd/doshutdown gersilex/apcupsd

