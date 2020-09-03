#!/bin/bash

source variables.sh

cf login -a https://api.${PaaS-TA_Domain} --skip-ssl-validation -u ${PaaS-TA_Admin_ID} -p ${PaaS-TA_Admin_Paasword} -o ${Create_Org_Name} -s ${Create_Space_Name}
cf push -f ${Sample_Path}/etc/bookstore_service_broker/deploy/cloudfoundry/manifest.yml
cf create-service-broker bookstore admin supersecret https://bookstore-service-broker.${PaaS-TA_Domain}
cf service-brokers
