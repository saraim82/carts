#!/bin/bash

set -eu

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
export fly_target=${fly_target:-carts}
echo "Concourse API target ${fly_target}"
echo "SVC $(basename $DIR)"

pushd $DIR
  fly -t ${fly_target} set-pipeline -p carts -c pipeline.yml -n 
  fly -t ${fly_target} unpause-pipeline -p carts
  #fly -t ${fly_target} trigger-job -w -j carts/job-build
popd
