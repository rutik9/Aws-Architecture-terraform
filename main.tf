resource "aws_instance" "public-inst" {
    count =var.public-instance
    subnet_id = element(aws_subnet.public-subnet,count.index).id
    
  ami           =  "ami-080e1f13689e07408"
  instance_type = "t2.micro"

  tags = {
    Name = "pub-instance-${count.index+1}"
  }
}


resource "aws_instance" "private-inst" {
    count =var.private-instance
    subnet_id = element(aws_subnet.private-subnet,count.index).id
  ami           =  "ami-080e1f13689e07408"
  instance_type = "t2.micro"

  tags = {
    Name = "priv-instance-${count.index+1}"
  }
}
