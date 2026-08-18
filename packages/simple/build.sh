#!/bin/sh

# Compile
cc -o simple ./simple.c

# Move to prefix
mv "./simple" "$PACKIT_PACKAGE_PATH/bin/simple"
