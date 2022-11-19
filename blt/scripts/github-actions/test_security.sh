#!/usr/bin/env bash

set -ev

cd ${GITHUB_WORKSPACE}

blt tests:security-drupal --no-interaction --ansi -vvv
blt tests:security-composer --no-interaction --ansi -vvv

set +v
