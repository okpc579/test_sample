#!/bin/bash

# BOSH VARIABLES
BOSH_Director_Name="bosh-test"			# e.g. micro-bosh
BOSH_Path="~/workspace/paasta-test/deployment/paasta-deployment/bosh"				# e.g. ~/workspace/paasta-5.0/deployment/paasta-deployment/bosh
BOSH_IP="10.0.1.10"									# e.g. 10.0.1.6
IaaS="aws"									# e.g. aws/azure/gcp/openstack/vsphere
Stemcell="315.64"
Cloud_config="~/workspace/paasta-test/deployment/paasta-deployment/cloud-config"		# e.g. ~/workspace/paasta-5.0/deployment/paasta-deployment/cloud-config

# PaaS-TA VARIABLES
PaaSTA_Domain="3.34.248.251.nip.io"					# e.g. 10.244.0.34.nip.io
PaaSTA_Admin_ID="admin"				# e.g. admin
PaaSTA_Admin_Password="admin"	# e.g. admin
PaaSTA_Create_User_ID="testuser"	# e.g. test-user
PaaSTA_Create_User_Password="testpw"	# e.g. test-pw
Create_Org_Name="test-org"					# e.g. test-org
Create_Space_Name="test-space"				# e.g. test-space
Sample_Path="~/test_sample"					# e.g. ~/test_sample



