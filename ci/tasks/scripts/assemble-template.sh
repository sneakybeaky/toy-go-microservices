#!/bin/bash

set -e -x

VERSION=$(<version/version)

sed -r 's/^(.*image:.*)(test-front-service:.*$)/\1test-front-service:'"$VERSION"'/' greet-service/k8s/deployment-template.yaml > k8s-template/deploy.yaml