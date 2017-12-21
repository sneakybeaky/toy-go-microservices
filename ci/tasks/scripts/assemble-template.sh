#!/bin/ash

#set -e -x

find .

#VERSION=$(<version)

#sed -r 's/^(.*image:.*)(test-front-service:.*$)/\1test-front-service:'"$VERSION"'/' greet-service/k8s/deployment-template.yaml > kubernetes-template/deploy.yaml