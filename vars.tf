variable "region" {
  default = "us-east-1"
}

variable "mastermnd_ami" {
  default = "ami-07ebfd5b3428b6f4d"
}

variable "mastermnd_instance" {
  default = "t2.micro"
}

variable "web_servers" {
  type = list(string)
  default = [
    "ansible-web-1",
    "ansible-web-2",
    "ansible-web-3",
  ]
}
