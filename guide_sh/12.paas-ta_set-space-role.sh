#!/bin/bash

source variables.sh

convertsecs() {
 ((h=${1}/3600))
 ((m=(${1}%3600)/60))
 ((s=${1}%60))
 printf "spend time : %02d:%02d:%02d\n" $h $m $s
}

echo -e "start time : \c"
date
FIRST_DATE=`date "+%s"`


cf unset-space-role ${PaaSTA_Create_User_ID} ${Create_Org_Name} ${Create_Space_Name} SpaceDeveloper
cf push -f ${Sample_Path}/1.staticfile_buildpack_sample/manifest.yml
cf set-space-role ${PaaSTA_Create_User_ID} ${Create_Org_Name} ${Create_Space_Name} SpaceDeveloper
cf push -f ${Sample_Path}/1.staticfile_buildpack_sample/manifest.yml

echo -e "end time : \c"
date
SECOND_DATE=`date "+%s"`

INTERVAL=`echo "(${SECOND_DATE} - ${FIRST_DATE} )  " | bc`
echo $(convertsecs $INTERVAL)
