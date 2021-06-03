## CodeBuild Templates

### CodeBuild Source Credential

The [`codebuild-source-credential` template](./codebuild-source-credential.yml) sets up the required credentials in AWS to create webhooks in GitHub. There can only be one source credential per `git` source per AWS account. A source credential most likely already exists in your account if this template fails with an error message similar to the following.

```
Failed to call ImportSourceCredentials, reason: Access token with server type GITHUB already exists. Delete its source credential and try again.
```

If this occurs, the initial setup might already be complete and this template is no longer necessary to let AWS set up webhooks on your behalf.

The personal access token present in the parameter used to create the source credential (`codebuild-github-token` by default) will need `admin:repo_hook`, and `repo` scopes.

### CodeBuild With Webhook

In order to create a CodeBuild instance based off of a GitHub webhook, the [`codebuild-source-credential` template](./codebuild-source-credential.yml) (see above) needs to be successfully deployed first.

After the source credential is set up, this template will create a webhook on your behalf on the GitHub repo specified in the `GitHubUrl` parameter. The CodeBuild instance is set to only trigger on a direct push to `main` or a pull request being merged into `main`. This is to reduce the amount of builds. Another CodeBuild instance could be set up to trigger for the opposite reasons if builds need to be run for every pull request.

The CodeBuild instance is expecting a `buildspec.yml` to be present in the repos root directory. The IAM permissions will likely need to be modified based on what exactly is being done in the `buildspec`.