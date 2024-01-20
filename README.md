## Introduction
This is a class held on jan, 20th 2024

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 5.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.33.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_dynamodb_table.basic-dynamodb-table](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/dynamodb_table) | resource |
| [aws_kms_alias.a](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/kms_alias) | resource |
| [aws_kms_key.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/kms_key) | resource |
| [aws_s3_bucket.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket) | resource |
| [aws_s3_bucket_versioning.versioning_this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_versioning) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_bucket_name"></a> [bucket\_name](#input\_bucket\_name) | This is s3 bucket name for storing tf backend | `string` | `"wild-academy-devops-engineers-quame"` | no |
| <a name="input_dynamo_name"></a> [dynamo\_name](#input\_dynamo\_name) | This is the name for dynamodb | `string` | `"terraform-backend"` | no |
| <a name="input_env"></a> [env](#input\_env) | This is env for tagging | `string` | `"Dev"` | no |
| <a name="input_name"></a> [name](#input\_name) | This is s3 bucket name for storing tf backend | `string` | `"Cloud-devops-team"` | no |
| <a name="input_region"></a> [region](#input\_region) | This is my aws region | `string` | `"us-east-1"` | no |

## Outputs

No outputs.

```
resource "aws_dynamodb_table" "basic-dynamodb-table" {
  name           = var.dynamo_name
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockId"

  attribute {
    name = "LockId"
    type = "S"
  }
}
```