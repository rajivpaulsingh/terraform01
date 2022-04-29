variable "server_names" {
    type = list(string)
}

resource "aws_instance" "db" {
    ami = "ami_92734092984823049234ddlkf"
    instance_type = "t2.micro"
    count = lenght(var.server_names)

    tags = {
        Name = var.server_names[count.index]
    }
}

output "PrivateIP" {
    value = [aws_instance.db.*.private_ip]
}