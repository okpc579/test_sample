#!/bin/bash

source variables.sh

cf login -a https://api.${PaaSTA_Domain} --skip-ssl-validation -u ${PaaSTA_Admin_ID} -p ${PaaSTA_Admin_Password} -o ${Create_Org_Name} -s ${Create_Space_Name}
cf create-security-group test-security-group ${Sample_Path}/etc/rule.json
cf security-groups
cf bind-running-security-group test-security-group
cf restart java-sample
cf ssh java-sample
