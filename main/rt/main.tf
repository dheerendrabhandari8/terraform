resource "aws_route_table" "rt" {
  vpc_id = var.vpc_id

  route {
   
    cidr_block = var.cidr_block
    #cidr_block = "10.0.1.0/24"
   gateway_id = var.internet_gateway_id
  }

 # route {
 #   ipv6_cidr_block        = "::/0"
  #  egress_only_gateway_id = aws_egress_only_internet_gateway.gw.id
 # }

  tags = {
    Name = "Route-table"
  }
}

