terraform {
  backend "s3" {
    bucket = "terraform-backup-file"
    region = "us-east-1"
    key = "abhishek/terraform.tfstate"
  }
}