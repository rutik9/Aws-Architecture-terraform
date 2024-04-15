resource "aws_internet_gateway" "igw" {
    count = length(var.vpc)
  vpc_id = element(aws_vpc.vpc,count.index).id

  tags = {
    Name = "igw-${count.index+1}"
  }
}
