# s3 bucket
# lifecyle policy
#versioning
#

resource "aws_s3_bucket" "this" {
  bucket = var.bucket_name

  lifecycle {
    prevent_destroy = true
  }

  tags = {
    Name        = var.name
    Environment = var.env
  }
}

resource "aws_s3_bucket_versioning" "versioning_this" {
  bucket = aws_s3_bucket.this.id
  versioning_configuration {
    status = "Enabled"
  }
}



#dynamodb

resource "aws_dynamodb_table" "basic-dynamodb-table" {
  name           = var.dynamo_name
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockId"

  attribute {
    name = "LockId"
    type = "S"
  }
}


#kms

resource "aws_kms_key" "this" {
  description             = "KMS key 1"
  deletion_window_in_days = 10
}

resource "aws_kms_alias" "a" {
  name          = "alias/tfstate/s3/key"
  target_key_id = aws_kms_key.this.key_id
}