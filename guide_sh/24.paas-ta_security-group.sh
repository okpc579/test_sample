#!/bin/bash

source variables.sh

cf login -a https://api.${PaaS-TA_Domain} --skip-ssl-validation -u ${PaaS-TA_Admin_ID} -p ${PaaS-TA_Admin_Paasword} -o ${Create_Org_Name} -s ${Create_Space_Name}
cf create-security-group test-security-group ${Sample_Path}/rule.json
cf security-groups
cf bind-running-security-group test-security-group
cf restart java-sample
cf ssh java-sample