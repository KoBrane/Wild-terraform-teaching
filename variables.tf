variable "bucket_name" {
  description = "This is s3 bucket name for storing tf backend"
  type = string
  default = "wild-academy-devops-engineers-quame"
}

variable "name" {
  description = "This is s3 bucket name for storing tf backend"
  type = string
  default = "Cloud-devops-team"
}

variable "env" {
  description = "This is env for tagging"
  type = string
  default = "Dev"
}

variable "region" {
  description = "This is my aws region"
  type = string
  default = "us-east-1"
}

variable "dynamo_name" {
  description = "This is the name for dynamodb"
  type = string
  default = "terraform-backend"
}