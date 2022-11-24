module "TF-VPC-Lab" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "3.18.1"

  name = "TF-VPC-Lab"
  cidr = "10.0.0.0/16"

  azs             = ["us-east-1a", "us-east-1b"]
  private_subnets = ["10.0.1.0/24", "10.0.2.0/24"]
  public_subnets  = ["10.0.101.0/24", "10.0.102.0/24"]

  enable_nat_gateway = false
  enable_vpn_gateway = false

  tags = {
    Terraform = "true"
    Environment = "dev"
  }
  }

/*
resource "aws_vpc" "lab3" {
  cidr_block       = "172.20.0.0/16"
  
  tags = {
    Name = "lab3"
  }
}

resource "aws_subnet" "subnetAZ1" {
  vpc_id            = aws_vpc.lab3.id
  cidr_block        = "172.20.10.0/24"
  availability_zone = locals.useaz1

  tags = {
    Name = "sm-az1"
  }
}

resource "aws_subnet" "subnetAZ2" {
  vpc_id            = aws_vpc.lab3.id
  cidr_block        = "172.20.20.0/24"
  availability_zone = local.useaz2

  tags = {
    Name = "sm-az2"
  }
}
*/