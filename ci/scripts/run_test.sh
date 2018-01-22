#!/bin/bash

set -e -u -x

SCRIPT_DIR=`dirname "$0"`
SCRIPT_NAME=`basename "$0"`

echo "Testing $1"
CODE_DIR=$(cd $SCRIPT_DIR/../..; pwd)
cp $CODE_DIR/test/$1 $CODE_DIR/ci/scripts/
cp -R $CODE_DIR/test/util $CODE_DIR/ci/scripts/
echo "$@"
export PYTHONPATH=\$PYTHONPATH:\$CODE_DIR/scripts
python $CODE_DIR/scripts/$@