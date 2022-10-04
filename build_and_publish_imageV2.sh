#!/bin/bash

echo ${REPO}/${REPO_IMAGE}:${GO_PIPELINE_COUNTER}

docker build . -f dockerfile -t ${REPO}/${REPO_IMAGE}:${GO_PIPELINE_COUNTER}

docker push ${REPO}/${REPO_IMAGE}:${GO_PIPELINE_COUNTER}
