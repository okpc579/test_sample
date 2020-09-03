#!/bin/bash

source variables.sh

export CREDHUB_CLIENT=credhub-admin
export CREDHUB_SECRET=$(bosh int --path /credhub_admin_client_secret ${BOSH_Path}/${IaaS}/creds.yml)
export CREDHUB_CA_CERT=$(bosh int --path /credhub_tls/ca ${BOSH_Path}/${IaaS}/creds.yml)
credhub login -s https://${BOSH_Url}:8844 --skip-tls-validation
credhub find