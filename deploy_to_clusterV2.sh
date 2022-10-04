#!/bin/bash

helm upgrade ${RELEASE_NAME} ${CHART_NAME} --values ${CHART_VALUES}
