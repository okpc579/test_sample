#!/bin/bash

source variables.sh

bosh -e ${BOSH_Director_Name} update-cloud-config ${Cloud_config_Path}/${IaaS}-cloud-config.yml
bosh -e ${BOSH_Director_Name} cloud-config