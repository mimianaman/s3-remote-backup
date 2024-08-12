provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "web-server" {
  instance_type = "t2.micro"
  ami = "ami-0ae8f15ae66fe8cda"
  subnet_id = "subnet-0e694b558e05b6d2f"
}

resource "aws_s3_bucket" "s3_bucket" {
  bucket = "terraform-backup-file"
}

resource "aws_dynamodb_table" "terraform_lock" {
  name             = "terraform-lock"
  hash_key         = "LockID"
  billing_mode     = "PAY_PER_REQUEST"

   attribute {
    name = "LockID"
    type = "S"
  }
}