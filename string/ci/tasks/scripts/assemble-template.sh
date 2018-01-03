#!/bin/sh

set -e -x -u

/gomplate -f source/greet/k8s/deployment-template.gomplate.yaml -o kubernetes-template/release-`cat $VERSION_FILE`.yaml