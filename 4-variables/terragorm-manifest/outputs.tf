#Terafrom output
#outpub public ip and public DNS

output "instance_Public_ip" {
  description = "ec2 instance public ip"
  value = aws_instance.myec2vm.public_ip
}

output "instance_Public_dns" {
  description = "ec2 instance public dns"
  value = aws_instance.myec2vm.public_dns
}