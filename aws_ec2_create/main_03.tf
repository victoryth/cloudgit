terraform {
           required_providers {
		aws = {
		             source = "hashicorp/aws"
                                     version = "~> 5.100.0"
                                }
           }
           required_version = ">= 1.4"
}

provider "aws" {
        region = "us-east-2"
}

resource "aws_instance" "app_server" {
        ami = "ami-0c55b159cbfafe1f0"
        instance_type = "t2.micro"

        tags = {
 	      Name = "terraform-ubuntu1804"
        }
}
