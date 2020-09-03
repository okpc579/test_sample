#!/bin/bash

source variables.sh

export BOSH_CA_CERT=$(bosh int ${BOSH_Path}/${IaaS}/creds.yml --path /director_ssl/ca)
export BOSH_CLIENT=admin
export BOSH_CLIENT_SECRET=$(bosh int ${BOSH_Path}/${IaaS}/creds.yml --path /admin_password)
export BOSH_ENVIRONMENT=${BOSH_Director_Name}
bosh env