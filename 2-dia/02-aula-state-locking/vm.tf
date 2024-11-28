data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

resource "aws_instance" "web" {
  ami           = var.image_id
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
    env = "dev"
  }
}

resource "aws_instance" "webwest" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t2.micro"
  provider = aws.west

  tags = {
    Name = "HelloWorld"
    env = "dev"
  }
}