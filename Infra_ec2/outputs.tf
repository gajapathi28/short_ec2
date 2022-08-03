// this is will generate the decent output which are mentioned below 
output "ubuntu_instance_id" {
  value = aws_instance.ubuntu.id
}
output "ubuntu_instance_public_dns" {
  value = aws_instance.ubuntu.public_dns
}
output "ubuntu_instance_public_ip" {
  value = aws_instance.ubuntu.public_ip
}
output "ubuntu_instance_private_ip" {
  value = aws_instance.ubuntu.private_ip
}
