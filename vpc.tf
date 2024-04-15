resource "aws_vpc" "vpc" {
    count = length(var.vpc)
  cidr_block = element(var.vpc,count.index)
  tags = {
    Name = "vpc-${count.index+1}"
  }
}

