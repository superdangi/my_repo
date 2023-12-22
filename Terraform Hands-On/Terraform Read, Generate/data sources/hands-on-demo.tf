data "aws_ami" "myappami" {
  most_recent = true
  owners = ["amazon"]

  filter {
    name = "name"
    values = ["al2023-ami-2023.2.20231113.0-kernel-6.1-x86_64"]
  }
}

resource "aws_instance" "instanc-1" {
  ami = data.aws_ami.myappami.id
  instance_type = "t2.micro"
}

output "ami_id" {
  value = data.aws_ami.myappami.id
}