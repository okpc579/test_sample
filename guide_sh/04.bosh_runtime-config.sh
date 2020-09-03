#!/bin/bash

source variables.sh

bosh -e ${BOSH_Director_Name} update-config --type='runtime' --name='test-runtime-config' ${Sample_Path}/etc/dns.yml -n
bosh -e ${BOSH_Director_Name} runtime-config --name='test-runtime-config'
