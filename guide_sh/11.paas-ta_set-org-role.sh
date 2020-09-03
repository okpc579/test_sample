#!/bin/bash

source variables.sh

cf login -a https://api.${PaaSTA_Domain} --skip-ssl-validation -u ${PaaSTA_Admin_ID} -p ${PaaSTA_Admin_Password} -o system
cf create-org ${Create_Org_Name}
cf set-org-role ${PaaSTA_Create_User_ID} ${Create_Org_Name} OrgAuditor
cf login -a https://api.${PaaSTA_Domain} --skip-ssl-validation -u ${PaaSTA_Create_User_ID} -p ${PaaSTA_Create_User_Password} -o ${Create_Org_Name}
cf create-space ${Create_Space_Name}

cf login -a https://api.${PaaSTA_Domain} --skip-ssl-validation -u ${PaaSTA_Admin_ID} -p ${PaaSTA_Admin_Password} -o system
cf set-org-role ${PaaSTA_Create_User_ID} ${Create_Org_Name} OrgManager
cf login -a https://api.${PaaSTA_Domain} --skip-ssl-validation -u ${PaaSTA_Create_User_ID} -p ${PaaSTA_Create_User_Password} -o ${Create_Org_Name}
cf create-space ${Create_Space_Name}
cf target -s ${Create_Space_Name}