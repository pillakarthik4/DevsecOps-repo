resource "aws_security_group" "allow_all_traffic" {
  name        = "allow_all"
  description = "Allow all traffic"
  vpc_id      = aws_vpc.DevOps-vpc1.id

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
