#!/bin/sh

RED='\033[0;31m'
NO_COLOR='\033[0m'

function red() {
  local text=${1}
  printf "${RED}${text}${NO_COLOR}\n"
}

# This command runs "rubocop -A" on ruby files that have changed from master
changed=`git diff --name-only origin/master | xargs ls -1 2>/dev/null | grep '\.rb$' | grep -v 'vendor'`
echo $changed | xargs bundle exec rubocop --fail-level A --force-exclusion -A
rubocop_code=$?

if [[ $rubocop_code -ne 0 ]]
then
  red "\n\nRuboCop exited with an error code: $rubocop_code."
  red "Please review and add necessary changes before committing."
  exit $rubocop_code
else
  exit 0
fi
