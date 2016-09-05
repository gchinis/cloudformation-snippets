#!/usr/bin/env bash

set -e

for template in templates/*.template; do
  echo "Validating ${template}"
  aws cloudformation validate-template --template-body file://${template}  --region eu-central-1
done