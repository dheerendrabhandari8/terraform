# In ./main/rt/main.tf (Inside the module)

resource "aws_route_table" "rt" {
  vpc_id = var.vpc_id

  # Example route
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = var.gateway_id
  }

  tags = {
    Name = "Route-table"
  }
}

resource "aws_route_table_association" "association" {
  subnet_id      = var.subnet_id  # Associate the route table with the subnet
  route_table_id = aws_route_table.rt.id
}

