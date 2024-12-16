terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "eu-west-1"
}

# Create a EC2
resource "aws_instance" "demo-instance" {
  ami           = "ami-02141377eee7defb9"
  instance_type = "t2.micro"

  tags = {
    Name = "demo-ec2-instance"
  }
}
