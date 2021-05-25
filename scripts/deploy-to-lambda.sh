#!/bin/sh
# NOTE: Requires jq and correctly configured aws cli

# Change these to the correct values
SOURCE_PATH= # i.e. ./src
SOURCE_BUCKET_NAME= # i.e. source-bucket
SOURCE_KEY= # i.e. green-things-auth/v1/signup
TEMPLATE_PATH= # i.e. ./template.yml
STACK_NAME= # i.e. my-stack
STACK_SOURCE_VERSION_PARAMETER_NAME= # i.e. SourceVersion

zip -r9 deployment-package $SOURCE_PATH
aws s3 cp deployment-package.zip s3://$SOURCE_BUCKET_NAME/$SOURCE_KEY
S3_VERSION=$(aws s3api get-object --bucket $SOURCE_BUCKET_NAME --key $SOURCE_KEY getobjectoutfile | jq -r '.VersionId')
aws cloudformation deploy --template-file $TEMPLATE_PATH --stack-name $STACK_NAME --parameter-overrides $STACK_SOURCE_VERSION_PARAMETER_NAME=$S3_VERSION