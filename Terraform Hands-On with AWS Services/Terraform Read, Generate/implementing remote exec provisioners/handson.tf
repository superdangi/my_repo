     resource "aws_instance" "myec2instance" {
        ami = "ami-00c39f71452c08778"
        instance_type = "t2.micro"
        key_name = "Terraform-key"

        connection {
          type = "ssh"
          user = "ec2-user"
          private_key = file("./Terraform-key.pem")
          host = self.public_ip
        }

        provisioner "remote-exec" {
          inline = [ 
            "sudo yum install -y nginx",
            "sudo systemctl start nginx"
           ]
        }

    }