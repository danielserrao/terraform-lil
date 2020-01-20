data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ami-ubuntu-18.04-1.16.2-00-1571834140"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["290148839206"]
}

resource "aws_instance" "firstserver" {
  ami           = "${data.aws_ami.ubuntu.id}"
  instance_type = "t2.micro"

  tags = {
    Name = "identifiertag"
  }

  subnet_id = "${aws_subnet.subnet2.id}"
}