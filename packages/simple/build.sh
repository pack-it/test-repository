#!/bin/sh

# Compile
cc -o simple ./simple.c

# Move to prefix
mkdir "$PACKIT_PACKAGE_PATH/bin/"
mv "./simple" "$PACKIT_PACKAGE_PATH/bin/simple"
