#!/usr/bin/env bash

if [ -d flats_current ]; then
  rm -rf flats_current
fi

mkdir flats_current

./node_modules/.bin/truffle-flattener contracts/v1/FiatTokenProxy.sol > flats_current/FiatTokenProxy_flat.sol
./node_modules/.bin/truffle-flattener contracts/v1/FiatTokenV1.sol > flats_current/FiatTokenV1_flat.sol

./node_modules/.bin/truffle-flattener contracts/v2/FiatTokenV2.sol > flats_current/FiatTokenV2_flat.sol
./node_modules/.bin/truffle-flattener contracts/v2/upgrader/V2Upgrader.sol > flats_current/V2Upgrader_flat.sol
