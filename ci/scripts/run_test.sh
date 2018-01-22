#!/usr/bin/env bash

set -e -u -x

SCRIPT_DIR=`dirname "$0"`
SCRIPT_NAME=`basename "$0"`
SSH_OPTS=-oStrictHostKeyChecking=no


echo "Testing $1"
echo "Testing $SCRIPT_DIR"
echo "Testing SCRIPT_NAME"
