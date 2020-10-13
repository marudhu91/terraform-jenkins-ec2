resource "aws_instance" "web" {
  ami           = "ami-098f16afa9edf40be"
  instance_type = "t2.micro"

  tags = {
    Name = "EC2 Demo Instance"
  }
}
