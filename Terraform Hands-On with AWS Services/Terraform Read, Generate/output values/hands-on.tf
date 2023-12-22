provider "aws" {
  region = "us-east-1"
}

resource "aws_eip" "my-elastic-ip" {
  domain   = "vpc"
}

output "public_ip" {
  value = aws_eip.my-elastic-ip.public_ip
}
