#!/usr/bin/env bash

set -ev

cd ${GITHUB_WORKSPACE}

$BLT_DIR/bin/blt validate:composer --no-interaction --ansi -vvv
$BLT_DIR/bin/blt validate:php --no-interaction --ansi -vvv
$BLT_DIR/bin/blt validate:twig --no-interaction --ansi -vvv
$BLT_DIR/bin/blt validate:yaml --no-interaction --ansi -vvv
$BLT_DIR/bin/blt frontend:test --no-interaction --ansi -vvv

set +v
