resource "aws_instance" "db" {
    ami = "ami_92734092984823049234ddlkf"
    instance_type = "t2.micro"

    tags = {
        Name = "DB Server"
    }
}

output "PrivateIP" {
    value = aws_instance.db.private_ip
}
