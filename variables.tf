
variable "ami" {
    default = "ami-051f7e7f6c2f40dc1"
}

variable "associate_ip" {
    default = true

}
variable "instance_type" {
    default = "t2.micro"
}

variable "key-name" {
    default = "karthikeyanr"
}

variable "vpc_cidr" {
    default = "10.3.0.0/16"
}

variable "subnet_cidr" {
    default = "10.3.1.0/24"
}

variable "additionalsubnet_cidr" {
    default = "10.3.2.0/24"
}
