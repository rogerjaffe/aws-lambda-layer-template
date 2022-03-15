#!/bin/bash

case $AWS_ENV in
  'DEV')
    source ./aws.dev.env
    ;;

  'PRODUCTION')
    source ./aws.prod.env
    ;;

esac

aws lambda publish-layer-version --layer-name $LAYER_NAME \
  --zip-file "fileb://./deploy/nodejs.zip" \
  --compatible-runtimes nodejs14.x \
  --region "$AWS_REGION" \
  --profile $AWS_PROFILE

