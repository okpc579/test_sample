#!/bin/bash

source variables.sh

cf login -a https://api.${PaaSTA_Domain} --skip-ssl-validation -u ${PaaSTA_Admin_ID} -p ${PaaSTA_Admin_Password} -o system
cf create-user ${PaaSTA_Create_User_ID} ${PaaSTA_Create_User_Password}
cf login -a https://api.${PaaSTA_Domain} --skip-ssl-validation -u ${PaaSTA_Create_User_ID} -p ${PaaSTA_Create_User_Password}