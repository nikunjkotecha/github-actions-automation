#!/usr/bin/env bash

set -ev

cd ${GITHUB_WORKSPACE}

blt tests:behat:init
blt tests:behat:run --no-interaction --ansi -vvv

set +v
