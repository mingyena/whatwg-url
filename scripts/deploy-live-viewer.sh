#!/bin/bash
set -o errexit
set -o nounset
set -o pipefail
cd "$(dirname "$0")"

if which node > /dev/null
    then
        npm run build-live-viewer --platform=node
    else
        npm run build-live-viewer

mkdir -p ../out
cp -r ../live-viewer/* ../out # exclude files starting with . by using /*
