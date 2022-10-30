#!/bin/sh

function install_tool {
  if ! which "${1}" > /dev/null; then
    echo "  💻 Installing ${1}..."
  else
    echo "  🔍 ${1} found!"
  fi
}

# Setup Tools
install_tool "xcodegen"
install_tool "swiftlint"
install_tool "swiftgen"

# Setup
 ../apollo-ios/.build/release/apollo-ios-cli generate
 xcodegen generate
