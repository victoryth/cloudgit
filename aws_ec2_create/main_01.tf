provider "aws" {
        region = "us-east-2"
}

resource "aws_instance" "ubuntu1804" {
        ami = "ami-0c55b159cbfafe1f0"
        instance_type = "t2.micro"
}
