terraform {
  cloud {
    organization = "manoj-organization"
    workspaces {
      name = "manoj-terraform-aws"
    }
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
  required_version = ">= 1.2.0"
}
provider "aws" {
  region  = "ap-south-1"
}
resource "aws_instance" "app_server" {
  ami           = "ami-0cc9838aa7ab1dce7"
  instance_type = "t2.micro"
  tags = {
    Name = "Manoj-terraform test"
  }
}
