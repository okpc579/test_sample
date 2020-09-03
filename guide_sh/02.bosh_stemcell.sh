#!/bin/bash

source variables.sh

if [[ ${IaaS} = 'aws' ]]; then
	bosh -e ${BOSH_Director_Name} upload-stemcell https://s3.amazonaws.com/bosh-core-stemcells/315.64/bosh-stemcell-315.64-aws-xen-hvm-ubuntu-xenial-go_agent.tgz -n
elif [[ ${IaaS} = 'azure' ]]; then
	bosh -e ${BOSH_Director_Name} upload-stemcell https://bosh-core-stemcells.s3-accelerate.amazonaws.com/315.64/bosh-stemcell-315.64-azure-hyperv-ubuntu-xenial-go_agent.tgz -n
elif [[ ${IaaS} = 'gcp' ]]; then
	bosh -e ${BOSH_Director_Name} upload-stemcell https://bosh-core-stemcells.s3-accelerate.amazonaws.com/315.64/bosh-stemcell-315.64-google-kvm-ubuntu-xenial-go_agent.tgz -n
elif [[ ${IaaS} = 'openstack' ]]; then
	bosh -e ${BOSH_Director_Name} upload-stemcell https://s3.amazonaws.com/bosh-core-stemcells/315.64/bosh-stemcell-315.64-openstack-kvm-ubuntu-xenial-go_agent.tgz -n
else
	bosh -e ${BOSH_Director_Name} upload-stemcell upload-stemcell https://s3.amazonaws.com/bosh-core-stemcells/315.64/bosh-stemcell-315.64-vsphere-esxi-ubuntu-xenial-go_agent.tgz -n
fi

bosh -e ${BOSH_Director_Name} stemcells