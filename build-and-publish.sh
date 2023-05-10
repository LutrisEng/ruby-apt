#!/usr/bin/env bash

set -euxo pipefail

rm -rf out
docker buildx bake
./publish.sh
