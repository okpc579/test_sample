#!/bin/bash

source variables.sh

bosh -e ${BOSH_Director_Name} update-config --type='cloud' --name='test-cloud-config' ${Sample_Path}/etc/cloud-config.yml -n
bosh -e ${BOSH_Director_Name} config --type='cloud' --name='test-cloud-config'
