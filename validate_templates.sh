#!/usr/bin/env bash

set -e

for template in *.template; do
  echo "Validating ${template}"
  aws cloudformation validate-template --template-body file://${template} --profile administrator --region eu-central-1
done