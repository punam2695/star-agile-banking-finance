terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

# Configure the AWS provider
provider "aws" {
  region = "ap-northeast-1"
}

# Create an EC2 instance
resource "aws_instance" "Prod-Server" {
  ami               = "ami-0a0b7b240264a48d7"  # Ubuntu AMI ID for us-east-1
  instance_type     = "t2.medium"
  availability_zone = "ap-northeast-1a"
  key_name          = "Ansible_key"  # Replace with your actual key pair name

  vpc_security_group_ids = ["sg-0f53436758b026ae5"]  # Security Group ID

  tags = {
    Name = "test-Server"
  }
}










