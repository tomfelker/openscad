#!/bin/bash

# This script supports the travis-ci / coverity integration. As the
# cov-build tool does not report a build failure in a way that travis
# signals a failure, this is searching the log for the success info.
#
COVERITY_LOG=/home/travis/build/openscad/openscad/cov-int/build-log.txt

tail "$COVERITY_LOG"
grep "The cov-build utility completed successfully" "$COVERITY_LOG"

