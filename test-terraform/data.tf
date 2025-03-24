terraform {
  backend "s3" {
    bucket = "terraform-test1-github"
    key    = "state/app/terraform.tfstate"
    region = "eu-central-1"
  }
}


data "aws_ami" "amazon_linux_latest" {
  owners      = ["amazon"]
  most_recent = true
  filter {
    name   = "name"
    values = ["amzn2-ami-kernel-*"]
  }
}
