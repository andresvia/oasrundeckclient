#!/bin/bash
set -eu
# vars
CURRENT_TAG=$(git tag | tail -n1)
VERSION_MAJOR_MINOR="${TRAVIS_TAG:-$CURRENT_TAG}"
VERSION_RELEASE="${TRAVIS_BUILD_NUMBER:-$(date +%s)}"
VERSION="${VERSION_MAJOR_MINOR}.${VERSION_RELEASE}"
# clean
rm -rfv packages/*
# create packages
mkdir -vp packages
# build new package
fpm --package=packages/ -C package/os -s dir -t rpm --name=oasrundeckclient --version="${VERSION}" --before-install package/before-install --after-install package/after-install --after-remove package/after-remove --rpm-os linux .
