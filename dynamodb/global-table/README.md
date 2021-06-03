## Global DynamoDB Table

This template creates a global DynamoDB table using a single replication region with the primary index on an `id` column.

There is only one replication region to start off with which basically makes this the same as the [basic DynamoDB table template](../basic/ddb.yml). The key difference is that this table is made using the `AWS::DynamoDB::GlobalTable` resource type. This allows for the chance to replicate into other regions later on if that is desired.
