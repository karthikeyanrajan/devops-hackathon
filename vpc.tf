//creating a VPC
resource "aws_vpc" "karthi-vpc" {
    cidr_block = var.vpc_cidr
    tags = {
      Name = "karthi-vpc"
    }

}
