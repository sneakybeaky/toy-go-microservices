#!/bin/ash

set -e -x

VERSION=`cat version/version`

sed -r 's/^(.*image:.*)(test-front-service:.*$)/\1test-front-service:'"$VERSION"'/' source/greet/k8s/deployment-template.yaml > kubernetes-template/deploy.yaml