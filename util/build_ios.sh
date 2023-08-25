#!/bin/sh

echo "Create XCode project:"
sh "$(dirname "$0")"/create_xcode_project.sh

echo "Build XCFrameworks"
sh "$(dirname "$0")"/build_frameworks.sh