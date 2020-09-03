#!/bin/bash

source variables.sh

bosh -e ${BOSH_Director_Name} update-runtime-config ${BOSH_Path}/runtime-config/dns.yml
bosh -e ${BOSH_Director_Name} runtime-config