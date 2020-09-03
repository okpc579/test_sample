#!/bin/bash

source variables.sh

bosh -e ${BOSH_Director_Name} upload-release https://bosh.io/d/github.com/cloudfoundry/bosh-dns-release?v=1.12.0 -n
bosh -e ${BOSH_Director_Name} releases