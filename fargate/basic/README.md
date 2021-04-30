## Basic Serverless Containerized API (Hello World for Fargate)

First, you will need an ECR repository. Create one in the AWS console or use a template (this is also done in the `ecs-cluster.yml` template one directory up). After creating the repository, run the following commands with appropriate replacements for the parts similar to `$REPLACE_ME`. (NOTE: `--username AWS` is correct as-is and does not need to be replaced.)
- `aws ecr-public get-login-password --region $AWS_REGION | docker login --username AWS --password-stdin $AWS_ACCOUNT_ID.dkr.ecr.$AWS_REGION.amazonaws.com`
- `docker build . -t $YOUR_AWS_ECR_URI:$TAG`
- `docker push $YOUR_AWS_ECR_URI:$TAG`
If you are using a public ECR repository substitue `public.ecr.aws/$ECR_DEFAULT_ALIAS` for `$AWS_ACCOUNT_ID.dkr.ecr.$AWS_REGION.amazonaws.com`. The `$ECR_DEFAULT_ALIAS` will be part of the public repository's URI.
After the image is pushed, spin up the VPC (`/vpc/basic/vpc.yml`) and ECS cluster (`/fargate/ecs-cluster.yml`) templates followed by the Fargate (`serverless-container-api.yml`) template in this directory.