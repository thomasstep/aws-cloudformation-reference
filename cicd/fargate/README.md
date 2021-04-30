## Serverless Container API CI/CD

This CI/CD pipeline is meant to go together with the serverless-container-api template (`/fargate/basic/serverless-container-api.yml`). It will poll a GitHub repo for changes, rebuild the image using a `buildspec.yml` and `Dockerfile` in the root directory of the repo, and deploy the new image using the ECS controller.