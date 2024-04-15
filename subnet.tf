## public subnet
resource "aws_subnet" "public-subnet" {
    count = length(var.public-subnet)
  vpc_id     = element(aws_vpc.vpc,count.index).id
  cidr_block = element(var.public-subnet,count.index)

  tags = {
    Name = "public-subnet-${count.index+1}"
  }
}

## private subnet
resource "aws_subnet" "private-subnet" {
    count = length(var.private-subnet)
  vpc_id     = element(aws_vpc.vpc,count.index).id
  cidr_block = element(var.private-subnet,count.index)

  tags = {
    Name = "private-subnet-${count.index+1}"
  }
}
