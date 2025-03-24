provider "aws" {
  region = "eu-central-1"
}


resource "aws_instance" "web" {
  ami             = data.aws_ami.amazon_linux_latest.id
  instance_type   = lookup(var.instance_type, "prod")
  user_data       = file("../app/user_data.sh")
  security_groups = [aws_security_group.web-sg.name]
}
