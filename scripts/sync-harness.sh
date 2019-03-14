#!/usr/bin/env bash

TARGET_ROOT_PATH=$(pwd)
TARGET_HARNESS_PATH=$TARGET_ROOT_PATH/harness
TEMP_PATH=$(mktemp -d -t "test262.XXXXXXXX")
TEST262_ROOT_PATH=$TEMP_PATH/test262
TEST262_HARNESS_PATH=$TEST262_ROOT_PATH/harness

echo "Moving into $TEMP_PATH"
cd $TEMP_PATH

git clone https://github.com/tc39/test262.git --depth=1

echo "Moving into $TEST262_HARNESS_PATH"
cd $TEST262_HARNESS_PATH

echo "Copying files from $TEST262_HARNESS_PATH into $TARGET_HARNESS_PATH"
cp -f *.js $TARGET_HARNESS_PATH

echo "Returing to $TARGET_ROOT_PATH"
cd $TARGET_ROOT_PATH

echo "Harness helper file sync is complete"
