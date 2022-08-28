# EC2 resource

resource "aws_instance" "myec2vm" {
  ami = data.aws_ami.awzlinux2.id 
  instance_type = var.instance_type
  user_data = file("${path.module}/app1.sh")
  key_name = var.instance_keypair 
  vpc_security_group_ids = [ aws_security_group.vpc-ssh.id , aws_security_group.vpc-web.id ]
  tags = {
    "Name" = "EC 2 Demo"
  }
}