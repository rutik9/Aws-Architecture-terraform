resource "aws_eip" "nat" {
    count = length(var.private-subnet)
  
}
resource "aws_nat_gateway" "nat" {
    count = length(var.private-subnet)
    allocation_id = element(aws_eip.nat,count.index).id
  
  subnet_id         = element(aws_subnet.private-subnet,count.index).id
}

