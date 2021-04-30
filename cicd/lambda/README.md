## Serverless Function API CI/CD

This CI/CD pipeline is meant to go together with the serverless-function-api template (`/lambda/basic/serverless-function-api.yml`). It will poll a GitHub repo for changes, rebuild the deployment package using a `buildspec.yml` in the root directory of the repo, and deploy the changes by making a change to the CloudFormation template.