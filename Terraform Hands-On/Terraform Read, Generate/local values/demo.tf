provider "aws" {
  region     = "us-east-1"
}

locals {
  common_tags ={
    owner = "Devops Team"
    Service = "Backend"
  }
}

resource "aws_instance" "Firstec2" {
    ami = "ami-0df435f331839b2d6"
    instance_type = "t2.micro"
    tags = local.common_tags
}

resource "aws_instance" "second" {
    ami = "ami-0df435f331839b2d6"
    instance_type = "t2.small"
    tags = local.common_tags
}

resource "aws_ebs_volume" "db_ebs" {
  availability_zone = "us-east-1a"
  size              = 8
  tags = local.common_tags
}