#!/bin/bash

source variables.sh

cf create-space-quota test-space-quota -m 1G -i 1G -r 10 -s 10
cf set-space-quota space test-space-quota
cf push -f ${Sample_Path}/2.java_buildpack_sample/manifest.yml -m 2G