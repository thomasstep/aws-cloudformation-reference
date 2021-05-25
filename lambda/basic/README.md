## Lambda-Based API

A classic integration between API Gateway and a Lambda function. This template will work right out of the bag, but I suggest using it together with a [CI/CD pipeline](../../cicd/lambda/serverless-function-api-cicd.yml) to make code deployment run smoothly from a GitHub repository. It is also possible to run the Lambda function in a VPC. There would need to be adjustments to the template to support running in a VPC though.

The parameters are currently set up to accept the source code in the form of an object in a [versioned S3 bucket](../../s3/versioned-bucket.yml). The [script to push to S3](../../scripts/push-to-s3.sh) is a good way to set up an initial deployment package for the Lambda. After the CloudFormation is up and running, the [script to deploy new code to a Lambda](../../scripts/deploy-to-lambda.sh) is a good way to deploy code without setting up a full CI/CD pipeline.

Uncomment the `ZipFile` property and comment the `S3Bucket`, `S3Key`, and `S3ObjectVersion` properties to make it easier to get the API up and running.
