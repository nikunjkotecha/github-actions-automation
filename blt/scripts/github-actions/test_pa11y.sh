#!/usr/bin/env bash

set -ev

cd ${GITHUB_WORKSPACE}

blt frontend:setup --no-interaction --ansi -vvv
blt tests:pa11y:init --no-interaction --ansi -vvv
blt tests:pa11y:run -D tests.run-server=true --no-interaction --ansi -vvv

set +v
