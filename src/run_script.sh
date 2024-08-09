#!/usr/bin/env bash
# ------------------
# TERRAFORM-MAKEFILE
# v0.14.11
# ------------------
#
# This Makefile is maintained on Github.com.
# Please contribute upstream any changes by opening pull requests:
# https://github.com/paulRbr/terraform-makefile/pull/new/master
# Thanks! - Paul(rbr)
#

set -e

echo "Running script"

provider=$1
env=$2

if [ -z "${provider}" ]; then
    echo "'provider' variable must be set"
    exit
fi

if [ -z "${env}" ]; then
    echo "'env' variable must be set"
    exit
fi

echo "provider: ${provider}" and "env: ${env}"
echo "Script completed"