#!/usr/bin/env bash

set -ev

cd ${GITHUB_WORKSPACE}

blt frontend:setup --no-interaction --ansi -vvv
blt tests:pa11y:init --environment=ci --no-interaction --ansi -vvv
blt tests:pa11y:run --environment=ci -D tests.run-server=true --no-interaction --ansi -vvv

set +v
