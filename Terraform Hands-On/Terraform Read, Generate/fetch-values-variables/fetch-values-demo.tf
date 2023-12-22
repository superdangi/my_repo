resource "aws_instance" "myec2" {
   ami = "ami-0230bd60aa48260c6"
   instance_type = var.types ["ap-south-1"]
}

variable "list" {
  type = list
  default = ["m5.large","m5.xlarge","t2.medium"]
}

variable "types" {
  type = map
  default = {
    us-east-1 = "t2.micro"
    us-west-2 = "t2.nano"
    ap-south-1 = "t2.small"
  }
}
