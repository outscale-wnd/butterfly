#!/bin/sh

# Butterfly root
BUTTERFLY_ROOT=$1
BUTTERFLY_BUILD_ROOT=.

# Test Butterfly build root
if [ ! -f $BUTTERFLY_BUILD_ROOT/CMakeCache.txt ]; then
    echo "Please run script from the build directory"
    exit 1
fi

# Test Butterfly root
if [ ! -d $BUTTERFLY_ROOT/api ]; then
    echo "Please set butterfly's source root as parameter"
    exit 1
fi

$BUTTERFLY_ROOT/tests/scenario_0/test.sh $BUTTERFLY_ROOT $BUTTERFLY_BUILD_ROOT
$BUTTERFLY_ROOT/tests/scenario_1/test.sh $BUTTERFLY_ROOT $BUTTERFLY_BUILD_ROOT
$BUTTERFLY_ROOT/tests/scenario_2/test.sh $BUTTERFLY_ROOT $BUTTERFLY_BUILD_ROOT
$BUTTERFLY_ROOT/tests/scenario_3/test.sh $BUTTERFLY_ROOT $BUTTERFLY_BUILD_ROOT

