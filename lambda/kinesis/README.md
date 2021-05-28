## Data Transformation using Kinesis and Lambda

Logs come into the pipeline from Kinesis. Logs are transformed by Lambda. Better logs come out the end.

This Data Firehose is currently set up to forward logs to an S3 bucket, but there are numerous other destinations to look into.

The Lambda function is super simple by design. It simply reads the records and returns that they are `Ok`. It's possible to transform the data in some way if desired. This is a good way to process data in real time for alerting, masking, or taking some other sort of action as logs are processed.

This link might be helpful https://docs.aws.amazon.com/firehose/latest/dev/data-transformation.html
