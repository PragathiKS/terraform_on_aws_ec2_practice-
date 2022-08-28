# Terraform block

terraform {
    required_version = "~>1.2.8"
    required_providers {
      aws = {
        source = "hashicorp/aws"
        version = "~>3.0"
      }
    }
}

# provider
provider "aws" {
  region = "us-east-1"
  profile = "default"
}

#resources

resource "aws_instances" "ec2demo" {
  ami = "05fa00d4c63e32376"
  instance_type = "t2_micro"
  user_data = file("${path.module}/app1.sh")
  tags = {
    "Name" = "EC2 Demo"
  }
}
