#!/bin/sh

set -e -x -u

cd source/string/helm
tar czvf ../../../helm-chart/chart.tgz stringservice