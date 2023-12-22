provider "aws" {
  region     = "us-east-1"
}

variable "istest" {}

resource "aws_instance" "dev" {
    ami = "ami-0df435f331839b2d6"
    instance_type = "t2.micro"
    count = var.istest == true ? 1:0
}

resource "aws_instance" "prod" {
    ami = "ami-0df435f331839b2d6"
    instance_type = "t2.small"
    count = var.istest == false ? 1:0
}