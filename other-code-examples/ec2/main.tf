###############################################################################
# Main : EC2 Instances & Security Groups
###############################################################################

data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

resource "aws_instance" "web" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t3.micro"
}

resource "aws_security_group" "ec2_security_group" {
  name = "DEMO INSTANCE security group"
}

resource "aws_security_group_rule" "ec2_all_ingress" {
  type      = "ingress"
  from_port = "0"
  to_port   = "65535"
  protocol  = "all"

  cidr_blocks       = ["0.0.0.0/0"]
  ipv6_cidr_blocks  = ["::/0"]
  security_group_id = aws_security_group.ec2_security_group.id
}
