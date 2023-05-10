#!/usr/bin/env bash

set -euxo pipefail

aptly repo create -distribution=sid ruby-apt-sid
aptly repo create -distribution=bookworm ruby-apt-bookworm
aptly repo create -distribution=bullseye ruby-apt-bullseye
aptly repo create -distribution=jammy ruby-apt-jammy
aptly repo create -distribution=lunar ruby-apt-lunar

ts="$(date +%s)"
aptly snapshot create "ruby-apt-sid-$ts" from repo ruby-apt-sid
aptly snapshot create "ruby-apt-bookworm-$ts" from repo ruby-apt-bookworm
aptly snapshot create "ruby-apt-bullseye-$ts" from repo ruby-apt-bullseye
aptly snapshot create "ruby-apt-jammy-$ts" from repo ruby-apt-jammy
aptly snapshot create "ruby-apt-lunar-$ts" from repo ruby-apt-lunar

aptly publish snapshot -distribution=sid -architectures=amd64,arm64 "ruby-apt-sid-$ts" s3:lutris-apt:ruby
aptly publish snapshot -distribution=bookworm -architectures=amd64,arm64 "ruby-apt-bookworm-$ts" s3:lutris-apt:ruby
aptly publish snapshot -distribution=bullseye -architectures=amd64,arm64 "ruby-apt-bullseye-$ts" s3:lutris-apt:ruby
aptly publish snapshot -distribution=jammy -architectures=amd64,arm64 "ruby-apt-jammy-$ts" s3:lutris-apt:ruby
aptly publish snapshot -distribution=lunar -architectures=amd64,arm64 "ruby-apt-lunar-$ts" s3:lutris-apt:ruby
