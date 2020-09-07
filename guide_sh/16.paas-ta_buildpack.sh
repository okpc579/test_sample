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

cf login -a https://api.${PaaSTA_Domain} --skip-ssl-validation -u ${PaaSTA_Create_User_ID} -p ${PaaSTA_Create_User_Password} -o ${Create_Org_Name} -s ${Create_Space_Name}
cf push -f ${Sample_Path}/2.java_buildpack_sample/manifest.yml 
cf push -f ${Sample_Path}/3.ruby_buildpack_sample/manifest.yml -p ${Sample_Path}/3.ruby_buildpack_sample
cf push -f ${Sample_Path}/4.dotnet_core_buildpack_sample/manifest.yml -p ${Sample_Path}/4.dotnet_core_buildpack_sample
cf push -f ${Sample_Path}/5.nodejs_buildpack_sample/manifest.yml -p ${Sample_Path}/5.nodejs_buildpack_sample
cf push -f ${Sample_Path}/6.go_buildpack_sample/manifest.yml -p ${Sample_Path}/6.go_buildpack_sample
cf push -f ${Sample_Path}/7.python_buldpack_sample/manifest.yml -p ${Sample_Path}/7.python_buldpack_sample
cf push -f ${Sample_Path}/8.php_buldpack_sample/manifest.yml -p ${Sample_Path}/8.php_buldpack_sample
cf push -f ${Sample_Path}/9.nginx_buldpack_sample/manifest.yml -p ${Sample_Path}/9.nginx_buldpack_sample
cf push -f ${Sample_Path}/10.binary_buldpack_sample/manifest.yml -p ${Sample_Path}/10.binary_buldpack_sample/binary
cf push -f ${Sample_Path}/11.egov_buldpack_sample/manifest.yml
cf apps

echo -e "end time : \c"
date
SECOND_DATE=`date "+%s"`

INTERVAL=`echo "(${SECOND_DATE} - ${FIRST_DATE} )  " | bc`
echo $(convertsecs $INTERVAL)

