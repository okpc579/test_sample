#!/bin/bash

source variables.sh

cf login -a https://api.${PaaS-TA_Domain} --skip-ssl-validation -u ${PaaS-TA_Admin_ID} -p ${PaaS-TA_Admin_Paasword} -o system
cf create-user ${PaaS-TA_Create_User_ID} ${PaaS-TA_Create_User_Password}
cf login -a https://api.${PaaS-TA_Domain} --skip-ssl-validation -u ${PaaS-TA_Create_User_ID} -p ${PaaS-TA_Create_User_Password}