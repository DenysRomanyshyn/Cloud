locals {
  env = "local"
}

resource "aws_s3_bucket" "this" {
  bucket = "my-bucket-denys-1"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket" "this2" {
  bucket = "my-bucket-denys-2"
  tags = {
    Name        = "My bucket"
    Environment = local.env
  }
}