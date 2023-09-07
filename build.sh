#!/bin/sh

set -eu

CGO_ENABLED=0
export CGO_ENABLED

VERSION=$(cat VERSION)

echo "Building for linux/amd64..."
GOOS=linux GOARCH=amd64 go build -ldflags "-X main.version=$VERSION" -trimpath -o dist/virtual1403 ./agent

echo "Done -- artifacts in dist/"
