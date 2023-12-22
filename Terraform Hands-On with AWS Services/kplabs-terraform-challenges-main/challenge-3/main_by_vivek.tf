/*
resource "aws_instance" "myec2instance" {
  for_each = zipmap(["t2.micro", "t2.small"], ["ami-03a6eaae9938c858c","ami-053b0d53c279acc90"])
  
instance_type = each.key
ami = each.value

}
*/