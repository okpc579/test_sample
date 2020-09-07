#!/bin/bash

source variables.sh

cf enable-service-access ${Create_Service_Broker}
cf login -a https://api.${PaaSTA_Domain} --skip-ssl-validation -u ${PaaSTA_Create_User_ID} -p ${PaaSTA_Create_User_Password} -o ${Create_Org_Name} -s ${Create_Space_Name}
cf marketplace
cf create-service ${Create_Service_Broker} standard ${Create_Sevice}
cf services