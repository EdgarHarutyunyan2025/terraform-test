provider "aws" {
  region = "eu-central-1"
}


data "aws_ami" "amazon_linux_latest" {
  owners      = ["amazon"]
  most_recent = true
  filter {
    name   = "name"
    values = ["amzn2-ami-kernel-*"]
  }
}


resource "aws_instance" "web" {
  ami             = data.aws_ami.amazon_linux_latest.id
  instance_type   = "t2.micro"
  user_data       = file("../app/user_data.sh")
  security_groups = [aws_security_group.web-sg.name]
}
