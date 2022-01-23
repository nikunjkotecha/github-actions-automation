#!/usr/bin/env bash

set -ev

# Workaround to ensure settings are always fresh.
rm -rf ${GITHUB_WORKSPACE}/docroot/sites/default/settings/local.settings.php

$BLT_DIR/bin/blt setup --define drush.alias='${drush.aliases.ci}' --environment=ci --no-interaction --ansi --verbose

set +v
