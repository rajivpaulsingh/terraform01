provider "aws" {
    region = "us-west-2"
}

resource "aws_vpc" "myvpc" {
    cidr_block = "10.0.0.0/16"
}

resource "aws_vpc" "myvpc2" {
    cidr_block = "192.168.0.0/24"
}

// run this to get manual vpc under terraform control: terraform import aws_vpc.myvpc2 <id-copied from aws>