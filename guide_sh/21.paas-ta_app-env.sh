#!/bin/bash

source variables.sh

cf env egov-3.9-sample 
cf set-env egov-3.9-sample JBP_CONFIG_COMPONENTS '[containers: Jboss]'
cf env egov-3.9-sample 