#!/usr/bin/env bash

set -ev

blt setup --define drush.alias='${drush.aliases.ci}' --environment=ci --no-interaction --ansi --verbose

cd "$GITHUB_WORKSPACE/docroot"
drush pm:enable clientside_validation_jquery

set +v
