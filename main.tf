terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}
provider "aws" {
  region  = "us-east-2"
}

resource "aws_instance" "server_app" {
  ami           = "ami-0430580de6244e02e"
  instance_type = "t2.micro"
  key_name = "iac-course"

  tags = {
    Name = "Server-Terraform"
  }
}
