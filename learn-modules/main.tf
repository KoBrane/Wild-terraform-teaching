module "security_bucket" {
  source = "./modules/s3"

  bucket_name = var.my_bucket_name
}