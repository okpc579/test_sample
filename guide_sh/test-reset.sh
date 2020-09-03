#!/bin/bash

source variables.sh

cf login -a https://api.${PaaSTA_Domain} --skip-ssl-validation -u ${PaaSTA_Admin_ID} -p ${PaaSTA_Admin_Password} -o ${Create_Org_Name} -s ${Create_Space_Name}

cf delete -f staticfile-sample
cf delete -f java-sample
cf delete -f ruby-sample
cf delete -f dotnet-core-sample
cf delete -f nodejs-sample
cf delete -f go-sample
cf delete -f python-sample
cf delete -f php-sample
cf delete -f nginx-sample
cf delete -f binary-sample
cf delete -f egov-3.9-sample
cf delete -f bookstore-service-broker

cf delete-space-quota -f test-space-quota
cf delete-buildpack -f egov_39 
cf delete-service -f my-bookstore
cf delete-service-broker -f bookstore
cf delete-space -f ${Create_Space_Name} -o ${Create_Space_Name}
cf delete-org -f ${Create_Space_Name}
cf delete-user -f ${PaaSTA_Create_User_ID}

bosh -d ${BOSH_Director_Name} delete-config --type='cloud' --name='test-cloud-config' -f
bosh -d ${BOSH_Director_Name} delete-config --type='runtime' --name='test-runtime-config' -f

