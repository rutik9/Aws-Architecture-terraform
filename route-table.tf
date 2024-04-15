## route table

resource "aws_route_table" "route-table" {
    count = length(var.vpc)
  vpc_id = element(aws_vpc.vpc,count.index).id

  route = []

  tags = {
    Name = "example"
  }
}

