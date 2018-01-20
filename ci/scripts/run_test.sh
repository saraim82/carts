#!/usr/bin/env bash

set -e -u -x


apt-get update && apt-get install -y sudo && rm -rf /var/lib/apt/lists/*

cd resource-carts
./test/test.sh unit.py