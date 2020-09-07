#!/bin/bash

source variables.sh

cf create-space-quota ${Create_Space_Quota} -m 1G -i 1G -r 10 -s 10
cf set-space-quota ${Create_Space_Name} ${Create_Space_Quota}
cf push -f ${Sample_Path}/2.java_buildpack_sample/manifest.yml -m 2G
cf unset-space-quota ${Create_Space_Name} ${Create_Space_Quota}
cf push -f ${Sample_Path}/2.java_buildpack_sample/manifest.yml -m 2G
