provider "aws" {
  profile = "default"
  region  = var.region
}


resource "aws_instance" "ansible-control-server" {
  ami           = var.mastermnd_ami
  instance_type = var.mastermnd_instance
  tags = {
    Name = "ansible-control"
  }
}

resource "aws_instance" "ansible-web-servers" {
  count         = length(var.web_servers)
  ami           = var.mastermnd_ami
  instance_type = var.mastermnd_instance
  tags = {
    Name = element(var.web_servers, count.index)
  }
}

