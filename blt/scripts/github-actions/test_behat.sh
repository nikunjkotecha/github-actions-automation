#!/usr/bin/env bash

set -ev

cd ${GITHUB_WORKSPACE}

blt tests:behat:init --environment=ci
blt tests:behat:run -D tests.run-server=true --environment=ci --no-interaction --ansi -vvv

set +v
