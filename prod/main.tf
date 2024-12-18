# This is the main file where we declare the required providers and resources.
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Variables are defined in the variables.tf file and get values from the terraform.tfvars file
provider "aws" {
  region     = "us-east-1"
  access_key = var.access_key
  secret_key = var.secret_key
}

# This is the resource block where we create the instance, "my_instance_name" is the name of the instance
resource "aws_instance" "my_instance_name" {
  ami           = "ami-011899242bb902164" # Ubuntu 20.04 LTS // us-east-1
  instance_type = "t2.micro"
  tags = {
    TF_MANAGED = true
  }
}