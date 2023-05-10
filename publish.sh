#!/usr/bin/env bash

set -euxo pipefail

aptly repo add ruby-apt-sid out/*/sid/*.deb
aptly repo add ruby-apt-bookworm out/*/bookworm/*.deb
aptly repo add ruby-apt-bullseye out/*/bullseye/*.deb
aptly repo add ruby-apt-jammy out/*/jammy/*.deb
aptly repo add ruby-apt-lunar out/*/lunar/*.deb

ts="$(date +%s)"
aptly snapshot create "ruby-apt-sid-$ts" from repo ruby-apt-sid
aptly snapshot create "ruby-apt-bookworm-$ts" from repo ruby-apt-bookworm
aptly snapshot create "ruby-apt-bullseye-$ts" from repo ruby-apt-bullseye
aptly snapshot create "ruby-apt-jammy-$ts" from repo ruby-apt-jammy
aptly snapshot create "ruby-apt-lunar-$ts" from repo ruby-apt-lunar

aptly publish switch sid s3:lutris-apt:ruby "ruby-apt-sid-$ts"
aptly publish switch bookworm s3:lutris-apt:ruby "ruby-apt-bookworm-$ts"
aptly publish switch bullseye s3:lutris-apt:ruby "ruby-apt-bullseye-$ts"
aptly publish switch jammy s3:lutris-apt:ruby "ruby-apt-jammy-$ts"
aptly publish switch lunar s3:lutris-apt:ruby "ruby-apt-lunar-$ts"
