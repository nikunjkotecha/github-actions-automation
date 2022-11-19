#!/usr/bin/env bash

set -ev

cd ${GITHUB_WORKSPACE}

blt tests:pa11y:run -D tests.run-server=true --no-interaction --ansi -vvv

set +v
