#!/bin/bash

source variables.sh

cf unset-space-role ${PaaSTA_Create_User_ID} ${Create_Org_Name} ${Create_Space_Name} SpaceDeveloper
cf push -f ${Sample_Path}/1.staticfile_buildpack_sample/manifest.yml
cf set-space-role ${PaaSTA_Create_User_ID} ${Create_Org_Name} ${Create_Space_Name} SpaceDeveloper
cf push -f ${Sample_Path}/1.staticfile_buildpack_sample/manifest.yml