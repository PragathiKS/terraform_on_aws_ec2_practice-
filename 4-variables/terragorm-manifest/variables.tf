#input variable
#aws region
variable "aws_region" {
  description = "region in which aws resources created"
  type = string
  default = "us-east-1"
}

#Aws EC2 instance type
variable "instance_type" {
  description = "EC2 Instance type"
  type = string
  default = "t3.micro"
}
#aws Ec2 key pair
variable "instance_keypair" {
  description = "key pair"
  type = string
  default = "myfirstkeypair"
}