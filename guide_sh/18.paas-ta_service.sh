#!/bin/bash

source variables.sh

cf enable-service-access bookstore
cf login -a https://api.${PaaS-TA_Domain} --skip-ssl-validation -u ${PaaS-TA_Create_User_ID} -p ${PaaS-TA_Create_User_Password} -o ${Create_Org_Name} -s ${Create_Space_Name}
cf marketplace
cf create-service bookstore standard my-bookstore
cf services