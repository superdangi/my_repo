resource "aws_instance" "myec2" {
        ami = "ami-00c39f71452c08778"
        for_each = {
            key1 = "t2.micro"
            key2 = "t2.nano"
        }

instance_type = each.value
key_name = each.key
tags = {
  Name =each.value
}
}