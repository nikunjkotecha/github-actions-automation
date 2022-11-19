#!/usr/bin/env bash

set -ev

cd ${GITHUB_WORKSPACE}

$BLT_DIR/bin/blt tests:security-drupal --no-interaction --ansi -vvv
$BLT_DIR/bin/blt tests:security-composer --no-interaction --ansi -vvv


$BLT_DIR/bin/blt tests:behat:run -D tests.run-server=true --no-interaction --ansi -vvv

$BLT_DIR/bin/blt tests:pa11y:run -D tests.run-server=true --no-interaction --ansi -vvv

set +v
