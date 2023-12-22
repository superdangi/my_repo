
resource "aws_security_group" "payment_app" {
  name        = "payment_app"
  description = "Application Security Group"
  depends_on  = [aws_eip.example]

  # Below ingress allows HTTPS  from DEV VPC
  ingress {
    description = "ingress allows HTTPS  from DEV VPC"
    from_port   = var.sg_port_1
    to_port     = var.sg_port_1
    protocol    = "tcp"
    cidr_blocks = var.cidr_block
  }

  # Below ingress allows APIs access from DEV VPC

  ingress {
    description = "ingress allows APIs access from DEV VPC"
    from_port   = var.sg_port_2
    to_port     = var.sg_port_2
    protocol    = "tcp"
    cidr_blocks = var.cidr_block
  }

  # Below ingress allows APIs access from Prod App Public IP.

  ingress {
    description = "ingress allows APIs access from Prod App Public IP"
    from_port   = var.sg_port_3
    to_port     = var.sg_port_3
    protocol    = "tcp"
    cidr_blocks = ["${aws_eip.example.public_ip}/32"]
  }

  tags = {
    name  = "SG_for_prod_app"
    env   = "DEV"
    owner = "devadmin"
  }

  egress {
    from_port   = var.splunk
    to_port     = var.splunk
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]

  }
}
