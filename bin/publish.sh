#!/bin/bash

cd ./stable

CHART_PATH=../../agent/helm/freshtracks-agent

helm package $CHART_PATH && \
helm repo index . && \
git add ../ && \
git commit -m "Updated chart." && \
git push origin HEAD:master