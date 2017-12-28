#!/bin/ash

set -e -x

VERSION=`cat version/version`

sed -r 's/^(.*image:.*)(test-back-service:.*$)/\1test-back-service:'"$VERSION"'/' source/string/k8s/deployment-template.yaml > kubernetes-template/deploy.yaml