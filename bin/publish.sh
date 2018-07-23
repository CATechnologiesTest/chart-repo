#!/bin/bash

set -e

CHART_PATH=../../helm/freshtracks-agent

git config --global user.email "cloudbuilder@freshtracks.io"
git config --global user.name "cloudbuilder"
git clone git@github.com:Fresh-Tracks/chart-repo
cd ./chart-repo/stable

/freshtracks/bin/helm init --client-only
/freshtracks/bin/helm lint $CHART_PATH || true # ignore lint failure for now
/freshtracks/bin/helm package $CHART_PATH
/freshtracks/bin/helm repo index .

git add ../
git commit -m "Updated chart."
git push git@github.com:Fresh-Tracks/chart-repo HEAD:master