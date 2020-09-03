#!/bin/bash

source variables.sh

bosh int ${BOSH_Path}/${IaaS}/creds.yml --path /jumpbox_ssh/private_key > jumpbox.key
chmod 600 ${BOSH_Path}/jumpbox.key
ssh jumpbox@${BOSH_Url} -i ${BOSH_Path}/jumpbox.key