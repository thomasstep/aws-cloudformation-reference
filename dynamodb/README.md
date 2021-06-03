## DynamoDB Templates

DynamoDB can be a powerful tool but also simple depending on the application. DynamoDB tables do not need anything created before they can be setup. AWS makes scaling a NoSQL database easy with DynamoDB.

**NOTE**: I recommend starting with a [global table](./global-table/global-ddb.yml) instead of a [simple DynamoDB table](./basic/ddb.yml). This allows for possible replication down the road if needed without needing to migrate data since it is currently not possible to convert a resource from `AWS::DynamoDB::Table` to `AWS::DynamoDB::GlobalTable` without potentially deleting the table.
