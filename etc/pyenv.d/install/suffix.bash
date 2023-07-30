#!/usr/bin/env bash
#
# This scripts modifies the installation name if the `arch` is i386 (IE: rossetta)
# It allows you to install both arm64 and x86 versions of a given python version

if [ $(arch) = "i386" ]; then
  before_install 'PREFIX="${PREFIX}_x86"; echo "Installing at ${PREFIX}"'
fi
