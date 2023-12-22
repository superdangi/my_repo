variable "elb_names" {
  type = list 
default = ["dev-loadbalancer", "prod-loadbalancer", "test-loadbalancer"]
}

resource "aws_iam_user" "lb" {
  name = var.elb_names[count.index]
  count = 3
  path = "/system/"
} 