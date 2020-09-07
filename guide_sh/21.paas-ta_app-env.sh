#!/bin/bash

source variables.sh

cf env PaaS-TA-egov-3.9 
cf set-env PaaS-TA-egov-3.9 JBP_CONFIG_COMPONENTS '[containers: Jboss]'
cf env PaaS-TA-egov-3.9 