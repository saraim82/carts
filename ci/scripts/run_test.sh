#!/bin/bash

set -e -u -x

SCRIPT_DIR=`dirname "$0"`
SCRIPT_NAME=`basename "$0"`
SSH_OPTS=-oStrictHostKeyChecking=no


echo "Testing $1"
CODE_DIR=$(cd $SCRIPT_DIR/../..; pwd)
cp $PWD/test/$1 $PWD/ci/scripts/
cp -R $PWD/test/util $PWD/ci/scripts/
echo "$@"
export PYTHONPATH=\$PYTHONPATH:\$PWD/scripts
python ci/scripts/$@