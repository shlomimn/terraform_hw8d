resource "aws_security_group" "example" {
  name        = "dokuwiki-sg"
  description = "Allow HTTP inbound traffic"
  vpc_id      = "vpc-0a51fcf36b7a4a52d"

  ingress {
    description = "hw8 http from VPC"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_http"
  }
}
