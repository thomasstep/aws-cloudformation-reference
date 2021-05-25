## Random Scripts

Who knows what this will turn into. I have written various scripts (`bash`, `node`, `python`) that I have found helpful in the past. The problem was I never made them generic enough or documented them. This is my attempt at documenting them.

## Deploy to Lambda

This script's intent is to zip up code, upload to a [versioned S3 bucket](../s3/versioned-bucket.yml), and update an existing CloudFormation stack with the new version ID. If there are multiple files or paths that need to be included in the deployment package, I suggest replacing `$SOURCE_PATH` with the various paths and files needed.

The template also needs the JSON parsing CLI `jq` installed and the AWS CLI to be properly configured with credentials.

This script works well at updating templates similar to the [basic Lambda API](../lambda/serverless-function-api.yml).

## Push to S3

This script simply zips up a given path and copies the object to an S3 bucket. This is a good starting point for creating an initial deployment package before a CloudFormation stack has been created.