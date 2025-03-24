variable "allow_ports" {
  default = ["80", "22", "50", "8080"]
}

variable "instance_type" {
  type = map(string)
  default = {
    "dev"   = "t3.micro"
    "prod"  = "t2.micro"
    "stage" = "t2.small"
  }
}
