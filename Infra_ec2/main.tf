// These file is responsible for creating the VPC, public subnet, ec2 instance image, security group, assign public IP to the instance
// Create the VPC
resource "aws_vpc" "vpc" {
  cidr_block           = var.vpc_cidr
  enable_dns_hostnames = true
}
// Define the public subnet
resource "aws_subnet" "public-subnet" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = var.public_subnet_cidr
  availability_zone = var.aws_az
}

resource "aws_instance" "ubuntu" {

    ami = "ami-0767046d1677be5a0"  
    instance_type = "t2.micro" 
    key_name= "key-for-terra"
    vpc_security_group_ids = [aws_security_group.assignment.id]


  provisioner "remote-exec" {
    inline = [
      "touch hello.txt",
      "echo helloworld remote provisioner >> hello.txt",
      "sudo adduser --disabled-password --gecos '' siemenstester"
    ]
  }
  connection {
      type        = "ssh"
      host        = self.public_ip
      user        = "ubuntu"
      private_key = file(var.keypath)
      timeout     = "4m"
   }
    tags = {
    Name = "Assignment_server"
  }
}

resource "aws_security_group" "assignment" {
  egress = [
    {
      cidr_blocks      = [ "0.0.0.0/0", ]
      description      = ""
      from_port        = 0
      ipv6_cidr_blocks = []
      prefix_list_ids  = []
      protocol         = "-1"
      security_groups  = []
      self             = false
      to_port          = 0
    }
  ]
 ingress                = [
   {
     cidr_blocks      = [ "0.0.0.0/0", ]
     description      = "ssh"
     from_port        = 22
     ipv6_cidr_blocks = []
     prefix_list_ids  = []
     protocol         = "tcp"
     security_groups  = []
     self             = false
     to_port          = 22
   },
   {
     cidr_blocks      = [ "0.0.0.0/0", ]
     description      = "ssh"
     from_port        = 36666
     ipv6_cidr_blocks = []
     prefix_list_ids  = []
     protocol         = "tcp"
     security_groups  = []
     self             = false
     to_port          = 36666
   }
  ]
}

resource "aws_key_pair" "deploy" {
  key_name   = "key-for-terra"
  public_key = file(var.keyname)
}

//resource "aws_eip" "lb" {
//  instance = aws_instance.ubuntu.id
//  vpc      = true
//}