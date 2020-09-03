#!/bin/bash

source variables.sh

bosh -e ${BOSH_Director_Name} update-runtime-config ${BOSH_Path}/runtime-configs/dns.yml
bosh -e ${BOSH_Director_Name} runtime-config
