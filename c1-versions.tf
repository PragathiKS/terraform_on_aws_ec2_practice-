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

resource "aws_instance" "ec2demo" {
  ami = "ami-02538f8925e3aa27a"
  instance_type = "t2.micro"
  user_data = file("${path.module}/app1.sh")
  tags = {
    "Name" = "EC2 Demo"
  }
}
