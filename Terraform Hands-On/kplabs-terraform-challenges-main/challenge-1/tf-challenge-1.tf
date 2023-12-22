provider "aws" {
 region = "us-east-1"
}

terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
    }
  }
}

resource "aws_eip" "kplabs_app_ip" {
 tags = {
   name = "elastic_IP"
   domain = "vpc"
 }
}
