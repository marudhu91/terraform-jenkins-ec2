data "aws_caller_identity" "current" {}

data "aws_ami" "ec2_instance" {
  most_recent = true

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["211050449168"]
}

resource "aws_instance" "web" {
  ami           = "ami-098f16afa9edf40be"
  instance_type = "t2.micro"

  tags = {
    Name = "EC2 Demo Instance"
  }
}
