resource "aws_security_group" "lab5" {
  name        = "smallowsshlb5"
  description = "Allow inbound SSH traffic"
  vpc_id = module.TF-VPC-Lab.vpc_id
 
  ingress {
    description      = "ssh from VPC"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = var.sgcidrlist
    }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = var.sgcidrlist
   }

  tags = {
    Name = "smallow_sshlb5"
  }
}
