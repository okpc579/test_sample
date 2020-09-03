#!/bin/bash

# BOSH VARIABLES
BOSH_Director_Name="<BOSH_Director_Name>"			# e.g. micro-bosh
BOSH_Path="<BOSH_Deployment_File_Path>"				# e.g. ~/workspace/paasta-5.0/deployment/paasta-deployment/bosh
BOSH_IP="<BOSH_IP>"									# e.g. 10.0.1.6
IaaS="<IaaS_Name>"									# e.g. aws/azure/gcp/openstack/vsphere
Stemcell="<Stemcell_version>"						# e.g. 315.64
Cloud-config_Path="<Cloud-config_File_Path>"		# e.g. ~/workspace/paasta-5.0/deployment/paasta-deployment/cloud-config

# PaaS-TA VARIABLES
PaaS-TA_Domain="<PaaS-TA_domain>"					# e.g. 10.244.0.34.nip.io
PaaS-TA_Admin_ID="<PaaS-TA_Admin_ID>"				# e.g. admin
PaaS-TA_Admin_Password="<PaaS-TA_Admin_Password>"	# e.g. admin
PaaS-TA_Create_User_ID="<PaaS-TA_Create_User_ID>"	# e.g. test-user
PaaS-TA_Create_User_Password="<PaaS-TA_Create_User_Password>"	# e.g. test-pw
Create_Org_Name="<Create_Org_Name>"					# e.g. test-org
Create_Space_Name="<Create_Space_Name>"				# e.g. test-space
Sample_Path="<Sample_File_Path>"					# e.g. ~/test_sample



