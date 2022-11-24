variable "ec2amivar" {
  type    = string
  default = "ami-0b0dcb5067f052a63"
  //default = "data.aws_ami.goldstandardami.id"
}

variable "ec2typevar" {
  type    = string
  default = "t2.micro"
}

variable "reagion" {
  type        = string
  default     = "us-east-1"
  description = "is the user does not mention the reagion he wants to build it will default to us-eat-1"
}

variable "sgcidrlist" {
  type    = list(string)
  default = ["0.0.0.0/0"]
}

variable "ec2name" {
  type    = list(string)
  default = ["lab"]
}
