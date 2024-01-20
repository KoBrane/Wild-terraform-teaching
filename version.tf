terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  backend "s3" {
    bucket = "wild-academy-devops-engineers-quame"
    key    = "tfstate/s3/key"
    dynamodb_table = "terraform-backend"
    region = "us-east-1"
  }  
}
