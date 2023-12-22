variable "splunk" {
  default = "8088"
}

variable "sg_port_1" {
  default = "443"
}

variable "sg_port_2" {
  default = "8080"
}

variable "sg_port_3" {
  default = "8443"
}

variable "cidr_block" {
  default = ["172.31.0.0/16"]
}