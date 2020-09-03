#!/bin/bash

source variables.sh

cf login -a https://api.${PaaS-TA_Domain} --skip-ssl-validation -u ${PaaS-TA_Admin_ID} -p ${PaaS-TA_Admin_Paasword} -o system
cf create-org ${Create_Org_Name}
cf set-org-role ${PaaS-TA_Create_User_ID} ${Create_Org_Name} OrgAuditor
cf login -a https://api.${PaaS-TA_Domain} --skip-ssl-validation -u ${PaaS-TA_Create_User_ID} -p ${PaaS-TA_Create_User_Password} -o ${Create_Org_Name}
cf create-space ${Create_Space_Name}

cf login -a https://api.${PaaS-TA_Domain} --skip-ssl-validation -u ${PaaS-TA_Admin_ID} -p ${PaaS-TA_Admin_Paasword} -o system
cf set-org-role ${PaaS-TA_Create_User_ID} ${Create_Org_Name} OrgManager
cf login -a https://api.${PaaS-TA_Domain} --skip-ssl-validation -u ${PaaS-TA_Create_User_ID} -p ${PaaS-TA_Create_User_Password} -o ${Create_Org_Name}
cf create-space ${Create_Space_Name}
cf target -s ${Create_Space_Name}