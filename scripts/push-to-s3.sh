#!/bin/sh
# NOTE: Requires correctly configured aws cli

# Change these to the correct values
SOURCE_PATH= # i.e. ./src
SOURCE_BUCKET_NAME= # i.e. source-bucket
SOURCE_KEY= # i.e. green-things-auth/v1/signup

zip -r9 deployment-package $SOURCE_PATH
aws s3 cp deployment-package.zip s3://$SOURCE_BUCKET_NAME/$SOURCE_KEY