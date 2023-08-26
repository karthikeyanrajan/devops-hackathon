// Creatomg a Subnet
resource "aws_subnet" "karthi-public_subent_01" {
    vpc_id = "${aws_vpc.karthi-vpc.id}"
    cidr_block = var.subnet_cidr
    map_public_ip_on_launch = "true"
    availability_zone = "us-east-1a"
    tags = {
      Name = "karthi-public_subent_01"
    }

}
resource "aws_subnet" "karthi-public_subent_02" {
    vpc_id = "${aws_vpc.karthi-vpc.id}"
    cidr_block = var.additionalsubnet_cidr
    map_public_ip_on_launch = "true"
    availability_zone = "us-east-1a"
    tags = {
      Name = "karthi-public_subent_02"
    }

}
