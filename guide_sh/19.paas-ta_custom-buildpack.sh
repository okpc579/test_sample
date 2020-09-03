#!/bin/bash

source variables.sh

cf login -a https://api.${PaaSTA_Domain} --skip-ssl-validation -u ${PaaSTA_Admin_ID} -p ${PaaS-TA_Admin_Paasword} -o ${Create_Org_Name} -s ${Create_Space_Name}
cf create-buildpack egov_39 ${Sample_Path}/etc/egov-buildpack-3.9.zip 12
cf buildpacks