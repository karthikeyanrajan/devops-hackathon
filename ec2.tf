resource "aws_instance" "ec2master" {
    ami = var.ami
    instance_type = var.instance_type
    key_name = var.key-name
    associate_public_ip_address = var.associate_ip
   // security_groups = ["karthi-sg"]
   vpc_security_group_ids = ["${aws_security_group.karthi-sg.id}"]
   subnet_id = "${aws_subnet.karthi-public_subent_01.id}"
   tags = {
     Name = "master"
   }
}

resource "aws_instance" "ec2slave" {
  ami           = var.ami
  instance_type = var.instance_type
  key_name      = var.key-name
  associate_public_ip_address = var.associate_ip
  vpc_security_group_ids      = [aws_security_group.karthi-sg.id]
  subnet_id     = aws_subnet.karthi-public_subent_02.id
  tags = {
    Name = "ec2slave"
  }
}
