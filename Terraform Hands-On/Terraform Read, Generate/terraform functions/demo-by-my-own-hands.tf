provider "aws" {
  region     = "us-east-1"
}

locals {
  time = formatdate("DD MM YYYY hh:mm ZZZ", timestamp())
}

variable "region" {
  default = "us-west-2"
}

variable "tags" {
  type = list
  default = ["firstec2", "secondec2"]
}

variable "ami" {
  type = map
  default = {
    "us-east-1" = "ami-0323c3dd2da7fb37d"
    "us-west-2" = "ami-0d6621c01e8c2de2c"
    "ap-south-1" = "ami-0470e33cd681b2476"
  }
}

resource "aws_instance" "my-ec2-instance" {
  ami = lookup(var.ami,var.region)
  instance_type = "t2.micro"
  count = 2

  tags = {
    Name = element(var.tags,count.index)
  }
}

output "timestamp" {
  value = local.time
}