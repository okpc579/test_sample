#!/bin/bash

source variables.sh

APP_GUID=$(cf app java-sample --guid)
SSH_CODE=$(cf ssh-code)
scp -P 2222 -o User=cf:${APP_GUID}/0 ${Sample_Path}/etc/header-right.png ssh.${PaaS-TA_Domain}:/home/vcap/app/WEB-INF/classes/static/images