#!/bin/bash

source variables.sh

cf login -a https://api.${PaaSTA_Domain} --skip-ssl-validation -u ${PaaSTA_Admin_ID} -p ${PaaSTA_Admin_Password} -o ${Create_Org_Name} -s ${Create_Space_Name}
cf push -f ${Sample_Path}/etc/bookstore-service-broker/deploy/cloudfoundry/manifest.yml
cf create-service-broker bookstore admin supersecret https://bookstore-service-broker.${PaaSTA_Domain}
cf service-brokers
