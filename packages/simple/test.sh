#!/bin/sh

result=$("$PACKIT_PACKAGE_PATH/bin/simple" 2)

if [ "$result"!="4" ]; then
    echo "Test failed: test result '$result' does not match the expected result"
    exit 1
fi
