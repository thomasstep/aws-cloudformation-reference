## S3 Templates

S3 (Simple Storage Service) is an overlooked service. It is an incredibly durable object storage solution.

## Versioned Bucket

This adds versioning to an S3 bucket so file history is kept. It deletes old versions after 14 days which might be too short depending on the application. The intent of that was to keep costs down because I'm a bootstrapper and hate spending money. (Thanks AWS free tier)