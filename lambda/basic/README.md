## Lambda-Based API

A classic integration between API Gateway and a Lambda function. This template will work right out of the bag, but I suggest using it together with a [CI/CD pipeline](../../cicd/lambda/serverless-function-api-cicd.yml) to make code deployment run smoothly from a GitHub repository. It is also possible to run the Lambda function in a VPC. There would need to be adjustments to the template to support running in a VPC though.
