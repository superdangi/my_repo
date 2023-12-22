terraform {
  backend "s3" {
    bucket = "terraform-backend-vivek"
    key    = "network/terraform.tfstate"
    region = "us-east-1"
  }
}