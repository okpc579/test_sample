#!/bin/bash

source variables.sh

cf login -a https://api.${PaaSTA_Domain} --skip-ssl-validation -u ${PaaSTA_Admin_ID} -p ${PaaS-TA_Admin_Paasword} -o system