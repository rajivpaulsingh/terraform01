provider "aws" {
    region = "us-west-2"
}

resource "aws_instance" "db" {
    ami = "ami_92734092984823049234ddlkf"
    instance_type = "t2.micro"
}

resource "aws_instance" "web" {
    ami = "ami_92734092984823049234ddlkf"
    instance_type = "t2.micro"

    depends_on = [
      aws_instance.db
    ]
}

