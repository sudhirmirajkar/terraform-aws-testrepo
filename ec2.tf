module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  name = "lab5-1"

  ami                    = var.ec2amivar
  instance_type          = var.ec2typevar
  key_name               = "user1"
  monitoring             = true
  vpc_security_group_ids = aws_security_group.lab5.id
  subnet_id              = module.TF-VPC-Lab.private_subnets

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}

/*
resource "aws_instance" "lab5" {
  ami               = data.aws_ami.goldstandardami.id
  instance_type     = var.ec2typevar
  availability_zone = local.useaz1
  //security_groups = [ aws_security_group.lab3.name ]
  //iam_instance_profile = iam_instance_profile.ec2iamprofile.name
  subnet_id              = aws_subnet.subnetAZ1.id
  vpc_security_group_ids = [aws_security_group.lab5.id]

  tags = {
    Name        = "SMlab5"
    Environment = "lab"
  }
}


resource "aws_instance" "lab5" {
  ami               = data.aws_ami.goldstandardami.id
  instance_type     = var.ec2typevar
  availability_zone = "us-east-1a"
  //security_groups = [ aws_security_group.lab3.name ]
  //iam_instance_profile = iam_instance_profile.ec2iamprofile.name
  subnet_id              = aws_subnet.subnetAZ1.id
  vpc_security_group_ids = [aws_security_group.lab5.id]
  count                  = 2
  tags = {
    Name        = var.ec2name[count.index]
    Environment = "lab"
  }
}
*/