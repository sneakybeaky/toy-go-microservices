#!/bin/sh

set -e -x

gomplate -f source/greet/k8s/deployment-template.yaml -o kubernetes-template/release-`cat $VERSION_FILE`.yaml