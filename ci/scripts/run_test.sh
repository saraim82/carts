#!/bin/bash

set -e -u -x

SCRIPT_DIR=`dirname "$0"`
SCRIPT_NAME=`basename "$0"`
SSH_OPTS=-oStrictHostKeyChecking=no


echo "Testing $1"
CODE_DIR=$(cd $SCRIPT_DIR/..; pwd)
cp $PWD/resource-carts/test/$1 $PWD/resource-carts/ci/scripts/
cp -R $PWD/resource-carts/test/util $PWD/resource-carts/ci/scripts/
echo "$@"
export PYTHONPATH=\$PYTHONPATH:\$PWD/scripts
python ci/scripts/$@