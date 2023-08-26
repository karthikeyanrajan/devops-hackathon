# Create an internet gateway
resource "aws_internet_gateway" "karthi-igw" {
  vpc_id = aws_vpc.karthi-vpc.id

  tags = {
    Name = "karthi-igw"
  }
}

# Create a route table
resource "aws_route_table" "karthi-public-rt" {
  vpc_id = aws_vpc.karthi-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.karthi-igw.id  # Reference the internet gateway
  }

  tags = {
    Name = "karthi-public-rt"
  }
}


# Create a route table
resource "aws_route_table" "karthi-public1-rt" {
  vpc_id = aws_vpc.karthi-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.karthi-igw.id  # Reference the internet gateway
  }

  tags = {
    Name = "karthi-public1-rt"
  }
}

# Associate subnet 1 with route table
resource "aws_route_table_association" "karthi-rta-public-subnet-1" {
  subnet_id      = aws_subnet.karthi-public_subent_01.id
  route_table_id = aws_route_table.karthi-public-rt.id
}

# Associate subnet 2 with route table
resource "aws_route_table_association" "karthi-rta-public-subnet-2" {
  subnet_id      = aws_subnet.karthi-public_subent_02.id  # Change to your subnet ID
  route_table_id = aws_route_table.karthi-public1-rt.id
}
