#!/bin/sh

set -e -x -u

cd source/greet/helm
tar czvf ../../../helm-chart/chart.tgz greetservice