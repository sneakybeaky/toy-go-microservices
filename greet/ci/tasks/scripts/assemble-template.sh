#!/bin/ash

set -e -x

VERSION=`cat version/version`

sed -r 's/^(.*image:.*)(greet-service:.*$)/\greet-service:'"$VERSION"'/' source/greet/k8s/deployment-template.yaml > kubernetes-template/release-$VERSION.yaml