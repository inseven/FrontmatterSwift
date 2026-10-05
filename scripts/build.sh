#!/bin/bash

set -e
set -o pipefail
set -x

ROOT_DIRECTORY="$( cd "$( dirname "${BASH_SOURCE[0]}" )/.." &> /dev/null && pwd )"

# Build the package.

cd "$ROOT_DIRECTORY"

xcodebuild -scheme FrontmatterSwift -showdestinations
xcodebuild -scheme FrontmatterSwift -destination "platform=macOS" clean build
xcodebuild -scheme FrontmatterSwift -destination "$DEFAULT_IPHONE_DESTINATION" clean build
