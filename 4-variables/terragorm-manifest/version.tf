terraform{
    required_version = "~>1.2.8"
    required_providers {
      aws = {
        source = "hashicorp/aws"
        version = "~> 3.0"
      }
    }
}


 provider "aws" {
   region = var.aws_region
 }