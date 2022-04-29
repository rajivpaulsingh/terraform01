provider "aws" {
    region = "us-west-2"
}

variable "number_of_servers" {
    type = number

}

resource "aws_instance" "ec2" {
    ami = "ami_92734092984823049234ddlkf"
    instance_type = "t2.micro"

    count = var.number_of_servers
}