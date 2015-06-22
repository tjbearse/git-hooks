#!/usr/bin/env bash
#
#
# git hook template
#


function runTests () {
	# add tests here
	# return 1 for failure, 0 for success
	echo "running tests"
	ret=0
	return $ret
}

# stash all non-staged changes
git stash -u --keep-index -q

runTests
retVal=$?

# unstash non-staged changes
git reset --hard -q
git stash pop --quiet --index

exit $retVal
