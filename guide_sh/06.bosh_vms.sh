#!/bin/bash

source variables.sh

bosh -e ${BOSH_Director_Name} -d paasta vms